uint64_t sub_218B1A21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a4;
  v20 = a5;
  v8 = type metadata accessor for OfflineFeedManifest(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_projectBox();
  swift_beginAccess();
  sub_218B1AC58(v12, v11, type metadata accessor for OfflineFeedManifest);
  sub_2187B8B2C(0, &unk_280E8BB50, type metadata accessor for OfflineFeedManifest, MEMORY[0x277D84560]);
  v13 = *(v9 + 72);
  v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_219C09EC0;
  v16 = v15 + v14;
  sub_218B1A4B4(v11, v16, type metadata accessor for OfflineFeedManifest);
  sub_218B1A4B4(a1, v16 + v13, type metadata accessor for OfflineFeedManifest);
  OfflineFeedManifest.init(_:)(v15, v12);
  sub_218B1A51C(v11, type metadata accessor for OfflineFeedManifest);
  swift_endAccess();
  return sub_218B19C54(a3, a2, v19, v20, sub_218B1A99C, &unk_282A37A90, sub_218B1AAA4);
}

uint64_t sub_218B1A444(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2187B8B2C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218B1A4B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218B1A51C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218B1A61C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 16);
  sub_218B19A94();
  v7 = *(v6 + 48);
  *a2 = v5;
  sub_218B1A4B4(a1, a2 + v7, type metadata accessor for OfflineFeedManifest);
}

unint64_t sub_218B1A68C()
{
  result = qword_280EAFA40;
  if (!qword_280EAFA40)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280EAFA40);
  }

  return result;
}

void sub_218B1A76C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for AudioFeedServiceConfig();
    v7 = sub_2186F6AA0(&unk_280EC8DD0, type metadata accessor for AudioFeedServiceConfig);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t objectdestroy_21Tm()
{
  v1 = sub_219BE5434();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_218B1AB18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TagFeedSectionDescriptor;
    v8[1] = type metadata accessor for TagFeedModel(255);
    v8[2] = sub_2186F7410();
    v8[3] = sub_2186F6AA0(&unk_280EDE820, type metadata accessor for TagFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_218B1ABD8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2187B8B2C(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_218B1AC58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_218B1ACC0(void *a1)
{
  v3 = sub_219BDD944();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187B2C48();
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NewsActivity2.Article(0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v40 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v40 - v19;
  if (((*a1 >> 58) & 0x3C | (*a1 >> 1) & 3) == 2)
  {
    v43 = v1;
    v21 = swift_projectBox();
    sub_218B1B33C(v21, v11, sub_2187B2C48);

    sub_218B1B3A4(v11, v20, type metadata accessor for NewsActivity2.Article);
    sub_218B1B33C(v20, v18, type metadata accessor for NewsActivity2.Article);
    sub_2187B2DA0();

    sub_218B1B3A4(v18, v5, MEMORY[0x277D2FB40]);
    sub_219BDD8B4();
    sub_218B1B40C(v5, MEMORY[0x277D2FB40]);
    v22 = sub_219BDB954();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v8, 1, v22) == 1)
    {
      sub_218B1B40C(v20, type metadata accessor for NewsActivity2.Article);
      sub_218B1B40C(v8, sub_21873F65C);
    }

    else
    {
      v24 = sub_219BDB854();
      (*(v23 + 8))(v8, v22);
      v25 = [v24 nss_campaignID];
      if (v25)
      {
        v41 = v24;
        v26 = v25;
        v42 = sub_219BF5414();
        v28 = v27;

        if (qword_280EE6000 != -1)
        {
          swift_once();
        }

        v29 = sub_219BE5434();
        __swift_project_value_buffer(v29, qword_280F626D0);
        sub_218B1B33C(v20, v15, type metadata accessor for NewsActivity2.Article);

        v30 = sub_219BE5414();
        v31 = sub_219BF6214();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v46[0] = v40;
          *v32 = 136315394;
          *(v32 + 4) = sub_2186D1058(v42, v28, v46);
          *(v32 + 12) = 2080;
          sub_218B1B33C(v15, v18, type metadata accessor for NewsActivity2.Article);

          sub_218B1B3A4(v18, v5, MEMORY[0x277D2FB40]);
          v33 = sub_219BDD8C4();
          v35 = v34;
          sub_218B1B40C(v5, MEMORY[0x277D2FB40]);
          sub_218B1B40C(v15, type metadata accessor for NewsActivity2.Article);
          v36 = sub_2186D1058(v33, v35, v46);

          *(v32 + 14) = v36;
          _os_log_impl(&dword_2186C1000, v30, v31, "Received campaignID [%s] for article [%s]", v32, 0x16u);
          v37 = v40;
          swift_arrayDestroy();
          MEMORY[0x21CECF960](v37, -1, -1);
          MEMORY[0x21CECF960](v32, -1, -1);
        }

        else
        {

          sub_218B1B40C(v15, type metadata accessor for NewsActivity2.Article);
        }

        __swift_project_boxed_opaque_existential_1((v43 + 16), *(v43 + 40));
        sub_218B1B46C();
        sub_219BE1E34();
        if (v45)
        {
          sub_2186CB1F0(&v44, v46);
          v38 = v47;
          v39 = v48;
          __swift_project_boxed_opaque_existential_1(v46, v47);
          (*(v39 + 8))(v42, v28, v38, v39);

          sub_218B1B40C(v20, type metadata accessor for NewsActivity2.Article);
          __swift_destroy_boxed_opaque_existential_1(v46);
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
        sub_218B1B40C(v20, type metadata accessor for NewsActivity2.Article);
      }
    }
  }
}

uint64_t sub_218B1B33C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218B1B3A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218B1B40C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_218B1B46C()
{
  result = qword_280EB90E0;
  if (!qword_280EB90E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280EB90E0);
  }

  return result;
}

uint64_t sub_218B1B4D0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for PuzzleContinuePlayingModule();
    v7 = swift_allocObject();
    result = sub_2186CB1F0(v8, v7 + 16);
    *(v7 + 56) = v5;
    a2[3] = v6;
    a2[4] = &protocol witness table for PuzzleContinuePlayingModule;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218B1B580()
{
  type metadata accessor for PuzzleContinuePlayingConfig();
  sub_219BE2904();

  type metadata accessor for PuzzleContinuePlayingViewController();
  sub_219BE2904();

  sub_2186C709C(0, &qword_280EA8710);
  sub_219BE2914();

  sub_2186C709C(0, &qword_280EA8718);
  sub_219BE2914();
  type metadata accessor for PuzzleContinuePlayingRouter();
  sub_219BE19C4();

  sub_2186C709C(0, &unk_280E99070);
  sub_219BE2914();

  sub_2186C709C(0, qword_280E9CB28);
  sub_219BE2914();

  sub_2186C709C(0, qword_280EA5680);
  sub_219BE2914();

  sub_2186C709C(0, qword_280E9AC98);
  sub_219BE2914();

  sub_218AE15BC(0);
  sub_219BE2904();

  type metadata accessor for PuzzleContinuePlayingBlueprintModifierFactory();
  sub_219BE2904();

  sub_2186C709C(0, &qword_280E99068);
  sub_219BE2914();

  sub_218B1F820();
  sub_219BE2904();
  sub_219BE19D4();

  sub_218B1FFCC();
  sub_219BE2904();

  sub_218B20214();
  sub_219BE2904();

  sub_219BE9C54();
  sub_219BE2904();

  sub_218B1F90C();
  sub_219BE2904();

  sub_218B20108();
  sub_219BE2904();

  sub_218AE1800(0);
  sub_219BE2904();

  type metadata accessor for PuzzleContinuePlayingBlueprintLayoutBuilder();
  sub_219BE2904();

  sub_218B202A8();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C6148(0, &qword_280E8E4C0);
  sub_219BE2904();

  sub_218B1FA14();
  sub_219BE2904();

  sub_2186C709C(0, &qword_280EE3DE0);
  sub_219BE2914();
  sub_219BE95A4();
  sub_219BE19C4();

  sub_218B20760(0, &unk_280E8FFF8, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D34068]);
  sub_219BE2904();

  sub_218B1FB90();
  sub_219BE2904();
  sub_219BE19D4();

  sub_218B1FD60();
  sub_219BE2904();
  sub_219BE19D4();

  sub_218B1FEE0();
  sub_219BE2904();

  type metadata accessor for PuzzleContinuePlayingBlueprintViewCellProvider();
  sub_219BE2904();
  sub_219BE19D4();

  type metadata accessor for PuzzleContinuePlayingBlueprintViewSupplementaryViewProvider();
  sub_219BE2904();

  sub_218B203E4();
  sub_219BE2904();

  sub_218B20478();
  sub_219BE2904();

  sub_219BE70E4();
  sub_219BE2904();

  sub_218B2050C();
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE8A54();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C709C(0, &unk_280EE3C80);
  sub_219BE2914();
}

uint64_t sub_218B1BFF8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EA8710);
  result = sub_219BE1E34();
  if (!v16)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E99070);
  result = sub_219BE1E34();
  v3 = v13;
  if (!v13)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v4 = v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B202A8();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218AE1800(0);
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
    MEMORY[0x28223BE20](v7);
    v9 = (&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9);
    v11 = sub_218B20A48(*v9, v3, v4, v5, v6);
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v15);
    return v11;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_218B1C224@<X0>(void *a1@<X0>, void *a2@<X8>)
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
    v10 = sub_218B21000(&qword_280EDFED0, type metadata accessor for BaseStyler);
    v18[4] = v10;
    v18[0] = v8;
    v11 = type metadata accessor for PuzzleContinuePlayingStyler();
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
    a2[4] = &off_282A78B30;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218B1C484@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B20F98(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219BDD274();
    result = sub_219BE1E24();
    if (result)
    {
      v6 = result;
      v7 = type metadata accessor for PuzzleContinuePlayingRouter();
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      result = sub_2186CB1F0(v9, v8 + 24);
      *(v8 + 64) = v5;
      *(v8 + 72) = v6;
      a2[3] = v7;
      a2[4] = &off_282A69658;
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

void sub_218B1C5B8(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for PuzzleContinuePlayingViewController();
  v2 = sub_219BE1E24();
  swift_unknownObjectWeakAssign();
}

uint64_t sub_218B1C638@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E9CB28);
  result = sub_219BE1E34();
  v5 = v20;
  if (!v20)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EA8718);
  result = sub_219BE1E34();
  if (!v19)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EA5680);
  result = sub_219BE1E34();
  if (v17)
  {
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x28223BE20](v7);
    v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v10 + 16))(v9);
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
    MEMORY[0x28223BE20](v11);
    v13 = &v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v14 + 16))(v13);
    v15 = sub_218B20D8C(v5, v6, *v9, *v13);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v16);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    *a2 = v15;
    a2[1] = &off_282A8AF08;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_218B1C8E8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E9AC98);
  result = sub_219BE1E34();
  if (!v13)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B1F820();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for PuzzleContinuePlayingBlueprintModifierFactory();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for PuzzleContinuePlayingConfig();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B20F98(0, &unk_280E906C0, sub_2186F1804, &type metadata for PuzzleOfflineModel, MEMORY[0x277D33538]);
  result = sub_219BE1E24();
  if (result)
  {
    v8 = result;
    sub_218B208AC();
    v9 = swift_allocObject();
    v9[3] = 0;
    swift_unknownObjectWeakInit();
    v10 = MEMORY[0x277D84F98];
    v9[6] = v13;
    v9[7] = v14;
    v9[4] = v5;
    v9[5] = v6;
    v9[8] = v7;
    v9[9] = v10;
    v9[10] = v8;
    *(v13 + 24) = &off_282A602B8;
    swift_unknownObjectWeakAssign();
    swift_allocObject();
    swift_weakInit();
    swift_unknownObjectRetain();

    v11 = v8;
    v12 = sub_219BF1AF4();
    swift_unknownObjectRelease();

    *a2 = v9;
    a2[1] = &off_282A602C8;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_218B1CB90@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
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
  sub_2186C709C(0, &unk_280E8FDF0);
  result = sub_219BE1E34();
  if (v9)
  {
    v6 = type metadata accessor for PuzzleContinuePlayingTracker();
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    sub_2186CB1F0(&v10, v7 + 24);
    result = sub_2186CB1F0(&v8, v7 + 64);
    a2[3] = v6;
    a2[4] = &off_282A9DB30;
    *a2 = v7;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_218B1CCE8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90100);
  result = sub_219BE1E34();
  if (!v18)
  {
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90500);
  result = sub_219BE1E34();
  if (!v16)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8DF40);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E8FD20);
  result = sub_219BE1E34();
  if (!v14)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E901E0);
  result = sub_219BE1E34();
  if (!v12)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E8FD00);
  result = sub_219BE1E34();
  if (v10)
  {
    type metadata accessor for PuzzleContinuePlayingDataManager();
    v7 = swift_allocObject();
    v7[3] = 0;
    swift_unknownObjectWeakInit();
    sub_218718690(v17, (v7 + 4));
    sub_218718690(v15, (v7 + 9));
    v7[14] = v5;
    v7[15] = v6;
    sub_218718690(v13, (v7 + 16));
    sub_218718690(v11, (v7 + 21));
    sub_218718690(v9, (v7 + 26));
    __swift_project_boxed_opaque_existential_1(v7 + 4, v7[7]);
    sub_218B21000(qword_280EA5830, type metadata accessor for PuzzleContinuePlayingDataManager);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    sub_219BF3784();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(&v8);
    __swift_destroy_boxed_opaque_existential_1(v9);
    __swift_destroy_boxed_opaque_existential_1(v11);
    __swift_destroy_boxed_opaque_existential_1(v13);
    __swift_destroy_boxed_opaque_existential_1(v15);
    result = __swift_destroy_boxed_opaque_existential_1(v17);
    *a2 = v7;
    a2[1] = &off_282A89B08;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_218B1D0B0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E99068);
  result = sub_219BE1E34();
  if (!v25)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8DF40);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E8FD20);
  result = sub_219BE1E34();
  if (!v23)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E901E0);
  result = sub_219BE1E34();
  if (!v21)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E8FD00);
  result = sub_219BE1E34();
  if (v19)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
    MEMORY[0x28223BE20](v4);
    v6 = (&v17[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for PuzzleContinuePlayingModelFactory();
    v17[3] = v9;
    v17[4] = &off_282A75B30;
    v17[0] = v8;
    type metadata accessor for PuzzleContinuePlayingBlueprintModifierFactory();
    v10 = swift_allocObject();
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v17, v9);
    MEMORY[0x28223BE20](v11);
    v13 = (&v17[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13);
    v15 = *v13;
    v10[5] = v9;
    v10[6] = &off_282A75B30;
    v10[2] = v15;
    v10[7] = v3;
    sub_2186CB1F0(&v22, (v10 + 8));
    sub_2186CB1F0(&v20, (v10 + 13));
    sub_2186CB1F0(&v18, (v10 + 18));
    __swift_destroy_boxed_opaque_existential_1(v17);
    __swift_destroy_boxed_opaque_existential_1(v24);
    return v10;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_218B1D434@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for PuzzleContinuePlayingModelFactory();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_282A75B30;
  *a1 = result;
  return result;
}

uint64_t sub_218B1D47C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218AE15BC(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_218B1F90C();
    result = sub_219BE1E24();
    if (result)
    {
      sub_218B1F820();
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

uint64_t sub_218B1D55C(uint64_t a1, void *a2)
{
  sub_218B207CC(0);
  swift_allocObject();
  sub_219BE96E4();
  sub_218B207EC(0, &unk_280EE4540, MEMORY[0x277D6E3B8]);
  swift_allocObject();
  sub_218B21000(&qword_280EE43F8, sub_218B207CC);
  sub_219BE8FA4();
  sub_219BE6ED4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_218B1FFCC();
  result = sub_219BE1E24();
  if (result)
  {
    swift_allocObject();
    sub_218B21000(&qword_280EE3BC0, sub_218B1FFCC);
    sub_219BE8FA4();
    sub_219BE6ED4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218B1D6F4(void *a1)
{
  sub_218B20694(0, &qword_280EE3A90, MEMORY[0x277D6EB30]);
  MEMORY[0x28223BE20](v2 - 8);
  sub_219BEA594();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for PuzzleContinuePlayingBlueprintLayoutBuilder();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B20108();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B20214();
  result = sub_219BE1E24();
  if (result)
  {
    sub_218B1FFCC();
    swift_allocObject();
    return sub_219BEA474();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_218B1D874(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218AE1800(0);
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
    sub_218B20214();
    swift_allocObject();
    return sub_219BE99A4();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_218B1DA14(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B1FA14();
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EE39D0);
    result = sub_219BE1E34();
    if (v3)
    {
      sub_218B1F90C();
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

uint64_t sub_218B1DB6C(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void))
{
  a2(0);
  swift_allocObject();
  return a3();
}

uint64_t sub_218B1DBB0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B20760(0, &unk_280E91DA0, MEMORY[0x277D33AC8], MEMORY[0x277D33AC0], MEMORY[0x277D31F40]);
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    type metadata accessor for PuzzleContinuePlayingConfig();
    result = sub_219BE1E24();
    if (result)
    {
      v4 = result;
      type metadata accessor for PuzzleContinuePlayingBlueprintLayoutBuilder();
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

uint64_t sub_218B1DC9C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218AE15BC(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B1FA14();
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
  sub_218B203E4();
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
    sub_218B21000(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
    sub_218B202A8();
    v4 = objc_allocWithZone(v3);
    return sub_219BE8754();
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_218B1DF9C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_218B20214();
  if (sub_219BE1E24())
  {
    sub_218B21000(&unk_280EE4148, sub_218B20214);
  }

  sub_219BE8724();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_218B20478();
  if (sub_219BE1E24())
  {
    sub_218B21000(&unk_280EE4820, sub_218B20478);
  }

  return sub_219BE86F4();
}

uint64_t sub_218B1E0F0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B20760(0, &unk_280E8FFF8, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D34068]);
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

uint64_t sub_218B1E1D0(void *a1)
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
  sub_218B1FB90();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B1FD60();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B1FEE0();
  result = sub_219BE1E24();
  if (result)
  {
    sub_218B1FA14();
    swift_allocObject();
    return sub_219BE7BB4();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_218B1E33C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B1FA14();
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

uint64_t sub_218B1E3F4()
{
  v0 = sub_219BE80A4();
  MEMORY[0x28223BE20](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6DDE0]);
  return sub_219BE9574();
}

uint64_t sub_218B1E4C4(void *a1)
{
  sub_218B20694(0, &qword_280E90308, MEMORY[0x277D33AA0]);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE9C54();
  result = sub_219BE1DE4();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v9 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for PuzzleContinuePlayingConfig();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  sub_219BF1814();

  v10 = sub_219BF2A74();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v5, 1, v10) == 1)
  {
    (*(v11 + 104))(v7, *MEMORY[0x277D33A98], v10);
    if (v12(v5, 1, v10) != 1)
    {
      sub_218B206E8(v5);
    }
  }

  else
  {
    (*(v11 + 32))(v7, v5, v10);
  }

  (*(v11 + 56))(v7, 0, 1, v10);
  v15[1] = v9;
  sub_218B20760(0, &unk_280E8FFF8, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D34068]);
  v14 = objc_allocWithZone(v13);
  return sub_219BF3B94();
}

uint64_t sub_218B1E774(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218AE15BC(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218AE1800(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for PuzzleContinuePlayingBlueprintViewCellProvider();
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
  type metadata accessor for PuzzleContinuePlayingBlueprintViewSupplementaryViewProvider();
  result = sub_219BE1E24();
  if (result)
  {
    *&v8[0] = v3;
    sub_218B1FB90();
    v7 = objc_allocWithZone(v6);
    return sub_219BE9B64();
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_218B1E910(void *a1, void *a2)
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

uint64_t sub_218B1EA20(uint64_t a1, void *a2)
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

uint64_t sub_218B1EAF4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218AE15BC(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218AE1800(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B203E4();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (!v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_218B21000(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE4800);
  result = sub_219BE1E34();
  if (v5)
  {
    sub_218B1FD60();
    v4 = objc_allocWithZone(v3);
    return sub_219BE9744();
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_218B1ED44(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BE70E4();
  sub_219BE1DE4();
  sub_219BE9764();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_218B2050C();
  if (sub_219BE1E24())
  {
    sub_218B21000(&unk_280EE3F80, sub_218B2050C);
  }

  return sub_219BE9774();
}

uint64_t sub_218B1EE48(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218AE15BC(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_218AE1800(0);
    result = sub_219BE1E24();
    if (result)
    {
      sub_218B1FEE0();
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

uint64_t sub_218B1EF08(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E91810);
  result = sub_219BE1E34();
  if (v3)
  {
    type metadata accessor for PuzzleContinuePlayingBlueprintViewCellProvider();
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

void sub_218B1EFB4(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for PuzzleContinuePlayingViewController();
  v4 = sub_219BE1E24();
  v3 = &off_282A36300;
  if (!v4)
  {
    v3 = 0;
  }

  *(v2 + 24) = v3;
  swift_unknownObjectWeakAssign();
}

uint64_t sub_218B1F048(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90FD0);
  result = sub_219BE1E34();
  if (v4)
  {
    type metadata accessor for PuzzleContinuePlayingBlueprintViewSupplementaryViewProvider();
    v2 = swift_allocObject();
    sub_2186CB1F0(&v3, v2 + 16);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218B1F0E8(void *a1)
{
  v2 = sub_219BE9BC4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_219BE9BE4();
  MEMORY[0x28223BE20](v6 - 8);
  sub_218B205F8();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218AE15BC(0);
  result = sub_219BE1E24();
  if (result)
  {
    v13 = result;
    (*(v9 + 104))(v11, *MEMORY[0x277D6E378], v8);
    *v5 = 0;
    (*(v3 + 104))(v5, *MEMORY[0x277D6E828], v2);
    sub_219BE9BD4();
    v14[1] = v13;
    sub_218B203E4();
    swift_allocObject();
    return sub_219BE8EC4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218B1F340(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B1FA14();
  result = sub_219BE1E24();
  if (result)
  {
    sub_218B20478();
    swift_allocObject();
    return sub_219BE8914();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218B1F3B8(void *a1)
{
  sub_2187F2110();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C09EC0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B2050C();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = sub_218B21000(&unk_280EE3F90, sub_218B2050C);
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

uint64_t sub_218B1F4F4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B1FA14();
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_218AE15BC(0);
    result = sub_219BE1E24();
    if (result)
    {
      sub_218B2050C();
      swift_allocObject();
      return sub_219BE9AB4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218B1F608(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B1FA14();
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

uint64_t sub_218B1F6C4(uint64_t a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_218B202A8();
  v7 = sub_219BE1E24();
  if (v7)
  {
    v8 = v7;
    v9 = sub_218B21000(a3, sub_218B202A8);
    v7 = v8;
  }

  else
  {
    v9 = 0;
  }

  return a5(v7, v9);
}

uint64_t sub_218B1F778@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B202A8();
  v4 = v3;
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    a2[3] = v4;
    result = sub_218B21000(&unk_280EE4918, sub_218B202A8);
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_218B1F820()
{
  if (!qword_280EE5580)
  {
    sub_218AE15BC(255);
    sub_218B1F90C();
    sub_218B21000(&qword_280EE53D0, sub_218AE15BC);
    sub_218B21000(&unk_280EE5230, sub_218B1F90C);
    v0 = sub_219BE6F54();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE5580);
    }
  }
}

void sub_218B1F90C()
{
  if (!qword_280EE5228)
  {
    type metadata accessor for PuzzleContinuePlayingModel();
    sub_218B1FA14();
    sub_218AE146C();
    sub_218B21000(&qword_280EBAB50, type metadata accessor for PuzzleContinuePlayingModel);
    sub_218B21000(&unk_280EE4E68, sub_218B1FA14);
    v0 = sub_219BE72E4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE5228);
    }
  }
}

void sub_218B1FA14()
{
  if (!qword_280EE4E60)
  {
    sub_2186C6148(255, &qword_280E8E4C0);
    sub_218B1FB90();
    sub_218B1FD60();
    sub_218B1FEE0();
    type metadata accessor for PuzzleContinuePlayingViewController();
    sub_218B21000(&qword_280EE3E40, sub_218B1FB90);
    sub_218B21000(&qword_280EE42C8, sub_218B1FD60);
    sub_218B21000(&unk_280EE3D00, sub_218B1FEE0);
    v0 = sub_219BE7BE4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE4E60);
    }
  }
}

void sub_218B1FB90()
{
  if (!qword_280EE3E30)
  {
    sub_218AE15BC(255);
    sub_218AE1800(255);
    type metadata accessor for PuzzleContinuePlayingBlueprintViewCellProvider();
    type metadata accessor for PuzzleContinuePlayingBlueprintViewSupplementaryViewProvider();
    sub_218B21000(&qword_280EE53D0, sub_218AE15BC);
    sub_218B21000(&qword_280EE4C40, sub_218AE1800);
    sub_218B21000(&qword_280E93800, type metadata accessor for PuzzleContinuePlayingBlueprintViewCellProvider);
    sub_218B21000(qword_280EE1AF8, type metadata accessor for PuzzleContinuePlayingBlueprintViewSupplementaryViewProvider);
    sub_218B21000(&unk_280EA5730, type metadata accessor for PuzzleContinuePlayingLayoutModel);
    v0 = sub_219BE9B94();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE3E30);
    }
  }
}

void sub_218B1FD60()
{
  if (!qword_280EE42B8)
  {
    sub_218AE15BC(255);
    sub_218AE1800(255);
    type metadata accessor for PuzzleContinuePlayingViewController();
    sub_218B21000(&qword_280EE53D0, sub_218AE15BC);
    sub_218B21000(&qword_280EE4C40, sub_218AE1800);
    sub_218B21000(&qword_280E9CB20, type metadata accessor for PuzzleContinuePlayingViewController);
    sub_218B21000(&unk_280EA5730, type metadata accessor for PuzzleContinuePlayingLayoutModel);
    v0 = sub_219BE9794();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE42B8);
    }
  }
}

void sub_218B1FEE0()
{
  if (!qword_280EE3CF8)
  {
    sub_218AE15BC(255);
    sub_218AE1800(255);
    sub_218B21000(&qword_280EE53D0, sub_218AE15BC);
    sub_218B21000(&qword_280EE4C40, sub_218AE1800);
    v0 = sub_219BE9F34();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE3CF8);
    }
  }
}

void sub_218B1FFCC()
{
  if (!qword_280EE3BB8)
  {
    sub_218AE1800(255);
    type metadata accessor for PuzzleContinuePlayingBlueprintLayoutBuilder();
    sub_218B20108();
    sub_218B21000(&qword_280EE4C40, sub_218AE1800);
    sub_218B21000(qword_280E942B0, type metadata accessor for PuzzleContinuePlayingBlueprintLayoutBuilder);
    sub_218B21000(&qword_280EE4208, sub_218B20108);
    v0 = sub_219BEA4A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE3BB8);
    }
  }
}

void sub_218B20108()
{
  if (!qword_280EE4200)
  {
    type metadata accessor for PuzzleContinuePlayingLayoutModel();
    sub_218B201C0();
    sub_218B21000(&unk_280EA5730, type metadata accessor for PuzzleContinuePlayingLayoutModel);
    v0 = sub_219BE9974();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE4200);
    }
  }
}

unint64_t sub_218B201C0()
{
  result = qword_280E93D48;
  if (!qword_280E93D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E93D48);
  }

  return result;
}

void sub_218B20214()
{
  if (!qword_280EE4140)
  {
    sub_218AE1800(255);
    sub_218B21000(&qword_280EE4C40, sub_218AE1800);
    v0 = sub_219BE99B4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE4140);
    }
  }
}

void sub_218B202A8()
{
  if (!qword_280EE4908)
  {
    sub_218AE15BC(255);
    sub_218B1FA14();
    type metadata accessor for PuzzleContinuePlayingViewController();
    sub_218B21000(&qword_280EE53D0, sub_218AE15BC);
    sub_218B21000(&unk_280EE4E68, sub_218B1FA14);
    sub_218B21000(&qword_280E9CB20, type metadata accessor for PuzzleContinuePlayingViewController);
    v0 = sub_219BE8774();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE4908);
    }
  }
}

void sub_218B203E4()
{
  if (!qword_280EE45F0)
  {
    sub_218AE15BC(255);
    sub_218B21000(&qword_280EE53D0, sub_218AE15BC);
    v0 = sub_219BE8ED4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE45F0);
    }
  }
}

void sub_218B20478()
{
  if (!qword_280EE4818)
  {
    sub_218B1FA14();
    sub_218B21000(&unk_280EE4E68, sub_218B1FA14);
    v0 = sub_219BE8934();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE4818);
    }
  }
}

void sub_218B2050C()
{
  if (!qword_280EE3F70)
  {
    sub_218B1FA14();
    sub_218AE15BC(255);
    sub_218B21000(&unk_280EE4E68, sub_218B1FA14);
    sub_218B21000(&qword_280EE53D8, sub_218AE15BC);
    v0 = sub_219BE9AD4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE3F70);
    }
  }
}

void sub_218B205F8()
{
  if (!qword_280EE46A8)
  {
    sub_218AE15BC(255);
    sub_218B21000(&qword_280EE53D0, sub_218AE15BC);
    v0 = sub_219BE8EB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE46A8);
    }
  }
}

