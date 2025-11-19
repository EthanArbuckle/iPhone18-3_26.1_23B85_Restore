uint64_t objectdestroyTm_88()
{
  v1 = type metadata accessor for AudioFeedTrack(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2;
  swift_unknownObjectRelease();

  v4 = v0 + v2 + v1[8];

  if (*(v4 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1(v4 + 32);
  }

  v5 = type metadata accessor for AudioFeedTrack.Configurables(0);
  v6 = v5[7];
  v7 = sub_219BDBD34();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v4 + v6, 1, v7))
  {
    (*(v8 + 8))(v4 + v6, v7);
  }

  if (*(v4 + v5[8] + 8) != 1)
  {
  }

  v9 = v5[9];
  v10 = sub_219BE7434();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v4 + v9, 1, v10))
  {
    (*(v11 + 8))(v4 + v9, v10);
  }

  v12 = v3 + v1[12];
  sub_219BDD6E4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    sub_218C16270();
    v15 = *(v14 + 48);
    v16 = sub_219BDE3B4();
    (*(*(v16 - 8) + 8))(v12 + v15, v16);
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_89()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_90()
{
  v1 = (type metadata accessor for MyMagazinesMagazineFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_218B8773C();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];
  sub_2186F9410(0, &qword_280E919C0, MEMORY[0x277D321A0]);
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = type metadata accessor for MyMagazinesMagazineFeedGroupKnobs();

  v7 = *(v6 + 24);
  sub_2186F9410(0, &qword_280E91830, MEMORY[0x277D32318]);
  (*(*(v8 - 8) + 8))(v4 + v7, v8);

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[10]);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_91()
{
  v1 = sub_219BE51D4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_219BE5134();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_92()
{

  sub_21990B56C(*(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_93()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_94()
{
  sub_219928A80(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_219BDFA44();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v3);
  }

  swift_unknownObjectRelease();

  if (*(v0 + ((((v3 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_95()
{
  v1 = type metadata accessor for WebLinkRouteModel(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = v0 + v2;

  v4 = *(v1 + 20);
  type metadata accessor for WebLinkRouteModel.URLType(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v5 = sub_219BDB954();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v3 + v4, 1, v5))
    {
      (*(v6 + 8))(v3 + v4, v5);
    }
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_96()
{
  sub_21997C2A0();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_97()
{
  sub_218B08348(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 57));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_98()
{
  v1 = (type metadata accessor for SportsRecordTagFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  sub_2197B889C();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v1[8];
  sub_2189AD5C8();
  (*(*(v6 - 8) + 8))(v2 + v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[9]);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[11]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[12]);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_99()
{
  v1 = (type metadata accessor for EngagementPresentation() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v13 = *(*v1 + 64);
  v3 = sub_219BDBD34();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = sub_219BE3514();
  (*(*(v6 - 8) + 8))(v0 + v2, v6);

  v7 = v1[8];
  v8 = sub_219BE3794();
  (*(*(v8 - 8) + 8))(v0 + v2 + v7, v8);

  v9 = v1[10];
  v10 = sub_219BE3C04();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v2 + v9, 1, v10))
  {
    (*(v11 + 8))(v0 + v2 + v9, v10);
  }

  (*(v4 + 8))(v0 + ((v2 + v13 + v5) & ~v5), v3);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_100()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_101()
{
  swift_unownedRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 40);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_102()
{
  v1 = (type metadata accessor for MySportsTopicTagFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_219AB5D90(0, &qword_280E92260, type metadata accessor for MySportsTopicTagFeedGroupConfigData, sub_219AAA07C, sub_219AAA0B0);
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];
  sub_2189AD5C8();
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = type metadata accessor for MySportsTopicTagFeedGroupKnobs();

  v7 = *(v6 + 72);
  v8 = sub_219BEF244();
  (*(*(v8 - 8) + 8))(v4 + v7, v8);

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[9]);

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[13]);

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[15]);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_103()
{
  v1 = (type metadata accessor for HighlightsTagFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_2197B8704();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];
  sub_2189AD5C8();
  (*(*(v5 - 8) + 8))(v4, v5);
  type metadata accessor for HighlightsTagFeedGroupKnobs();

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[9]);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_104()
{
  v1 = (type metadata accessor for SportsEventInfoTagFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_2197B87D0();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];
  sub_2189AD5C8();
  (*(*(v5 - 8) + 8))(v4, v5);
  type metadata accessor for SportsEventInfoTagFeedGroupKnobs();

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[9]);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_105()
{
  v1 = sub_219BE0C74();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_106(void (*a1)(void))
{
  v3 = sub_219BDBD34();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  a1(*(v1 + 16));
  (*(v4 + 8))(v1 + v5, v3);

  return swift_deallocObject();
}

uint64_t sub_2187D30B0(void *a1, uint64_t a2)
{
  v5 = sub_219BE7494();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  sub_2186C709C(0, &unk_280EA8DB0);
  result = sub_219BE1E34();
  if (v23)
  {
    sub_2186CB1F0(&v22, a1);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2187D3508();
    sub_219BE74A4();
    sub_218718690(a1, &v22);
    v10 = swift_allocObject();
    *(v10 + 16) = v2;
    sub_2186CB1F0(&v22, v10 + 24);
    (*(v6 + 104))(v8, *MEMORY[0x277D6DA00], v5);

    v11 = sub_219BE7484();
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v13 = objc_opt_self();
    v14 = v11;
    v15 = [v13 bundleForClass_];
    sub_219BDB5E4();

    if (qword_280E92EE0 != -1)
    {
      swift_once();
    }

    v16 = qword_280F61978;
    v17 = objc_allocWithZone(MEMORY[0x277D75B28]);
    v18 = v16;
    v19 = sub_219BF53D4();

    v20 = [v17 initWithTitle:v19 image:v18 tag:a2];

    [v14 setTabBarItem_];
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2187D33E0()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2187D3420()
{
  sub_2187733B4(&qword_280EDB768, type metadata accessor for TodayFeedGroup);

  return sub_219BE2324();
}

uint64_t sub_2187D348C(uint64_t a1)
{
  v2 = sub_2187733B4(&qword_280EDB780, type metadata accessor for TodayFeedGroup);

  return MEMORY[0x282191918](a1, v2);
}

uint64_t sub_2187D3508()
{
  v1 = *&v0[OBJC_IVAR____TtC7NewsUI227MagazinesBadgingCoordinator_store + 24];
  v2 = *&v0[OBJC_IVAR____TtC7NewsUI227MagazinesBadgingCoordinator_store + 32];
  __swift_project_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC7NewsUI227MagazinesBadgingCoordinator_store], v1);
  (*(v2 + 8))(v1, v2);
  sub_219BE1A44();

  sub_2186C6148(0, &qword_280E8E3B0);
  v3 = sub_219BF66A4();
  *(swift_allocObject() + 16) = v0;
  v4 = v0;
  sub_219BE21A4();

  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  sub_219BE1A04();
  __swift_destroy_boxed_opaque_existential_1(v8);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = v4;
  sub_2187D36C4(sub_218BB5310, v5);
}

uint64_t sub_2187D3688()
{

  return swift_deallocObject();
}

uint64_t sub_2187D36C4(uint64_t a1, uint64_t a2)
{
  sub_21870F290(0, &unk_280EE7A80, MEMORY[0x277D6CB90]);
  swift_allocObject();
  v4 = sub_219BE2244();
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = v4;
  v10[4] = sub_218AFE0E8;
  v10[5] = v6;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_218793E0C;
  v10[3] = &block_descriptor_58;
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

uint64_t sub_2187D3824()
{
  v0 = sub_219BDBD64();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDBD54();
  sub_219BDBD44();
  (*(v1 + 8))(v3, v0);
  sub_219BED4B4();
  return swift_storeEnumTagMultiPayload();
}

void sub_2187D3930(void *a1)
{
  swift_unknownObjectWeakAssign();
}

id sub_2187D397C(uint64_t a1)
{
  v3 = sub_219BE7494();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE74A4();
  sub_218718690(v1 + 16, v20);
  v7 = swift_allocObject();
  sub_2186CB1F0(v20, v7 + 16);
  (*(v4 + 104))(v6, *MEMORY[0x277D6DA00], v3);
  v8 = sub_219BE7484();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = objc_opt_self();
  v11 = v8;
  v12 = [v10 bundleForClass_];
  sub_219BDB5E4();

  if (qword_280E92F00 != -1)
  {
    swift_once();
  }

  v13 = qword_280F61990;
  v14 = objc_allocWithZone(MEMORY[0x277D75B28]);
  v15 = v13;
  v16 = sub_219BF53D4();

  v17 = [v14 initWithTitle:v16 image:v15 tag:a1];

  [v11 setTabBarItem_];
  return v11;
}

id sub_2187D3C18(uint64_t a1)
{
  v2 = sub_219BE7494();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE74A4();
  (*(v3 + 104))(v5, *MEMORY[0x277D6DA00], v2);

  v6 = sub_219BE7484();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = objc_opt_self();
  v9 = v6;
  v10 = [v8 bundleForClass_];
  sub_219BDB5E4();

  if (qword_280E92EF8 != -1)
  {
    swift_once();
  }

  v11 = qword_280F61988;
  v12 = objc_allocWithZone(MEMORY[0x277D75B28]);
  v13 = v11;
  v14 = sub_219BF53D4();

  v15 = [v12 initWithTitle:v14 image:v13 tag:a1];

  [v9 setTabBarItem_];
  return v9;
}

void *sub_2187D3E88(uint64_t a1)
{
  v3 = sub_219BE7494();
  MEMORY[0x28223BE20](v3);
  (*(v5 + 104))(&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6DA08]);
  sub_218718690(v1 + 16, v20);
  v6 = swift_allocObject();
  sub_2186CB1F0(v20, v6 + 16);
  v7 = objc_allocWithZone(sub_219BE74A4());
  v8 = sub_219BE7464();
  if (sub_219BED0C4())
  {
    v9 = [objc_allocWithZone(MEMORY[0x277D75B28]) initWithTabBarSystemItem:8 tag:a1];
    if (qword_280E92ED8 != -1)
    {
      swift_once();
    }

    [v9 setImage_];
    [v8 setTabBarItem_];
  }

  else
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v11 = objc_opt_self();
    v12 = v8;
    v13 = [v11 bundleForClass_];
    sub_219BDB5E4();

    if (qword_280E92ED8 != -1)
    {
      swift_once();
    }

    v14 = qword_280F61970;
    v15 = objc_allocWithZone(MEMORY[0x277D75B28]);
    v16 = v14;
    v17 = sub_219BF53D4();

    v9 = [v15 initWithTitle:v17 image:v16 tag:a1];

    [v12 setTabBarItem_];
  }

  return v8;
}

uint64_t sub_2187D41D4(void *a1, uint64_t a2)
{
  v45 = a1;
  v50 = a2;
  v53 = sub_219BE5F04();
  v3 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v48 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BEB674();
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x28223BE20](v5);
  v49 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = "e Audio tab bar item";
  sub_219BEB604();
  v7 = *(a2 + 72);
  v8 = MEMORY[0x277D6D3B8];
  sub_2187C854C(0, &qword_280E8BFF8, MEMORY[0x277D6D3B8], MEMORY[0x277D84560]);
  v52 = v9;
  v10 = *(v3 + 72);
  v11 = *(v3 + 80);
  v40 = 2 * v10;
  v51 = v10;
  v12 = swift_allocObject();
  v41 = xmmword_219C09EC0;
  *(v12 + 16) = xmmword_219C09EC0;
  v13 = v7;
  sub_219BE5EC4();
  sub_219BE5EE4();
  v54 = v12;
  v14 = sub_21871D400(&qword_280EE5D50, 255, MEMORY[0x277D6D3B8]);
  sub_2187C854C(0, &qword_280E8F518, v8, MEMORY[0x277D83940]);
  v16 = v15;
  v17 = sub_2187C8634();
  sub_219BF7164();
  sub_219BE5F14();
  swift_allocObject();
  v36 = v13;
  v35 = v45;
  v18 = sub_219BE5E74();
  v19 = *(v46 + 120);
  v37 = v18;
  sub_219BE5954();
  sub_219BEB5E4();
  v43 = v11;
  v20 = swift_allocObject();
  *(v20 + 16) = v41;
  v42 = (v11 + 32) & ~v11;
  sub_219BE5EC4();
  sub_219BE5EE4();
  v54 = v20;
  v44 = v17;
  v45 = v16;
  v46 = v14;
  sub_219BF7164();
  swift_allocObject();
  v21 = v35;
  v22 = v49;
  v23 = v21;
  v36 = sub_219BE5E74();
  sub_219BE5954();
  v24 = sub_2187D4814(6u);
  if (v24)
  {
    v47 = v24;
    sub_219BEB5E4();
    v25 = swift_allocObject();
    *(v25 + 16) = v41;
    sub_219BE5EC4();
    sub_219BE5ED4();
    v54 = v25;
    sub_219BF7164();
    swift_allocObject();
    v26 = v23;
    v27 = v47;
    sub_219BE5E74();
    sub_219BE5954();
  }

  *&v41 = v23;
  v47 = v19;
  if (qword_280EE35C8 != -1)
  {
    swift_once();
  }

  v35 = "_TtC7NewsUI210TipsModule";
  v28 = v39;
  v29 = __swift_project_value_buffer(v39, qword_280F62440);
  (*(v38 + 16))(v22, v29, v28);
  v30 = *(v50 + 40);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_219C0B8C0;
  v32 = v30;
  sub_219BE5EC4();
  sub_219BE5ED4();
  sub_219BE5EF4();
  v54 = v31;
  sub_219BF7164();
  swift_allocObject();
  v33 = v41;
  sub_219BE5E84();
  sub_219BE5954();
}

void *sub_2187D4814(unsigned __int8 a1)
{
  if (a1 <= 2u)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v2 = *(v1 + 40);
      }

      else
      {
        v2 = *(v1 + 48);
      }
    }

    else
    {
      v2 = *(v1 + 32);
    }

    goto LABEL_13;
  }

  if (a1 <= 4u)
  {
    if (a1 == 3)
    {
      v2 = *(v1 + 56);
    }

    else
    {
      v2 = *(v1 + 64);
    }

    goto LABEL_13;
  }

  if (a1 == 5)
  {
    v2 = *(v1 + 72);
LABEL_13:
    v3 = v2;
    return v2;
  }

  v5 = [*(v1 + 72) _children];
  sub_2187C0264();
  v6 = sub_219BF5924();

  if (v6 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v8 = 0;
    v9 = 0x7548656C7A7A7570;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x21CECE0F0](v8, v6);
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v10 = *(v6 + 8 * v8 + 32);
      }

      v2 = v10;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v12 = [v10 _identifier];
      v13 = v9;
      v14 = sub_219BF5414();
      v16 = v15;

      if (v14 == v13 && v16 == 0xE900000000000062)
      {

        return v2;
      }

      v9 = v13;
      v18 = sub_219BF78F4();

      if (v18)
      {

        return v2;
      }

      ++v8;
      if (v11 == i)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

LABEL_35:

  return 0;
}

uint64_t sub_2187D4A3C()
{
  v0 = sub_219BEB674();
  __swift_allocate_value_buffer(v0, qword_280F62440);
  __swift_project_value_buffer(v0, qword_280F62440);
  return sub_219BEB594();
}

uint64_t sub_2187D4AC4(uint64_t a1, uint64_t a2)
{
  sub_2187D4B28();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_2187D4B28()
{
  if (!qword_280E9DA68)
  {
    sub_2186C709C(255, &qword_280E9DA70);
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E9DA68);
    }
  }
}

void sub_2187D4B94()
{
  v1 = *(v0 + OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_navigationControllers);
  v13 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
    goto LABEL_27;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v2)
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x21CECE0F0](v3, v1);
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        v2 = sub_219BF7214();
        goto LABEL_3;
      }

      v7 = *&v4[qword_280EA07E0];
      v8 = [v12 traitCollection];
      v9 = [v8 horizontalSizeClass];

      if (v9 > 2)
      {
        if ((v7 & 4) != 0)
        {
LABEL_15:
          sub_219BF73D4();
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
          goto LABEL_6;
        }
      }

      else if ((v7 & qword_219C519B0[v9]) != 0)
      {
        goto LABEL_15;
      }

LABEL_6:
      ++v3;
      if (v6 == v2)
      {
        v10 = v13;
        goto LABEL_19;
      }
    }
  }

  v10 = MEMORY[0x277D84F90];
LABEL_19:

  if (v10 < 0 || (v10 & 0x4000000000000000) != 0)
  {
    sub_2186C6148(0, &qword_280E8E480);

    sub_219BF7534();
  }

  else
  {

    sub_219BF7924();
    sub_2186C6148(0, &qword_280E8E480);
  }

  sub_2186C6148(0, &qword_280E8E480);
  v11 = sub_219BF5904();

  [v12 setViewControllers_];
}

void sub_2187D4E90(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_2187D4EE4(a3);
}

uint64_t sub_2187D4EE4(char a1)
{
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_viewWillAppear_, a1 & 1);
  if (sub_219BED0C4())
  {
    v3 = [v1 navigationBar];
    v4 = [objc_opt_self() labelColor];
    [v3 setTintColor_];
  }

  result = sub_219BED0C4();
  if ((result & 1) == 0)
  {
    return [v1 setNavigationBarHidden:1 animated:0];
  }

  return result;
}

