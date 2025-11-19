uint64_t sub_21926103C(void **a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &qword_280E91810);
  result = sub_219BE1E34();
  if (v5)
  {
    swift_getObjectType();
    v4 = v2;
    sub_219BEECC4();
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219261128@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EDC810);
  result = sub_219BE1E34();
  if (v24)
  {
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
    MEMORY[0x28223BE20](v8);
    v10 = (v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10);
    v12 = *v10;
    v13 = type metadata accessor for BaseStyler();
    v22[3] = v13;
    v14 = sub_2186D77C0(&qword_280EDFED0, type metadata accessor for BaseStyler);
    v22[4] = v14;
    v22[0] = v12;
    v15 = a2(0);
    v16 = swift_allocObject();
    v17 = __swift_mutable_project_boxed_opaque_existential_1(v22, v13);
    MEMORY[0x28223BE20](v17);
    v19 = (v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19);
    v21 = *v19;
    v16[5] = v13;
    v16[6] = v14;
    v16[2] = v21;
    __swift_destroy_boxed_opaque_existential_1(v22);
    result = __swift_destroy_boxed_opaque_existential_1(v23);
    a4[3] = v15;
    a4[4] = a3;
    *a4 = v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219261394@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE8E98);
  result = sub_219BE1E34();
  if (!v14)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_218718690(a1, v12);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE33B0);
  result = sub_219BE1E34();
  if (!v11)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219268588(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21872F37C();
  result = sub_219BE1E24();
  if (result)
  {
    v7 = result;
    v8 = type metadata accessor for SearchRouter();
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_2186CB1F0(&v13, (v9 + 15));
    sub_2186CB1F0(v12, (v9 + 3));
    v9[8] = v5;
    result = sub_2186CB1F0(&v10, (v9 + 9));
    v9[14] = v6;
    v9[20] = v7;
    a2[3] = v8;
    a2[4] = &off_282A8BA50;
    *a2 = v9;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_2192615C8(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SearchViewController();
  v2 = sub_219BE1E24();
  swift_unknownObjectWeakAssign();
}

uint64_t sub_219261648@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280ECD240);
  result = sub_219BE1E34();
  v5 = v41;
  if (!v41)
  {
    __break(1u);
    goto LABEL_8;
  }

  v6 = v42;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280ED7978);
  result = sub_219BE1E34();
  if (!v40)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ED5398);
  result = sub_219BE1E34();
  v7 = v37;
  if (!v37)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EC3D88);
  result = sub_219BE1E34();
  v8 = v35;
  if (!v35)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v30 = v38;
  v31 = a2;
  v29 = v36;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE1E34();
  if ((v34 & 1) == 0)
  {
    v9 = v33[5];
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v39, v40);
    v28 = &v28;
    MEMORY[0x28223BE20](v10);
    v12 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12);
    v14 = *v12;
    v15 = type metadata accessor for SearchRouter();
    v33[3] = v15;
    v33[4] = &off_282A8BA50;
    v33[0] = v14;
    type metadata accessor for SearchEventHandler();
    v16 = swift_allocObject();
    v17 = __swift_mutable_project_boxed_opaque_existential_1(v33, v15);
    MEMORY[0x28223BE20](v17);
    v19 = (&v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19);
    v21 = *v19;
    v32[3] = v15;
    v32[4] = &off_282A8BA50;
    v32[0] = v21;
    v16[3] = 0;
    swift_unknownObjectWeakInit();
    v16[4] = v5;
    v16[5] = v6;
    sub_218718690(v32, (v16 + 6));
    v22 = v30;
    v16[11] = v7;
    v16[12] = v22;
    v23 = v29;
    v16[13] = v8;
    v16[14] = v23;
    v16[15] = v9;
    ObjectType = swift_getObjectType();
    v25 = *(v6 + 16);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    v25(v26, &off_282A76F20, ObjectType, v6);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v32);
    *(v16[11] + 24) = &off_282A76F10;
    swift_unknownObjectWeakAssign();
    __swift_destroy_boxed_opaque_existential_1(v33);
    result = __swift_destroy_boxed_opaque_existential_1(v39);
    v27 = v31;
    *v31 = v16;
    v27[1] = &off_282A76F78;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_219261AB8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ECA1A8);
  result = sub_219BE1E34();
  if (!v15)
  {
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219268588(0, &unk_280E906B0, sub_2186FB6D4, &type metadata for SearchOfflineModel, MEMORY[0x277D33538]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2192670D8();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SearchBlueprintModifierFactory();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E0DC14(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = result;
  v14 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21872F37C();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219267D84();
  result = sub_219BE1E24();
  if (result)
  {
    v10 = result;
    sub_21879ABB8(0, qword_280ED7990, type metadata accessor for SearchBlueprintModifierFactory, &off_282A4A588, type metadata accessor for SearchInteractor);
    v11 = swift_allocObject();
    *(v11 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v11 + 113) = 0u;
    *(v11 + 104) = 0u;
    *(v11 + 88) = 0u;
    *(v11 + 48) = v15;
    *(v11 + 56) = v16;
    *(v11 + 32) = v6;
    *(v11 + 40) = v7;
    *(v11 + 64) = v5;
    *(v11 + 72) = v8;
    *(v11 + 80) = v9;
    *(v11 + 136) = v10;
    *(v15 + OBJC_IVAR____TtC7NewsUI217SearchDataManager_delegate + 8) = &off_282A49DF0;
    swift_unknownObjectWeakAssign();
    swift_unownedRetainStrong();
    swift_unknownObjectRetain();
    v12 = v5;

    swift_unknownObjectRetain();

    swift_unownedRetain();

    *(swift_allocObject() + 16) = v11;
    v13 = sub_219BF1AF4();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    *v14 = v11;
    v14[1] = &off_282A49E20;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_219261E5C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_219BE14C4();
  v25 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v24 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE14A4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v11 = result;
  v22 = v4;
  v23 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189871A8();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE02D4();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE0204();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v14 = result;
  v20 = v6;
  v21 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21872F37C();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v15 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FDF0);
  result = sub_219BE1E34();
  if (v27)
  {
    type metadata accessor for SearchTracker();
    v16 = swift_allocObject();
    v16[3] = 0;
    swift_unknownObjectWeakInit();
    sub_219268588(0, &unk_280EE7E08, sub_21926852C, &type metadata for SearchTracker.Event, MEMORY[0x277D6CAA0]);
    swift_allocObject();
    v16[14] = sub_219BE1D34();
    v16[4] = v11;
    v16[5] = v12;
    v16[6] = v13;
    v16[7] = v14;
    v16[8] = v15;
    sub_218718690(v26, (v16 + 9));
    (*(v25 + 104))(v24, *MEMORY[0x277D2F318], v22);

    sub_219BE1484();
    sub_2186D77C0(&qword_280EE8010, MEMORY[0x277D2F280]);
    v17 = v20;
    sub_219BDD1F4();

    (*(v23 + 8))(v9, v17);
    __swift_destroy_boxed_opaque_existential_1(v26);
    result = sub_2186D77C0(&qword_280EDD9C8, type metadata accessor for SearchTracker);
    v18 = v21;
    *v21 = v16;
    v18[1] = result;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_2192622C0@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v4 = sub_219BE1BF4();
  v41 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_219BED184();
  v7 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9F10);
  result = sub_219BE1E34();
  if (!v49)
  {
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9F20);
  result = sub_219BE1E34();
  v11 = v46;
  if (!v46)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v39 = v4;
  v37 = v47;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EC30E0);
  result = sub_219BE1E34();
  v38 = v44;
  if (!v44)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v36 = v45;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186F7FD0();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = result;
  v34 = v11;
  v35 = v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21873683C(0, &qword_280E90B40, sub_218713104, sub_219268458, MEMORY[0x277D33010]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21872F37C();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v14 = result;
  v33 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219267CAC();
  result = sub_219BE1E24();
  if (result)
  {
    v15 = result;
    v32 = type metadata accessor for SearchDataManager();
    v16 = objc_allocWithZone(v32);
    *&v16[OBJC_IVAR____TtC7NewsUI217SearchDataManager_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v17 = OBJC_IVAR____TtC7NewsUI217SearchDataManager_accessQueue;
    sub_2186C6148(0, &qword_280E8E3B0);
    v18 = v40;
    (*(v7 + 104))(v9, *MEMORY[0x277D851B8], v40);
    v19 = sub_219BF66E4();
    (*(v7 + 8))(v9, v18);
    *&v16[v17] = v19;
    sub_218718690(v48, &v16[OBJC_IVAR____TtC7NewsUI217SearchDataManager_searchService]);
    v20 = &v16[OBJC_IVAR____TtC7NewsUI217SearchDataManager_tagService];
    v21 = v37;
    v22 = v38;
    *v20 = v34;
    *(v20 + 1) = v21;
    v23 = &v16[OBJC_IVAR____TtC7NewsUI217SearchDataManager_subscriptionService];
    v24 = v36;
    *v23 = v22;
    *(v23 + 1) = v24;
    *&v16[OBJC_IVAR____TtC7NewsUI217SearchDataManager_feedServiceConfigFetcher] = v12;
    *&v16[OBJC_IVAR____TtC7NewsUI217SearchDataManager_feedService] = v13;
    v25 = MEMORY[0x277D6CA70];
    sub_2192684C8(0, &qword_280E8C0D8, MEMORY[0x277D6CA70], MEMORY[0x277D84560]);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_219C09BA0;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    sub_219BE1BE4();
    v43 = v26;
    sub_2186D77C0(&qword_280EE7E70, MEMORY[0x277D6CA70]);
    sub_2192684C8(0, &qword_280E8F610, v25, MEMORY[0x277D83940]);
    sub_218711654();
    sub_219BF7164();
    sub_2192684C8(0, &unk_280EE7198, sub_219268494, MEMORY[0x277D6CEE8]);
    swift_allocObject();

    *&v16[OBJC_IVAR____TtC7NewsUI217SearchDataManager_feedServiceConfig] = sub_219BE2D14();
    *&v16[OBJC_IVAR____TtC7NewsUI217SearchDataManager_featureAvailability] = v14;
    *&v16[OBJC_IVAR____TtC7NewsUI217SearchDataManager_feedPluginManager] = v15;
    v42.receiver = v16;
    v42.super_class = v32;
    swift_unknownObjectRetain();

    v27 = objc_msgSendSuper2(&v42, sel_init);
    v28 = *&v27[OBJC_IVAR____TtC7NewsUI217SearchDataManager_subscriptionService];
    v29 = v27;
    swift_unknownObjectRetain();
    sub_219274F04(v29, v28);
    swift_unknownObjectRelease();
    sub_2186D77C0(qword_280ED5518, type metadata accessor for SearchDataManager);

    sub_219BEE504();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    result = __swift_destroy_boxed_opaque_existential_1(v48);
    v30 = v33;
    *v33 = v29;
    v30[1] = &off_282A865C0;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_2192629F8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BEE244();
  result = sub_219BE1E24();
  if (result)
  {
    v2 = result;
    type metadata accessor for SearchModelFactory();
    result = swift_allocObject();
    *(result + 16) = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219262A94(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE9E20);
  result = sub_219BE1E34();
  if (!v43)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9F20);
  result = sub_219BE1E34();
  if (!v40)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SearchModelFactory();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v31 = result;
  v32 = v41;
  v33 = v40;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EC0430);
  result = sub_219BE1E34();
  if (v39)
  {
    v3 = __swift_mutable_project_boxed_opaque_existential_1(v42, v43);
    v30[1] = v30;
    MEMORY[0x28223BE20](v3);
    v5 = (v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v6 + 16))(v5);
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
    v30[0] = v30;
    MEMORY[0x28223BE20](v7);
    v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v9);
    v11 = *v5;
    v12 = type metadata accessor for HeadlineModelFactory();
    v37[3] = v12;
    v37[4] = &off_282A8B8E8;
    v37[0] = v11;
    v35 = &type metadata for SearchSectionFactory;
    v36 = &off_282A5F548;
    v13 = swift_allocObject();
    v34[0] = v13;
    v14 = *(v9 + 3);
    *(v13 + 48) = *(v9 + 2);
    *(v13 + 64) = v14;
    *(v13 + 80) = *(v9 + 8);
    v15 = *(v9 + 1);
    *(v13 + 16) = *v9;
    *(v13 + 32) = v15;
    type metadata accessor for SearchBlueprintModifierFactory();
    v16 = swift_allocObject();
    v17 = __swift_mutable_project_boxed_opaque_existential_1(v37, v12);
    MEMORY[0x28223BE20](v17);
    v19 = (v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19);
    v21 = __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
    MEMORY[0x28223BE20](v21);
    v23 = v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v24 + 16))(v23);
    v25 = *v19;
    v16[5] = v12;
    v16[6] = &off_282A8B8E8;
    v16[2] = v25;
    v16[13] = &type metadata for SearchSectionFactory;
    v16[14] = &off_282A5F548;
    v26 = swift_allocObject();
    v27 = *(v23 + 3);
    *(v26 + 48) = *(v23 + 2);
    *(v26 + 64) = v27;
    *(v26 + 80) = *(v23 + 8);
    v28 = *(v23 + 1);
    *(v26 + 16) = *v23;
    *(v26 + 32) = v28;
    v29 = v32;
    v16[7] = v33;
    v16[8] = v29;
    v16[9] = v31;
    v16[10] = v26;
    __swift_destroy_boxed_opaque_existential_1(v34);
    __swift_destroy_boxed_opaque_existential_1(v37);
    __swift_destroy_boxed_opaque_existential_1(v38);
    __swift_destroy_boxed_opaque_existential_1(v42);
    return v16;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_219262FC0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SearchModelFactory();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE9E20);
  result = sub_219BE1E34();
  if (!v11)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9F20);
  result = sub_219BE1E34();
  if (!v8)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BEE244();
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    a2[3] = &type metadata for SearchSectionFactory;
    a2[4] = &off_282A5F548;
    v7 = swift_allocObject();
    *a2 = v7;
    v7[2] = v5;
    result = sub_2186CB1F0(&v10, (v7 + 3));
    v7[8] = v8;
    v7[9] = v9;
    v7[10] = v6;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_21926315C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189871A8();
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219267194();
    result = sub_219BE1E24();
    if (result)
    {
      sub_2192670D8();
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

uint64_t sub_219263234(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2192677A8();
  result = sub_219BE1E24();
  if (result)
  {
    sub_2192682D8(0, &qword_280EE4598, MEMORY[0x277D6E3B8]);
    swift_allocObject();
    sub_2186D77C0(&qword_280EE3B98, sub_2192677A8);
    sub_219BE8FA4();
    sub_219BE6ED4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219263334(void *a1)
{
  sub_2192684C8(0, &qword_280EE3A90, MEMORY[0x277D6EB30], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  sub_219BEA594();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SearchBlueprintLayoutBuilder();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2192678C8(0, &qword_280EE41C8, sub_219267968, sub_2192675C4, MEMORY[0x277D6E7B0]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21873683C(0, &qword_280EE4118, sub_218E0DC14, sub_219267590, MEMORY[0x277D6E7C8]);
  result = sub_219BE1E24();
  if (result)
  {
    sub_2192677A8();
    swift_allocObject();
    return sub_219BEA474();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_219263550(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v3 = sub_219BE9534();
  result = sub_219BE1DE4();
  if (result)
  {
    v11 = v3;
    v12 = MEMORY[0x277D6E678];
    *&v10 = result;
    sub_219BEA494();
    __swift_destroy_boxed_opaque_existential_1(&v10);
    v5 = sub_219BE99D4();
    swift_allocObject();
    v6 = sub_219BE99C4();
    v11 = v5;
    v12 = MEMORY[0x277D6E7D8];
    *&v10 = v6;
    sub_219BEA494();
    __swift_destroy_boxed_opaque_existential_1(&v10);
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v7 = sub_219BF0214();
    sub_218718690(a2, &v10);
    v8 = swift_allocObject();
    sub_2186CB1F0(&v10, v8 + 16);
    v9 = sub_219BE1E04();

    if (v9)
    {
      v11 = v7;
      v12 = sub_2186D77C0(&unk_280E90FE0, MEMORY[0x277D32C00]);
      *&v10 = v9;
      sub_219BEA494();
      return __swift_destroy_boxed_opaque_existential_1(&v10);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_219263720(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E0DC14(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE9C54();
  result = sub_219BE1DE4();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE3DE0);
  result = sub_219BE1DF4();
  if (v3)
  {
    sub_21873683C(0, &qword_280EE4118, sub_218E0DC14, sub_219267590, MEMORY[0x277D6E7C8]);
    swift_allocObject();
    return sub_219BE99A4();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2192638F8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2192672A0();
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EE39D0);
    result = sub_219BE1E34();
    if (v3)
    {
      sub_219267194();
      swift_allocObject();
      return sub_219BE72C4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2192639F8()
{
  sub_2192678C8(0, &qword_280EE41C8, sub_219267968, sub_2192675C4, MEMORY[0x277D6E7B0]);
  swift_allocObject();
  return sub_219BE9964();
}

uint64_t sub_219263AA0(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void))
{
  a2(0);
  swift_allocObject();
  return a3();
}

uint64_t sub_219263AE4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EDC810);
  result = sub_219BE1E34();
  if (!v22)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21879ABB8(0, &unk_280E91DA0, MEMORY[0x277D33AC8], MEMORY[0x277D33AC0], MEMORY[0x277D31F40]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BF44C4();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE1E34();
  if ((v20 & 1) == 0)
  {
    v5 = v19[5];
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
    MEMORY[0x28223BE20](v6);
    v8 = (v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8);
    v10 = *v8;
    v11 = type metadata accessor for BaseStyler();
    v19[3] = v11;
    v12 = sub_2186D77C0(&qword_280EDFED0, type metadata accessor for BaseStyler);
    v19[4] = v12;
    v19[0] = v10;
    type metadata accessor for SearchBlueprintLayoutBuilder();
    v13 = swift_allocObject();
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v19, v11);
    MEMORY[0x28223BE20](v14);
    v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16);
    v18 = *v16;
    v13[5] = v11;
    v13[6] = v12;
    v13[2] = v18;
    v13[7] = v3;
    v13[8] = v4;
    v13[9] = v5;
    __swift_destroy_boxed_opaque_existential_1(v19);
    __swift_destroy_boxed_opaque_existential_1(v21);
    return v13;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_219263E30(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189871A8();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2192672A0();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE3DE0);
  result = sub_219BE1DF4();
  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE39D0);
  result = sub_219BE1E34();
  if (!v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21873683C(0, &unk_280EE4668, sub_2189871A8, sub_21926755C, MEMORY[0x277D6E388]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE70E4();
  result = sub_219BE1DE4();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (!v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    sub_2186D77C0(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
    sub_219267A58();
    v4 = objc_allocWithZone(v3);
    return sub_219BE8754();
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_21926416C(uint64_t a1, void *a2)
{
  v3 = sub_219BE8FC4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BF3E94();
  if (sub_219BE1E24())
  {
    sub_2186D77C0(&qword_280E8FF80, MEMORY[0x277D34268]);
  }

  sub_219BE8704();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_21873683C(0, &qword_280EE48A0, sub_2192672A0, sub_219267774, MEMORY[0x277D6E068]);
  v8 = v7;
  v9 = sub_219BE1E24();
  v10 = v9;
  if (v9)
  {
    v9 = sub_21926823C();
  }

  else
  {
    v8 = 0;
    v19 = 0;
    v20 = 0;
  }

  v18 = v10;
  v21 = v8;
  v22 = v9;
  sub_219BE86F4();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_21873683C(0, &qword_280EE4118, sub_218E0DC14, sub_219267590, MEMORY[0x277D6E7C8]);
  v12 = v11;
  v13 = sub_219BE1E24();
  v14 = v13;
  if (v13)
  {
    v13 = sub_2192681A0();
  }

  else
  {
    v12 = 0;
    v19 = 0;
    v20 = 0;
  }

  v18 = v14;
  v21 = v12;
  v22 = v13;
  sub_219BE8724();
  (*(v4 + 104))(v6, *MEMORY[0x277D6E3C8], v3);
  sub_219BE86C4();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280E8FF70);
  result = sub_219BE1E34();
  if (v18)
  {
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_218E0DC14(0);
    result = sub_219BE1E24();
    if (result)
    {
      v16 = result;
      swift_getObjectType();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v18 = v16;
      sub_219BF35C4();
      swift_allocObject();
      sub_219267590();

      sub_219BF35A4();
      sub_219BF3EC4();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21926455C()
{
  sub_2192684C8(0, &qword_27CC18130, sub_218AF3D74, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v15 - v1;
  sub_218AF3D74(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_219BE86A4();

    v16 = v15[1];
    sub_2189871A8();
    sub_21926755C();
    sub_219BE7B94();

    v10 = sub_218B13AC4();
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v10 = 0xF000000000000007;
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    sub_219BE86A4();

    v15[0] = v16;
    sub_2189871A8();
    sub_21926755C();
    sub_219BE7B94();

    (*(v5 + 56))(v2, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v2, 1, 1, v4);
  }

  sub_219BE6684();
  type metadata accessor for SearchSectionDescriptor();
  type metadata accessor for SearchModel(0);
  sub_2186D77C0(qword_280EC3630, type metadata accessor for SearchSectionDescriptor);
  sub_2186D77C0(&qword_280EDF480, type metadata accessor for SearchModel);
  sub_219BF44D4();
  sub_2192683CC(v2);
  type metadata accessor for SearchFeedServiceConfig();
  sub_2186D77C0(&qword_280EC37A0, type metadata accessor for SearchFeedServiceConfig);
  v13 = sub_219BE6624();

  sub_21885AB78(v10);
  return v13;
}

uint64_t sub_2192648E8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21879ABB8(0, &qword_280EE44C0, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D6E608]);
  result = sub_219BE1DE4();
  if (result)
  {
    v2 = result;
    v3 = [objc_allocWithZone(MEMORY[0x277D752A0]) initWithFrame:result collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2192649C0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E4C0);
  result = sub_219BE1DE4();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21926741C();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2192675F8();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2192676E8();
  result = sub_219BE1E24();
  if (result)
  {
    sub_2192672A0();
    swift_allocObject();
    return sub_219BE7BB4();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_219264B24@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2192672A0();
  result = sub_219BE1E24();
  if (result)
  {
    sub_219BE7BC4();

    sub_219BE95A4();
    swift_allocObject();
    result = sub_219BE9594();
    v4 = MEMORY[0x277D6E690];
    *a2 = result;
    a2[1] = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219264BDC()
{
  v0 = sub_219BE80A4();
  MEMORY[0x28223BE20](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6DDE0]);
  return sub_219BE9574();
}

uint64_t sub_219264CAC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE9C54();
  result = sub_219BE1DE4();
  if (result)
  {
    sub_21879ABB8(0, &qword_280EE44C0, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D6E608]);
    v3 = objc_allocWithZone(v2);
    return sub_219BE9454();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219264D6C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189871A8();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E0DC14(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SearchBlueprintViewCellProvider();
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
  type metadata accessor for SearchBlueprintViewSupplementaryViewProvider();
  result = sub_219BE1E24();
  if (result)
  {
    *&v8[0] = v3;
    sub_21926741C();
    v7 = objc_allocWithZone(v6);
    return sub_219BE9B64();
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_219264F08(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C6148(0, &qword_280E8E4C0);
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

uint64_t sub_219265010(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280EE3C80);
  result = sub_219BE1DF4();
  if (v4)
  {
    __swift_project_boxed_opaque_existential_1(v3, v4);
    sub_219BEA274();
    sub_219BE9B74();

    return __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2192650DC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189871A8();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E0DC14(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21873683C(0, &unk_280EE4668, sub_2189871A8, sub_21926755C, MEMORY[0x277D6E388]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (!v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    sub_2186D77C0(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
    sub_2192675F8();
    v4 = objc_allocWithZone(v3);
    return sub_219BE9754();
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_21926530C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BE70E4();
  sub_219BE1DE4();
  sub_219BE9764();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219267BF0();
  if (sub_219BE1E24())
  {
    sub_2186D77C0(&qword_280EE4080, sub_219267BF0);
  }

  sub_219BE9774();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219267A58();
  sub_219BE1E24();
  sub_219BE9714();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BE9564();
  sub_219BE1DE4();
  sub_219BE9784();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219267CAC();
  if (!sub_219BE1E24())
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_219BE9724();
  v3 = sub_219BE9704();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SearchViewController();
  v4 = sub_219BE1E24();
  if (!v4)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v5 = v4;
  sub_219BE9244();
}

uint64_t sub_219265528(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189871A8();
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_218E0DC14(0);
    result = sub_219BE1E24();
    if (result)
    {
      sub_2192676E8();
      v4 = objc_allocWithZone(v3);
      return sub_219BE9F24();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2192655E8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E91810);
  result = sub_219BE1E34();
  if (v3)
  {
    type metadata accessor for SearchBlueprintViewCellProvider();
    v2 = swift_allocObject();
    v2[3] = 0;
    swift_unknownObjectWeakInit();
    v2[4] = v3;
    v2[5] = v4;
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_219265694(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SearchViewController();
  v4 = sub_219BE1E24();
  v3 = &off_282A47070;
  if (!v4)
  {
    v3 = 0;
  }

  *(v2 + 24) = v3;
  swift_unknownObjectWeakAssign();
}

uint64_t sub_219265728(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90FD0);
  sub_218718690(a1, v5);
  v2 = swift_allocObject();
  sub_2186CB1F0(v5, v2 + 16);
  sub_219BE1E14();

  if (v7)
  {
    type metadata accessor for SearchBlueprintViewSupplementaryViewProvider();
    v4 = swift_allocObject();
    *(v4 + 24) = 0;
    swift_unknownObjectWeakInit();
    sub_2186CB1F0(&v6, v4 + 32);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21926583C(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218C3070C(0, &qword_280E8B8A8, MEMORY[0x277D84560]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09BA0;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219267B34();
  v5 = v4;
  result = sub_219BE1E24();
  if (result)
  {
    v7 = result;
    *(v3 + 56) = v5;
    *(v3 + 64) = sub_2186D77C0(&unk_280E91908, sub_219267B34);
    *(v3 + 32) = v7;
    sub_218C3070C(0, &qword_280E8EF20, MEMORY[0x277D83940]);
    sub_219BE1BA4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_219265994(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SearchViewController();
  v3 = sub_219BE1E24();
  if (v3)
  {
    *(v2 + 24) = &off_282A47060;
    v4 = v3;
    swift_unknownObjectWeakAssign();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_219265A28(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2192672A0();
  result = sub_219BE1E24();
  if (result)
  {
    sub_21873683C(0, &qword_280EE48A0, sub_2192672A0, sub_219267774, MEMORY[0x277D6E068]);
    swift_allocObject();
    return sub_219BE8914();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219265AE4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189871A8();
  result = sub_219BE1E24();
  if (result)
  {
    sub_219267B34();
    swift_allocObject();
    return sub_219BEEB34();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219265B7C(void *a1)
{
  v2 = sub_219BE9BC4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_219BE9BE4();
  MEMORY[0x28223BE20](v6 - 8);
  sub_21873683C(0, &qword_280EE4700, sub_2189871A8, sub_21926755C, MEMORY[0x277D6E380]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189871A8();
  result = sub_219BE1E24();
  if (result)
  {
    v13 = result;
    (*(v9 + 104))(v11, *MEMORY[0x277D6E378], v8);
    *v5 = 0;
    (*(v3 + 104))(v5, *MEMORY[0x277D6E828], v2);
    sub_219BE9BD4();
    v14[1] = v13;
    sub_21873683C(0, &unk_280EE4668, sub_2189871A8, sub_21926755C, MEMORY[0x277D6E388]);
    swift_allocObject();
    return sub_219BE8EC4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219265E5C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_218E0DC14(0);
  result = sub_219BE1E24();
  if (result)
  {
    sub_2186D77C0(&unk_280EE4BF0, sub_218E0DC14);
    sub_219BE8E94();
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_2186C709C(0, &qword_280E90FB0);
    sub_219BE1E34();
    sub_219267FCC();
    swift_allocObject();
    sub_219BEFCE4();
    sub_2186D77C0(&unk_280E91158, sub_219267FCC);
    sub_219BE8EA4();

    sub_219268074();
    swift_allocObject();
    sub_219BF0074();
    sub_2186D77C0(&unk_280E91048, sub_219268074);
    sub_219BE8EA4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219266084(void *a1)
{
  sub_2187F2110();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C09EC0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219267BF0();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = sub_2186D77C0(&qword_280EE4088, sub_219267BF0);
    *(v2 + 32) = v4;
    *(v2 + 40) = v5;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219BE8A54();
    result = sub_219BE1DE4();
    if (result)
    {
      v6 = MEMORY[0x277D6E168];
      *(v2 + 48) = result;
      *(v2 + 56) = v6;
      sub_219BE70E4();
      swift_allocObject();
      return sub_219BE70D4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2192661B8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2192672A0();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189871A8();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (!v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    sub_2186D77C0(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
    sub_219267BF0();
    swift_allocObject();
    return sub_219BE9AB4();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_219266390(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2192672A0();
  result = sub_219BE1E24();
  if (result)
  {
    sub_219BE7BC4();

    sub_219BE8A54();
    swift_allocObject();
    return sub_219BE8A44();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219266444(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219267A58();
  v6 = sub_219BE1E24();
  if (v6)
  {
    v7 = v6;
    v8 = a3();
    v6 = v7;
  }

  else
  {
    v8 = 0;
  }

  return a4(v6, v8);
}

uint64_t sub_2192664D4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219267A58();
  v4 = v3;
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    a2[3] = v4;
    result = sub_2186D77C0(&qword_280EE4A68, sub_219267A58);
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21926657C(void *a1)
{
  sub_2192684C8(0, &unk_280EE3E00, MEMORY[0x277D6E8E0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (v14 - v3);
  v5 = sub_219BE9524();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = sub_219BE9564();
  result = sub_219BE1DE4();
  if (result)
  {
    v14[4] = v9;
    v14[5] = MEMORY[0x277D6E680];
    v14[1] = result;
    *v8 = 5;
    (*(v6 + 104))(v8, *MEMORY[0x277D6E670], v5);
    *v4 = 10;
    v11 = *MEMORY[0x277D6E8D8];
    v12 = sub_219BE9D64();
    v13 = *(v12 - 8);
    (*(v13 + 104))(v4, v11, v12);
    (*(v13 + 56))(v4, 0, 1, v12);
    sub_219BE9534();
    swift_allocObject();
    return sub_219BE9514();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2192667D8()
{
  sub_2192684C8(0, &unk_280EE3E00, MEMORY[0x277D6E8E0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_219BE8944();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE8544();
  MEMORY[0x28223BE20](v7 - 8);
  sub_219BE9564();
  if (qword_280E8D828 != -1)
  {
    swift_once();
  }

  v8 = qword_280F61720;
  (*(v4 + 104))(v6, *MEMORY[0x277D6E080], v3);
  v9 = sub_219BE9D64();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  v10 = v8;
  sub_219BE8534();
  return sub_219BE9554();
}

uint64_t sub_219266A0C(void *a1)
{
  v2 = sub_219BF0634();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BEDA24();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E925B0 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v6, qword_280F61890);
  (*(v7 + 16))(v9, v10, v6);
  (*(v3 + 104))(v5, *MEMORY[0x277D32EA8], v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E901A0);
  result = sub_219BE1DF4();
  if (v12)
  {
    sub_219267CAC();
    return sub_219BEE4F4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219266C44(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219267A58();
  result = sub_219BE1E24();
  if (result)
  {
    sub_2186D77C0(&unk_280EE4A80, sub_219267A58);
    return sub_219BEE4B4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219266CE8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v7);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SearchModelFactory();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_21873683C(0, &qword_280E90498, type metadata accessor for SearchModelFactory, sub_219267E94, MEMORY[0x277D33858]);
  swift_allocObject();
  sub_219BF2444();
  sub_219267EC8();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ED5398);
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

uint64_t sub_219266EC8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E0DC14(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C6148(0, &qword_280E8E350);
    result = sub_219BE1E24();
    if (result)
    {
      sub_219267D84();
      swift_allocObject();
      return sub_219BDEB44();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_219266FB8(uint64_t a1)
{
  sub_219BE8664();
  v2 = sub_219BE7BC4();

  [v2 reloadData];

  if ([*(a1 + OBJC_IVAR____TtC7NewsUI220SearchViewController_featureAvailability) useOfflineMode])
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v5 = [Strong searchTextField];

      __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC7NewsUI220SearchViewController_offlineProvider), *(a1 + OBJC_IVAR____TtC7NewsUI220SearchViewController_offlineProvider + 24));
      [v5 setEnabled_];
    }
  }
}

void sub_2192670D8()
{
  if (!qword_280EE55E0)
  {
    sub_2189871A8();
    sub_219267194();
    sub_21926755C();
    sub_2186D77C0(&qword_280EE52D8, sub_219267194);
    v0 = sub_219BE6F54();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE55E0);
    }
  }
}

void sub_219267194()
{
  if (!qword_280EE52D0)
  {
    type metadata accessor for SearchSectionDescriptor();
    type metadata accessor for SearchModel(255);
    sub_2192672A0();
    sub_2186D77C0(qword_280EC3630, type metadata accessor for SearchSectionDescriptor);
    sub_2186D77C0(&qword_280EDF480, type metadata accessor for SearchModel);
    sub_219267774();
    v0 = sub_219BE72E4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE52D0);
    }
  }
}

void sub_2192672A0()
{
  if (!qword_280EE4F18)
  {
    sub_2186C6148(255, &qword_280E8E4C0);
    sub_21926741C();
    sub_2192675F8();
    sub_2192676E8();
    type metadata accessor for SearchViewController();
    sub_2186D77C0(&unk_280EE3F00, sub_21926741C);
    sub_2186D77C0(&unk_280EE4390, sub_2192675F8);
    sub_2186D77C0(&unk_280EE3D90, sub_2192676E8);
    v0 = sub_219BE7BE4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE4F18);
    }
  }
}

void sub_21926741C()
{
  if (!qword_280EE3EF8)
  {
    sub_2189871A8();
    sub_218E0DC14(255);
    type metadata accessor for SearchBlueprintViewCellProvider();
    type metadata accessor for SearchBlueprintViewSupplementaryViewProvider();
    sub_21926755C();
    sub_219267590();
    sub_2186D77C0(qword_280EA82C0, type metadata accessor for SearchBlueprintViewCellProvider);
    sub_2186D77C0(qword_280EE2290, type metadata accessor for SearchBlueprintViewSupplementaryViewProvider);
    sub_2192675C4();
    v0 = sub_219BE9B94();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE3EF8);
    }
  }
}

void sub_2192675F8()
{
  if (!qword_280EE4388)
  {
    sub_2189871A8();
    sub_218E0DC14(255);
    type metadata accessor for SearchViewController();
    sub_21926755C();
    sub_219267590();
    sub_2186D77C0(&qword_280ECD190, type metadata accessor for SearchViewController);
    sub_2192675C4();
    v0 = sub_219BE9794();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE4388);
    }
  }
}

void sub_2192676E8()
{
  if (!qword_280EE3D88)
  {
    sub_2189871A8();
    sub_218E0DC14(255);
    sub_21926755C();
    sub_219267590();
    v0 = sub_219BE9F34();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE3D88);
    }
  }
}

void sub_2192677A8()
{
  if (!qword_280EE3B90)
  {
    sub_218E0DC14(255);
    type metadata accessor for SearchBlueprintLayoutBuilder();
    sub_2192678C8(255, &qword_280EE41C8, sub_219267968, sub_2192675C4, MEMORY[0x277D6E7B0]);
    sub_219267590();
    sub_2186D77C0(&unk_280EB3100, type metadata accessor for SearchBlueprintLayoutBuilder);
    sub_2192679BC();
    v0 = sub_219BEA4A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE3B90);
    }
  }
}

void sub_2192678C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, void *))
{
  if (!*a2)
  {
    v12[0] = &type metadata for SearchLayoutSectionDescriptor;
    v12[1] = type metadata accessor for SearchLayoutModel();
    v12[2] = a3();
    v12[3] = a4();
    v10 = a5(a1, v12);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_219267968()
{
  result = qword_280EAEF88;
  if (!qword_280EAEF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAEF88);
  }

  return result;
}

unint64_t sub_2192679BC()
{
  result = qword_280EE41D0;
  if (!qword_280EE41D0)
  {
    sub_2192678C8(255, &qword_280EE41C8, sub_219267968, sub_2192675C4, MEMORY[0x277D6E7B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE41D0);
  }

  return result;
}

void sub_219267A58()
{
  if (!qword_280EE4A60)
  {
    sub_2189871A8();
    sub_2192672A0();
    type metadata accessor for SearchViewController();
    sub_21926755C();
    sub_219267774();
    sub_2186D77C0(&qword_280ECD190, type metadata accessor for SearchViewController);
    v0 = sub_219BE8774();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE4A60);
    }
  }
}

void sub_219267B34()
{
  if (!qword_280E91900)
  {
    type metadata accessor for SearchFeedServiceConfig();
    sub_2189871A8();
    sub_2186D77C0(&qword_280EC37A0, type metadata accessor for SearchFeedServiceConfig);
    sub_21926755C();
    v0 = sub_219BEEB44();
    if (!v1)
    {
      atomic_store(v0, &qword_280E91900);
    }
  }
}

void sub_219267BF0()
{
  if (!qword_280EE4078)
  {
    sub_2192672A0();
    sub_2189871A8();
    sub_219267774();
    sub_2186D77C0(&qword_280EE5518, sub_2189871A8);
    v0 = sub_219BE9AD4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE4078);
    }
  }
}

void sub_219267CAC()
{
  if (!qword_280E91BB8)
  {
    type metadata accessor for SearchFeedServiceConfig();
    sub_2186D77C0(&qword_280EC37A0, type metadata accessor for SearchFeedServiceConfig);
    sub_2186D77C0(&qword_280ED9BA8, type metadata accessor for SearchFeedGroup);
    v0 = sub_219BEE514();
    if (!v1)
    {
      atomic_store(v0, &qword_280E91BB8);
    }
  }
}

void sub_219267D84()
{
  if (!qword_280EE8A40)
  {
    sub_218E0DC14(255);
    sub_219267590();
    sub_2186D77C0(qword_280ED5460, type metadata accessor for SearchLayoutModel);
    sub_2186D77C0(&qword_280ED5458, type metadata accessor for SearchLayoutModel);
    sub_2186D77C0(&qword_280ED5440, type metadata accessor for SearchLayoutModel);
    v0 = sub_219BDEB74();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE8A40);
    }
  }
}

unint64_t sub_219267EC8()
{
  result = qword_280E904A0;
  if (!qword_280E904A0)
  {
    sub_21873683C(255, &qword_280E90498, type metadata accessor for SearchModelFactory, sub_219267E94, MEMORY[0x277D33858]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E904A0);
  }

  return result;
}

void sub_219267FCC()
{
  if (!qword_280E91150)
  {
    sub_2189871A8();
    sub_21926755C();
    sub_2186D77C0(&qword_280EDF4A0, type metadata accessor for SearchModel);
    v0 = sub_219BEFCF4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E91150);
    }
  }
}

void sub_219268074()
{
  if (!qword_280E91040)
  {
    sub_2189871A8();
    type metadata accessor for SearchFeedServiceConfig();
    sub_21926755C();
    sub_2186D77C0(&qword_280EC37A0, type metadata accessor for SearchFeedServiceConfig);
    sub_2186D77C0(&qword_280EDF4A0, type metadata accessor for SearchModel);
    v0 = sub_219BF0084();
    if (!v1)
    {
      atomic_store(v0, &qword_280E91040);
    }
  }
}

unint64_t sub_2192681A0()
{
  result = qword_280EE4120;
  if (!qword_280EE4120)
  {
    sub_21873683C(255, &qword_280EE4118, sub_218E0DC14, sub_219267590, MEMORY[0x277D6E7C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE4120);
  }

  return result;
}

unint64_t sub_21926823C()
{
  result = qword_280EE48A8;
  if (!qword_280EE48A8)
  {
    sub_21873683C(255, &qword_280EE48A0, sub_2192672A0, sub_219267774, MEMORY[0x277D6E068]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE48A8);
  }

  return result;
}

void sub_2192682D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for SearchSectionDescriptor();
    v8[1] = type metadata accessor for SearchModel(255);
    v8[2] = sub_2186D77C0(qword_280EC3630, type metadata accessor for SearchSectionDescriptor);
    v8[3] = sub_2186D77C0(&qword_280EDF480, type metadata accessor for SearchModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_2192683CC(uint64_t a1)
{
  sub_2192684C8(0, &qword_27CC18130, sub_218AF3D74, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2192684C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_21926852C()
{
  result = qword_280EDD9E0[0];
  if (!qword_280EDD9E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EDD9E0);
  }

  return result;
}

void sub_219268588(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_21926861C(uint64_t a1)
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

uint64_t sub_219268778()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_219268848@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D6DD08];
  v3 = sub_219BE7C94();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2192688BC()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_21926897C()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

id sub_219268A64(void *a1)
{
  v2 = sub_219BEB394();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BEB384();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 view];
  if (result)
  {
    v11 = result;
    v12 = [result window];

    if (v12)
    {

      v13 = MEMORY[0x277D6ECA8];
    }

    else
    {
      v13 = MEMORY[0x277D6ECB0];
    }

    (*(v7 + 104))(v9, *v13, v6);
    sub_219BE8644();
    (*(v3 + 104))(v5, *MEMORY[0x277D6EC88], v2);
    sub_219BE6BD4();

    (*(v3 + 8))(v5, v2);
    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_219268C9C(uint64_t a1)
{
  v2 = sub_219BE61B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  result = (*(v3 + 88))(v5, v2);
  if (result != *MEMORY[0x277D6D520])
  {
    if (result == *MEMORY[0x277D6D518])
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        sub_219268A64(result);
        return swift_unknownObjectRelease();
      }
    }

    else if (result == *MEMORY[0x277D6D510])
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        *(swift_allocObject() + 16) = result;
        swift_unknownObjectRetain();
        sub_219BE3494();
        swift_unknownObjectRelease();
      }
    }

    else
    {
      result = sub_219BF7514();
      __break(1u);
    }
  }

  return result;
}

void sub_219268F50()
{
  if (!qword_280E91F90)
  {
    type metadata accessor for ChannelSectionDirectoryTagFeedGroupConfigData();
    sub_21926C2C0(&qword_280E93C48, type metadata accessor for ChannelSectionDirectoryTagFeedGroupConfigData);
    sub_21926C2C0(&qword_280E93C50, type metadata accessor for ChannelSectionDirectoryTagFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E91F90);
    }
  }
}

uint64_t type metadata accessor for ChannelSectionDirectoryTagFeedGroupEmitter()
{
  result = qword_280E950B0;
  if (!qword_280E950B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21926907C()
{
  sub_219268F50();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ChannelSectionDirectoryTagFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      sub_2186C709C(319, &qword_280E90510);
      if (v2 <= 0x3F)
      {
        sub_2186C709C(319, &qword_280EE9F20);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_219269160()
{
  type metadata accessor for ChannelSectionDirectoryTagFeedGroupEmitter();
  sub_2189AD5C8();
  v0 = sub_219BEE964();
  sub_21926BF00(0, &qword_280E8B8E0, sub_218A59E00, MEMORY[0x277D84560]);
  sub_218A59E00(0);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C09BA0;
  sub_218DAADD4(0, &qword_280E91240, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D328E0]);
  swift_allocObject();
  *(v5 + v4) = sub_219BEFB94();
  (*(v3 + 104))(v5 + v4, *MEMORY[0x277D32308], v2);
  sub_2191EDA0C(v5);
  return v0;
}

uint64_t sub_219269354(uint64_t a1)
{
  v3 = type metadata accessor for ChannelSectionDirectoryTagFeedGroupEmitter();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE3204();
  v23 = type metadata accessor for ChannelSectionDirectoryTagFeedGroupEmitter;
  v24 = v1;
  sub_21926BFD4(v1, v6, type metadata accessor for ChannelSectionDirectoryTagFeedGroupEmitter);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v25 = v7 + v5;
  v8 = (v7 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  sub_21926BB0C(v6, v9 + v7);
  *(v9 + v8) = a1;

  v10 = sub_219BE2E54();
  sub_21926BC08();
  sub_219BE2F64();

  v11 = v23;
  sub_21926BFD4(v1, v6, v23);
  v12 = swift_allocObject();
  sub_21926BB0C(v6, v12 + v7);
  *(v12 + v8) = a1;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_21926BCA8;
  *(v13 + 24) = v12;

  v14 = sub_219BE2E54();
  sub_219BF1904();
  sub_219BE2F64();

  v15 = v24;
  sub_21926BFD4(v24, v6, v11);
  v16 = swift_allocObject();
  sub_21926BB0C(v6, v16 + v7);
  *(v16 + v8) = a1;

  v17 = sub_219BE2E54();
  sub_218DAADD4(0, &qword_280E91720, type metadata accessor for TagFeedGroup, sub_21877D2B0, MEMORY[0x277D324E8]);
  sub_219BE2F74();

  sub_21926BFD4(v15, v6, v11);
  v18 = swift_allocObject();
  sub_21926BB0C(v6, v18 + v7);
  v19 = sub_219BE2E54();
  v20 = sub_219BE3064();

  return v20;
}

uint64_t sub_219269700(id *a1)
{
  v2 = [*a1 backingChannel];
  if (v2)
  {
    v3 = v2;
    sub_21926C03C(v2);
    if (v1)
    {
      return swift_unknownObjectRelease();
    }

    else
    {
      type metadata accessor for ChannelSectionDirectoryTagFeedGroupEmitter();
      v7 = off_282A4D758;
      type metadata accessor for TagService();
      v7();

      v8 = sub_219BE2E54();
      sub_21926C200();
      sub_219BE30F4();

      *(swift_allocObject() + 16) = v3;
      swift_unknownObjectRetain();
      v9 = sub_219BE2E54();
      sub_21926BC08();
      v10 = sub_219BE2F74();
      swift_unknownObjectRelease();

      return v10;
    }
  }

  else
  {
    v5 = sub_219BEEDD4();
    sub_21926C2C0(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, *MEMORY[0x277D323B8], v5);
    return swift_willThrow();
  }
}

size_t sub_219269928(uint64_t a1, void *a2, unint64_t a3)
{
  v96 = a2;
  v102 = a1;
  v4 = sub_219BEF9C4();
  v116 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v115 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_219BEF564();
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v114 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_219BEFBD4();
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v111 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D83D88];
  sub_21926BF00(0, &unk_280E90FA0, MEMORY[0x277D32C48], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v108 = &v91 - v10;
  v11 = sub_219BF0BD4();
  MEMORY[0x28223BE20](v11 - 8);
  v99 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21926BF00(0, &qword_280E90300, MEMORY[0x277D33AA8], v8);
  MEMORY[0x28223BE20](v13 - 8);
  v103 = &v91 - v14;
  sub_21926BF00(0, &qword_280E90380, MEMORY[0x277D339F0], v8);
  MEMORY[0x28223BE20](v15 - 8);
  v107 = &v91 - v16;
  sub_21926BF00(0, &qword_280E90150, MEMORY[0x277D33EC8], v8);
  MEMORY[0x28223BE20](v17 - 8);
  v98 = &v91 - v18;
  sub_21926BF00(0, &qword_280E91A70, sub_2189AD5C8, v8);
  MEMORY[0x28223BE20](v19 - 8);
  v97 = &v91 - v20;
  v106 = sub_219BF2AB4();
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v104 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21926BF00(0, &unk_280E8FF30, sub_218A42400, v8);
  MEMORY[0x28223BE20](v22 - 8);
  v95 = &v91 - v23;
  v92 = type metadata accessor for ChannelSectionDirectoryTagFeedGroupConfigData();
  MEMORY[0x28223BE20](v92);
  v94 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_219BF1934();
  v125 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v122 = &v91 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21926BF00(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], v8);
  MEMORY[0x28223BE20](v26 - 8);
  v93 = &v91 - v27;
  v28 = sub_219BF2034();
  v100 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v121 = &v91 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_219BF3C84();
  v31 = *(v30 - 8);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = (&v91 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v32);
  v36 = (&v91 - v35);
  v37 = sub_219BF3E84();
  v119 = *(v37 - 8);
  v120 = v37;
  MEMORY[0x28223BE20](v37);
  v118 = &v91 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >> 62)
  {
    v39 = sub_219BF7214();
  }

  else
  {
    v39 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v40 = MEMORY[0x277D84F90];
  v117 = v4;
  v101 = v28;
  if (v39)
  {
    v129 = a3;
    v130[0] = MEMORY[0x277D84F90];
    result = sub_218C34A88(0, v39 & ~(v39 >> 63), 0);
    if (v39 < 0)
    {
      __break(1u);
      return result;
    }

    v42 = v130[0];
    if ((v129 & 0xC000000000000001) != 0)
    {
      v43 = 0;
      LODWORD(v128) = *MEMORY[0x277D34100];
      v127 = (v31 + 32);
      do
      {
        v44 = *(MEMORY[0x21CECE0F0](v43, v129) + 16);
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        *v36 = v44;
        (*(v31 + 104))(v36, v128, v30);
        v130[0] = v42;
        v46 = *(v42 + 16);
        v45 = *(v42 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_218C34A88(v45 > 1, v46 + 1, 1);
          v42 = v130[0];
        }

        ++v43;
        *(v42 + 16) = v46 + 1;
        (*(v31 + 32))(v42 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v46, v36, v30);
      }

      while (v39 != v43);
    }

    else
    {
      v47 = v129 + 32;
      LODWORD(v129) = *MEMORY[0x277D34100];
      v127 = *(v31 + 104);
      *&v128 = v31 + 104;
      v126 = (v31 + 32);
      do
      {
        *v34 = *(*v47 + 16);
        (v127)(v34, v129, v30);
        v130[0] = v42;
        v48 = *(v42 + 16);
        v49 = *(v42 + 24);
        swift_unknownObjectRetain();
        if (v48 >= v49 >> 1)
        {
          sub_218C34A88(v49 > 1, v48 + 1, 1);
          v42 = v130[0];
        }

        *(v42 + 16) = v48 + 1;
        (*(v31 + 32))(v42 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v48, v34, v30);
        v47 += 8;
        --v39;
      }

      while (v39);
    }

    v40 = MEMORY[0x277D84F90];
  }

  v50 = v40;
  sub_218F0B984(v40);
  sub_218F0BA7C(v50);
  sub_218F0BB90(v50);
  v51 = v118;
  sub_219BF3E74();
  v127 = MEMORY[0x277D84560];
  sub_21926BF00(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
  v52 = v119;
  v53 = (*(v119 + 80) + 32) & ~*(v119 + 80);
  v54 = swift_allocObject();
  v128 = xmmword_219C09BA0;
  *(v54 + 16) = xmmword_219C09BA0;
  (*(v52 + 16))(v54 + v53, v51, v120);
  v91 = sub_219BEC004();
  v55 = *(v91 - 8);
  v126 = *(v55 + 56);
  v129 = v55 + 56;
  v56 = v93;
  v126(v93, 1, 1, v91);
  sub_219A95188(v50);
  sub_219A95188(v50);
  sub_219A951A0(v50);
  sub_219A951B8(v50);
  sub_219A952CC(v50);
  sub_219A952E4(v50);
  sub_219A953F8(v50);
  sub_219BF2024();
  sub_219268F50();
  v57 = v94;
  sub_219BEDD14();
  v58 = *(v92 + 20);
  sub_219BEDCA4();
  v59 = [v96 identifier];
  sub_219BF5414();

  v60 = v56;
  v126(v56, 1, 1, v91);
  sub_218A42400(0);
  v62 = v95;
  (*(*(v61 - 8) + 56))(v95, 1, 1, v61);
  sub_219BF1764();

  sub_21926BF64(v62, &unk_280E8FF30, sub_218A42400);
  sub_21926BF64(v60, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
  v63 = *(v125 + 8);
  v125 += 8;
  v129 = v63;
  v63(&v57[v58], v123);
  v64 = type metadata accessor for ChannelSectionDirectoryTagFeedGroupEmitter();
  v65 = v124;
  v66 = (v124 + *(v64 + 24));
  v67 = v66[3];
  v126 = v66[4];
  v96 = __swift_project_boxed_opaque_existential_1(v66, v67);
  v68 = *(v64 + 20);
  sub_2189AD5C8();
  v70 = v69;
  v71 = *(v69 - 8);
  v72 = v97;
  (*(v71 + 16))(v97, v65 + v68, v69);
  (*(v71 + 56))(v72, 0, 1, v70);
  sub_219BEF0B4();
  v73 = *(v130[0] + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v74 = sub_219BF35D4();
  (*(*(v74 - 8) + 56))(v98, 1, 1, v74);
  LOBYTE(v131) = 4;
  sub_218DAADD4(0, &qword_280E90090, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  sub_219BEF0B4();
  sub_218CB8CBC();

  sub_219BEF0B4();
  v75 = *(v131 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  sub_219BF3914();
  swift_allocObject();
  sub_219BF3904();
  sub_219BEF134();
  v130[3] = type metadata accessor for ChannelSectionDirectoryTagFeedGroupKnobs();
  v130[4] = sub_21926C2C0(&qword_27CC18170, type metadata accessor for ChannelSectionDirectoryTagFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v130);
  sub_21926BFD4(v65 + v68, boxed_opaque_existential_1, type metadata accessor for ChannelSectionDirectoryTagFeedGroupKnobs);
  v77 = v103;
  sub_219BF2AC4();
  v78 = sub_219BF2AD4();
  (*(*(v78 - 8) + 56))(v77, 0, 1, v78);
  sub_21926BF00(0, &unk_280E8B7B0, MEMORY[0x277D33FB8], v127);
  v79 = sub_219BF3924();
  v80 = *(v79 - 8);
  v81 = (*(v80 + 80) + 32) & ~*(v80 + 80);
  v82 = swift_allocObject();
  *(v82 + 16) = v128;
  (*(v80 + 104))(v82 + v81, *MEMORY[0x277D33FA8], v79);
  sub_2194B2A30(v82);
  swift_setDeallocating();
  (*(v80 + 8))(v82 + v81, v79);
  swift_deallocClassInstance();
  v83 = sub_219BF02F4();
  (*(*(v83 - 8) + 56))(v108, 1, 1, v83);
  (*(v109 + 104))(v111, *MEMORY[0x277D329E0], v110);
  (*(v112 + 104))(v114, *MEMORY[0x277D32670], v113);
  (*(v116 + 104))(v115, *MEMORY[0x277D32840], v117);
  v84 = v107;
  sub_219BF2764();
  v85 = sub_219BF2774();
  (*(*(v85 - 8) + 56))(v84, 0, 1, v85);
  v86 = qword_280E8D7F8;
  *MEMORY[0x277D30BC0];
  if (v86 != -1)
  {
    swift_once();
  }

  qword_280F61708;
  v87 = v104;
  sub_219BF2A84();
  v89 = v121;
  v88 = v122;
  v90 = sub_219BF2194();
  (*(v105 + 8))(v87, v106);
  (v129)(v88, v123);
  (*(v100 + 8))(v89, v101);
  (*(v119 + 8))(v118, v120);
  return v90;
}

uint64_t sub_21926ADB0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v22 = a2;
  sub_21926BF00(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v21 = v19 - v4;
  v5 = sub_219BEF554();
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v19[0] = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = sub_219BF1904();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_219BED8D4();
  v12 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a1, v8);
  sub_219268F50();
  v15 = sub_219BEDCB4();
  v19[1] = v16;
  v19[2] = v15;
  sub_219BEDCC4();
  sub_219BEDCC4();
  type metadata accessor for ChannelSectionDirectoryTagFeedGroupEmitter();
  sub_2189AD5C8();
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  v17 = sub_219BEE5D4();
  (*(*(v17 - 8) + 56))(v21, 1, 1, v17);
  sub_219BED854();
  (*(v12 + 32))(v22, v14, v20);
  type metadata accessor for TagFeedGroup();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21926B154()
{
  type metadata accessor for ChannelSectionDirectoryTagFeedGroupEmitter();
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  type metadata accessor for TagFeedGroup();
  sub_21877D2B0();
  return sub_219BEF194();
}

uint64_t sub_21926B218(uint64_t *a1)
{
  v1 = *a1;
  if (![objc_opt_self() isTagAllowed_])
  {
    if (qword_280E8D7F8 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  v2 = swift_dynamicCastObjCProtocolConditional();
  if (!v2)
  {
    if (qword_280E8D7F8 == -1)
    {
LABEL_10:
      sub_2186F20D4();
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_219C09EC0;
      v8 = [*(v1 + 16) identifier];
      v9 = sub_219BF5414();
      v11 = v10;

      v12 = MEMORY[0x277D837D0];
      *(v7 + 56) = MEMORY[0x277D837D0];
      v13 = sub_2186FC3BC();
      *(v7 + 64) = v13;
      *(v7 + 32) = v9;
      *(v7 + 40) = v11;
      v14 = [*(v1 + 16) name];
      v15 = sub_219BF5414();
      v17 = v16;

      *(v7 + 96) = v12;
      *(v7 + 104) = v13;
      *(v7 + 72) = v15;
      *(v7 + 80) = v17;
      sub_219BF6214();
      sub_219BE5314();

      return 0;
    }

LABEL_15:
    swift_once();
    goto LABEL_10;
  }

  v3 = v2;
  swift_unknownObjectRetain();
  v4 = [v3 supergroupKnobs];
  if (!v4)
  {
LABEL_6:
    swift_unknownObjectRelease();
    return 1;
  }

  v5 = v4;
  if ([v4 isEligible])
  {

    goto LABEL_6;
  }

  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_219C09EC0;
  v19 = [v3 identifier];
  v20 = sub_219BF5414();
  v22 = v21;

  v23 = MEMORY[0x277D837D0];
  *(v18 + 56) = MEMORY[0x277D837D0];
  v24 = sub_2186FC3BC();
  *(v18 + 64) = v24;
  *(v18 + 32) = v20;
  *(v18 + 40) = v22;
  v25 = [*(v1 + 16) name];
  v26 = sub_219BF5414();
  v28 = v27;

  *(v18 + 96) = v23;
  *(v18 + 104) = v24;
  *(v18 + 72) = v26;
  *(v18 + 80) = v28;
  sub_219BF6214();
  sub_219BE5314();

  swift_unknownObjectRelease();

  return 0;
}

uint64_t sub_21926B624()
{
  sub_21926BF00(0, &qword_280EE6910, sub_21880702C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_21926B6A4@<X0>(uint64_t *a1@<X8>)
{
  sub_219268F50();
  v4 = v3;
  v5 = swift_allocBox();
  result = (*(*(v4 - 8) + 16))(v6, v1, v4);
  *a1 = v5 | 0x1000000000000000;
  return result;
}

uint64_t sub_21926B71C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for ChannelSectionDirectoryTagFeedGroupKnobs();
  a2[4] = sub_21926C2C0(qword_280E96640, type metadata accessor for ChannelSectionDirectoryTagFeedGroupKnobs);
  a2[5] = sub_21926C2C0(&qword_27CC18178, type metadata accessor for ChannelSectionDirectoryTagFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_21926BFD4(v2 + v4, boxed_opaque_existential_1, type metadata accessor for ChannelSectionDirectoryTagFeedGroupKnobs);
}

uint64_t sub_21926B7E4()
{
  sub_219268F50();

  return sub_219BEDCA4();
}

uint64_t sub_21926B810@<X0>(uint64_t *a1@<X8>)
{
  sub_21926BF00(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_219268F50();

  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_218A426AC(inited + 32);
  sub_21926BF00(0, &qword_27CC18180, type metadata accessor for ChannelSectionDirectoryTagFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a1[3] = v5;
  a1[4] = sub_21926C308();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_21926B980()
{
  sub_21926C2C0(&unk_27CC18148, type metadata accessor for ChannelSectionDirectoryTagFeedGroupEmitter);

  return sub_219BE2324();
}

uint64_t sub_21926BB0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChannelSectionDirectoryTagFeedGroupEmitter();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21926BC08()
{
  if (!qword_27CC18168)
  {
    sub_2186D80B0();
    sub_21926BF00(255, &qword_280E8EFD0, type metadata accessor for TagModel, MEMORY[0x277D83940]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC18168);
    }
  }
}

uint64_t sub_21926BD80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for ChannelSectionDirectoryTagFeedGroupEmitter();
  sub_21926ADB0(a1, a2);
  sub_218DAADD4(0, &qword_280E91720, type metadata accessor for TagFeedGroup, sub_21877D2B0, MEMORY[0x277D324E8]);
  return swift_storeEnumTagMultiPayload();
}

void sub_21926BF00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21926BF64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_21926BF00(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_21926BFD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21926C03C(void *a1)
{
  v1 = [a1 sectionIDs];
  if (v1)
  {
    v2 = v1;
    v3 = sub_219BF5924();

    if (qword_280E8D7F8 != -1)
    {
      swift_once();
    }

    sub_2186F20D4();
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_219C09BA0;
    v5 = *(v3 + 16);
    v6 = MEMORY[0x277D83C10];
    *(v4 + 56) = MEMORY[0x277D83B88];
    *(v4 + 64) = v6;
    *(v4 + 32) = v5;
    sub_219BF6214();
    sub_219BE5314();
  }

  else
  {
    v3 = sub_219BEEDD4();
    sub_21926C2C0(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    *v7 = 0xD000000000000017;
    v7[1] = 0x8000000219D14D30;
    (*(*(v3 - 8) + 104))(v7, *MEMORY[0x277D323D8], v3);
    swift_willThrow();
  }

  return v3;
}

unint64_t sub_21926C200()
{
  result = qword_280E8EFC0;
  if (!qword_280E8EFC0)
  {
    sub_21926BF00(255, &qword_280E8EFD0, type metadata accessor for TagModel, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8EFC0);
  }

  return result;
}

uint64_t sub_21926C288@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  *a2 = *(v2 + 16);
  a2[1] = v3;
  swift_unknownObjectRetain();
}

uint64_t sub_21926C2C0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21926C308()
{
  result = qword_27CC18188;
  if (!qword_27CC18188)
  {
    sub_21926BF00(255, &qword_27CC18180, type metadata accessor for ChannelSectionDirectoryTagFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18188);
  }

  return result;
}

uint64_t AudioArticleOptionsProvider.results()()
{
  v1[4] = v0;
  sub_218AC1C94(0);
  v1[5] = swift_task_alloc();
  v2 = sub_219BF1634();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_219BE1B34();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  type metadata accessor for AudioFeedContentConfig();
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21926C504, 0, 0);
}

uint64_t sub_21926C504()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  *(v0 + 16) = *__swift_project_boxed_opaque_existential_1(*(v0 + 32), *(*(v0 + 32) + 24));
  (*(v2 + 104))(v1, *MEMORY[0x277D6CA28], v3);
  v4 = off_282A71798;
  type metadata accessor for AudioFeedConfigManager();
  *(v0 + 104) = v4();
  (*(v2 + 8))(v1, v3);
  v5 = swift_task_alloc();
  *(v0 + 112) = v5;
  *v5 = v0;
  v5[1] = sub_21926C64C;
  v6 = *(v0 + 96);

  return MEMORY[0x2821D23D8](v6);
}

uint64_t sub_21926C64C()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_21926CBE4;
  }

  else
  {

    v2 = sub_21926C768;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21926C768()
{
  v1 = v0[12];
  v2 = __swift_project_boxed_opaque_existential_1((v0[4] + 40), *(v0[4] + 64));
  v0[16] = sub_21926CDEC(v1, *v2);
  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = sub_21926C828;

  return MEMORY[0x2821D23D8](v0 + 3);
}

uint64_t sub_21926C828()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_21926CC78;
  }

  else
  {
    v2 = sub_21926C958;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21926C958()
{
  v1 = v0[3];
  if (v1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v3 = 0;
    v4 = v0[7];
    v21 = v1 & 0xFFFFFFFFFFFFFF8;
    v22 = v1 & 0xC000000000000001;
    v5 = (v4 + 48);
    v19 = v4;
    v6 = (v4 + 32);
    v7 = MEMORY[0x277D84F90];
    v20 = v1;
    while (v22)
    {
      MEMORY[0x21CECE0F0](v3, v1);
      v8 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_17;
      }

LABEL_9:
      v10 = v0[5];
      v9 = v0[6];
      sub_219BF1624();
      if ((*v5)(v10, 1, v9) == 1)
      {
        sub_21926D5C4(v0[5], sub_218AC1C94);
      }

      else
      {
        v11 = *v6;
        (*v6)(v0[8], v0[5], v0[6]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_2191FA570(0, *(v7 + 2) + 1, 1, v7);
        }

        v13 = *(v7 + 2);
        v12 = *(v7 + 3);
        if (v13 >= v12 >> 1)
        {
          v7 = sub_2191FA570(v12 > 1, v13 + 1, 1, v7);
        }

        v14 = v0[8];
        v15 = v0[6];
        *(v7 + 2) = v13 + 1;
        v11(&v7[((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v13], v14, v15);
        v1 = v20;
      }

      ++v3;
      if (v8 == i)
      {
        goto LABEL_21;
      }
    }

    if (v3 >= *(v21 + 16))
    {
      goto LABEL_18;
    }

    swift_unknownObjectRetain();
    v8 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v7 = MEMORY[0x277D84F90];
LABEL_21:
  v16 = v0[12];

  sub_21926D5C4(v16, type metadata accessor for AudioFeedContentConfig);

  v17 = v0[1];

  return v17(v7);
}

uint64_t sub_21926CBE4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21926CC78()
{
  sub_21926D5C4(*(v0 + 96), type metadata accessor for AudioFeedContentConfig);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21926CD20()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2191A1F80;

  return AudioArticleOptionsProvider.results()();
}

uint64_t sub_21926CDEC(uint64_t a1, uint64_t a2)
{
  v55 = type metadata accessor for AudioFeedConfig();
  MEMORY[0x28223BE20](v55);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21926D560(a1, v5);
  v6 = sub_2186C66AC();
  v7 = sub_219BF6F74();
  sub_219BF6214();
  v8 = MEMORY[0x277D84F90];
  sub_219BE5314();

  v9 = sub_218FA2584();
  v54 = v6;
  v10 = sub_219BF6F74();
  sub_219BF6214();
  sub_21926D678(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v53 = v11;
  v12 = swift_allocObject();
  v52 = xmmword_219C09BA0;
  *(v12 + 16) = xmmword_219C09BA0;
  v13 = MEMORY[0x277D837D0];
  v14 = MEMORY[0x21CECC6D0](v9, MEMORY[0x277D837D0]);
  v16 = v15;
  *(v12 + 56) = v13;
  v51 = sub_2186FC3BC();
  *(v12 + 64) = v51;
  *(v12 + 32) = v14;
  *(v12 + 40) = v16;
  sub_219BE5314();

  v17 = off_282A54608();
  v18 = *(a2 + 56);
  v19 = [objc_msgSend(v18 configurationManager)];
  result = swift_unknownObjectRelease();
  if (v19)
  {
    v21 = objc_opt_self();
    sub_21926D5C4(v5, type metadata accessor for AudioFeedConfig);
    v55 = [v21 transformationWithFilterOptions:v17 configuration:v19 context:v18];
    swift_unknownObjectRelease();
    v59 = v8;
    v22 = *(v9 + 2);
    if (v22)
    {
      v23 = 0;
      v24 = v9 + 40;
      v49 = v22 - 1;
      v50 = v9 + 40;
      do
      {
        v25 = &v24[16 * v23];
        v26 = v23;
        while (1)
        {
          if (v26 >= *(v9 + 2))
          {
            __break(1u);
            goto LABEL_19;
          }

          v23 = v26 + 1;
          v27 = *v25;
          v56 = *(v25 - 1);
          v57 = v27;

          sub_219BE2DD4();

          if (v58)
          {
            break;
          }

          v25 += 16;
          ++v26;
          if (v22 == v23)
          {
            goto LABEL_12;
          }
        }

        MEMORY[0x21CECC690](v28);
        if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_219BF5A14();
        }

        sub_219BF5A54();
        v8 = v59;
        v24 = v50;
      }

      while (v49 != v26);
    }

LABEL_12:
    if (v8 >> 62)
    {
LABEL_19:
      v29 = sub_219BF7214();
    }

    else
    {
      v29 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v30 = v55;
    if (v29 == *(v9 + 2))
    {

      v31 = sub_219BF6F74();
      sub_219BF6214();
      sub_219BE5314();

      sub_218731D50();
      v32 = sub_219BF5904();

      v33 = [v30 transformHeadlines_];

      v34 = sub_219BF5924();
      v56 = v34;
      sub_21926D678(0, &unk_280EE6A40, sub_2187E7248, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v35 = sub_219BE3014();
    }

    else
    {

      sub_219BE2DB4();
      sub_218731D50();
      v36 = MEMORY[0x277D837D0];
      v37 = sub_219BE2814();

      v38 = sub_219BF6F74();
      sub_219BF6214();
      v39 = swift_allocObject();
      *(v39 + 16) = v52;
      v40 = MEMORY[0x21CECC6D0](v37, v36);
      v41 = v51;
      *(v39 + 56) = v36;
      *(v39 + 64) = v41;
      *(v39 + 32) = v40;
      *(v39 + 40) = v42;
      sub_219BE5314();

      MEMORY[0x28223BE20](v43);
      *(&v48 - 2) = a2;
      *(&v48 - 1) = v37;
      sub_2187E7248();
      sub_219BE3204();

      v44 = swift_allocObject();
      *(v44 + 16) = a2;
      *(v44 + 24) = v9;

      v45 = sub_219BE2E54();
      sub_219BE2F74();

      *(swift_allocObject() + 16) = v30;
      v46 = v30;
      v47 = sub_219BE2E54();
      v35 = sub_219BE2F74();
    }

    return v35;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21926D4A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_21926D4EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21926D560(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioFeedConfig();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21926D5C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21926D678(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_21926D6DC()
{
  v1 = sub_219BEA3D4();
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider____lazy_storage___regularContainerTitleView;
  v6 = *(v0 + OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider____lazy_storage___regularContainerTitleView);
  if (v6)
  {
    v7 = *(v0 + OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider____lazy_storage___regularContainerTitleView);
  }

  else
  {
    v8 = *(v0 + OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_regularMiniMastheadView);
    (*(v2 + 104))(v4, *MEMORY[0x277D6EA70]);
    objc_allocWithZone(sub_219BE9C84());
    v9 = v8;
    v10 = v0;
    v11 = sub_219BE9C64();
    v12 = *(v0 + v5);
    *(v10 + v5) = v11;
    v7 = v11;

    v6 = 0;
  }

  v13 = v6;
  return v7;
}

void sub_21926D80C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = objc_opt_self();
    v3 = [v2 feedTitleViewUpdateCheckingForNewStoriesForType_];
    [*(*&v1[OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_compactMiniMastheadView] + OBJC_IVAR____TtC7NewsUI216MiniMastheadView_titleView) applyFeedTitleViewUpdate:v3 animation:2 force:1];
    v4 = [v2 feedTitleViewUpdateCheckingForNewStoriesForType_];
    [*&v1[OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_regularMiniMastheadView] applyFeedTitleViewUpdate:v4 animation:2 force:1];
  }
}

void sub_21926D910()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = objc_opt_self();
    v3 = [v2 feedTitleViewUpdateNewStoriesWithStoryForType:1 storyCount:2 linger:0];
    [*(*&v1[OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_compactMiniMastheadView] + OBJC_IVAR____TtC7NewsUI216MiniMastheadView_titleView) applyFeedTitleViewUpdate:v3 animation:2 force:1];
    v4 = [v2 feedTitleViewUpdateNewStoriesWithStoryForType:0 storyCount:2 linger:0];
    [*&v1[OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_regularMiniMastheadView] applyFeedTitleViewUpdate:v4 animation:2 force:1];
  }
}

void sub_21926DA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(*(Strong + OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_compactMiniMastheadView) + OBJC_IVAR____TtC7NewsUI216MiniMastheadView_titleView);
    v8 = sub_219AFC4A4(a4, 1);
    v9 = objc_opt_self();
    v10 = [v9 feedTitleViewUpdateForAttributedText:v8 forType:1];

    [v7 applyFeedTitleViewUpdate:v10 animation:2];
    v11 = *&v6[OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_regularMiniMastheadView];
    v12 = sub_219AFC4A4(a4, 2);
    v13 = [v9 feedTitleViewUpdateForAttributedText:v12 forType:0];

    [v11 applyFeedTitleViewUpdate:v13 animation:2];
  }
}

id sub_21926DB7C(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v11 = type metadata accessor for MiniMastheadModel();
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - v15;
  result = [a1 horizontalSizeClass];
  if (result)
  {
    v18 = result == 2;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    v19 = OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_model;
    swift_beginAccess();
    sub_21926F214(v5 + v19, v14, type metadata accessor for MiniMastheadModel);
    v20 = *(v5 + OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_regularMiniMastheadView);
    v21 = sub_219AFC4A4(v14, 2);
    v22 = [objc_opt_self() feedTitleViewUpdateForAttributedText:v21 forType:0];

    [v20 applyFeedTitleViewUpdate:v22 animation:3];
    v16 = v14;
  }

  else
  {
    if (result != 1)
    {
      return result;
    }

    v23 = *(v5 + OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_compactMiniMastheadView);
    v31.origin.x = a2;
    v31.origin.y = a3;
    v31.size.width = a4;
    v31.size.height = a5;
    Width = CGRectGetWidth(v31);
    v32.origin.x = a2;
    v32.origin.y = a3;
    v32.size.width = a4;
    v32.size.height = a5;
    Height = CGRectGetHeight(v32);
    [v23 setFrame_];
    v26 = OBJC_IVAR____TtC7NewsUI216MiniMastheadView_titleView;
    [*&v23[OBJC_IVAR____TtC7NewsUI216MiniMastheadView_titleView] setFrame_];
    v27 = OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_model;
    swift_beginAccess();
    sub_21926F214(v5 + v27, v16, type metadata accessor for MiniMastheadModel);
    v28 = *&v23[v26];
    v29 = sub_219AFC4A4(v16, 1);
    v22 = [objc_opt_self() feedTitleViewUpdateForAttributedText:v29 forType:1];

    [v28 applyFeedTitleViewUpdate:v22 animation:3];
  }

  return sub_21926F1B4(v16, type metadata accessor for MiniMastheadModel);
}

uint64_t type metadata accessor for MiniMastheadViewProvider()
{
  result = qword_280EC1050;
  if (!qword_280EC1050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21926DFA8()
{
  result = type metadata accessor for MiniMastheadModel();
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

uint64_t sub_21926E0C8(uint64_t a1, uint64_t a2)
{
  v4 = *v2 + OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_21926E138(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_delegate;
  *(v3 + 40) = *v1;
  *(v3 + 48) = v6;
  v7 = v5 + v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = *(v7 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v9;
  return sub_218A5FF2C;
}

id sub_21926E1DC(void *a1)
{
  v2 = *v1;
  v3 = [a1 horizontalSizeClass];
  if (v3)
  {
    v4 = v3 == 2;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return sub_21926D6DC();
  }

  if (v3 == 1)
  {
    v6 = *(v2 + OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_compactMiniMastheadView);

    return v6;
  }

  else
  {
    result = sub_219BF7514();
    __break(1u);
  }

  return result;
}

uint64_t sub_21926E2E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for MastheadModelContext();
  MEMORY[0x28223BE20](v6);
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for MiniMastheadModel();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_model;
  swift_beginAccess();
  sub_21926F214(a1 + v12, v11, type metadata accessor for MiniMastheadModel);
  sub_21895F570();
  v14 = v13;
  v15 = *(v13 - 8);
  if ((*(v15 + 48))(v11, 1, v13) == 1)
  {
    return sub_21926F214(a1 + v12, a3, type metadata accessor for MiniMastheadModel);
  }

  if ([*(a1 + OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_featureAvailability) useOfflineMode])
  {
    sub_21926F214(a2, a3, type metadata accessor for MastheadModelContext);
  }

  else
  {
    v26 = *(a2 + 1);
    v17 = *(a2 + 2);
    v18 = *(v6 + 28);
    v19 = *MEMORY[0x277D32EF0];
    v20 = sub_219BF0644();
    (*(*(v20 - 8) + 104))(&v8[v18], v19, v20);
    v21 = *MEMORY[0x277D331F8];
    v22 = sub_219BF11C4();
    (*(*(v22 - 8) + 104))(&v8[v18], v21, v22);
    v23 = *(v6 + 32);
    v24 = *(a2 + v23);
    *v8 = 0;
    v8[1] = v26;
    v8[2] = v17;
    v8[v23] = v24;
    sub_21926F150(v8, a3);
  }

  (*(v15 + 56))(a3, 0, 1, v14);
  return sub_21926F1B4(v11, type metadata accessor for MastheadModelContext);
}

void sub_21926E69C(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = [a1 traitCollection];
  v6 = [v5 horizontalSizeClass];

  v7 = &OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_compactMiniMastheadView;
  if (v6 != 1)
  {
    v7 = &OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_regularMiniMastheadView;
  }

  v8 = *&v2[*v7];
  if (*&v2[OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_refreshStateMachine] && (sub_219BE1EA4(), LOBYTE(v10[0]) == 2) || (swift_beginAccess(), !swift_unknownObjectWeakLoadStrong()))
  {
  }

  else
  {
    swift_getObjectType();
    v10[3] = ObjectType;
    v10[4] = sub_21926F27C();
    v10[0] = v2;
    v9 = v2;
    sub_219BE9AE4();

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v10);
  }
}

uint64_t sub_21926E848(void *a1)
{
  v3 = type metadata accessor for MiniMastheadModel();
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - v7;
  sub_21926EA60(v1, a1, &v18 - v7);
  v9 = OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_model;
  swift_beginAccess();
  sub_21926F0EC(v8, v1 + v9);
  swift_endAccess();
  sub_21926F214(v1 + v9, v8, type metadata accessor for MiniMastheadModel);
  v10 = *(*(v1 + OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_compactMiniMastheadView) + OBJC_IVAR____TtC7NewsUI216MiniMastheadView_titleView);
  v11 = sub_219AFC4A4(v8, 1);
  v12 = objc_opt_self();
  v13 = [v12 feedTitleViewUpdateForAttributedText:v11 forType:1];

  [v10 applyFeedTitleViewUpdate:v13 animation:2];
  sub_21926F1B4(v8, type metadata accessor for MiniMastheadModel);
  sub_21926F214(v1 + v9, v6, type metadata accessor for MiniMastheadModel);
  v14 = *(v1 + OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_regularMiniMastheadView);
  v15 = sub_219AFC4A4(v6, 2);
  v16 = [v12 feedTitleViewUpdateForAttributedText:v15 forType:0];

  [v14 applyFeedTitleViewUpdate:v16 animation:2];
  return sub_21926F1B4(v6, type metadata accessor for MiniMastheadModel);
}

uint64_t sub_21926EA60@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for MastheadModelContext();
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  v12 = type metadata accessor for MiniMastheadModel();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_model;
  swift_beginAccess();
  sub_21926F214(a1 + v15, v14, type metadata accessor for MiniMastheadModel);
  sub_21895F570();
  v17 = v16;
  v18 = *(v16 - 8);
  if ((*(v18 + 48))(v14, 1, v16) == 1)
  {
    return sub_21926F214(a1 + v15, a3, type metadata accessor for MiniMastheadModel);
  }

  sub_21926F150(v14, v11);
  if ([*(a1 + OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_featureAvailability) useOfflineMode])
  {
    v20 = *v11;
    v21 = [a2 isSubscribed];
    v22 = v11[2];
    v23 = *(v6 + 28);
    v24 = sub_219BF11C4();
    (*(*(v24 - 8) + 16))(&v9[v23], &v11[v23], v24);
    LOBYTE(v23) = v11[*(v6 + 32)];
    sub_21926F1B4(v11, type metadata accessor for MastheadModelContext);
    *v9 = v20;
    v9[1] = v21;
    v9[2] = v22;
    v9[*(v6 + 32)] = v23;
  }

  else
  {
    v25 = [a2 isSubscribed];
    v26 = v11[2];
    v27 = *(v6 + 28);
    v28 = *MEMORY[0x277D32EF0];
    v29 = sub_219BF0644();
    (*(*(v29 - 8) + 104))(&v9[v27], v28, v29);
    v30 = *MEMORY[0x277D331F8];
    v31 = sub_219BF11C4();
    (*(*(v31 - 8) + 104))(&v9[v27], v30, v31);
    LOBYTE(v30) = v11[*(v6 + 32)];
    sub_21926F1B4(v11, type metadata accessor for MastheadModelContext);
    *v9 = 0;
    v9[1] = v25;
    v9[2] = v26;
    v9[*(v6 + 32)] = v30;
  }

  sub_21926F150(v9, a3);
  return (*(v18 + 56))(a3, 0, 1, v17);
}

double sub_21926EDEC()
{
  swift_beginAccess();
  v0 = 0.0;
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v1 = sub_219BE64C4();
      swift_unknownObjectRelease();
      if (v1)
      {
        v2 = [v1 navigationBar];

        [v2 transform];
        v0 = v4;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return v0;
}

uint64_t sub_21926EED4(uint64_t a1)
{
  v3 = type metadata accessor for MiniMastheadModel();
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - v7;
  sub_21926E2E8(v1, a1, &v18 - v7);
  v9 = OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_model;
  swift_beginAccess();
  sub_21926F0EC(v8, v1 + v9);
  swift_endAccess();
  sub_21926F214(v1 + v9, v8, type metadata accessor for MiniMastheadModel);
  v10 = *(*(v1 + OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_compactMiniMastheadView) + OBJC_IVAR____TtC7NewsUI216MiniMastheadView_titleView);
  v11 = sub_219AFC4A4(v8, 1);
  v12 = objc_opt_self();
  v13 = [v12 feedTitleViewUpdateForAttributedText:v11 forType:1];

  [v10 applyFeedTitleViewUpdate:v13 animation:2];
  sub_21926F1B4(v8, type metadata accessor for MiniMastheadModel);
  sub_21926F214(v1 + v9, v6, type metadata accessor for MiniMastheadModel);
  v14 = *(v1 + OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_regularMiniMastheadView);
  v15 = sub_219AFC4A4(v6, 2);
  v16 = [v12 feedTitleViewUpdateForAttributedText:v15 forType:0];

  [v14 applyFeedTitleViewUpdate:v16 animation:2];
  return sub_21926F1B4(v6, type metadata accessor for MiniMastheadModel);
}

uint64_t sub_21926F0EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MiniMastheadModel();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21926F150(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MastheadModelContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21926F1B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21926F214(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21926F27C()
{
  result = qword_280EC1060;
  if (!qword_280EC1060)
  {
    type metadata accessor for MiniMastheadViewProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC1060);
  }

  return result;
}

uint64_t sub_21926F2DC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_219BE3794();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - v8;
  v10 = *(v4 + 16);
  v10(&v32 - v8, v1, v3);
  v11 = (*(v4 + 88))(v9, v3);
  if (v11 == *MEMORY[0x277D31670] || v11 == *MEMORY[0x277D31660])
  {
    v13 = sub_219BE1324();
    return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }

  if (v11 == *MEMORY[0x277D31668])
  {
    v15 = MEMORY[0x277D2F158];
LABEL_11:
    v16 = *v15;
    v17 = sub_219BE1324();
    v18 = *(v17 - 8);
    (*(v18 + 104))(a1, v16, v17);
    return (*(v18 + 56))(a1, 0, 1, v17);
  }

  if (v11 == *MEMORY[0x277D31678])
  {
    v15 = MEMORY[0x277D2F160];
    goto LABEL_11;
  }

  if (qword_280EE60A0 != -1)
  {
    swift_once();
  }

  v19 = sub_219BE5434();
  __swift_project_value_buffer(v19, qword_280F627F0);
  v10(v7, v1, v3);
  v20 = sub_219BE5414();
  v21 = sub_219BF61F4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v32 = v22;
    v34 = swift_slowAlloc();
    v35 = v34;
    *v22 = 136315138;
    v33 = v21;
    v23 = sub_219BE3784();
    v25 = v24;
    v26 = *(v4 + 8);
    v26(v7, v3);
    v27 = sub_2186D1058(v23, v25, &v35);

    v28 = v32;
    *(v32 + 1) = v27;
    v29 = v26;
    _os_log_impl(&dword_2186C1000, v20, v33, "Unknown EngagementPlacementSource type= %s", v28, 0xCu);
    v30 = v34;
    __swift_destroy_boxed_opaque_existential_1(v34);
    MEMORY[0x21CECF960](v30, -1, -1);
    MEMORY[0x21CECF960](v28, -1, -1);
  }

  else
  {

    v29 = *(v4 + 8);
    v29(v7, v3);
  }

  v31 = sub_219BE1324();
  (*(*(v31 - 8) + 56))(a1, 1, 1, v31);
  return (v29)(v9, v3);
}

uint64_t sub_21926F730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(v5 + 24);
    ObjectType = swift_getObjectType();
    (*(v10 + 8))(v5, &off_282A66150, a3, a4, a5, ObjectType, v10);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21926F7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v28[1] = a1;
  v5 = type metadata accessor for FollowingNotificationsSupplementaryLayoutAttributes.Footer(0);
  v28[0] = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FollowingNotificationsSupplementaryLayoutAttributes.Header(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BE9834();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189518E0();
  sub_219BE8184();
  v16 = v35;
  v17 = v36;
  sub_219BE95F4();
  v18 = (*(v13 + 88))(v15, v12);
  if (v18 == *MEMORY[0x277D6E758])
  {
    v19 = sub_219BE9604();
    if ((v19 & 0x8000000000000000) == 0)
    {
      if (v19 < *(v16 + 16))
      {
        sub_2192707D8(v16 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v19, v11, type metadata accessor for FollowingNotificationsSupplementaryLayoutAttributes.Header);
        sub_218951864();
        sub_219BE6934();
        v37[2] = v32;
        v37[3] = v33;
        v38[0] = v34[0];
        *(v38 + 9) = *(v34 + 9);
        v37[0] = v30;
        v37[1] = v31;
        v20 = sub_21926FC08(v11, v29, v37, a4);
        sub_218EE7884(v37);

        v21 = type metadata accessor for FollowingNotificationsSupplementaryLayoutAttributes.Header;
        v22 = v11;
LABEL_10:
        sub_219270C10(v22, v21);
        return v20;
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v18 == *MEMORY[0x277D6E750])
  {
    v23 = sub_219BE9604();
    v24 = *(v16 + 16);
    v25 = __OFSUB__(v23, v24);
    v26 = v23 - v24;
    if (!v25)
    {
      if ((v26 & 0x8000000000000000) == 0)
      {
        if (v26 < *(v17 + 16))
        {
          sub_2192707D8(v17 + ((*(v28[0] + 80) + 32) & ~*(v28[0] + 80)) + *(v28[0] + 72) * v26, v7, type metadata accessor for FollowingNotificationsSupplementaryLayoutAttributes.Footer);
          v20 = sub_219270308(v7, v29, a4);

          v21 = type metadata accessor for FollowingNotificationsSupplementaryLayoutAttributes.Footer;
          v22 = v7;
          goto LABEL_10;
        }

        goto LABEL_15;
      }

LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    goto LABEL_12;
  }

LABEL_16:
  result = sub_219BF7514();
  __break(1u);
  return result;
}

uint64_t sub_21926FC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a4;
  v45 = a3;
  v50 = a2;
  v5 = type metadata accessor for FollowingNotificationsDisabledViewLayoutAttributes();
  MEMORY[0x28223BE20](v5 - 8);
  v46 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A5310C(0, &qword_280EE3C68, sub_218A52E68);
  MEMORY[0x28223BE20](v7 - 8);
  v44 = &v44 - v8;
  v48 = sub_219BDC104();
  v9 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_219BE9834();
  v12 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TitleViewLayoutAttributes(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for FollowingNotificationsSupplementaryLayoutAttributes.Header(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192707D8(a1, v20, type metadata accessor for FollowingNotificationsSupplementaryLayoutAttributes.Header);
  v21 = (v12 + 104);
  v22 = (v9 + 8);
  v23 = (v12 + 8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v20;
    sub_219270AA8(0, &qword_27CC13328, type metadata accessor for FollowingNotificationsDisabledViewLayoutAttributes);
    v26 = v46;
    sub_219270B14(&v20[*(v25 + 48)], v46, type metadata accessor for FollowingNotificationsDisabledViewLayoutAttributes);
    sub_219270840();
    v27 = v47;
    (*v21)(v14, *MEMORY[0x277D6E758], v47);
    sub_219BE9614();
    v28 = sub_219BF6424();
    (*v22)(v11, v48);
    (*v23)(v14, v27);
    v29 = sub_219BE9494();
    sub_2194653F0(v24, v29, v26);

    v30 = sub_219BE9494();
    v31 = *&v30[OBJC_IVAR____TtC7NewsUI234FollowingNotificationsDisabledView_onButtonTap];

    v32 = sub_219BEA814();
    swift_allocObject();
    swift_weakInit();

    v33 = type metadata accessor for FollowingNotificationsDisabledViewLayoutAttributes;
    v34 = v26;
LABEL_6:
    sub_219270C10(v34, v33);
    return v28;
  }

  v35 = v51;
  v36 = *(v20 + 3);
  v54[2] = *(v20 + 2);
  v54[3] = v36;
  v55 = *(v20 + 8);
  v37 = *(v20 + 1);
  v54[0] = *v20;
  v54[1] = v37;
  sub_219270AA8(0, &qword_27CC10B88, type metadata accessor for TitleViewLayoutAttributes);
  sub_219270B14(&v20[*(v38 + 48)], v17, type metadata accessor for TitleViewLayoutAttributes);
  sub_218A52F60();
  v39 = v47;
  (*v21)(v14, *MEMORY[0x277D6E758], v47);
  sub_219BE9614();
  v28 = sub_219BF6424();
  (*v22)(v11, v48);
  (*v23)(v14, v39);
  if (*(v45 + 88) - 1 < 5)
  {
    __swift_project_boxed_opaque_existential_1(v35 + 2, v35[5]);
    sub_218A52E68();
    v41 = v44;
    (*(*(v40 - 8) + 56))(v44, 1, 1, v40);
    v53 = 0;
    memset(v52, 0, sizeof(v52));
    sub_21913770C(v54, v28, v17, v41);
    sub_218967CDC(v54);
    sub_218D31880(v52, &qword_280ECFCE8, sub_218A53160);
    sub_218D31880(v41, &qword_280EE3C68, sub_218A52E68);
LABEL_5:
    v33 = type metadata accessor for TitleViewLayoutAttributes;
    v34 = v17;
    goto LABEL_6;
  }

  if (!*(v45 + 88))
  {
    __swift_project_boxed_opaque_existential_1(v35 + 17, v35[20]);
    v43 = sub_219BE9494();
    sub_219357FA0(v54, v43, v17);
    sub_218967CDC(v54);

    goto LABEL_5;
  }

  result = sub_219BF7514();
  __break(1u);
  return result;
}

uint64_t sub_219270308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a2;
  v27[2] = a3;
  v28 = sub_219BDC104();
  v4 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE9834();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FollowingNotificationsSectionFooterViewLayoutAttributes();
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FollowingNotificationsSupplementaryLayoutAttributes.Footer(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = (v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2192707D8(a1, v17, type metadata accessor for FollowingNotificationsSupplementaryLayoutAttributes.Footer);
  v27[1] = *v17;
  sub_219270AA8(0, &qword_27CC13338, type metadata accessor for FollowingNotificationsSectionFooterViewLayoutAttributes);
  sub_219270B14(v17 + *(v18 + 48), v14, type metadata accessor for FollowingNotificationsSectionFooterViewLayoutAttributes);
  sub_219270B7C();
  (*(v8 + 104))(v10, *MEMORY[0x277D6E750], v7);
  sub_219BE9614();
  v19 = sub_219BF6424();
  (*(v4 + 8))(v6, v28);
  (*(v8 + 8))(v10, v7);
  v20 = __swift_project_boxed_opaque_existential_1((v30 + 56), *(v30 + 80));
  v21 = sub_219BE9494();
  v22 = *v20;
  v23 = OBJC_IVAR____TtC7NewsUI239FollowingNotificationsSectionFooterView_textLabel;
  [*&v21[OBJC_IVAR____TtC7NewsUI239FollowingNotificationsSectionFooterView_textLabel] setFrame_];
  __swift_project_boxed_opaque_existential_1((v22 + 16), *(v22 + 40));
  v24 = *&v21[v23];
  v25 = off_282A4F000;
  type metadata accessor for FollowingNotificationsSectionFooterViewStyler();
  v25(v24);

  sub_219270C10(v14, type metadata accessor for FollowingNotificationsSectionFooterViewLayoutAttributes);

  return v19;
}

uint64_t sub_21927069C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = *(*(Strong + OBJC_IVAR____TtC7NewsUI236FollowingNotificationsViewController_eventHandler) + 40);
      ObjectType = swift_getObjectType();
      (*(v2 + 80))(ObjectType, v2);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_21927074C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);
  sub_218774F78(v0 + 176);

  return swift_deallocClassInstance();
}

uint64_t sub_2192707D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_219270840()
{
  if (!qword_27CC18270)
  {
    type metadata accessor for FollowingNotificationsDisabledView();
    sub_2186D5894(&qword_27CC18278, type metadata accessor for FollowingNotificationsDisabledView);
    v0 = sub_219BE94A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC18270);
    }
  }
}

uint64_t sub_2192708D4()
{
  v0 = sub_219BE9834();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A52F60();
  v4 = *MEMORY[0x277D6E758];
  v5 = *(v1 + 104);
  v5(v3, v4, v0);
  sub_219BF6444();
  v6 = *(v1 + 8);
  v6(v3, v0);
  sub_219270840();
  v5(v3, v4, v0);
  sub_219BF6444();
  v6(v3, v0);
  sub_219270B7C();
  v5(v3, *MEMORY[0x277D6E750], v0);
  sub_219BF6444();
  return (v6)(v3, v0);
}

void sub_219270AA8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_219270B14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_219270B7C()
{
  if (!qword_27CC18280)
  {
    type metadata accessor for FollowingNotificationsSectionFooterView();
    sub_2186D5894(&qword_27CC18288, type metadata accessor for FollowingNotificationsSectionFooterView);
    v0 = sub_219BE94A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC18280);
    }
  }
}

uint64_t sub_219270C10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_219270DFC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_219BDCDE4();
  *(swift_allocObject() + 16) = v4;
  v6 = v4;
  sub_219BDD154();

  *(swift_allocObject() + 16) = v6;
  v7 = v6;
  sub_219BDCD84();
}

uint64_t sub_219270F10(uint64_t a1, uint64_t a2, char *a3)
{
  v99 = a1;
  sub_218846D60(0, &unk_280E901B0, MEMORY[0x277D33D70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v94 = &v92 - v7;
  v104 = sub_219BF3344();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v105 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BDCAF4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&a3[OBJC_IVAR____TtC7NewsUI214ChannelTagView_iconImageView];
  [v13 setImage_];
  v100 = *&a3[OBJC_IVAR____TtC7NewsUI214ChannelTagView_nameLabel];
  [v100 setAttributedText_];
  sub_218718690(a1, &v113);
  [a3 setIsAccessibilityElement_];
  [v13 setIsAccessibilityElement_];
  v101 = *&a3[OBJC_IVAR____TtC7NewsUI214ChannelTagView_accessoryButton];
  [v101 setIsAccessibilityElement_];
  [a3 setFrame_];
  [v13 &selRef_minShortcutsOnboardCount];
  v14 = [v13 layer];
  v15 = sub_219BF0CD4();
  v108 = *MEMORY[0x277D6D198];
  v16 = *(v10 + 104);
  v106 = v10 + 104;
  v107 = v16;
  v97 = v9;
  v16(v12);
  v96 = v15;
  sub_219BF0CC4();
  v18 = v17;
  v98 = *(v10 + 8);
  v98(v12, v9);
  [v14 setCornerRadius_];

  v93 = v13;
  v19 = [v13 layer];
  [v19 setCornerCurve_];

  v109 = a3;
  v20 = *&a3[OBJC_IVAR____TtC7NewsUI214ChannelTagView_separatorView];
  v21 = objc_opt_self();
  v22 = [v21 separatorColor];
  sub_219BE60D4();
  [v20 setFrame_];
  v23 = v99[6];
  v110 = v99[5];
  v95 = v23;
  sub_218846D60(0, &qword_280E8B600, sub_218819588, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09EC0;
  v25 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v26 = v25;
  v92 = v21;
  v27 = [v21 labelColor];
  v28 = sub_2186C6148(0, &qword_280E8DA80);
  *(inited + 40) = v27;
  v29 = *MEMORY[0x277D740A8];
  *(inited + 64) = v28;
  *(inited + 72) = v29;
  v30 = sub_2186C6148(0, &qword_280E8DB00);
  v31 = v29;
  v32 = sub_219BF6BD4();
  v33 = v97;
  v107(v12, v108, v97);
  v34 = sub_219BF0CB4();

  v35 = v98;
  v98(v12, v33);
  *(inited + 104) = v30;
  *(inited + 80) = v34;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_218819588();
  v36 = v95;
  swift_arrayDestroy();
  v37 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v38 = sub_219BF53D4();
  type metadata accessor for Key(0);
  sub_219272358(&qword_280E8E118, type metadata accessor for Key);
  v39 = sub_219BF5204();

  v40 = [v37 initWithString:v38 attributes:v39];

  v41 = v102;
  v42 = v100;
  [v100 setAttributedText_];

  [v42 setFrame_];
  v99 = *(v41 + 16);
  v43 = *(*__swift_project_boxed_opaque_existential_1(&v113, v114) + 16);
  v107(v12, v108, v33);
  swift_unknownObjectRetain();
  sub_219BF0CC4();
  v45 = v44;
  v35(v12, v33);
  v46 = [v42 text];
  if (v46)
  {
    v47 = v46;
    v48 = sub_219BF5414();
    v36 = v49;
  }

  else
  {

    v48 = v110;
  }

  v50 = [*(*__swift_project_boxed_opaque_existential_1(&v113 v114) + 16)];
  v51 = v109;
  v52 = v104;
  v53 = v103;
  if (v50)
  {
    v54 = 0;
  }

  else
  {
    v54 = [v92 secondarySystemFillColor];
  }

  if ([v43 tagType] - 1 >= 2)
  {

    swift_unknownObjectRelease();
  }

  else
  {
    v110 = v48;
    v55 = [v43 groupTitleColor];
    v56 = v99[7];
    swift_unknownObjectRetain();
    v57 = v36;
    if (v55)
    {
      v58 = [v55 ne_color];

      type metadata accessor for TopicColorFeedNavImageStyler();
      v59 = swift_allocObject();
      *(v59 + 16) = v58;
      *(v59 + 24) = v56;
      v56 = v59;
    }

    swift_unknownObjectRetain();
    v60 = v93;
    v61 = [v93 traitCollection];
    [v61 displayScale];
    v63 = v62;

    v64 = type metadata accessor for FeedNavImageAssetHandle();
    v65 = objc_allocWithZone(v64);
    v66 = &v65[OBJC_IVAR___NEFeedNavImageAssetHandle_filePath];
    *v66 = 0;
    *(v66 + 1) = 0;
    *&v65[OBJC_IVAR___NEFeedNavImageAssetHandle_fallbackImage] = 0;
    *&v65[OBJC_IVAR___NEFeedNavImageAssetHandle_tag] = v43;
    v67 = swift_unknownObjectRetain();
    v68 = sub_219352488(v67);
    v69 = &v65[OBJC_IVAR___NEFeedNavImageAssetHandle_uniqueKey];
    *v69 = v68;
    v69[1] = v70;
    v71 = &v65[OBJC_IVAR___NEFeedNavImageAssetHandle_feedNavImageSize];
    *v71 = v45;
    v71[1] = v45;
    *&v65[OBJC_IVAR___NEFeedNavImageAssetHandle_feedNavImageStyler] = v56;
    *&v65[OBJC_IVAR___NEFeedNavImageAssetHandle_scale] = v63;
    *&v65[OBJC_IVAR___NEFeedNavImageAssetHandle_overrideFallbackColor] = v54;
    v111.receiver = v65;
    v111.super_class = v64;
    v54 = v54;
    v72 = objc_msgSendSuper2(&v111, sel_init);
    sub_218A462FC(v72, v60, v110, v57, 1, v45, v45, 1.0);
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    v51 = v109;
    v52 = v104;
  }

  v73 = v101;
  [v101 setFrame_];
  [v73 accessibilityActivationPoint];
  [v51 setAccessibilityActivationPoint_];
  v74 = *MEMORY[0x277D765D0];
  v75 = [v51 accessibilityTraits];
  if ((v74 & ~v75) != 0)
  {
    v76 = v74;
  }

  else
  {
    v76 = 0;
  }

  [v51 setAccessibilityTraits_];
  v77 = *(a2 + 128);
  v78 = v105;
  if (v77 == 5)
  {
    [v73 setHidden_];
  }

  else
  {
    v79 = v52;
    v80 = qword_280EDB508;
    v81 = v73[qword_280EDB508];
    v73[qword_280EDB508] = v77;
    sub_219BE61D4();
    if (v81 != v73[v80] || !*&v73[qword_280F620E8] || !*&v73[qword_280F620E0])
    {
      sub_218EC2D64(0);
    }

    [v73 setHidden_];
    __swift_project_boxed_opaque_existential_1(&v113, v114);
    swift_unknownObjectRetain();
    sub_219BF3324();
    sub_219BEAF14();
    v82 = *(v53 + 16);
    v83 = v94;
    v82(v94, v78, v52);
    v84 = *(v53 + 56);
    v85 = v52;
    v84(v83, 0, 1, v52);
    sub_219BE89C4();

    sub_218AD7DC0(v83);
    v86 = v109;
    sub_219271F60(v112[0]);
    if (*(a2 + 129))
    {
      sub_219BEAF14();
      v82(v83, v105, v79);
      v84(v83, 0, 1, v79);
      v87 = swift_allocObject();
      swift_weakInit();
      v88 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v89 = swift_allocObject();
      *(v89 + 16) = v87;
      *(v89 + 24) = v88;
      sub_218E14F94();
      sub_219BE89B4();

      sub_218AD7DC0(v83);
      __swift_project_boxed_opaque_existential_1(v112, v112[3]);
      v90 = *&v86[OBJC_IVAR____TtC7NewsUI214ChannelTagView_token];
      sub_219BE1A04();

      (*(v103 + 8))(v105, v85);
      __swift_destroy_boxed_opaque_existential_1(v112);
    }

    else
    {
      (*(v103 + 8))(v105, v79);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(&v113);
}

void sub_219271C98(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      sub_219271F60(v1);
    }

    else
    {
    }
  }
}

uint64_t sub_219271D3C(void *a1)
{
  sub_218846D60(0, &unk_280E901B0, MEMORY[0x277D33D70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11[-v3];
  v5 = sub_219BF3344();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_unknownObjectRetain();
  sub_219BF3324();
  sub_219BEAF14();
  (*(v6 + 16))(v4, v8, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  sub_219BE89C4();

  sub_218AD7DC0(v4);
  v9 = v12 == 2 || (v12 & 1) != 0;
  sub_219271F60(v9);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_219271F60(unsigned __int8 a1)
{
  v2 = a1;
  v3 = sub_219BE5C64();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v2 == 2 || (a1 & 1) != 0)
  {
    (*(v4 + 104))(v6, *MEMORY[0x277D6D340], v3);
    type metadata accessor for AccessoryButton();
    sub_219272358(&qword_280EDB500, type metadata accessor for AccessoryButton);
    sub_219BEB694();
    (*(v4 + 8))(v6, v3);
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = objc_opt_self();
    v9 = [v8 bundleForClass_];
    sub_219BDB5E4();

    v10 = [v8 bundleForClass_];
  }

  else
  {
    (*(v4 + 104))(v6, *MEMORY[0x277D6D338], v3);
    type metadata accessor for AccessoryButton();
    sub_219272358(&qword_280EDB500, type metadata accessor for AccessoryButton);
    sub_219BEB694();
    (*(v4 + 8))(v6, v3);
    type metadata accessor for Localized();
    v11 = swift_getObjCClassFromMetadata();
    v12 = objc_opt_self();
    v13 = [v12 bundleForClass_];
    sub_219BDB5E4();

    v10 = [v12 bundleForClass_];
  }

  sub_219BDB5E4();
}

uint64_t sub_219272358(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t get_enum_tag_for_layout_string_7NewsUI237MagazineTodayFeedGroupConfigProcessorOSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2192723C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_219272414(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = ~a2;
    }
  }

  return result;
}

uint64_t sub_219272468(void *a1, uint64_t a2, char a3)
{
  sub_21927298C(0, &qword_280E8C340, MEMORY[0x277D84538]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2192728E4();
  sub_219BF7B44();
  v12 = a2;
  v13 = a3;
  sub_2192729F0();
  sub_219BF77E4();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_2192725EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F737365636F7270 && a2 == 0xE900000000000072)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_219BF78F4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21927267C(uint64_t a1)
{
  v2 = sub_2192728E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2192726B8(uint64_t a1)
{
  v2 = sub_2192728E4();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_2192726F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_219272744(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

void *sub_219272744(void *a1)
{
  sub_21927298C(0, &qword_280E8CA38, MEMORY[0x277D844C8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2192728E4();
  sub_219BF7B34();
  if (!v1)
  {
    sub_219272938();
    sub_219BF76E4();
    (*(v5 + 8))(v7, v4);
    v8 = v10;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_2192728E4()
{
  result = qword_280EA5FD0;
  if (!qword_280EA5FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA5FD0);
  }

  return result;
}

unint64_t sub_219272938()
{
  result = qword_280E99450;
  if (!qword_280E99450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E99450);
  }

  return result;
}

void sub_21927298C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2192728E4();
    v7 = a3(a1, &type metadata for MagazineTodayFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2192729F0()
{
  result = qword_280E99458;
  if (!qword_280E99458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E99458);
  }

  return result;
}

unint64_t sub_219272A58()
{
  result = qword_27CC18290;
  if (!qword_27CC18290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18290);
  }

  return result;
}

unint64_t sub_219272AB0()
{
  result = qword_280EA5FC0;
  if (!qword_280EA5FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA5FC0);
  }

  return result;
}

unint64_t sub_219272B08()
{
  result = qword_280EA5FC8;
  if (!qword_280EA5FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA5FC8);
  }

  return result;
}

uint64_t sub_219272BB4@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t *a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v9 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EE81F0);
    result = sub_219BE1E34();
    if (v14)
    {
      v10 = a2(0);
      v11 = swift_allocObject();
      *(v11 + 16) = v9;
      v12 = sub_21875F93C(&v13, v11 + 24);
      a4[3] = v10;
      result = a3(v12);
      a4[4] = result;
      *a4 = v11;
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

uint64_t sub_219272D58@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, unint64_t *a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t *a5@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v10 = result;
    v11 = a2(0);
    v12 = swift_allocObject();
    *(v12 + 16) = v10;
    a5[3] = v11;
    result = sub_2186CBC0C(a3, a4);
    a5[4] = result;
    *a5 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219272E54(void *a1, unsigned int *a2, void (*a3)(void))
{
  v6 = sub_219BDF604();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v11 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EE81F0);
    result = sub_219BE1E34();
    if (v15)
    {
      (*(v7 + 104))(v9, *a2, v6);
      a3(0);
      v12 = swift_allocObject();
      *(v12 + 16) = v11;
      sub_21875F93C(&v14, v12 + 24);
      (*(v7 + 32))(v12 + qword_280EA7470, v9, v6);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_219273098@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE3490);
  result = sub_219BE1E34();
  if (!v13)
  {
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187EBAD0();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6654();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BEF334();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_218718690(a1, v11);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE0204();
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    v7 = type metadata accessor for FeedVideoAdProviderFactory();
    v8 = objc_allocWithZone(v7);
    sub_218718690(v11, &v8[qword_280EBB6E8]);
    *&v8[qword_280EBB6F0] = v5;
    *&v8[qword_280EBB6F8] = v6;
    sub_218718690(v12, v10);
    v9 = sub_219BEC2F4();
    __swift_destroy_boxed_opaque_existential_1(v11);
    __swift_destroy_boxed_opaque_existential_1(v12);
    a2[3] = v7;
    result = sub_2186CBC0C(&qword_280EBB6E0, type metadata accessor for FeedVideoAdProviderFactory);
    a2[4] = result;
    *a2 = v9;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_21927335C(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for BundleSubscriberAdSegmentProvider();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v5 = result;
  if (qword_280EE3530 != -1)
  {
    swift_once();
  }

  sub_2186CBC0C(&qword_280EA3CB0, type metadata accessor for BundleSubscriberAdSegmentProvider);
  sub_219BEC154();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ConfigurationAdSegmentProvider();
  result = sub_219BE1E24();
  if (!result)
  {
    goto LABEL_39;
  }

  v6 = result;
  if (qword_280EE3548 != -1)
  {
    swift_once();
  }

  sub_2186CBC0C(qword_280EAD308, type metadata accessor for ConfigurationAdSegmentProvider);
  sub_219BEC154();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for FollowerAdSegmentProvider();
  result = sub_219BE1E24();
  if (!result)
  {
    goto LABEL_40;
  }

  if (qword_280EE3508 != -1)
  {
    swift_once();
  }

  sub_2186CBC0C(qword_280EBEC90, type metadata accessor for FollowerAdSegmentProvider);
  sub_219BEC154();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for NotificationAdSegmentProvider();
  result = sub_219BE1E24();
  if (!result)
  {
    goto LABEL_41;
  }

  if (qword_280EE3550 != -1)
  {
    swift_once();
  }

  sub_2186CBC0C(qword_280EAFBC8, type metadata accessor for NotificationAdSegmentProvider);
  sub_219BEC154();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for OfferAdSegmentProvider();
  result = sub_219BE1E24();
  if (!result)
  {
    goto LABEL_42;
  }

  if (qword_280EE3518 != -1)
  {
    swift_once();
  }

  sub_2186CBC0C(qword_280EC75D0, type metadata accessor for OfferAdSegmentProvider);
  sub_219BEC154();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (!result)
  {
    goto LABEL_43;
  }

  v7 = [result possiblyUnfetchedAppConfiguration];
  if ([v7 respondsToSelector_])
  {
    v8 = [v7 enableTabiAdSegments];
    swift_unknownObjectRelease();
    if ((v8 & 1) == 0)
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      __swift_project_boxed_opaque_existential_1(a2, a2[3]);
      sub_219274F40();
      result = sub_219BE1E24();
      if (!result)
      {
LABEL_48:
        __break(1u);
        return result;
      }

      v9 = result;
      if (qword_280EE3510 != -1)
      {
        swift_once();
      }

      v10 = &unk_280EC3D98;
      v11 = sub_219274F40;
      goto LABEL_28;
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219274FD4();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v9 = result;
  if (qword_280EE3510 != -1)
  {
    swift_once();
  }

  v10 = &unk_27CC18298;
  v11 = sub_219274FD4;
LABEL_28:
  sub_2186CBC0C(v10, v11);
  sub_219BEC154();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SubscriberAdSegmentProvider();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (qword_280EE3558 != -1)
  {
    swift_once();
  }

  sub_2186CBC0C(qword_280EB6790, type metadata accessor for SubscriberAdSegmentProvider);
  sub_219BEC154();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ExternalSubscriberAdSegmentProvider();
  result = sub_219BE1E24();
  if (!result)
  {
    goto LABEL_45;
  }

  if (qword_280EE3520 != -1)
  {
    swift_once();
  }

  sub_2186CBC0C(qword_280E9DCE8, type metadata accessor for ExternalSubscriberAdSegmentProvider);
  sub_219BEC154();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for WebAccessOptInAdSegmentProvider();
  result = sub_219BE1E24();
  if (!result)
  {
    goto LABEL_46;
  }

  if (qword_280EE3540 != -1)
  {
    swift_once();
  }

  sub_2186CBC0C(qword_280EA7560, type metadata accessor for WebAccessOptInAdSegmentProvider);
  sub_219BEC154();

  return swift_unknownObjectRelease();
}

void sub_219273D54(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SubscriberStatusConditionProvider();
  v3 = sub_219BE1E24();
  if (v3)
  {
    sub_2186CBC0C(&qword_280EA1788, type metadata accessor for SubscriberStatusConditionProvider);
    sub_219BEC414();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_219273F6C(uint64_t a1, void *a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  a3(0);
  result = sub_219BE1E24();
  if (result)
  {
    sub_2186CBC0C(a4, a5);
    sub_219BEC444();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21927403C()
{
  type metadata accessor for BundleSubscriberAdSegmentProvider();
  sub_219BE2904();

  type metadata accessor for ConfigurationAdSegmentProvider();
  sub_219BE2904();

  type metadata accessor for ExternalSubscriberAdSegmentProvider();
  sub_219BE2904();

  type metadata accessor for FollowerAdSegmentProvider();
  sub_219BE2904();

  type metadata accessor for NotificationAdSegmentProvider();
  sub_219BE2904();

  type metadata accessor for OfferAdSegmentProvider();
  sub_219BE2904();

  sub_219274F40();
  sub_219BE2904();

  type metadata accessor for AggregateAdSegmentProvider();
  sub_219BE2904();

  sub_219274FD4();
  sub_219BE2904();

  type metadata accessor for SubscriberAdSegmentProvider();
  sub_219BE2904();

  type metadata accessor for WebAccessOptInAdSegmentProvider();
  sub_219BE2904();

  type metadata accessor for SubscriberStatusConditionProvider();
  sub_219BE2904();
}

uint64_t sub_2192742D8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20);
  result = sub_219BE1E24();
  if (result)
  {
    v2 = result;
    v3 = type metadata accessor for BundleSubscriberAdSegmentProvider();
    v4 = objc_allocWithZone(v3);
    v5 = OBJC_IVAR____TtC7NewsUI233BundleSubscriberAdSegmentProvider_needsUpdate;
    v8 = 1;
    sub_219275068();
    swift_allocObject();
    *&v4[v5] = sub_219BE2174();
    *&v4[OBJC_IVAR____TtC7NewsUI233BundleSubscriberAdSegmentProvider_subscriptionManager] = v2;
    v7.receiver = v4;
    v7.super_class = v3;
    swift_unknownObjectRetain();
    v6 = objc_msgSendSuper2(&v7, sel_init);
    [v2 addObserver_];

    swift_unknownObjectRelease();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2192743F8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (result)
  {
    v2 = result;
    v3 = type metadata accessor for ConfigurationAdSegmentProvider();
    v4 = objc_allocWithZone(v3);
    v5 = OBJC_IVAR____TtC7NewsUI230ConfigurationAdSegmentProvider_needsUpdate;
    v8 = 1;
    sub_219275068();
    swift_allocObject();
    *&v4[v5] = sub_219BE2174();
    *&v4[OBJC_IVAR____TtC7NewsUI230ConfigurationAdSegmentProvider_appConfigurationManager] = v2;
    v7.receiver = v4;
    v7.super_class = v3;
    swift_unknownObjectRetain();
    v6 = objc_msgSendSuper2(&v7, sel_init);
    [v2 addAppConfigObserver_];

    swift_unknownObjectRelease();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219274584(void *a1, void (*a2)(void), unint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9F20);
  result = sub_219BE1E34();
  if (v11)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EC30E0);
    result = sub_219BE1E34();
    if (v9)
    {
      a2(0);
      v7 = swift_allocObject();
      sub_219275068();
      swift_allocObject();
      v7[2] = sub_219BE2174();
      v7[3] = v11;
      v7[4] = v12;
      v7[5] = v9;
      v7[6] = v10;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      sub_218711DA4(v8, v9, a3);
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

uint64_t sub_219274700(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6480);
  result = sub_219BE1E34();
  if (v5)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186D6710(0, &qword_280E8DCA0);
    result = sub_219BE1E24();
    if (result)
    {
      v3 = result;
      type metadata accessor for OfferAdSegmentProvider();
      v4 = swift_allocObject();
      sub_219275068();
      swift_allocObject();
      v4[2] = sub_219BE2174();
      v4[3] = v5;
      v4[4] = v6;
      v4[5] = v3;
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

id sub_219274848(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186D6710(0, &unk_280E8DB88);
    result = sub_219BE1E24();
    if (result)
    {
      v4 = result;
      v5 = type metadata accessor for AggregateAdSegmentProvider();
      v6 = objc_allocWithZone(v5);
      v7 = OBJC_IVAR____TtC7NewsUI226AggregateAdSegmentProvider_needsUpdate;
      v10 = 1;
      sub_219275068();
      swift_allocObject();
      *&v6[v7] = sub_219BE2174();
      v8 = &v6[OBJC_IVAR____TtC7NewsUI226AggregateAdSegmentProvider_readerAdSegmentLastUpdatedKey];
      *v8 = 0xD00000000000001DLL;
      *(v8 + 1) = 0x8000000219D153E0;
      *&v6[OBJC_IVAR____TtC7NewsUI226AggregateAdSegmentProvider_appConfigurationManager] = v3;
      *&v6[OBJC_IVAR____TtC7NewsUI226AggregateAdSegmentProvider_aggregateStoreProvider] = v4;
      v9.receiver = v6;
      v9.super_class = v5;
      return objc_msgSendSuper2(&v9, sel_init);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_2192749D8(void *a1, void (*a2)(void), uint64_t (*a3)(void))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (result)
  {
    v7 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    a2(0);
    result = sub_219BE1E24();
    if (result)
    {
      v8 = result;
      v9 = a3(0);
      v10 = objc_allocWithZone(v9);
      v11 = MEMORY[0x277D85000];
      v12 = &v10[*((*MEMORY[0x277D85000] & *v10) + 0x68)];
      *v12 = 0xD00000000000001DLL;
      *(v12 + 1) = 0x8000000219D153E0;
      *&v10[*((*v11 & *v10) + 0x60)] = v7;
      *&v10[*((*v11 & *v10) + 0x70)] = v8;
      v13.receiver = v10;
      v13.super_class = v9;
      return objc_msgSendSuper2(&v13, sel_init);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_219274B78(void *a1, void (*a2)(void), uint64_t (*a3)(void *))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E1C0);
  result = sub_219BE1E24();
  if (result)
  {
    v7 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280EE9F20);
    result = sub_219BE1E34();
    if (v9)
    {
      a2(0);
      swift_allocObject();
      v8 = a3(v7);

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

uint64_t sub_219274CA0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E1C0);
  result = sub_219BE1E24();
  if (result)
  {
    v2 = result;
    type metadata accessor for WebAccessOptInAdSegmentProvider();
    v3 = swift_allocObject();
    sub_219275068();
    swift_allocObject();
    *(v3 + 16) = sub_219BE2174();
    *(v3 + 24) = v2;
    v4 = objc_opt_self();
    v5 = v2;
    v6 = [v4 defaultCenter];
    [v6 addObserver:v3 selector:sel_webAccessOptInListChanged name:*MEMORY[0x277D30D48] object:0];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_219274DBC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186D6710(0, &qword_280E8DC20);
    result = sub_219BE1E24();
    if (result)
    {
      v4 = result;
      v5 = objc_allocWithZone(type metadata accessor for SubscriberStatusConditionProvider());
      return sub_2196CE088(v3, v4);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_219274F40()
{
  if (!qword_280EC3D90)
  {
    type metadata accessor for AggregateAdSegmentProvider();
    sub_2186CBC0C(qword_280EBC7A8, type metadata accessor for AggregateAdSegmentProvider);
    v0 = type metadata accessor for ReaderAdSegmentProvider();
    if (!v1)
    {
      atomic_store(v0, &qword_280EC3D90);
    }
  }
}

void sub_219274FD4()
{
  if (!qword_280EC3DA0[0])
  {
    sub_219BE4FC4();
    sub_2186CBC0C(&unk_280EE6128, MEMORY[0x277D34BB8]);
    v0 = type metadata accessor for ReaderAdSegmentProvider();
    if (!v1)
    {
      atomic_store(v0, qword_280EC3DA0);
    }
  }
}

void sub_219275068()
{
  if (!qword_280EE7AB8)
  {
    v0 = sub_219BE21C4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE7AB8);
    }
  }
}

void __swiftcall SearchMoreModule.createViewController()(UIViewController *__return_ptr retstr)
{
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  type metadata accessor for SearchMoreViewController();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = v1;
  v2 = sub_219BE1E04();

  swift_unownedRelease();
  if (!v2)
  {
    __break(1u);
  }
}

uint64_t sub_2192751EC(void *a1, uint64_t a2)
{
  v4 = sub_219BE15B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_unownedRetainStrong();
  (*(v5 + 104))(v7, *MEMORY[0x277D2F480], v4);
  sub_219BDD0F4();
  (*(v5 + 8))(v7, v4);

  sub_219BDD274();
  sub_219BE1B94();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_unownedRetainStrong();
  __swift_project_boxed_opaque_existential_1((a2 + 64), *(a2 + 88));
  sub_219BEC134();
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  if (qword_27CC08670 != -1)
  {
    swift_once();
  }

  v8 = sub_219BEBC84();
  __swift_project_value_buffer(v8, qword_27CCD8C90);
  sub_21927560C();
  sub_219BEC144();

  sub_218BDE5B0();
  sub_219BE1BA4();
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t SearchMoreModule.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  return v0;
}

uint64_t SearchMoreModule.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_2192754F0()
{
  v1 = *v0;
  __swift_project_boxed_opaque_existential_1((*v0 + 16), *(*v0 + 40));
  type metadata accessor for SearchMoreViewController();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = v1;
  v2 = sub_219BE1E04();

  result = swift_unownedRelease();
  if (v2)
  {
    return v2;
  }

  __break(1u);
  return result;
}

unint64_t sub_21927560C()
{
  result = qword_280EE34B8;
  if (!qword_280EE34B8)
  {
    sub_219BEBC84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE34B8);
  }

  return result;
}

double sub_21927568C(uint64_t a1, double a2, double a3, double a4)
{
  v8 = type metadata accessor for ChannelTagLayoutOptions();
  v9 = *(a1 + v8[5]);
  sub_219BE7FF4();
  sub_219BF6034();
  v11 = a2 - v10;
  if (v9 == 5)
  {
    v12 = v11 - a3;
    v13 = *(a1 + v8[9]);
  }

  else
  {
    v13 = *(a1 + v8[9]);
    v12 = v11 - *(a1 + v8[8]) - v13 - a3;
  }

  return v12 - v13 - a4;
}

CGFloat sub_219275728@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v6 = COERCE_DOUBLE(sub_219BDCAF4());
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = COERCE_DOUBLE(sub_219BF0CD4());
  v11 = *(v7 + 104);
  LODWORD(width) = *MEMORY[0x277D6D198];
  *&y = v7 + 104;
  height = *&v11;
  v11(v9);
  v106 = *&v10;
  sub_219BF0CC4();
  v13 = v12;
  v14 = *(v7 + 8);
  v107 = *&v6;
  x = *&v14;
  v14(v9, v6);
  sub_219BE8004();
  v16 = v15;
  sub_219BE7FF4();
  v18 = v16 - v17;
  v19 = sub_21927568C(a2, v16 - v17, v13, 0.0);
  v20 = type metadata accessor for ChannelTagLayoutOptions();
  v93 = *(a2 + v20[9]);
  v98 = v13;
  v21 = v13 + v93;
  v22 = *(a2 + v20[5]);
  if (v22 != 5)
  {
    sub_219BE7FF4();
    v21 = v21 + v23 + *(a2 + v20[8]);
  }

  v104 = v20;
  v105 = v22;
  v24 = COERCE_DOUBLE([*(*__swift_project_boxed_opaque_existential_1(a1 a1[3]) + 16)]);
  if (v24 == 0.0)
  {
    sub_219BF5414();
    v24 = COERCE_DOUBLE(sub_219BF53D4());
  }

  v97 = v24;
  sub_21899E550();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09EC0;
  v26 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v27 = objc_opt_self();
  v28 = v26;
  v29 = [v27 labelColor];
  v30 = sub_2186C6148(0, &qword_280E8DA80);
  *(inited + 40) = v29;
  v31 = *MEMORY[0x277D740A8];
  *(inited + 64) = v30;
  *(inited + 72) = v31;
  v32 = sub_2186C6148(0, &qword_280E8DB00);
  v33 = v31;
  v34 = sub_219BF6BD4();
  v35 = v107;
  (*&height)(v9, LODWORD(width), *&v107);
  v36 = sub_219BF0CB4();

  (*&x)(v9, COERCE_DOUBLE(*&v35));
  *(inited + 104) = v32;
  *(inited + 80) = v36;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_218819588();
  swift_arrayDestroy();
  v37 = objc_allocWithZone(MEMORY[0x277CCA898]);
  type metadata accessor for Key(0);
  sub_21899E604();
  v38 = sub_219BF5204();

  v39 = v97;
  v40 = [v37 initWithString:*&v97 attributes:v38];

  [v40 boundingRectWithSize:3 options:0 context:{v19, 1.79769313e308}];
  v41 = v104;
  v42 = *(a2 + v104[10]);
  v108.origin.x = v21;
  v108.origin.y = v42;
  v109 = CGRectIntegral(v108);
  x = v109.origin.x;
  y = v109.origin.y;
  width = v109.size.width;
  height = v109.size.height;
  v110.size.height = v42 + CGRectGetMaxY(v109);
  v110.origin.x = 0.0;
  v110.origin.y = 0.0;
  v110.size.width = v18;
  v111 = CGRectIntegral(v110);
  v43 = v111.origin.x;
  v44 = v111.origin.y;
  v45 = v111.size.width;
  v46 = v111.size.height;
  v47 = v105;
  v99 = v18;
  if (v105 == 5)
  {
    v97 = 0.0;
    sub_219BE7FF4();
    v49 = v48;
    v96 = 0.0;
    v95 = 0.0;
    v94 = 0.0;
  }

  else
  {
    MaxY = CGRectGetMaxY(v111);
    v51 = (a2 + v41[8]);
    v112.size.width = *v51;
    v112.size.height = v51[1];
    v112.origin.y = MaxY * 0.5 - v112.size.height * 0.5;
    v112.origin.x = 0.0;
    v113 = CGRectIntegral(v112);
    v52 = v113.origin.x;
    v53 = v113.origin.y;
    v54 = v113.size.width;
    v55 = v113.size.height;
    sub_219BE7FF4();
    v107 = v56;
    v94 = v52;
    v114.origin.x = v52;
    v95 = v53;
    v114.origin.y = v53;
    v96 = v54;
    v114.size.width = v54;
    v97 = v55;
    v114.size.height = v55;
    v49 = v107 + CGRectGetMaxX(v114);
  }

  v57 = v43;
  v115.origin.x = v43;
  v58 = v44;
  v115.origin.y = v44;
  v106 = v45;
  v115.size.width = v45;
  v107 = v46;
  v115.size.height = v46;
  v59 = CGRectGetMaxY(v115);
  v116.size.width = v98;
  v116.origin.y = v59 * 0.5 - v98 * 0.5;
  v116.origin.x = v49;
  v116.size.height = v98;
  v117 = CGRectIntegral(v116);
  v60 = v117.origin.x;
  v61 = v117.origin.y;
  v62 = v117.size.width;
  v63 = v117.size.height;
  if (*(a2 + v41[7]) == 1)
  {
    sub_219BE7FF4();
    v65 = v93 * 0.5 + v64 + *(a2 + v41[8]);
  }

  else
  {
    MinX = CGRectGetMinX(v117);
    sub_219BE7FF4();
    v65 = MinX - v67;
  }

  v98 = v65;
  v118.origin.x = v60;
  v118.origin.y = v61;
  v118.size.width = v62;
  v118.size.height = v63;
  v68 = CGRectGetMinX(v118);
  v119.origin.x = v57;
  v69 = v58;
  v119.origin.y = v58;
  v119.size.width = v106;
  v119.size.height = v107;
  v70 = CGRectGetHeight(v119) + -0.5;
  v120.origin.x = v60;
  v120.origin.y = v61;
  v120.size.width = v62;
  v120.size.height = v63;
  v71 = v99 - CGRectGetMinX(v120);
  v72 = *(a2 + v41[11]) == 0;
  if (*(a2 + v41[11]))
  {
    v73 = 0.0;
  }

  else
  {
    v73 = v68;
  }

  v99 = v73;
  if (v72)
  {
    v74 = v70;
  }

  else
  {
    v74 = 0.0;
  }

  v93 = v74;
  if (!v72)
  {
    v71 = 0.0;
  }

  v92 = v71;
  v75 = 0.5;
  if (!v72)
  {
    v75 = 0.0;
  }

  v91 = v75;
  v76 = *(a2 + v41[6]);
  sub_219BF6014();
  v104 = v77;
  v79 = v78;
  v81 = v80;
  v98 = v82;

  *a3 = v57;
  *(a3 + 8) = v69;
  v83 = v107;
  *(a3 + 16) = v106;
  *(a3 + 24) = v83;
  *(a3 + 32) = v60;
  *(a3 + 40) = v61;
  *(a3 + 48) = v62;
  *(a3 + 56) = v63;
  v84 = y;
  *(a3 + 64) = x;
  *(a3 + 72) = v84;
  v85 = height;
  *(a3 + 80) = width;
  *(a3 + 88) = v85;
  v86 = v95;
  *(a3 + 96) = v94;
  *(a3 + 104) = v86;
  v87 = v97;
  *(a3 + 112) = v96;
  *(a3 + 120) = v87;
  *(a3 + 128) = v47;
  *(a3 + 129) = v76;
  v88 = v93;
  *(a3 + 136) = v99;
  *(a3 + 144) = v88;
  v89 = v91;
  *(a3 + 152) = v92;
  *(a3 + 160) = v89;
  *(a3 + 168) = v104;
  *(a3 + 176) = v79;
  result = v98;
  *(a3 + 184) = v81;
  *(a3 + 192) = result;
  return result;
}

void sub_219275F48(uint64_t a1@<X8>)
{
  v2 = v1;
  v71 = a1;
  v3 = sub_219BE4894();
  v56 = *(v3 - 8);
  v57 = v3;
  MEMORY[0x28223BE20](v3);
  v55 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BE4904();
  v62 = *(v5 - 8);
  v63 = v5;
  MEMORY[0x28223BE20](v5);
  v69 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE4034();
  v60 = *(v7 - 8);
  v61 = v7;
  MEMORY[0x28223BE20](v7);
  v68 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BE3F94();
  v58 = *(v9 - 8);
  v59 = v9;
  MEMORY[0x28223BE20](v9);
  v65 = (&v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_219BE3D54();
  v66 = *(v11 - 8);
  v67 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v64 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v70 = &v54 - v14;
  v15 = sub_219BE3D64();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21883ECD4(0, &qword_280EE6200, MEMORY[0x277D35380]);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v54 - v20;
  v22 = sub_219BE48F4();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = [*(v2 + 16) cachedSubscription];
  v27 = [v26 isSubscribed];

  if ((v27 & 1) == 0)
  {
    (*(v62 + 104))(v25, *MEMORY[0x277D35398], v63);
    v32 = *MEMORY[0x277D35390];
    v33 = *(v23 + 104);
    v63 = v25;
    v33(v25, v32, v22);
    swift_getObjectType();
    (*(v16 + 104))(v18, *MEMORY[0x277D34D60], v15);
    sub_219BE3F44();
    (*(v16 + 8))(v18, v15);
    v34 = *(v2 + 80);
    v35 = [v34 configuration];
    if (!v35)
    {
      __break(1u);
      goto LABEL_20;
    }

    v36 = v35;
    v62 = v23;
    v37 = v21;
    if ([v35 respondsToSelector_])
    {
      v38 = [v36 paidBundleConfig];
      swift_unknownObjectRelease();
      v39 = [v38 offeredBundlePurchaseIDs];

      if (v39)
      {
        v40 = sub_219BF5924();

        goto LABEL_11;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v40 = MEMORY[0x277D84F90];
LABEL_11:
    v41 = v70;
    sub_219276848(v37, v40, v70);
    sub_219BF5414();
    v42 = objc_allocWithZone(MEMORY[0x277D31348]);
    v43 = sub_219BF53D4();

    v44 = sub_219BF53D4();
    v45 = [v42 initWithTagType:0 identifier:v43 name:v44];

    if (v45)
    {
      *v65 = v45;
      (*(v58 + 104))();
      (*(v66 + 16))(v64, v41, v67);
      v46 = v63;
      sub_219BE48D4();
      sub_219BE48B4();
      (*(v60 + 104))(v68, *MEMORY[0x277D34EF0], v61);
      sub_219BE48E4();
      v47 = [v34 &selRef_shadowAgedPersonalizationScore];
      if (v47)
      {
        v48 = v47;

        if ([v48 respondsToSelector_])
        {
          v49 = v62;
          v50 = [v48 paidBundleConfig];
          swift_unknownObjectRelease();
          v51 = [v50 offeredBundlePurchaseIDsMap];

          v52 = v71;
          if (v51)
          {
            sub_219BF5214();

LABEL_18:
            (*(v56 + 104))(v55, *MEMORY[0x277D35388], v57);
            sub_219BE3CD4();
            (*(v66 + 8))(v70, v67);
            sub_219276ED0(v37, &qword_280EE6200, MEMORY[0x277D35380]);
            (*(v49 + 8))(v46, v22);
            v53 = sub_219BE3D34();
            (*(*(v53 - 8) + 56))(v52, 0, 1, v53);
            return;
          }
        }

        else
        {
          v49 = v62;
          swift_unknownObjectRelease();
          v52 = v71;
        }

        sub_2194B0E30(MEMORY[0x277D84F90]);
        goto LABEL_18;
      }

LABEL_21:
      __break(1u);
      return;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v28 = sub_219BE3D34();
  v29 = *(*(v28 - 8) + 56);
  v30 = v28;
  v31 = v71;

  v29(v31, 1, 1, v30);
}

uint64_t sub_219276848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v39 = a2;
  sub_21883ECD4(0, &qword_280EE6370, MEMORY[0x277D35050]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v37 - v6;
  sub_21883ECD4(0, &qword_280EE6200, MEMORY[0x277D35380]);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v40 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v37 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - v14;
  v16 = sub_219BE4864();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  sub_219276DD4(a1, v15);
  v21 = *(v17 + 48);
  if (v21(v15, 1, v16) == 1)
  {
    sub_219276ED0(v15, &qword_280EE6200, MEMORY[0x277D35380]);
LABEL_5:
    v24 = v20;
    goto LABEL_6;
  }

  v38 = a3;
  v37 = *(v17 + 32);
  v37(v19, v15, v16);
  sub_219BE47F4();
  v22 = sub_219BE4304();
  v23 = (*(*(v22 - 8) + 48))(v7, 1, v22);
  sub_219276ED0(v7, &qword_280EE6370, MEMORY[0x277D35050]);
  if (v23 == 1)
  {
    (*(v17 + 8))(v19, v16);
    a3 = v38;
    goto LABEL_5;
  }

  if ((sub_219BE47C4() & 1) == 0)
  {
    v34 = v38;
    v37(v38, v19, v16);
    v35 = *MEMORY[0x277D34D48];
    v36 = sub_219BE3D54();
    return (*(*(v36 - 8) + 104))(v34, v35, v36);
  }

  v24 = v20;
  (*(v17 + 8))(v19, v16);
  a3 = v38;
LABEL_6:
  *a3 = v39;
  sub_219276DD4(v24, v13);
  v25 = v21(v13, 1, v16);

  v26 = v40;
  if (v25 == 1)
  {
    sub_219276ED0(v13, &qword_280EE6200, MEMORY[0x277D35380]);
    v27 = 0;
  }

  else
  {
    v28 = sub_219BE47A4();
    (*(v17 + 8))(v13, v16);
    v27 = v28 & 1;
  }

  a3[8] = v27;
  sub_219276E54();
  v30 = *(v29 + 64);
  sub_219276DD4(v24, v26);
  if (v21(v26, 1, v16) == 1)
  {
    sub_219BE47B4();
    if (v21(v26, 1, v16) != 1)
    {
      sub_219276ED0(v26, &qword_280EE6200, MEMORY[0x277D35380]);
    }
  }

  else
  {
    (*(v17 + 32))(&a3[v30], v26, v16);
  }

  v31 = *MEMORY[0x277D34D50];
  v32 = sub_219BE3D54();
  return (*(*(v32 - 8) + 104))(a3, v31, v32);
}

uint64_t sub_219276D68@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_219BE3D34();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_219276DD4(uint64_t a1, uint64_t a2)
{
  sub_21883ECD4(0, &qword_280EE6200, MEMORY[0x277D35380]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_219276E54()
{
  if (!qword_280E8EE30)
  {
    sub_2186D0BA8();
    sub_219BE4864();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_280E8EE30);
    }
  }
}

uint64_t sub_219276ED0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_21883ECD4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t FCChannelUpsellTriggerMethod.description.getter(uint64_t a1)
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0xD000000000000010;
  v3 = 0xD000000000000011;
  v4 = 0xD000000000000012;
  if (a1 != 5)
  {
    v4 = 0x6E776F6E6B6E75;
  }

  if (a1 != 4)
  {
    v3 = v4;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  if (a1 == 2)
  {
    v1 = 0xD000000000000010;
  }

  if (a1 == 1)
  {
    v1 = 0x6C6C6F4664726168;
  }

  if (a1 <= 2)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_219277008(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  sub_2186DCF58();
  v3[17] = swift_task_alloc();
  v3[18] = type metadata accessor for ForYouTagFeedGroupKnobs();
  v3[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2192770CC, 0, 0);
}

void sub_2192770CC()
{
  if ([*(*(v0 + 14) + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_featureAvailability) useFood] && (v1 = objc_msgSend(objc_msgSend(*(*(v0 + 14) + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor), sel_backingTag), sel_isFoodHub), swift_unknownObjectRelease(), v1))
  {
    v2 = *(v0 + 19);
    v3 = *(v0 + 17);
    v4 = *(v0 + 14);
    sub_219BF6394();
    swift_getObjectType();
    sub_219BF6274();
    swift_unknownObjectRelease();
    sub_218A42648(*(*(*(v4 + 24) + 24) + 16) + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_forYouKnobs, v2);
    sub_219BEF524();
    v5 = *(v0 + 11);
    sub_219BDBD24();
    v6 = sub_219BDBD34();
    v7 = *(v6 - 8);
    (*(v7 + 56))(v3, 0, 1, v6);
    sub_219BEF524();
    v8 = v0[12];
    v9 = 0;
    if ((*(v7 + 48))(v3, 1, v6) != 1)
    {
      v10 = *(v0 + 17);
      v9 = sub_219BDBC04();
      (*(v7 + 8))(v10, v6);
    }

    v11 = [objc_allocWithZone(MEMORY[0x277D30F38]) initWithStartDate:v9 timeInterval:v8];
    *(v0 + 20) = v11;

    if (v11)
    {
      v12 = sub_219BEEA74();
      if (!v12)
      {
        v12 = [objc_opt_self() defaultCachePolicy];
      }

      v13 = v12;
      v14 = *MEMORY[0x277D30BC0];
      *(v0 + 21) = v12;
      *(v0 + 22) = v14;
      v15 = qword_280E8D7F8;
      v16 = v14;
      if (v15 != -1)
      {
        swift_once();
      }

      v17 = *(v0 + 16);
      v18 = qword_280F61708;
      *(v0 + 23) = qword_280F61708;
      v19 = v17[60];
      v20 = v17[61];
      __swift_project_boxed_opaque_existential_1(v17 + 57, v19);
      *(v0 + 2) = v5;
      *(v0 + 3) = v11;
      *(v0 + 4) = 1;
      *(v0 + 5) = v13;
      *(v0 + 6) = 135486;
      *(v0 + 7) = v16;
      *(v0 + 8) = v18;
      v21 = *(v20 + 16);
      v22 = v18;
      v26 = (v21 + *v21);
      v23 = swift_task_alloc();
      *(v0 + 24) = v23;
      *v23 = v0;
      v23[1] = sub_219277508;

      v26(v0 + 2, v19, v20);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v24 = *(v0 + 1);
    v25 = MEMORY[0x277D84F90];

    v24(v25);
  }
}

uint64_t sub_219277508(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v5 = sub_2192776CC;
  }

  else
  {
    *(v4 + 208) = a1;
    v5 = sub_219277630;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_219277630()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v3 = *(v0 + 168);

  v4 = *(v0 + 208);
  sub_219277848(*(v0 + 152));

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_2192776CC()
{
  v1 = *(v0 + 200);
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  v4 = *(v0 + 168);

  sub_219BF61F4();
  sub_2186F20D4();
  v5 = swift_allocObject();
  *(v0 + 72) = 0;
  *(v5 + 16) = xmmword_219C09BA0;
  *(v0 + 80) = 0xE000000000000000;
  *(v0 + 104) = v1;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  v6 = *(v0 + 72);
  v7 = *(v0 + 80);
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = sub_2186FC3BC();
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  sub_219BE5314();

  sub_219277848(*(v0 + 152));

  v8 = *(v0 + 8);
  v9 = MEMORY[0x277D84F90];

  return v8(v9);
}

uint64_t sub_219277848(uint64_t a1)
{
  v2 = type metadata accessor for ForYouTagFeedGroupKnobs();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for PuzzleFeaturedTagFeedGroupConfigData()
{
  result = qword_280E9AC50;
  if (!qword_280E9AC50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219277918@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BF1934();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v18 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219277E48(0, &qword_280E8C850, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219277DF4();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v16;
    v11 = v17;
    v19 = 1;
    sub_218933D7C(&qword_280E90808);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    *v11 = 38;
    v13 = type metadata accessor for PuzzleFeaturedTagFeedGroupConfigData();
    (*(v12 + 32))(&v11[*(v13 + 20)], v18, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_219277B80(void *a1)
{
  v3 = v1;
  sub_219277E48(0, &qword_27CC182A0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219277DF4();
  sub_219BF7B44();
  v11[15] = *v3;
  v11[14] = 0;
  sub_218933D28();
  sub_219BF7834();
  if (!v2)
  {
    type metadata accessor for PuzzleFeaturedTagFeedGroupConfigData();
    v11[13] = 1;
    sub_219BF1934();
    sub_218933D7C(&qword_280E90810);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_219277D4C(uint64_t a1)
{
  v2 = sub_219277DF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219277D88(uint64_t a1)
{
  v2 = sub_219277DF4();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_219277DF4()
{
  result = qword_280E9AC88;
  if (!qword_280E9AC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9AC88);
  }

  return result;
}

void sub_219277E48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219277DF4();
    v7 = a3(a1, &type metadata for PuzzleFeaturedTagFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_219277EC0()
{
  result = qword_27CC182A8;
  if (!qword_27CC182A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC182A8);
  }

  return result;
}

unint64_t sub_219277F18()
{
  result = qword_280E9AC78;
  if (!qword_280E9AC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9AC78);
  }

  return result;
}

unint64_t sub_219277F70()
{
  result = qword_280E9AC80;
  if (!qword_280E9AC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9AC80);
  }

  return result;
}

uint64_t sub_219277FC4(uint64_t a1, uint64_t a2)
{
  sub_218718690(v2 + 16, v10);
  v5 = *(v2 + 56);
  sub_218718690(v2 + 64, &v11);
  sub_218718690(v2 + 104, &v12);
  sub_218718690(v2 + 144, &v13);
  v9[0] = 0x657461647055;
  v9[1] = 0xE600000000000000;
  v10[5] = a1;
  v10[6] = a2;
  v10[7] = v5;
  sub_21927827C(v9, &v8);
  sub_2191396F0();
  swift_allocObject();
  sub_2192782D8();
  swift_unknownObjectRetain();

  v6 = sub_219BE6E64();
  sub_21927832C(v9);
  return v6;
}

uint64_t sub_2192780BC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  __swift_destroy_boxed_opaque_existential_1(v0 + 104);
  __swift_destroy_boxed_opaque_existential_1(v0 + 144);

  return swift_deallocClassInstance();
}

unint64_t sub_21927813C()
{
  result = qword_280EBAB50;
  if (!qword_280EBAB50)
  {
    type metadata accessor for PuzzleContinuePlayingModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBAB50);
  }

  return result;
}

uint64_t sub_219278194(uint64_t a1, uint64_t a2)
{
  sub_218718690(*v2 + 16, v9);
  v8[0] = 0x6D726177657250;
  v8[1] = 0xE700000000000000;
  v9[5] = a1;
  v9[6] = a2;
  sub_219278380(v8, &v7);
  sub_2191396F0();
  swift_allocObject();
  sub_2192783DC();

  v5 = sub_219BE6E64();
  sub_219278430(v8);
  return v5;
}

unint64_t sub_2192782D8()
{
  result = qword_27CC182B0;
  if (!qword_27CC182B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC182B0);
  }

  return result;
}

unint64_t sub_2192783DC()
{
  result = qword_280E93AC8[0];
  if (!qword_280E93AC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E93AC8);
  }

  return result;
}

uint64_t sub_2192784AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = sub_219BF1934();
  v15 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v17 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192789D8(0, &qword_27CC182B8, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219278984();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v15;
    v11 = v16;
    v18 = 0;
    sub_218933D7C(&qword_280E90808);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    *(v11 + *(type metadata accessor for TagsSearchMoreFeedGroupConfigData() + 20)) = 2;
    (*(v12 + 32))(v11, v17, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_219278710(void *a1)
{
  v3 = v1;
  sub_2192789D8(0, &qword_27CC182C8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219278984();
  sub_219BF7B44();
  v11[15] = 0;
  sub_219BF1934();
  sub_218933D7C(&qword_280E90810);
  sub_219BF7834();
  if (!v2)
  {
    v11[14] = *(v3 + *(type metadata accessor for TagsSearchMoreFeedGroupConfigData() + 20));
    v11[13] = 1;
    sub_21897C858();
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2192788DC(uint64_t a1)
{
  v2 = sub_219278984();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219278918(uint64_t a1)
{
  v2 = sub_219278984();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_219278984()
{
  result = qword_27CC182C0;
  if (!qword_27CC182C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC182C0);
  }

  return result;
}

void sub_2192789D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219278984();
    v7 = a3(a1, &type metadata for TagsSearchMoreFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_219278A50()
{
  result = qword_27CC182D0;
  if (!qword_27CC182D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC182D0);
  }

  return result;
}

unint64_t sub_219278AA8()
{
  result = qword_27CC182D8;
  if (!qword_27CC182D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC182D8);
  }

  return result;
}

unint64_t sub_219278B00()
{
  result = qword_27CC182E0;
  if (!qword_27CC182E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC182E0);
  }

  return result;
}

uint64_t sub_219278B54()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC934();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v8[1] = 0;
  sub_2186C6588(0, &qword_280EE9060);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC182E8 = result;
  return result;
}

uint64_t sub_219278D44()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC934();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v8[15] = 0;
  sub_2186C6588(0, &qword_280EE9078);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC182F0 = result;
  return result;
}

uint64_t sub_219278F34()
{
  sub_219BDC984();
  swift_allocObject();
  result = sub_219BDC974();
  qword_27CC182F8 = result;
  return result;
}

uint64_t sub_219278F94(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CC084A0 != -1)
  {
    swift_once();
  }

  return sub_219BDC924();
}

uint64_t sub_219279054()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v8[1] = MEMORY[0x277D84F90];
  sub_21876BDF8();
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC18300 = result;
  return result;
}

uint64_t sub_219279234()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShortcutsConfigResource.init(categories:)(MEMORY[0x277D84F90]);
  v8 = *MEMORY[0x277D6D0A8];
  v9 = *(v5 + 104);
  v11[0] = v11[2];
  v9(v7, v8, v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v11[1] = v11[0];
  sub_219279FB8(0, &qword_27CC18360, sub_21927A018);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC18308 = result;
  return result;
}

uint64_t sub_219279458()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v8[1] = MEMORY[0x277D84F90];
  sub_21876BDF8();
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC18310 = result;
  return result;
}

uint64_t sub_219279638()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_219279FB8(0, &qword_27CC18338, sub_219279E94);
  v10[15] = 1;
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  sub_219279EE8();
  sub_21876BEFC(0, &qword_27CC18350, &type metadata for ShortcutsCustomizeAffordance.Position, MEMORY[0x277D6D0B0]);
  *(swift_allocObject() + 16) = xmmword_219C09EC0;
  v10[14] = 1;
  sub_219BDC954();
  v10[13] = 0;
  sub_219BDC954();
  sub_219279F64();
  result = sub_219BDC9B4();
  qword_27CC18318 = result;
  return result;
}

uint64_t static Settings.Shortcuts.ConfigOverrides.customizeAffordancePosition.getter()
{
  if (qword_27CC084C8 != -1)
  {
    swift_once();
  }
}

uint64_t Settings.Shortcuts.ConfigOverrides.__allocating_init(key:defaultValue:access:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_219BDC934();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v6 + 16))(v8, a4, v5);
  v9 = sub_219BDC824();
  (*(v6 + 8))(a4, v5);
  return v9;
}

uint64_t Settings.Shortcuts.ConfigOverrides.init(key:defaultValue:access:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_219BDC934();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  (*(v6 + 16))(&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v5);
  v8 = sub_219BDC824();
  (*(v6 + 8))(a4, v5);
  return v8;
}

uint64_t Settings.Shortcuts.ConfigOverrides.__deallocating_deinit()
{
  _s11TeaSettings0B0C7NewsUI2E7ModulesV10SearchFeedV15ConfigOverridesCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_219279C08()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_219BDC934();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings.Shortcuts.ConfigOverrides();
  (*(v5 + 104))(v7, *MEMORY[0x277D6D098], v4);
  *v3 = sub_219BF5414();
  v3[1] = v8;
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A0], v0);
  result = sub_219BDC814();
  qword_27CC18320 = result;
  return result;
}

uint64_t type metadata accessor for Settings.Shortcuts.ConfigOverrides()
{
  result = qword_27CC18328;
  if (!qword_27CC18328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_219279E94()
{
  result = qword_27CC18340;
  if (!qword_27CC18340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18340);
  }

  return result;
}

void sub_219279EE8()
{
  if (!qword_27CC18348)
  {
    sub_21876BEFC(255, &qword_27CC18350, &type metadata for ShortcutsCustomizeAffordance.Position, MEMORY[0x277D6D0B0]);
    v0 = sub_219BF78A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC18348);
    }
  }
}

unint64_t sub_219279F64()
{
  result = qword_27CC18358;
  if (!qword_27CC18358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18358);
  }

  return result;
}

void sub_219279FB8(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_219BDC9E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_21927A018()
{
  result = qword_27CC18368;
  if (!qword_27CC18368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18368);
  }

  return result;
}

id sub_21927A06C()
{
  sub_21927A2DC();
  sub_219BE75E4();
  sub_21904E4DC(&v10, v13);
  sub_21904E4DC(v13, &v14);
  v11[10] = v25;
  v11[11] = v26;
  v1 = v14;
  v12 = v27;
  v11[6] = v21;
  v11[7] = v22;
  v11[8] = v23;
  v11[9] = v24;
  v11[2] = v17;
  v11[3] = v18;
  v11[4] = v19;
  v11[5] = v20;
  v11[0] = v15;
  v11[1] = v16;
  sub_218C94EE0();
  v2 = sub_219BF5FA4();
  __swift_project_boxed_opaque_existential_1(v0 + 11, v0[14]);
  v3 = sub_219BE6134();
  sub_218E13964(v1, v11, v3);

  v4 = v0[9];
  v5 = *(&v25 + 1);
  v6 = v26;
  v7 = v27;
  v8 = v2;
  [v8 setSeparatorInset_];
  [v8 setBackgroundColor_];
  [v8 setAccessoryType_];
  sub_21927A338(v13);

  return v8;
}

uint64_t sub_21927A238()
{
  sub_218774F78(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 88);

  return swift_deallocClassInstance();
}

id sub_21927A2AC@<X0>(void *a1@<X8>)
{
  result = sub_21927A06C();
  *a1 = result;
  return result;
}

void sub_21927A2DC()
{
  if (!qword_27CC0AF70)
  {
    sub_21895221C();
    v0 = sub_219BE75F4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0AF70);
    }
  }
}

unint64_t sub_21927A38C()
{
  v0 = type metadata accessor for ChannelIssuesGroupTitleViewLayoutAttributes();
  MEMORY[0x28223BE20](v0);
  v2 = (v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = type metadata accessor for ChannelIssuesLayoutSectionDescriptor.Header();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953058();
  sub_219BE8184();
  v7 = v17[1];
  result = sub_219BE9604();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v7 + 16))
  {
    sub_2190A7080(v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * result, v6, type metadata accessor for ChannelIssuesLayoutSectionDescriptor.Header);

    sub_2190A6FC4(v6, v2);
    sub_21927B148();
    v9 = sub_219BF6414();
    v10 = (v2 + *(v0 + 28));
    v11 = *v10;
    v12 = v10[1];
    v13 = sub_219BE8204();
    sub_219605968(v11, v12, v2, v13);

    v14 = swift_allocObject();
    swift_weakInit();
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    *(v16 + 24) = v15;

    sub_219BE81F4();

    sub_21927B23C(v2, type metadata accessor for ChannelIssuesGroupTitleViewLayoutAttributes);

    return v9;
  }

  __break(1u);
  return result;
}

void sub_21927A630(void *a1, void *a2)
{
  sub_21927B1E4();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ChannelIssuesGroupTitleViewLayoutAttributes();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - v12;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v33 = a1;
    swift_beginAccess();
    v16 = swift_unknownObjectWeakLoadStrong();
    if (!v16)
    {

      return;
    }

    v17 = v16;
    sub_219BE5824();
    if (!v35)
    {

      sub_218806FD0(aBlock);
      (*(v8 + 56))(v6, 1, 1, v7);
      goto LABEL_8;
    }

    v18 = swift_dynamicCast();
    (*(v8 + 56))(v6, v18 ^ 1u, 1, v7);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {

LABEL_8:
      sub_21927B23C(v6, sub_21927B1E4);
      return;
    }

    sub_2190A6FC4(v6, v13);
    v19 = *(v15 + 56);
    if (v19)
    {

      if ((sub_219BEA374() & 1) == 0)
      {
        sub_21927B23C(v13, type metadata accessor for ChannelIssuesGroupTitleViewLayoutAttributes);

        goto LABEL_15;
      }

      v32 = objc_opt_self();
      sub_2190A7080(v13, v11, type metadata accessor for ChannelIssuesGroupTitleViewLayoutAttributes);
      v20 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v31 = (v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
      v21 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
      v22 = swift_allocObject();
      v23 = v33;
      *(v22 + 16) = v15;
      *(v22 + 24) = v23;
      sub_2190A6FC4(v11, v22 + v20);
      *(v22 + v31) = v19;
      *(v22 + v21) = v17;
      *(v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8)) = a2;
      v24 = swift_allocObject();
      *(v24 + 16) = sub_21927B29C;
      *(v24 + 24) = v22;
      v36 = sub_218807D50;
      v37 = v24;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_218807CE4;
      v35 = &block_descriptor_108;
      v25 = _Block_copy(aBlock);

      v26 = v33;
      v27 = v17;
      v28 = a2;

      [v32 performWithoutAnimation_];
      _Block_release(v25);

      sub_21927B23C(v13, type metadata accessor for ChannelIssuesGroupTitleViewLayoutAttributes);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return;
      }

      __break(1u);
    }

    sub_21927B23C(v13, type metadata accessor for ChannelIssuesGroupTitleViewLayoutAttributes);
LABEL_15:
  }
}

void sub_21927AB00(uint64_t a1, uint64_t a2, double *a3)
{
  sub_21927B148();
  sub_219BF5044();
  v4 = (a3 + *(type metadata accessor for ChannelIssuesGroupTitleViewLayoutAttributes() + 28));
  v5 = *v4;
  v6 = v4[1];
  v7 = sub_219BE8204();
  sub_219605968(v5, v6, a3, v7);
}

void sub_21927AC28(uint64_t a1, void *a2)
{
  v3 = sub_219BDC014();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BDC104();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = MEMORY[0x277D83B88];
    sub_2186F83B8(0, &qword_280E8B660, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_219C09BA0;
    v15 = [a2 indexPath];
    sub_219BDC0B4();

    v16 = sub_219BDC0F4();
    (*(v8 + 8))(v10, v7);
    *(v14 + 32) = v16;
    v18 = v14;
    sub_21927AFA8(&qword_27CC10BB8, MEMORY[0x277CC9A28]);
    sub_2186F83B8(0, &unk_280E8ED80, v13, MEMORY[0x277D83940]);
    sub_218CB84C0();
    sub_219BF7164();
    v17 = sub_219BDBFC4();
    (*(v4 + 8))(v6, v3);
    [v12 reloadSections_];
  }
}

uint64_t sub_21927AFA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21927AFF0()
{
  v1 = sub_219BE9834();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_21927B148();
  (*(v2 + 104))(v4, *MEMORY[0x277D6E758], v1);
  sub_219BF6444();
  (*(v2 + 8))(v4, v1);
  *(v5 + 56) = sub_219BF63F4();
}

void sub_21927B148()
{
  if (!qword_27CC18370)
  {
    type metadata accessor for ChannelIssuesGroupTitleView();
    sub_21927AFA8(&qword_27CC168B0, type metadata accessor for ChannelIssuesGroupTitleView);
    v0 = sub_219BE8224();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC18370);
    }
  }
}

void sub_21927B1E4()
{
  if (!qword_27CC18378)
  {
    type metadata accessor for ChannelIssuesGroupTitleViewLayoutAttributes();
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC18378);
    }
  }
}

uint64_t sub_21927B23C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21927B29C()
{
  v1 = *(type metadata accessor for ChannelIssuesGroupTitleViewLayoutAttributes() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = (v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));

  sub_21927AB00(v2, v3, v4);
}

unint64_t sub_21927B34C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_218718690(a1, v9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186CF94C();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_218783DA0();
    result = sub_219BE1E24();
    if (result)
    {
      v6 = result;
      v7 = type metadata accessor for PaywallRouter();
      v8 = swift_allocObject();
      sub_21875F93C(v9, (v8 + 2));
      v8[7] = v5;
      v8[8] = v6;
      v8[9] = 1;
      a2[3] = v7;
      result = sub_2187F60AC();
      a2[4] = result;
      *a2 = v8;
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

char *sub_21927B444(uint64_t *a1, uint64_t a2)
{
  sub_21927C248(0, &qword_27CC13BD0, MEMORY[0x277D33E48], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v45 - v5;
  v7 = sub_219BF34F4();
  v53 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v52 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v45 - v11;
  v51 = v13;
  MEMORY[0x28223BE20](v10);
  v15 = &v45 - v14;
  v16 = *a1;
  v50 = a2;
  v17 = *(a2 + 16);
  v18 = [v17 identifier];
  sub_219BF5414();

  v49 = v16;
  v19 = v53;
  sub_219BF29A4();

  if ((*(v19 + 48))(v6, 1, v7) == 1)
  {
    sub_21927C08C(v6);
    sub_21927C118();
    swift_allocError();
    *v20 = v17;
    swift_willThrow();
    swift_unknownObjectRetain();
  }

  else
  {
    v46 = *(v19 + 32);
    v47 = v19 + 32;
    v46(v15, v6, v7);
    v48 = v15;
    v21 = sub_219BF34A4();
    v22 = *(v21 + 16);
    if (v22)
    {
      v24 = *(v19 + 16);
      v23 = v19 + 16;
      v25 = *(v23 + 64);
      v45 = v21;
      v26 = v21 + ((v25 + 32) & ~v25);
      v55 = *(v23 + 56);
      v56 = v24;
      v57 = v23;
      v27 = (v23 - 8);
      v28 = MEMORY[0x277D84F90];
      v54 = v7;
      v24(v12, v26, v7);
      while (1)
      {
        v30 = sub_219BF34D4();
        v32 = v31;
        (*v27)(v12, v7);
        if (v32)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = sub_218840D24(0, *(v28 + 2) + 1, 1, v28);
          }

          v34 = *(v28 + 2);
          v33 = *(v28 + 3);
          if (v34 >= v33 >> 1)
          {
            v28 = sub_218840D24((v33 > 1), v34 + 1, 1, v28);
          }

          *(v28 + 2) = v34 + 1;
          v29 = &v28[16 * v34];
          *(v29 + 4) = v30;
          *(v29 + 5) = v32;
          v7 = v54;
        }

        v26 += v55;
        if (!--v22)
        {
          break;
        }

        v56(v12, v26, v7);
      }

      v19 = v53;
    }

    else
    {

      v28 = MEMORY[0x277D84F90];
    }

    v58 = v28;
    sub_21870F4C4(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_218ACCAC0();
    v6 = sub_219BF56E4();

    if (*(v6 + 2))
    {
      v36 = v19;
      MEMORY[0x28223BE20](v35);
      *(&v45 - 2) = v50;
      *(&v45 - 1) = v6;
      sub_21927C248(0, &qword_280E8EFD0, type metadata accessor for TagModel, MEMORY[0x277D83940]);
      sub_219BE3204();

      v37 = v52;
      v38 = v48;
      (*(v19 + 16))(v52, v48, v7);
      v39 = (*(v36 + 80) + 24) & ~*(v36 + 80);
      v40 = swift_allocObject();
      *(v40 + 16) = v49;
      v46((v40 + v39), v37, v7);

      v41 = v7;
      v42 = sub_219BE2E54();
      sub_21927BFE8();
      v6 = sub_219BE2F64();

      (*(v36 + 8))(v38, v41);
    }

    else
    {

      sub_21927C118();
      swift_allocError();
      *v43 = 0;
      swift_willThrow();
      (*(v19 + 8))(v48, v7);
    }
  }

  return v6;
}

uint64_t sub_21927BA38()
{
  type metadata accessor for TagModel();

  sub_219BF3494();
  sub_21927C248(0, &unk_27CC183B0, sub_21927BFE8, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_21927BB04(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = [*(*a1 + 16) displayName];
  v4 = sub_219BF5414();
  v6 = v5;

  v7 = [*(v2 + 16) displayName];
  v8 = sub_219BF5414();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_219BF78F4();
  }

  return v12 & 1;
}

uint64_t sub_21927BBD0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[1];
  v17 = *a1;
  sub_218718690(a2 + 80, v19);
  v14 = v21;
  v15 = v20;
  v13 = __swift_project_boxed_opaque_existential_1(v19, v20);
  v22 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
LABEL_18:
    v3 = sub_219BF7214();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v18 = MEMORY[0x277D84F90];
  while (v3 != v4)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x21CECE0F0](v4, v2);
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v5 = *(v2 + 8 * v4 + 32);

      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    v7 = [*(v5 + 16) asSports];

    ++v4;
    if (v7)
    {
      MEMORY[0x21CECC690](v8);
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_219BF5A14();
      }

      sub_219BF5A54();
      v18 = v22;
      v4 = v6;
    }
  }

  v9 = (*(v14 + 16))(v18, v15);
  v11 = v10;

  __swift_destroy_boxed_opaque_existential_1(v19);
  v19[0] = *(a2 + 16);
  v19[1] = v17;
  v19[2] = v2;
  v20 = v9;
  v21 = v11;
  sub_21870F4C4(0, &unk_27CC18398, &type metadata for SportsNavigationPrewarmFetchResult, MEMORY[0x277D6CF30]);
  swift_allocObject();
  swift_unknownObjectRetain();

  return sub_219BE3014();
}

uint64_t sub_21927BE0C()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 80);

  return swift_deallocClassInstance();
}

uint64_t sub_21927BE80()
{
  sub_219BF29D4();
  sub_219BE3204();
  v0 = sub_219BE2E54();
  sub_21927BFE8();
  sub_219BE2F84();

  v1 = sub_219BE2E54();
  v2 = sub_219BE2F84();

  return v2;
}

void sub_21927BFE8()
{
  if (!qword_27CC18388)
  {
    sub_219BF29D4();
    sub_21927C248(255, &qword_280E8EFD0, type metadata accessor for TagModel, MEMORY[0x277D83940]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC18388);
    }
  }
}

uint64_t sub_21927C08C(uint64_t a1)
{
  sub_21927C248(0, &qword_27CC13BD0, MEMORY[0x277D33E48], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21927C118()
{
  result = qword_27CC183A8;
  if (!qword_27CC183A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC183A8);
  }

  return result;
}

uint64_t sub_21927C16C()
{
  v0 = off_282A4D758;
  type metadata accessor for TagService();
  return v0();
}

void sub_21927C248(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_21927C2BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BDBD34();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = 0;
  if (v6(a1, 1, v4) != 1)
  {
    v7 = sub_219BDBC04();
    (*(v5 + 8))(a1, v4);
  }

  if (v6(a2, 1, v4) == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_219BDBC04();
    (*(v5 + 8))(a2, v4);
  }

  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithEarlierDate:v7 laterDate:v8];

  return v9;
}

uint64_t sub_21927C414@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2187E71A0(a1, v7);
  sub_21875F93C(v7, v6);
  sub_219BF29D4();
  sub_219BE3204();

  v3 = sub_219BE2E54();
  sub_21927D3F0(0, &qword_280E8EC00, &qword_280E8E260, &protocolRef_FCHeadlineProviding, sub_2186D6710);
  v4 = sub_219BE2F64();

  *a2 = v4;
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_21927C524()
{
  sub_21927D3F0(0, &qword_280E8ED00, &qword_280E8E680, &protocolRef_FCTagProviding, sub_2186D6710);
  sub_219BE3204();

  v0 = sub_219BE2E54();
  sub_21927D3F0(0, &qword_280E8EC00, &qword_280E8E260, &protocolRef_FCHeadlineProviding, sub_2186D6710);
  v1 = sub_219BE2F64();

  return v1;
}

uint64_t sub_21927C640(uint64_t result)
{
  if (*(result + 120))
  {

    sub_219BE2CF4();

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_21927C694(id *a1, uint64_t a2)
{
  v3 = [*a1 articleID];
  v4 = sub_219BF5414();
  v6 = v5;

  LOBYTE(a2) = sub_2188537B8(v4, v6, a2);

  return (a2 & 1) == 0;
}

unint64_t *sub_21927C71C@<X0>(unint64_t *result@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_31;
  }

  v5 = a2;
  v4 = *result;
  v7 = MEMORY[0x277D84F90];
  v18 = MEMORY[0x277D84F90];
  v16 = a3;
  if (a2)
  {
    v3 = v4 & 0xFFFFFFFFFFFFFF8;
    v6 = v4 >> 62;
    if (v4 >> 62)
    {
      goto LABEL_32;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = result)
    {
      v9 = 0;
      v10 = v4 & 0xC000000000000001;
      v15 = v4;
      v7 = MEMORY[0x277D84F90];
      while (v9 < v5)
      {
        if (__OFADD__(v9++, 1))
        {
          goto LABEL_27;
        }

        if (i)
        {
          if (v6)
          {
            v4 = sub_219BF7214();
            if ((v4 & 0x8000000000000000) != 0)
            {
              goto LABEL_28;
            }
          }

          else
          {
            v4 = *(v3 + 16);
          }

          if (!v4)
          {
            goto LABEL_29;
          }

          v17 = 0;
          MEMORY[0x21CECF980](&v17, 8);
          v12 = (v17 * v4) >> 64;
          if (v4 > v17 * v4)
          {
            v13 = -v4 % v4;
            if (v13 > v17 * v4)
            {
              do
              {
                v17 = 0;
                MEMORY[0x21CECF980](&v17, 8);
              }

              while (v13 > v17 * v4);
              v12 = (v17 * v4) >> 64;
            }
          }

          if (v10)
          {
            v14 = MEMORY[0x21CECE0F0](v12, v15);
          }

          else
          {
            if (v12 >= *(v3 + 16))
            {
              goto LABEL_30;
            }

            v14 = swift_unknownObjectRetain();
          }

          MEMORY[0x21CECC690](v14);
          if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_219BF5A14();
          }

          v4 = &v18;
          result = sub_219BF5A54();
          v7 = v18;
        }

        if (v9 == v5)
        {
          goto LABEL_25;
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
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      result = sub_219BF7214();
    }
  }

LABEL_25:
  *v16 = v7;
  return result;
}

uint64_t sub_21927C904(uint64_t a1)
{
  v32 = sub_219BF34F4();
  v3 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218718690(a1 + 40, v29);
  v6 = v30;
  v7 = v31;
  v8 = __swift_project_boxed_opaque_existential_1(v29, v30);
  sub_219BF29B4();
  v9 = sub_219BF3DE4();

  v10 = v9;
  v11 = *(v9 + 16);
  if (v11)
  {
    v26[2] = v8;
    v26[3] = v7;
    v26[4] = v6;
    v26[5] = v1;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v14 = *(v12 + 64);
    v26[1] = v10;
    v15 = v10 + ((v14 + 32) & ~v14);
    v27 = *(v12 + 56);
    v28 = v13;
    v16 = MEMORY[0x277D84F90];
    v26[6] = v12;
    do
    {
      v18 = v32;
      v28(v5, v15, v32);
      v19 = sub_219BF34D4();
      v21 = v20;
      (*(v12 - 8))(v5, v18);
      if (v21)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_218840D24(0, *(v16 + 2) + 1, 1, v16);
        }

        v23 = *(v16 + 2);
        v22 = *(v16 + 3);
        if (v23 >= v22 >> 1)
        {
          v16 = sub_218840D24((v22 > 1), v23 + 1, 1, v16);
        }

        *(v16 + 2) = v23 + 1;
        v17 = &v16[16 * v23];
        *(v17 + 4) = v19;
        *(v17 + 5) = v21;
      }

      v15 += v27;
      --v11;
    }

    while (v11);
  }

  v24 = sub_219BF1C34();

  __swift_destroy_boxed_opaque_existential_1(v29);
  return v24;
}

uint64_t sub_21927CB64()
{
  sub_21927D3F0(0, &qword_280E8ED70, &qword_280E8E800, 0x277D35488, sub_2186C6148);
  sub_219BE3204();
  v0 = sub_219BE2E54();
  sub_2186E3374();
  sub_218BACAC0();
  sub_218A42594();
  sub_219BE3104();

  v1 = sub_219BE2E54();
  sub_21927D3F0(0, &qword_280E8EC00, &qword_280E8E260, &protocolRef_FCHeadlineProviding, sub_2186D6710);
  v2 = sub_219BE2F64();

  return v2;
}

id sub_21927CCE8(uint64_t a1, unint64_t a2)
{
  v4 = sub_219BDBD34();
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x28223BE20](v4);
  v37 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DCF58();
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v39 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v38 = &v32 - v9;
  sub_218718690(a1 + 80, v42);
  v34 = v44;
  v36 = v43;
  v35 = __swift_project_boxed_opaque_existential_1(v42, v43);
  if (!(a2 >> 62))
  {
    v10 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_23:
    v45 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

LABEL_22:
  v10 = sub_219BF7214();
  if (!v10)
  {
    goto LABEL_23;
  }

LABEL_3:
  v11 = 0;
  v45 = MEMORY[0x277D84F90];
  do
  {
    v12 = v11;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x21CECE0F0](v12, a2);
        v11 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v12 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v13 = *(a2 + 8 * v12 + 32);
        swift_unknownObjectRetain();
        v11 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      v14 = [v13 freeFeedIDForBin_];
      if (v14)
      {
        break;
      }

      swift_unknownObjectRelease();
      ++v12;
      if (v11 == v10)
      {
        goto LABEL_24;
      }
    }

    v15 = v14;
    v33 = sub_219BF5414();
    v17 = v16;

    swift_unknownObjectRelease();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v45 = sub_218840D24(0, *(v45 + 2) + 1, 1, v45);
    }

    v19 = *(v45 + 2);
    v18 = *(v45 + 3);
    if (v19 >= v18 >> 1)
    {
      v45 = sub_218840D24((v18 > 1), v19 + 1, 1, v45);
    }

    v20 = v45;
    *(v45 + 2) = v19 + 1;
    v21 = &v20[16 * v19];
    *(v21 + 4) = v33;
    *(v21 + 5) = v17;
  }

  while (v11 != v10);
LABEL_24:
  sub_2186C6148(0, &qword_280E8E860);
  v22 = v37;
  sub_219BDBCB4();
  sub_219BF5CE4();
  v23 = v38;
  sub_219BDBC44();
  v25 = v40;
  v24 = v41;
  (*(v40 + 8))(v22, v41);
  v26 = *(v25 + 56);
  v26(v23, 0, 1, v24);
  v27 = v39;
  sub_219BDBCB4();
  v26(v27, 0, 1, v24);
  result = sub_21927C2BC(v23, v27);
  if (result)
  {
    v29 = result;
    v30 = [objc_opt_self() edgeCacheHintForSportsArticles];
    v31 = sub_219BF2794();

    __swift_destroy_boxed_opaque_existential_1(v42);
    return v31;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21927D0EC(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1((a2 + 80), *(a2 + 104));
  sub_2194AFD70(MEMORY[0x277D84F90]);
  v3 = [objc_allocWithZone(MEMORY[0x277D310F8]) init];
  v4 = [*(a2 + 32) appConfiguration];
  v5 = sub_219BF27A4();

  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_21927D1E0()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 40);
  __swift_destroy_boxed_opaque_existential_1(v0 + 80);

  return swift_deallocClassInstance();
}

uint64_t sub_21927D240(uint64_t a1, uint64_t a2)
{

  v4 = sub_218845F78(a2);

  sub_21927D3F0(0, &qword_280E8EC00, &qword_280E8E260, &protocolRef_FCHeadlineProviding, sub_2186D6710);
  sub_219BE3204();
  *(swift_allocObject() + 16) = v4;
  v5 = sub_219BE2E54();
  sub_218A4EC18();
  sub_219BE30F4();

  *(swift_allocObject() + 16) = a1;
  v6 = sub_219BE2E54();
  v7 = sub_219BE2F74();

  return v7;
}

void sub_21927D3F0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_219BF5B14();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_21927D508()
{
  v1 = sub_219BF5474();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 24))
  {
    sub_219BF5464();
    v5 = sub_219BF5424();
    v7 = v6;
    result = (*(v2 + 8))(v4, v1);
    if (v7 >> 60 == 15)
    {
      __break(1u);
    }

    else
    {
      v9[0] = v5;
      v9[1] = v7;
      sub_21927DB6C();
      swift_allocObject();
      return sub_219BE3014();
    }
  }

  else
  {
    sub_21927DB6C();
    swift_allocObject();
    return sub_219BE30B4();
  }

  return result;
}

void sub_21927D66C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_21927DBE0();

  sub_219BE3204();
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = sub_21927DBBC;
  v9[5] = v8;

  v10 = sub_219BE2E54();
  sub_219BE2F74();
}

uint64_t sub_21927D79C(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (qword_27CC07E08 != -1)
  {
    swift_once();
  }

  sub_21927DCB8();
  sub_219BDC7D4();
  v1 = sub_219BDDE44();

  return v1;
}

void sub_21927D898(id *a1, void (*a2)(void), uint64_t a3, void (*a4)(uint64_t, unint64_t))
{
  v6 = [*a1 data];
  if (v6)
  {
    v7 = v6;
    v8 = sub_219BDBA04();
    v10 = v9;

    sub_218B87528(v8, v10);
    a4(v8, v10);
    sub_2186C6190(v8, v10);
    sub_2186C6190(v8, v10);
  }

  else
  {
    sub_21927DC64();
    v11 = swift_allocError();
    a2();
  }
}

uint64_t sub_21927D978()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t sub_21927D9E4()
{
  v1 = sub_219BF5474();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*v0 + 24);
  if (!v5)
  {
    return v5;
  }

  sub_219BF5464();
  v5 = sub_219BF5424();
  v7 = v6;
  result = (*(v2 + 8))(v4, v1);
  if (v7 >> 60 != 15)
  {
    return v5;
  }

  __break(1u);
  return result;
}

void sub_21927DB6C()
{
  if (!qword_280EE6D30)
  {
    v0 = sub_219BE3114();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE6D30);
    }
  }
}

unint64_t sub_21927DBE0()
{
  result = qword_280E8E2B0;
  if (!qword_280E8E2B0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280E8E2B0);
  }

  return result;
}

unint64_t sub_21927DC64()
{
  result = qword_27CC183C0;
  if (!qword_27CC183C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC183C0);
  }

  return result;
}

unint64_t sub_21927DCB8()
{
  result = qword_27CC183C8;
  if (!qword_27CC183C8)
  {
    type metadata accessor for DemoMagazineConfigurationDataService();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC183C8);
  }

  return result;
}

unint64_t sub_21927DD20()
{
  result = qword_27CC183D0;
  if (!qword_27CC183D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC183D0);
  }

  return result;
}

char *sub_21927DD8C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC7NewsUI214ChannelTagView_iconImageView;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v11 = OBJC_IVAR____TtC7NewsUI214ChannelTagView_nameLabel;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v12 = OBJC_IVAR____TtC7NewsUI214ChannelTagView_accessoryButton;
  *&v4[v12] = sub_218EC4E8C(3);
  v13 = OBJC_IVAR____TtC7NewsUI214ChannelTagView_separatorView;
  *&v4[v13] = [objc_allocWithZone(sub_219BE6104()) initWithFrame_];
  v14 = OBJC_IVAR____TtC7NewsUI214ChannelTagView_token;
  *&v4[v14] = [objc_allocWithZone(MEMORY[0x277D82BB8]) init];
  v21.receiver = v4;
  v21.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v21, sel_initWithFrame_, a1, a2, a3, a4);
  v16 = OBJC_IVAR____TtC7NewsUI214ChannelTagView_iconImageView;
  v17 = *&v15[OBJC_IVAR____TtC7NewsUI214ChannelTagView_iconImageView];
  v18 = v15;
  [v17 setAccessibilityIgnoresInvertColors_];
  [v18 addSubview_];
  [v18 addSubview_];
  v19 = OBJC_IVAR____TtC7NewsUI214ChannelTagView_nameLabel;
  [v18 addSubview_];
  [v18 addSubview_];
  [*&v18[v19] setNumberOfLines_];

  return v18;
}

void sub_21927E060()
{
  sub_219BE6204();
  v1 = sub_219BE6214();
  v1();
  v2 = sub_219BE61F4();
  swift_allocObject();
  swift_unknownObjectUnownedInit();

  v3 = [objc_allocWithZone(MEMORY[0x277D82BB8]) init];
  v4 = *(v0 + OBJC_IVAR____TtC7NewsUI214ChannelTagView_token);
  *(v0 + OBJC_IVAR____TtC7NewsUI214ChannelTagView_token) = v3;
}

void sub_21927E174()
{
  sub_21927EA64(&unk_27CC10D20);

  JUMPOUT(0x21CEC1E40);
}

uint64_t sub_21927E1CC()
{
  v1 = sub_219BE5C64();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC7NewsUI214ChannelTagView_accessoryButton);
  v9 = qword_280F620F8;
  swift_beginAccess();
  (*(v2 + 16))(v7, &v8[v9], v1);
  (*(v2 + 104))(v5, *MEMORY[0x277D6D338], v1);
  LOBYTE(v9) = sub_219BE5C54();
  v10 = *(v2 + 8);
  v10(v5, v1);
  v10(v7, v1);
  if (v9)
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v12 = [objc_opt_self() bundleForClass_];
    sub_219BDB5E4();

    v13 = sub_219BF53D4();

    MEMORY[0x21CECEE10](v13);
  }

  [v8 sendActionsForControlEvents_];
  return 1;
}

uint64_t sub_21927E514()
{
  v1 = sub_219BE5C64();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC7NewsUI214ChannelTagView_accessoryButton);
  v9 = qword_280F620F8;
  swift_beginAccess();
  (*(v2 + 16))(v7, v8 + v9, v1);
  (*(v2 + 104))(v5, *MEMORY[0x277D6D338], v1);
  LOBYTE(v8) = sub_219BE5C54();
  v10 = *(v2 + 8);
  v10(v5, v1);
  v10(v7, v1);
  result = 0;
  if (v8)
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v13 = [objc_opt_self() bundleForClass_];
    v14 = sub_219BDB5E4();

    return v14;
  }

  return result;
}

id sub_21927E754(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_219BF53D4();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_21927E7D4()
{
  v1 = sub_219BE5C64();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC7NewsUI214ChannelTagView_accessoryButton);
  v9 = qword_280F620F8;
  swift_beginAccess();
  (*(v2 + 16))(v7, v8 + v9, v1);
  (*(v2 + 104))(v5, *MEMORY[0x277D6D338], v1);
  sub_219BE5C54();
  v10 = *(v2 + 8);
  v10(v5, v1);
  v10(v7, v1);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  v13 = sub_219BDB5E4();

  return v13;
}

uint64_t sub_21927EA64(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ChannelTagView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_21927EAA4()
{
  v1 = OBJC_IVAR____TtC7NewsUI214ChannelTagView_iconImageView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v2 = OBJC_IVAR____TtC7NewsUI214ChannelTagView_nameLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v3 = OBJC_IVAR____TtC7NewsUI214ChannelTagView_accessoryButton;
  *(v0 + v3) = sub_218EC4E8C(3);
  v4 = OBJC_IVAR____TtC7NewsUI214ChannelTagView_separatorView;
  *(v0 + v4) = [objc_allocWithZone(sub_219BE6104()) initWithFrame_];
  v5 = OBJC_IVAR____TtC7NewsUI214ChannelTagView_token;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x277D82BB8]) init];
  sub_219BF7514();
  __break(1u);
}

uint64_t sub_21927EBD4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BED8D4();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21927F3DC(0, &qword_27CC18430, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for PromotedArticleListTagFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21927F324();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_21927F440(&unk_280E92630, MEMORY[0x277D31C50]);
    sub_219BF7734();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_21927F378(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21927EE80(uint64_t a1)
{
  v2 = sub_21927F324();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21927EEBC(uint64_t a1)
{
  v2 = sub_21927F324();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21927EF38(void *a1)
{
  sub_21927F3DC(0, &qword_27CC18440, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21927F324();
  sub_219BF7B44();
  sub_219BED8D4();
  sub_21927F440(&qword_280E92640, MEMORY[0x277D31C50]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_21927F198(uint64_t a1)
{
  result = sub_21927F440(&qword_27CC18418, type metadata accessor for PromotedArticleListTagFeedGroup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21927F1F0(void *a1)
{
  a1[1] = sub_21927F440(&qword_27CC18420, type metadata accessor for PromotedArticleListTagFeedGroup);
  a1[2] = sub_21927F440(&unk_27CC1C7C0, type metadata accessor for PromotedArticleListTagFeedGroup);
  result = sub_21927F440(&qword_27CC18428, type metadata accessor for PromotedArticleListTagFeedGroup);
  a1[3] = result;
  return result;
}

uint64_t sub_21927F29C(uint64_t a1)
{
  v2 = sub_21927F440(&qword_27CC18420, type metadata accessor for PromotedArticleListTagFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

unint64_t sub_21927F324()
{
  result = qword_27CC18438;
  if (!qword_27CC18438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18438);
  }

  return result;
}

uint64_t sub_21927F378(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromotedArticleListTagFeedGroup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21927F3DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21927F324();
    v7 = a3(a1, &type metadata for PromotedArticleListTagFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_21927F440(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21927F49C()
{
  result = qword_27CC18448;
  if (!qword_27CC18448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18448);
  }

  return result;
}