void sub_218B20694(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_218B206E8(uint64_t a1)
{
  sub_218B20694(0, &qword_280E90308, MEMORY[0x277D33AA0]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_218B20760(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_218B207EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for PuzzleContinuePlayingSectionDescriptor;
    v8[1] = type metadata accessor for PuzzleContinuePlayingModel();
    v8[2] = sub_218AE146C();
    v8[3] = sub_218B21000(&qword_280EBAB50, type metadata accessor for PuzzleContinuePlayingModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218B208AC()
{
  if (!qword_280EA8730[0])
  {
    type metadata accessor for PuzzleContinuePlayingBlueprintModifierFactory();
    sub_218B21000(&unk_280E93B98, type metadata accessor for PuzzleContinuePlayingBlueprintModifierFactory);
    v0 = type metadata accessor for PuzzleContinuePlayingInteractor();
    if (!v1)
    {
      atomic_store(v0, qword_280EA8730);
    }
  }
}

uint64_t sub_218B20940()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        v1 = off_282A36318[0];
        type metadata accessor for PuzzleContinuePlayingViewController();

        v1();

        swift_unknownObjectRelease();
      }

      else
      {
      }

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

char *sub_218B20A48(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = type metadata accessor for PuzzleContinuePlayingStyler();
  v28[3] = v10;
  v28[4] = &off_282A78B30;
  v28[0] = a1;
  v11 = type metadata accessor for PuzzleContinuePlayingViewController();
  v12 = objc_allocWithZone(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v28, v10);
  MEMORY[0x28223BE20](v13);
  v15 = (&v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v15;
  v27[3] = v10;
  v27[4] = &off_282A78B30;
  v27[0] = v17;
  v12[OBJC_IVAR____TtC7NewsUI235PuzzleContinuePlayingViewController_isBeingUsedAsPlugin] = 0;
  *&v12[OBJC_IVAR____TtC7NewsUI235PuzzleContinuePlayingViewController_pluggableDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v18 = &v12[OBJC_IVAR____TtC7NewsUI235PuzzleContinuePlayingViewController_lastComputedSize];
  *v18 = 0;
  *(v18 + 1) = 0;
  v18[16] = 1;
  *&v12[OBJC_IVAR____TtC7NewsUI235PuzzleContinuePlayingViewController_blueprintHorizontalShimView] = 0;
  sub_218718690(v27, &v12[OBJC_IVAR____TtC7NewsUI235PuzzleContinuePlayingViewController_styler]);
  v19 = &v12[OBJC_IVAR____TtC7NewsUI235PuzzleContinuePlayingViewController_eventHandler];
  *v19 = a2;
  v19[1] = a3;
  *&v12[OBJC_IVAR____TtC7NewsUI235PuzzleContinuePlayingViewController_blueprintViewController] = a4;
  *&v12[OBJC_IVAR____TtC7NewsUI235PuzzleContinuePlayingViewController_blueprintLayoutProvider] = a5;
  v26.receiver = v12;
  v26.super_class = v11;
  swift_unknownObjectRetain();
  v20 = a4;

  v21 = objc_msgSendSuper2(&v26, sel_initWithNibName_bundle_, 0, 0);
  *(*&v21[OBJC_IVAR____TtC7NewsUI235PuzzleContinuePlayingViewController_eventHandler] + 24) = &off_282A36308;
  swift_unknownObjectWeakAssign();
  v22 = *&v21[OBJC_IVAR____TtC7NewsUI235PuzzleContinuePlayingViewController_blueprintViewController];
  v23 = v21;
  v24 = v22;
  sub_219BE8744();

  __swift_destroy_boxed_opaque_existential_1(v27);
  __swift_destroy_boxed_opaque_existential_1(v28);
  return v23;
}

void *sub_218B20C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v15[3] = type metadata accessor for PuzzleContinuePlayingRouter();
  v15[4] = &off_282A69658;
  v15[0] = a3;
  v14[3] = type metadata accessor for PuzzleContinuePlayingTracker();
  v14[4] = &off_282A9DB30;
  v14[0] = a4;
  a5[3] = 0;
  swift_unknownObjectWeakInit();
  a5[4] = a1;
  a5[5] = a2;
  sub_218718690(v15, (a5 + 6));
  sub_218718690(v14, (a5 + 11));
  ObjectType = swift_getObjectType();
  v11 = *(a2 + 16);
  swift_unknownObjectRetain();

  v11(v12, &off_282A8AEF0, ObjectType, a2);
  __swift_destroy_boxed_opaque_existential_1(v14);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return a5;
}

void *sub_218B20D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v24 = type metadata accessor for PuzzleContinuePlayingRouter();
  v25 = &off_282A69658;
  v23[0] = a3;
  v21 = v8;
  v22 = &off_282A9DB30;
  v20[0] = a4;
  type metadata accessor for PuzzleContinuePlayingEventHandler();
  v9 = swift_allocObject();
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
  MEMORY[0x28223BE20](v10);
  v12 = (v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
  MEMORY[0x28223BE20](v14);
  v16 = (v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = sub_218B20C94(a1, a2, *v12, *v16, v9);
  __swift_destroy_boxed_opaque_existential_1(v20);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return v18;
}

void sub_218B20F98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_218B21000(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218B21048()
{
  result = sub_219BF0634();
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

uint64_t sub_218B21104(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v37 = a2;
  v34 = a1;
  v4 = sub_219BF0634();
  v38 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BF1904();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_219BF0BD4();
  v11 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BEF9A4();
  sub_219BEF984();
  v14 = *(v8 + 16);
  v33 = v10;
  v35 = v7;
  v14(v10, v37, v7);
  v15 = sub_219BEF994();
  v16 = v2[7];
  v17 = *(v38 + 16);
  v36 = v6;
  v37 = v4;
  v17(v6, v2 + qword_280E95690, v4);
  v18 = *(v2 + qword_280E95698);
  v19 = v16;
  if (v18)
  {
    v20 = [v18 asPuzzleType];
  }

  else
  {
    v20 = 0;
  }

  sub_218B214E8(v34, v39);
  v21 = v39[0];
  v22 = v39[1];
  type metadata accessor for PuzzleContinuePlayingConfig();
  v23 = swift_allocObject();
  (*(v11 + 32))(v23 + OBJC_IVAR____TtC7NewsUI227PuzzleContinuePlayingConfig_feedContext, v13, v32);
  (*(v8 + 32))(v23 + OBJC_IVAR____TtC7NewsUI227PuzzleContinuePlayingConfig_formatContent, v33, v35);
  v24 = (v23 + OBJC_IVAR____TtC7NewsUI227PuzzleContinuePlayingConfig_layoutOptionsProvider);
  v25 = MEMORY[0x277D6E490];
  *v24 = v15;
  v24[1] = v25;
  *(v23 + OBJC_IVAR____TtC7NewsUI227PuzzleContinuePlayingConfig_log) = v16;
  (*(v38 + 32))(v23 + OBJC_IVAR____TtC7NewsUI227PuzzleContinuePlayingConfig_feedKind, v36, v37);
  *(v23 + OBJC_IVAR____TtC7NewsUI227PuzzleContinuePlayingConfig_puzzleType) = v20;
  v26 = (v23 + OBJC_IVAR____TtC7NewsUI227PuzzleContinuePlayingConfig_knobConfig);
  *v26 = v21;
  v26[1] = v22;
  v27 = v3[5];
  v28 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v27);
  v29 = (*(v28 + 8))(v23, v27, v28);

  return v29;
}

void sub_218B214E8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v36 = a2;
  v35 = type metadata accessor for PuzzleContinuePlayingTagFeedGroup();
  MEMORY[0x28223BE20](v35);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A1299C(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v35 - v10;
  v12 = type metadata accessor for TagFeedGroup();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v35 - v17;
  (*(v9 + 16))(v11, a1, AssociatedTypeWitness);
  v19 = swift_dynamicCast();
  v20 = *(v13 + 56);
  if (v19)
  {
    v20(v7, 0, 1, v12);
    sub_218B21C5C(v7, v18, type metadata accessor for TagFeedGroup);
    sub_218B21BF8(v18, v16);
    if (swift_getEnumCaseMultiPayload() == 36)
    {
      sub_218B21CC4(v18, type metadata accessor for TagFeedGroup);
      sub_218B21C5C(v16, v4, type metadata accessor for PuzzleContinuePlayingTagFeedGroup);
      v21 = &v4[*(v35 + 20)];
      v22 = *v21;
      v23 = *(v21 + 1);
      sub_218B21CC4(v4, type metadata accessor for PuzzleContinuePlayingTagFeedGroup);
      v24 = v36;
      *v36 = v22;
      v24[1] = v23;
    }

    else
    {
      if (qword_280EE5F80 != -1)
      {
        swift_once();
      }

      v30 = sub_219BE5434();
      __swift_project_value_buffer(v30, qword_280F625E0);
      v31 = sub_219BE5414();
      v32 = sub_219BF61F4();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_2186C1000, v31, v32, "Failed to retrieve PuzzleContinuePlayingKnobConfiguration from puzzleContinuePlaying group.  Using defaults.", v33, 2u);
        MEMORY[0x21CECF960](v33, -1, -1);
      }

      sub_218B21CC4(v18, type metadata accessor for TagFeedGroup);
      v34 = v36;
      *v36 = 0x4122750000000000;
      v34[1] = 5;
      sub_218B21CC4(v16, type metadata accessor for TagFeedGroup);
    }
  }

  else
  {
    v20(v7, 1, 1, v12);
    sub_218B21CC4(v7, sub_218A1299C);
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
      _os_log_impl(&dword_2186C1000, v26, v27, "Failed to retrieve PuzzleContinuePlayingKnobConfiguration from feed group.  Falling back to default config.", v28, 2u);
      MEMORY[0x21CECF960](v28, -1, -1);
    }

    v29 = v36;
    *v36 = 0x4122750000000000;
    v29[1] = 5;
  }
}

uint64_t sub_218B21A6C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v1 = qword_280E95690;
  v2 = sub_219BF0634();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_218B21B00()
{
  sub_218B21A6C();

  return swift_deallocClassInstance();
}

uint64_t sub_218B21B94()
{
  v1 = *(*v0 + qword_280F619A8);

  return v1;
}

uint64_t sub_218B21BF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TagFeedGroup();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218B21C5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218B21CC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218B21D24()
{
  v1 = *(v0 + 32);
  swift_unknownObjectRetain();

  sub_218DB1F7C(v2, v1);
  swift_unknownObjectRelease();

  sub_218774F78(v0 + 16);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_218B21DC4()
{
  sub_218B21FF0();
  sub_219BE3204();
  v0 = sub_219BE2E54();
  v1 = sub_219BE2F64();

  return v1;
}

uint64_t sub_218B21E60()
{
  sub_21870F2E8(0, &qword_27CC0E130);
  swift_allocObject();

  return sub_219BE3014();
}

uint64_t sub_218B21ED0()
{
  sub_219BE3204();
  v0 = sub_219BE2E54();
  v1 = sub_219BE2F64();

  return v1;
}

uint64_t sub_218B21F88()
{
  v0 = off_282A4D798[0];
  type metadata accessor for TagService();
  return v0();
}

unint64_t sub_218B21FF0()
{
  result = qword_280E8E530;
  if (!qword_280E8E530)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E8E530);
  }

  return result;
}

uint64_t sub_218B2203C(id *a1)
{
  v1 = [*a1 subscribedTags];
  sub_2186D8870();
  v2 = sub_219BF5924();

  v10 = MEMORY[0x277D84F90];
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
      swift_unknownObjectRetain();
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

    v7 = [v5 asSports];
    v8 = swift_unknownObjectRelease();
    ++v4;
    if (v7)
    {
      MEMORY[0x21CECC690](v8);
      if (*(v10 + 16) >= *(v10 + 24) >> 1)
      {
        sub_219BF5A14();
      }

      sub_219BF5A54();
      v4 = v6;
    }
  }

  sub_21870F2E8(0, &qword_27CC0E138);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_218B22220(uint64_t result, unint64_t a2, char a3)
{
  if (!a3)
  {
    v4 = *(result + 16);
    if (v4)
    {
      v6 = (result + 32);
      while (1)
      {
        v7 = *v6;
        v6 += 2;
        result = [*(v7 + 16) isSports];
        if (result)
        {
          break;
        }

        if (!--v4)
        {
          return result;
        }
      }

      v17 = MEMORY[0x277D84F90];
      if (a2 >> 62)
      {
LABEL_31:
        v8 = sub_219BF7214();
      }

      else
      {
        v8 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v9 = 0;
      v16 = MEMORY[0x277D84F90];
      while (v8 != v9)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x21CECE0F0](v9, a2);
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_29;
          }
        }

        else
        {
          if (v9 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v10 = *(a2 + 8 * v9 + 32);
          swift_unknownObjectRetain();
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
            goto LABEL_31;
          }
        }

        v12 = [v10 asSports];
        v13 = swift_unknownObjectRelease();
        ++v9;
        if (v12)
        {
          MEMORY[0x21CECC690](v13);
          if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_219BF5A14();
          }

          sub_219BF5A54();
          v16 = v17;
          v9 = v11;
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v14 = *(v3 + 24);
        ObjectType = swift_getObjectType();
        (*(v14 + 8))(v3, &off_282A37BC8, v16, ObjectType, v14);

        return swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t ShareLinkProvider.shareLink(for:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_219BDB954();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E5438(0, &unk_280EE9D00, MEMORY[0x277CC9260]);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v23 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  if ([a1 contentType] == 1)
  {
    v18 = [a1 contentURL];
    if (v18)
    {
      v19 = v18;
      sub_219BDB8B4();

      (*(v6 + 56))(v17, 0, 1, v5);
    }

    else
    {
      (*(v6 + 56))(v17, 1, 1, v5);
    }

    return sub_218AB007C(v17, a2);
  }

  else
  {
    sub_218B227CC(a1, v15);
    sub_2188383F8(v15, v12);
    if ((*(v6 + 48))(v12, 1, v5) == 1)
    {
      v20 = MEMORY[0x277CC9260];
      sub_2187BC38C(v15, &unk_280EE9D00, MEMORY[0x277CC9260]);
      sub_2187BC38C(v12, &unk_280EE9D00, v20);
      return (*(v6 + 56))(a2, 1, 1, v5);
    }

    else
    {
      v22 = *(v6 + 32);
      v22(v8, v12, v5);
      if (*(v2 + 16))
      {
        sub_218B22B14(v8, a2);
        (*(v6 + 8))(v8, v5);
        sub_2187BC38C(v15, &unk_280EE9D00, MEMORY[0x277CC9260]);
      }

      else
      {
        sub_2187BC38C(v15, &unk_280EE9D00, MEMORY[0x277CC9260]);
        v22(a2, v8, v5);
      }

      return (*(v6 + 56))(a2, 0, 1, v5);
    }
  }
}

uint64_t sub_218B227CC@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v34 = a2;
  v3 = sub_219BDB954();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v33 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v33 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v33 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v33 - v17;
  v19 = [a1 articleID];
  if (!v19)
  {
    sub_219BF5414();
    v19 = sub_219BF53D4();
  }

  v20 = [a1 routeURL];
  if (v20)
  {
    v21 = v20;
    sub_219BDB8B4();

    v22 = sub_219BDB854();
    (*(v4 + 8))(v16, v3);
  }

  else
  {
    v22 = 0;
  }

  v23 = [objc_opt_self() nss:v19 NewsURLForArticleID:v22 routeURL:?];

  if (v23)
  {
    sub_219BDB8B4();

    v24 = *(v4 + 32);
    v24(v18, v13, v3);
    v25 = [a1 sourceChannel];
    if (!v25 || (v26 = [v25 isPublic], swift_unknownObjectRelease(), v26))
    {
      v27 = v34;
      v24(v34, v18, v3);
      goto LABEL_13;
    }

    (*(v4 + 8))(v18, v3);
  }

  v28 = [a1 contentURL];
  if (!v28)
  {
    v31 = 1;
    v27 = v34;
    return (*(v4 + 56))(v27, v31, 1, v3);
  }

  v29 = v28;
  sub_219BDB8B4();

  v30 = *(v4 + 32);
  v30(v10, v7, v3);
  v27 = v34;
  v30(v34, v10, v3);
LABEL_13:
  v31 = 0;
  return (*(v4 + 56))(v27, v31, 1, v3);
}

uint64_t sub_218B22B14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2186E5438(0, &unk_280EE9D00, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  sub_2186E5438(0, &unk_280EE9DB0, MEMORY[0x277CC8958]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20 - v8;
  v10 = sub_219BDB354();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDB264();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_2187BC38C(v9, &unk_280EE9DB0, MEMORY[0x277CC8958]);
    v14 = sub_219BDB954();
    return (*(*(v14 - 8) + 16))(a2, a1, v14);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    v16 = sub_219BDB2B4();
    v20 = 0x79616C50776F6E2FLL;
    v21 = 0xEB00000000676E69;
    MEMORY[0x21CECC330](v16);

    MEMORY[0x21CEB2060](v20, v21);
    sub_219BDB274();
    (*(v11 + 8))(v13, v10);
    v17 = sub_219BDB954();
    v18 = *(v17 - 8);
    v19 = *(v18 + 48);
    if (v19(v6, 1, v17) == 1)
    {
      (*(v18 + 16))(a2, a1, v17);
      result = v19(v6, 1, v17);
      if (result != 1)
      {
        return sub_2187BC38C(v6, &unk_280EE9D00, MEMORY[0x277CC9260]);
      }
    }

    else
    {
      return (*(v18 + 32))(a2, v6, v17);
    }
  }

  return result;
}

uint64_t sub_218B22EE0(uint64_t a1, uint64_t a2)
{
  sub_2187015C4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_218B22F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2187015C4();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_218B22FC8()
{
  sub_2187015C4();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B2403C(v0, v8);
  (*(v3 + 32))(v6, v8, v2);
  v9 = sub_219BEDCA4();
  (*(v3 + 8))(v6, v2);
  return v9;
}

uint64_t sub_218B2315C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_2187015C4();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B2403C(v3, v12);
  (*(v7 + 32))(v10, v12, v6);
  a3(v6);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_218B2330C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_2187015C4();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B2403C(v3, v12);
  (*(v7 + 32))(v10, v12, v6);
  v13 = a3(v6);
  (*(v7 + 8))(v10, v6);
  return v13;
}

uint64_t sub_218B23458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_218701754(&qword_27CC0E178, type metadata accessor for RecipeBoxFeedGroupConfig);

  return MEMORY[0x282190458](a1, a2, a3, v6);
}

uint64_t sub_218B235FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  sub_2187015C4();
  v5 = v4;
  v18 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B23F38();
  v9 = v8;
  v21 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B23F94();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v21;
    v16 = v5;
    v17 = v7;
    sub_218B23FE8();
    sub_219BF7734();
    sub_218718690(a1, v20);
    type metadata accessor for RecipeListRecipeBoxFeedGroupConfigData();
    sub_218701754(&qword_280EE2F60, type metadata accessor for RecipeListRecipeBoxFeedGroupConfigData);
    sub_218701754(&qword_280EE2F68, type metadata accessor for RecipeListRecipeBoxFeedGroupConfigData);
    v13 = v17;
    sub_219BEDD24();
    (*(v12 + 8))(v11, v9);
    (*(v18 + 32))(v19, v13, v16);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218B238DC@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_219BF7614();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_218B23934(uint64_t a1)
{
  v2 = sub_218B23F94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218B23970(uint64_t a1)
{
  v2 = sub_218B23F94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218B239C8()
{
  sub_219BF7AA4();
  sub_219BF5524();
  return sub_219BF7AE4();
}

uint64_t sub_218B23A50()
{
  sub_219BF7AA4();
  sub_219BF5524();
  return sub_219BF7AE4();
}

uint64_t sub_218B23AA8@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_219BF7614();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_218B23BE0()
{
  v1 = v0;
  sub_2187015C4();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B2403C(v1, v9);
  (*(v4 + 32))(v7, v9, v3);
  sub_219BEDD64();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_218B23D38@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for RecipeListRecipeBoxFeedGroupConfigData();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187015C4();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B2403C(v1, v13);
  (*(v8 + 32))(v11, v13, v7);
  sub_219BEDD14();
  (*(v8 + 8))(v11, v7);
  v14 = sub_219BF1934();
  v15 = *(v14 - 8);
  (*(v15 + 32))(a1, v5, v14);
  return (*(v15 + 56))(a1, 0, 1, v14);
}

void sub_218B23F38()
{
  if (!qword_27CC0E160)
  {
    sub_218B23F94();
    v0 = sub_219BF7774();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0E160);
    }
  }
}

unint64_t sub_218B23F94()
{
  result = qword_27CC0E168;
  if (!qword_27CC0E168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0E168);
  }

  return result;
}

unint64_t sub_218B23FE8()
{
  result = qword_27CC0E170;
  if (!qword_27CC0E170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0E170);
  }

  return result;
}

uint64_t sub_218B2403C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeBoxFeedGroupConfig();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_218B240C4()
{
  result = qword_27CC0E180;
  if (!qword_27CC0E180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0E180);
  }

  return result;
}

unint64_t sub_218B2411C()
{
  result = qword_27CC0E188;
  if (!qword_27CC0E188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0E188);
  }

  return result;
}

unint64_t sub_218B24174()
{
  result = qword_27CC0E190;
  if (!qword_27CC0E190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0E190);
  }

  return result;
}

unint64_t sub_218B241CC()
{
  result = qword_27CC0E198;
  if (!qword_27CC0E198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0E198);
  }

  return result;
}

unint64_t sub_218B24220()
{
  result = qword_27CC0E1A0;
  if (!qword_27CC0E1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0E1A0);
  }

  return result;
}

uint64_t sub_218B242AC@<X0>(void *a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if (qword_280EE9650 != -1)
  {
    swift_once();
  }

  if (sub_219BDC834())
  {

    return sub_218B243CC(a4);
  }

  else
  {
    v9 = sub_218C8D588([a1 subscription], objc_msgSend(a1, sel_isOptedIntoIssues));
    result = sub_218C8D588([a1 activeNewsletter], objc_msgSend(a1, sel_isEligibleForIssues));
    *a4 = v9;
    *(a4 + 8) = result;
    *(a4 + 16) = a2 & 1;
    *(a4 + 17) = a3 & 1;
  }

  return result;
}

uint64_t sub_218B243CC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CC08180 != -1)
  {
    swift_once();
  }

  sub_218B24670();
  sub_219BDC7D4();
  if (qword_27CC08190 != -1)
  {
    swift_once();
  }

  sub_219BDC7D4();
  v2 = 2;
  if (v12)
  {
    v2 = 3;
  }

  if (v13)
  {
    v3 = v2;
  }

  else
  {
    v3 = 1;
  }

  if (qword_27CC08188 != -1)
  {
    swift_once();
  }

  sub_219BDC7D4();
  v4 = sub_218C8D588(v3, v11);
  if (qword_27CC08198 != -1)
  {
    swift_once();
  }

  sub_219BDC7D4();
  if (qword_27CC081A8 != -1)
  {
    swift_once();
  }

  sub_219BDC7D4();
  if (qword_27CC081A0 != -1)
  {
    swift_once();
  }

  v5 = 2;
  if (v9)
  {
    v5 = 3;
  }

  if (v10)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1;
  }

  sub_219BDC7D4();
  result = sub_218C8D588(v6, v8);
  *a1 = v4;
  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  return result;
}

unint64_t sub_218B24670()
{
  result = qword_27CC0E1A8;
  if (!qword_27CC0E1A8)
  {
    type metadata accessor for EmailSignupModelFactory();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0E1A8);
  }

  return result;
}