uint64_t sub_2187D4FB8()
{
  sub_219BE6AA4();
  swift_getObjectType();
  sub_219BEAF34();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_219BE6FF4();

  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_219BE1A04();
  return __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_2187D5154()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2187D518C()
{
  sub_219BE6AA4();
  swift_getObjectType();
  sub_2187C3D44(0, &qword_280EE3930, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6EBE8]);
  sub_219BEA9A4();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_219BE6FE4();

  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_219BE1A04();
  return __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_2187D5310()
{
  sub_219BE6AA4();
  swift_getObjectType();
  if (qword_280EE3848 != -1)
  {
    swift_once();
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_219BE7084();

  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_219BE1A04();
  return __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_2187D542C()
{
  sub_218724DE0(0, &unk_280EE3970, MEMORY[0x277D6EBD0]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - v3;
  sub_218724DE0(0, &qword_280EE3930, MEMORY[0x277D6EBE8]);
  (*(v2 + 104))(v4, *MEMORY[0x277D6EBC8], v1);
  result = sub_219BEA914();
  qword_280F62498 = result;
  return result;
}

void sub_2187D5564(void *a1)
{
  v1 = a1;
  sub_2187D55AC();
}

void sub_2187D55AC()
{
  ObjectType = swift_getObjectType();
  v12.receiver = v0;
  v12.super_class = ObjectType;
  objc_msgSendSuper2(&v12, sel_viewSafeAreaInsetsDidChange);
  if (sub_219BED0C4())
  {
    v2 = [v0 tabBarController];
    if (v2)
    {
      v3 = v2;
      if (sub_219BED0C4())
      {
        v11.receiver = v0;
        v11.super_class = ObjectType;
        v4 = objc_msgSendSuper2(&v11, sel__hostingNavigationBar);
        if (!v4)
        {
LABEL_16:

          return;
        }
      }

      else
      {
        v5 = [v0 topViewController];
        if (!v5)
        {
          v5 = *&v0[qword_280EA07F0];
        }

        v6 = v5;
        v4 = [v5 _hostingNavigationBar];

        if (!v4)
        {
          goto LABEL_16;
        }
      }

      v7 = [v4 topItem];
      if (v7)
      {
        v8 = v7;
        v9 = [v7 titleView];

        if (v9)
        {
          sub_219BE9C84();
          if (swift_dynamicCastClass())
          {
            sub_219BE9C74();
            v10 = v9;
          }

          else
          {
            v10 = v4;
            v4 = v3;
            v3 = v9;
          }
        }
      }

      goto LABEL_16;
    }
  }
}

BOOL sub_2187D5728()
{
  sub_219BDC8D4();
  sub_219BDC8B4();
  if (qword_280EE9AB8 != -1)
  {
    swift_once();
  }

  sub_219BDC8A4();

  v0 = v8;
  if (v8 < 0)
  {
    sub_219BDC8B4();
    if (qword_280EE9AD0 != -1)
    {
      swift_once();
    }

    sub_219BDC8A4();

    v0 = v8;
  }

  if (v0 < 1)
  {
    if (qword_280EE6088 != -1)
    {
      swift_once();
    }

    v6 = sub_219BE5434();
    __swift_project_value_buffer(v6, qword_280F627C0);
    v2 = sub_219BE5414();
    v3 = sub_219BF6214();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 134349312;
      *(v4 + 4) = v0;
      *(v4 + 12) = 2050;
      *(v4 + 14) = 1;
      v5 = "Terms and Conditions have NOT been agreed to, versionCompleted=%{public}ld, minimumRequired=%{public}ld";
      goto LABEL_16;
    }
  }

  else
  {
    if (qword_280EE6088 != -1)
    {
      swift_once();
    }

    v1 = sub_219BE5434();
    __swift_project_value_buffer(v1, qword_280F627C0);
    v2 = sub_219BE5414();
    v3 = sub_219BF6214();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 134349312;
      *(v4 + 4) = v0;
      *(v4 + 12) = 2050;
      *(v4 + 14) = 1;
      v5 = "Terms and Conditions have been agreed to, versionCompleted=%{public}ld, minimumRequired=%{public}ld";
LABEL_16:
      _os_log_impl(&dword_2186C1000, v2, v3, v5, v4, 0x16u);
      MEMORY[0x21CECF960](v4, -1, -1);
    }
  }

  return v0 > 0;
}

uint64_t sub_2187D59C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = sub_219BDC934();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186C6588(0, &qword_280EE9060);
  sub_219BF5414();
  v13[2] = a3;
  v13[3] = a3;
  v13[1] = 0x7FFFFFFFFFFFFFFFLL;
  (*(v8 + 104))(v10, *MEMORY[0x277D6D090], v7);
  sub_219BDC9D4();
  v11 = sub_219BDC9A4();

  *a5 = v11;
  return result;
}

uint64_t sub_2187D5B90(void *a1, void *a2)
{
  v3 = v2;
  sub_2187B13AC(v36);
  __swift_project_boxed_opaque_existential_1(v36, v36[3]);
  sub_2186C709C(0, qword_280EBF670);
  result = sub_219BE1E34();
  if (v35)
  {
    sub_2186CB1F0(&v34, &v37);
    __swift_destroy_boxed_opaque_existential_1(v36);
    __swift_project_boxed_opaque_existential_1(&v37, *(&v38 + 1));
    sub_2187B9A9C(v36);
    __swift_destroy_boxed_opaque_existential_1(&v37);
    if (LOBYTE(v36[0]) != 3)
    {
      goto LABEL_6;
    }

    v7 = [a2 traitCollection];
    v8 = sub_2187B7374(a1, v7);

    if (!v8)
    {
      goto LABEL_6;
    }

    v9 = sub_2187BB13C(&qword_280EDDC78, type metadata accessor for NewsActivityInfoDeserializer);
    NewsActivityInfoDeserializer.deserialize(userActivity:)(v8, &v37);

    v10 = v37;
    if ((~v37 & 0xF000000000000007) == 0)
    {

LABEL_6:
      sub_2186C6148(0, &qword_280E8D790);
      v11 = sub_219BF6F44();
      sub_219BF6214();
      sub_219BE5314();

      sub_2186F85E8(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
      swift_allocObject();
      return sub_219BE3014();
    }

    v12 = CACurrentMediaTime();
    v13 = *&v3[qword_280EDDDD0];
    *&v3[qword_280EDDDD0] = v10;
    sub_2189EB264(v10);
    sub_218970170(v13);
    sub_2187B7D90(&qword_280EDDC88, sub_2186CD650);
    LOBYTE(v37) = 1;
    sub_2191C2AF4();
    swift_allocObject();
    sub_219BE2A64();
    v14 = swift_allocObject();
    *(v14 + 16) = v10;
    *(v14 + 24) = a2;
    sub_2191C2BCC(v10);
    v15 = a2;
    sub_219BE2A84();

    sub_219BE1E64();

    LOBYTE(v37) = 1;
    swift_allocObject();

    sub_219BE2A64();
    v16 = swift_allocObject();
    *(v16 + 16) = v12;
    *(v16 + 24) = v15;
    v17 = v15;
    sub_219BE2A94();

    sub_219BE1E64();

    sub_2187B7D90(&qword_280EDDD70, sub_2186CF94C);
    v18 = swift_allocObject();
    *(v18 + 16) = v10;
    *(v18 + 24) = v3;
    sub_2191C2BCC(v10);
    v19 = v3;
    sub_219BE6434();

    v20 = objc_opt_self();
    v21 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
    v22 = [v20 sharedApplication];
    v23 = [v22 delegate];

    if (v23)
    {
      type metadata accessor for AppDelegate();
      if (swift_dynamicCastClass())
      {

        swift_unknownObjectRelease();
        v24 = swift_allocObject();
        *(v24 + 16) = v17;
        *(v24 + 24) = v19;
        v25 = v17;
        v26 = v19;
        sub_219BE20F4();

        v21 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;

        goto LABEL_12;
      }

      swift_unknownObjectRelease();
    }

    v39 = 0;
    v37 = 0u;
    v38 = 0u;
LABEL_12:
    sub_2187B1DA0(&v37, &unk_280EE7F10, &unk_280EE7F20, MEMORY[0x277D6C9C0]);
    v27 = [v20 v21[336]];
    v28 = [v27 delegate];

    if (v28)
    {
      type metadata accessor for AppDelegate();
      if (swift_dynamicCastClass())
      {

        swift_unknownObjectRelease();
        v29 = swift_allocObject();
        *(v29 + 16) = v17;
        *(v29 + 24) = v19;
        v30 = v17;
        v31 = v19;
        sub_219BE20F4();

LABEL_17:
        sub_2187B1DA0(&v37, &unk_280EE7F10, &unk_280EE7F20, MEMORY[0x277D6C9C0]);
        LOBYTE(v37) = 0;

        sub_219BE1E74();

        MEMORY[0x28223BE20](v32);
        sub_2186F85E8(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
        swift_allocObject();
        v33 = sub_219BE30B4();
        sub_218970170(v10);

        return v33;
      }

      swift_unknownObjectRelease();
    }

    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_2187D62C0()
{

  return swift_deallocObject();
}

void sub_2187D6304(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v136 = a2;
  v137 = a1;
  v8 = MEMORY[0x277D83D88];
  sub_2186DD934(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v10 = MEMORY[0x28223BE20](v9);
  v131 = &v122 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v130 = &v122 - v12;
  v13 = sub_219BE84F4();
  v140 = *(v13 - 8);
  v141 = v13;
  MEMORY[0x28223BE20](v13);
  v138 = v14;
  v139 = &v122 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BDB954();
  v16 = *(v15 - 8);
  v142 = v15;
  v143 = v16;
  v17 = MEMORY[0x28223BE20](v15);
  v129 = &v122 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v122 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v122 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v132 = &v122 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v122 - v27;
  sub_2186DD934(0, &unk_280EE9D60, sub_2187B0408, v8);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v32 = &v122 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = &v122 - v33;
  if (sub_219BE84E4())
  {
    if (!a3)
    {
      goto LABEL_19;
    }

    v126 = v32;
    v127 = 1;
  }

  else
  {
    if (!a3)
    {
      goto LABEL_19;
    }

    v126 = v32;
    v35 = sub_2187BB13C(&qword_280EDDC78, type metadata accessor for NewsActivityInfoDeserializer);
    v127 = sub_2187D7340();
  }

  v36 = [a3 sourceApplication];
  v135 = v4;
  v133 = a4;
  if (v36)
  {
    v37 = v36;
    v128 = sub_219BF5414();
    v134 = v38;
  }

  else
  {
    v128 = 0;
    v134 = 0;
  }

  v39 = [a3 URLContexts];
  sub_2186C6148(0, &unk_280E8E4A0);
  sub_21879FA10(&qword_280E8E498, &unk_280E8E4A0);
  v40 = sub_219BF5D44();

  v41 = sub_2187BC23C(v40);

  if (v41)
  {
    sub_2187B1BF8(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_219C09BA0;
    *(v42 + 56) = MEMORY[0x277D837D0];
    *(v42 + 64) = sub_2186FC3BC();
    v43 = v136;
    v44 = v137;
    *(v42 + 32) = v137;
    *(v42 + 40) = v43;
    sub_2186C6148(0, &qword_280E8D790);

    v45 = sub_219BF6F44();
    sub_219BF6214();
    sub_219BE5314();

    sub_2187B0408();
    v47 = v46;
    v48 = &v34[*(v46 + 48)];
    v49 = [v41 URL];
    sub_219BDB8B4();

    (*(v143 + 32))(v34, v28, v142);
    v50 = [v41 options];
    v51 = [v50 sourceApplication];

    if (v51)
    {
      v52 = sub_219BF5414();
      v54 = v53;

      v55 = v54;
      v56 = v135;
    }

    else
    {
      v55 = v134;
      v56 = v135;
      v52 = v128;
    }

    *v48 = v52;
    v48[1] = v55;
    (*(*(v47 - 8) + 56))(v34, 0, 1, v47);
    swift_beginAccess();

    sub_2199D63A8(v34, v44, v43);
    swift_endAccess();
    v70 = v139;
    v69 = v140;
    v71 = v141;
    (*(v140 + 16))(v139, v133, v141);
    v72 = (*(v69 + 80) + 32) & ~*(v69 + 80);
    v73 = swift_allocObject();
    *(v73 + 16) = v56;
    *(v73 + 24) = v41;
    (*(v69 + 32))(v73 + v72, v70, v71);
    v74 = v56;
    v75 = v41;
    sub_2191BC388(sub_2191C2A90, v73);

    return;
  }

  v57 = [a3 userActivities];
  sub_2186C6148(0, &qword_280E8E650);
  sub_21879FA10(&unk_280E8E630, &qword_280E8E650);
  v58 = sub_219BF5D44();

  v59 = sub_2187BC25C(v58);

  if (!v59)
  {

    v5 = v135;
LABEL_19:
    v76 = *&v5[qword_280EDDCF8];
    if (v76)
    {
      v77 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v78 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v79 = swift_allocObject();
      v79[2] = v77;
      v79[3] = v78;
      v79[4] = v76;
      v79[5] = a3;
      v80 = a3;
      v81 = v76;

      sub_2191BC388(sub_2191C28F4, v79);
    }

    return;
  }

  v124 = swift_allocBox();
  v61 = v60;
  v62 = v143;
  v63 = *(v143 + 56);
  v63(v60, 1, 1, v142);
  v125 = v59;
  v64 = [v59 activityType];
  v65 = sub_219BF5414();
  v67 = v66;

  if (sub_219BF5414() == v65 && v68 == v67)
  {
  }

  else
  {
    v82 = sub_219BF78F4();

    if ((v82 & 1) == 0)
    {
LABEL_37:
      v113 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v115 = v139;
      v114 = v140;
      v116 = v141;
      (*(v140 + 16))(v139, v133, v141);
      v117 = (*(v114 + 80) + 25) & ~*(v114 + 80);
      v118 = (v138 + v117 + 7) & 0xFFFFFFFFFFFFFFF8;
      v119 = swift_allocObject();
      *(v119 + 16) = v113;
      *(v119 + 24) = v127 & 1;
      (*(v114 + 32))(v119 + v117, v115, v116);
      v120 = v125;
      *(v119 + v118) = v125;
      *(v119 + ((v118 + 15) & 0xFFFFFFFFFFFFFFF8)) = v124;

      v121 = v120;

      sub_2191BC388(sub_2191C2D8C, v119);

      return;
    }
  }

  v83 = v125;
  v84 = [v125 webpageURL];
  if (v84)
  {
    v123 = v63;
    v85 = v84;
    sub_219BDB8B4();

    v86 = *(v62 + 32);
    v87 = v132;
    v88 = v24;
    v89 = v142;
    v86(v132, v88, v142);
    v90 = sub_2187B5DEC(&qword_280EDDD18, &qword_280E8DD50);
    v91 = sub_219BDB854();
    v92 = [v90 destinationURLForURL_];

    if (v92)
    {
      sub_219BDB8B4();

      v93 = v130;
      v86(v130, v21, v89);
    }

    else
    {
      v93 = v130;
      (*(v143 + 16))(v130, v87, v89);
    }

    v94 = v86;
    v123(v93, 0, 1, v89);
    v95 = MEMORY[0x277CC9260];
    sub_2187B132C(v93, v61, &unk_280EE9D00, MEMORY[0x277CC9260]);
    v96 = v61;
    v97 = v131;
    sub_2187DB308(v96, v131, &unk_280EE9D00, v95, MEMORY[0x277D83D88], sub_2186DD934);
    v98 = v143;
    if ((*(v143 + 48))(v97, 1, v89) == 1)
    {
      (*(v98 + 8))(v87, v89);
      sub_2187455EC(v97, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_2186DD934);
    }

    else
    {
      v99 = v129;
      v94(v129, v97, v89);
      sub_2187B1BF8(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
      v100 = swift_allocObject();
      *(v100 + 16) = xmmword_219C09BA0;
      *(v100 + 56) = MEMORY[0x277D837D0];
      *(v100 + 64) = sub_2186FC3BC();
      v101 = v136;
      *(v100 + 32) = v137;
      *(v100 + 40) = v101;
      sub_2186C6148(0, &qword_280E8D790);

      v102 = sub_219BF6F44();
      sub_219BF6214();
      sub_219BE5314();

      sub_2187B0408();
      v104 = v103;
      v105 = &v126[*(v103 + 48)];
      v106 = v126;
      (*(v98 + 16))();
      v107 = [v125 ts_sourceApplication];
      if (v107)
      {
        v108 = v107;
        v109 = sub_219BF5414();
        v111 = v110;
      }

      else
      {
        v111 = v134;

        v109 = v128;
      }

      *v105 = v109;
      v105[1] = v111;
      (*(*(v104 - 8) + 56))(v106, 0, 1, v104);
      swift_beginAccess();

      sub_2199D63A8(v106, v137, v101);
      swift_endAccess();
      v112 = *(v98 + 8);
      v112(v99, v89);
      v112(v132, v89);
    }

    goto LABEL_37;
  }
}

uint64_t sub_2187D721C()
{

  return swift_deallocObject();
}

uint64_t sub_2187D726C()
{
  v1 = sub_219BE84F4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2187D7340()
{
  v1 = [v0 userActivities];
  sub_2186C6148(0, &qword_280E8E650);
  sub_21879FA10(&unk_280E8E630, &qword_280E8E650);
  v2 = sub_219BF5D44();

  v3 = sub_2187BC25C(v2);

  if (!v3)
  {
    return 1;
  }

  NewsActivityInfoDeserializer.deserialize(userActivity:)(v3, &v10);
  v4 = v10;
  if ((~v10 & 0xF000000000000007) != 0)
  {
    v5 = NewsActivity2.activityTraits.getter();
    if (v5)
    {
      v6 = *(v5 + 2);
      v7 = v5 + 32;
      while (1)
      {
        if (!v6)
        {
          sub_218970170(v4);

          goto LABEL_12;
        }

        if (!*v7)
        {
          break;
        }

        v8 = sub_219BF78F4();

        ++v7;
        --v6;
        if (v8)
        {
          goto LABEL_13;
        }
      }

LABEL_13:
      sub_218970170(v4);

      return 0;
    }

    else
    {

      sub_218970170(v4);
      return 1;
    }
  }

  else
  {
LABEL_12:

    return 1;
  }
}

void sub_2187D7560(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_opt_self() ams_shieldSignInOrCreateFlows];
  sub_2187B1BF8(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_219C09BA0;
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_2186FC3BC();
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;
  sub_2186C6148(0, &qword_280E8D790);

  v23 = sub_219BF6F44();
  sub_219BF6214();
  if (v6)
  {
    sub_219BE5314();

    v8 = [objc_opt_self() effectWithStyle_];
    v9 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

    v10 = [a1 rootViewController];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 view];

      if (v12)
      {
        v13 = v9;
        [v12 bounds];
        [v13 setFrame_];
        [v13 setAutoresizingMask_];

        [v12 addSubview_];
      }
    }

    v14 = [objc_allocWithZone(MEMORY[0x277CF0380]) init];
    v15 = [a1 rootViewController];
    [v14 setPresentingViewController_];

    v16 = v14;
    [v16 setAuthenticationType_];
    v17 = [objc_allocWithZone(MEMORY[0x277CF0178]) init];
    if (v17)
    {
      v18 = v17;
      v19 = swift_allocObject();
      v19[2] = v18;
      v19[3] = a2;
      v19[4] = a3;
      v19[5] = v9;
      aBlock[4] = sub_2191C2868;
      aBlock[5] = v19;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2191BFA3C;
      aBlock[3] = &block_descriptor_38_0;
      v20 = _Block_copy(aBlock);

      v21 = v9;
      v22 = v18;

      [v22 authenticateWithContext:v16 completion:v20];
      _Block_release(v20);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_219BE5314();
  }
}

uint64_t sub_2187D7930()
{

  return swift_deallocObject();
}

void sub_2187D7978(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_2187D79E0(v4);
}

uint64_t sub_2187D79E0(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D83D88];
  sub_2186DD934(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v99 = v5;
  MEMORY[0x28223BE20](v5);
  sub_2186DD934(0, &unk_280EE9D60, sub_2187B0408, v4);
  v101 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v100 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v90 - v9;
  v11 = [a1 session];
  v12 = [v11 persistentIdentifier];

  v13 = sub_219BF5414();
  v15 = v14;

  v91 = qword_280EDDC30;
  v16 = *(v2 + qword_280EDDC30);
  v17 = MEMORY[0x277D837D0];
  v94 = v13;
  v18 = a1;
  if (v16 || (objc_opt_self(), (v19 = swift_dynamicCastObjCClass()) == 0))
  {
    v97 = 0;
  }

  else
  {
    v20 = v19;
    sub_2187B1BF8(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_219C09BA0;
    *(v21 + 56) = v17;
    *(v21 + 64) = sub_2186FC3BC();
    *(v21 + 32) = v13;
    *(v21 + 40) = v15;
    sub_2186C6148(0, &qword_280E8D790);
    v103 = a1;

    v22 = sub_219BF6F44();
    sub_219BF6214();
    sub_219BE5314();

    v23 = *(v2 + qword_280EDDDC8);
    v24 = *(v2 + qword_280EDDD30);
    v25 = v24;
    v26 = v23;
    sub_2187BA030(v20, v23, v24);
    v17 = MEMORY[0x277D837D0];

    v13 = v94;
    v97 = 1;
  }

  sub_2187B1BF8(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v28 = v27;
  v29 = swift_allocObject();
  v92 = xmmword_219C09BA0;
  *(v29 + 16) = xmmword_219C09BA0;
  *(v29 + 56) = v17;
  v103 = sub_2186FC3BC();
  *(v29 + 64) = v103;
  *(v29 + 32) = v13;
  *(v29 + 40) = v15;
  v30 = sub_2186C6148(0, &qword_280E8D790);

  v98 = v30;
  v31 = sub_219BF6F44();
  sub_219BF6214();
  sub_219BE5314();

  sub_2187D85B0();
  [v32 sceneWillEnterForeground];
  swift_unknownObjectRelease();
  sub_2187B5F14(v106);
  __swift_project_boxed_opaque_existential_1(v106, v107);
  sub_219BE2984();
  __swift_destroy_boxed_opaque_existential_1(v106);
  v33 = *(v2 + qword_280EDDDC8);
  if (v33)
  {
    v34 = v33;
    if (sub_2187B70E0())
    {
      sub_2187B7D90(&qword_280EDDCD8, sub_2187367A8);
      sub_219BED594();

      sub_219BEDE04();
    }

    else
    {
    }
  }

  v35 = qword_280EDDDA0;
  swift_beginAccess();
  v36 = *(v2 + v35);
  v37 = *(v36 + 16);
  v38 = v18;
  v104 = v2;
  v102 = v15;
  v96 = v10;
  if (v37 && (v39 = sub_21870F700(v13, v15), (v40 & 1) != 0))
  {
    v41 = v39;
    v42 = *(v36 + 56);
    sub_2187B0408();
    v44 = v43;
    v45 = *(v43 - 8);
    sub_2191C27FC(v42 + *(v45 + 72) * v41, v10);
    (*(v45 + 56))(v10, 0, 1, v44);
    v38 = v18;
  }

  else
  {
    sub_2187B0408();
    (*(*(v46 - 8) + 56))(v10, 1, 1, v46);
  }

  v95 = v38;
  swift_endAccess();
  v93 = v28;
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_219C0D560;
  sub_219BE98F4();
  swift_allocObject();
  sub_219BE98E4();
  sub_219BE98D4();

  v48 = sub_219BF5484();
  v49 = MEMORY[0x277D837D0];
  v50 = v103;
  *(v47 + 56) = MEMORY[0x277D837D0];
  *(v47 + 64) = v50;
  *(v47 + 32) = v48;
  *(v47 + 40) = v51;
  v52 = v97;
  if (v97)
  {
    v53 = 1702195828;
  }

  else
  {
    v53 = 0x65736C6166;
  }

  if (v97)
  {
    v54 = 0xE400000000000000;
  }

  else
  {
    v54 = 0xE500000000000000;
  }

  *(v47 + 96) = v49;
  *(v47 + 104) = v50;
  *(v47 + 72) = v53;
  *(v47 + 80) = v54;
  v55 = [v38 activationState];
  v56 = MEMORY[0x277D83C10];
  *(v47 + 136) = MEMORY[0x277D83B88];
  *(v47 + 144) = v56;
  *(v47 + 112) = v55;
  v57 = [sub_2187B72A8() isStateRestorationAllowed];
  swift_unknownObjectRelease();
  if (v57)
  {
    v58 = 1702195828;
  }

  else
  {
    v58 = 0x65736C6166;
  }

  if (v57)
  {
    v59 = 0xE400000000000000;
  }

  else
  {
    v59 = 0xE500000000000000;
  }

  v60 = v49;
  *(v47 + 176) = v49;
  *(v47 + 184) = v50;
  *(v47 + 152) = v58;
  *(v47 + 160) = v59;
  v61 = v96;
  sub_2187DB308(v96, v100, &unk_280EE9D60, sub_2187B0408, MEMORY[0x277D83D88], sub_2186DD934);
  v62 = sub_219BF5484();
  *(v47 + 216) = v49;
  *(v47 + 224) = v50;
  *(v47 + 192) = v62;
  *(v47 + 200) = v63;
  v64 = sub_219BF6F44();
  sub_219BF6214();
  sub_219BE5314();

  if ((v52 & 1) == 0 && (v65 = [v95 activationState], v66 = v102, v65 == 2) && (objc_msgSend(*(v104 + qword_280EDDC90), sel_isStateRestorationAllowed) & 1) == 0 && (sub_2187B0408(), (*(*(v67 - 8) + 48))(v61, 1, v67) == 1) && (v68 = swift_allocObject(), *(v68 + 16) = v92, v69 = v103, *(v68 + 56) = v49, *(v68 + 64) = v69, *(v68 + 32) = v94, *(v68 + 40) = v66, v70 = v66, , v71 = sub_219BF6F44(), sub_219BF6214(), sub_219BE5314(), , v71, v72 = v104, v106[0] = sub_2187B7D90(&qword_280EDDD70, sub_2186CF94C), v73 = swift_allocObject(), *(v73 + 16) = 0u, *(v73 + 32) = 0u, v105 = (v73 | 0x4000000000000002), sub_2186CF94C(), sub_2187BB0F4(&qword_280EE5A90, sub_2186CF94C), sub_219BEB484(), sub_218932F9C(v105), , (v74 = *(v72 + qword_280EDDCF8)) != 0))
  {
    v75 = qword_280E8D8F0;
    v76 = v74;
    if (v75 != -1)
    {
      swift_once();
    }

    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_219C09EC0;
    v78 = v103;
    *(v77 + 56) = v49;
    *(v77 + 64) = v78;
    *(v77 + 32) = v94;
    *(v77 + 40) = v70;
    v79 = [v76 description];
    v80 = sub_219BF5414();
    v82 = v81;

    *(v77 + 96) = v60;
    *(v77 + 104) = v78;
    *(v77 + 72) = v80;
    *(v77 + 80) = v82;
    sub_219BF6214();
    sub_219BE5314();

    v83 = v104;
    sub_2191BC024(v106);
    __swift_project_boxed_opaque_existential_1(v106, v107);
    v84 = *(v83 + v91);
    if (v84 && (v85 = [v84 rootViewController]) != 0)
    {
      v86 = v85;
      sub_2186C6148(0, &qword_280E8E2F0);
      sub_219BF6584();

      v87 = v105;
    }

    else
    {
      v87 = 0;
    }

    v89 = off_282A5BC28[0];
    type metadata accessor for AppDiscardedStateRestorationActivityHandler();
    v89(v76);

    __swift_destroy_boxed_opaque_existential_1(v106);
  }

  else
  {
  }

  return sub_2187455EC(v61, &unk_280EE9D60, sub_2187B0408, MEMORY[0x277D83D88], sub_2186DD934);
}

uint64_t sub_2187D8570()
{
  if (*(v0 + 24) != 1)
  {
  }

  return swift_deallocObject();
}

void sub_2187D85B0()
{
  v1 = qword_280EDDCC0;
  if (*(v0 + qword_280EDDCC0))
  {
    goto LABEL_4;
  }

  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 delegate];

  if (v3)
  {
    *(v0 + v1) = swift_dynamicCastObjCProtocolUnconditional();
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
LABEL_4:
    swift_unknownObjectRetain();
    return;
  }

  __break(1u);
}

uint64_t sub_2187D86D0()
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D1DE0](ObjectType);
}

void sub_2187D870C()
{
  type metadata accessor for NotificationSettings();
  sub_219BE3204();
  v0 = sub_219BE2E54();
  sub_219BE2F94();
}

uint64_t sub_2187D8800()
{
  v1 = v0[11];
  v2 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 8, v1);
  return (*(v2 + 24))(v1, v2);
}

void sub_2187D885C()
{
  v1 = objc_opt_self();
  v3[4] = sub_218F74F9C;
  v4 = v0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 1107296256;
  v3[2] = sub_218793E0C;
  v3[3] = &block_descriptor_77;
  v2 = _Block_copy(v3);

  [v1 scheduleLowPriorityBlock_];
  _Block_release(v2);
}

void sub_2187D892C()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v5[4] = sub_218BFF7FC;
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_218793E0C;
  v5[3] = &block_descriptor_38;
  v3 = _Block_copy(v5);
  v4 = v0;

  [v1 scheduleLowPriorityBlock_];
  _Block_release(v3);
}

uint64_t sub_2187D8A10()
{

  return swift_deallocObject();
}

uint64_t sub_2187D8A64()
{
  v13 = sub_219BDBD34();
  v0 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v2 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BDBD64();
  v3 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BDD0D4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2186C66AC();
  v10 = sub_219BF6F64();
  sub_219BF6214();
  sub_219BE5314();

  *v9 = 0x7374726F7073;
  v9[1] = 0xE600000000000000;
  (*(v7 + 104))(v9, *MEMORY[0x277CEAE70], v6);
  sub_219BDBD54();
  sub_219BDBD44();
  (*(v3 + 8))(v5, v12);
  sub_219BDBD24();
  sub_219BDCDA4();

  (*(v0 + 8))(v2, v13);
  (*(v7 + 8))(v9, v6);
  sub_219BDCDE4();
  sub_219BDD154();
}

Swift::Void __swiftcall NotificationAppExtensionCommunicator.sceneWillEnterForeground()()
{
  if (qword_280E8D870 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v5[4] = sub_2195381D8;
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_218793E0C;
  v5[3] = &block_descriptor_134;
  v3 = _Block_copy(v5);
  v4 = v0;

  [v1 scheduleLowPriorityBlock_];
  _Block_release(v3);
}

uint64_t sub_2187D8EA8()
{

  return swift_deallocObject();
}

void sub_2187D8EE0()
{
  type metadata accessor for NotificationSettings();
  sub_219BE3204();
  sub_2187D9028();
  v0 = sub_219BF66A4();
  sub_219BE2F94();
}

uint64_t sub_2187D8FCC()
{
  v1 = v0[6];
  v2 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v1);
  return (*(v2 + 24))(v1, v2);
}

unint64_t sub_2187D9028()
{
  result = qword_280E8E3B0;
  if (!qword_280E8E3B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E8E3B0);
  }

  return result;
}

void sub_2187D9074()
{
  type metadata accessor for NotificationSettings();
  sub_219BE3204();
  v0 = sub_219BE2E54();
  sub_219BE2F94();
}

uint64_t sub_2187D9150()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t sub_2187D91C4()
{
  v0 = sub_219BDBD34();
  v12 = *(v0 - 8);
  v13 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_219BDBD64();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BDD0D4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v10, *MEMORY[0x277CEAE78], v7);
  sub_219BDBD54();
  sub_219BDBD44();
  (*(v4 + 8))(v6, v3);
  sub_219BDBD24();
  sub_219BDCDA4();

  (*(v12 + 8))(v2, v13);
  return (*(v8 + 8))(v10, v7);
}

void sub_2187D9420()
{
  sub_2186DDC88(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15 - v2;
  v4 = sub_219BDBD34();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  [*(v0 + OBJC_IVAR____TtC7NewsUI227AudioAutoClosePlayerHandler_carSessionStatus) waitForSessionInitialization];
  v11 = OBJC_IVAR____TtC7NewsUI227AudioAutoClosePlayerHandler_autoCloseAt;
  swift_beginAccess();
  sub_2187D96F4(v0 + v11, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_2187108D4(v3, &qword_280EE9C40, MEMORY[0x277CC9578]);
  }

  else
  {
    (*(v5 + 32))(v10, v3, v4);
    sub_219BDBD24();
    sub_218707960(&qword_280EE9C90, MEMORY[0x277CC9578]);
    v12 = sub_219BF5334();
    v13 = *(v5 + 8);
    v13(v8, v4);
    v13(v10, v4);
    if ((v12 & 1) == 0)
    {
      sub_2186C66AC();
      v14 = sub_219BF6F74();
      sub_219BF6214();
      sub_219BE5314();

      sub_2193A8D80();
    }
  }
}

uint64_t sub_2187D96F4(uint64_t a1, uint64_t a2)
{
  sub_2186E7B4C(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2187D9788()
{
  sub_2187D97B0();
}

uint64_t sub_2187D97B0()
{
  v1 = v0;
  v2 = sub_219BDBD34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![*&v0[OBJC_IVAR____TtC7NewsUI215PuzzlePrewarmer_featureAvailability] puzzlesEnabled])
  {
LABEL_16:
    sub_21870F514(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }

  if (![*&v0[OBJC_IVAR____TtC7NewsUI215PuzzlePrewarmer_networkReachability] isNetworkReachable])
  {
    if (qword_280EE5F80 != -1)
    {
      swift_once();
    }

    v27 = sub_219BE5434();
    __swift_project_value_buffer(v27, qword_280F625E0);
    v28 = sub_219BE5414();
    v29 = sub_219BF6214();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_2186C1000, v28, v29, "PuzzlePrewarmer: Skipping puzzle prewarming as network is not reachable", v30, 2u);
      MEMORY[0x21CECF960](v30, -1, -1);
    }

    goto LABEL_16;
  }

  if (sub_2187DA050())
  {
    if (qword_280EE9900 != -1)
    {
      swift_once();
    }

    sub_219BDBD24();
    sub_219BDBC84();
    v7 = v6;
    (*(v3 + 8))(v5, v2);
    v38[1] = v7;
    type metadata accessor for PuzzlePrewarmer();
    sub_2187DA560(&unk_280EDA020, v8, type metadata accessor for PuzzlePrewarmer);
    sub_219BDCA54();
    if (qword_280EE5F80 != -1)
    {
      swift_once();
    }

    v9 = sub_219BE5434();
    __swift_project_value_buffer(v9, qword_280F625E0);
    v10 = sub_219BE5414();
    v11 = sub_219BF6214();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2186C1000, v10, v11, "PuzzlePrewarmer: Starting puzzles prewarming", v12, 2u);
      MEMORY[0x21CECF960](v12, -1, -1);
    }

    MEMORY[0x28223BE20](v13);
    v38[-2] = v1;
    sub_2186D6710(0, &qword_280E8E080);
    sub_219BE3204();
    *(swift_allocObject() + 16) = v1;
    v14 = v1;
    v15 = sub_219BE2E54();
    sub_219BE2F64();

    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_2193F7AE4;
    *(v17 + 24) = v16;
    v18 = v14;
    v19 = sub_219BE2E54();
    sub_219BE2F64();

    *(swift_allocObject() + 16) = v18;
    v20 = v18;
    v21 = sub_219BE2E54();
    sub_219BE2F64();

    *(swift_allocObject() + 16) = v20;
    v22 = v20;
    v23 = sub_219BE2E54();
    sub_219BE2F64();

    *(swift_allocObject() + 16) = v22;
    v24 = v22;
    v25 = sub_219BE2E54();
    sub_219BE2F64();

    v26 = sub_219BE2E54();
  }

  else
  {
    if (qword_280EE5F80 != -1)
    {
      swift_once();
    }

    v32 = sub_219BE5434();
    __swift_project_value_buffer(v32, qword_280F625E0);
    v33 = sub_219BE5414();
    v34 = sub_219BF6214();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_2186C1000, v33, v34, "PuzzlePrewarmer: Skipping puzzle prewarming as last prewarm time has not crossed the prewarmInterval, will just update stats", v35, 2u);
      MEMORY[0x21CECF960](v35, -1, -1);
    }

    MEMORY[0x28223BE20](v36);
    v38[-2] = v1;
    sub_219BE3204();
    v26 = sub_219BE2E54();
  }

  v37 = sub_219BE2FD4();

  return v37;
}

uint64_t sub_2187D9F0C()
{

  return swift_deallocObject();
}

uint64_t sub_2187D9F44()
{

  return swift_deallocObject();
}

uint64_t sub_2187D9FE0()
{
  v1 = *(v0 + 32);
  if (v1 == 2)
  {
    v2 = [objc_opt_self() sharedAccount];
    LOBYTE(v1) = [v2 isContentStoreFrontSupported];

    *(v0 + 32) = v1;
  }

  return v1 & 1;
}

BOOL sub_2187DA050()
{
  v1 = sub_219BDBD34();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280EE9900 != -1)
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
  sub_219BDC724();
  sub_219BDC7D4();

  v9 = v19;
  if (v19 <= 0.0)
  {
    v10 = [objc_msgSend(*(v0 + OBJC_IVAR____TtC7NewsUI215PuzzlePrewarmer_configurationManager) possiblyUnfetchedAppConfiguration)];
    swift_unknownObjectRelease();
    [v10 puzzlesPrewarmTimeInterval];
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
    _os_log_impl(&dword_2186C1000, v14, v15, "PuzzlePrewarmer: lastPrewarmTime=%f puzzlesPrewarmTimeInterval=%f timeDiff=%f", v16, 0x20u);
    MEMORY[0x21CECF960](v16, -1, -1);
  }

  return v9 < v12;
}

uint64_t sub_2187DA354()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v8[1] = 0;
  sub_2187DA508();
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_280EE9908 = result;
  return result;
}

void sub_2187DA508()
{
  if (!qword_280EE9070)
  {
    v0 = sub_219BDC9E4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE9070);
    }
  }
}

uint64_t sub_2187DA560(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2187DA5B4()
{
  v0 = sub_219BE5434();
  __swift_allocate_value_buffer(v0, qword_280F625E0);
  __swift_project_value_buffer(v0, qword_280F625E0);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_219BF5414();
  }

  return sub_219BE5424();
}

uint64_t sub_2187DA698(void *a1)
{
  sub_21870F514(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_219BE2F54();
}

void sub_2187DA760()
{
  v1 = *(v0 + 40);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v5 = *(v2 + 16);
  v3 = v2 + 16;
  v4 = v5;
  if (v5)
  {
    v6 = (v3 + 16 * v4);
    v8 = *v6;
    v7 = v6[1];

    os_unfair_lock_unlock((v1 + 24));
    if (v7)
    {
      sub_21939099C(v8, v7);
    }
  }

  else
  {
    os_unfair_lock_unlock((v1 + 24));
  }

  v9 = *(v0 + 48);
  os_unfair_lock_lock((v9 + 24));
  v10 = *(v9 + 16);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = v11 - 1;
    v13 = *(type metadata accessor for CookingKitExternalTracker.GroceryListRecipe() - 8);
    v14 = (v10 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v12);
    v16 = *v14;
    v15 = v14[1];

    os_unfair_lock_unlock((v9 + 24));
    if (v15)
    {
      sub_219391B34(v16, v15);
    }
  }

  else
  {

    os_unfair_lock_unlock((v9 + 24));
  }
}

uint64_t sub_2187DA8BC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_2187DA95C(a1, v4);
}

uint64_t sub_2187DA97C()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC7NewsUI215PuzzlePrewarmer_puzzleStatsService);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_2187DE9C8;

  return MEMORY[0x282192A48](v3, v2);
}