void sub_218B246C4(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v25 = a4;
  v7 = sub_219BF1414();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218B24A8C(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AD7B00(0);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a2;
  sub_218B24B24(a1, v13);
  if ((*(v16 + 48))(v13, 1, v15) == 1)
  {
    sub_218B255A0(v13, sub_218B24A8C);
  }

  else
  {
    (*(v16 + 32))(v18, v13, v15);
    sub_219BF2534();
    if ((*(v8 + 88))(v10, v7) == *MEMORY[0x277D33368])
    {
      (*(v8 + 96))(v10, v7);
      v20 = *v10;
      if (a3 && sub_219BE82D4())
      {
        if (v19 != 2)
        {
          v22 = swift_allocObject();
          *(v22 + 16) = v20;
          *(v22 + 24) = a3;
          *(v22 + 32) = v25;
          *(v22 + 40) = v19 & 1;
          v23 = v20;

          sub_219BDD154();

          (*(v16 + 8))(v18, v15);
          return;
        }

        (*(v16 + 8))(v18, v15);
      }

      else
      {
        (*(v16 + 8))(v18, v15);
      }
    }

    else
    {
      (*(v16 + 8))(v18, v15);
      (*(v8 + 8))(v10, v7);
    }
  }

  sub_2186C66AC();
  v21 = sub_219BF6F44();
  sub_219BF6214();
  sub_219BE5314();
}

void sub_218B24AC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218B24B24(uint64_t a1, uint64_t a2)
{
  sub_218B24A8C(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218B24B88(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v67 = a5;
  v63 = a4;
  v59 = a3;
  v75 = a1;
  v6 = sub_219BE09E4();
  v65 = *(v6 - 8);
  v66 = v6;
  MEMORY[0x28223BE20](v6);
  v64 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDF104();
  v61 = *(v8 - 8);
  v62 = v8;
  MEMORY[0x28223BE20](v8);
  v60 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B24AC0(0, &unk_27CC15A90, MEMORY[0x277D6E130], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v54 = &v51 - v11;
  v12 = sub_219BDF274();
  MEMORY[0x28223BE20](v12 - 8);
  v55 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_219BDEEB4();
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v56 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_219BDEFE4();
  v15 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a2 identifier];
  sub_219BF5414();

  [a2 isPaid];
  v72 = a2;
  v19 = [a2 totalTime];
  sub_219BF5414();

  sub_219BDEFB4();
  sub_218B24AC0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v21 = v20;
  v22 = sub_219BDCD44();
  v23 = *(v22 - 8);
  v24 = *(v23 + 72);
  v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v70 = *(v23 + 80);
  v71 = v24;
  v26 = swift_allocObject();
  v74 = xmmword_219C09BA0;
  *(v26 + 16) = xmmword_219C09BA0;
  v28 = *(v23 + 104);
  v27 = v23 + 104;
  v29 = *MEMORY[0x277CEAD18];
  v73 = v28;
  (v28)(v26 + v25);
  sub_218B25600(&qword_280EE8900, MEMORY[0x277D2D798]);
  v69 = "context, tracker, or state";
  v30 = v53;
  sub_219BDCCC4();

  (*(v15 + 8))(v17, v30);
  if (v59)
  {
    v31 = v54;
    sub_219BE8304();
    v32 = 0;
  }

  else
  {
    v32 = 1;
    v31 = v54;
  }

  v33 = sub_219BE89F4();
  (*(*(v33 - 8) + 56))(v31, v32, 1, v33);
  sub_219BDF284();
  v34 = v56;
  sub_219BDEEA4();
  v35 = swift_allocObject();
  *(v35 + 16) = v74;
  v68 = v29;
  v73(v35 + v25, v29, v22);
  sub_218B25600(&unk_27CC15AA0, MEMORY[0x277D2D740]);
  v36 = v58;
  v52 = v22;
  sub_219BDCCC4();

  (*(v57 + 8))(v34, v36);
  v37 = [v72 sourceChannel];
  v51 = v21;
  v38 = v60;
  sub_219BE01F4();
  v39 = swift_allocObject();
  *(v39 + 16) = v74;
  v73(v39 + v25, v68, v22);
  sub_218B25600(&unk_280EE8890, MEMORY[0x277D2D8B8]);
  v59 = v27;
  v40 = v62;
  sub_219BDCCC4();

  (*(v61 + 8))(v38, v40);
  v41 = v64;
  sub_219BE01E4();
  v42 = swift_allocObject();
  *(v42 + 16) = v74;
  v73(v42 + v25, v68, v52);
  sub_218B25600(&qword_280EE8270, MEMORY[0x277D2E9C0]);
  v43 = v66;
  sub_219BDCCC4();

  (*(v65 + 8))(v41, v43);
  if (v67)
  {
    v44 = [v72 eventAggregationPersonalizationData];
    if (v44)
    {
      v45 = v44;
      sub_219BDBA04();
    }

    sub_219BDFFF4();
    v77 = sub_219BE04B4();
    __swift_allocate_boxed_opaque_existential_1(v76);
    sub_219BE04A4();
    v48 = &unk_27CC0E1B0;
    v49 = MEMORY[0x277D2E2D0];
  }

  else
  {
    v46 = [v72 eventAggregationPersonalizationData];
    if (v46)
    {
      v47 = v46;
      sub_219BDBA04();
    }

    sub_219BDF954();
    v77 = sub_219BE04B4();
    __swift_allocate_boxed_opaque_existential_1(v76);
    sub_219BE04A4();
    v48 = &unk_27CC0E1B8;
    v49 = MEMORY[0x277D2DEA0];
  }

  sub_218B25600(v48, v49);
  sub_219BDCCE4();
  swift_unknownObjectRelease();
  return sub_218B255A0(v76, sub_21880702C);
}

uint64_t sub_218B255A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218B25600(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for AudioFeedRouteModel()
{
  result = qword_27CC0E1C0;
  if (!qword_27CC0E1C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_218B25694()
{
  result = sub_219BDD664();
  if (v1 <= 0x3F)
  {
    result = sub_218731D50();
    if (v2 <= 0x3F)
    {
      result = sub_219BDD944();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_218B2572C@<X0>(char *a1@<X0>, void (**a2)(char *)@<X1>, uint64_t a3@<X8>)
{
  v155 = a1;
  v156 = a2;
  v154 = a3;
  sub_218B58900(0);
  MEMORY[0x28223BE20](v3 - 8);
  v144 = &v125 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_219BE1444();
  v131 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v130 = &v125 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58934();
  v136 = v6;
  v157 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v128 = &v125 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v129 = &v125 - v9;
  sub_218B589C8();
  v142 = v10;
  v146 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v133 = &v125 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v134 = &v125 - v13;
  v141 = sub_219BE97D4();
  v140 = *(v141 - 8);
  v14 = MEMORY[0x28223BE20](v141);
  v135 = &v125 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v143 = &v125 - v16;
  sub_21898BBC4(0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v125 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v125 - v21;
  sub_218954350();
  v153 = v23;
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v145 = &v125 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v148 = &v125 - v27;
  sub_218B58AD4();
  v29 = v28;
  v30 = *(v28 - 8);
  v31 = MEMORY[0x28223BE20](v28);
  v152 = &v125 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v34 = &v125 - v33;
  sub_218954408();
  v36 = v35;
  v150 = *(v35 - 8);
  v37 = MEMORY[0x28223BE20](v35);
  v149 = &v125 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v40 = &v125 - v39;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v47 = 1;
    v48 = v154;
LABEL_39:
    v124 = sub_219BE16D4();
    return (*(*(v124 - 8) + 56))(v48, v47, 1, v124);
  }

  v42 = Strong;
  v139 = v30;
  v147 = v29;

  sub_219BEE5E4();

  sub_219BDEC74();

  v151 = v42;

  sub_219BDEC44();

  sub_219BEB294();
  v43 = v24;
  v44 = v153;
  v156 = *(v24 + 48);
  v45 = (v156)(v22, 1, v153);
  v138 = v34;
  v137 = v40;
  if (v45 == 1)
  {
    v46 = v44;
    sub_218B58C44(v22, sub_21898BBC4);
  }

  else
  {
    v155 = v20;
    v49 = v148;
    (*(v24 + 32))(v148, v22, v44);
    sub_219BE6944();
    v127 = v36;
    sub_219BEB194();
    v51 = v50;

    if ((v51 & 1) == 0)
    {
      v126 = v24;
      sub_218B588AC(v160);
      v64 = v134;
      sub_219BE65A4();
      sub_2186F1034(&qword_27CC0E1D8, sub_218B589C8);
      v65 = v142;
      v66 = sub_219BF5E44();
      if (v66)
      {
        v67 = v66;
        v159 = MEMORY[0x277D84F90];
        sub_218C34D90(0, v66 & ~(v66 >> 63), 0);
        v68 = v159;
        result = sub_219BF5DF4();
        if (v67 < 0)
        {
          __break(1u);
          goto LABEL_41;
        }

        v155 = (v157 + 32);
        v156 = (v157 + 16);
        v70 = v136;
        v71 = v129;
        do
        {
          v72 = sub_219BF5EC4();
          (*v156)(v71);
          v72(v158, 0);
          v159 = v68;
          v73 = v65;
          v75 = *(v68 + 16);
          v74 = *(v68 + 24);
          if (v75 >= v74 >> 1)
          {
            sub_218C34D90(v74 > 1, v75 + 1, 1);
            v68 = v159;
          }

          *(v68 + 16) = v75 + 1;
          (*(v157 + 32))(v68 + ((*(v157 + 80) + 32) & ~*(v157 + 80)) + *(v157 + 72) * v75, v71, v70);
          sub_219BF5E94();
          --v67;
          v65 = v73;
        }

        while (v67);
        (*(v146 + 8))(v64, v73);
      }

      else
      {
        (*(v146 + 8))(v64, v65);
      }

      v48 = v154;
      v88 = v144;
      type metadata accessor for TagFeedLayoutModel();
      sub_2186F1034(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel);
      sub_219BE97B4();
      v89 = OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDescriptor;
      v90 = v151;
      swift_beginAccess();
      v91 = *(v90 + v89);
      v92 = v139;
      v93 = v148;
      if (v91 && [v91 backingTag])
      {
        swift_unknownObjectRetain();
        v94 = v130;
        sub_219BE1414();
        v95 = sub_219BE1434();
        v97 = v96;
        swift_unknownObjectRelease_n();
        v98 = v94;
        v93 = v148;
        (*(v131 + 8))(v98, v132);
      }

      else
      {
        v95 = 0;
        v97 = 0;
      }

      v99 = v140;
      v100 = v143;
      v101 = v141;
      (*(v140 + 16))(v88, v143, v141);
      (*(v99 + 56))(v88, 0, 1, v101);
      v102 = v93;
      v103 = v95;
      v104 = v93;
      v105 = v137;
      sub_21968E4D8(v102, v88, v103, v97, v48);

      sub_218B58C44(v88, sub_218B58900);
      (*(v99 + 8))(v100, v101);
      (*(v126 + 8))(v104, v153);
      (*(v92 + 8))(v138, v147);
      (*(v150 + 8))(v105, v127);
      goto LABEL_38;
    }

    v46 = v44;
    (*(v24 + 8))(v49, v44);
    v36 = v127;
    v20 = v155;
  }

  v52 = v149;
  sub_219BDEBD4();

  v53 = v152;
  sub_219BDEBA4();

  sub_219BEB294();
  sub_218B588AC(v160);
  v54 = (v156)(v20, 1, v46);
  v48 = v154;
  if (v54 == 1)
  {

    v55 = *(v139 + 8);
    v56 = v147;
    v55(v53, v147);
    v57 = *(v150 + 8);
    v57(v52, v36);
    v55(v138, v56);
    v57(v137, v36);
    sub_218B58C44(v20, sub_21898BBC4);
    v47 = 1;
    goto LABEL_39;
  }

  v58 = v145;
  (*(v43 + 32))(v145, v20, v46);
  sub_219BE6944();
  sub_219BEB194();
  v60 = v59;

  v61 = v147;
  if (v60)
  {

    (*(v43 + 8))(v58, v46);
    v62 = *(v139 + 8);
    v62(v152, v61);
    v63 = *(v150 + 8);
    v63(v52, v36);
    v62(v138, v61);
    v63(v137, v36);
    v47 = 1;
    goto LABEL_39;
  }

  v126 = v43;
  v76 = v133;
  sub_219BE65A4();
  sub_2186F1034(&qword_27CC0E1D8, sub_218B589C8);
  v77 = v142;
  v78 = sub_219BF5E44();
  if (!v78)
  {
    (*(v146 + 8))(v76, v77);
    v48 = v154;
LABEL_32:
    type metadata accessor for TagFeedLayoutModel();
    sub_2186F1034(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel);
    v106 = v135;
    sub_219BE97B4();
    v107 = OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDescriptor;
    v108 = v151;
    swift_beginAccess();
    v109 = *(v108 + v107);
    v110 = v144;
    if (v109)
    {
      v111 = [v109 backingTag];
      v112 = v141;
      v113 = v140;
      if (v111)
      {
        swift_unknownObjectRetain();
        v114 = v130;
        sub_219BE1414();
        v115 = sub_219BE1434();
        v117 = v116;
        v106 = v135;
        v110 = v144;
        swift_unknownObjectRelease_n();
        (*(v131 + 8))(v114, v132);
      }

      else
      {
        v115 = 0;
        v117 = 0;
      }
    }

    else
    {
      v115 = 0;
      v117 = 0;
      v112 = v141;
      v113 = v140;
    }

    (*(v113 + 16))(v110, v106, v112);
    (*(v113 + 56))(v110, 0, 1, v112);
    v118 = v145;
    v119 = v115;
    v120 = v149;
    sub_21968E4D8(v145, v110, v119, v117, v48);

    sub_218B58C44(v110, sub_218B58900);
    (*(v113 + 8))(v106, v112);
    (*(v126 + 8))(v118, v153);
    v121 = *(v139 + 8);
    v122 = v147;
    v121(v152, v147);
    v123 = *(v150 + 8);
    v123(v120, v36);
    v121(v138, v122);
    v123(v137, v36);
LABEL_38:
    v47 = 0;
    goto LABEL_39;
  }

  v79 = v78;
  v127 = v36;
  v159 = MEMORY[0x277D84F90];
  sub_218C34D90(0, v78 & ~(v78 >> 63), 0);
  v80 = v159;
  result = sub_219BF5DF4();
  if ((v79 & 0x8000000000000000) == 0)
  {
    v81 = v76;
    v155 = (v157 + 32);
    v156 = (v157 + 16);
    v82 = v136;
    v83 = v128;
    do
    {
      v84 = sub_219BF5EC4();
      (*v156)(v83);
      v84(v158, 0);
      v159 = v80;
      v85 = v77;
      v87 = *(v80 + 16);
      v86 = *(v80 + 24);
      if (v87 >= v86 >> 1)
      {
        sub_218C34D90(v86 > 1, v87 + 1, 1);
        v80 = v159;
      }

      *(v80 + 16) = v87 + 1;
      (*(v157 + 32))(v80 + ((*(v157 + 80) + 32) & ~*(v157 + 80)) + *(v157 + 72) * v87, v83, v82);
      sub_219BF5E94();
      --v79;
      v77 = v85;
    }

    while (v79);
    (*(v146 + 8))(v81, v85);
    v48 = v154;
    v36 = v127;
    goto LABEL_32;
  }

LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_218B26A0C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v102 = a1;
  v100 = a2;
  sub_218B58900(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_219BE16D4();
  v90 = *(v87 - 8);
  v5 = MEMORY[0x28223BE20](v87);
  v86 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v74 - v7;
  v81 = sub_219BE1444();
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v79 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58934();
  v82 = v10;
  v104 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v83 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B589C8();
  v89 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v88 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_219BE97D4();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v91 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BBC4(0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v103 = (&v74 - v20);
  sub_218954350();
  v22 = v21;
  v101 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v96 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58AD4();
  v98 = *(v24 - 8);
  v99 = v24;
  MEMORY[0x28223BE20](v24);
  v26 = &v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954408();
  v28 = v27;
  v97 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v74 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v76 = v13;
  v77 = v8;
  v78 = v4;
  v107 = *(Strong + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_blueprintProvider);
  v32 = Strong;
  sub_218987644();
  sub_2186F1034(&qword_280EE54F0, sub_218987644);
  sub_219BE7B94();
  v92 = v32;
  v107 = *(v32 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_blueprintLayoutProvider);
  sub_218B58B8C();
  sub_2186F1034(&qword_280EE4BD0, sub_218B58B8C);
  v94 = v26;
  sub_219BE91E4();
  sub_219BEB354();
  v33 = v101;
  v34 = *(v101 + 48);
  v35 = v34(v19, 1, v22);
  v95 = v28;
  v93 = v30;
  if (v35 == 1)
  {

    sub_219BEE5E4();
    v36 = v103;
    sub_219BEB294();
    sub_218B588AC(&v107);
    if (v34(v19, 1, v22) != 1)
    {
      sub_218B58C44(v19, sub_21898BBC4);
    }
  }

  else
  {
    v36 = v103;
    (*(v33 + 32))(v103, v19, v22);
    (*(v33 + 56))(v36, 0, 1, v22);
  }

  if (v34(v36, 1, v22) == 1)
  {

    (*(v98 + 8))(v94, v99);
    (*(v97 + 8))(v93, v95);
    sub_218B58C44(v36, sub_21898BBC4);
LABEL_10:
    v43 = 1;
    v44 = v100;
LABEL_11:
    v45 = sub_219BE0014();
    return (*(*(v45 - 8) + 56))(v44, v43, 1, v45);
  }

  v37 = v101;
  v38 = v96;
  (*(v101 + 32))(v96, v36, v22);
  sub_219BE6944();
  v39 = v95;
  v40 = v93;
  sub_219BEB194();
  v42 = v41;

  if (v42)
  {

    (*(v37 + 8))(v38, v22);
    (*(v98 + 8))(v94, v99);
    (*(v97 + 8))(v40, v39);
    goto LABEL_10;
  }

  v75 = v22;
  v47 = v88;
  sub_219BE65A4();
  sub_2186F1034(&qword_27CC0E1D8, sub_218B589C8);
  v48 = v89;
  v49 = sub_219BF5E44();
  if (!v49)
  {
LABEL_18:
    (*(v76 + 8))(v47, v48);
    v44 = v100;
    v57 = v87;
    v58 = v90;
    type metadata accessor for TagFeedLayoutModel();
    sub_2186F1034(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel);
    v59 = v91;
    sub_219BE97B4();
    v60 = OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDescriptor;
    v61 = v92;
    swift_beginAccess();
    v62 = *(v61 + v60);
    v63 = v78;
    v64 = v77;
    if (v62 && [v62 backingTag])
    {
      swift_unknownObjectRetain();
      v65 = v79;
      sub_219BE1414();
      v66 = sub_219BE1434();
      v68 = v67;
      v58 = v90;
      swift_unknownObjectRelease_n();
      (*(v80 + 8))(v65, v81);
    }

    else
    {
      v66 = 0;
      v68 = 0;
    }

    v69 = v84;
    v70 = v85;
    (*(v84 + 16))(v63, v59, v85);
    (*(v69 + 56))(v63, 0, 1, v70);
    v71 = v96;
    v72 = v66;
    v73 = v93;
    sub_21968E4D8(v96, v63, v72, v68, v64);

    sub_218B58C44(v63, sub_218B58900);
    (*(v58 + 16))(v86, v64, v57);
    sub_219BE0004();

    (*(v58 + 8))(v64, v57);
    (*(v69 + 8))(v91, v70);
    (*(v101 + 8))(v71, v75);
    (*(v98 + 8))(v94, v99);
    (*(v97 + 8))(v73, v95);
    v43 = 0;
    goto LABEL_11;
  }

  v50 = v49;
  v106 = MEMORY[0x277D84F90];
  sub_218C34D90(0, v49 & ~(v49 >> 63), 0);
  v51 = v106;
  result = sub_219BF5DF4();
  if ((v50 & 0x8000000000000000) == 0)
  {
    v102 = v104 + 32;
    v103 = (v104 + 16);
    v52 = v82;
    v53 = v83;
    do
    {
      v54 = sub_219BF5EC4();
      (*v103)(v53);
      v54(v105, 0);
      v106 = v51;
      v56 = *(v51 + 16);
      v55 = *(v51 + 24);
      if (v56 >= v55 >> 1)
      {
        sub_218C34D90(v55 > 1, v56 + 1, 1);
        v51 = v106;
      }

      *(v51 + 16) = v56 + 1;
      (*(v104 + 32))(v51 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v56, v53, v52);
      sub_219BF5E94();
      --v50;
    }

    while (v50);
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t sub_218B277D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a1;
  sub_218954408();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v47 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BBC4(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BE14C4();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BE14A4();
  v49 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v45 = v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v42 - v19;
  MEMORY[0x28223BE20](v18);
  v46 = v42 - v21;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    v24 = OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDescriptor;
    swift_beginAccess();
    v25 = *(v23 + v24);
    if (v25)
    {
      v44 = a3;
      v26 = v25;
      sub_21999FD58(v14);
      v27 = [v26 identifier];
      v42[1] = a2;
      v28 = v7;
      v29 = v11;
      v30 = v15;
      v31 = v27;
      sub_219BF5414();
      v43 = v6;

      v32 = v30;
      v33 = v29;
      sub_219BE1484();

      v34 = v49;
      v35 = v46;
      (*(v49 + 32))(v46, v20, v32);
      v50 = *(v23 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_blueprintProvider);
      sub_218987644();
      sub_2186F1034(&qword_280EE54F0, sub_218987644);
      v36 = v47;
      sub_219BE7B94();

      sub_219BEE5E4();
      v37 = v43;
      sub_219BEB294();
      sub_218B588AC(v51);
      (*(v28 + 8))(v36, v37);
      sub_218954350();
      if ((*(*(v38 - 8) + 48))(v33, 1, v38) == 1)
      {
        (*(v34 + 8))(v35, v32);

        sub_218B58C44(v33, sub_21898BBC4);
        v39 = 1;
        a3 = v44;
      }

      else
      {
        sub_218B58C44(v33, sub_21898BBC4);
        (*(v34 + 16))(v45, v35, v32);
        a3 = v44;
        sub_219BDFE44();

        (*(v34 + 8))(v35, v32);
        v39 = 0;
      }
    }

    else
    {

      v39 = 1;
    }
  }

  else
  {
    v39 = 1;
  }

  v40 = sub_219BDFE54();
  return (*(*(v40 - 8) + 56))(a3, v39, 1, v40);
}

uint64_t sub_218B27CE8(uint64_t a1, void *a2)
{
  v70 = a1;
  v60 = sub_219BE9C04();
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v58 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_219BE1544();
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v57 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_219BDBD64();
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v51 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_219BE1524();
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v61 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_219BE9944();
  v8 = *(v69 - 8);
  v67 = *(v8 + 64);
  MEMORY[0x28223BE20](v69);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BDF074();
  v71 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v52 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v48 - v16;
  v64 = &v48 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v48 - v18;
  v20 = OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDescriptor;
  swift_beginAccess();
  v21 = *(v2 + v20);
  *(v2 + v20) = a2;
  v22 = v2;

  v65 = a2;
  sub_218B286F8(v19);
  v66 = *(v2 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_tracker);
  v23 = v69;
  (*(v8 + 16))(v10, v70, v69);
  v24 = *(v12 + 16);
  v68 = v19;
  v50 = v12 + 16;
  v49 = v24;
  v24(v17, v19, v11);
  v25 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v26 = (v67 + *(v12 + 80) + v25) & ~*(v12 + 80);
  v27 = (v13 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  v29 = v65;
  *(v28 + 16) = v65;
  (*(v8 + 32))(v28 + v25, v10, v23);
  v69 = v12;
  (*(v12 + 32))(v28 + v26, v64, v71);
  *(v28 + v27) = v22;
  v30 = v29;

  sub_219BDD154();

  sub_219BDD134();
  LODWORD(v28) = [objc_msgSend(v30 backingTag)];
  swift_unknownObjectRelease();
  if (v28)
  {
    v31 = v51;
    sub_219BDBD54();
    sub_219BDBD44();
    (*(v53 + 8))(v31, v54);
    (*(v55 + 104))(v57, *MEMORY[0x277D2F3B8], v56);
    v32 = v58;
    sub_219BE9934();
    v33 = (*(v59 + 88))(v32, v60);
    if (v33 == *MEMORY[0x277D6E830])
    {
      (*(v69 + 104))(v52, *MEMORY[0x277D2D868], v71);
    }

    else
    {
      if (v33 != *MEMORY[0x277D6E840] && v33 != *MEMORY[0x277D6E848] && v33 != *MEMORY[0x277D6E838])
      {
        result = sub_219BF7514();
        __break(1u);
        return result;
      }

      v49(v52, v68, v71);
    }

    v34 = v61;
    sub_219BE1514();
    sub_2186F1034(&qword_280EE7FE0, MEMORY[0x277D2F398]);
    v35 = v63;
    sub_219BDD1F4();
    (*(v62 + 8))(v34, v35);
    sub_219BDD134();
  }

  v36 = [objc_allocWithZone(type metadata accessor for FeedViewContext()) init];
  v37 = [objc_msgSend(v30 backingTag)];
  swift_unknownObjectRelease();
  v38 = &v36[OBJC_IVAR___TSFeedViewContext_feedTagType];
  swift_beginAccess();
  *v38 = v37;
  v38[8] = 0;
  v39 = sub_219BF6394();
  v40 = [v30 alternativeFeedDescriptor];
  if (v40)
  {
    v41 = v40;
    v42 = [v40 feedConfiguration];
  }

  else
  {
    v42 = [v30 feedConfiguration];
  }

  *&v74 = v39;
  *(&v74 + 1) = v36;
  v75 = MEMORY[0x277D84F90];
  LOBYTE(v76) = 0;
  *(&v76 + 1) = v42;
  v77 = 0u;
  v78 = 0u;
  v79 = -1;
  v43 = swift_allocObject();
  v44 = v77;
  *(v43 + 48) = v76;
  *(v43 + 64) = v44;
  *(v43 + 80) = v78;
  *(v43 + 96) = v79;
  v45 = v75;
  *(v43 + 16) = v74;
  *(v43 + 32) = v45;
  v73 = v43 | 0x2000000000000004;
  swift_unknownObjectRetain();
  v46 = v36;
  sub_218B5A004(&v74, v72);

  sub_219BE7884();

  sub_218B5A060(&v74);
  swift_unknownObjectRelease();

  (*(v69 + 8))(v68, v71);
}

uint64_t sub_218B286F8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_219BE15B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BDCD34();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDD184();
  sub_218747CC8(0, &unk_280E8C140, MEMORY[0x277CEAE60], MEMORY[0x277D84560]);
  sub_219BDD0A4();
  *(swift_allocObject() + 16) = xmmword_219C09BA0;
  (*(v3 + 104))(v5, *MEMORY[0x277D2F548], v2);
  sub_219BDD094();
  (*(v3 + 8))(v5, v2);
  v10 = sub_219BDCD14();

  (*(v7 + 8))(v9, v6);
  v11 = sub_219BDF074();
  v12 = MEMORY[0x277D2D820];
  if ((v10 & 1) == 0)
  {
    v12 = MEMORY[0x277D2D810];
  }

  return (*(*(v11 - 8) + 104))(a1, *v12, v11);
}

uint64_t sub_218B289C4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v163 = a5;
  v126 = a4;
  v156 = a3;
  v142 = sub_219BDF104();
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v140 = &v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_219BDF434();
  v138 = *(v139 - 8);
  v8 = MEMORY[0x28223BE20](v139);
  v119 = &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v158 = &v119 - v10;
  sub_218B5A0B4(0);
  MEMORY[0x28223BE20](v11 - 8);
  v135 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_219BE0754();
  v136 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v123 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B5A0E8(0);
  MEMORY[0x28223BE20](v14 - 8);
  v132 = &v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_219BDFD94();
  v133 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v122 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B5A11C(0);
  MEMORY[0x28223BE20](v17 - 8);
  v129 = &v119 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_219BDF654();
  v130 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v121 = &v119 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B5A150(0);
  MEMORY[0x28223BE20](v20 - 8);
  v125 = &v119 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_219BDF2F4();
  v127 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v120 = &v119 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21896FA3C();
  MEMORY[0x28223BE20](v23 - 8);
  v155 = &v119 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_219BDFA44();
  v159 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v165 = &v119 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_219BE9C04();
  v149 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v146 = &v119 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_219BDF074();
  v148 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v147 = &v119 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_219BE1544();
  v144 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v143 = &v119 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_219BE1524();
  v153 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v152 = &v119 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_219BE14C4();
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v119 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_219BE14A4();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v36 = &v119 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_219BE1444();
  v160 = *(v37 - 8);
  v38 = MEMORY[0x28223BE20](v37);
  v124 = &v119 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v41 = &v119 - v40;
  v42 = [a2 backingTag];
  sub_219BE1414();
  swift_unknownObjectRelease();
  sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260]);
  v157 = v41;
  v161 = v37;
  sub_219BDCCC4();
  sub_21999FD58(v32);
  v162 = a2;
  v43 = [a2 identifier];
  sub_219BF5414();

  sub_219BE1484();
  sub_2186F1034(&qword_280EE8010, MEMORY[0x277D2F280]);
  v167 = "feedDismissingManager";
  v44 = v143;
  v166 = a1;
  sub_219BDCCC4();
  (*(v34 + 8))(v36, v33);
  sub_219BE9924();
  (*(v144 + 104))(v44, *MEMORY[0x277D2F3B8], v145);
  v45 = v146;
  sub_219BE9934();
  v46 = (*(v149 + 88))(v45, v151);
  if (v46 == *MEMORY[0x277D6E830])
  {
    (*(v148 + 104))(v147, *MEMORY[0x277D2D868], v150);
  }

  else
  {
    if (v46 != *MEMORY[0x277D6E840] && v46 != *MEMORY[0x277D6E848] && v46 != *MEMORY[0x277D6E838])
    {
      result = sub_219BF7514();
      __break(1u);
      return result;
    }

    (*(v148 + 16))(v147, v126, v150);
  }

  v47 = v159;
  v48 = v155;
  v49 = v152;
  sub_219BE1514();
  sub_2186F1034(&qword_280EE7FE0, MEMORY[0x277D2F398]);
  v50 = v154;
  sub_219BDCCC4();
  (*(v153 + 8))(v49, v50);
  v51 = OBJC_IVAR____TtC7NewsUI214TagFeedTracker_urlReferralData;
  v52 = v163;
  swift_beginAccess();
  sub_218B5A2A4(v52 + v51, v48, sub_21896FA3C);
  v53 = v164;
  if ((*(v47 + 48))(v48, 1, v164) == 1)
  {
    sub_218B58C44(v48, sub_21896FA3C);
  }

  else
  {
    (*(v47 + 32))(v165, v48, v53);
    v54 = v125;
    sub_219BDFA24();
    v55 = v127;
    v56 = v128;
    if ((*(v127 + 48))(v54, 1, v128) == 1)
    {
      sub_218B58C44(v54, sub_218B5A150);
    }

    else
    {
      v57 = v120;
      (*(v55 + 32))(v120, v54, v56);
      sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
      v58 = sub_219BDCD44();
      v59 = *(v58 - 8);
      v60 = (*(v59 + 80) + 32) & ~*(v59 + 80);
      v61 = swift_allocObject();
      *(v61 + 16) = xmmword_219C09BA0;
      (*(v59 + 104))(v61 + v60, *MEMORY[0x277CEAD18], v58);
      sub_2186F1034(&qword_280EE8800, MEMORY[0x277D2D9E8]);
      sub_219BDCCC4();

      (*(v55 + 8))(v57, v56);
    }

    v62 = v134;
    v63 = v131;
    v64 = v130;
    v65 = v129;
    sub_219BDF9F4();
    if ((*(v64 + 48))(v65, 1, v63) == 1)
    {
      sub_218B58C44(v65, sub_218B5A11C);
    }

    else
    {
      v66 = v121;
      (*(v64 + 32))(v121, v65, v63);
      sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
      v67 = sub_219BDCD44();
      v68 = *(v67 - 8);
      v69 = (*(v68 + 80) + 32) & ~*(v68 + 80);
      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_219C09BA0;
      (*(v68 + 104))(v70 + v69, *MEMORY[0x277CEAD18], v67);
      sub_2186F1034(&qword_280EE8700, MEMORY[0x277D2DC88]);
      sub_219BDCCC4();

      (*(v64 + 8))(v66, v63);
    }

    v71 = v133;
    v72 = v132;
    v73 = v164;
    sub_219BDFA04();
    if ((*(v71 + 48))(v72, 1, v62) == 1)
    {
      sub_218B58C44(v72, sub_218B5A0E8);
    }

    else
    {
      v74 = v122;
      (*(v71 + 32))(v122, v72, v62);
      sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
      v75 = sub_219BDCD44();
      v76 = *(v75 - 8);
      v77 = (*(v76 + 80) + 32) & ~*(v76 + 80);
      v78 = swift_allocObject();
      *(v78 + 16) = xmmword_219C09BA0;
      (*(v76 + 104))(v78 + v77, *MEMORY[0x277CEAD18], v75);
      sub_2186F1034(&qword_280EE8550, MEMORY[0x277D2E0C8]);
      sub_219BDCCC4();

      (*(v71 + 8))(v74, v62);
    }

    v79 = v137;
    v80 = v136;
    v81 = v135;
    sub_219BDFA14();
    if ((*(v80 + 48))(v81, 1, v79) == 1)
    {
      sub_218B58C44(v81, sub_218B5A0B4);
    }

    else
    {
      v82 = v123;
      (*(v80 + 32))(v123, v81, v79);
      sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
      v83 = sub_219BDCD44();
      v84 = *(v83 - 8);
      v85 = (*(v84 + 80) + 32) & ~*(v84 + 80);
      v86 = swift_allocObject();
      *(v86 + 16) = xmmword_219C09BA0;
      (*(v84 + 104))(v86 + v85, *MEMORY[0x277CEAD18], v83);
      sub_2186F1034(&qword_280EE8308, MEMORY[0x277D2E770]);
      sub_219BDCCC4();

      (*(v80 + 8))(v82, v79);
    }

    sub_219BDFA34();
    v87 = v162;
    v88 = [objc_msgSend(v162 backingTag)];
    swift_unknownObjectRelease();
    v89 = sub_219BF5414();
    v91 = v90;

    if ([v87 backingTag])
    {
      swift_unknownObjectRetain();
      v92 = v124;
      sub_219BE1414();
      v93 = sub_219BE1434();
      v95 = v94;
      swift_unknownObjectRelease_n();
      (*(v160 + 8))(v92, v161);
      if ((v93 != v89 || v95 != v91) && (sub_219BF78F4() & 1) == 0)
      {
        v110 = v158;
        v172 = sub_219BDF3F4();
        v173 = v111;
        v170 = v89;
        v171 = v91;
        v168 = v93;
        v169 = v95;
        sub_2187F3BD4();
        sub_219BF7034();

        v112 = v119;
        sub_219BDF424();

        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v113 = sub_219BDCD44();
        v114 = *(v113 - 8);
        v115 = (*(v114 + 80) + 32) & ~*(v114 + 80);
        v116 = swift_allocObject();
        *(v116 + 16) = xmmword_219C09BA0;
        (*(v114 + 104))(v116 + v115, *MEMORY[0x277CEAD18], v113);
        sub_2186F1034(&qword_280EE87D0, MEMORY[0x277D2DA88]);
        v117 = v139;
        sub_219BDCCC4();

        v118 = *(v138 + 8);
        v118(v112, v117);
        v118(v110, v117);
        (*(v159 + 8))(v165, v164);
        goto LABEL_27;
      }

      v73 = v164;
      v47 = v159;
    }

    sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v96 = sub_219BDCD44();
    v97 = *(v96 - 8);
    v98 = (*(v97 + 80) + 32) & ~*(v97 + 80);
    v99 = swift_allocObject();
    *(v99 + 16) = xmmword_219C09BA0;
    (*(v97 + 104))(v99 + v98, *MEMORY[0x277CEAD18], v96);
    sub_2186F1034(&qword_280EE87D0, MEMORY[0x277D2DA88]);
    v100 = v158;
    v101 = v139;
    sub_219BDCCC4();

    (*(v138 + 8))(v100, v101);
    (*(v47 + 8))(v165, v73);
  }

LABEL_27:
  v102 = [v162 backingTag];
  v174 = &unk_282B7DDA8;
  if (swift_dynamicCastObjCProtocolConditional())
  {
    v103 = v140;
    sub_219BE01F4();
    sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v104 = sub_219BDCD44();
    v105 = *(v104 - 8);
    v106 = (*(v105 + 80) + 32) & ~*(v105 + 80);
    v107 = swift_allocObject();
    *(v107 + 16) = xmmword_219C09BA0;
    (*(v105 + 104))(v107 + v106, *MEMORY[0x277CEAD18], v104);
    sub_2186F1034(&unk_280EE8890, MEMORY[0x277D2D8B8]);
    v108 = v142;
    sub_219BDCCC4();
    swift_unknownObjectRelease();

    (*(v141 + 8))(v103, v108);
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return (*(v160 + 8))(v157, v161);
}

uint64_t sub_218B2A5A4(uint64_t a1)
{
  sub_218954408();
  v66 = *(v2 - 8);
  v67 = v2;
  MEMORY[0x28223BE20](v2);
  v64 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218747BDC(0);
  MEMORY[0x28223BE20](v4 - 8);
  v65 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BDC104();
  v68 = *(v6 - 8);
  v69 = v6;
  MEMORY[0x28223BE20](v6);
  v62 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B597DC(0);
  MEMORY[0x28223BE20](v8 - 8);
  v73 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BF1094();
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x28223BE20](v10);
  v70 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F7158();
  v74 = v12;
  v76 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v75 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TagFeedModel(0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v62 - v18;
  sub_21898BF70();
  v21 = v20;
  v22 = *(v20 - 8);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v63 = &v62 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v62 - v28;
  sub_218B5A32C(0, &qword_280EE47A8, MEMORY[0x277D6E1E0]);
  v31 = v30;
  v77 = a1;
  sub_219BE8BA4();
  sub_219BE5FC4();
  v32 = *(v22 + 8);
  v32(v29, v21);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2186F0DCC(0, &qword_280ED2960, type metadata accessor for TagFeedGapLocation, MEMORY[0x277D333C8]);
      v50 = *(v49 + 48);
      v51 = sub_219BF1584();
      (*(*(v51 - 8) + 8))(&v19[v50], v51);
      v33 = type metadata accessor for TagFeedGapLocation;
      goto LABEL_3;
    case 2u:
    case 3u:
    case 6u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xDu:
    case 0xEu:
      v33 = type metadata accessor for TagFeedModel;
      goto LABEL_3;
    case 4u:
      v42 = v75;
      v41 = v76;
      v43 = v74;
      (*(v76 + 32))(v75, v19, v74);
      v44 = v70;
      sub_219BF07D4();
      v19 = v73;
      sub_219BF1034();
      (*(v71 + 8))(v44, v72);
      v45 = sub_219BF3484();
      v46 = *(v45 - 8);
      if ((*(v46 + 48))(v19, 1, v45) == 1)
      {
        (*(v41 + 8))(v42, v43);
        v33 = sub_218B597DC;
LABEL_3:
        v34 = v33;
        v35 = v19;
        goto LABEL_4;
      }

      if ((*(v46 + 88))(v19, v45) == *MEMORY[0x277D33DF0])
      {
        (*(v46 + 8))(v19, v45);
        v52 = v64;
        MEMORY[0x21CEBF950](v31);
        v53 = v63;
        sub_219BE8BA4();
        v17 = v65;
        v54 = v67;
        sub_219BEB2F4();
        v32(v53, v21);
        (*(v66 + 8))(v52, v54);
        v56 = v68;
        v55 = v69;
        if ((*(v68 + 48))(v17, 1, v69) == 1)
        {
          (*(v76 + 8))(v75, v43);
          v57 = sub_218747BDC;
          goto LABEL_17;
        }

        v58 = v62;
        (*(v56 + 32))(v62, v17, v55);
        Strong = swift_unknownObjectWeakLoadStrong();
        v60 = v75;
        if (Strong)
        {
          v61 = Strong;
          if (swift_unknownObjectWeakLoadStrong())
          {
            sub_218B59904(v61);
            swift_unknownObjectRelease();
          }

          swift_unknownObjectRelease();
        }

        (*(v56 + 8))(v58, v55);
        result = (*(v76 + 8))(v60, v43);
      }

      else
      {
        (*(v41 + 8))(v42, v43);
        result = (*(v46 + 8))(v19, v45);
      }

      break;
    case 5u:
      sub_218B58C44(v19, type metadata accessor for TagFeedModel);
      sub_219BE8BA4();
      sub_219BE5FC4();
      v32(v25, v21);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v47 = sub_219BE5B64();
        swift_getObjectType();
        v78 = v47;
        sub_219BEB4E4();
      }

      else
      {
        v57 = type metadata accessor for TagFeedModel;
LABEL_17:
        v34 = v57;
        v35 = v17;
LABEL_4:
        result = sub_218B58C44(v35, v34);
      }

      break;
    case 7u:
      sub_2186F0DCC(0, &qword_280E90E78, sub_2186EAD48, sub_2186F0E54);
      v38 = *(v37 + 48);
      sub_2186F0E54();
      (*(*(v39 - 8) + 8))(&v19[v38], v39);
      sub_2186EAD48();
      return (*(*(v40 - 8) + 8))(v19, v40);
    default:

      sub_2186F0CC0();
      v34 = type metadata accessor for TagFeedGapLocation;
      v35 = &v19[*(v48 + 48)];
      goto LABEL_4;
  }

  return result;
}

unint64_t sub_218B2AF3C(uint64_t a1, void *a2)
{
  v5 = sub_219BE8F74();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = [a2 referringFeedItemIdentifier];
  if (v8)
  {
    v9 = v8;
    sub_219BF5414();
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  [a2 setReferringFeedItemIdentifier_];
  v25[1] = v2;
  (*(v6 + 16))(v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v12 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  (*(v6 + 32))(v13 + v12, v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v14 = a2;
  if (v11)
  {
    sub_219BDD1B4();
  }

  else
  {
    sub_219BDD154();
  }

  v15 = [objc_allocWithZone(type metadata accessor for FeedViewContext()) init];
  v16 = [objc_msgSend(a2 backingTag)];
  swift_unknownObjectRelease();
  v17 = &v15[OBJC_IVAR___TSFeedViewContext_feedTagType];
  swift_beginAccess();
  *v17 = v16;
  v17[8] = 0;
  v18 = [a2 backingChannel];
  if (!v18)
  {
    v18 = [a2 backingTag];
  }

  if ([swift_unknownObjectRetain() isPuzzleHub])
  {
    swift_unknownObjectRelease();
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    *(v19 + 24) = v15;
    *(v19 + 32) = MEMORY[0x277D84F90];
    *(v19 + 40) = 0;
    *(v19 + 48) = 0;
    v20 = 9;
  }

  else if ([v18 isFoodHub])
  {
    swift_unknownObjectRelease();
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    *(v19 + 24) = v15;
    *(v19 + 32) = MEMORY[0x277D84F90];
    *(v19 + 40) = 0;
    *(v19 + 48) = 0;
    v20 = 12;
  }

  else
  {
    v21 = [v18 isRecipeCatalog];
    swift_unknownObjectRelease();
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    *(v19 + 24) = v15;
    *(v19 + 32) = MEMORY[0x277D84F90];
    *(v19 + 40) = 0;
    *(v19 + 48) = 0;
    if (!v21)
    {
      *(v19 + 88) = 0;
      *(v19 + 72) = 0u;
      *(v19 + 56) = 0u;
      goto LABEL_16;
    }

    v20 = 13;
  }

  *(v19 + 56) = v20;
  *(v19 + 64) = 0u;
  *(v19 + 80) = 0u;
LABEL_16:
  *(v19 + 96) = -1;
  v22 = v19 | 0x2000000000000004;
  v25[2] = v19 | 0x2000000000000004;
  swift_unknownObjectRetain();
  v23 = v15;

  sub_219BE7864();

  swift_unknownObjectRelease();
  return sub_218932F9C(v22);
}

uint64_t sub_218B2B358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a3;
  v3 = sub_219BDBD34();
  v59 = *(v3 - 8);
  v60 = v3;
  MEMORY[0x28223BE20](v3);
  v58 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BE1574();
  v6 = *(v5 - 8);
  v53 = v5;
  v54 = v6;
  MEMORY[0x28223BE20](v5);
  v52 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BE9C04();
  v50 = *(v8 - 8);
  v51 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v49 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v48 = &v41 - v11;
  v12 = sub_219BDF244();
  v56 = *(v12 - 8);
  v57 = v12;
  MEMORY[0x28223BE20](v12);
  v55 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BE1444();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE17A4();
  sub_2186F1034(&qword_280EE7F30, MEMORY[0x277D2F910]);
  memset(v62, 0, 32);
  sub_219BDCCE4();
  sub_218B58C44(v62, sub_21880702C);
  sub_219BF6394();
  sub_219BE1414();
  swift_unknownObjectRelease();
  sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v19 = v18;
  v20 = sub_219BDCD44();
  v21 = *(v20 - 8);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v45 = *(v21 + 72);
  v47 = v19;
  v23 = swift_allocObject();
  v43 = xmmword_219C09BA0;
  *(v23 + 16) = xmmword_219C09BA0;
  v24 = *(v21 + 104);
  v44 = *MEMORY[0x277CEAD18];
  v42 = v24;
  v24(v23 + v22);
  sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260]);
  v46 = "feedDismissingManager";
  sub_219BDCCC4();

  v25 = v17;
  v26 = v51;
  v27 = v14;
  v28 = v49;
  (*(v15 + 8))(v25, v27);
  v29 = v50;
  v30 = v48;
  sub_219BE8F44();
  (*(v29 + 32))(v28, v30, v26);
  v31 = (*(v29 + 88))(v28, v26);
  if (v31 == *MEMORY[0x277D6E830])
  {
    (*(v54 + 104))(v52, *MEMORY[0x277D2F428], v53);
  }

  else
  {
    v32 = *(v54 + 104);
    if (v31 == *MEMORY[0x277D6E840] || v31 == *MEMORY[0x277D6E848] || v31 == *MEMORY[0x277D6E838])
    {
      v32(v52, *MEMORY[0x277D2F420], v53);
    }

    else
    {
      v32(v52, *MEMORY[0x277D2F430], v53);
      (*(v29 + 8))(v28, v26);
    }
  }

  v34 = v59;
  v33 = v60;
  v35 = v55;
  sub_219BDF234();
  v36 = swift_allocObject();
  *(v36 + 16) = v43;
  v42(v36 + v22, v44, v20);
  sub_2186F1034(&qword_280EE8810, MEMORY[0x277D2D9A8]);
  v37 = v57;
  sub_219BDCCC4();

  (*(v56 + 8))(v35, v37);
  sub_219BDF524();
  v38 = v58;
  sub_219BE8F64();
  sub_2186F1034(&qword_280EE8760, MEMORY[0x277D2DB18]);
  sub_219BDCC64();
  v39 = *(v34 + 8);
  v39(v38, v33);
  sub_219BE8F54();

  sub_219BDCC74();

  return (v39)(v38, v33);
}

uint64_t sub_218B2BB58()
{
  sub_219BE0014();
  sub_2186F1034(&unk_280EE84D0, MEMORY[0x277D2E2E0]);
  sub_219BDCC44();
  sub_219BDFE54();
  sub_2186F1034(&qword_280EE8540, MEMORY[0x277D2E1A8]);
  sub_219BDCC44();
  sub_219BE0714();
  sub_2186F1034(&qword_280EE8338, MEMORY[0x277D2E728]);
  sub_219BDCC44();
  sub_219BDF434();
  sub_2186F1034(&qword_280EE87D0, MEMORY[0x277D2DA88]);
  sub_219BDCC44();
  sub_219BDF2F4();
  sub_2186F1034(&qword_280EE8800, MEMORY[0x277D2D9E8]);
  sub_219BDCC44();
  sub_219BDF654();
  sub_2186F1034(&qword_280EE8700, MEMORY[0x277D2DC88]);
  sub_219BDCC44();
  sub_219BDF034();
  sub_2186F1034(&unk_280EE88E0, MEMORY[0x277D2D7D8]);
  return sub_219BDCC44();
}

void sub_218B2BDC4(unint64_t a1)
{
  v2 = sub_219BF0B74();
  v159 = *(v2 - 8);
  v160 = v2;
  MEMORY[0x28223BE20](v2);
  v158 = v108 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F1164();
  v156 = *(v4 - 8);
  v157 = v4;
  MEMORY[0x28223BE20](v4);
  v155 = v108 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_219BDBD34();
  v116 = *(v117 - 8);
  v6 = MEMORY[0x28223BE20](v117);
  v115 = v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v114 = v108 - v8;
  v9 = sub_219BF0AC4();
  v153 = *(v9 - 8);
  v154 = v9;
  MEMORY[0x28223BE20](v9);
  v152 = v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FB04C();
  v150 = *(v11 - 8);
  v151 = v11;
  MEMORY[0x28223BE20](v11);
  v149 = v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_219BEDAE4();
  v147 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v146 = v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FAF54();
  v145 = v14;
  v144 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v143 = v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_219BF07A4();
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v140 = v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F7240();
  v139 = v17;
  v138 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v137 = v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B5A30C(0);
  v20 = v19;
  v110 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v108[1] = v21;
  v109 = v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_219BEBF14();
  v112 = *(v113 - 8);
  v22 = MEMORY[0x28223BE20](v113);
  v111 = v108 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108[0] = v23;
  MEMORY[0x28223BE20](v22);
  v118 = v108 - v24;
  v136 = sub_219BEC504();
  v135 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v134 = v108 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAD48();
  v161 = v26;
  v164 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v163 = v108 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_219BF1094();
  v132 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v131 = v108 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F7158();
  v130 = v29;
  v129 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v128 = v108 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_219BF04A4();
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v125 = v108 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F0F3C();
  v124 = v32;
  v123 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v122 = v108 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_219BF0F34();
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v119 = v108 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F0E54();
  v165 = *(v35 - 8);
  v166 = v35;
  MEMORY[0x28223BE20](v35);
  v37 = v108 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for TagFeedModel(0);
  v39 = MEMORY[0x28223BE20](v38);
  v41 = v108 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v43 = v108 - v42;
  sub_21898BF70();
  v45 = v44;
  v46 = *(v44 - 8);
  v47 = MEMORY[0x28223BE20](v44);
  v49 = v108 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v51 = v108 - v50;
  v162 = v20;
  v168 = a1;
  sub_219BE7564();
  sub_219BE5FC4();
  v52 = *(v46 + 8);
  v53 = v51;
  v54 = v43;
  v52(v53, v45);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2186F0DCC(0, &qword_280ED2960, type metadata accessor for TagFeedGapLocation, MEMORY[0x277D333C8]);
      v81 = *(v80 + 48);
      v82 = sub_219BF1584();
      (*(*(v82 - 8) + 8))(&v43[v81], v82);
      v55 = type metadata accessor for TagFeedGapLocation;
      goto LABEL_3;
    case 2u:
      v75 = v165;
      v74 = v166;
      (*(v165 + 32))(v37, v54, v166);
      v76 = v119;
      sub_219BF07D4();
      sub_218B2D1DC(v168, v76);
      (*(v120 + 8))(v76, v121);
      (*(v75 + 8))(v37, v74);
      return;
    case 3u:
      v58 = v123;
      v59 = v122;
      v77 = v43;
      v61 = v124;
      (*(v123 + 32))(v122, v77, v124);
      v78 = v125;
      sub_219BF07D4();
      sub_218B2DAD8(v168, v78);
      v67 = *(v126 + 8);
      v68 = v78;
      v69 = &v159;
      goto LABEL_11;
    case 4u:
      v58 = v129;
      v59 = v128;
      v70 = v43;
      v61 = v130;
      (*(v129 + 32))(v128, v70, v130);
      v71 = v131;
      sub_219BF07D4();
      sub_218B2E678(v168, v71);
      v67 = *(v132 + 8);
      v68 = v71;
      v69 = &v165;
      goto LABEL_11;
    case 5u:
      sub_218B58C44(v43, type metadata accessor for TagFeedModel);
      sub_219BE7564();
      sub_219BE5FC4();
      v52(v49, v45);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v83 = sub_219BE5B64();
        swift_getObjectType();
        v169 = v83;
        v84 = v114;
        sub_219BE75A4();
        v85 = v115;
        sub_219BE7574();
        sub_219BEB4C4();

        v86 = *(v116 + 8);
        v87 = v117;
        v86(v85, v117);
        v86(v84, v87);
      }

      else
      {
        v56 = type metadata accessor for TagFeedModel;
        v57 = v41;
LABEL_4:
        sub_218B58C44(v57, v56);
      }

      return;
    case 6u:
    case 8u:
    case 0xCu:
    case 0xDu:
      v55 = type metadata accessor for TagFeedModel;
LABEL_3:
      v56 = v55;
      v57 = v43;
      goto LABEL_4;
    case 7u:
      v90 = v163;
      v89 = v164;
      v91 = v161;
      (*(v164 + 32))(v163, v43, v161);
      v92 = v134;
      sub_219BF07D4();
      v93 = v135;
      v94 = v136;
      if ((*(v135 + 88))(v92, v136) == *MEMORY[0x277D2D6A8])
      {
        v160 = v54;
        (*(v93 + 96))(v92, v94);
        v95 = v112;
        v96 = *(v112 + 32);
        v97 = v118;
        v98 = v92;
        v99 = v113;
        v96(v118, v98, v113);
        v100 = v167;
        __swift_project_boxed_opaque_existential_1((v167 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_trackerConfiguration), *(v167 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_trackerConfiguration + 24));
        if (sub_219BE0BD4())
        {
          v167 = *(v100 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_tracker);
          (*(v95 + 16))(v111, v97, v99);
          v101 = v110;
          v102 = v109;
          v103 = v162;
          (*(v110 + 16))(v109, v168, v162);
          v104 = (*(v95 + 80) + 16) & ~*(v95 + 80);
          v105 = (v108[0] + *(v101 + 80) + v104) & ~*(v101 + 80);
          v106 = swift_allocObject();
          v96((v106 + v104), v111, v99);
          (*(v101 + 32))(v106 + v105, v102, v103);
          sub_219BDD154();

          (*(v95 + 8))(v118, v99);
          (*(v164 + 8))(v163, v161);
        }

        else
        {
          (*(v95 + 8))(v97, v99);
          (*(v164 + 8))(v163, v91);
        }

        v54 = v160;
      }

      else
      {
        (*(v89 + 8))(v90, v91);
        (*(v93 + 8))(v92, v94);
      }

      sub_2186F0DCC(0, &qword_280E90E78, sub_2186EAD48, sub_2186F0E54);
      (*(v165 + 8))(&v54[*(v107 + 48)], v166);
      return;
    case 9u:
      v58 = v144;
      v59 = v143;
      v65 = v43;
      v61 = v145;
      (*(v144 + 32))(v143, v65, v145);
      v66 = v146;
      sub_219BF07D4();
      sub_218B2FB78(v168, v66);
      v67 = *(v147 + 8);
      v68 = v66;
      v69 = &v171;
      goto LABEL_11;
    case 0xAu:
      v58 = v138;
      v59 = v137;
      v72 = v43;
      v61 = v139;
      (*(v138 + 32))(v137, v72, v139);
      v73 = v140;
      sub_219BF07D4();
      sub_218B2F14C(v168, v73);
      v67 = *(v141 + 8);
      v68 = v73;
      v69 = &v170;
LABEL_11:
      v63 = *(v69 - 32);
      goto LABEL_18;
    case 0xBu:
      v59 = v149;
      v58 = v150;
      v88 = v43;
      v61 = v151;
      (*(v150 + 32))(v149, v88, v151);
      v62 = v152;
      sub_219BF07D4();
      sub_218B306DC(v168, v62);
      v64 = v153;
      v63 = v154;
      goto LABEL_17;
    case 0xEu:
      v59 = v155;
      v58 = v156;
      v60 = v43;
      v61 = v157;
      (*(v156 + 32))(v155, v60, v157);
      v62 = v158;
      sub_219BF07D4();
      sub_218B31544(v168, v62);
      v64 = v159;
      v63 = v160;
LABEL_17:
      v67 = *(v64 + 8);
      v68 = v62;
LABEL_18:
      v67(v68, v63);
      (*(v58 + 8))(v59, v61);
      return;
    default:

      sub_2186F0CC0();
      v56 = type metadata accessor for TagFeedGapLocation;
      v57 = &v43[*(v79 + 48)];
      goto LABEL_4;
  }
}

uint64_t sub_218B2D1DC(uint64_t a1, uint64_t a2)
{
  v74 = a2;
  sub_218B5A30C(0);
  v4 = v3;
  v82 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v77 = v5;
  v81 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_219BF0F34();
  v78 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v73 = v6;
  v87 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BDBD34();
  v71 = *(v7 - 8);
  v72 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v70 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v69 = &v63 - v10;
  v79 = sub_219BDB184();
  v76 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v86 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D8C(0);
  MEMORY[0x28223BE20](v12 - 8);
  v85 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BF70();
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954408();
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v23 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BBC4(0);
  v67 = *(v24 - 8);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v84 = &v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v63 - v28;
  v68 = v30;
  MEMORY[0x28223BE20](v27);
  v32 = &v63 - v31;
  sub_219BE7594();
  v83 = v4;
  v75 = a1;
  sub_219BE7564();
  sub_219BE5F84();
  (*(v16 + 8))(v18, v15);
  sub_219BEB244();

  (*(v21 + 8))(v23, v20);
  v33 = v32;
  sub_218B5A2A4(v32, v29, sub_21898BBC4);
  sub_218954350();
  v35 = v34;
  v36 = *(v34 - 8);
  if ((*(v36 + 48))(v29, 1, v34) == 1)
  {
    sub_218B58C44(v29, sub_21898BBC4);
    v37 = sub_219BE16E4();
    (*(*(v37 - 8) + 56))(v85, 1, 1, v37);
  }

  else
  {
    sub_219BE6934();
    v38 = v89;
    (*(v36 + 8))(v29, v35);
    v39 = v85;
    sub_2194420E8(v38, v85);

    v40 = sub_219BE16E4();
    (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
  }

  v66 = *(v88 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_headlineExposureTracker + 24);
  v64 = *(v88 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_headlineExposureTracker + 32);
  v65 = __swift_project_boxed_opaque_existential_1((v88 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_headlineExposureTracker), v66);
  v41 = v69;
  v42 = v83;
  v43 = v75;
  sub_219BE75A4();
  v44 = v70;
  sub_219BE7574();
  sub_219BDB104();
  v45 = *(v71 + 8);
  v46 = v44;
  v47 = v72;
  v45(v46, v72);
  v45(v41, v47);
  v48 = v74;
  v72 = sub_219BF0F14();
  v49 = v78;
  v50 = v80;
  (*(v78 + 16))(v87, v48, v80);
  v52 = v81;
  v51 = v82;
  (*(v82 + 16))(v81, v43, v42);
  v63 = v33;
  sub_218B5A2A4(v33, v84, sub_21898BBC4);
  v53 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v54 = (v73 + *(v51 + 80) + v53) & ~*(v51 + 80);
  v55 = (v77 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = (*(v67 + 80) + v55 + 8) & ~*(v67 + 80);
  v57 = swift_allocObject();
  (*(v49 + 32))(v57 + v53, v87, v50);
  (*(v51 + 32))(v57 + v54, v52, v42);
  *(v57 + v55) = v88;
  sub_218B5A680(v84, v57 + v56, sub_21898BBC4);
  v58 = v64;
  v59 = *(v64 + 32);

  v60 = v85;
  v61 = v86;
  v59(v86, v85, v72, sub_218B5A6E8, v57, v66, v58);
  swift_unknownObjectRelease();

  (*(v76 + 8))(v61, v79);
  sub_218B58C44(v60, sub_218B58D8C);
  return sub_218B58C44(v63, sub_21898BBC4);
}

uint64_t sub_218B2DAD8(uint64_t a1, uint64_t a2)
{
  v92 = a2;
  sub_218B5A30C(0);
  v4 = v3;
  v96 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v95 = v5;
  v105 = v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_219BF04A4();
  v94 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v91 = v6;
  v102 = v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59134(0);
  v89 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v100 = v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = v9;
  MEMORY[0x28223BE20](v8);
  v104 = v78 - v10;
  v81 = sub_219BE1444();
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v79 = v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58900(0);
  MEMORY[0x28223BE20](v12 - 8);
  v83 = v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_219BE16D4();
  v93 = *(v99 - 8);
  v14 = MEMORY[0x28223BE20](v99);
  v98 = v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = v15;
  MEMORY[0x28223BE20](v14);
  v108 = v78 - v16;
  sub_21898BF70();
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v21 = v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954408();
  v23 = v22;
  v24 = *(v22 - 8);
  v25 = MEMORY[0x28223BE20](v22);
  v82 = v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = v78 - v27;
  sub_21898BBC4(0);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = v78 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954350();
  v33 = v32;
  v107 = *(v32 - 8);
  v34 = MEMORY[0x28223BE20](v32);
  v97 = v78 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = v35;
  MEMORY[0x28223BE20](v34);
  v106 = v78 - v36;
  sub_219BE7594();
  v109 = v4;
  v101 = a1;
  sub_219BE7564();
  sub_219BE5F84();
  (*(v19 + 8))(v21, v18);
  sub_219BEB244();
  v37 = v107;

  v38 = *(v24 + 8);
  v84 = v24 + 8;
  v38(v28, v23);
  if ((*(v37 + 48))(v31, 1, v33) == 1)
  {
    return sub_218B58C44(v31, sub_21898BBC4);
  }

  v40 = *(v37 + 32);
  v41 = v106;
  v87 = v33;
  v78[1] = v37 + 32;
  v78[0] = v40;
  v40(v106, v31, v33);
  v42 = v85;
  v43 = sub_218B326E4();
  v44 = v82;
  sub_219BE7594();
  v45 = sub_219BE97D4();
  v46 = v83;
  (*(*(v45 - 8) + 56))(v83, 1, 1, v45);
  if (v43)
  {
    swift_unknownObjectRetain();
    v47 = v44;
    v48 = v79;
    sub_219BE1414();
    v49 = sub_219BE1434();
    v51 = v50;
    swift_unknownObjectRelease();
    v52 = v48;
    v44 = v47;
    (*(v80 + 8))(v52, v81);
  }

  else
  {
    v49 = 0;
    v51 = 0;
  }

  v53 = v92;
  sub_21968E4D8(v41, v46, v49, v51, v108);

  sub_218B58C44(v46, sub_218B58900);
  v38(v44, v23);
  sub_218718690(v42 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDismissingManager, &v110);
  v54 = v111;
  v55 = __swift_project_boxed_opaque_existential_1(&v110, v111);
  v56 = [sub_219BF0404() dismissingIdentifier];
  v57 = swift_unknownObjectRelease();
  v78[2] = v43;
  if (v56)
  {
    v58 = sub_219BF5414();
    v60 = v59;
  }

  else
  {
    v58 = 0;
    v60 = 0;
  }

  MEMORY[0x28223BE20](v57);
  v62 = v78 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v63 + 16))(v62, v55, v54);
  v64 = v104;
  sub_218A75968(v58, v60, v62, v54, v104);
  __swift_destroy_boxed_opaque_existential_1(&v110);
  v92 = *(v42 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_tracker);
  v65 = v107;
  (*(v107 + 16))(v97, v106, v87);
  v66 = v94;
  (*(v94 + 16))(v102, v53, v103);
  sub_218B5A2A4(v64, v100, sub_218B59134);
  v67 = v93;
  (*(v93 + 16))(v98, v108, v99);
  v68 = v96;
  (*(v96 + 16))(v105, v101, v109);
  v69 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  v70 = (v86 + *(v66 + 80) + v69) & ~*(v66 + 80);
  v71 = (v91 + *(v89 + 80) + v70) & ~*(v89 + 80);
  v72 = (v90 + *(v67 + 80) + v71) & ~*(v67 + 80);
  v73 = (v88 + *(v68 + 80) + v72) & ~*(v68 + 80);
  v74 = swift_allocObject();
  v75 = v74 + v69;
  v76 = v87;
  (v78[0])(v75, v97, v87);
  (*(v66 + 32))(v74 + v70, v102, v103);
  sub_218B5A680(v100, v74 + v71, sub_218B59134);
  v77 = v99;
  (*(v67 + 32))(v74 + v72, v98, v99);
  (*(v68 + 32))(v74 + v73, v105, v109);
  sub_219BDD154();

  swift_unknownObjectRelease();
  sub_218B58C44(v104, sub_218B59134);
  (*(v67 + 8))(v108, v77);
  return (*(v65 + 8))(v106, v76);
}

uint64_t sub_218B2E678(uint64_t a1, uint64_t a2)
{
  v100 = a2;
  v111 = a1;
  sub_218B5A30C(0);
  v3 = v2;
  v104 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v101 = v4;
  v110 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BF1094();
  v102 = *(v5 - 8);
  v103 = v5;
  MEMORY[0x28223BE20](v5);
  v99 = v6;
  v108 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59134(0);
  v97 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v107 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = v9;
  MEMORY[0x28223BE20](v8);
  v109 = &v79 - v10;
  v82 = sub_219BE1444();
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v80 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58900(0);
  MEMORY[0x28223BE20](v12 - 8);
  v90 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v14);
  v91 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BBC4(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954350();
  v92 = v19;
  v105 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v93 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BF70();
  v22 = v21;
  v23 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v25 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954408();
  v27 = v26;
  v28 = *(v26 - 8);
  v29 = MEMORY[0x28223BE20](v26);
  v83 = &v79 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v79 - v31;
  v96 = swift_allocBox();
  v34 = v33;
  v35 = sub_219BE16D4();
  v36 = *(v35 - 8);
  v37 = *(v36 + 56);
  v87 = v34;
  v86 = v35;
  v85 = v37;
  v84 = v36 + 56;
  (v37)(v34, 1, 1);
  v94 = swift_allocBox();
  v39 = v38;
  sub_219BE7594();
  v106 = v3;
  sub_219BE7564();
  sub_219BE5F84();
  v40 = v25;
  v41 = v105;
  (*(v23 + 8))(v40, v22);
  sub_219BEB244();

  v42 = *(v28 + 8);
  v89 = v27;
  v43 = v27;
  v44 = v92;
  v88 = v28 + 8;
  v42(v32, v43);
  sub_218B5A2A4(v39, v18, sub_21898BBC4);
  if ((*(v41 + 48))(v18, 1, v44) == 1)
  {
    sub_218B58C44(v18, sub_21898BBC4);
    v45 = v95;
  }

  else
  {
    (*(v41 + 32))(v93, v18, v44);
    v45 = v95;
    v46 = sub_218B326E4();
    v47 = v83;
    sub_219BE7594();
    v48 = sub_219BE97D4();
    v49 = v90;
    (*(*(v48 - 8) + 56))(v90, 1, 1, v48);
    v50 = v44;
    if (v46)
    {
      swift_unknownObjectRetain();
      v51 = v80;
      sub_219BE1414();
      v52 = sub_219BE1434();
      v54 = v53;
      swift_unknownObjectRelease();
      (*(v81 + 8))(v51, v82);
    }

    else
    {
      v52 = 0;
      v54 = 0;
    }

    v55 = v91;
    v56 = v93;
    sub_21968E4D8(v93, v49, v52, v54, v91);
    swift_unknownObjectRelease();

    sub_218B58C44(v49, sub_218B58900);
    v42(v47, v89);
    (*(v105 + 8))(v56, v50);
    v85(v55, 0, 1, v86);
    sub_218B58ECC(v55, v87);
  }

  v57 = *(v45 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDismissingManager + 24);
  v58 = __swift_project_boxed_opaque_existential_1((v45 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDismissingManager), v57);
  v59 = v100;
  v60 = sub_219BF1024();
  v62 = v61;
  MEMORY[0x28223BE20](v60);
  v64 = &v79 - v63;
  (*(v65 + 16))(&v79 - v63, v58, v57);
  v66 = v109;
  sub_218A75968(v60, v62, v64, v57, v109);
  v105 = *(v45 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_tracker);
  v67 = v102;
  v68 = v59;
  v69 = v103;
  (*(v102 + 16))(v108, v68, v103);
  v70 = v104;
  v71 = v106;
  (*(v104 + 16))(v110, v111, v106);
  sub_218B5A2A4(v66, v107, sub_218B59134);
  v72 = (*(v67 + 80) + 16) & ~*(v67 + 80);
  v73 = (v99 + *(v70 + 80) + v72) & ~*(v70 + 80);
  v74 = (v101 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
  v75 = (v74 + 15) & 0xFFFFFFFFFFFFFFF8;
  v76 = (*(v97 + 80) + v75 + 8) & ~*(v97 + 80);
  v77 = swift_allocObject();
  (*(v67 + 32))(v77 + v72, v108, v69);
  (*(v70 + 32))(v77 + v73, v110, v71);
  *(v77 + v74) = v94;
  *(v77 + v75) = v96;
  sub_218B5A680(v107, v77 + v76, sub_218B59134);

  sub_219BDD154();

  sub_218B58C44(v109, sub_218B59134);
}

uint64_t sub_218B2F14C(uint64_t a1, uint64_t a2)
{
  v91 = a2;
  v3 = sub_219BF07A4();
  v94 = *(v3 - 8);
  v95 = v3;
  MEMORY[0x28223BE20](v3);
  v92 = v4;
  v103 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B5A30C(0);
  v6 = v5;
  v93 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v90 = v7;
  v102 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_219BE1444();
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v77 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58900(0);
  MEMORY[0x28223BE20](v9 - 8);
  v83 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  v101 = v11;
  MEMORY[0x28223BE20](v11);
  v84 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954350();
  v14 = *(v13 - 8);
  v96 = v13;
  v97 = v14;
  MEMORY[0x28223BE20](v13);
  v80 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BF70();
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v20 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954408();
  v22 = v21;
  v23 = *(v21 - 8);
  v24 = MEMORY[0x28223BE20](v21);
  v85 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v73 - v26;
  sub_21898BBC4(0);
  v87 = *(v28 - 8);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v99 = &v73 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v73 - v32;
  v86 = v34;
  MEMORY[0x28223BE20](v31);
  v36 = &v73 - v35;
  sub_219BE7594();
  v98 = v6;
  v89 = a1;
  sub_219BE7564();
  sub_219BE5F84();
  (*(v18 + 8))(v20, v17);
  sub_219BEB244();
  v37 = v97;

  v38 = *(v23 + 8);
  v39 = v27;
  v40 = v96;
  v82 = v22;
  v81 = v23 + 8;
  v38(v39, v22);
  v88 = swift_allocBox();
  v42 = v41;
  v43 = sub_219BE16D4();
  v44 = *(*(v43 - 8) + 56);
  v44(v42, 1, 1, v43);
  v101 = v36;
  sub_218B5A2A4(v36, v33, sub_21898BBC4);
  if ((*(v37 + 48))(v33, 1, v40) == 1)
  {
    sub_218B58C44(v33, sub_21898BBC4);
    v45 = v100;
    v46 = v89;
  }

  else
  {
    v74 = v44;
    v75 = v38;
    v76 = v42;
    v47 = v80;
    (*(v37 + 32))(v80, v33, v40);
    v46 = v89;
    sub_219BE7594();
    v48 = sub_219BE97D4();
    v49 = v83;
    (*(*(v48 - 8) + 56))(v83, 1, 1, v48);
    v50 = v47;
    v45 = v100;
    if (sub_218B326E4())
    {
      v51 = v77;
      sub_219BE1414();
      v52 = sub_219BE1434();
      v54 = v53;
      swift_unknownObjectRelease();
      (*(v78 + 8))(v51, v79);
    }

    else
    {
      v52 = 0;
      v54 = 0;
    }

    v56 = v84;
    v55 = v85;
    sub_21968E4D8(v50, v49, v52, v54, v84);

    sub_218B58C44(v49, sub_218B58900);
    v75(v55, v82);
    (*(v97 + 8))(v50, v96);
    v74(v56, 0, 1, v43);
    sub_218B58ECC(v56, v76);
  }

  __swift_project_boxed_opaque_existential_1((v45 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_contentAvailabilityValidator), *(v45 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_contentAvailabilityValidator + 24));
  v57 = v91;
  v58 = sub_219BF06B4();
  v59 = v45;
  v60 = [v58 identifier];

  sub_219BF5414();
  LODWORD(v96) = sub_219BF4774();

  v97 = *(v59 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_tracker);
  sub_218B5A2A4(v101, v99, sub_21898BBC4);
  v61 = v93;
  v62 = v46;
  v63 = v98;
  (*(v93 + 16))(v102, v62, v98);
  v64 = v94;
  v65 = v95;
  (*(v94 + 16))(v103, v57, v95);
  v66 = (*(v87 + 80) + 16) & ~*(v87 + 80);
  v67 = (v86 + *(v61 + 80) + v66) & ~*(v61 + 80);
  v68 = (v90 + *(v64 + 80) + v67) & ~*(v64 + 80);
  v69 = (v92 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
  v70 = swift_allocObject();
  sub_218B5A680(v99, v70 + v66, sub_21898BBC4);
  (*(v61 + 32))(v70 + v67, v102, v63);
  (*(v64 + 32))(v70 + v68, v103, v65);
  *(v70 + v69) = v88;
  v71 = v70 + ((v69 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v71 = v100;
  *(v71 + 8) = v96 & 1;

  sub_219BDD154();

  sub_218B58C44(v101, sub_21898BBC4);
}

uint64_t sub_218B2FB78(uint64_t a1, uint64_t a2)
{
  v102 = a2;
  sub_218B5A30C(0);
  v4 = v3;
  v106 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v103 = v5;
  v116 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BEDAE4();
  v104 = *(v6 - 8);
  v105 = v6;
  MEMORY[0x28223BE20](v6);
  v101 = v7;
  v114 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59134(0);
  v99 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v115 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = v10;
  MEMORY[0x28223BE20](v9);
  v113 = &v84 - v11;
  v87 = sub_219BE1444();
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v85 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58900(0);
  MEMORY[0x28223BE20](v13 - 8);
  v92 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  v112 = v15;
  MEMORY[0x28223BE20](v15);
  v93 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954350();
  v18 = *(v17 - 8);
  v107 = v17;
  v108 = v18;
  MEMORY[0x28223BE20](v17);
  v89 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BF70();
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v24 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954408();
  v26 = v25;
  v27 = *(v25 - 8);
  v28 = MEMORY[0x28223BE20](v25);
  v94 = &v84 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v84 - v30;
  sub_21898BBC4(0);
  v95 = *(v32 - 8);
  v33 = MEMORY[0x28223BE20](v32 - 8);
  v111 = &v84 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v84 - v36;
  v96 = v38;
  MEMORY[0x28223BE20](v35);
  v40 = &v84 - v39;
  sub_219BE7594();
  v109 = a1;
  v110 = v4;
  sub_219BE7564();
  sub_219BE5F84();
  (*(v22 + 8))(v24, v21);
  sub_219BEB244();
  v41 = v107;

  v42 = *(v27 + 8);
  v43 = v31;
  v44 = v108;
  v91 = v26;
  v90 = v27 + 8;
  v88 = v42;
  v42(v43, v26);
  v97 = swift_allocBox();
  v46 = v45;
  v47 = sub_219BE16D4();
  v48 = *(*(v47 - 8) + 56);
  v48(v46, 1, 1, v47);
  v112 = v40;
  sub_218B5A2A4(v40, v37, sub_21898BBC4);
  if ((*(v44 + 48))(v37, 1, v41) == 1)
  {
    sub_218B58C44(v37, sub_21898BBC4);
    v49 = v98;
  }

  else
  {
    v84 = v46;
    v50 = *(v44 + 32);
    v51 = v89;
    v50(v89, v37, v41);
    sub_219BE7594();
    v52 = sub_219BE97D4();
    v53 = v92;
    (*(*(v52 - 8) + 56))(v92, 1, 1, v52);
    v54 = v51;
    v49 = v98;
    if (sub_218B326E4())
    {
      v55 = v85;
      sub_219BE1414();
      v56 = sub_219BE1434();
      v58 = v57;
      swift_unknownObjectRelease();
      (*(v86 + 8))(v55, v87);
    }

    else
    {
      v56 = 0;
      v58 = 0;
    }

    v59 = v93;
    v60 = v94;
    sub_21968E4D8(v54, v53, v56, v58, v93);

    sub_218B58C44(v53, sub_218B58900);
    v88(v60, v91);
    (*(v108 + 8))(v54, v107);
    v48(v59, 0, 1, v47);
    sub_218B58ECC(v59, v84);
  }

  v61 = *(v49 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDismissingManager + 24);
  v62 = __swift_project_boxed_opaque_existential_1((v49 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDismissingManager), v61);
  v63 = v49;
  v64 = v102;
  v65 = sub_219BEDAB4();
  v67 = v66;
  MEMORY[0x28223BE20](v65);
  v69 = &v84 - v68;
  (*(v70 + 16))(&v84 - v68, v62, v61);
  v71 = v113;
  sub_218A75968(v65, v67, v69, v61, v113);
  v108 = *(v63 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_tracker);
  v72 = v104;
  v73 = v64;
  v74 = v105;
  (*(v104 + 16))(v114, v73, v105);
  v75 = v106;
  v76 = v110;
  (*(v106 + 16))(v116, v109, v110);
  sub_218B5A2A4(v112, v111, sub_21898BBC4);
  sub_218B5A2A4(v71, v115, sub_218B59134);
  v77 = (*(v72 + 80) + 16) & ~*(v72 + 80);
  v78 = (v101 + *(v75 + 80) + v77) & ~*(v75 + 80);
  v79 = (v103 + *(v95 + 80) + v78) & ~*(v95 + 80);
  v80 = (v96 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = (*(v99 + 80) + v80 + 8) & ~*(v99 + 80);
  v82 = swift_allocObject();
  (*(v72 + 32))(v82 + v77, v114, v74);
  (*(v75 + 32))(v82 + v78, v116, v76);
  sub_218B5A680(v111, v82 + v79, sub_21898BBC4);
  *(v82 + v80) = v97;
  sub_218B5A680(v115, v82 + v81, sub_218B59134);

  sub_219BDD154();

  sub_218B58C44(v113, sub_218B59134);
  sub_218B58C44(v112, sub_21898BBC4);
}

uint64_t sub_218B306DC(unint64_t a1, uint64_t a2)
{
  v111 = a2;
  sub_218B5A30C(0);
  v4 = v3;
  v116 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v113 = v5;
  v128 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_219BF0AC4();
  v115 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v110 = v6;
  v124 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59134(0);
  v108 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v122 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = v9;
  MEMORY[0x28223BE20](v8);
  v126 = &v91 - v10;
  v125 = sub_219BDF8A4();
  v114 = *(v125 - 8);
  v11 = MEMORY[0x28223BE20](v125);
  v121 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = v12;
  MEMORY[0x28223BE20](v11);
  v123 = &v91 - v13;
  v131 = sub_219BDEF94();
  v112 = *(v131 - 8);
  v14 = MEMORY[0x28223BE20](v131);
  v120 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = v15;
  MEMORY[0x28223BE20](v14);
  v130 = &v91 - v16;
  v96 = sub_219BE1444();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v94 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58900(0);
  MEMORY[0x28223BE20](v18 - 8);
  v100 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  v105 = v20;
  MEMORY[0x28223BE20](v20);
  v101 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954350();
  v117 = *(v22 - 1);
  v118 = v22;
  MEMORY[0x28223BE20](v22);
  v102 = &v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BF70();
  v25 = v24;
  v26 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v28 = &v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954408();
  v30 = v29;
  v31 = *(v29 - 8);
  v32 = MEMORY[0x28223BE20](v29);
  v97 = &v91 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v35 = &v91 - v34;
  sub_21898BBC4(0);
  v37 = MEMORY[0x28223BE20](v36 - 8);
  v39 = &v91 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v41 = &v91 - v40;
  sub_219BE7594();
  v129 = v4;
  v119 = a1;
  sub_219BE7564();
  sub_219BE5F84();
  (*(v26 + 8))(v28, v25);
  sub_219BEB244();
  v42 = v117;

  v43 = *(v31 + 8);
  v99 = v30;
  v98 = v31 + 8;
  v43(v35, v30);
  v104 = swift_allocBox();
  v45 = v44;
  v46 = sub_219BE16D4();
  v47 = *(v46 - 8);
  v48 = *(v47 + 56);
  v49 = v47 + 56;
  v48(v45, 1, 1, v46);
  v105 = v41;
  v50 = v41;
  v51 = v118;
  sub_218B5A2A4(v50, v39, sub_21898BBC4);
  if ((*(v42 + 48))(v39, 1, v51) == 1)
  {
    sub_218B58C44(v39, sub_21898BBC4);
    v52 = v103;
  }

  else
  {
    v91 = v49;
    v92 = v43;
    v93 = v45;
    (*(v42 + 32))(v102, v39, v51);
    v52 = v103;
    v53 = sub_218B326E4();
    v54 = v97;
    sub_219BE7594();
    v55 = sub_219BE97D4();
    v56 = v100;
    (*(*(v55 - 8) + 56))(v100, 1, 1, v55);
    v57 = v48;
    if (v53)
    {
      swift_unknownObjectRetain();
      v58 = v94;
      sub_219BE1414();
      v59 = sub_219BE1434();
      v61 = v60;
      swift_unknownObjectRelease();
      (*(v95 + 8))(v58, v96);
    }

    else
    {
      v59 = 0;
      v61 = 0;
    }

    v62 = v101;
    v63 = v102;
    sub_21968E4D8(v102, v56, v59, v61, v101);
    swift_unknownObjectRelease();

    sub_218B58C44(v56, sub_218B58900);
    v92(v54, v99);
    (*(v117 + 8))(v63, v118);
    v57(v62, 0, 1, v46);
    sub_218B58ECC(v62, v93);
  }

  __swift_project_boxed_opaque_existential_1((v52 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_puzzleHistoryService), *(v52 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_puzzleHistoryService + 24));
  v64 = v111;
  v65 = [sub_219BF0AA4() identifier];
  swift_unknownObjectRelease();
  sub_219BF5414();

  v66 = sub_219BF3424();
  v118 = v66;

  sub_219BF0AA4();
  swift_getObjectType();
  sub_2194CA7FC(v66, v130);
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1((v52 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_contentAvailabilityValidator), *(v52 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_contentAvailabilityValidator + 24));
  sub_219BF0A04();
  sub_219BF4774();

  v67 = v123;
  sub_219BDF894();
  v68 = *(v52 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDismissingManager + 24);
  v69 = __swift_project_boxed_opaque_existential_1((v52 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDismissingManager), v68);
  v70 = sub_219BF0A64();
  v72 = v71;
  MEMORY[0x28223BE20](v70);
  v74 = &v91 - v73;
  (*(v75 + 16))(&v91 - v73, v69, v68);
  v76 = v126;
  sub_218A75968(v70, v72, v74, v68, v126);
  v117 = *(v52 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_tracker);
  v77 = v112;
  (*(v112 + 16))(v120, v130, v131);
  v78 = v114;
  (*(v114 + 16))(v121, v67, v125);
  v79 = v115;
  (*(v115 + 16))(v124, v64, v127);
  sub_218B5A2A4(v76, v122, sub_218B59134);
  v80 = v116;
  (*(v116 + 16))(v128, v119, v129);
  v81 = v77;
  v82 = (*(v77 + 80) + 16) & ~*(v77 + 80);
  v83 = (v106 + *(v78 + 80) + v82) & ~*(v78 + 80);
  v84 = (v107 + *(v79 + 80) + v83) & ~*(v79 + 80);
  v85 = (v110 + v84 + 7) & 0xFFFFFFFFFFFFFFF8;
  v86 = (*(v108 + 80) + v85 + 8) & ~*(v108 + 80);
  v119 = (v109 + *(v80 + 80) + v86) & ~*(v80 + 80);
  v87 = swift_allocObject();
  (*(v81 + 32))(v87 + v82, v120, v131);
  v88 = v87 + v83;
  v89 = v125;
  (*(v78 + 32))(v88, v121, v125);
  (*(v79 + 32))(v87 + v84, v124, v127);
  *(v87 + v85) = v104;
  sub_218B5A680(v122, v87 + v86, sub_218B59134);
  (*(v80 + 32))(v87 + v119, v128, v129);

  sub_219BDD154();

  sub_218B58C44(v126, sub_218B59134);
  (*(v78 + 8))(v123, v89);
  (*(v81 + 8))(v130, v131);
  sub_218B58C44(v105, sub_21898BBC4);
}

uint64_t sub_218B31544(unint64_t a1, uint64_t a2)
{
  v87 = a2;
  v3 = sub_219BF0B74();
  v89 = *(v3 - 8);
  v90 = v3;
  MEMORY[0x28223BE20](v3);
  v86 = v4;
  v88 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B5A30C(0);
  v6 = v5;
  v85 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v83 = v7;
  v84 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_219BE1444();
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v72 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58900(0);
  MEMORY[0x28223BE20](v9 - 8);
  v77 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  v82 = v11;
  MEMORY[0x28223BE20](v11);
  v78 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954350();
  v14 = *(v13 - 8);
  v91 = v13;
  v92 = v14;
  MEMORY[0x28223BE20](v13);
  v75 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BF70();
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v20 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954408();
  v22 = v21;
  v23 = *(v21 - 8);
  v24 = MEMORY[0x28223BE20](v21);
  v79 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v68 - v26;
  sub_21898BBC4(0);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v31 = &v68 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = &v68 - v32;
  sub_219BE7594();
  v81 = v6;
  v93 = a1;
  sub_219BE7564();
  sub_219BE5F84();
  (*(v18 + 8))(v20, v17);
  v34 = v91;
  sub_219BEB244();
  v35 = v92;

  v36 = *(v23 + 8);
  v76 = v22;
  v36(v27, v22);
  v80 = swift_allocBox();
  v38 = v37;
  v39 = sub_219BE16D4();
  v40 = *(v39 - 8);
  v41 = *(v40 + 56);
  v42 = v40 + 56;
  v41(v38, 1, 1, v39);
  v82 = v33;
  sub_218B5A2A4(v33, v31, sub_21898BBC4);
  if ((*(v35 + 48))(v31, 1, v34) == 1)
  {
    sub_218B58C44(v31, sub_21898BBC4);
    v43 = v94;
    v44 = v81;
  }

  else
  {
    v68 = v42;
    v69 = v41;
    v70 = v36;
    v71 = v38;
    v45 = v75;
    (*(v35 + 32))(v75, v31, v34);
    v44 = v81;
    sub_219BE7594();
    v46 = sub_219BE97D4();
    v47 = v77;
    (*(*(v46 - 8) + 56))(v77, 1, 1, v46);
    v48 = v45;
    v43 = v94;
    if (sub_218B326E4())
    {
      v49 = v72;
      sub_219BE1414();
      v50 = sub_219BE1434();
      v52 = v51;
      swift_unknownObjectRelease();
      (*(v73 + 8))(v49, v74);
    }

    else
    {
      v50 = 0;
      v52 = 0;
    }

    v54 = v78;
    v53 = v79;
    sub_21968E4D8(v48, v47, v50, v52, v78);

    sub_218B58C44(v47, sub_218B58900);
    v70(v53, v76);
    (*(v92 + 8))(v48, v91);
    v69(v54, 0, 1, v39);
    sub_218B58ECC(v54, v71);
  }

  __swift_project_boxed_opaque_existential_1((v43 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_contentAvailabilityValidator), *(v43 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_contentAvailabilityValidator + 24));
  v55 = v87;
  sub_219BF0AF4();
  LODWORD(v91) = sub_219BF4774();

  v92 = *(v43 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_tracker);
  v56 = v84;
  v57 = v85;
  (*(v85 + 16))(v84, v93, v44);
  v58 = v88;
  v59 = v89;
  v60 = v90;
  (*(v89 + 16))(v88, v55, v90);
  v61 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v62 = (v83 + *(v59 + 80) + v61) & ~*(v59 + 80);
  v93 = (v62 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
  v63 = v44;
  v64 = (v62 + v86 + 23) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  (*(v57 + 32))(v65 + v61, v56, v63);
  (*(v59 + 32))(v65 + v62, v58, v60);
  v66 = v65 + v93;
  *v66 = v94;
  *(v66 + 8) = v91 & 1;
  *(v65 + v64) = v80;

  sub_219BDD154();

  sub_218B58C44(v82, sub_21898BBC4);
}

uint64_t sub_218B31E70(uint64_t a1)
{
  v2 = sub_219BE1444();
  v65 = *(v2 - 8);
  v66 = v2;
  MEMORY[0x28223BE20](v2);
  v64 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58900(0);
  MEMORY[0x28223BE20](v4 - 8);
  v70 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE16D4();
  v72 = *(v6 - 8);
  v73 = v6;
  MEMORY[0x28223BE20](v6);
  v71 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954408();
  v75 = *(v8 - 8);
  v76 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v69 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v62 = &v62 - v12;
  MEMORY[0x28223BE20](v11);
  v63 = &v62 - v13;
  sub_218A1299C(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954350();
  v18 = v17;
  v19 = *(v17 - 8);
  v20 = MEMORY[0x28223BE20](v17);
  v78 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v67 = &v62 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v62 - v24;
  v26 = type metadata accessor for TagFeedGroup();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v62 - v31;
  sub_218B5A32C(0, &unk_280EE4278, MEMORY[0x277D6E7A0]);
  v34 = v33;
  v74 = a1;
  sub_219BE9904();
  sub_219BE6934();
  v35 = *(v19 + 8);
  v36 = v25;
  v37 = v18;
  v68 = v19 + 8;
  v77 = v35;
  v35(v36, v18);
  sub_21943EC40(v80, v16);

  if ((*(v27 + 48))(v16, 1, v26) == 1)
  {
    v38 = sub_218A1299C;
    v39 = v16;
LABEL_5:
    sub_218B58C44(v39, v38);
    v41 = v76;
    goto LABEL_6;
  }

  sub_218B5A680(v16, v32, type metadata accessor for TagFeedGroup);
  sub_218B5A2A4(v32, v30, type metadata accessor for TagFeedGroup);
  v40 = swift_getEnumCaseMultiPayload() & 0xFFFFFFFE;
  sub_218B58C44(v30, type metadata accessor for TagFeedGroup);
  if (v40 == 6)
  {
    v38 = type metadata accessor for TagFeedGroup;
    v39 = v32;
    goto LABEL_5;
  }

  v58 = v63;
  MEMORY[0x21CEC06B0](v34);
  v59 = sub_219759E94();
  v41 = v76;
  v60 = *(v75 + 8);
  v60(v58, v76);
  if ((~v59 & 0xF000000000000007) != 0)
  {
    type metadata accessor for TagFeedServiceConfig();
    sub_2186F1034(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    sub_219BEE834();
    v61 = v62;
    MEMORY[0x21CEC06B0](v34);
    sub_219BEB1B4();
    v60(v61, v76);
    sub_219BEE364();

    v41 = v76;

    sub_21885AB78(v59);
  }

  sub_218B58C44(v32, type metadata accessor for TagFeedGroup);
LABEL_6:
  v42 = v37;
  v43 = v67;
  sub_219BE9904();
  v44 = sub_218B326E4();
  v77(v43, v42);
  v45 = v69;
  MEMORY[0x21CEC06B0](v34);
  sub_219BE9904();
  v46 = sub_219BE97D4();
  v47 = v70;
  (*(*(v46 - 8) + 56))(v70, 1, 1, v46);
  v48 = v41;
  if (v44)
  {
    swift_unknownObjectRetain();
    v49 = v64;
    sub_219BE1414();
    v50 = sub_219BE1434();
    v52 = v51;
    swift_unknownObjectRelease();
    (*(v65 + 8))(v49, v66);
  }

  else
  {
    v50 = 0;
    v52 = 0;
  }

  v53 = v71;
  v54 = v78;
  sub_21968E4D8(v78, v47, v50, v52, v71);

  sub_218B58C44(v47, sub_218B58900);
  v77(v54, v42);
  (*(v75 + 8))(v45, v48);
  v55 = *(v79 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_headlineExposureTracker + 24);
  v56 = *(v79 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_headlineExposureTracker + 32);
  __swift_project_boxed_opaque_existential_1((v79 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_headlineExposureTracker), v55);
  (*(v56 + 16))(v53, v55, v56);
  swift_unknownObjectRelease();
  return (*(v72 + 8))(v53, v73);
}

id sub_218B326E4()
{
  v0 = type metadata accessor for TopicRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v0 - 8);
  v264 = &v227 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for ChannelRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v2 - 8);
  v263 = &v227 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AffinityTagFeedGroup();
  MEMORY[0x28223BE20](v4 - 8);
  v262 = &v227 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SportsEventTopicTagFeedGroup();
  MEMORY[0x28223BE20](v6 - 8);
  v261 = &v227 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SportsMastheadTagFeedGroup();
  MEMORY[0x28223BE20](v8 - 8);
  v260 = &v227 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SportsOnboardingTagFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v259 = &v227 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v255 = type metadata accessor for MySportsTopicTagFeedGroup();
  MEMORY[0x28223BE20](v255);
  v258 = &v227 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SportsEventArticlesTagFeedGroup();
  MEMORY[0x28223BE20](v13 - 8);
  v257 = &v227 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SportsKeyPlayersTagFeedGroup();
  MEMORY[0x28223BE20](v15 - 8);
  v256 = &v227 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SportsInjuryReportsTagFeedGroup();
  MEMORY[0x28223BE20](v17 - 8);
  v254 = &v227 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SportsLinksTagFeedGroup();
  MEMORY[0x28223BE20](v19 - 8);
  v253 = &v227 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for SportsEventInfoTagFeedGroup();
  MEMORY[0x28223BE20](v21 - 8);
  v252 = &v227 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for SportsBoxScoresTagFeedGroup();
  MEMORY[0x28223BE20](v23 - 8);
  v251 = &v227 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v247 = type metadata accessor for SportsScoresTagFeedGroup();
  MEMORY[0x28223BE20](v247);
  v250 = &v227 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for SportsFavoritesTagFeedGroup();
  MEMORY[0x28223BE20](v26 - 8);
  v249 = &v227 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v244 = type metadata accessor for SportsTopStoriesTagFeedGroup();
  MEMORY[0x28223BE20](v244);
  v248 = &v227 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for SportsBracketTagFeedGroup();
  MEMORY[0x28223BE20](v29 - 8);
  v246 = &v227 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for SportsStandingsTagFeedGroup();
  MEMORY[0x28223BE20](v31 - 8);
  v245 = &v227 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for SportsScheduleTagFeedGroup();
  MEMORY[0x28223BE20](v33 - 8);
  v243 = &v227 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = type metadata accessor for SportsNavigationTagFeedGroup();
  MEMORY[0x28223BE20](v241);
  v242 = &v227 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_219BF1904();
  v37 = *(v36 - 8);
  v265 = v36;
  v266 = v37;
  v38 = MEMORY[0x28223BE20](v36);
  v240 = &v227 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v239 = &v227 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v238 = &v227 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v237 = &v227 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v236 = &v227 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v235 = &v227 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v234 = &v227 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v233 = &v227 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v232 = &v227 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v231 = &v227 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v230 = &v227 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v229 = &v227 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v228 = &v227 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v66 = &v227 - v65;
  v67 = MEMORY[0x28223BE20](v64);
  v69 = &v227 - v68;
  v70 = MEMORY[0x28223BE20](v67);
  v72 = &v227 - v71;
  v73 = MEMORY[0x28223BE20](v70);
  v75 = &v227 - v74;
  v76 = MEMORY[0x28223BE20](v73);
  v78 = &v227 - v77;
  v79 = MEMORY[0x28223BE20](v76);
  v81 = &v227 - v80;
  v82 = MEMORY[0x28223BE20](v79);
  v84 = &v227 - v83;
  MEMORY[0x28223BE20](v82);
  v86 = &v227 - v85;
  v87 = type metadata accessor for SportsRecordTagFeedGroup();
  MEMORY[0x28223BE20](v87 - 8);
  v89 = &v227 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954350();
  sub_219BE6934();
  switch((v268 >> 58) & 0x3C | (v268 >> 1) & 3)
  {
    case 0xBuLL:
      v129 = swift_projectBox();
      sub_218B5A2A4(v129, v89, type metadata accessor for SportsRecordTagFeedGroup);
      sub_219BED874();
      v130 = sub_219BF1844();
      (*(v266 + 8))(v86, v265);
      v97 = v130;
      if (v130)
      {
        sub_218B58C44(v89, type metadata accessor for SportsRecordTagFeedGroup);
        goto LABEL_49;
      }

      v195 = OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDescriptor;
      v196 = v267;
      swift_beginAccess();
      v197 = *(v196 + v195);
      if (v197)
      {
        swift_endAccess();
        v159 = [v197 backingTag];
        sub_218B58C44(v89, type metadata accessor for SportsRecordTagFeedGroup);
        goto LABEL_95;
      }

      sub_218B58C44(v89, type metadata accessor for SportsRecordTagFeedGroup);
      swift_endAccess();
      goto LABEL_49;
    case 0xCuLL:
      v114 = swift_projectBox();
      v108 = v242;
      sub_218B5A2A4(v114, v242, type metadata accessor for SportsNavigationTagFeedGroup);
      sub_219BED874();
      v115 = sub_219BF1844();
      (*(v266 + 8))(v84, v265);
      v97 = v115;
      if (v115)
      {
        sub_218B58C44(v108, type metadata accessor for SportsNavigationTagFeedGroup);
        goto LABEL_49;
      }

      v177 = OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDescriptor;
      v178 = v267;
      swift_beginAccess();
      v179 = *(v178 + v177);
      if (v179)
      {
        swift_endAccess();
        v159 = [v179 backingTag];
        v173 = type metadata accessor for SportsNavigationTagFeedGroup;
        goto LABEL_64;
      }

      sub_218B58C44(v108, type metadata accessor for SportsNavigationTagFeedGroup);
      swift_endAccess();
      goto LABEL_49;
    case 0xDuLL:
      v107 = swift_projectBox();
      v108 = v243;
      sub_218B5A2A4(v107, v243, type metadata accessor for SportsScheduleTagFeedGroup);
      sub_219BED874();
      v109 = sub_219BF1844();
      (*(v266 + 8))(v81, v265);
      v110 = v109;
      if (v109)
      {
        sub_218B58C44(v108, type metadata accessor for SportsScheduleTagFeedGroup);
LABEL_14:

        return v110;
      }

      v170 = OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDescriptor;
      v171 = v267;
      swift_beginAccess();
      v172 = *(v171 + v170);
      if (!v172)
      {
        sub_218B58C44(v108, type metadata accessor for SportsScheduleTagFeedGroup);
        swift_endAccess();
        goto LABEL_14;
      }

      swift_endAccess();
      v159 = [v172 backingTag];
      v173 = type metadata accessor for SportsScheduleTagFeedGroup;
LABEL_64:
      sub_218B58C44(v108, v173);
      goto LABEL_95;
    case 0xEuLL:
      v102 = swift_projectBox();
      v94 = v248;
      sub_218B5A2A4(v102, v248, type metadata accessor for SportsTopStoriesTagFeedGroup);
      sub_219BED874();
      v103 = sub_219BF1844();
      (*(v266 + 8))(v72, v265);
      v97 = v103;
      if (v103)
      {
        v98 = type metadata accessor for SportsTopStoriesTagFeedGroup;
        goto LABEL_47;
      }

      v164 = OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDescriptor;
      v165 = v267;
      swift_beginAccess();
      v166 = *(v165 + v164);
      if (v166)
      {
        swift_endAccess();
        v159 = [v166 backingTag];
        v160 = type metadata accessor for SportsTopStoriesTagFeedGroup;
        goto LABEL_93;
      }

      v224 = type metadata accessor for SportsTopStoriesTagFeedGroup;
      goto LABEL_118;
    case 0xFuLL:
      v140 = swift_projectBox();
      v141 = v249;
      sub_218B5A2A4(v140, v249, type metadata accessor for SportsFavoritesTagFeedGroup);
      sub_219BED874();
      v142 = sub_219BF1844();
      (*(v266 + 8))(v69, v265);
      v97 = v142;
      if (v142)
      {
        v143 = type metadata accessor for SportsFavoritesTagFeedGroup;
        v144 = v141;
        goto LABEL_48;
      }

      v207 = OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDescriptor;
      v208 = v267;
      swift_beginAccess();
      v209 = *(v208 + v207);
      if (v209)
      {
        swift_endAccess();
        v159 = [v209 backingTag];
        v210 = type metadata accessor for SportsFavoritesTagFeedGroup;
        v211 = v141;
        goto LABEL_94;
      }

      v225 = type metadata accessor for SportsFavoritesTagFeedGroup;
      v226 = v141;
      goto LABEL_119;
    case 0x10uLL:
      v145 = swift_projectBox();
      v94 = v250;
      sub_218B5A2A4(v145, v250, type metadata accessor for SportsScoresTagFeedGroup);
      sub_219BED874();
      v146 = sub_219BF1844();
      (*(v266 + 8))(v66, v265);
      v97 = v146;
      if (v146)
      {
        v98 = type metadata accessor for SportsScoresTagFeedGroup;
        goto LABEL_47;
      }

      v212 = OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDescriptor;
      v213 = v267;
      swift_beginAccess();
      v214 = *(v213 + v212);
      if (v214)
      {
        swift_endAccess();
        v159 = [v214 backingTag];
        v160 = type metadata accessor for SportsScoresTagFeedGroup;
        goto LABEL_93;
      }

      v224 = type metadata accessor for SportsScoresTagFeedGroup;
      goto LABEL_118;
    case 0x11uLL:
      v131 = swift_projectBox();
      v94 = v253;
      sub_218B5A2A4(v131, v253, type metadata accessor for SportsLinksTagFeedGroup);
      v132 = v230;
      sub_219BED874();
      v133 = sub_219BF1844();
      (*(v266 + 8))(v132, v265);
      v97 = v133;
      if (v133)
      {
        v98 = type metadata accessor for SportsLinksTagFeedGroup;
        goto LABEL_47;
      }

      v198 = OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDescriptor;
      v199 = v267;
      swift_beginAccess();
      v200 = *(v199 + v198);
      if (v200)
      {
        swift_endAccess();
        v159 = [v200 backingTag];
        v160 = type metadata accessor for SportsLinksTagFeedGroup;
        goto LABEL_93;
      }

      v224 = type metadata accessor for SportsLinksTagFeedGroup;
      goto LABEL_118;
    case 0x12uLL:
      v123 = swift_projectBox();
      v94 = v258;
      sub_218B5A2A4(v123, v258, type metadata accessor for MySportsTopicTagFeedGroup);
      v124 = v234;
      sub_219BED874();
      v125 = sub_219BF1844();
      (*(v266 + 8))(v124, v265);
      v97 = v125;
      if (v125)
      {
        v98 = type metadata accessor for MySportsTopicTagFeedGroup;
        goto LABEL_47;
      }

      v189 = OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDescriptor;
      v190 = v267;
      swift_beginAccess();
      v191 = *(v190 + v189);
      if (v191)
      {
        swift_endAccess();
        v159 = [v191 backingTag];
        v160 = type metadata accessor for MySportsTopicTagFeedGroup;
        goto LABEL_93;
      }

      v224 = type metadata accessor for MySportsTopicTagFeedGroup;
      goto LABEL_118;
    case 0x13uLL:
      v119 = swift_projectBox();
      v94 = v245;
      sub_218B5A2A4(v119, v245, type metadata accessor for SportsStandingsTagFeedGroup);
      sub_219BED874();
      v120 = sub_219BF1844();
      (*(v266 + 8))(v78, v265);
      v97 = v120;
      if (v120)
      {
        v98 = type metadata accessor for SportsStandingsTagFeedGroup;
        goto LABEL_47;
      }

      v183 = OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDescriptor;
      v184 = v267;
      swift_beginAccess();
      v185 = *(v184 + v183);
      if (v185)
      {
        swift_endAccess();
        v159 = [v185 backingTag];
        v160 = type metadata accessor for SportsStandingsTagFeedGroup;
        goto LABEL_93;
      }

      v224 = type metadata accessor for SportsStandingsTagFeedGroup;
      goto LABEL_118;
    case 0x14uLL:
      v121 = swift_projectBox();
      v94 = v246;
      sub_218B5A2A4(v121, v246, type metadata accessor for SportsBracketTagFeedGroup);
      sub_219BED874();
      v122 = sub_219BF1844();
      (*(v266 + 8))(v75, v265);
      v97 = v122;
      if (v122)
      {
        v98 = type metadata accessor for SportsBracketTagFeedGroup;
        goto LABEL_47;
      }

      v186 = OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDescriptor;
      v187 = v267;
      swift_beginAccess();
      v188 = *(v187 + v186);
      if (v188)
      {
        swift_endAccess();
        v159 = [v188 backingTag];
        v160 = type metadata accessor for SportsBracketTagFeedGroup;
        goto LABEL_93;
      }

      v224 = type metadata accessor for SportsBracketTagFeedGroup;
      goto LABEL_118;
    case 0x15uLL:
      v116 = swift_projectBox();
      v94 = v251;
      sub_218B5A2A4(v116, v251, type metadata accessor for SportsBoxScoresTagFeedGroup);
      v117 = v228;
      sub_219BED874();
      v118 = sub_219BF1844();
      (*(v266 + 8))(v117, v265);
      v97 = v118;
      if (v118)
      {
        v98 = type metadata accessor for SportsBoxScoresTagFeedGroup;
        goto LABEL_47;
      }

      v180 = OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDescriptor;
      v181 = v267;
      swift_beginAccess();
      v182 = *(v181 + v180);
      if (v182)
      {
        swift_endAccess();
        v159 = [v182 backingTag];
        v160 = type metadata accessor for SportsBoxScoresTagFeedGroup;
        goto LABEL_93;
      }

      v224 = type metadata accessor for SportsBoxScoresTagFeedGroup;
      goto LABEL_118;
    case 0x16uLL:
      v93 = swift_projectBox();
      v94 = v252;
      sub_218B5A2A4(v93, v252, type metadata accessor for SportsEventInfoTagFeedGroup);
      v95 = v229;
      sub_219BED874();
      v96 = sub_219BF1844();
      (*(v266 + 8))(v95, v265);
      v97 = v96;
      if (v96)
      {
        v98 = type metadata accessor for SportsEventInfoTagFeedGroup;
        goto LABEL_47;
      }

      v156 = OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDescriptor;
      v157 = v267;
      swift_beginAccess();
      v158 = *(v157 + v156);
      if (v158)
      {
        swift_endAccess();
        v159 = [v158 backingTag];
        v160 = type metadata accessor for SportsEventInfoTagFeedGroup;
        goto LABEL_93;
      }

      v224 = type metadata accessor for SportsEventInfoTagFeedGroup;
      goto LABEL_118;
    case 0x17uLL:
      v150 = swift_projectBox();
      v94 = v254;
      sub_218B5A2A4(v150, v254, type metadata accessor for SportsInjuryReportsTagFeedGroup);
      v151 = v231;
      sub_219BED874();
      v152 = sub_219BF1844();
      (*(v266 + 8))(v151, v265);
      v97 = v152;
      if (v152)
      {
        v98 = type metadata accessor for SportsInjuryReportsTagFeedGroup;
        goto LABEL_47;
      }

      v218 = OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDescriptor;
      v219 = v267;
      swift_beginAccess();
      v220 = *(v219 + v218);
      if (v220)
      {
        swift_endAccess();
        v159 = [v220 backingTag];
        v160 = type metadata accessor for SportsInjuryReportsTagFeedGroup;
        goto LABEL_93;
      }

      v224 = type metadata accessor for SportsInjuryReportsTagFeedGroup;
      goto LABEL_118;
    case 0x18uLL:
      v134 = swift_projectBox();
      v94 = v256;
      sub_218B5A2A4(v134, v256, type metadata accessor for SportsKeyPlayersTagFeedGroup);
      v135 = v232;
      sub_219BED874();
      v136 = sub_219BF1844();
      (*(v266 + 8))(v135, v265);
      v97 = v136;
      if (v136)
      {
        v98 = type metadata accessor for SportsKeyPlayersTagFeedGroup;
        goto LABEL_47;
      }

      v201 = OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDescriptor;
      v202 = v267;
      swift_beginAccess();
      v203 = *(v202 + v201);
      if (v203)
      {
        swift_endAccess();
        v159 = [v203 backingTag];
        v160 = type metadata accessor for SportsKeyPlayersTagFeedGroup;
        goto LABEL_93;
      }

      v224 = type metadata accessor for SportsKeyPlayersTagFeedGroup;
      goto LABEL_118;
    case 0x19uLL:
      v137 = swift_projectBox();
      v94 = v257;
      sub_218B5A2A4(v137, v257, type metadata accessor for SportsEventArticlesTagFeedGroup);
      v138 = v233;
      sub_219BED874();
      v139 = sub_219BF1844();
      (*(v266 + 8))(v138, v265);
      v97 = v139;
      if (v139)
      {
        v98 = type metadata accessor for SportsEventArticlesTagFeedGroup;
        goto LABEL_47;
      }

      v204 = OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDescriptor;
      v205 = v267;
      swift_beginAccess();
      v206 = *(v205 + v204);
      if (v206)
      {
        swift_endAccess();
        v159 = [v206 backingTag];
        v160 = type metadata accessor for SportsEventArticlesTagFeedGroup;
        goto LABEL_93;
      }

      v224 = type metadata accessor for SportsEventArticlesTagFeedGroup;
      goto LABEL_118;
    case 0x1CuLL:
      v153 = swift_projectBox();
      v94 = v263;
      sub_218B5A2A4(v153, v263, type metadata accessor for ChannelRecipesTagFeedGroup);
      v154 = v239;
      sub_219BED874();
      v155 = sub_219BF1844();
      (*(v266 + 8))(v154, v265);
      v97 = v155;
      if (v155)
      {
        v98 = type metadata accessor for ChannelRecipesTagFeedGroup;
        goto LABEL_47;
      }

      v221 = OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDescriptor;
      v222 = v267;
      swift_beginAccess();
      v223 = *(v222 + v221);
      if (v223)
      {
        swift_endAccess();
        v159 = [v223 backingTag];
        v160 = type metadata accessor for ChannelRecipesTagFeedGroup;
        goto LABEL_93;
      }

      v224 = type metadata accessor for ChannelRecipesTagFeedGroup;
      goto LABEL_118;
    case 0x21uLL:
      v104 = swift_projectBox();
      v94 = v259;
      sub_218B5A2A4(v104, v259, type metadata accessor for SportsOnboardingTagFeedGroup);
      v105 = v235;
      sub_219BED874();
      v106 = sub_219BF1844();
      (*(v266 + 8))(v105, v265);
      v97 = v106;
      if (v106)
      {
        v98 = type metadata accessor for SportsOnboardingTagFeedGroup;
        goto LABEL_47;
      }

      v167 = OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDescriptor;
      v168 = v267;
      swift_beginAccess();
      v169 = *(v168 + v167);
      if (v169)
      {
        swift_endAccess();
        v159 = [v169 backingTag];
        v160 = type metadata accessor for SportsOnboardingTagFeedGroup;
        goto LABEL_93;
      }

      v224 = type metadata accessor for SportsOnboardingTagFeedGroup;
      goto LABEL_118;
    case 0x22uLL:
      v126 = swift_projectBox();
      v94 = v260;
      sub_218B5A2A4(v126, v260, type metadata accessor for SportsMastheadTagFeedGroup);
      v127 = v236;
      sub_219BED874();
      v128 = sub_219BF1844();
      (*(v266 + 8))(v127, v265);
      v97 = v128;
      if (v128)
      {
        v98 = type metadata accessor for SportsMastheadTagFeedGroup;
        goto LABEL_47;
      }

      v192 = OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDescriptor;
      v193 = v267;
      swift_beginAccess();
      v194 = *(v193 + v192);
      if (v194)
      {
        swift_endAccess();
        v159 = [v194 backingTag];
        v160 = type metadata accessor for SportsMastheadTagFeedGroup;
        goto LABEL_93;
      }

      v224 = type metadata accessor for SportsMastheadTagFeedGroup;
      goto LABEL_118;
    case 0x23uLL:
      v147 = swift_projectBox();
      v94 = v261;
      sub_218B5A2A4(v147, v261, type metadata accessor for SportsEventTopicTagFeedGroup);
      v148 = v237;
      sub_219BED874();
      v149 = sub_219BF1844();
      (*(v266 + 8))(v148, v265);
      v97 = v149;
      if (v149)
      {
        v98 = type metadata accessor for SportsEventTopicTagFeedGroup;
        goto LABEL_47;
      }

      v215 = OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDescriptor;
      v216 = v267;
      swift_beginAccess();
      v217 = *(v216 + v215);
      if (v217)
      {
        swift_endAccess();
        v159 = [v217 backingTag];
        v160 = type metadata accessor for SportsEventTopicTagFeedGroup;
        goto LABEL_93;
      }

      v224 = type metadata accessor for SportsEventTopicTagFeedGroup;
      goto LABEL_118;
    case 0x2AuLL:
      v99 = swift_projectBox();
      v94 = v262;
      sub_218B5A2A4(v99, v262, type metadata accessor for AffinityTagFeedGroup);
      v100 = v238;
      sub_219BED874();
      v101 = sub_219BF1844();
      (*(v266 + 8))(v100, v265);
      v97 = v101;
      if (v101)
      {
        v98 = type metadata accessor for AffinityTagFeedGroup;
        goto LABEL_47;
      }

      v161 = OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDescriptor;
      v162 = v267;
      swift_beginAccess();
      v163 = *(v162 + v161);
      if (v163)
      {
        swift_endAccess();
        v159 = [v163 backingTag];
        v160 = type metadata accessor for AffinityTagFeedGroup;
        goto LABEL_93;
      }

      v224 = type metadata accessor for AffinityTagFeedGroup;
      goto LABEL_118;
    case 0x2FuLL:
      v111 = swift_projectBox();
      v94 = v264;
      sub_218B5A2A4(v111, v264, type metadata accessor for TopicRecipesTagFeedGroup);
      v112 = v240;
      sub_219BED874();
      v113 = sub_219BF1844();
      (*(v266 + 8))(v112, v265);
      v97 = v113;
      if (v113)
      {
        v98 = type metadata accessor for TopicRecipesTagFeedGroup;
LABEL_47:
        v143 = v98;
        v144 = v94;
LABEL_48:
        sub_218B58C44(v144, v143);
LABEL_49:

        return v97;
      }

      v174 = OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDescriptor;
      v175 = v267;
      swift_beginAccess();
      v176 = *(v175 + v174);
      if (!v176)
      {
        v224 = type metadata accessor for TopicRecipesTagFeedGroup;
LABEL_118:
        v225 = v224;
        v226 = v94;
LABEL_119:
        sub_218B58C44(v226, v225);
        swift_endAccess();
        goto LABEL_49;
      }

      swift_endAccess();
      v159 = [v176 backingTag];
      v160 = type metadata accessor for TopicRecipesTagFeedGroup;
LABEL_93:
      v210 = v160;
      v211 = v94;
LABEL_94:
      sub_218B58C44(v211, v210);
LABEL_95:

      return v159;
    default:

      v90 = OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDescriptor;
      v91 = v267;
      swift_beginAccess();
      result = *(v91 + v90);
      if (result)
      {
        return [result backingTag];
      }

      return result;
  }
}

uint64_t sub_218B346EC(uint64_t a1)
{
  sub_218B5A244(0);
  v4 = v3;
  v66 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v64 = v5;
  v65 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE1444();
  v51 = *(v6 - 8);
  v52 = v6;
  MEMORY[0x28223BE20](v6);
  v50 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58900(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954408();
  v58 = v11;
  v56 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BE16D4();
  v61 = *(v14 - 8);
  v62 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v59 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v16;
  MEMORY[0x28223BE20](v15);
  v67 = &v50 - v17;
  sub_218954350();
  v19 = v18;
  v20 = *(v18 - 8);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v50 - v24;
  sub_219BE8EF4();
  v68 = v1;
  v26 = sub_218B326E4();
  v27 = *(v20 + 8);
  v54 = v19;
  v28 = v19;
  v29 = v27;
  v27(v25, v28);
  v55 = v13;
  sub_219BE8F04();
  sub_219BE8EF4();
  v60 = v4;
  v63 = a1;
  sub_219BE8F24();
  v53 = v26;
  if (v26)
  {
    swift_unknownObjectRetain();
    v30 = v50;
    sub_219BE1414();
    v31 = sub_219BE1434();
    v33 = v32;
    swift_unknownObjectRelease();
    (*(v51 + 8))(v30, v52);
  }

  else
  {
    v31 = 0;
    v33 = 0;
  }

  v34 = v67;
  v35 = v31;
  v36 = v55;
  sub_21968E4D8(v23, v10, v35, v33, v67);

  sub_218B58C44(v10, sub_218B58900);
  v29(v23, v54);
  (*(v56 + 8))(v36, v58);
  v38 = v65;
  v37 = v66;
  v39 = v60;
  (*(v66 + 16))(v65, v63, v60);
  v40 = v61;
  v41 = v62;
  v42 = v59;
  (*(v61 + 16))(v59, v34, v62);
  v43 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v44 = (v64 + *(v40 + 80) + v43) & ~*(v40 + 80);
  v45 = swift_allocObject();
  (*(v37 + 32))(v45 + v43, v38, v39);
  (*(v40 + 32))(v45 + v44, v42, v41);
  sub_219BDD154();

  v46 = *(v68 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_headlineExposureTracker + 24);
  v47 = *(v68 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_headlineExposureTracker + 32);
  __swift_project_boxed_opaque_existential_1((v68 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_headlineExposureTracker), v46);
  v48 = v67;
  (*(v47 + 24))(v67, v46, v47);
  swift_unknownObjectRelease();
  return (*(v40 + 8))(v48, v41);
}

uint64_t sub_218B34CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v731 = a3;
  v736 = a1;
  v4 = sub_219BDBD34();
  v734 = *(v4 - 8);
  v735 = v4;
  MEMORY[0x28223BE20](v4);
  v732 = &v639 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TopicRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v6 - 8);
  v724 = &v639 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TrendingRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v8 - 8);
  v723 = &v639 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SavedRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v722 = &v639 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LatestRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v12 - 8);
  v721 = &v639 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AffinityTagFeedGroup();
  MEMORY[0x28223BE20](v14 - 8);
  v720 = &v639 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PuzzleScoreboardTagFeedGroup();
  MEMORY[0x28223BE20](v16 - 8);
  v719 = &v639 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PuzzleFullArchiveTagFeedGroup();
  MEMORY[0x28223BE20](v18 - 8);
  v718 = &v639 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PuzzleFeaturedTagFeedGroup();
  MEMORY[0x28223BE20](v20 - 8);
  v717 = &v639 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for PuzzleContinuePlayingTagFeedGroup();
  MEMORY[0x28223BE20](v22 - 8);
  v716 = &v639 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for PuzzleArchiveTagFeedGroup();
  MEMORY[0x28223BE20](v24 - 8);
  v715 = &v639 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for PuzzleListTagFeedGroup();
  MEMORY[0x28223BE20](v26 - 8);
  v714 = &v639 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for SportsEventTopicTagFeedGroup();
  MEMORY[0x28223BE20](v28 - 8);
  v713 = &v639 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for SportsMastheadTagFeedGroup();
  MEMORY[0x28223BE20](v30 - 8);
  v712 = &v639 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for SportsOnboardingTagFeedGroup();
  MEMORY[0x28223BE20](v32 - 8);
  v711 = &v639 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v682 = type metadata accessor for DateRangeTagFeedGroup();
  MEMORY[0x28223BE20](v682);
  v710 = &v639 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for RecentlyViewedRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v35 - 8);
  v709 = &v639 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for RecentStoriesTagFeedGroup();
  MEMORY[0x28223BE20](v37 - 8);
  v708 = &v639 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for ForYouRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v39 - 8);
  v707 = &v639 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for ChannelRecipesTagFeedGroup();
  MEMORY[0x28223BE20](v41 - 8);
  v706 = &v639 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v681 = type metadata accessor for ForYouTagFeedGroup();
  MEMORY[0x28223BE20](v681);
  v705 = &v639 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for HighlightsTagFeedGroup();
  MEMORY[0x28223BE20](v44 - 8);
  v704 = &v639 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v680 = type metadata accessor for MySportsTopicTagFeedGroup();
  MEMORY[0x28223BE20](v680);
  v703 = &v639 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for SportsEventArticlesTagFeedGroup();
  MEMORY[0x28223BE20](v47 - 8);
  v702 = &v639 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for SportsKeyPlayersTagFeedGroup();
  MEMORY[0x28223BE20](v49 - 8);
  v701 = &v639 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for SportsInjuryReportsTagFeedGroup();
  MEMORY[0x28223BE20](v51 - 8);
  v700 = &v639 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for SportsLinksTagFeedGroup();
  MEMORY[0x28223BE20](v53 - 8);
  v699 = &v639 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for SportsEventInfoTagFeedGroup();
  MEMORY[0x28223BE20](v55 - 8);
  v698 = &v639 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for SportsBoxScoresTagFeedGroup();
  MEMORY[0x28223BE20](v57 - 8);
  v697 = &v639 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v679 = type metadata accessor for SportsScoresTagFeedGroup();
  MEMORY[0x28223BE20](v679);
  v696 = &v639 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for SportsFavoritesTagFeedGroup();
  MEMORY[0x28223BE20](v60 - 8);
  v695 = &v639 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v678 = type metadata accessor for SportsTopStoriesTagFeedGroup();
  MEMORY[0x28223BE20](v678);
  v694 = &v639 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for SportsBracketTagFeedGroup();
  MEMORY[0x28223BE20](v63 - 8);
  v693 = &v639 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for SportsStandingsTagFeedGroup();
  MEMORY[0x28223BE20](v65 - 8);
  v692 = &v639 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for SportsScheduleTagFeedGroup();
  MEMORY[0x28223BE20](v67 - 8);
  v691 = &v639 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v677 = type metadata accessor for SportsNavigationTagFeedGroup();
  MEMORY[0x28223BE20](v677);
  v690 = &v639 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for SportsRecordTagFeedGroup();
  MEMORY[0x28223BE20](v70 - 8);
  v688 = &v639 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for CuratedTagFeedGroup();
  MEMORY[0x28223BE20](v72 - 8);
  v689 = &v639 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v676 = type metadata accessor for WeatherTagFeedGroup();
  MEMORY[0x28223BE20](v676);
  v687 = &v639 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for ChannelSectionDirectoryTagFeedGroup();
  MEMORY[0x28223BE20](v75 - 8);
  v686 = &v639 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for ChannelSectionTagFeedGroup();
  MEMORY[0x28223BE20](v77 - 8);
  v685 = &v639 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for PromotedArticleListTagFeedGroup();
  MEMORY[0x28223BE20](v79 - 8);
  v684 = &v639 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_219BE1444();
  v82 = *(v81 - 8);
  v726 = v81;
  v727 = v82;
  MEMORY[0x28223BE20](v81);
  v725 = &v639 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_219BF1904();
  v85 = *(v84 - 8);
  v728 = v84;
  v729 = v85;
  v86 = MEMORY[0x28223BE20](v84);
  v675 = &v639 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = MEMORY[0x28223BE20](v86);
  v674 = &v639 - v89;
  v90 = MEMORY[0x28223BE20](v88);
  v673 = &v639 - v91;
  v92 = MEMORY[0x28223BE20](v90);
  v672 = &v639 - v93;
  v94 = MEMORY[0x28223BE20](v92);
  v671 = &v639 - v95;
  v96 = MEMORY[0x28223BE20](v94);
  v670 = &v639 - v97;
  v98 = MEMORY[0x28223BE20](v96);
  v669 = &v639 - v99;
  v100 = MEMORY[0x28223BE20](v98);
  v668 = &v639 - v101;
  v102 = MEMORY[0x28223BE20](v100);
  v667 = &v639 - v103;
  v104 = MEMORY[0x28223BE20](v102);
  v666 = &v639 - v105;
  v106 = MEMORY[0x28223BE20](v104);
  v665 = &v639 - v107;
  v108 = MEMORY[0x28223BE20](v106);
  v664 = &v639 - v109;
  v110 = MEMORY[0x28223BE20](v108);
  v663 = &v639 - v111;
  v112 = MEMORY[0x28223BE20](v110);
  v662 = &v639 - v113;
  v114 = MEMORY[0x28223BE20](v112);
  v661 = &v639 - v115;
  v116 = MEMORY[0x28223BE20](v114);
  v660 = &v639 - v117;
  v118 = MEMORY[0x28223BE20](v116);
  v659 = &v639 - v119;
  v120 = MEMORY[0x28223BE20](v118);
  v658 = &v639 - v121;
  v122 = MEMORY[0x28223BE20](v120);
  v657 = &v639 - v123;
  v124 = MEMORY[0x28223BE20](v122);
  v656 = &v639 - v125;
  v126 = MEMORY[0x28223BE20](v124);
  v655 = &v639 - v127;
  v128 = MEMORY[0x28223BE20](v126);
  v654 = &v639 - v129;
  v130 = MEMORY[0x28223BE20](v128);
  v653 = &v639 - v131;
  v132 = MEMORY[0x28223BE20](v130);
  v652 = &v639 - v133;
  v134 = MEMORY[0x28223BE20](v132);
  v651 = &v639 - v135;
  v136 = MEMORY[0x28223BE20](v134);
  v650 = &v639 - v137;
  v138 = MEMORY[0x28223BE20](v136);
  v649 = &v639 - v139;
  v140 = MEMORY[0x28223BE20](v138);
  v648 = &v639 - v141;
  v142 = MEMORY[0x28223BE20](v140);
  v647 = &v639 - v143;
  v144 = MEMORY[0x28223BE20](v142);
  v646 = &v639 - v145;
  v146 = MEMORY[0x28223BE20](v144);
  v645 = &v639 - v147;
  v148 = MEMORY[0x28223BE20](v146);
  v644 = &v639 - v149;
  v150 = MEMORY[0x28223BE20](v148);
  v643 = &v639 - v151;
  v152 = MEMORY[0x28223BE20](v150);
  v642 = &v639 - v153;
  v154 = MEMORY[0x28223BE20](v152);
  v641 = &v639 - v155;
  v156 = MEMORY[0x28223BE20](v154);
  v640 = &v639 - v157;
  v158 = MEMORY[0x28223BE20](v156);
  v160 = &v639 - v159;
  v161 = MEMORY[0x28223BE20](v158);
  v163 = &v639 - v162;
  v164 = MEMORY[0x28223BE20](v161);
  v166 = &v639 - v165;
  v167 = MEMORY[0x28223BE20](v164);
  v169 = &v639 - v168;
  v170 = MEMORY[0x28223BE20](v167);
  v172 = &v639 - v171;
  MEMORY[0x28223BE20](v170);
  v174 = &v639 - v173;
  v175 = type metadata accessor for ArticleListTagFeedGroup();
  MEMORY[0x28223BE20](v175 - 8);
  v683 = &v639 - ((v176 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954350();
  v178 = v177;
  v179 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v181 = &v639 - ((v180 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B5A244(0);
  v730 = v182;
  v733 = a2;
  sub_219BE8EF4();
  sub_219BE6934();
  (*(v179 + 8))(v181, v178);
  v183 = v737;
  switch((v183 >> 58) & 0x3C | (v183 >> 1) & 3)
  {
    case 1uLL:
      v184 = MEMORY[0x277CEAD18];
      v185 = swift_projectBox();
      v186 = v683;
      sub_218B5A2A4(v185, v683, type metadata accessor for ArticleListTagFeedGroup);
      sub_219BED874();
      v187 = sub_219BF1844();
      (*(v729 + 8))(v174, v728);
      if (v187)
      {
        v188 = [v187 identifier];
        sub_219BF5414();
        v729 = v183;

        v189 = v725;
        sub_219BE1424();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v190 = sub_219BDCD44();
        v191 = *(v190 - 8);
        v192 = (*(v191 + 80) + 32) & ~*(v191 + 80);
        v193 = swift_allocObject();
        *(v193 + 16) = xmmword_219C09BA0;
        (*(v191 + 104))(v193 + v192, *v184, v190);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260]);
        v194 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v189, v194);
        v195 = type metadata accessor for ArticleListTagFeedGroup;
        v196 = v683;
        goto LABEL_129;
      }

      v630 = type metadata accessor for ArticleListTagFeedGroup;
      goto LABEL_128;
    case 2uLL:
      v377 = MEMORY[0x277CEAD18];
      v378 = swift_projectBox();
      v379 = v684;
      sub_218B5A2A4(v378, v684, type metadata accessor for PromotedArticleListTagFeedGroup);
      sub_219BED874();
      v380 = sub_219BF1844();
      (*(v729 + 8))(v172, v728);
      if (v380)
      {
        v381 = [v380 identifier];
        sub_219BF5414();
        v729 = v183;

        v382 = v725;
        sub_219BE1424();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v383 = sub_219BDCD44();
        v384 = *(v383 - 8);
        v385 = (*(v384 + 80) + 32) & ~*(v384 + 80);
        v386 = swift_allocObject();
        *(v386 + 16) = xmmword_219C09BA0;
        (*(v384 + 104))(v386 + v385, *v377, v383);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260]);
        v387 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v382, v387);
        v195 = type metadata accessor for PromotedArticleListTagFeedGroup;
        v196 = v684;
      }

      else
      {
        v195 = type metadata accessor for PromotedArticleListTagFeedGroup;
        v196 = v379;
      }

      goto LABEL_129;
    case 3uLL:
      v388 = MEMORY[0x277CEAD18];
      v389 = swift_projectBox();
      v186 = v687;
      sub_218B5A2A4(v389, v687, type metadata accessor for WeatherTagFeedGroup);
      sub_219BED874();
      v390 = sub_219BF1844();
      (*(v729 + 8))(v163, v728);
      if (v390)
      {
        v391 = [v390 identifier];
        sub_219BF5414();
        v729 = v183;

        v392 = v725;
        sub_219BE1424();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v393 = sub_219BDCD44();
        v394 = *(v393 - 8);
        v395 = (*(v394 + 80) + 32) & ~*(v394 + 80);
        v396 = swift_allocObject();
        *(v396 + 16) = xmmword_219C09BA0;
        (*(v394 + 104))(v396 + v395, *v388, v393);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260]);
        v397 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v392, v397);
        v195 = type metadata accessor for WeatherTagFeedGroup;
        v196 = v687;
        goto LABEL_129;
      }

      v630 = type metadata accessor for WeatherTagFeedGroup;
      goto LABEL_128;
    case 5uLL:
      v315 = MEMORY[0x277CEAD18];
      v316 = swift_projectBox();
      v186 = v685;
      sub_218B5A2A4(v316, v685, type metadata accessor for ChannelSectionTagFeedGroup);
      sub_219BED874();
      v317 = sub_219BF1844();
      (*(v729 + 8))(v169, v728);
      if (v317)
      {
        v318 = [v317 identifier];
        sub_219BF5414();
        v729 = v183;

        v319 = v725;
        sub_219BE1424();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v320 = sub_219BDCD44();
        v321 = *(v320 - 8);
        v322 = (*(v321 + 80) + 32) & ~*(v321 + 80);
        v323 = swift_allocObject();
        *(v323 + 16) = xmmword_219C09BA0;
        (*(v321 + 104))(v323 + v322, *v315, v320);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260]);
        v324 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v319, v324);
        v195 = type metadata accessor for ChannelSectionTagFeedGroup;
        v196 = v685;
        goto LABEL_129;
      }

      v630 = type metadata accessor for ChannelSectionTagFeedGroup;
      goto LABEL_128;
    case 6uLL:
      v346 = MEMORY[0x277CEAD18];
      v347 = swift_projectBox();
      v186 = v686;
      sub_218B5A2A4(v347, v686, type metadata accessor for ChannelSectionDirectoryTagFeedGroup);
      sub_219BED874();
      v348 = sub_219BF1844();
      (*(v729 + 8))(v166, v728);
      if (v348)
      {
        v349 = [v348 identifier];
        sub_219BF5414();
        v729 = v183;

        v350 = v725;
        sub_219BE1424();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v351 = sub_219BDCD44();
        v352 = *(v351 - 8);
        v353 = (*(v352 + 80) + 32) & ~*(v352 + 80);
        v354 = swift_allocObject();
        *(v354 + 16) = xmmword_219C09BA0;
        (*(v352 + 104))(v354 + v353, *v346, v351);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260]);
        v355 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v350, v355);
        v195 = type metadata accessor for ChannelSectionDirectoryTagFeedGroup;
        v196 = v686;
        goto LABEL_129;
      }

      v630 = type metadata accessor for ChannelSectionDirectoryTagFeedGroup;
      goto LABEL_128;
    case 0xAuLL:
      v398 = MEMORY[0x277CEAD18];
      v399 = swift_projectBox();
      v186 = v689;
      sub_218B5A2A4(v399, v689, type metadata accessor for CuratedTagFeedGroup);
      sub_219BED874();
      v400 = sub_219BF1844();
      (*(v729 + 8))(v160, v728);
      if (v400)
      {
        v401 = [v400 identifier];
        sub_219BF5414();
        v729 = v183;

        v402 = v725;
        sub_219BE1424();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v403 = sub_219BDCD44();
        v404 = *(v403 - 8);
        v405 = (*(v404 + 80) + 32) & ~*(v404 + 80);
        v406 = swift_allocObject();
        *(v406 + 16) = xmmword_219C09BA0;
        (*(v404 + 104))(v406 + v405, *v398, v403);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260]);
        v407 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v402, v407);
        v195 = type metadata accessor for CuratedTagFeedGroup;
        v196 = v689;
        goto LABEL_129;
      }

      v630 = type metadata accessor for CuratedTagFeedGroup;
      goto LABEL_128;
    case 0xBuLL:
      v439 = MEMORY[0x277CEAD18];
      v440 = swift_projectBox();
      v441 = v688;
      sub_218B5A2A4(v440, v688, type metadata accessor for SportsRecordTagFeedGroup);
      v442 = v640;
      sub_219BED874();
      v443 = sub_219BF1844();
      (*(v729 + 8))(v442, v728);
      if (v443)
      {
        v444 = v725;
        sub_219BE1414();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v445 = sub_219BDCD44();
        v446 = *(v445 - 8);
        v447 = (*(v446 + 80) + 32) & ~*(v446 + 80);
        v448 = swift_allocObject();
        *(v448 + 16) = xmmword_219C09BA0;
        (*(v446 + 104))(v448 + v447, *v439, v445);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260]);
        v449 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v444, v449);
        sub_218B58C44(v688, type metadata accessor for SportsRecordTagFeedGroup);
      }

      else
      {
        sub_218B58C44(v441, type metadata accessor for SportsRecordTagFeedGroup);
      }

      goto LABEL_130;
    case 0xCuLL:
      v294 = MEMORY[0x277CEAD18];
      v295 = swift_projectBox();
      v186 = v690;
      sub_218B5A2A4(v295, v690, type metadata accessor for SportsNavigationTagFeedGroup);
      v296 = v641;
      sub_219BED874();
      v297 = sub_219BF1844();
      (*(v729 + 8))(v296, v728);
      if (v297)
      {
        v298 = v725;
        sub_219BE1414();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v299 = sub_219BDCD44();
        v300 = *(v299 - 8);
        v301 = (*(v300 + 80) + 32) & ~*(v300 + 80);
        v302 = swift_allocObject();
        v729 = v183;
        *(v302 + 16) = xmmword_219C09BA0;
        (*(v300 + 104))(v302 + v301, *v294, v299);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260]);
        v303 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v298, v303);
        v195 = type metadata accessor for SportsNavigationTagFeedGroup;
        v196 = v690;
        goto LABEL_129;
      }

      v630 = type metadata accessor for SportsNavigationTagFeedGroup;
      goto LABEL_128;
    case 0xDuLL:
      v356 = MEMORY[0x277CEAD18];
      v357 = swift_projectBox();
      v186 = v691;
      sub_218B5A2A4(v357, v691, type metadata accessor for SportsScheduleTagFeedGroup);
      v358 = v642;
      sub_219BED874();
      v359 = sub_219BF1844();
      (*(v729 + 8))(v358, v728);
      if (v359)
      {
        v360 = v725;
        sub_219BE1414();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v361 = sub_219BDCD44();
        v362 = *(v361 - 8);
        v363 = (*(v362 + 80) + 32) & ~*(v362 + 80);
        v364 = swift_allocObject();
        v729 = v183;
        *(v364 + 16) = xmmword_219C09BA0;
        (*(v362 + 104))(v364 + v363, *v356, v361);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260]);
        v365 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v360, v365);
        v195 = type metadata accessor for SportsScheduleTagFeedGroup;
        v196 = v691;
        goto LABEL_129;
      }

      v630 = type metadata accessor for SportsScheduleTagFeedGroup;
      goto LABEL_128;
    case 0xEuLL:
      v450 = MEMORY[0x277CEAD18];
      v451 = swift_projectBox();
      v186 = v694;
      sub_218B5A2A4(v451, v694, type metadata accessor for SportsTopStoriesTagFeedGroup);
      v452 = v645;
      sub_219BED874();
      v453 = sub_219BF1844();
      (*(v729 + 8))(v452, v728);
      if (v453)
      {
        v454 = v725;
        sub_219BE1414();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v455 = sub_219BDCD44();
        v456 = *(v455 - 8);
        v457 = (*(v456 + 80) + 32) & ~*(v456 + 80);
        v458 = swift_allocObject();
        v729 = v183;
        *(v458 + 16) = xmmword_219C09BA0;
        (*(v456 + 104))(v458 + v457, *v450, v455);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260]);
        v459 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v454, v459);
        v195 = type metadata accessor for SportsTopStoriesTagFeedGroup;
        v196 = v694;
        goto LABEL_129;
      }

      v630 = type metadata accessor for SportsTopStoriesTagFeedGroup;
      goto LABEL_128;
    case 0xFuLL:
      v336 = MEMORY[0x277CEAD18];
      v337 = swift_projectBox();
      v186 = v695;
      sub_218B5A2A4(v337, v695, type metadata accessor for SportsFavoritesTagFeedGroup);
      v338 = v646;
      sub_219BED874();
      v339 = sub_219BF1844();
      (*(v729 + 8))(v338, v728);
      if (v339)
      {
        v340 = v725;
        sub_219BE1414();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v341 = sub_219BDCD44();
        v342 = *(v341 - 8);
        v343 = (*(v342 + 80) + 32) & ~*(v342 + 80);
        v344 = swift_allocObject();
        v729 = v183;
        *(v344 + 16) = xmmword_219C09BA0;
        (*(v342 + 104))(v344 + v343, *v336, v341);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260]);
        v345 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v340, v345);
        v195 = type metadata accessor for SportsFavoritesTagFeedGroup;
        v196 = v695;
        goto LABEL_129;
      }

      v630 = type metadata accessor for SportsFavoritesTagFeedGroup;
      goto LABEL_128;
    case 0x10uLL:
      v513 = MEMORY[0x277CEAD18];
      v514 = swift_projectBox();
      v186 = v696;
      sub_218B5A2A4(v514, v696, type metadata accessor for SportsScoresTagFeedGroup);
      v515 = v647;
      sub_219BED874();
      v516 = sub_219BF1844();
      (*(v729 + 8))(v515, v728);
      if (v516)
      {
        v517 = v725;
        sub_219BE1414();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v518 = sub_219BDCD44();
        v519 = *(v518 - 8);
        v520 = (*(v519 + 80) + 32) & ~*(v519 + 80);
        v521 = swift_allocObject();
        v729 = v183;
        *(v521 + 16) = xmmword_219C09BA0;
        (*(v519 + 104))(v521 + v520, *v513, v518);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260]);
        v522 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v517, v522);
        v195 = type metadata accessor for SportsScoresTagFeedGroup;
        v196 = v696;
        goto LABEL_129;
      }

      v630 = type metadata accessor for SportsScoresTagFeedGroup;
      goto LABEL_128;
    case 0x11uLL:
      v523 = MEMORY[0x277CEAD18];
      v524 = swift_projectBox();
      v186 = v699;
      sub_218B5A2A4(v524, v699, type metadata accessor for SportsLinksTagFeedGroup);
      v525 = v650;
      sub_219BED874();
      v526 = sub_219BF1844();
      (*(v729 + 8))(v525, v728);
      if (v526)
      {
        v527 = v725;
        sub_219BE1414();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v528 = sub_219BDCD44();
        v529 = *(v528 - 8);
        v530 = (*(v529 + 80) + 32) & ~*(v529 + 80);
        v531 = swift_allocObject();
        v729 = v183;
        *(v531 + 16) = xmmword_219C09BA0;
        (*(v529 + 104))(v531 + v530, *v523, v528);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260]);
        v532 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v527, v532);
        v195 = type metadata accessor for SportsLinksTagFeedGroup;
        v196 = v699;
        goto LABEL_129;
      }

      v630 = type metadata accessor for SportsLinksTagFeedGroup;
      goto LABEL_128;
    case 0x12uLL:
      v284 = MEMORY[0x277CEAD18];
      v285 = swift_projectBox();
      v186 = v703;
      sub_218B5A2A4(v285, v703, type metadata accessor for MySportsTopicTagFeedGroup);
      v286 = v654;
      sub_219BED874();
      v287 = sub_219BF1844();
      (*(v729 + 8))(v286, v728);
      if (v287)
      {
        v288 = v725;
        sub_219BE1414();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v289 = sub_219BDCD44();
        v290 = *(v289 - 8);
        v291 = (*(v290 + 80) + 32) & ~*(v290 + 80);
        v292 = swift_allocObject();
        v729 = v183;
        *(v292 + 16) = xmmword_219C09BA0;
        (*(v290 + 104))(v292 + v291, *v284, v289);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260]);
        v293 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v288, v293);
        v195 = type metadata accessor for MySportsTopicTagFeedGroup;
        v196 = v703;
        goto LABEL_129;
      }

      v630 = type metadata accessor for MySportsTopicTagFeedGroup;
      goto LABEL_128;
    case 0x13uLL:
      v471 = MEMORY[0x277CEAD18];
      v472 = swift_projectBox();
      v186 = v692;
      sub_218B5A2A4(v472, v692, type metadata accessor for SportsStandingsTagFeedGroup);
      v473 = v643;
      sub_219BED874();
      v474 = sub_219BF1844();
      (*(v729 + 8))(v473, v728);
      if (v474)
      {
        v475 = v725;
        sub_219BE1414();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v476 = sub_219BDCD44();
        v477 = *(v476 - 8);
        v478 = (*(v477 + 80) + 32) & ~*(v477 + 80);
        v479 = swift_allocObject();
        v729 = v183;
        *(v479 + 16) = xmmword_219C09BA0;
        (*(v477 + 104))(v479 + v478, *v471, v476);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260]);
        v480 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v475, v480);
        v195 = type metadata accessor for SportsStandingsTagFeedGroup;
        v196 = v692;
        goto LABEL_129;
      }

      v630 = type metadata accessor for SportsStandingsTagFeedGroup;
      goto LABEL_128;
    case 0x14uLL:
      v481 = MEMORY[0x277CEAD18];
      v482 = swift_projectBox();
      v186 = v693;
      sub_218B5A2A4(v482, v693, type metadata accessor for SportsBracketTagFeedGroup);
      v483 = v644;
      sub_219BED874();
      v484 = sub_219BF1844();
      (*(v729 + 8))(v483, v728);
      if (v484)
      {
        v485 = v725;
        sub_219BE1414();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v486 = sub_219BDCD44();
        v487 = *(v486 - 8);
        v488 = (*(v487 + 80) + 32) & ~*(v487 + 80);
        v489 = swift_allocObject();
        v729 = v183;
        *(v489 + 16) = xmmword_219C09BA0;
        (*(v487 + 104))(v489 + v488, *v481, v486);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260]);
        v490 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v485, v490);
        v195 = type metadata accessor for SportsBracketTagFeedGroup;
        v196 = v693;
        goto LABEL_129;
      }

      v630 = type metadata accessor for SportsBracketTagFeedGroup;
      goto LABEL_128;
    case 0x15uLL:
      v544 = MEMORY[0x277CEAD18];
      v545 = swift_projectBox();
      v186 = v697;
      sub_218B5A2A4(v545, v697, type metadata accessor for SportsBoxScoresTagFeedGroup);
      v546 = v648;
      sub_219BED874();
      v547 = sub_219BF1844();
      (*(v729 + 8))(v546, v728);
      if (v547)
      {
        v548 = v725;
        sub_219BE1414();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v549 = sub_219BDCD44();
        v550 = *(v549 - 8);
        v551 = (*(v550 + 80) + 32) & ~*(v550 + 80);
        v552 = swift_allocObject();
        v729 = v183;
        *(v552 + 16) = xmmword_219C09BA0;
        (*(v550 + 104))(v552 + v551, *v544, v549);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260]);
        v553 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v548, v553);
        v195 = type metadata accessor for SportsBoxScoresTagFeedGroup;
        v196 = v697;
        goto LABEL_129;
      }

      v630 = type metadata accessor for SportsBoxScoresTagFeedGroup;
      goto LABEL_128;
    case 0x16uLL:
      v598 = MEMORY[0x277CEAD18];
      v599 = swift_projectBox();
      v186 = v698;
      sub_218B5A2A4(v599, v698, type metadata accessor for SportsEventInfoTagFeedGroup);
      v600 = v649;
      sub_219BED874();
      v601 = sub_219BF1844();
      (*(v729 + 8))(v600, v728);
      if (v601)
      {
        v602 = v725;
        sub_219BE1414();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v603 = sub_219BDCD44();
        v604 = *(v603 - 8);
        v605 = (*(v604 + 80) + 32) & ~*(v604 + 80);
        v606 = swift_allocObject();
        v729 = v183;
        *(v606 + 16) = xmmword_219C09BA0;
        (*(v604 + 104))(v606 + v605, *v598, v603);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260]);
        v607 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v602, v607);
        v195 = type metadata accessor for SportsEventInfoTagFeedGroup;
        v196 = v698;
        goto LABEL_129;
      }

      v630 = type metadata accessor for SportsEventInfoTagFeedGroup;
      goto LABEL_128;
    case 0x17uLL:
      v418 = MEMORY[0x277CEAD18];
      v419 = swift_projectBox();
      v186 = v700;
      sub_218B5A2A4(v419, v700, type metadata accessor for SportsInjuryReportsTagFeedGroup);
      v420 = v651;
      sub_219BED874();
      v421 = sub_219BF1844();
      (*(v729 + 8))(v420, v728);
      if (v421)
      {
        v422 = v725;
        sub_219BE1414();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v423 = sub_219BDCD44();
        v424 = *(v423 - 8);
        v425 = (*(v424 + 80) + 32) & ~*(v424 + 80);
        v426 = swift_allocObject();
        v729 = v183;
        *(v426 + 16) = xmmword_219C09BA0;
        (*(v424 + 104))(v426 + v425, *v418, v423);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260]);
        v427 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v422, v427);
        v195 = type metadata accessor for SportsInjuryReportsTagFeedGroup;
        v196 = v700;
        goto LABEL_129;
      }

      v630 = type metadata accessor for SportsInjuryReportsTagFeedGroup;
      goto LABEL_128;
    case 0x18uLL:
      v408 = MEMORY[0x277CEAD18];
      v409 = swift_projectBox();
      v186 = v701;
      sub_218B5A2A4(v409, v701, type metadata accessor for SportsKeyPlayersTagFeedGroup);
      v410 = v652;
      sub_219BED874();
      v411 = sub_219BF1844();
      (*(v729 + 8))(v410, v728);
      if (v411)
      {
        v412 = v725;
        sub_219BE1414();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v413 = sub_219BDCD44();
        v414 = *(v413 - 8);
        v415 = (*(v414 + 80) + 32) & ~*(v414 + 80);
        v416 = swift_allocObject();
        v729 = v183;
        *(v416 + 16) = xmmword_219C09BA0;
        (*(v414 + 104))(v416 + v415, *v408, v413);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260]);
        v417 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v412, v417);
        v195 = type metadata accessor for SportsKeyPlayersTagFeedGroup;
        v196 = v701;
        goto LABEL_129;
      }

      v630 = type metadata accessor for SportsKeyPlayersTagFeedGroup;
      goto LABEL_128;
    case 0x19uLL:
      v252 = MEMORY[0x277CEAD18];
      v253 = swift_projectBox();
      v186 = v702;
      sub_218B5A2A4(v253, v702, type metadata accessor for SportsEventArticlesTagFeedGroup);
      v254 = v653;
      sub_219BED874();
      v255 = sub_219BF1844();
      (*(v729 + 8))(v254, v728);
      if (v255)
      {
        v256 = v725;
        sub_219BE1414();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v257 = sub_219BDCD44();
        v258 = *(v257 - 8);
        v259 = (*(v258 + 80) + 32) & ~*(v258 + 80);
        v260 = swift_allocObject();
        v729 = v183;
        *(v260 + 16) = xmmword_219C09BA0;
        (*(v258 + 104))(v260 + v259, *v252, v257);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260]);
        v261 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v256, v261);
        v195 = type metadata accessor for SportsEventArticlesTagFeedGroup;
        v196 = v702;
        goto LABEL_129;
      }

      v630 = type metadata accessor for SportsEventArticlesTagFeedGroup;
      goto LABEL_128;
    case 0x1AuLL:
      v262 = MEMORY[0x277CEAD18];
      v263 = swift_projectBox();
      v186 = v704;
      sub_218B5A2A4(v263, v704, type metadata accessor for HighlightsTagFeedGroup);
      v264 = v655;
      sub_219BED874();
      v265 = sub_219BF1844();
      (*(v729 + 8))(v264, v728);
      if (v265)
      {
        v266 = [v265 identifier];
        sub_219BF5414();
        v729 = v183;

        v267 = v725;
        sub_219BE1424();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v268 = sub_219BDCD44();
        v269 = *(v268 - 8);
        v270 = (*(v269 + 80) + 32) & ~*(v269 + 80);
        v271 = swift_allocObject();
        *(v271 + 16) = xmmword_219C09BA0;
        (*(v269 + 104))(v271 + v270, *v262, v268);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260]);
        v272 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v267, v272);
        v195 = type metadata accessor for HighlightsTagFeedGroup;
        v196 = v704;
        goto LABEL_129;
      }

      v630 = type metadata accessor for HighlightsTagFeedGroup;
      goto LABEL_128;
    case 0x1BuLL:
      v576 = MEMORY[0x277CEAD18];
      v577 = swift_projectBox();
      v186 = v705;
      sub_218B5A2A4(v577, v705, type metadata accessor for ForYouTagFeedGroup);
      v578 = v656;
      sub_219BED874();
      v579 = sub_219BF1844();
      (*(v729 + 8))(v578, v728);
      if (v579)
      {
        v580 = [v579 identifier];
        sub_219BF5414();
        v729 = v183;

        v581 = v725;
        sub_219BE1424();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v582 = sub_219BDCD44();
        v583 = *(v582 - 8);
        v584 = (*(v583 + 80) + 32) & ~*(v583 + 80);
        v585 = swift_allocObject();
        *(v585 + 16) = xmmword_219C09BA0;
        (*(v583 + 104))(v585 + v584, *v576, v582);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260]);
        v586 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v581, v586);
        v195 = type metadata accessor for ForYouTagFeedGroup;
        v196 = v705;
        goto LABEL_129;
      }

      v630 = type metadata accessor for ForYouTagFeedGroup;
      goto LABEL_128;
    case 0x1CuLL:
      v587 = MEMORY[0x277CEAD18];
      v588 = swift_projectBox();
      v186 = v706;
      sub_218B5A2A4(v588, v706, type metadata accessor for ChannelRecipesTagFeedGroup);
      v589 = v657;
      sub_219BED874();
      v590 = sub_219BF1844();
      (*(v729 + 8))(v589, v728);
      if (v590)
      {
        v591 = [v590 identifier];
        sub_219BF5414();
        v729 = v183;

        v592 = v725;
        sub_219BE1424();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v593 = sub_219BDCD44();
        v594 = *(v593 - 8);
        v595 = (*(v594 + 80) + 32) & ~*(v594 + 80);
        v596 = swift_allocObject();
        *(v596 + 16) = xmmword_219C09BA0;
        (*(v594 + 104))(v596 + v595, *v587, v593);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260]);
        v597 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v592, v597);
        v195 = type metadata accessor for ChannelRecipesTagFeedGroup;
        v196 = v706;
        goto LABEL_129;
      }

      v630 = type metadata accessor for ChannelRecipesTagFeedGroup;
      goto LABEL_128;
    case 0x1DuLL:
      v491 = MEMORY[0x277CEAD18];
      v492 = swift_projectBox();
      v186 = v707;
      sub_218B5A2A4(v492, v707, type metadata accessor for ForYouRecipesTagFeedGroup);
      v493 = v658;
      sub_219BED874();
      v494 = sub_219BF1844();
      (*(v729 + 8))(v493, v728);
      if (v494)
      {
        v495 = [v494 identifier];
        sub_219BF5414();
        v729 = v183;

        v496 = v725;
        sub_219BE1424();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v497 = sub_219BDCD44();
        v498 = *(v497 - 8);
        v499 = (*(v498 + 80) + 32) & ~*(v498 + 80);
        v500 = swift_allocObject();
        *(v500 + 16) = xmmword_219C09BA0;
        (*(v498 + 104))(v500 + v499, *v491, v497);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260]);
        v501 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v496, v501);
        v195 = type metadata accessor for ForYouRecipesTagFeedGroup;
        v196 = v707;
        goto LABEL_129;
      }

      v630 = type metadata accessor for ForYouRecipesTagFeedGroup;
      goto LABEL_128;
    case 0x1EuLL:
      v428 = MEMORY[0x277CEAD18];
      v429 = swift_projectBox();
      v186 = v708;
      sub_218B5A2A4(v429, v708, type metadata accessor for RecentStoriesTagFeedGroup);
      v430 = v659;
      sub_219BED874();
      v431 = sub_219BF1844();
      (*(v729 + 8))(v430, v728);
      if (v431)
      {
        v432 = [v431 identifier];
        sub_219BF5414();
        v729 = v183;

        v433 = v725;
        sub_219BE1424();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v434 = sub_219BDCD44();
        v435 = *(v434 - 8);
        v436 = (*(v435 + 80) + 32) & ~*(v435 + 80);
        v437 = swift_allocObject();
        *(v437 + 16) = xmmword_219C09BA0;
        (*(v435 + 104))(v437 + v436, *v428, v434);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260]);
        v438 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v433, v438);
        v195 = type metadata accessor for RecentStoriesTagFeedGroup;
        v196 = v708;
        goto LABEL_129;
      }

      v630 = type metadata accessor for RecentStoriesTagFeedGroup;
      goto LABEL_128;
    case 0x1FuLL:
      v502 = MEMORY[0x277CEAD18];
      v503 = swift_projectBox();
      v186 = v709;
      sub_218B5A2A4(v503, v709, type metadata accessor for RecentlyViewedRecipesTagFeedGroup);
      v504 = v660;
      sub_219BED874();
      v505 = sub_219BF1844();
      (*(v729 + 8))(v504, v728);
      if (v505)
      {
        v506 = [v505 identifier];
        sub_219BF5414();
        v729 = v183;

        v507 = v725;
        sub_219BE1424();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v508 = sub_219BDCD44();
        v509 = *(v508 - 8);
        v510 = (*(v509 + 80) + 32) & ~*(v509 + 80);
        v511 = swift_allocObject();
        *(v511 + 16) = xmmword_219C09BA0;
        (*(v509 + 104))(v511 + v510, *v502, v508);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260]);
        v512 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v507, v512);
        v195 = type metadata accessor for RecentlyViewedRecipesTagFeedGroup;
        v196 = v709;
        goto LABEL_129;
      }

      v630 = type metadata accessor for RecentlyViewedRecipesTagFeedGroup;
      goto LABEL_128;
    case 0x20uLL:
      v325 = MEMORY[0x277CEAD18];
      v326 = swift_projectBox();
      v186 = v710;
      sub_218B5A2A4(v326, v710, type metadata accessor for DateRangeTagFeedGroup);
      v327 = v661;
      sub_219BED874();
      v328 = sub_219BF1844();
      (*(v729 + 8))(v327, v728);
      if (v328)
      {
        v329 = [v328 identifier];
        sub_219BF5414();
        v729 = v183;

        v330 = v725;
        sub_219BE1424();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v331 = sub_219BDCD44();
        v332 = *(v331 - 8);
        v333 = (*(v332 + 80) + 32) & ~*(v332 + 80);
        v334 = swift_allocObject();
        *(v334 + 16) = xmmword_219C09BA0;
        (*(v332 + 104))(v334 + v333, *v325, v331);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260]);
        v335 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v330, v335);
        v195 = type metadata accessor for DateRangeTagFeedGroup;
        v196 = v710;
        goto LABEL_129;
      }

      v630 = type metadata accessor for DateRangeTagFeedGroup;
      goto LABEL_128;
    case 0x21uLL:
      v273 = MEMORY[0x277CEAD18];
      v274 = swift_projectBox();
      v186 = v711;
      sub_218B5A2A4(v274, v711, type metadata accessor for SportsOnboardingTagFeedGroup);
      v275 = v662;
      sub_219BED874();
      v276 = sub_219BF1844();
      (*(v729 + 8))(v275, v728);
      if (v276)
      {
        v277 = [v276 identifier];
        sub_219BF5414();
        v729 = v183;

        v278 = v725;
        sub_219BE1424();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v279 = sub_219BDCD44();
        v280 = *(v279 - 8);
        v281 = (*(v280 + 80) + 32) & ~*(v280 + 80);
        v282 = swift_allocObject();
        *(v282 + 16) = xmmword_219C09BA0;
        (*(v280 + 104))(v282 + v281, *v273, v279);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260]);
        v283 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v278, v283);
        v195 = type metadata accessor for SportsOnboardingTagFeedGroup;
        v196 = v711;
        goto LABEL_129;
      }

      v630 = type metadata accessor for SportsOnboardingTagFeedGroup;
      goto LABEL_128;
    case 0x22uLL:
      v230 = MEMORY[0x277CEAD18];
      v231 = swift_projectBox();
      v186 = v712;
      sub_218B5A2A4(v231, v712, type metadata accessor for SportsMastheadTagFeedGroup);
      v232 = v663;
      sub_219BED874();
      v233 = sub_219BF1844();
      (*(v729 + 8))(v232, v728);
      if (v233)
      {
        v234 = [v233 identifier];
        sub_219BF5414();
        v729 = v183;

        v235 = v725;
        sub_219BE1424();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v236 = sub_219BDCD44();
        v237 = *(v236 - 8);
        v238 = (*(v237 + 80) + 32) & ~*(v237 + 80);
        v239 = swift_allocObject();
        *(v239 + 16) = xmmword_219C09BA0;
        (*(v237 + 104))(v239 + v238, *v230, v236);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260]);
        v240 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v235, v240);
        v195 = type metadata accessor for SportsMastheadTagFeedGroup;
        v196 = v712;
        goto LABEL_129;
      }

      v630 = type metadata accessor for SportsMastheadTagFeedGroup;
      goto LABEL_128;
    case 0x23uLL:
      v241 = MEMORY[0x277CEAD18];
      v242 = swift_projectBox();
      v186 = v713;
      sub_218B5A2A4(v242, v713, type metadata accessor for SportsEventTopicTagFeedGroup);
      v243 = v664;
      sub_219BED874();
      v244 = sub_219BF1844();
      (*(v729 + 8))(v243, v728);
      if (v244)
      {
        v245 = [v244 identifier];
        sub_219BF5414();
        v729 = v183;

        v246 = v725;
        sub_219BE1424();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v247 = sub_219BDCD44();
        v248 = *(v247 - 8);
        v249 = (*(v248 + 80) + 32) & ~*(v248 + 80);
        v250 = swift_allocObject();
        *(v250 + 16) = xmmword_219C09BA0;
        (*(v248 + 104))(v250 + v249, *v241, v247);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260]);
        v251 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v246, v251);
        v195 = type metadata accessor for SportsEventTopicTagFeedGroup;
        v196 = v713;
        goto LABEL_129;
      }

      v630 = type metadata accessor for SportsEventTopicTagFeedGroup;
      goto LABEL_128;
    case 0x24uLL:
      v208 = MEMORY[0x277CEAD18];
      v209 = swift_projectBox();
      v186 = v714;
      sub_218B5A2A4(v209, v714, type metadata accessor for PuzzleListTagFeedGroup);
      v210 = v665;
      sub_219BED874();
      v211 = sub_219BF1844();
      (*(v729 + 8))(v210, v728);
      if (v211)
      {
        v212 = [v211 identifier];
        sub_219BF5414();
        v729 = v183;

        v213 = v725;
        sub_219BE1424();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v214 = sub_219BDCD44();
        v215 = *(v214 - 8);
        v216 = (*(v215 + 80) + 32) & ~*(v215 + 80);
        v217 = swift_allocObject();
        *(v217 + 16) = xmmword_219C09BA0;
        (*(v215 + 104))(v217 + v216, *v208, v214);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260]);
        v218 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v213, v218);
        v195 = type metadata accessor for PuzzleListTagFeedGroup;
        v196 = v714;
        goto LABEL_129;
      }

      v630 = type metadata accessor for PuzzleListTagFeedGroup;
      goto LABEL_128;
    case 0x25uLL:
      v608 = MEMORY[0x277CEAD18];
      v609 = swift_projectBox();
      v186 = v715;
      sub_218B5A2A4(v609, v715, type metadata accessor for PuzzleArchiveTagFeedGroup);
      v610 = v666;
      sub_219BED874();
      v611 = sub_219BF1844();
      (*(v729 + 8))(v610, v728);
      if (v611)
      {
        v612 = [v611 identifier];
        sub_219BF5414();
        v729 = v183;

        v613 = v725;
        sub_219BE1424();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v614 = sub_219BDCD44();
        v615 = *(v614 - 8);
        v616 = (*(v615 + 80) + 32) & ~*(v615 + 80);
        v617 = swift_allocObject();
        *(v617 + 16) = xmmword_219C09BA0;
        (*(v615 + 104))(v617 + v616, *v608, v614);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260]);
        v618 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v613, v618);
        v195 = type metadata accessor for PuzzleArchiveTagFeedGroup;
        v196 = v715;
        goto LABEL_129;
      }

      v630 = type metadata accessor for PuzzleArchiveTagFeedGroup;
      goto LABEL_128;
    case 0x26uLL:
      v554 = MEMORY[0x277CEAD18];
      v555 = swift_projectBox();
      v186 = v716;
      sub_218B5A2A4(v555, v716, type metadata accessor for PuzzleContinuePlayingTagFeedGroup);
      v556 = v667;
      sub_219BED874();
      v557 = sub_219BF1844();
      (*(v729 + 8))(v556, v728);
      if (v557)
      {
        v558 = [v557 identifier];
        sub_219BF5414();
        v729 = v183;

        v559 = v725;
        sub_219BE1424();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v560 = sub_219BDCD44();
        v561 = *(v560 - 8);
        v562 = (*(v561 + 80) + 32) & ~*(v561 + 80);
        v563 = swift_allocObject();
        *(v563 + 16) = xmmword_219C09BA0;
        (*(v561 + 104))(v563 + v562, *v554, v560);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260]);
        v564 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v559, v564);
        v195 = type metadata accessor for PuzzleContinuePlayingTagFeedGroup;
        v196 = v716;
        goto LABEL_129;
      }

      v630 = type metadata accessor for PuzzleContinuePlayingTagFeedGroup;
      goto LABEL_128;
    case 0x27uLL:
      v366 = MEMORY[0x277CEAD18];
      v367 = swift_projectBox();
      v186 = v717;
      sub_218B5A2A4(v367, v717, type metadata accessor for PuzzleFeaturedTagFeedGroup);
      v368 = v668;
      sub_219BED874();
      v369 = sub_219BF1844();
      (*(v729 + 8))(v368, v728);
      if (v369)
      {
        v370 = [v369 identifier];
        sub_219BF5414();
        v729 = v183;

        v371 = v725;
        sub_219BE1424();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v372 = sub_219BDCD44();
        v373 = *(v372 - 8);
        v374 = (*(v373 + 80) + 32) & ~*(v373 + 80);
        v375 = swift_allocObject();
        *(v375 + 16) = xmmword_219C09BA0;
        (*(v373 + 104))(v375 + v374, *v366, v372);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260]);
        v376 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v371, v376);
        v195 = type metadata accessor for PuzzleFeaturedTagFeedGroup;
        v196 = v717;
        goto LABEL_129;
      }

      v630 = type metadata accessor for PuzzleFeaturedTagFeedGroup;
      goto LABEL_128;
    case 0x28uLL:
      v460 = MEMORY[0x277CEAD18];
      v461 = swift_projectBox();
      v186 = v718;
      sub_218B5A2A4(v461, v718, type metadata accessor for PuzzleFullArchiveTagFeedGroup);
      v462 = v669;
      sub_219BED874();
      v463 = sub_219BF1844();
      (*(v729 + 8))(v462, v728);
      if (v463)
      {
        v464 = [v463 identifier];
        sub_219BF5414();
        v729 = v183;

        v465 = v725;
        sub_219BE1424();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v466 = sub_219BDCD44();
        v467 = *(v466 - 8);
        v468 = (*(v467 + 80) + 32) & ~*(v467 + 80);
        v469 = swift_allocObject();
        *(v469 + 16) = xmmword_219C09BA0;
        (*(v467 + 104))(v469 + v468, *v460, v466);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260]);
        v470 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v465, v470);
        v195 = type metadata accessor for PuzzleFullArchiveTagFeedGroup;
        v196 = v718;
        goto LABEL_129;
      }

      v630 = type metadata accessor for PuzzleFullArchiveTagFeedGroup;
      goto LABEL_128;
    case 0x29uLL:
      v565 = MEMORY[0x277CEAD18];
      v566 = swift_projectBox();
      v186 = v719;
      sub_218B5A2A4(v566, v719, type metadata accessor for PuzzleScoreboardTagFeedGroup);
      v567 = v670;
      sub_219BED874();
      v568 = sub_219BF1844();
      (*(v729 + 8))(v567, v728);
      if (v568)
      {
        v569 = [v568 identifier];
        sub_219BF5414();
        v729 = v183;

        v570 = v725;
        sub_219BE1424();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v571 = sub_219BDCD44();
        v572 = *(v571 - 8);
        v573 = (*(v572 + 80) + 32) & ~*(v572 + 80);
        v574 = swift_allocObject();
        *(v574 + 16) = xmmword_219C09BA0;
        (*(v572 + 104))(v574 + v573, *v565, v571);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260]);
        v575 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v570, v575);
        v195 = type metadata accessor for PuzzleScoreboardTagFeedGroup;
        v196 = v719;
        goto LABEL_129;
      }

      v630 = type metadata accessor for PuzzleScoreboardTagFeedGroup;
      goto LABEL_128;
    case 0x2AuLL:
      v197 = MEMORY[0x277CEAD18];
      v198 = swift_projectBox();
      v186 = v720;
      sub_218B5A2A4(v198, v720, type metadata accessor for AffinityTagFeedGroup);
      v199 = v671;
      sub_219BED874();
      v200 = sub_219BF1844();
      (*(v729 + 8))(v199, v728);
      if (v200)
      {
        v201 = [v200 identifier];
        sub_219BF5414();
        v729 = v183;

        v202 = v725;
        sub_219BE1424();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v203 = sub_219BDCD44();
        v204 = *(v203 - 8);
        v205 = (*(v204 + 80) + 32) & ~*(v204 + 80);
        v206 = swift_allocObject();
        *(v206 + 16) = xmmword_219C09BA0;
        (*(v204 + 104))(v206 + v205, *v197, v203);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260]);
        v207 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v202, v207);
        v195 = type metadata accessor for AffinityTagFeedGroup;
        v196 = v720;
        goto LABEL_129;
      }

      v630 = type metadata accessor for AffinityTagFeedGroup;
      goto LABEL_128;
    case 0x2CuLL:
      v304 = MEMORY[0x277CEAD18];
      v305 = swift_projectBox();
      v186 = v721;
      sub_218B5A2A4(v305, v721, type metadata accessor for LatestRecipesTagFeedGroup);
      v306 = v672;
      sub_219BED874();
      v307 = sub_219BF1844();
      (*(v729 + 8))(v306, v728);
      if (v307)
      {
        v308 = [v307 identifier];
        sub_219BF5414();
        v729 = v183;

        v309 = v725;
        sub_219BE1424();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v310 = sub_219BDCD44();
        v311 = *(v310 - 8);
        v312 = (*(v311 + 80) + 32) & ~*(v311 + 80);
        v313 = swift_allocObject();
        *(v313 + 16) = xmmword_219C09BA0;
        (*(v311 + 104))(v313 + v312, *v304, v310);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260]);
        v314 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v309, v314);
        v195 = type metadata accessor for LatestRecipesTagFeedGroup;
        v196 = v721;
        goto LABEL_129;
      }

      v630 = type metadata accessor for LatestRecipesTagFeedGroup;
      goto LABEL_128;
    case 0x2DuLL:
      v533 = MEMORY[0x277CEAD18];
      v534 = swift_projectBox();
      v186 = v722;
      sub_218B5A2A4(v534, v722, type metadata accessor for SavedRecipesTagFeedGroup);
      v535 = v673;
      sub_219BED874();
      v536 = sub_219BF1844();
      (*(v729 + 8))(v535, v728);
      if (v536)
      {
        v537 = [v536 identifier];
        sub_219BF5414();
        v729 = v183;

        v538 = v725;
        sub_219BE1424();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v539 = sub_219BDCD44();
        v540 = *(v539 - 8);
        v541 = (*(v540 + 80) + 32) & ~*(v540 + 80);
        v542 = swift_allocObject();
        *(v542 + 16) = xmmword_219C09BA0;
        (*(v540 + 104))(v542 + v541, *v533, v539);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260]);
        v543 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v538, v543);
        v195 = type metadata accessor for SavedRecipesTagFeedGroup;
        v196 = v722;
        goto LABEL_129;
      }

      v630 = type metadata accessor for SavedRecipesTagFeedGroup;
      goto LABEL_128;
    case 0x2EuLL:
      v619 = MEMORY[0x277CEAD18];
      v620 = swift_projectBox();
      v186 = v723;
      sub_218B5A2A4(v620, v723, type metadata accessor for TrendingRecipesTagFeedGroup);
      v621 = v674;
      sub_219BED874();
      v622 = sub_219BF1844();
      (*(v729 + 8))(v621, v728);
      if (v622)
      {
        v623 = [v622 identifier];
        sub_219BF5414();
        v729 = v183;

        v624 = v725;
        sub_219BE1424();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v625 = sub_219BDCD44();
        v626 = *(v625 - 8);
        v627 = (*(v626 + 80) + 32) & ~*(v626 + 80);
        v628 = swift_allocObject();
        *(v628 + 16) = xmmword_219C09BA0;
        (*(v626 + 104))(v628 + v627, *v619, v625);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260]);
        v629 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v624, v629);
        v195 = type metadata accessor for TrendingRecipesTagFeedGroup;
        v196 = v723;
        goto LABEL_129;
      }

      v630 = type metadata accessor for TrendingRecipesTagFeedGroup;
      goto LABEL_128;
    case 0x2FuLL:
      v219 = MEMORY[0x277CEAD18];
      v220 = swift_projectBox();
      v186 = v724;
      sub_218B5A2A4(v220, v724, type metadata accessor for TopicRecipesTagFeedGroup);
      v221 = v675;
      sub_219BED874();
      v222 = sub_219BF1844();
      (*(v729 + 8))(v221, v728);
      if (v222)
      {
        v223 = [v222 identifier];
        sub_219BF5414();
        v729 = v183;

        v224 = v725;
        sub_219BE1424();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v225 = sub_219BDCD44();
        v226 = *(v225 - 8);
        v227 = (*(v226 + 80) + 32) & ~*(v226 + 80);
        v228 = swift_allocObject();
        *(v228 + 16) = xmmword_219C09BA0;
        (*(v226 + 104))(v228 + v227, *v219, v225);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260]);
        v229 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v224, v229);
        v195 = type metadata accessor for TopicRecipesTagFeedGroup;
        v196 = v724;
      }

      else
      {
        v630 = type metadata accessor for TopicRecipesTagFeedGroup;
LABEL_128:
        v195 = v630;
        v196 = v186;
      }