uint64_t sub_2187DAA44()
{
  v1 = v0;
  v2 = sub_219BE9C04();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_layoutCoordinator;
  swift_beginAccess();
  sub_2187DAC98(v1 + v6, v11, &qword_280E9DA68, &qword_280E9DA70, &protocol descriptor for FloatingTabBarLayoutCoordinatorType, sub_2186C6F70);
  if (v12)
  {
    sub_218718690(v11, v10);
    sub_2187453AC(v11, &qword_280E9DA68, &qword_280E9DA70, &protocol descriptor for FloatingTabBarLayoutCoordinatorType, sub_2186C6F70);
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    v7 = sub_2187DAD0C();
    sub_2187DAE88(v1);

    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    sub_2187453AC(v11, &qword_280E9DA68, &qword_280E9DA70, &protocol descriptor for FloatingTabBarLayoutCoordinatorType, sub_2186C6F70);
  }

  sub_219BEA314();

  sub_219BE2734();

  if (v11[0] == 1)
  {
    (*(v3 + 104))(v5, *MEMORY[0x277D6E830], v2);
    sub_219BEA2E4();
    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_2187DAC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

unint64_t sub_2187DAD0C()
{
  v1 = [v0 viewControllers];
  if (v1)
  {
    v2 = v1;
    sub_2186C6148(0, &qword_280E8E480);
    v3 = sub_219BF5924();

    v4 = [v0 selectedIndex];
    if (v3 >> 62)
    {
      if (v4 < sub_219BF7214())
      {
LABEL_4:
        result = [v0 selectedIndex];
        if ((v3 & 0xC000000000000001) == 0)
        {
          if ((result & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (result < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v6 = *(v3 + 8 * result + 32);
LABEL_8:
            v7 = v6;

            type metadata accessor for FloatingTabBarNavigationController();
            result = swift_dynamicCastClass();
            if (result)
            {
              return result;
            }

            return 0;
          }

          __break(1u);
          return result;
        }

        v6 = MEMORY[0x21CECE0F0](result, v3);
        goto LABEL_8;
      }
    }

    else if (v4 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }
  }

  result = [v0 transientViewController];
  if (result)
  {
    v8 = result;
    type metadata accessor for FloatingTabBarNavigationController();
    result = swift_dynamicCastClass();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_2187DAE88(uint64_t result)
{
  v2 = *(v1 + 32);
  if (!v2)
  {
    return result;
  }

  v3 = v1;
  v4 = result;
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_218F8B438;
  *(v7 + 24) = v6;
  v29 = sub_218807D50;
  v30 = v7;
  v25 = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = sub_218807CE4;
  v28 = &block_descriptor_80;
  v8 = _Block_copy(&v25);
  swift_retain_n();
  v9 = v4;

  [v5 performWithoutAnimation_];
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
    return result;
  }

  v10 = [v9 traitCollection];
  v11 = [v10 horizontalSizeClass];

  if (v11 == 2)
  {
    if (*(v2 + 17) == 1)
    {
      type metadata accessor for SearchHomeCoordinatingController();
      sub_219BF6584();
      v13 = v25;
      if (v25)
      {
        v14 = [objc_opt_self() sharedApplication];
        v17 = swift_allocObject();
        *(v17 + 16) = v13;
        v29 = sub_218F8B44C;
        v30 = v17;
        v25 = MEMORY[0x277D85DD0];
        v26 = 1107296256;
        v16 = &block_descriptor_19_0;
        goto LABEL_11;
      }
    }
  }

  else if (v11 == 1 && *(v2 + 17) == 1)
  {
    v12 = sub_218F8A9C4();
    if (v12)
    {
      v13 = v12;
      v14 = [objc_opt_self() sharedApplication];
      v15 = swift_allocObject();
      *(v15 + 16) = v13;
      v29 = sub_218F8B454;
      v30 = v15;
      v25 = MEMORY[0x277D85DD0];
      v26 = 1107296256;
      v16 = &block_descriptor_25_0;
LABEL_11:
      v27 = sub_218793E0C;
      v28 = v16;
      v18 = _Block_copy(&v25);
      v19 = v13;

      [v14 ts:v18 installCACommitCompletionBlock:{v25, v26}];
      _Block_release(v18);
    }
  }

  swift_beginAccess();
  v20 = *(v2 + 32);
  v21 = *(v20 + 16);
  if (v21)
  {

    v22 = v20 + 40;
    do
    {
      v23 = *(v22 - 8);

      v23(v24);

      v22 += 16;
      --v21;
    }

    while (v21);
  }

  else
  {
  }

  *(v3 + 32) = 0;
}

uint64_t sub_2187DB27C()
{

  return swift_deallocObject();
}

uint64_t sub_2187DB2CC()
{

  return swift_deallocObject();
}

uint64_t sub_2187DB308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_2187DB3D8()
{
  v1 = v0;
  v2 = sub_219BE9C04();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = [v0 traitCollection];
  v7 = [v6 horizontalSizeClass];

  if (v7 == 2)
  {

    sub_219BE2734();

    v8 = v14[15];
    v9 = [v1 _uip_sidebar];
    v10 = [v9 _isVisible];

    if (v8 == v10)
    {
      return;
    }

    v11 = [v1 _uip_sidebar];
    v12 = [v11 _isVisible];

    v14[14] = v12;

    sub_219BE2744();

    sub_219BE2734();

    v13 = v14[13];
    (*(v3 + 104))(v5, *MEMORY[0x277D6E838], v2);
    if (v13 == 1)
    {
      sub_219BEA2E4();
LABEL_9:
      (*(v3 + 8))(v5, v2);
      return;
    }

LABEL_8:
    sub_219BEA2D4();
    goto LABEL_9;
  }

  if (v7 == 1)
  {

    sub_219BE2734();

    if (v14[12] == 1)
    {
      v14[11] = 0;

      sub_219BE2744();

      (*(v3 + 104))(v5, *MEMORY[0x277D6E838], v2);
      goto LABEL_8;
    }
  }
}

uint64_t sub_2187DB690(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280ED9050);
  result = sub_219BE1E34();
  if (v6)
  {
    sub_2186CB1F0(&v5, v7);
    v2 = v8;
    v3 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v4 = (*(v3 + 8))(v2, v3);
    __swift_destroy_boxed_opaque_existential_1(v7);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2187DB75C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_218718690(a1, v27);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE33B0);
  result = sub_219BE1E34();
  if (!v26)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EBDDB8);
  result = sub_219BE1E34();
  if (!v24)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EAFF10);
  result = sub_219BE1E34();
  if (v22)
  {
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
    MEMORY[0x28223BE20](v6);
    v8 = (&v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8);
    v10 = *v8;
    v11 = type metadata accessor for TodayFeedMiniMastheadModelProvider();
    v20[3] = v11;
    v20[4] = &off_282A4B760;
    v20[0] = v10;
    v12 = type metadata accessor for TodayModule();
    v13 = swift_allocObject();
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v20, v11);
    MEMORY[0x28223BE20](v14);
    v16 = (&v20[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16);
    v18 = *v16;
    v13[21] = v11;
    v13[22] = &off_282A4B760;
    v13[18] = v18;
    sub_2186CB1F0(v27, (v13 + 2));
    v13[7] = v5;
    sub_2186CB1F0(&v25, (v13 + 8));
    sub_2186CB1F0(&v23, (v13 + 13));
    __swift_destroy_boxed_opaque_existential_1(v20);
    result = __swift_destroy_boxed_opaque_existential_1(v21);
    a2[3] = v12;
    a2[4] = &protocol witness table for TodayModule;
    *a2 = v13;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2187DBAA4()
{
  v0 = sub_219BE2DF4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TodayDebugPersonalizationGroupLayoutKeyProvider();
  sub_219BE2904();
  v4 = *MEMORY[0x277D6CF00];
  v5 = *(v1 + 104);
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6 = *(v1 + 8);
  v6(v3, v0);
  type metadata accessor for TodayViewController();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C709C(0, qword_280EB6288);
  sub_219BE2914();

  sub_2186C709C(0, qword_280EA1500);
  sub_219BE2914();
  sub_219BE19D4();

  sub_2186C709C(0, &qword_280ED8F88);
  sub_219BE2914();

  sub_2186C709C(0, qword_280ED8F90);
  sub_219BE2914();
  sub_219BE19D4();

  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  sub_2186C709C(0, &qword_280EC9538);
  sub_219BE2914();

  sub_2186C709C(0, qword_280ECFB20);
  sub_219BE2914();

  sub_2187DD2B8(0, &unk_280ED9058, type metadata accessor for TodayBlueprintModifierFactory, &off_282A42208, type metadata accessor for TodayInteractor);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C709C(0, &unk_280EA8DA0);
  sub_219BE2914();

  sub_2186C709C(0, &qword_280EE6358);
  sub_219BE2914();
  sub_219BE4164();
  sub_219BE19C4();

  sub_2186C709C(0, &unk_280EE63D0);
  sub_219BE2914();
  sub_219BE3FE4();
  sub_219BE19C4();

  sub_2186C709C(0, &unk_280EE6388);
  sub_219BE2914();

  sub_2186C709C(0, qword_280ECC710);
  sub_219BE2914();

  sub_2186C709C(0, qword_280ED73A8);
  sub_219BE2914();

  sub_2186C709C(0, &qword_280E91010);
  sub_219BE2914();

  sub_2186C709C(0, qword_280EBDDB8);
  sub_219BE2914();

  sub_2186C709C(0, qword_280EAFF10);
  sub_219BE2914();

  sub_2186C709C(0, &unk_280E94048);
  sub_219BE2914();

  sub_2186C709C(0, qword_280E96030);
  sub_219BE2914();

  type metadata accessor for TodayModelFactory();
  sub_219BE2904();

  sub_2187DD900();
  sub_219BE2904();

  type metadata accessor for TodayBlueprintModifierFactory();
  sub_219BE2904();

  sub_2186C709C(0, qword_280EC2CE0);
  sub_219BE2914();

  sub_2187DDA00();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2187DEFC8();
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE9C54();
  sub_219BE2904();

  sub_219BEA1E4();
  sub_219BE2904();

  sub_2187DDABC();
  sub_219BE2904();

  sub_2187DF0F8();
  sub_219BE2904();

  sub_2187DDE2C(0);
  sub_219BE2904();

  type metadata accessor for TodayBlueprintLayoutBuilder();
  sub_219BE2904();

  sub_2187DF260(0, &qword_280EE4128, sub_2187DDE2C, sub_2187DF22C, MEMORY[0x277D6E7C8]);
  sub_219BE2904();

  sub_2187DF2E0();
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE8E74();
  sub_219BE2904();

  sub_2187DDB94();
  sub_219BE2904();

  sub_2186C709C(0, &qword_280EE3DE0);
  sub_219BE2914();
  sub_219BE95A4();
  sub_219BE19C4();

  sub_2187DD2B8(0, &qword_280EE44C0, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D6E608]);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2187DDE4C();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2187DECE4();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2187DEE6C();
  sub_219BE2904();

  type metadata accessor for TodayBlueprintViewCellProvider();
  sub_219BE2904();
  sub_219BE19D4();

  type metadata accessor for TodayBlueprintViewSupplementaryViewProvider();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2187DF3BC();
  sub_219BE2904();

  sub_2187DF260(0, &qword_280EE4678, sub_2187DD900, sub_2187DEF94, MEMORY[0x277D6E388]);
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE70E4();
  sub_219BE2904();

  sub_219BE8A54();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2187DF47C();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C709C(0, &unk_280EE3C80);
  sub_219BE2914();

  sub_219BE8984();
  sub_219BE2904();

  sub_219BE7A84();
  sub_219BE2904();

  sub_2187DF260(0, &unk_280EE48B8, sub_2187DDB94, sub_2187DEF60, MEMORY[0x277D6E068]);
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE9534();
  sub_219BE2904();

  sub_219BE9564();
  sub_219BE2904();

  sub_2187DF538();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C709C(0, &qword_280E901A0);
  sub_219BE2914();

  sub_2186C709C(0, &qword_280EE4510);
  sub_219BE2914();
  sub_219BE19D4();

  sub_2186C709C(0, &unk_280EE89B0);
  sub_219BE2914();

  sub_2187DF5E0(0, &qword_280EE8A08, MEMORY[0x277D302B0]);
  sub_219BE2904();

  sub_2187DF740();
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BEF314();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2187DF874(0, &qword_280E90138, MEMORY[0x277D33ED8]);
  sub_219BE2904();

  sub_2187DF968();
  sub_219BE2904();
  sub_219BE19D4();

  type metadata accessor for TodayBlueprintCellPrefetcher();
  sub_219BE2904();

  sub_2186C709C(0, qword_280EB8830);
  sub_219BE2914();

  type metadata accessor for DefaultHeadlineExposureTracker();
  sub_219BE2904();

  type metadata accessor for SportsHeadlineExposureTracker();
  sub_219BE2904();

  sub_2187DFB08(0, &qword_280EE8CA8, sub_2187DFC08, MEMORY[0x277D2FF78]);
  sub_219BE2904();

  sub_2187DF5E0(0, &qword_280EE8A20, MEMORY[0x277D30288]);
  sub_219BE2904();

  type metadata accessor for TodayOfflineFeedPrimer();
  sub_219BE2904();
}

void sub_2187DD2B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_2187DD360()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_2187DD4F0(319, &qword_280ED2200, type metadata accessor for TodayPrewarmResult, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

void sub_2187DD4F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for TodayPrewarmResult()
{
  result = qword_280ED2208;
  if (!qword_280ED2208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2187DD5A0()
{
  result = type metadata accessor for TodayExpandResult();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for TodayExpandResult()
{
  result = qword_280ED4698;
  if (!qword_280ED4698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2187DD658()
{
  if (!qword_280E91610)
  {
    type metadata accessor for TodayFeedServiceConfig();
    sub_2186DFB00(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
    v0 = sub_219BEF3F4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E91610);
    }
  }
}

void sub_2187DD6EC()
{
  sub_2187DD658();
  if (v0 <= 0x3F)
  {
    sub_2187DD810();
    if (v1 <= 0x3F)
    {
      sub_2187DD878(319, &qword_280EE32B8, MEMORY[0x277D2D6D8], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_2187DD878(319, &unk_280EE56F0, MEMORY[0x277D6D878], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2187DD810()
{
  if (!qword_280E8FBB0)
  {
    sub_219BE5BA4();
    v0 = sub_219BF52A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8FBB0);
    }
  }
}

void sub_2187DD878(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2187DD900()
{
  if (!qword_280EE5520)
  {
    type metadata accessor for TodayModel(255);
    sub_2186EB3E8();
    sub_218985F8C(&qword_280EDF9E0, type metadata accessor for TodayModel);
    v0 = sub_219BE6FA4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE5520);
    }
  }
}

uint64_t sub_2187DD9B8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_2187DDA00()
{
  if (!qword_280EE55E8)
  {
    sub_2187DD900();
    sub_2187DDABC();
    sub_2187DEF94();
    sub_2186EFB7C(&unk_280EE52E8, sub_2187DDABC);
    v0 = sub_219BE6F54();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE55E8);
    }
  }
}

void sub_2187DDABC()
{
  if (!qword_280EE52E0)
  {
    type metadata accessor for TodayModel(255);
    sub_2187DDB94();
    sub_2186EB3E8();
    sub_2186EFB7C(&qword_280EDF9E0, type metadata accessor for TodayModel);
    sub_2187DEF60();
    v0 = sub_219BE72E4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE52E0);
    }
  }
}

void sub_2187DDB94()
{
  if (!qword_280EE4F30)
  {
    sub_2186C6148(255, &qword_280E8E4C0);
    sub_2187DDE4C();
    sub_2187DECE4();
    sub_2187DEE6C();
    type metadata accessor for TodayViewController();
    sub_2187DEAC4(&qword_280EE3F18, 255, sub_2187DDE4C);
    sub_2187DEAC4(&unk_280EE43B0, 255, sub_2187DECE4);
    sub_2187DEAC4(&qword_280EE3DA8, 255, sub_2187DEE6C);
    v0 = sub_219BE7BE4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE4F30);
    }
  }
}

void sub_2187DDD38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for TodayLayoutSectionDescriptor(255);
    v8[1] = type metadata accessor for TodayLayoutModel();
    v8[2] = sub_2187DE8F0(qword_280EB1A60, type metadata accessor for TodayLayoutSectionDescriptor);
    v8[3] = sub_2187DE8F0(&qword_280ED7480, type metadata accessor for TodayLayoutModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2187DDE4C()
{
  if (!qword_280EE3F10)
  {
    sub_2187DD900();
    sub_2187DDE2C(255);
    type metadata accessor for TodayBlueprintViewCellProvider();
    type metadata accessor for TodayBlueprintViewSupplementaryViewProvider();
    sub_2187DEAC4(&qword_280EE5530, 255, sub_2187DD900);
    sub_2187DEAC4(&qword_280EE4C10, 255, sub_2187DDE2C);
    sub_2187DEAC4(qword_280EAA4C8, 255, type metadata accessor for TodayBlueprintViewCellProvider);
    sub_2187DEAC4(qword_280EE2350, 255, type metadata accessor for TodayBlueprintViewSupplementaryViewProvider);
    sub_2187DEAC4(&unk_280ED7470, 255, type metadata accessor for TodayLayoutModel);
    v0 = sub_219BE9B94();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE3F10);
    }
  }
}

uint64_t sub_2187DE050()
{
  result = type metadata accessor for TodayLayoutSectionDescriptor.LayoutData(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2187DE0C4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF5B14();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2187DE118()
{
  sub_2187DE0C4(319, &qword_280E8F040, type metadata accessor for TodayLayoutSectionDescriptor.Header);
  if (v0 <= 0x3F)
  {
    sub_2187DE0C4(319, &qword_280E8F048, type metadata accessor for TodayLayoutSectionDescriptor.Footer);
    if (v1 <= 0x3F)
    {
      sub_2187DE0C4(319, &qword_280E8F050, type metadata accessor for TodayLayoutSectionDescriptor.Decoration);
      if (v2 <= 0x3F)
      {
        sub_219BEE024();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2187DE258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_219BF00D4();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2187DE2F4(uint64_t a1)
{
  sub_2187DE3C8();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v3 = type metadata accessor for MagazineFeedGroupTitleViewLayoutAttributes();
    if (v5 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      v3 = 0;
      *(*(a1 - 8) + 84) = v7;
    }
  }

  return v3;
}

void sub_2187DE3C8()
{
  if (!qword_280EA8E70)
  {
    type metadata accessor for MagazineFeedGroupTitleViewLayoutAttributes();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280EA8E70);
    }
  }
}

uint64_t type metadata accessor for MagazineFeedGroupTitleViewLayoutAttributes()
{
  result = qword_280E94CC0;
  if (!qword_280E94CC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2187DE480()
{
  type metadata accessor for CGRect(319);
  if (v0 <= 0x3F)
  {
    sub_2186C6148(319, &qword_280E8DA80);
    if (v1 <= 0x3F)
    {
      sub_2186C6148(319, &unk_280E8E330);
      if (v2 <= 0x3F)
      {
        sub_2187DE578();
        if (v3 <= 0x3F)
        {
          sub_219BDCAF4();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2187DE578()
{
  if (!qword_280E930C8[0])
  {
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, qword_280E930C8);
    }
  }
}

void sub_2187DE620()
{
  sub_2187DE694();
  if (v0 <= 0x3F)
  {
    sub_2187DE708();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2187DE694()
{
  if (!qword_280EE4CE0)
  {
    sub_219BE8434();
    sub_219BE9CC4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280EE4CE0);
    }
  }
}

void sub_2187DE708()
{
  if (!qword_280E8FD08)
  {
    v0 = sub_219BF4E64();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8FD08);
    }
  }
}

uint64_t sub_2187DE770(uint64_t a1)
{
  result = sub_219BEE914();
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for TodayLayoutModel()
{
  result = qword_280ED7440;
  if (!qword_280ED7440)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2187DE860(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2187DE8A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2187DE8F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2187DE938(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2187DE9C8()
{

  return MEMORY[0x2822009F8](sub_2187DEB0C, 0, 0);
}

uint64_t sub_2187DEAC4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2187DEB0C()
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
    _os_log_impl(&dword_2186C1000, v2, v3, "PuzzlePrewarmer: Finished updating puzzle stats", v4, 2u);
    MEMORY[0x21CECF960](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2187DEC58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2187DECA0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TodayLayoutModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2187DECE4()
{
  if (!qword_280EE43A0)
  {
    sub_2187DD900();
    sub_2187DDE2C(255);
    type metadata accessor for TodayViewController();
    sub_2187DEAC4(&qword_280EE5530, 255, sub_2187DD900);
    sub_2187DEAC4(&qword_280EE4C10, 255, sub_2187DDE2C);
    sub_2187DEAC4(&qword_280ECFA78, v0, type metadata accessor for TodayViewController);
    sub_2187DEAC4(&unk_280ED7470, 255, type metadata accessor for TodayLayoutModel);
    v1 = sub_219BE9794();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE43A0);
    }
  }
}

void sub_2187DEE6C()
{
  if (!qword_280EE3DA0)
  {
    sub_2187DD900();
    sub_2187DDE2C(255);
    sub_2187DEAC4(&qword_280EE5530, 255, sub_2187DD900);
    sub_2187DEAC4(&qword_280EE4C10, 255, sub_2187DDE2C);
    v0 = sub_219BE9F34();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE3DA0);
    }
  }
}

void sub_2187DEFC8()
{
  if (!qword_280EE3BA0)
  {
    sub_2187DDE2C(255);
    type metadata accessor for TodayBlueprintLayoutBuilder();
    sub_2187DF0F8();
    sub_2187DF22C();
    sub_2186EFB7C(&qword_280EB6358, type metadata accessor for TodayBlueprintLayoutBuilder);
    sub_2186EFB7C(&qword_280EE41E0, sub_2187DF0F8);
    v0 = sub_219BEA4A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE3BA0);
    }
  }
}

void sub_2187DF0F8()
{
  if (!qword_280EE41D8)
  {
    type metadata accessor for TodayLayoutSectionDescriptor(255);
    type metadata accessor for TodayLayoutModel();
    sub_2186EFB7C(&unk_280EB1A50, type metadata accessor for TodayLayoutSectionDescriptor);
    sub_2186EFB7C(&unk_280ED7470, type metadata accessor for TodayLayoutModel);
    v0 = sub_219BE9974();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE41D8);
    }
  }
}

void sub_2187DF260(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_2187DF2E0()
{
  if (!qword_280EE4A90)
  {
    sub_2187DD900();
    sub_2187DDB94();
    type metadata accessor for TodayViewController();
    sub_2187DEF94();
    sub_2187DEF60();
    sub_2186EFB7C(&qword_280ECFA78, type metadata accessor for TodayViewController);
    v0 = sub_219BE8774();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE4A90);
    }
  }
}

void sub_2187DF3BC()
{
  if (!qword_280E91918)
  {
    type metadata accessor for TodayFeedServiceConfig();
    sub_2187DD900();
    sub_2187DF448();
    sub_2187DEF94();
    v0 = sub_219BEEB44();
    if (!v1)
    {
      atomic_store(v0, &qword_280E91918);
    }
  }
}

void sub_2187DF47C()
{
  if (!qword_280EE4090)
  {
    sub_2187DDB94();
    sub_2187DD900();
    sub_2187DEF60();
    sub_2186EFB7C(&qword_280EE5538, sub_2187DD900);
    v0 = sub_219BE9AD4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE4090);
    }
  }
}

void sub_2187DF538()
{
  if (!qword_280E91BC0)
  {
    type metadata accessor for TodayFeedServiceConfig();
    sub_2187DF448();
    sub_2186EFB7C(&qword_280EDB778, type metadata accessor for TodayFeedGroup);
    v0 = sub_219BEE514();
    if (!v1)
    {
      atomic_store(v0, &qword_280E91BC0);
    }
  }
}

void sub_2187DF5E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TodaySectionDescriptor;
    v8[1] = type metadata accessor for TodayModel(255);
    v8[2] = type metadata accessor for TodayLayoutSectionDescriptor(255);
    v8[3] = type metadata accessor for TodayLayoutModel();
    v8[4] = sub_2186EB3E8();
    v8[5] = sub_2186EFB7C(&qword_280EDF9E0, type metadata accessor for TodayModel);
    v8[6] = sub_2186EFB7C(qword_280EB1A60, type metadata accessor for TodayLayoutSectionDescriptor);
    v8[7] = sub_2186EFB7C(&qword_280ED7480, type metadata accessor for TodayLayoutModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2187DF740()
{
  if (!qword_280E91740)
  {
    sub_2187DD900();
    sub_2187DDABC();
    sub_2187DEF94();
    sub_2186EFB7C(&unk_280EE52E8, sub_2187DDABC);
    sub_2186EFB7C(&qword_280EDFA18, type metadata accessor for TodayModel);
    sub_2186EFB7C(&unk_280EDFA20, type metadata accessor for TodayModel);
    v0 = sub_219BEEF94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E91740);
    }
  }
}

void sub_2187DF874(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for TodayLayoutSectionDescriptor(255);
    v8[1] = type metadata accessor for TodayLayoutModel();
    v8[2] = sub_2186EFB7C(qword_280EB1A60, type metadata accessor for TodayLayoutSectionDescriptor);
    v8[3] = sub_2186EFB7C(&qword_280ED7480, type metadata accessor for TodayLayoutModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2187DF968()
{
  if (!qword_280EE5040)
  {
    sub_2187DDE2C(255);
    type metadata accessor for TodayBlueprintCellPrefetcher();
    sub_2187DF22C();
    sub_2186EFB7C(qword_280EB20B8, type metadata accessor for TodayBlueprintCellPrefetcher);
    sub_2186EFB7C(&unk_280ED7490, type metadata accessor for TodayLayoutModel);
    sub_2186EFB7C(&qword_280ED7468, type metadata accessor for TodayLayoutModel);
    v0 = sub_219BE7624();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE5040);
    }
  }
}

void sub_2187DFB08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, void *))
{
  if (!*a2)
  {
    sub_2187DDE2C(255);
    v11[0] = v8;
    v11[1] = sub_2187DF22C();
    v11[2] = a3();
    v11[3] = sub_2186EFB7C(&unk_280ED7490, type metadata accessor for TodayLayoutModel);
    v11[4] = sub_2186EFB7C(&unk_280ED7458, type metadata accessor for TodayLayoutModel);
    v9 = a4(a1, v11);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2187DFC60@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187E00C0(0, &unk_280E906D0, sub_2186FB728, &type metadata for TodayOfflineModel, MEMORY[0x277D33538]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E96030);
  result = sub_219BE1E34();
  if (!v35)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DD80);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = result;
  v28 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6480);
  result = sub_219BE1E34();
  v9 = v32;
  if (!v32)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v26 = v6;
  v27 = a2;
  v25 = v33;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E93EA0);
  result = sub_219BE1E34();
  if (v31)
  {
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
    MEMORY[0x28223BE20](v10);
    v12 = (&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12);
    v14 = *v12;
    v15 = type metadata accessor for MastheadWelcomeMessageVisibilityProvider();
    v29[3] = v15;
    v29[4] = &off_282A8AB30;
    v29[0] = v14;
    v16 = type metadata accessor for TodayFeedMastheadModelProvider();
    v17 = swift_allocObject();
    v18 = __swift_mutable_project_boxed_opaque_existential_1(v29, v15);
    MEMORY[0x28223BE20](v18);
    v20 = (&v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v21 + 16))(v20);
    v22 = *v20;
    v17[16] = v15;
    v17[17] = &off_282A8AB30;
    v17[13] = v22;
    v23 = v26;
    v17[2] = v5;
    v17[3] = v23;
    v17[4] = v28;
    sub_2186CB1F0(&v34, (v17 + 5));
    v17[10] = v8;
    v17[11] = v9;
    v17[12] = v25;
    __swift_destroy_boxed_opaque_existential_1(v29);
    result = __swift_destroy_boxed_opaque_existential_1(v30);
    v24 = v27;
    v27[3] = v16;
    v24[4] = &off_282A664F8;
    *v24 = v17;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_2187E00C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_2187E0150@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6480);
  result = sub_219BE1E34();
  v6 = v23;
  if (!v23)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE6330);
  result = sub_219BE1E34();
  if (!v22)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v14 = v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E91730);
  result = sub_219BE1E34();
  v7 = v19;
  if (!v19)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE62C0);
  result = sub_219BE1E34();
  v8 = v17;
  if (!v17)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90160);
  result = sub_219BE1E34();
  if (!v16)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20);
  result = sub_219BE1E24();
  if (result)
  {
    v10 = result;
    v11 = type metadata accessor for MastheadPaywallConfigurationProvider();
    v12 = swift_allocObject();
    v12[2] = v5;
    v12[3] = v6;
    v12[4] = v14;
    sub_2186CB1F0(&v21, (v12 + 5));
    v12[10] = v7;
    v12[11] = v13;
    v12[12] = v8;
    v12[13] = v9;
    result = sub_2186CB1F0(&v15, (v12 + 14));
    v12[19] = v10;
    a2[3] = v11;
    a2[4] = &off_282A8E4A8;
    *a2 = v12;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_2187E0450@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90160);
  result = sub_219BE1E34();
  if (!v13)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FD10);
  result = sub_219BE1E34();
  if (v11)
  {
    v8 = type metadata accessor for MastheadWelcomeMessageVisibilityProvider();
    v9 = swift_allocObject();
    v9[2] = v5;
    sub_2186CB1F0(&v12, (v9 + 3));
    v9[8] = v6;
    v9[9] = v7;
    result = sub_2186CB1F0(&v10, (v9 + 10));
    a2[3] = v8;
    a2[4] = &off_282A8AB30;
    *a2 = v9;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_2187E069C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187E00C0(0, &unk_280E906D0, sub_2186FB728, &type metadata for TodayOfflineModel, MEMORY[0x277D33538]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = result;
  v22 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E93EA0);
  result = sub_219BE1E34();
  if (v25)
  {
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
    MEMORY[0x28223BE20](v8);
    v10 = (&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10);
    v12 = *v10;
    v13 = type metadata accessor for MastheadWelcomeMessageVisibilityProvider();
    v23[3] = v13;
    v23[4] = &off_282A8AB30;
    v23[0] = v12;
    v14 = type metadata accessor for TodayFeedMiniMastheadModelProvider();
    v15 = swift_allocObject();
    v16 = __swift_mutable_project_boxed_opaque_existential_1(v23, v13);
    MEMORY[0x28223BE20](v16);
    v18 = (&v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18);
    v20 = *v18;
    v15[8] = v13;
    v15[9] = &off_282A8AB30;
    v15[2] = v22;
    v15[3] = v6;
    v15[4] = v7;
    v15[5] = v20;
    __swift_destroy_boxed_opaque_existential_1(v23);
    result = __swift_destroy_boxed_opaque_existential_1(v24);
    a2[3] = v14;
    a2[4] = &off_282A4B760;
    *a2 = v15;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void __swiftcall TodayModule.createViewController()(UIViewController *__return_ptr retstr)
{
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v2 = qword_280F616D8;
  LOBYTE(v21[0]) = 0;
  sub_2187E0FB8();
  swift_allocObject();
  v3 = v2;
  v4 = sub_219BE1E84();
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  type metadata accessor for TodayViewController();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v4;

  v6 = sub_219BE1E04();

  swift_unownedRelease();
  if (!v6)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (sub_219BED0C4())
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
    sub_2186C709C(0, &unk_280EE4500);
    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    *(v7 + 24) = v4;

    sub_219BE1E14();
  }

  v21[0] = v18;
  v21[1] = v19;
  v22 = v20;
  if (*(&v19 + 1))
  {
    sub_2187E13C0(&unk_280ECFA88, type metadata accessor for TodayViewController);
    __swift_mutable_project_boxed_opaque_existential_1(v21, *(&v19 + 1));
    v8 = v6;
    sub_219BE9404();
  }

  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  sub_2186C709C(0, &qword_280EE05D8);
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  *(v9 + 24) = v4;

  sub_219BE1E14();

  swift_unownedRelease();
  if (!v18)
  {
    goto LABEL_20;
  }

  v10 = *(&v18 + 1);
  *(&v19 + 1) = swift_getObjectType();
  v20 = *(*(&v18 + 1) + 16);
  sub_218803268(v21, v17);
  sub_218803390();
  v12 = objc_allocWithZone(v11);
  v13 = v6;
  swift_unknownObjectRetain();
  v14 = sub_219BE8344();
  sub_2187E13C0(&qword_280ECFA80, type metadata accessor for TodayViewController);
  v15 = v13;
  sub_219BE8354();
  *&v15[OBJC_IVAR____TtC7NewsUI219TodayViewController_mastheadViewProviderDelegate + 8] = *(v10 + 8);
  swift_unknownObjectWeakAssign();
  sub_218803268(v21, &v18);
  if (*(&v19 + 1))
  {
    sub_2186C709C(0, &unk_280EE4500);
    sub_2186C709C(0, qword_280ECE3A8);
    if (swift_dynamicCast())
    {
      v16 = v17[1];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    sub_2188033F4(&v18, sub_2188032CC);
    v16 = 0;
  }

  *&v15[OBJC_IVAR____TtC7NewsUI219TodayViewController_miniMastheadViewProviderDelegate + 8] = v16;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  if (sub_219BED0C4())
  {
    swift_unknownObjectRelease();
  }

  else
  {
    sub_219BE9D54();
    [objc_allocWithZone(sub_219BE79B4()) initWithRootViewController_];
    sub_219BE9CE4();
    swift_unknownObjectRelease();

    v15 = v14;
  }

  sub_2188033F4(v21, sub_2188032CC);
}

void sub_2187E0FB8()
{
  if (!qword_280EE7CD0)
  {
    sub_2187E1040();
    v0 = sub_219BE1EC4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE7CD0);
    }
  }
}

unint64_t sub_2187E1040()
{
  result = qword_280E91D90;
  if (!qword_280E91D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E91D90);
  }

  return result;
}

uint64_t sub_2187E1094(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_unownedRetainStrong();
  __swift_project_boxed_opaque_existential_1((a2 + 64), *(a2 + 88));
  sub_219BEC134();
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  if (qword_280EE34E8 != -1)
  {
    swift_once();
  }

  v4 = sub_219BEBC84();
  __swift_project_value_buffer(v4, qword_280F62398);
  sub_2187E13C0(&qword_280EE34B8, MEMORY[0x277D2D120]);
  sub_219BEC144();

  sub_2186C709C(0, &qword_280EE33B0);
  sub_219BE1BA4();
  __swift_destroy_boxed_opaque_existential_1(v6);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_unownedRetainStrong();
  sub_2187E1498();

  sub_219BDD274();
  sub_219BE1B94();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  return sub_219BE1B94();
}

uint64_t sub_2187E12EC()
{
  v0 = sub_219BEBC84();
  __swift_allocate_value_buffer(v0, qword_280F62398);
  __swift_project_value_buffer(v0, qword_280F62398);
  sub_21871D24C();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_219C09BA0;
  *(v1 + 32) = sub_219BEC104();
  *(v1 + 40) = v2;
  return sub_219BEBC44();
}

uint64_t sub_2187E13C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2187E1408(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2187E1450(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2187E1498()
{
  v0 = sub_219BDEED4();
  v1 = *(v0 - 8);
  v23 = v0;
  v24 = v1;
  MEMORY[0x28223BE20](v0);
  v22 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_219BE14C4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE14A4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BE15B4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v14, *MEMORY[0x277D2F450], v11);
  v15 = sub_219BDD0F4();
  (*(v12 + 8))(v14, v11);
  v16 = *MEMORY[0x277D2F310];
  v17 = *(v4 + 104);
  v17(v6, v16, v3);
  sub_219BE1484();
  sub_2187E13C0(&qword_280EE8010, MEMORY[0x277D2F280]);
  sub_219BDD1F4();
  (*(v8 + 8))(v10, v7);
  v17(v6, v16, v3);
  v18 = v22;
  sub_219BDEEC4();
  sub_2187E13C0(&unk_280EE8930, MEMORY[0x277D2D750]);
  v19 = v23;
  sub_219BDD1F4();
  (*(v24 + 8))(v18, v19);
  return v15;
}

char *sub_2187E1880(void *a1)
{
  v2 = sub_219BE2864();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187E2B98(0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v126 = &v93 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280ED8F88);
  result = sub_219BE1E34();
  if (!v153)
  {
    __break(1u);
    goto LABEL_21;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EC9538);
  result = sub_219BE1E34();
  v12 = v150;
  if (!v150)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v116 = v151;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187DF2E0();
  result = sub_219BE1E24();
  v117 = result;
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187DF47C();
  result = sub_219BE1E24();
  v115 = result;
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187DDE2C(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v122 = v9;
  v123 = result;
  v124 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FD80);
  result = sub_219BE1E34();
  if (!v148)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  sub_219BF4FF4();
  swift_allocObject();
  v14 = sub_219BF4FE4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE7A84();
  result = sub_219BE1E24();
  v114 = result;
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187E0FB8();
  result = sub_219BE1E24();
  v121 = result;
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v120 = v14;
  v113 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (!v142)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v15 = result;
  v148 = v13;
  v149 = sub_2186EFB7C(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
  v147[0] = v15;
  sub_219BE6AE4();
  swift_allocObject();
  v16 = sub_219BE6AC4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BEDE24();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EA8DA0);
  result = sub_219BE1E34();
  v125 = v145;
  if (!v145)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v112 = v146;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v18 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE5974();
  result = sub_219BE1E24();
  v111 = result;
  if (!result)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EBFE20);
  result = sub_219BE1E34();
  if (!v148)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EAF980);
  result = sub_219BE1E34();
  v19 = v143;
  if (!v143)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v108 = v18;
  v109 = v3;
  v118 = v16;
  v119 = v17;
  v110 = v2;
  v20 = v144;
  __swift_project_boxed_opaque_existential_1(&v142, v143);
  v107 = (*(v20 + 16))(v19, v20);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280ED4330);
  result = sub_219BE1E34();
  if (v141)
  {
    v21 = __swift_mutable_project_boxed_opaque_existential_1(v152, v153);
    v106 = &v93;
    MEMORY[0x28223BE20](v21);
    v23 = (&v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v24 + 16))(v23);
    v25 = __swift_mutable_project_boxed_opaque_existential_1(v147, v148);
    v105 = &v93;
    MEMORY[0x28223BE20](v25);
    v27 = (&v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v28 + 16))(v27);
    v29 = __swift_mutable_project_boxed_opaque_existential_1(v140, v141);
    v104 = &v93;
    MEMORY[0x28223BE20](v29);
    v31 = (&v93 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v32 + 16))(v31);
    v33 = *v23;
    v34 = *v27;
    v35 = *v31;
    v36 = type metadata accessor for TodayStyler();
    v139 = &off_282A90018;
    v138 = v36;
    v137[0] = v33;
    v99 = sub_2186EFB7C(&qword_280EE4098, sub_2187DF47C);
    v37 = type metadata accessor for TipModelFactory();
    v135 = v37;
    v136 = &off_282A78828;
    v134[0] = v34;
    v38 = type metadata accessor for WelcomeStatus();
    v132 = v38;
    v133 = &off_282A795B8;
    v131[0] = v35;
    v100 = type metadata accessor for TodayViewController();
    v39 = objc_allocWithZone(v100);
    v40 = __swift_mutable_project_boxed_opaque_existential_1(v137, v138);
    v103 = &v93;
    MEMORY[0x28223BE20](v40);
    v42 = (&v93 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v43 + 16))(v42);
    v44 = __swift_mutable_project_boxed_opaque_existential_1(v134, v135);
    v102 = &v93;
    MEMORY[0x28223BE20](v44);
    v46 = (&v93 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v47 + 16))(v46);
    v48 = __swift_mutable_project_boxed_opaque_existential_1(v131, v132);
    v101 = &v93;
    MEMORY[0x28223BE20](v48);
    v50 = (&v93 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v51 + 16))(v50);
    v52 = *v42;
    v53 = *v46;
    v54 = *v50;
    v130[3] = v36;
    v130[4] = &off_282A90018;
    v130[0] = v52;
    v129[3] = v37;
    v129[4] = &off_282A78828;
    v128[4] = &off_282A795B8;
    v129[0] = v53;
    v128[3] = v38;
    v128[0] = v54;
    v55 = OBJC_IVAR____TtC7NewsUI219TodayViewController__lastImpression;
    v93 = OBJC_IVAR____TtC7NewsUI219TodayViewController__lastImpression;
    sub_2187E2B78(0);
    v57 = v56;
    v58 = *(v56 - 8);
    v94 = *(v58 + 56);
    v95 = v58 + 56;
    v59 = v126;
    v94(v126, 1, 1, v56);
    v98 = sub_2187E2B98;
    sub_2187F68B4(v59, v122, sub_2187E2B98);
    sub_2187E738C(0, &unk_280EE7410, sub_2187E2B98, MEMORY[0x277D6CCD0]);
    v96 = v60;
    swift_allocObject();
    v61 = sub_219BE2724();
    v97 = sub_2187E2B98;
    sub_2187F697C(v59, sub_2187E2B98);
    *&v39[v55] = v61;
    v62 = OBJC_IVAR____TtC7NewsUI219TodayViewController_visibilityEventManager;
    sub_2187E00C0(0, &qword_280EE7E00, sub_2187F6A38, &type metadata for TodayViewController.TodayVisibilityEvent, MEMORY[0x277D6CAA0]);
    swift_allocObject();
    *&v39[v62] = sub_219BE1D34();
    v63 = OBJC_IVAR____TtC7NewsUI219TodayViewController_refreshControl;
    *&v39[v63] = [objc_allocWithZone(MEMORY[0x277D75918]) init];
    v64 = MEMORY[0x277D84F90];
    *&v39[OBJC_IVAR____TtC7NewsUI219TodayViewController_didAppearCompletions] = MEMORY[0x277D84F90];
    *&v39[OBJC_IVAR____TtC7NewsUI219TodayViewController_didDisappearCompletions] = v64;
    *&v39[OBJC_IVAR____TtC7NewsUI219TodayViewController_mastheadViewProviderDelegate + 8] = 0;
    swift_unknownObjectWeakInit();
    *&v39[OBJC_IVAR____TtC7NewsUI219TodayViewController_miniMastheadViewProviderDelegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v39[OBJC_IVAR____TtC7NewsUI219TodayViewController_deferLoadingContent] = 0;
    v65 = &v39[OBJC_IVAR____TtC7NewsUI219TodayViewController_windowTitle];
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v67 = [objc_opt_self() bundleForClass_];
    v68 = sub_219BDB5E4();
    v70 = v69;

    *v65 = v68;
    v65[1] = v70;
    *&v39[OBJC_IVAR____TtC7NewsUI219TodayViewController_paywallBarButtonItemGroup] = 0;
    sub_218718690(v130, &v39[OBJC_IVAR____TtC7NewsUI219TodayViewController_styler]);
    v71 = &v39[OBJC_IVAR____TtC7NewsUI219TodayViewController_eventHandler];
    v72 = v123;
    v73 = v116;
    v74 = v117;
    *v71 = v124;
    v71[1] = v73;
    *&v39[OBJC_IVAR____TtC7NewsUI219TodayViewController_blueprintViewController] = v74;
    v75 = &v39[OBJC_IVAR____TtC7NewsUI219TodayViewController_blueprintSelectionProvider];
    v76 = v114;
    v77 = v99;
    *v75 = v115;
    v75[1] = v77;
    *&v39[OBJC_IVAR____TtC7NewsUI219TodayViewController_blueprintLayoutProvider] = v72;
    v78 = v121;
    *&v39[OBJC_IVAR____TtC7NewsUI219TodayViewController_sharingActivityProviderFactory] = v120;
    *&v39[OBJC_IVAR____TtC7NewsUI219TodayViewController_barCompressionManager] = v76;
    *&v39[OBJC_IVAR____TtC7NewsUI219TodayViewController_refreshStateMachine] = v78;
    v79 = v119;
    *&v39[OBJC_IVAR____TtC7NewsUI219TodayViewController_commands] = v118;
    *&v39[OBJC_IVAR____TtC7NewsUI219TodayViewController_loadingGate] = v79;
    v80 = &v39[OBJC_IVAR____TtC7NewsUI219TodayViewController_mastheadPaywall];
    v81 = v126;
    v82 = v112;
    *v80 = v125;
    v80[1] = v82;
    v94(v81, 1, 1, v57);
    v83 = v93;
    swift_beginAccess();
    v115 = *&v39[v83];
    swift_unknownObjectRetain();
    v117 = v74;

    v116 = v76;

    swift_unknownObjectRetain();

    v84 = v126;
    sub_2187F68B4(v126, v122, v98);
    swift_allocObject();
    v85 = sub_219BE2724();
    sub_2187F697C(v84, v97);
    *&v39[v83] = v85;
    swift_endAccess();
    *&v39[OBJC_IVAR____TtC7NewsUI219TodayViewController_tracker] = v108;
    *&v39[OBJC_IVAR____TtC7NewsUI219TodayViewController_tipManager] = v111;
    sub_218718690(v129, &v39[OBJC_IVAR____TtC7NewsUI219TodayViewController_tipModelAvailability]);
    *&v39[OBJC_IVAR____TtC7NewsUI219TodayViewController_offlineBannerCoordinator] = v107;
    sub_218718690(v128, &v39[OBJC_IVAR____TtC7NewsUI219TodayViewController_welcomeStatus]);
    v127.receiver = v39;
    v127.super_class = v100;

    v86 = objc_msgSendSuper2(&v127, sel_initWithNibName_bundle_, 0, 0);
    *(*&v86[OBJC_IVAR____TtC7NewsUI219TodayViewController_eventHandler] + 24) = &off_282A86BE8;
    swift_unknownObjectWeakAssign();
    v87 = *&v86[OBJC_IVAR____TtC7NewsUI219TodayViewController_blueprintViewController];
    v88 = v86;
    v89 = v87;
    sub_219BE8744();

    v90 = *&v88[OBJC_IVAR____TtC7NewsUI219TodayViewController_barCompressionManager];
    sub_219BE7A44();

    *(*&v88[OBJC_IVAR____TtC7NewsUI219TodayViewController_mastheadPaywall] + 24) = &off_282A86B98;
    swift_unknownObjectWeakAssign();
    v91 = sub_219BF53D4();
    [v88 setFocusGroupIdentifier_];

    sub_2187F6C90(&unk_282A2C608);

    v92 = v113;
    sub_219BE2854();

    sub_219BE1D14();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    (*(v109 + 8))(v92, v110);
    __swift_destroy_boxed_opaque_existential_1(v128);
    __swift_destroy_boxed_opaque_existential_1(v129);
    __swift_destroy_boxed_opaque_existential_1(v130);
    __swift_destroy_boxed_opaque_existential_1(v131);
    __swift_destroy_boxed_opaque_existential_1(v134);
    __swift_destroy_boxed_opaque_existential_1(v137);
    __swift_destroy_boxed_opaque_existential_1(v140);
    __swift_destroy_boxed_opaque_existential_1(v147);
    __swift_destroy_boxed_opaque_existential_1(v152);
    __swift_destroy_boxed_opaque_existential_1(&v142);
    return v88;
  }

LABEL_37:
  __break(1u);
  return result;
}

void sub_2187E2B14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2187E2BCC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EDC810);
  result = sub_219BE1E34();
  if (v20)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
    MEMORY[0x28223BE20](v4);
    v6 = (v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for BaseStyler();
    v18[3] = v9;
    v10 = sub_2186EFB7C(&qword_280EDFED0, type metadata accessor for BaseStyler);
    v18[4] = v10;
    v18[0] = v8;
    v11 = type metadata accessor for TodayStyler();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v18, v9);
    MEMORY[0x28223BE20](v13);
    v15 = (v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15);
    v17 = *v15;
    v12[5] = v9;
    v12[6] = v10;
    v12[2] = v17;
    __swift_destroy_boxed_opaque_existential_1(v18);
    result = __swift_destroy_boxed_opaque_existential_1(v19);
    a2[3] = v11;
    a2[4] = &off_282A90018;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2187E2E50@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ECFB20);
  result = sub_219BE1E34();
  v5 = v20;
  if (!v20)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ED8F90);
  result = sub_219BE1E34();
  if (!v19)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ED73A8);
  result = sub_219BE1E34();
  v7 = v16;
  if (!v16)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BEDE24();
  result = sub_219BE1E24();
  if (result)
  {
    v9 = result;
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x28223BE20](v10);
    v12 = (&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12);
    v14 = sub_2187F2C48(v5, v6, *v12, v7, v8, v9);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    result = __swift_destroy_boxed_opaque_existential_1(v18);
    *a2 = v14;
    a2[1] = &off_282A97CA0;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2187E30B4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187DD2B8(0, &unk_280ED9058, type metadata accessor for TodayBlueprintModifierFactory, &off_282A42208, type metadata accessor for TodayInteractor);
  result = sub_219BE1E24();
  if (result)
  {
    *a2 = result;
    a2[1] = &off_282A83390;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2187E3150(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ECC710);
  result = sub_219BE1E34();
  if (!v81)
  {
    __break(1u);
    goto LABEL_30;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187DDA00();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TodayBlueprintModifierFactory();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187DF740();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v5 = result;
  v35 = v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE89B0);
  result = sub_219BE1DF4();
  if (!v80)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187DF5E0(0, &qword_280EE8A08, MEMORY[0x277D302B0]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280ECA980);
  result = sub_219BE1E34();
  if (!v78)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187DFB08(0, &qword_280EE8CA8, sub_2187DFC08, MEMORY[0x277D2FF78]);
  result = sub_219BE1E24();
  v47 = result;
  if (!result)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187DF5E0(0, &qword_280EE8A20, MEMORY[0x277D30288]);
  result = sub_219BE1E24();
  v46 = result;
  if (!result)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E91010);
  result = sub_219BE1DF4();
  if (!v76)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB3110);
  result = sub_219BE1E34();
  if (!v73)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v34 = v74;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218731C8C(0, &qword_280EE4F80, MEMORY[0x277D6DC58]);
  result = sub_219BE1E24();
  v45 = result;
  if (!result)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v33 = v82;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6570);
  result = sub_219BE1E34();
  if (!v72)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187DF874(0, &qword_280E90138, MEMORY[0x277D33ED8]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v7 = result;
  v44 = v73;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EA1500);
  result = sub_219BE1E34();
  if (!v69)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v32 = v70;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  v43 = result;
  if (!result)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E97530);
  result = sub_219BE1E34();
  if (!v68)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E94048);
  result = sub_219BE1E34();
  if (!v66)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB6288);
  result = sub_219BE1E34();
  if (!v64)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB9630);
  result = sub_219BE1E34();
  if (!v62)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90260);
  result = sub_219BE1E34();
  if (!v60)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v41 = v8;
  v42 = v69;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (!v57)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v9 = v3;
  v39 = v81;
  v10 = v58;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8FF60);
  result = sub_219BE1E24();
  v40 = result;
  if (!result)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v38 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E93EA0);
  result = sub_219BE1E34();
  if (!v56)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v37 = v57;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EA30F0);
  result = sub_219BE1E34();
  if (v54)
  {
    sub_2187DD2B8(0, &unk_280ED9058, type metadata accessor for TodayBlueprintModifierFactory, &off_282A42208, type metadata accessor for TodayInteractor);
    v12 = v11;
    v13 = objc_allocWithZone(v11);
    v14 = MEMORY[0x277D85000];
    *&v13[*((*MEMORY[0x277D85000] & *v13) + 0x60) + 8] = 0;
    swift_unknownObjectWeakInit();
    v15 = *((*v14 & *v13) + 0xB0);
    v16 = type metadata accessor for TodayPrewarmResult();
    (*(*(v16 - 8) + 56))(&v13[v15], 1, 1, v16);
    *&v13[*((*v14 & *v13) + 0x118)] = 0;
    v13[*((*v14 & *v13) + 0x148)] = 0;
    *&v13[*((*v14 & *v13) + 0x68)] = v9;
    *&v13[*((*v14 & *v13) + 0x70)] = v35;
    *&v13[*((*v14 & *v13) + 0x80)] = v5;
    sub_218718690(v79, &v13[*((*v14 & *v13) + 0x88)]);
    *&v13[*((*v14 & *v13) + 0xA8)] = v6;
    sub_218718690(v77, &v13[*((*v14 & *v13) + 0x90)]);
    *&v13[*((*v14 & *v13) + 0x98)] = v47;
    *&v13[*((*v14 & *v13) + 0xA0)] = v46;
    sub_218718690(v75, &v13[*((*v14 & *v13) + 0xB8)]);
    v17 = &v13[*((*v14 & *v13) + 0xC0)];
    *v17 = v44;
    *(v17 + 1) = v34;
    *&v13[*((*v14 & *v13) + 0xC8)] = v45;
    sub_218718690(v71, &v13[*((*v14 & *v13) + 0x110)]);
    *&v13[*((*v14 & *v13) + 0xD0)] = v7;
    v18 = &v13[*((*v14 & *v13) + 0x78)];
    *v18 = v39;
    *(v18 + 1) = v33;
    v19 = &v13[*((*v14 & *v13) + 0xD8)];
    *v19 = v42;
    *(v19 + 1) = v32;
    *&v13[*((*v14 & *v13) + 0x120)] = v41;
    *&v13[*((*v14 & *v13) + 0x128)] = v43;
    sub_218718690(v67, &v13[*((*v14 & *v13) + 0x130)]);
    sub_218718690(v65, &v13[*((*v14 & *v13) + 0xE0)]);
    sub_218718690(v63, &v13[*((*v14 & *v13) + 0xE8)]);
    sub_218718690(v61, &v13[*((*v14 & *v13) + 0xF0)]);
    sub_218718690(v59, &v13[*((*v14 & *v13) + 0xF8)]);
    v20 = &v13[*((*v14 & *v13) + 0x138)];
    *v20 = v37;
    *(v20 + 1) = v10;
    *&v13[*((*v14 & *v13) + 0x140)] = v40;
    *&v13[*((*v14 & *v13) + 0x150)] = v38;
    sub_218718690(v55, &v13[*((*v14 & *v13) + 0x100)]);
    sub_218718690(v53, &v13[*((*v14 & *v13) + 0x108)]);
    v52.receiver = v13;
    v52.super_class = v12;

    v36 = v5;

    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v21 = objc_msgSendSuper2(&v52, sel_init);
    *(*(v21 + *((*v14 & *v21) + 0x78)) + OBJC_IVAR____TtC7NewsUI216TodayDataManager_delegate + 8) = &off_282A83320;
    swift_unknownObjectWeakAssign();
    sub_2187F296C(&qword_280ED9068);
    v22 = v21;

    sub_219BE6F14();

    sub_218718690(v22 + *((*v14 & *v22) + 0x110), aBlock);
    __swift_project_boxed_opaque_existential_1(aBlock, v49);
    sub_2187F296C(qword_280ED90A0);
    v23 = v22;
    sub_219BE3A24();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v24 = v23 + *((*v14 & *v23) + 0xE0);
    swift_beginAccess();
    v25 = *(v24 + 24);
    v26 = *(v24 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
    v27 = *(v26 + 24);
    v28 = v23;
    v27(v21, &off_282A83310, v25, v26);
    swift_endAccess();
    [*(v28 + *((*v14 & *v28) + 0x140)) addObserver_];
    v29 = objc_opt_self();
    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v50 = sub_219ACFAFC;
    v51 = v30;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_218793E0C;
    v49 = &block_descriptor_209;
    v31 = _Block_copy(aBlock);

    [v29 scheduleLowPriorityBlockForMainThread_];
    _Block_release(v31);

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v53);
    __swift_destroy_boxed_opaque_existential_1(v55);
    __swift_destroy_boxed_opaque_existential_1(v59);
    __swift_destroy_boxed_opaque_existential_1(v61);
    __swift_destroy_boxed_opaque_existential_1(v63);
    __swift_destroy_boxed_opaque_existential_1(v65);
    __swift_destroy_boxed_opaque_existential_1(v67);
    __swift_destroy_boxed_opaque_existential_1(v71);
    __swift_destroy_boxed_opaque_existential_1(v75);
    __swift_destroy_boxed_opaque_existential_1(v77);
    __swift_destroy_boxed_opaque_existential_1(v79);
    return v28;
  }