LABEL_129:
      sub_218B58C44(v196, v195);
LABEL_130:

      sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
      v631 = sub_219BDCD44();
      v632 = *(v631 - 8);
      v633 = (*(v632 + 80) + 32) & ~*(v632 + 80);
      v634 = swift_allocObject();
      *(v634 + 16) = xmmword_219C09BA0;
      (*(v632 + 104))(v634 + v633, *MEMORY[0x277CEAD18], v631);
      sub_219BE16D4();
      sub_2186F1034(&unk_280EE7FB0, MEMORY[0x277D2F590]);
      sub_219BDCCC4();

      sub_219BE0254();
      v635 = v732;
      sub_219BE8F14();
      sub_2186F1034(&qword_280EE8470, MEMORY[0x277D2E3F8]);
      sub_219BDCC64();
      v636 = v735;
      v637 = *(v734 + 8);
      v637(v635, v735);
      sub_219BE8EE4();
      sub_219BDCC74();
      return (v637)(v635, v636);
    default:
      goto LABEL_130;
  }
}

uint64_t sub_218B3C2F8()
{
  v0 = sub_219BF0AC4();
  v56 = *(v0 - 8);
  v57 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v53 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FB04C();
  v59 = v3;
  v55 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v58 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A127E0(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BF1094();
  v53 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F7158();
  v12 = v11;
  v54 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_219BDD0A4();
  v61 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v16 = (&v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for TagFeedModel(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BF70();
  sub_219BE5FC4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2186F0DCC(0, &qword_280ED2960, type metadata accessor for TagFeedGapLocation, MEMORY[0x277D333C8]);
      v42 = *(v41 + 48);
      v43 = sub_219BF1584();
      (*(*(v43 - 8) + 8))(&v19[v42], v43);
      v44 = type metadata accessor for TagFeedGapLocation;
      goto LABEL_16;
    case 2u:
      sub_218B58C44(v19, type metadata accessor for TagFeedModel);
      goto LABEL_9;
    case 3u:
      v23 = 6775156;
      v24 = 0xE300000000000000;
      goto LABEL_14;
    case 4u:
      v47 = v54;
      (*(v54 + 32))(v14, v19, v12);
      sub_219BF07D4();
      sub_219BF1074();
      (*(v53 + 8))(v10, v8);
      v48 = sub_219BF0F34();
      v49 = (*(*(v48 - 8) + 48))(v7, 1, v48);
      sub_218B58C44(v7, sub_218A127E0);
      if (v49 != 1)
      {
        v50 = v61;
        *v16 = 0x656E696C64616568;
        v16[1] = 0xE800000000000000;
        v51 = v60;
        (*(v50 + 104))(v16, *MEMORY[0x277CEAE48], v60);
        sub_219BDD204();
        (*(v50 + 8))(v16, v51);
      }

      return (*(v47 + 8))(v14, v12);
    case 5u:
    case 6u:
    case 8u:
    case 0xDu:
      goto LABEL_15;
    case 7u:
      sub_2186F0DCC(0, &qword_280E90E78, sub_2186EAD48, sub_2186F0E54);
      v35 = *(v34 + 48);
      sub_2186F0E54();
      (*(*(v36 - 8) + 8))(&v19[v35], v36);
      sub_2186EAD48();
      (*(*(v37 - 8) + 8))(v19, v37);
LABEL_9:
      v38 = v61;
      *v16 = 0x656E696C64616568;
      v16[1] = 0xE800000000000000;
      v39 = v60;
      (*(v38 + 104))(v16, *MEMORY[0x277CEAE48], v60);
      sub_219BDD204();
      return (*(v38 + 8))(v16, v39);
    case 9u:
      v23 = 0x74496D6F74737563;
      v24 = 0xEA00000000006D65;
      goto LABEL_14;
    case 0xAu:
      v23 = 0x6575737369;
      v24 = 0xE500000000000000;
      goto LABEL_14;
    case 0xBu:
      v25 = v55 + 32;
      v27 = v58;
      v26 = v59;
      (*(v55 + 32))(v58, v19, v59);
      sub_219BF07D4();
      v28 = sub_219BF0A34();
      (*(v56 + 8))(v2, v57);
      v29 = (v61 + 104);
      v30 = (v61 + 8);
      v31 = (v25 - 24);
      if (v28)
      {
        v32 = 0x6554656C7A7A7570;
        v33 = 0xEC00000072657361;
      }

      else
      {
        v32 = 0x656C7A7A7570;
        v33 = 0xE600000000000000;
      }

      *v16 = v32;
      v16[1] = v33;
      v52 = v60;
      (*v29)(v16, *MEMORY[0x277CEAE48], v60);
      sub_219BDD204();
      (*v30)(v16, v52);
      return (*v31)(v27, v26);
    case 0xCu:
      v23 = 0x7954656C7A7A7570;
      v24 = 0xEA00000000006570;
      goto LABEL_14;
    case 0xEu:
      v23 = 0x657069636572;
      v24 = 0xE600000000000000;
LABEL_14:
      *v16 = v23;
      v16[1] = v24;
      v45 = v61;
      v46 = v60;
      (*(v61 + 104))(v16, *MEMORY[0x277CEAE48], v60);
      sub_219BDD204();
      (*(v45 + 8))(v16, v46);
LABEL_15:
      v44 = type metadata accessor for TagFeedModel;
LABEL_16:
      v21 = v44;
      v22 = v19;
      break;
    default:

      sub_2186F0CC0();
      v21 = type metadata accessor for TagFeedGapLocation;
      v22 = &v19[*(v20 + 48)];
      break;
  }

  return sub_218B58C44(v22, v21);
}

uint64_t sub_218B3CC28(uint64_t a1, unsigned __int8 *a2)
{
  v106 = a1;
  sub_218B58F30(0);
  MEMORY[0x28223BE20](v4 - 8);
  v105 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BDD374();
  v7 = *(v6 - 8);
  v123 = v6;
  v124 = v7;
  MEMORY[0x28223BE20](v6);
  v122 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218747CC8(0, &unk_280EE8380, MEMORY[0x277D2E6C8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v101 = &v100 - v10;
  v108 = sub_219BDF584();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v110 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_219BE16D4();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v102 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_219BE16E4();
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v109 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v111 = &v100 - v15;
  sub_218A12934(0);
  MEMORY[0x28223BE20](v16 - 8);
  v119 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for TagFeedModel(0);
  MEMORY[0x28223BE20](v116);
  v115 = (&v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218954350();
  v20 = v19;
  v126 = *(v19 - 1);
  MEMORY[0x28223BE20](v19);
  v125 = &v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v100 - v23;
  MEMORY[0x28223BE20](v25);
  v130 = &v100 - v26;
  sub_218B5B3A0();
  v28 = v27 - 8;
  MEMORY[0x28223BE20](v27);
  v30 = &v100 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BBC4(0);
  MEMORY[0x28223BE20](v31 - 8);
  v118 = &v100 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v120 = &v100 - v34;
  sub_218954408();
  v36 = v35;
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v39 = &v100 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v42 = &v100 - v41;
  LODWORD(v127) = *a2;
  v114 = v2;
  v131[0] = *(v2 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_blueprintProvider);
  sub_218987644();
  sub_2186F1034(&qword_280EE54F0, sub_218987644);
  sub_219BE7B94();
  v117 = v37;
  v43 = *(v37 + 16);
  v121 = v42;
  v43(v39, v42, v36);
  sub_2186F1034(&qword_280EE36E0, sub_218954408);
  sub_219BF56A4();
  v44 = *(v28 + 44);
  sub_2186F1034(&unk_280EE36D0, sub_218954408);
  sub_219BF5E84();
  if (*&v30[v44] == v131[0])
  {
LABEL_2:
    sub_218B58C44(v30, sub_218B5B3A0);
    v45 = 1;
    v46 = v120;
    goto LABEL_10;
  }

  v128 = (v126 + 16);
  v129 = (v126 + 32);
  v47 = (v126 + 8);
  while (1)
  {
    v48 = sub_219BF5EC4();
    v49 = v130;
    (*v128)(v130);
    v48(v131, 0);
    v50 = v36;
    sub_219BF5E94();
    v51 = *v129;
    (*v129)(v24, v49, v20);
    sub_219BE6934();
    v52 = (v131[0] >> 58) & 0x3C | (LODWORD(v131[0]) >> 1) & 3;

    if (v52 != 45)
    {
      break;
    }

    if (v127)
    {
      goto LABEL_9;
    }

LABEL_5:
    (*v47)(v24, v20);
    v36 = v50;
    sub_219BF5E84();
    if (*&v30[v44] == v131[0])
    {
      goto LABEL_2;
    }
  }

  if (v52 != 31 || (v127 & 1) != 0)
  {
    goto LABEL_5;
  }

LABEL_9:
  sub_218B58C44(v30, sub_218B5B3A0);
  v46 = v120;
  v51(v120, v24, v20);
  v45 = 0;
  v36 = v50;
LABEL_10:
  v53 = v126;
  (*(v126 + 56))(v46, v45, 1, v20);
  v54 = v118;
  sub_218B5A2A4(v46, v118, sub_21898BBC4);
  v55 = (*(v53 + 48))(v54, 1, v20);
  v56 = v125;
  v57 = v121;
  v58 = v119;
  if (v55 == 1)
  {
    sub_218B58C44(v46, sub_21898BBC4);
    (*(v117 + 8))(v57, v36);
    return sub_218B58C44(v54, sub_21898BBC4);
  }

  (*(v53 + 32))(v125, v54, v20);
  sub_218C874C4(v58);
  sub_21898BF70();
  v61 = v60;
  v62 = *(v60 - 8);
  if ((*(v62 + 48))(v58, 1, v60) == 1)
  {
    (*(v53 + 8))(v56, v20);
    sub_218B58C44(v46, sub_21898BBC4);
    (*(v117 + 8))(v57, v36);
    return sub_218B58C44(v58, sub_218A12934);
  }

  v63 = v115;
  sub_219BE5FC4();
  (*(v62 + 8))(v58, v61);
  if (swift_getEnumCaseMultiPayload() != 5)
  {
    (*(v53 + 8))(v125, v20);
    sub_218B58C44(v46, sub_21898BBC4);
    (*(v117 + 8))(v57, v36);
    return sub_218B58C44(v63, type metadata accessor for TagFeedModel);
  }

  v128 = *v63;
  sub_218718690(v114 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_sectionPositionProvider, v131);
  __swift_project_boxed_opaque_existential_1(v131, v131[3]);
  sub_219BE6944();
  sub_2186F7410();
  sub_2186F1034(&unk_280EDE820, type metadata accessor for TagFeedModel);
  v64 = sub_219BF00E4();

  __swift_destroy_boxed_opaque_existential_1(v131);
  if (v64 == sub_219BDAF14())
  {

    (*(v53 + 8))(v125, v20);
    goto LABEL_34;
  }

  v127 = v64;
  v65 = v125;
  sub_219BE6934();
  v66 = (v131[0] >> 58) & 0x3C | (LODWORD(v131[0]) >> 1) & 3;

  v67 = v112;
  v68 = MEMORY[0x277D2F610];
  if (v66 != 45)
  {
    v68 = MEMORY[0x277D2F7B8];
  }

  v69 = v111;
  v70 = v113;
  (*(v112 + 104))(v111, *v68, v113);
  v71 = sub_219BE5B64();
  swift_getObjectType();
  v131[0] = v71;
  v72 = sub_219BEB4B4();

  (*(v107 + 104))(v110, *MEMORY[0x277D2DB58], v108);
  (*(v67 + 16))(v109, v69, v70);
  result = sub_219BE6944();
  if (v72 > 0x7FFFFFFF)
  {
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v127 < 0xFFFFFFFF80000000 || v72 < 0xFFFFFFFF80000000)
  {
    goto LABEL_36;
  }

  if (v127 > 0x7FFFFFFF)
  {
LABEL_37:
    __break(1u);
    return result;
  }

  v116 = v73;
  v118 = result;
  v119 = v72;
  v74 = sub_219BE5B34();
  v75 = *(v74 + 16);
  if (v75)
  {
    v114 = v36;
    v115 = v20;
    v131[0] = MEMORY[0x277D84F90];
    sub_21870B65C(0, v75, 0);
    v76 = v131[0];
    v130 = *(v124 + 16);
    v77 = (*(v124 + 80) + 32) & ~*(v124 + 80);
    v108 = v74;
    v78 = v74 + v77;
    v129 = *(v124 + 72);
    v124 += 16;
    v79 = (v124 - 8);
    do
    {
      v80 = v122;
      v81 = v123;
      (v130)(v122, v78, v123);
      v82 = sub_219BDD364();
      v83 = [v82 identifier];
      v84 = sub_219BF5414();
      v86 = v85;

      (*v79)(v80, v81);
      v131[0] = v76;
      v88 = *(v76 + 16);
      v87 = *(v76 + 24);
      if (v88 >= v87 >> 1)
      {
        sub_21870B65C((v87 > 1), v88 + 1, 1);
        v76 = v131[0];
      }

      *(v76 + 16) = v88 + 1;
      v89 = v76 + 16 * v88;
      *(v89 + 32) = v84;
      *(v89 + 40) = v86;
      v78 += v129;
      --v75;
    }

    while (v75);

    v20 = v115;
    v65 = v125;
    v53 = v126;
    v36 = v114;
  }

  else
  {
  }

  sub_219BE6934();
  v90 = (v131[0] >> 58) & 0x3CLL | (v131[0] >> 1) & 3;

  v91 = **(&unk_278242398 + v90);
  v92 = sub_219BE0674();
  v93 = *(v92 - 8);
  v94 = v101;
  (*(v93 + 104))(v101, v91, v92);
  (*(v93 + 56))(v94, 0, 1, v92);
  sub_219BE6934();
  v95 = sub_21943FD74();

  if (v95)
  {
    v96 = [v95 identifier];
    swift_unknownObjectRelease();
    sub_219BF5414();
  }

  v97 = sub_219BDF474();
  (*(*(v97 - 8) + 56))(v105, 1, 1, v97);
  v98 = v102;
  sub_219BE15E4();
  sub_2186F1034(&unk_280EE7FB0, MEMORY[0x277D2F590]);
  v99 = v104;
  sub_219BDD1F4();

  (*(v103 + 8))(v98, v99);
  (*(v112 + 8))(v111, v113);
  (*(v53 + 8))(v65, v20);
LABEL_34:
  sub_218B58C44(v120, sub_21898BBC4);
  return (*(v117 + 8))(v121, v36);
}