LABEL_55:
  __break(1u);
  return result;
}

uint64_t sub_2187E436C()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

void *sub_2187E43A8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TodayFeedServiceContextFactory();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_26;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TodayFeedServiceConfigFetcher();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187DF260(0, &qword_280E92680, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D31BE8]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187DF538();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90260);
  result = sub_219BE1E34();
  if (!v80[3])
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  v56 = result;
  if (!result)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20);
  result = sub_219BE1E24();
  v55 = result;
  if (!result)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90160);
  result = sub_219BE1E34();
  if (!v79)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v53 = v7;
  v54 = a2;
  v52 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FD10);
  result = sub_219BE1E34();
  v9 = v76;
  if (!v76)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v48 = v77;
  v10 = __swift_project_boxed_opaque_existential_1(v75, v76);
  v51 = v40;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v50 = v12;
  v13 = *(v12 + 16);
  v59 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v13;
  v47 = (v12 + 16);
  v13();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E350);
  result = sub_219BE1E24();
  v49 = result;
  if (!result)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E90368);
  result = sub_219BE1E34();
  if (!v74)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v45 = v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EC30E0);
  result = sub_219BE1E34();
  v44 = v71;
  if (!v71)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v43 = v72;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, qword_280EC2540);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v42 = [result createPreFlushTask];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB6AF0);
  result = sub_219BE1E34();
  if (!v70[3])
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280ED02F0);
  result = sub_219BE1E34();
  if (!v69)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E740);
  result = sub_219BE1E24();
  v58 = result;
  if (!result)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ED3940);
  result = sub_219BE1E34();
  if (!v67)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280ED02E0);
  result = sub_219BE1E34();
  if (!v65[3])
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E901D0);
  result = sub_219BE1E34();
  if (!v64[3])
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90100);
  result = sub_219BE1E34();
  if (!v63[3])
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v57 = v9;
  v41 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187E00C0(0, &unk_280E906D0, sub_2186FB728, &type metadata for TodayOfflineModel, MEMORY[0x277D33538]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v14 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = type metadata accessor for TodayOfflineFeedPrimer();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v62[3] = v15;
  v62[4] = &off_282A2DA30;
  v62[0] = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ED0D40);
  result = sub_219BE1E34();
  if (v61)
  {
    swift_unknownObjectRelease();
    v16 = type metadata accessor for TodayDataManager();
    v17 = __swift_mutable_project_boxed_opaque_existential_1(v68, v69);
    v40[3] = v40;
    MEMORY[0x28223BE20](v17);
    v19 = v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v20 + 16))(v19);
    v21 = __swift_mutable_project_boxed_opaque_existential_1(v66, v67);
    v40[2] = v40;
    MEMORY[0x28223BE20](v21);
    v23 = v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v24 + 16))(v23);
    v25 = __swift_mutable_project_boxed_opaque_existential_1(v60, v61);
    v40[1] = v40;
    MEMORY[0x28223BE20](v25);
    v27 = v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    v29 = (*(v28 + 16))(v27);
    v40[0] = v40;
    MEMORY[0x28223BE20](v29);
    v30 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v31 = v57;
    (v46)(v30, v59, v57);
    v32 = type metadata accessor for ShortcutService();
    v33 = type metadata accessor for HistoryService();
    v34 = type metadata accessor for OfflineFeatures();
    v39 = v31;
    v38 = v14;
    v47 = v14;
    v35 = v42;
    v36 = v49;
    v48 = sub_2187E9714(v41, v45, v53, v52, v80, v56, v55, v78, v30, v49, v73, v44, v43, v42, v70, v19, v58, v23, v65, v64, v63, v38, v62, v27, v16, v32, v33, v39, v34, &off_282A3DCA0, &off_282A6F3B0, v48, &off_282A442B0);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v60);
    __swift_destroy_boxed_opaque_existential_1(v66);
    __swift_destroy_boxed_opaque_existential_1(v68);
    (*(v50 + 8))(v59, v57);
    result = __swift_destroy_boxed_opaque_existential_1(v75);
    v37 = v54;
    *v54 = v48;
    v37[1] = &off_282A6CEF8;
    return result;
  }

LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_2187E4FD0(void *a1)
{
  v2 = sub_219BF0634();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BEDA24();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E925C0 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v6, qword_280F618A8);
  (*(v7 + 16))(v9, v10, v6);
  (*(v3 + 104))(v5, *MEMORY[0x277D32E98], v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E901A0);
  result = sub_219BE1DF4();
  if (v12)
  {
    sub_2187DF538();
    return sub_219BEE4F4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2187E5210@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v7);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TodayModelFactory();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_2187DF260(0, &unk_280E904A8, type metadata accessor for TodayModelFactory, sub_2187E553C, MEMORY[0x277D33858]);
  swift_allocObject();
  sub_219BF2444();
  sub_2187E5570();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ED73A8);
  result = sub_219BE1E34();
  if (!v6)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BF1D64();
  result = sub_219BE1E24();
  if (result)
  {
    sub_219BF26E4();
    swift_allocObject();
    result = sub_219BF26D4();
    v5 = MEMORY[0x277D339B8];
    *a2 = result;
    a2[1] = v5;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2187E53F0(void *a1, void (*a2)(void), void (*a3)(void))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a2(0);
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    a3(0);
    result = swift_allocObject();
    *(result + 16) = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2187E54A8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC41D0);
  result = sub_219BE1E34();
  if (v5)
  {
    result = swift_getObjectType();
    v4 = *(v6 + 8);
    a2[3] = result;
    a2[4] = v4;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2187E5570()
{
  result = qword_280E904B8;
  if (!qword_280E904B8)
  {
    sub_2187DF260(255, &unk_280E904A8, type metadata accessor for TodayModelFactory, sub_2187E553C, MEMORY[0x277D33858]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E904B8);
  }

  return result;
}

uint64_t sub_2187E560C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_24;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187DD900();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187DDE2C(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE9C54();
  result = sub_219BE1DE4();
  v55 = result;
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE02D4();
  result = sub_219BE1E24();
  v54 = result;
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE0204();
  result = sub_219BE1E24();
  v53 = result;
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ECA990);
  result = sub_219BE1E34();
  if (!v78)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E91010);
  result = sub_219BE1DF4();
  if (!v76)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for NewsActivityManager();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB8830);
  result = sub_219BE1E34();
  if (!v74)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE81F0);
  result = sub_219BE1E34();
  if (!v72)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &unk_280E8E158);
  result = sub_219BE1E24();
  v49 = result;
  if (!result)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC27E0);
  result = sub_219BE1E34();
  if (!v70[3])
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280ED4520);
  result = sub_219BE1E34();
  if (!v69)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90100);
  result = sub_219BE1E34();
  if (!v67[3])
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v51 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (!v65)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v48 = v66;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187DF5E0(0, &qword_280EE8A08, MEMORY[0x277D302B0]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v9 = result;
  v52 = v7;
  v50 = v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187DF5E0(0, &qword_280EE8A20, MEMORY[0x277D30288]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v10 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6340);
  result = sub_219BE1E34();
  if (!v64[3])
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v47 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FDF0);
  result = sub_219BE1E34();
  if (!v63[3])
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v43 = v9;
  v44 = v65;
  v45 = v5;
  v46 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E91280);
  result = sub_219BE1E34();
  if (v62[3])
  {
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v77, v78);
    v42[3] = v42;
    MEMORY[0x28223BE20](v11);
    v13 = (v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13);
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v68, v69);
    v42[2] = v42;
    MEMORY[0x28223BE20](v15);
    v17 = (v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17);
    v19 = *v13;
    v20 = *v17;
    v21 = type metadata accessor for IssueModelFactory();
    v61[3] = v21;
    v61[4] = &off_282A725A8;
    v61[0] = v19;
    v22 = type metadata accessor for UpsellManager();
    v59 = v22;
    v60 = &off_282A95970;
    v58[0] = v20;
    type metadata accessor for TodayTracker();
    v23 = swift_allocObject();
    v24 = __swift_mutable_project_boxed_opaque_existential_1(v61, v21);
    v42[1] = v42;
    MEMORY[0x28223BE20](v24);
    v26 = (v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v27 + 16))(v26);
    v28 = __swift_mutable_project_boxed_opaque_existential_1(v58, v59);
    v42[0] = v42;
    MEMORY[0x28223BE20](v28);
    v30 = (v42 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v31 + 16))(v30);
    v32 = *v26;
    v33 = *v30;
    v57[3] = v21;
    v57[4] = &off_282A725A8;
    v56[4] = &off_282A95970;
    v57[0] = v32;
    v56[3] = v22;
    v56[0] = v33;
    *(v23 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v23 + 288) = 2;
    *(v23 + 290) = 0;
    *(v23 + 400) = 0;
    v34 = v50;
    *(v23 + 32) = v45;
    *(v23 + 40) = v34;
    v36 = v54;
    v35 = v55;
    *(v23 + 48) = v52;
    *(v23 + 56) = v35;
    v37 = v53;
    *(v23 + 64) = v36;
    *(v23 + 72) = v37;
    sub_218718690(v57, v23 + 80);
    sub_218718690(v75, v23 + 120);
    *(v23 + 160) = v51;
    sub_218718690(v73, v23 + 168);
    sub_218718690(v71, v23 + 208);
    *(v23 + 296) = v49;
    sub_218718690(v70, v23 + 248);
    sub_218718690(v56, v23 + 304);
    sub_218718690(v67, v23 + 344);
    v38 = v43;
    v40 = v47;
    v39 = v48;
    *(v23 + 384) = v44;
    *(v23 + 392) = v39;
    *(v23 + 408) = v38;
    *(v23 + 416) = v40;
    sub_218718690(v64, v23 + 424);
    sub_218718690(v63, v23 + 464);
    sub_218718690(v62, v23 + 504);
    sub_219BE16D4();
    swift_allocObject();
    swift_weakInit();
    sub_2186EFB7C(&unk_280EE7FB0, MEMORY[0x277D2F590]);

    v51 = v51;
    swift_unknownObjectRetain();

    sub_219BDD254();

    sub_219BE0014();
    swift_allocObject();
    swift_weakInit();
    sub_2186EFB7C(&unk_280EE84D0, MEMORY[0x277D2E2E0]);
    sub_219BDD254();

    sub_219BDFE54();
    swift_allocObject();
    swift_weakInit();

    sub_2186EFB7C(&qword_280EE8540, MEMORY[0x277D2E1A8]);
    sub_219BDD254();

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v62);
    __swift_destroy_boxed_opaque_existential_1(v63);
    __swift_destroy_boxed_opaque_existential_1(v64);
    __swift_destroy_boxed_opaque_existential_1(v67);
    __swift_destroy_boxed_opaque_existential_1(v70);
    __swift_destroy_boxed_opaque_existential_1(v71);
    __swift_destroy_boxed_opaque_existential_1(v73);
    __swift_destroy_boxed_opaque_existential_1(v75);
    __swift_destroy_boxed_opaque_existential_1(v56);
    __swift_destroy_boxed_opaque_existential_1(v57);
    __swift_destroy_boxed_opaque_existential_1(v58);
    __swift_destroy_boxed_opaque_existential_1(v61);
    __swift_destroy_boxed_opaque_existential_1(v68);
    __swift_destroy_boxed_opaque_existential_1(v77);
    result = sub_2186EFB7C(&qword_280EDE678, type metadata accessor for TodayTracker);
    v41 = v46;
    *v46 = v23;
    v41[1] = result;
    return result;
  }

LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_2187E638C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2187E63C4(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void))
{
  a2(0);
  swift_allocObject();
  return a3();
}

uint64_t sub_2187E6434(void *a1)
{
  sub_2187DDE2C(0);
  swift_allocObject();
  v2 = sub_219BE8554();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TodayDebugPersonalizationGroupLayoutKeyProvider();
  result = sub_219BE1E24();
  if (result)
  {
    *(result + 16) = v2;

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2187E64E0()
{
  type metadata accessor for TodayDebugPersonalizationGroupLayoutKeyProvider();
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t sub_2187E656C@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v7 = a1(0);
  swift_allocObject();
  result = a2();
  a4[3] = v7;
  a4[4] = a3;
  *a4 = result;
  return result;
}

uint64_t sub_2187E65D4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for DefaultHeadlineExposureTracker();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    type metadata accessor for SportsHeadlineExposureTracker();
    result = sub_219BE1E24();
    if (result)
    {
      v6 = result;
      v7 = type metadata accessor for ProxyHeadlineExposureTracker();
      result = swift_allocObject();
      *(result + 16) = v5;
      *(result + 24) = v6;
      a2[3] = v7;
      a2[4] = &off_282AA41A8;
      *a2 = result;
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

uint64_t sub_2187E66A0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FDF0);
  result = sub_219BE1E34();
  if (!v8)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E91280);
  result = sub_219BE1E34();
  if (v6)
  {
    type metadata accessor for DefaultHeadlineExposureTracker();
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    sub_2186CB1F0(&v7, v4 + 24);
    sub_2186CB1F0(&v5, v4 + 64);
    return v4;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2187E67E4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE81F0);
  result = sub_219BE1E34();
  if (!v34)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE02D4();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE0204();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = result;
  v28 = v4;
  v29 = v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EBB6B0);
  result = sub_219BE1E34();
  if (v32)
  {
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
    v27 = &v27;
    MEMORY[0x28223BE20](v6);
    v8 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8);
    v10 = *v8;
    v11 = type metadata accessor for HeadlineNoiseGenerator();
    v30[3] = v11;
    v30[4] = &off_282A66888;
    v30[0] = v10;
    type metadata accessor for SportsHeadlineExposureTracker();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v30, v11);
    MEMORY[0x28223BE20](v13);
    v15 = (&v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15);
    v17 = *v15;
    v12[13] = v11;
    v12[14] = &off_282A66888;
    v12[10] = v17;
    v18 = MEMORY[0x277D84F98];
    v12[15] = MEMORY[0x277D84F98];
    v12[16] = v18;
    sub_2187E738C(0, &unk_280E8C0F0, MEMORY[0x277D2F870], MEMORY[0x277D84560]);
    v19 = sub_219BE16E4();
    v20 = *(v19 - 8);
    v21 = *(v20 + 72);
    v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_219C0B8C0;
    v24 = v23 + v22;
    v25 = *(v20 + 104);
    v25(v24, *MEMORY[0x277D2F838], v19);
    v25(v24 + v21, *MEMORY[0x277D2F678], v19);
    v25(v24 + 2 * v21, *MEMORY[0x277D2F650], v19);
    v26 = sub_2187E73F0(v23);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v12[17] = v26;
    v12[2] = v29;
    sub_2186CB1F0(&v33, (v12 + 3));
    v12[8] = v28;
    v12[9] = v5;
    __swift_destroy_boxed_opaque_existential_1(v30);
    __swift_destroy_boxed_opaque_existential_1(v31);
    return v12;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_2187E6C94@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_219BE1BF4();
  MEMORY[0x28223BE20](v4);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FE20);
  result = sub_219BE1E34();
  if (!v25)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_2186CB1F0(&v24, v26);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8E580);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8E270);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90620);
  result = sub_219BE1E34();
  if (!v23)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v17[1] = v4;
  v17[2] = v6;
  v18 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90370);
  result = sub_219BE1E34();
  if (v21)
  {
    v11 = type metadata accessor for HeadlineNoiseGenerator();
    v12 = swift_allocObject();
    v12[15] = 0;
    v12[2] = v8;
    v12[3] = v9;
    v12[4] = v10;
    sub_218718690(v22, (v12 + 5));
    sub_218718690(v20, (v12 + 10));
    sub_2187E71A0(v26, v19);
    v13 = swift_allocObject();
    sub_2187E71D8(v19, v13 + 16);
    *(v13 + 56) = v12;
    v19[0] = MEMORY[0x277D84F90];
    sub_2186D5C5C(&qword_280EE7E70, MEMORY[0x277D6CA70]);
    v14 = MEMORY[0x277D6CA70];
    sub_2186D95F8(0, &qword_280E8F610, MEMORY[0x277D6CA70], MEMORY[0x277D83940]);
    sub_218744378(&qword_280E8F600, &qword_280E8F610, v14);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    sub_219BF7164();
    sub_2186D95F8(0, &qword_280EE7158, sub_2187E72A0, MEMORY[0x277D6CEE8]);
    swift_allocObject();
    v15 = sub_219BE2D14();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_2187E7338(v26);
    __swift_destroy_boxed_opaque_existential_1(v20);
    __swift_destroy_boxed_opaque_existential_1(v22);
    v12[15] = v15;

    v16 = v18;
    v18[3] = v11;
    v16[4] = &off_282A66888;
    *v16 = v12;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_2187E713C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

void sub_2187E7248()
{
  if (!qword_280E8EC00)
  {
    sub_218731D50();
    v0 = sub_219BF5B14();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8EC00);
    }
  }
}

void sub_2187E72D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2187E738C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2187E73F0(uint64_t a1)
{
  v2 = sub_219BE16E4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_2187E7704();
    v9 = sub_219BF72E4();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_218751238(&unk_280EE7F90, MEMORY[0x277D2F870]);
      v16 = sub_219BF52E4();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_218751238(&unk_280EE7F80, MEMORY[0x277D2F870]);
          v23 = sub_219BF53A4();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void sub_2187E7704()
{
  if (!qword_280E8D748)
  {
    sub_219BE16E4();
    sub_218751238(&unk_280EE7F90, MEMORY[0x277D2F870]);
    v0 = sub_219BF72F4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8D748);
    }
  }
}

uint64_t sub_2187E77BC(void *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), uint64_t (*a4)(uint64_t, uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187DD900();
  result = sub_219BE1E24();
  if (result)
  {
    v9 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2187DDE2C(0);
    result = sub_219BE1E24();
    if (result)
    {
      v10 = result;
      sub_2187DF5E0(0, a2, a3);
      swift_allocObject();
      return a4(v9, v10);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2187E792C(void *a1, uint64_t a2)
{
  a1[1] = sub_2187DD9B8(&qword_280EDE690, a2, type metadata accessor for TodayTracker);
  a1[2] = sub_2187DD9B8(qword_280EDE698, v3, type metadata accessor for TodayTracker);
  result = sub_2187DD9B8(&unk_280EDE680, v4, type metadata accessor for TodayTracker);
  a1[3] = result;
  return result;
}

uint64_t sub_2187E79D8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E6C0);
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EB9620);
    result = sub_219BE1E34();
    if (v19)
    {
      v4 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
      MEMORY[0x28223BE20](v4);
      v6 = (v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v7 + 16))(v6);
      v8 = *v6;
      v16 = type metadata accessor for AppStorageLevelProvider();
      v17 = &off_282A5DD20;
      v15[0] = v8;
      v9 = objc_allocWithZone(type metadata accessor for CacheFlushingManager());
      v10 = __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
      MEMORY[0x28223BE20](v10);
      v12 = (v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v13 + 16))(v12);
      v14 = sub_2187E7C58(v3, *v12, v9);
      __swift_destroy_boxed_opaque_existential_1(v15);
      __swift_destroy_boxed_opaque_existential_1(v18);
      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_2187E7C58(uint64_t a1, uint64_t a2, char *a3)
{
  v19 = a1;
  ObjectType = swift_getObjectType();
  v18 = sub_219BF6694();
  v5 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BF6674();
  MEMORY[0x28223BE20](v8);
  v9 = sub_219BED1D4();
  MEMORY[0x28223BE20](v9 - 8);
  v24 = type metadata accessor for AppStorageLevelProvider();
  v25 = &off_282A5DD20;
  v23[0] = a2;
  v10 = OBJC_IVAR___TSCacheFlushingManager_preFlushGroup;
  *&a3[v10] = dispatch_group_create();
  v17 = OBJC_IVAR___TSCacheFlushingManager_updateQueue;
  v11 = sub_2186C6148(0, &qword_280E8E3B0);
  v16[0] = "sports_upsell_state";
  v16[1] = v11;
  sub_219BED194();
  v22 = MEMORY[0x277D84F90];
  sub_2186D5C5C(&qword_280E8E3C0, MEMORY[0x277D85230]);
  v12 = MEMORY[0x277D85230];
  sub_2186D95F8(0, &qword_280E8EC40, MEMORY[0x277D85230], MEMORY[0x277D83940]);
  sub_218744378(&qword_280E8EC30, &qword_280E8EC40, v12);
  sub_219BF7164();
  (*(v5 + 104))(v7, *MEMORY[0x277D85260], v18);
  *&a3[v17] = sub_219BF66D4();
  *&a3[OBJC_IVAR___TSCacheFlushingManager_cacheFlusher] = v19;
  sub_218718690(v23, &a3[OBJC_IVAR___TSCacheFlushingManager_storageLevelProvider]);
  v21.receiver = a3;
  v21.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v21, sel_init);
  __swift_project_boxed_opaque_existential_1(v23, v24);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = v13;

  sub_219BE2D04();

  __swift_destroy_boxed_opaque_existential_1(v23);
  return v14;
}

uint64_t sub_2187E7FF4(uint64_t a1, void *a2)
{
  v3 = sub_219BE2C14();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE23A4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BE27C4();
  result = sub_219BE1E24();
  if (result)
  {
    sub_219BE2394();
    (*(v4 + 104))(v6, *MEMORY[0x277D6CE30], v3);
    v12 = sub_219BE27B4();
    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v7);
    ObjectType = swift_getObjectType();
    sub_2187E8200(v12, ObjectType);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2187E8200(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_2187E85D8;
  *(v7 + 24) = v6;
  v10[4] = sub_2187E85B0;
  v10[5] = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_2187E84EC;
  v10[3] = &block_descriptor_136;
  v8 = _Block_copy(v10);

  [v3 addPreFlushTask_];
  _Block_release(v8);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2187E8360()
{

  return swift_deallocObject();
}

uint64_t sub_2187E84EC(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v2(sub_2187E8A6C, v4);
}

uint64_t sub_2187E8570()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

void sub_2187E85E0()
{
  v0 = sub_219BE2E54();
  sub_219BE3024();
}

uint64_t sub_2187E8644(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280EBDA70);
  result = sub_219BE1E34();
  if (!v14)
  {
    goto LABEL_8;
  }

  sub_2186CB1F0(&v12, v18);
  sub_218718690(v18, v17);
  v5 = swift_allocObject();
  sub_2186CB1F0(v17, v5 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2187E89CC;
  *(v6 + 24) = v5;
  v15 = sub_2187E85A8;
  v16 = v6;
  *&v12 = MEMORY[0x277D85DD0];
  *(&v12 + 1) = 1107296256;
  v13 = sub_2187E84EC;
  v14 = &block_descriptor_70;
  v7 = _Block_copy(&v12);

  [a1 addPreFlushTask_];
  _Block_release(v7);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
LABEL_7:
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for OfflineFeedsCacheRetainer();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v8 = result;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_2187E8D94;
  *(v9 + 24) = v8;
  v15 = sub_2187E8D90;
  v16 = v9;
  *&v12 = MEMORY[0x277D85DD0];
  *(&v12 + 1) = 1107296256;
  v13 = sub_2187E84EC;
  v14 = &block_descriptor_11_0;
  v10 = _Block_copy(&v12);

  [a1 addPreFlushTask_];
  _Block_release(v10);

  __swift_destroy_boxed_opaque_existential_1(v18);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_2187E8958()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2187E89CC(uint64_t a1, uint64_t a2)
{
  v5 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v5);
  return (*(v6 + 24))(a1, a2, v5, v6);
}

void sub_2187E8A98()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR___TSCacheFlushingManager_preFlushGroup);

    dispatch_group_leave(v2);
  }
}

uint64_t CacheFlushingManager.addPreFlushTask(_:)(void (*a1)(void (*)(), uint64_t))
{
  dispatch_group_enter(*(v1 + OBJC_IVAR___TSCacheFlushingManager_preFlushGroup));
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();

  a1(sub_2187E8A7C, v3);
}

uint64_t sub_2187E8BAC()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2187E8BE4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8E580);
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, qword_280EBADD0);
    result = sub_219BE1E34();
    if (v6)
    {
      type metadata accessor for OfflineFeedsCacheRetainer();
      v4 = swift_allocObject();
      sub_2187E8D04();
      swift_allocObject();
      *(v4 + 64) = sub_219BE2E64();
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

void sub_2187E8D04()
{
  if (!qword_280EE7048)
  {
    sub_218738154(255, &qword_280E8E5F0, &unk_280E8E5F8, 0x277D310A8, MEMORY[0x277D83D88]);
    v0 = sub_219BE2EA4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE7048);
    }
  }
}

void sub_2187E8D9C()
{
  sub_21870F474(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  swift_allocObject();
  sub_219BE30B4();
  v0 = sub_219BE2E54();
  sub_219BE3024();
}

void sub_2187E8E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = objc_opt_self();
  v10 = swift_allocObject();
  v10[2] = a5;
  v10[3] = sub_2187A9144;
  v10[4] = v8;
  v12[4] = sub_218EC1318;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_218793E0C;
  v12[3] = &block_descriptor_68;
  v11 = _Block_copy(v12);

  [v9 scheduleLowPriorityBlock_];
  _Block_release(v11);
}

uint64_t sub_2187E8FA4()
{

  return swift_deallocObject();
}

uint64_t sub_2187E8FDC()
{

  return swift_deallocObject();
}

uint64_t sub_2187E9110@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_218718690(a1, v10);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for ShortcutsModule();
    v7 = objc_allocWithZone(v6);
    sub_218718690(v10, &v7[OBJC_IVAR____TtC7NewsUI215ShortcutsModule_resolver]);
    *&v7[OBJC_IVAR____TtC7NewsUI215ShortcutsModule_tracker] = v5;
    v9.receiver = v7;
    v9.super_class = v6;
    v8 = objc_msgSendSuper2(&v9, sel_init);
    result = __swift_destroy_boxed_opaque_existential_1(v10);
    a2[3] = v6;
    a2[4] = &protocol witness table for ShortcutsModule;
    *a2 = v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2187E920C(void *a1)
{
  v2 = sub_219BF6694();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BF6674();
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BED1D4();
  MEMORY[0x28223BE20](v9 - 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EBDA70);
  result = sub_219BE1E34();
  if (!v25)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EBADD0);
  result = sub_219BE1E34();
  if (!v23)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v19 = v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8E580);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v11 = result;
  v15 = v8;
  v16 = v5;
  v17 = v3;
  v18 = v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (result)
  {
    v12 = result;
    sub_218718690(a1, v21);
    type metadata accessor for TodayOfflineFeedPrimer();
    v13 = swift_allocObject();
    sub_2186C6148(0, &qword_280E8E3B0);
    sub_219BED1B4();
    v20 = MEMORY[0x277D84F90];
    sub_2186EFB7C(&qword_280E8E3C0, MEMORY[0x277D85230]);
    v14 = MEMORY[0x277D85230];
    sub_2187E738C(0, &qword_280E8EC40, MEMORY[0x277D85230], MEMORY[0x277D83940]);
    sub_2187E968C(&qword_280E8EC30, &qword_280E8EC40, v14);
    sub_219BF7164();
    (*(v17 + 104))(v16, *MEMORY[0x277D85260], v18);
    v13[19] = sub_219BF66D4();
    sub_2186CB1F0(&v24, (v13 + 2));
    sub_2186CB1F0(&v22, (v13 + 7));
    v13[12] = v11;
    v13[13] = v12;
    sub_2186CB1F0(v21, (v13 + 14));
    return v13;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2187E9628(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_2190D05A4(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2187E968C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_2187E738C(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_2187E9714(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, objc_class *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v121 = a8;
  v122 = a5;
  v100 = a6;
  v101 = a7;
  v111 = a4;
  v112 = a3;
  v113 = a1;
  v114 = a2;
  v107 = a22;
  v106 = a21;
  v118 = a20;
  v120 = a19;
  v104 = a14;
  v103 = a13;
  v102 = a12;
  v119 = a11;
  v117 = a23;
  v95 = a24;
  v94 = a33;
  v105 = a17;
  v93 = a18;
  v116 = a15;
  v115 = a25;
  v99 = a10;
  v110 = a32;
  v33 = sub_219BED184();
  v97 = *(v33 - 8);
  v98 = v33;
  MEMORY[0x28223BE20](v33);
  v96 = &v92 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143[3] = a28;
  v143[4] = a32;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v143);
  v108 = a28;
  v109 = boxed_opaque_existential_1;
  (*(*(v108 - 8) + 32))(boxed_opaque_existential_1, a9, v108);
  v141 = a26;
  v142 = a30;
  v36 = __swift_allocate_boxed_opaque_existential_1(v140);
  (*(*(a26 - 8) + 32))(v36, a16, a26);
  v138 = a27;
  v139 = a31;
  v37 = __swift_allocate_boxed_opaque_existential_1(v137);
  (*(*(a27 - 8) + 32))(v37, v93, a27);
  v135 = a29;
  v136 = v94;
  v38 = __swift_allocate_boxed_opaque_existential_1(v134);
  (*(*(a29 - 8) + 32))(v38, v95, a29);
  v39 = objc_allocWithZone(v115);
  v40 = __swift_mutable_project_boxed_opaque_existential_1(v140, v141);
  MEMORY[0x28223BE20](v40);
  v42 = (&v92 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v43 + 16))(v42);
  v44 = __swift_mutable_project_boxed_opaque_existential_1(v137, v138);
  MEMORY[0x28223BE20](v44);
  v46 = (&v92 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v47 + 16))(v46);
  v48 = __swift_mutable_project_boxed_opaque_existential_1(v134, v135);
  MEMORY[0x28223BE20](v48);
  v50 = (&v92 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v51 + 16))(v50);
  v52 = *v42;
  v53 = *v46;
  v54 = *v50;
  v132 = type metadata accessor for ShortcutService();
  v133 = &off_282A3DCA0;
  v131[0] = v52;
  v129 = type metadata accessor for HistoryService();
  v130 = &off_282A6F3B0;
  v128[0] = v53;
  v127[3] = type metadata accessor for OfflineFeatures();
  v127[4] = &off_282A442B0;
  v127[0] = v54;
  *&v39[OBJC_IVAR____TtC7NewsUI216TodayDataManager_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v55 = OBJC_IVAR____TtC7NewsUI216TodayDataManager_accessQueue;
  sub_2187D9028();
  v57 = v96;
  v56 = v97;
  v58 = v98;
  (*(v97 + 104))(v96, *MEMORY[0x277D851B8], v98);
  v59 = sub_219BF66E4();
  (*(v56 + 8))(v57, v58);
  *&v39[v55] = v59;
  *&v39[OBJC_IVAR____TtC7NewsUI216TodayDataManager_sharedItemAdditions] = 0;
  v39[OBJC_IVAR____TtC7NewsUI216TodayDataManager_blockNextAutoRefresh] = 0;
  *&v39[OBJC_IVAR____TtC7NewsUI216TodayDataManager_shortcutsPluginConfig] = 0;
  v60 = v114;
  *&v39[OBJC_IVAR____TtC7NewsUI216TodayDataManager_feedServiceContextFactory] = v113;
  *&v39[OBJC_IVAR____TtC7NewsUI216TodayDataManager_feedServiceConfigFetcher] = v60;
  v61 = v111;
  *&v39[OBJC_IVAR____TtC7NewsUI216TodayDataManager_feedManager] = v112;
  *&v39[OBJC_IVAR____TtC7NewsUI216TodayDataManager_feedPluginManager] = v61;
  sub_218718690(v122, &v39[OBJC_IVAR____TtC7NewsUI216TodayDataManager_sharedItemManager]);
  v62 = v101;
  *&v39[OBJC_IVAR____TtC7NewsUI216TodayDataManager_appConfigManager] = v100;
  *&v39[OBJC_IVAR____TtC7NewsUI216TodayDataManager_bundleSubscriptionManager] = v62;
  sub_218718690(v121, &v39[OBJC_IVAR____TtC7NewsUI216TodayDataManager_bundleSessionManager]);
  sub_218718690(v143, &v39[OBJC_IVAR____TtC7NewsUI216TodayDataManager_bundleSubscriptionDetectionManager]);
  v63 = v99;
  *&v39[OBJC_IVAR____TtC7NewsUI216TodayDataManager_subscriptionList] = v99;
  sub_218718690(v119, &v39[OBJC_IVAR____TtC7NewsUI216TodayDataManager_nativeAdService]);
  v64 = &v39[OBJC_IVAR____TtC7NewsUI216TodayDataManager_subscriptionService];
  v65 = v103;
  *v64 = v102;
  v64[1] = v65;
  v66 = v104;
  *&v39[OBJC_IVAR____TtC7NewsUI216TodayDataManager_cachePreFlushTask] = v104;
  v67 = OBJC_IVAR____TtC7NewsUI216TodayDataManager__lastRefreshContext;
  swift_beginAccess();
  sub_2187EA1BC(0, &unk_280EE7080, &type metadata for TodayDataManager.RefreshContext, MEMORY[0x277D6CF18]);
  v125 = 0;
  v126 = 0;
  swift_allocObject();

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v68 = v63;
  swift_unknownObjectRetain();
  v69 = v66;
  *&v39[v67] = sub_219BE2E64();
  swift_endAccess();
  v70 = v116;
  sub_218718690(v116, &v39[OBJC_IVAR____TtC7NewsUI216TodayDataManager_sportsOnboardingManager]);
  sub_218718690(v131, &v39[OBJC_IVAR____TtC7NewsUI216TodayDataManager_shortcutService]);
  v71 = v105;
  *&v39[OBJC_IVAR____TtC7NewsUI216TodayDataManager_readingList] = v105;
  sub_218718690(v128, &v39[OBJC_IVAR____TtC7NewsUI216TodayDataManager_historyService]);
  sub_218718690(v120, &v39[OBJC_IVAR____TtC7NewsUI216TodayDataManager_shortcutsModule]);
  sub_218718690(v118, &v39[OBJC_IVAR____TtC7NewsUI216TodayDataManager_puzzleStatsService]);
  v72 = v106;
  sub_218718690(v106, &v39[OBJC_IVAR____TtC7NewsUI216TodayDataManager_puzzleHistoryService]);
  v73 = v107;
  *&v39[OBJC_IVAR____TtC7NewsUI216TodayDataManager_offlineManager] = v107;
  sub_218718690(v117, &v39[OBJC_IVAR____TtC7NewsUI216TodayDataManager_offlineFeedPrimer]);
  sub_218718690(v127, &v39[OBJC_IVAR____TtC7NewsUI216TodayDataManager_offlineFeatures]);
  v124.receiver = v39;
  v124.super_class = v115;
  v114 = v71;
  v115 = v73;
  v74 = objc_msgSendSuper2(&v124, sel_init);
  [v62 addObserver_];
  __swift_project_boxed_opaque_existential_1(v122, v122[3]);
  sub_2187EA20C(&unk_280ED75B8, v75, type metadata accessor for TodayDataManager);
  v76 = v74;
  sub_219BF2F24();

  v77 = v70[4];
  __swift_project_boxed_opaque_existential_1(v70, v70[3]);
  v78 = *(v77 + 48);
  v79 = v76;
  v78();

  v80 = *__swift_project_boxed_opaque_existential_1(v131, v132);
  v81 = v79;
  sub_2187EA254(v81, v80);

  [v114 addObserver_];
  v82 = *__swift_project_boxed_opaque_existential_1(v128, v129);
  v83 = v81;
  sub_2187EA260(v83, v82);

  __swift_project_boxed_opaque_existential_1(v72, v72[3]);
  sub_2187EA20C(&unk_280ED75A0, v84, type metadata accessor for TodayDataManager);
  v85 = v83;
  sub_219BF3784();

  __swift_destroy_boxed_opaque_existential_1(&v123);
  sub_2187EA20C(&qword_280ED7588, v86, type metadata accessor for TodayDataManager);
  v87 = v85;
  sub_219BF4E14();

  sub_2187EA20C(&qword_280ED75B0, v88, type metadata accessor for TodayDataManager);
  v89 = v87;
  sub_219BEE504();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  v90 = sub_219BF1AF4();

  __swift_destroy_boxed_opaque_existential_1(v117);
  __swift_destroy_boxed_opaque_existential_1(v118);
  __swift_destroy_boxed_opaque_existential_1(v120);
  __swift_destroy_boxed_opaque_existential_1(v119);
  __swift_destroy_boxed_opaque_existential_1(v121);
  __swift_destroy_boxed_opaque_existential_1(v127);
  __swift_destroy_boxed_opaque_existential_1(v72);
  __swift_destroy_boxed_opaque_existential_1(v128);
  __swift_destroy_boxed_opaque_existential_1(v131);
  __swift_destroy_boxed_opaque_existential_1(v116);
  __swift_destroy_boxed_opaque_existential_1(v143);
  __swift_destroy_boxed_opaque_existential_1(v122);
  __swift_destroy_boxed_opaque_existential_1(v134);
  __swift_destroy_boxed_opaque_existential_1(v137);
  __swift_destroy_boxed_opaque_existential_1(v140);
  return v89;
}

void sub_2187EA1BC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2187EA20C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2187EA26C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = OBJC_IVAR____TtC7NewsUI214HistoryService_observers;
  swift_beginAccess();
  v6 = *(a2 + v5);
  v16 = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
LABEL_21:
    v7 = sub_219BF7214();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7)
  {
    v14 = a3;
    v15 = a2;
    v8 = 0;
    a2 = v6 & 0xC000000000000001;
    a3 = v6 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (a2)
      {
        MEMORY[0x21CECE0F0](v8, v6);
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          a2 = v15;
          v10 = v16;
          a3 = v14;
          goto LABEL_17;
        }
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_21;
        }

        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_14;
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
      }

      else
      {
      }

      ++v8;
      if (v9 == v7)
      {
        goto LABEL_15;
      }
    }
  }

  v10 = MEMORY[0x277D84F90];
LABEL_17:

  *(a2 + v5) = v10;

  type metadata accessor for HistoryServiceObserverProxy();
  v11 = swift_allocObject();
  *(v11 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v11 + 24) = a3;
  swift_unknownObjectWeakAssign();
  v12 = swift_beginAccess();
  MEMORY[0x21CECC690](v12);
  if (*((*(a2 + v5) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v5) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_219BF5A14();
  }

  sub_219BF5A54();
  return swift_endAccess();
}

uint64_t sub_2187EA558(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187DD900();
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2187DDABC();
    result = sub_219BE1E24();
    if (result)
    {
      sub_2187DDA00();
      swift_allocObject();
      return sub_219BE6EB4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2187EA638(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187DDB94();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE39D0);
  result = sub_219BE1E34();
  if (!v12)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187DF260(0, &unk_280EE48B8, sub_2187DDB94, sub_2187DEF60, MEMORY[0x277D6E068]);
  v4 = v3;
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  v10 = v4;
  v11 = sub_2187F078C();
  v9 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE4510);
  result = sub_219BE1DF4();
  if (v7)
  {
    sub_2186CB1F0(&v6, v8);
    sub_2187DDABC();
    swift_allocObject();
    return sub_219BE72C4();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2187EA824(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE8E74();
  result = sub_219BE1DE4();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187DDE4C();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187DECE4();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187DEE6C();
  result = sub_219BE1E24();
  if (result)
  {
    sub_2187DDB94();
    swift_allocObject();
    return sub_219BE7BB4();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2187EA980(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187DD2B8(0, &qword_280EE44C0, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D6E608]);
  result = sub_219BE1DE4();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EE73A0);
    result = sub_219BE1E34();
    if (v4)
    {
      v3 = objc_allocWithZone(sub_219BE8E74());
      return sub_219BE8E64();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2187EAAB8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE9C54();
  result = sub_219BE1DE4();
  if (result)
  {
    sub_2187DD2B8(0, &qword_280EE44C0, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D6E608]);
    v3 = objc_allocWithZone(v2);
    return sub_219BE9454();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2187EAB80(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187DD900();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187DDE2C(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TodayBlueprintViewCellProvider();
  sub_218718690(a1, v8);
  v4 = swift_allocObject();
  sub_2186CB1F0(v8, v4 + 16);
  v5 = sub_219BE1E04();

  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TodayBlueprintViewSupplementaryViewProvider();
  result = sub_219BE1E24();
  if (result)
  {
    *&v8[0] = v3;
    sub_2187DDE4C();
    v7 = objc_allocWithZone(v6);
    return sub_219BE9B64();
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_2187EAD40(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BE8E74();
  v3 = sub_219BE1DE4();
  if (v3)
  {
    sub_2186C6148(0, &qword_280E8E790);
    sub_219BE1BB4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2187EAE40(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EDC810);
  result = sub_219BE1E34();
  if (!v38)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E91810);
  sub_218718690(a1, &v32);
  v3 = swift_allocObject();
  sub_2186CB1F0(&v32, v3 + 16);
  sub_219BE1E14();

  v4 = v35;
  if (!v35)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = v36;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC41D0);
  result = sub_219BE1E34();
  v6 = v30;
  if (!v30)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  v7 = v28;
  if (!v28)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v26 = v31;
  v27 = v5;
  v25 = v29;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v8 = result;
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
    MEMORY[0x28223BE20](v9);
    v11 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = *v11;
    v14 = type metadata accessor for BaseStyler();
    v33 = v14;
    v15 = sub_2186EFB7C(&qword_280EDFED0, type metadata accessor for BaseStyler);
    v34 = v15;
    *&v32 = v13;
    type metadata accessor for TodayBlueprintViewCellProvider();
    v16 = swift_allocObject();
    v17 = __swift_mutable_project_boxed_opaque_existential_1(&v32, v14);
    MEMORY[0x28223BE20](v17);
    v19 = (&v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19);
    v21 = *v19;
    v16[7] = v14;
    v16[8] = v15;
    v16[3] = 0;
    v16[4] = v21;
    swift_unknownObjectWeakInit();
    v22 = v26;
    v23 = v27;
    v16[9] = v4;
    v16[10] = v23;
    v16[11] = v6;
    v16[12] = v22;
    v24 = v25;
    v16[13] = v7;
    v16[14] = v24;
    v16[15] = v8;
    __swift_destroy_boxed_opaque_existential_1(&v32);
    __swift_destroy_boxed_opaque_existential_1(v37);
    return v16;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_2187EB258(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, qword_280ED73A8);
  result = sub_219BE1E34();
  if (!v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  ObjectType = swift_getObjectType();
  v7 = *(v9 + 24);
  v5[0] = v8;
  sub_2186C709C(0, &qword_280E90170);
  sub_219BE1BA4();
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BEF314();
  result = sub_219BE1DE4();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5[0] = result;
  v5[1] = MEMORY[0x277D32550];
  sub_2186C709C(0, &qword_280E91350);
  sub_219BE1BA4();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BEA1E4();
  result = sub_219BE1DE4();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_219BE1B94();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280E91280);
  result = sub_219BE1E34();
  if (ObjectType)
  {
    sub_219BE1BA4();
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2187EB550(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE9C54();
  result = sub_219BE1DE4();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2187DF260(0, &qword_280EE4678, sub_2187DD900, sub_2187DEF94, MEMORY[0x277D6E388]);
    result = sub_219BE1E24();
    if (result)
    {
      sub_2187EB958();
      sub_219BEA1E4();
      swift_allocObject();
      return sub_219BEA1D4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2187EB67C(void *a1)
{
  v2 = sub_219BE9BC4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_219BE9BE4();
  MEMORY[0x28223BE20](v6 - 8);
  sub_2187DF260(0, &unk_280EE4708, sub_2187DD900, sub_2187DEF94, MEMORY[0x277D6E380]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187DD900();
  result = sub_219BE1E24();
  if (result)
  {
    v13 = result;
    (*(v9 + 104))(v11, *MEMORY[0x277D6E378], v8);
    *v5 = 0;
    (*(v3 + 104))(v5, *MEMORY[0x277D6E828], v2);
    sub_219BE9BD4();
    v14[1] = v13;
    sub_2187DF260(0, &qword_280EE4678, sub_2187DD900, sub_2187DEF94, MEMORY[0x277D6E388]);
    swift_allocObject();
    return sub_219BE8EC4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2187EB958()
{
  result = qword_280EE4680;
  if (!qword_280EE4680)
  {
    sub_2187DF260(255, &qword_280EE4678, sub_2187DD900, sub_2187DEF94, MEMORY[0x277D6E388]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE4680);
  }

  return result;
}

uint64_t sub_2187EB9F4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186CFDE4(0, &qword_280EDC810);
  result = sub_219BE1E34();
  v4 = v9;
  if (v9)
  {
    v5 = v10;
    v6 = __swift_project_boxed_opaque_existential_1(v8, v9);
    a2[3] = v4;
    a2[4] = *(v5 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v6, v4);
    return __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2187EBAD0()
{
  if (!qword_280EE3488)
  {
    sub_219BEC174();
    sub_219BEC084();
    sub_2186CBC0C(&unk_280EE3380, MEMORY[0x277D2D5A0]);
    v0 = sub_219BEBDE4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE3488);
    }
  }
}

uint64_t type metadata accessor for FeedVideoAdProviderFactory()
{
  result = qword_280EBB6D0;
  if (!qword_280EBB6D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2187EBC34@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186CF94C();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  v7 = v33;
  if (!v33)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE33B0);
  result = sub_219BE1E34();
  if (!v32)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v23 = v34;
  v24 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280ECA980);
  result = sub_219BE1E34();
  if (v30)
  {
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
    MEMORY[0x28223BE20](v8);
    v10 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10);
    v12 = *v10;
    v13 = type metadata accessor for IssueRouteFactory();
    v28[3] = v13;
    v28[4] = &off_282A54388;
    v28[0] = v12;
    v14 = type metadata accessor for NewsFormatLayoutViewRouter();
    v15 = swift_allocObject();
    v16 = __swift_mutable_project_boxed_opaque_existential_1(v28, v13);
    MEMORY[0x28223BE20](v16);
    v18 = (&v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18);
    v20 = *v18;
    v26 = v13;
    v27 = &off_282A54388;
    *&v25 = v20;
    *(v15 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v15 + 32) = v24;
    *(v15 + 40) = v6;
    v21 = v23;
    *(v15 + 48) = v7;
    *(v15 + 56) = v21;
    sub_2186CB1F0(&v31, v15 + 64);
    sub_2186CB1F0(&v25, v15 + 104);
    *(v15 + 144) = 0u;
    *(v15 + 160) = 0u;
    *(v15 + 176) = 0;
    __swift_destroy_boxed_opaque_existential_1(v28);
    __swift_destroy_boxed_opaque_existential_1(v29);
    a2[3] = v14;
    result = sub_2187EC130();
    a2[4] = result;
    *a2 = v15;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_2187EBFE0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8DE40);
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186CFDE4(0, &unk_280EE8AB0);
    result = sub_219BE1E34();
    if (v9)
    {
      v6 = type metadata accessor for IssueRouteFactory();
      v7 = swift_allocObject();
      *(v7 + 16) = v5;
      result = sub_2186CB1F0(&v8, v7 + 24);
      a2[3] = v6;
      a2[4] = &off_282A54388;
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

unint64_t sub_2187EC130()
{
  result = qword_280EE06D0;
  if (!qword_280EE06D0)
  {
    type metadata accessor for NewsFormatLayoutViewRouter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE06D0);
  }

  return result;
}

uint64_t sub_2187EC188@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90580);
  result = sub_219BE1E34();
  if (!v12)
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

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FDF0);
  result = sub_219BE1E34();
  if (v10)
  {
    v7 = type metadata accessor for FeedItemDimmingEvaluator();
    v8 = swift_allocObject();
    *(v8 + 16) = v5;
    sub_2186CB1F0(&v11, v8 + 24);
    *(v8 + 64) = v6;
    sub_2186CB1F0(&v9, v8 + 72);
    a2[3] = v7;
    result = sub_218754C0C(qword_280EC2048, type metadata accessor for FeedItemDimmingEvaluator);
    a2[4] = result;
    *a2 = v8;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2187EC3F0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4 == 2)
  {
    sub_219BDC8D4();
    sub_219BDC8B4();
    if (*a2 != -1)
    {
      swift_once();
    }

    LOBYTE(v4) = sub_219BDC8C4();

    *(v2 + v3) = v4 & 1;
  }

  return v4 & 1;
}

uint64_t sub_2187EC490()
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
  (*(v5 + 104))(v7, *MEMORY[0x277D6D048], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  result = sub_219BDC9C4();
  qword_280EE9218 = result;
  return result;
}

uint64_t sub_2187EC63C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90FD0);
  sub_218718690(a1, v6);
  v2 = swift_allocObject();
  sub_2186CB1F0(v6, v2 + 16);
  sub_219BE1E14();

  if (v8)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    type metadata accessor for MagazineFeedEmbeddedSupplementaryRenderer();
    result = sub_219BE1E24();
    if (result)
    {
      v4 = result;
      type metadata accessor for TodayBlueprintViewSupplementaryViewProvider();
      v5 = swift_allocObject();
      *(v5 + 24) = 0;
      swift_unknownObjectWeakInit();
      sub_2186CB1F0(&v7, v5 + 32);
      *(v5 + 72) = v4;
      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2187EC790(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187EC97C(0, &qword_280E8B8A8, &unk_280E917F0, MEMORY[0x277D32370], MEMORY[0x277D84560]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09BA0;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2187DF3BC();
  v5 = v4;
  result = sub_219BE1E24();
  if (result)
  {
    v7 = result;
    *(v3 + 56) = v5;
    *(v3 + 64) = sub_2186EFB7C(&qword_280E91928, sub_2187DF3BC);
    *(v3 + 32) = v7;
    sub_2187EC97C(0, &qword_280E8EF20, &unk_280E917F0, MEMORY[0x277D32370], MEMORY[0x277D83940]);
    sub_219BE1BA4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2187EC910(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_2187EC97C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_2187EC9E8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187DD900();
  result = sub_219BE1E24();
  if (result)
  {
    sub_2187DF3BC();
    swift_allocObject();
    return sub_219BEEB34();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2187ECA80(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E98390);
  result = sub_219BE1E34();
  if (v20)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280EE4480);
    result = sub_219BE1E34();
    if (v18)
    {
      v3 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
      MEMORY[0x28223BE20](v3);
      v5 = (&v16[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v6 + 16))(v5);
      v7 = *v5;
      v8 = type metadata accessor for MagazineFeedGroupTitleViewRenderer();
      v16[3] = v8;
      v16[4] = &off_282A82F78;
      v16[0] = v7;
      type metadata accessor for MagazineFeedEmbeddedSupplementaryRenderer();
      v9 = swift_allocObject();
      v10 = __swift_mutable_project_boxed_opaque_existential_1(v16, v8);
      MEMORY[0x28223BE20](v10);
      v12 = (&v16[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v13 + 16))(v12);
      v14 = *v12;
      v9[5] = v8;
      v9[6] = &off_282A82F78;
      v9[2] = v14;
      v9[12] = 0;
      sub_2186CB1F0(&v17, (v9 + 7));
      __swift_destroy_boxed_opaque_existential_1(v16);
      __swift_destroy_boxed_opaque_existential_1(v19);
      return v9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2187ECCF8()
{
  type metadata accessor for MagazineFeedViewController();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C709C(0, &qword_280EC7BB0);
  sub_219BE2914();

  sub_2186C709C(0, &qword_280EC7BB8);
  sub_219BE2914();
  type metadata accessor for MagazineFeedRouter();
  sub_219BE19C4();

  sub_2186C709C(0, qword_280EB3F50);
  sub_219BE2914();

  sub_2186C709C(0, &qword_280EBB378);
  sub_219BE2914();
  sub_2186ED33C(0, &unk_280EC7BD0, type metadata accessor for MagazineFeedBlueprintModifierFactory, sub_2187EDED8, type metadata accessor for MagazineFeedInteractor);
  sub_219BE19C4();

  sub_2186C709C(0, &unk_280EB84B0);
  sub_219BE2914();

  sub_2186C709C(0, qword_280EBDDB8);
  sub_219BE2914();

  sub_2186C709C(0, &qword_280E901A0);
  sub_219BE2914();

  type metadata accessor for MagazineFeedModelFactory();
  sub_219BE2904();

  sub_2187EE318();
  sub_219BE2904();

  type metadata accessor for MagazineFeedBlueprintModifierFactory();
  sub_219BE2904();

  sub_2186C709C(0, &qword_280EAC5E0);
  sub_219BE2914();

  sub_2187EE404();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2187EEE20();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186ED33C(0, &unk_280EE4158, sub_2187EE748, sub_2187EEB48, MEMORY[0x277D6E7C8]);
  sub_219BE2904();

  sub_219BE9C54();
  sub_219BE2904();

  sub_219BEA1E4();
  sub_219BE2904();

  sub_2187EF1EC(0);
  sub_219BE2904();

  sub_2187EE4C0();
  sub_219BE2904();

  sub_2187EEF64(0, &qword_280EE4238, sub_2187EF004, sub_2187EEB7C, MEMORY[0x277D6E7B0]);
  sub_219BE2904();

  sub_2187EE748(0);
  sub_219BE2904();

  type metadata accessor for MagazineFeedBlueprintLayoutBuilder();
  sub_219BE2904();

  sub_2187EF20C();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2187EF2E8();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C6148(0, &qword_280E8E4C0);
  sub_219BE2904();

  sub_2187EE5CC();
  sub_219BE2904();

  sub_2186C709C(0, &qword_280EE3DE0);
  sub_219BE2914();
  sub_219BE95A4();
  sub_219BE19C4();

  sub_21879AAE0(0, &qword_280EE44C0, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D6E608]);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2187EE8EC();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2187EEC70();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2187EED60();
  sub_219BE2904();

  sub_219BE8984();
  sub_219BE2904();

  type metadata accessor for MagazineFeedBlueprintViewCellProvider();
  sub_219BE2904();
  sub_219BE19D4();

  type metadata accessor for MagazineFeedBlueprintViewSupplementaryViewProvider();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2187EF40C();
  sub_219BE2904();

  sub_2186ED33C(0, &qword_280EE4610, sub_2187EE318, sub_2187EEB14, MEMORY[0x277D6E388]);
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE70E4();
  sub_219BE2904();

  sub_2187EF498();
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE8A54();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C709C(0, &unk_280EE3C80);
  sub_219BE2914();

  sub_219BE9534();
  sub_219BE2904();

  sub_219BE9564();
  sub_219BE2904();

  sub_2186C709C(0, qword_280E98390);
  sub_219BE2914();

  sub_2186C709C(0, qword_280E9B3D8);
  sub_219BE2914();

  sub_2186C709C(0, &unk_280E930A0);
  sub_219BE2914();

  sub_2186C709C(0, qword_280E93808);
  sub_219BE2914();

  sub_2186ED33C(0, &unk_280EE4830, sub_2187EE5CC, sub_2187EEDEC, MEMORY[0x277D6E068]);
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE7A84();
  sub_219BE2904();

  sub_2186C709C(0, qword_280EC4688);
  sub_219BE2914();

  sub_2186C709C(0, &unk_280EE89B0);
  sub_219BE2914();

  sub_2187EF554(0, &unk_280EE89D8, MEMORY[0x277D302B0]);
  sub_219BE2904();

  sub_2187EF6B8(0, &qword_280EE8CB0, &qword_280EC4878, &unk_219C4FCA8, MEMORY[0x277D2FF78]);
  sub_219BE2904();

  sub_2187EF554(0, &qword_280EE8A10, MEMORY[0x277D30288]);
  sub_219BE2904();
}

uint64_t sub_2187EDF24()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

void sub_2187EE034(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for MagazineFeedSectionDescriptor();
    v8[1] = type metadata accessor for MagazineFeedModel(255);
    v8[2] = sub_2186F6AA0(&qword_280EB0350, type metadata accessor for MagazineFeedSectionDescriptor);
    v8[3] = sub_2186F6AA0(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2187EE128(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for MagazineFeedSectionDescriptor();
    v8[1] = type metadata accessor for MagazineFeedModel(255);
    v8[2] = sub_2186EB0F8(&qword_280EB0350, 255, type metadata accessor for MagazineFeedSectionDescriptor);
    v8[3] = sub_2186EB0F8(&qword_280ED5CC0, 255, type metadata accessor for MagazineFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2187EE224(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for MagazineFeedSectionDescriptor();
    v8[1] = type metadata accessor for MagazineFeedModel(255);
    v8[2] = sub_2186EC158(&qword_280EB0350, type metadata accessor for MagazineFeedSectionDescriptor);
    v8[3] = sub_2186EC158(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2187EE318()
{
  if (!qword_280EE5400)
  {
    type metadata accessor for MagazineFeedSectionDescriptor();
    type metadata accessor for MagazineFeedModel(255);
    sub_218985F8C(&qword_280EB0350, type metadata accessor for MagazineFeedSectionDescriptor);
    sub_218985F8C(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel);
    v0 = sub_219BE6FA4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE5400);
    }
  }
}

void sub_2187EE404()
{
  if (!qword_280EE5598)
  {
    sub_2187EE318();
    sub_2187EE4C0();
    sub_2187EEB14();
    sub_2186D5500(&unk_280EE5258, sub_2187EE4C0);
    v0 = sub_219BE6F54();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE5598);
    }
  }
}

void sub_2187EE4C0()
{
  if (!qword_280EE5250)
  {
    type metadata accessor for MagazineFeedSectionDescriptor();
    type metadata accessor for MagazineFeedModel(255);
    sub_2187EE5CC();
    sub_2186D5500(&qword_280EB0350, type metadata accessor for MagazineFeedSectionDescriptor);
    sub_2186D5500(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel);
    sub_2187EEDEC();
    v0 = sub_219BE72E4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE5250);
    }
  }
}

void sub_2187EE5CC()
{
  if (!qword_280EE4E88)
  {
    sub_2186C6148(255, &qword_280E8E4C0);
    sub_2187EE8EC();
    sub_2187EEC70();
    sub_2187EED60();
    type metadata accessor for MagazineFeedViewController();
    sub_2186D5500(&qword_280EE3E78, sub_2187EE8EC);
    sub_2186D5500(&qword_280EE4300, sub_2187EEC70);
    sub_2186D5500(&unk_280EE3D18, sub_2187EED60);
    v0 = sub_219BE7BE4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE4E88);
    }
  }
}

void sub_2187EE768(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for MagazineFeedLayoutSectionDescriptor;
    v8[1] = type metadata accessor for MagazineFeedLayoutModel();
    v8[2] = sub_2187EEA78();
    v8[3] = sub_2186EB0F8(&unk_280EC4850, 255, type metadata accessor for MagazineFeedLayoutModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2187EE82C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for MagazineFeedLayoutSectionDescriptor;
    v8[1] = type metadata accessor for MagazineFeedLayoutModel();
    v8[2] = sub_2187EEA78();
    v8[3] = sub_2186EF8AC(&unk_280EC4850, type metadata accessor for MagazineFeedLayoutModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2187EE8EC()
{
  if (!qword_280EE3E68)
  {
    sub_2187EE318();
    sub_2187EE748(255);
    type metadata accessor for MagazineFeedBlueprintViewCellProvider();
    type metadata accessor for MagazineFeedBlueprintViewSupplementaryViewProvider();
    sub_2187EEB14();
    sub_2187EEB48();
    sub_2186D5500(qword_280E99658, type metadata accessor for MagazineFeedBlueprintViewCellProvider);
    sub_2186D5500(qword_280EE1D20, type metadata accessor for MagazineFeedBlueprintViewSupplementaryViewProvider);
    sub_2187EEB7C();
    v0 = sub_219BE9B94();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE3E68);
    }
  }
}

uint64_t type metadata accessor for MagazineFeedLayoutModel()
{
  result = qword_280EC4820;
  if (!qword_280EC4820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2187EEA78()
{
  result = qword_280E9D2E8[0];
  if (!qword_280E9D2E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E9D2E8);
  }

  return result;
}

uint64_t sub_2187EEBE4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MagazineFeedLayoutModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2187EEC28(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2187EEC70()
{
  if (!qword_280EE42F0)
  {
    sub_2187EE318();
    sub_2187EE748(255);
    type metadata accessor for MagazineFeedViewController();
    sub_2187EEB14();
    sub_2187EEB48();
    sub_2186D5500(&qword_280EBB298, type metadata accessor for MagazineFeedViewController);
    sub_2187EEB7C();
    v0 = sub_219BE9794();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE42F0);
    }
  }
}

void sub_2187EED60()
{
  if (!qword_280EE3D10)
  {
    sub_2187EE318();
    sub_2187EE748(255);
    sub_2187EEB14();
    sub_2187EEB48();
    v0 = sub_219BE9F34();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE3D10);
    }
  }
}

void sub_2187EEE20()
{
  if (!qword_280EE3BF0)
  {
    sub_2187EE748(255);
    type metadata accessor for MagazineFeedBlueprintLayoutBuilder();
    sub_2187EEF64(255, &qword_280EE4238, sub_2187EF004, sub_2187EEB7C, MEMORY[0x277D6E7B0]);
    sub_2187EEB48();
    sub_2186D5500(&qword_280EA0018, type metadata accessor for MagazineFeedBlueprintLayoutBuilder);
    sub_2187EF05C();
    v0 = sub_219BEA4A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE3BF0);
    }
  }
}

void sub_2187EEF64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, void *))
{
  if (!*a2)
  {
    v12[0] = &type metadata for MagazineFeedLayoutSectionDescriptor;
    v12[1] = type metadata accessor for MagazineFeedLayoutModel();
    v12[2] = a3();
    v12[3] = a4();
    v10 = a5(a1, v12);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_2187EF004()
{
  result = qword_280E9D2E0;
  if (!qword_280E9D2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9D2E0);
  }

  return result;
}

unint64_t sub_2187EF05C()
{
  result = qword_280EE4240;
  if (!qword_280EE4240)
  {
    sub_2187EEF64(255, &qword_280EE4238, sub_2187EF004, sub_2187EEB7C, MEMORY[0x277D6E7B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE4240);
  }

  return result;
}

void sub_2187EF0F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for MagazineFeedSectionDescriptor();
    v8[1] = type metadata accessor for MagazineFeedModel(255);
    v8[2] = sub_2186D5500(&qword_280EB0350, type metadata accessor for MagazineFeedSectionDescriptor);
    v8[3] = sub_2186D5500(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2187EF20C()
{
  if (!qword_280EE4948)
  {
    sub_2187EE318();
    sub_2187EE5CC();
    type metadata accessor for MagazineFeedViewController();
    sub_2187EEB14();
    sub_2187EEDEC();
    sub_2186D5500(&qword_280EBB298, type metadata accessor for MagazineFeedViewController);
    v0 = sub_219BE8774();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE4948);
    }
  }
}

void sub_2187EF2E8()
{
  if (!qword_280E91BB0)
  {
    type metadata accessor for MagazineFeedServiceConfig();
    sub_2187EF390();
    sub_2186D5500(&unk_280ED5E10, type metadata accessor for MagazineFeedGroup);
    v0 = sub_219BEE514();
    if (!v1)
    {
      atomic_store(v0, &qword_280E91BB0);
    }
  }
}

uint64_t sub_2187EF3C4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2187EF40C()
{
  if (!qword_280E918C8)
  {
    type metadata accessor for MagazineFeedServiceConfig();
    sub_2187EE318();
    sub_2187EF390();
    sub_2187EEB14();
    v0 = sub_219BEEB44();
    if (!v1)
    {
      atomic_store(v0, &qword_280E918C8);
    }
  }
}

void sub_2187EF498()
{
  if (!qword_280EE3FA8)
  {
    sub_2187EE5CC();
    sub_2187EE318();
    sub_2187EEDEC();
    sub_2186D5500(&unk_280EE5420, sub_2187EE318);
    v0 = sub_219BE9AD4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE3FA8);
    }
  }
}

void sub_2187EF554(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for MagazineFeedSectionDescriptor();
    v8[1] = type metadata accessor for MagazineFeedModel(255);
    v8[2] = &type metadata for MagazineFeedLayoutSectionDescriptor;
    v8[3] = type metadata accessor for MagazineFeedLayoutModel();
    v8[4] = sub_2186D5500(&qword_280EB0350, type metadata accessor for MagazineFeedSectionDescriptor);
    v8[5] = sub_2186D5500(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel);
    v8[6] = sub_2187EEA78();
    v8[7] = sub_2187EF684();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2187EF6B8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, void *))
{
  if (!*a2)
  {
    sub_2187EE748(255);
    v12[0] = v9;
    v12[1] = sub_2187EEB48();
    v12[2] = sub_2186D5500(a3, type metadata accessor for MagazineFeedLayoutModel);
    v12[3] = sub_2186D5500(&unk_280EC4860, type metadata accessor for MagazineFeedLayoutModel);
    v12[4] = sub_2186D5500(&unk_280EC4838, type metadata accessor for MagazineFeedLayoutModel);
    v10 = a5(a1, v12);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_2187EF7C4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E9B3D8);
  result = sub_219BE1E34();
  if (v37)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, qword_280E93808);
    result = sub_219BE1E34();
    if (v35)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v36, v37);
      v29[2] = v29;
      MEMORY[0x28223BE20](v5);
      v7 = (v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v8 + 16))(v7);
      v9 = __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
      v29[1] = v29;
      MEMORY[0x28223BE20](v9);
      v11 = (v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v12 + 16))(v11);
      v13 = *v7;
      v14 = *v11;
      v15 = type metadata accessor for MagazineFeedGroupTitleViewStyler();
      v33[3] = v15;
      v33[4] = &off_282A69220;
      v33[0] = v13;
      v16 = type metadata accessor for MagazineFeedGroupMoreActionsButtonRenderer();
      v31 = v16;
      v32 = &off_282A46358;
      v30[0] = v14;
      v17 = type metadata accessor for MagazineFeedGroupTitleViewRenderer();
      v18 = swift_allocObject();
      v19 = __swift_mutable_project_boxed_opaque_existential_1(v33, v15);
      MEMORY[0x28223BE20](v19);
      v21 = (v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v22 + 16))(v21);
      v23 = __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
      MEMORY[0x28223BE20](v23);
      v25 = (v29 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v26 + 16))(v25);
      v27 = *v21;
      v28 = *v25;
      v18[5] = v15;
      v18[6] = &off_282A69220;
      v18[2] = v27;
      v18[10] = v16;
      v18[11] = &off_282A46358;
      v18[7] = v28;
      __swift_destroy_boxed_opaque_existential_1(v30);
      __swift_destroy_boxed_opaque_existential_1(v33);
      __swift_destroy_boxed_opaque_existential_1(v34);
      result = __swift_destroy_boxed_opaque_existential_1(v36);
      a2[3] = v17;
      a2[4] = &off_282A82F78;
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