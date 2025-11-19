uint64_t sub_2190D39C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a2;
  v34 = a3;
  v6 = type metadata accessor for HistoryFeedGroup();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ArticleListHistoryFeedGroup();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v31 - v14;
  v16 = type metadata accessor for HistoryFeedSectionDescriptor();
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954178();
  v20 = v19;
  sub_219BE6934();
  if ((*(v10 + 48))(v18, 1, v9) == 1)
  {
    v21 = *(v20 - 8);
    (*(v21 + 16))(a4, a1, v20);
  }

  else
  {
    sub_218B73F4C(v18, v15);
    v22 = *v15;
    v23 = *(v15 + 1);
    v24 = *(v9 + 20);
    v25 = sub_219BED8D4();
    (*(*(v25 - 8) + 16))(&v13[v24], &v15[v24], v25);
    *v13 = v22;
    *(v13 + 1) = v23;
    v26 = *(v9 + 24);
    v32 = a4;
    *&v13[v26] = v33;
    refreshed = type metadata accessor for HistoryFeedRefreshBlueprintModifier();
    v28 = v34;
    __swift_project_boxed_opaque_existential_1((v34 + *(refreshed + 20)), *(v34 + *(refreshed + 20) + 24));
    sub_218CFCC10(v13, v8);
    v29 = *(type metadata accessor for HistoryFeedRefreshResult() + 28);

    a4 = v32;

    sub_2195D2344(v8, v28 + v29, a4);
    sub_2190D4020(v8, type metadata accessor for HistoryFeedGroup);
    sub_2190D4020(v13, type metadata accessor for ArticleListHistoryFeedGroup);
    sub_2190D4020(v15, type metadata accessor for ArticleListHistoryFeedGroup);
    v21 = *(v20 - 8);
  }

  return (*(v21 + 56))(a4, 0, 1, v20);
}

uint64_t sub_2190D3D30(uint64_t a1)
{
  v2 = sub_2190D3E2C(&qword_27CC15F28, type metadata accessor for HistoryFeedRefreshBlueprintModifier);

  return MEMORY[0x2821D4040](a1, v2);
}

uint64_t sub_2190D3E2C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2190D3EBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for HistoryFeedSectionDescriptor();
    v8[1] = type metadata accessor for HistoryFeedModel(255);
    v8[2] = sub_2190D3E2C(&qword_280EB4200, type metadata accessor for HistoryFeedSectionDescriptor);
    v8[3] = sub_2190D3E2C(&qword_280ED8650, type metadata accessor for HistoryFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_2190D3FB0()
{
  result = qword_27CC15F20;
  if (!qword_27CC15F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15F20);
  }

  return result;
}

uint64_t sub_2190D4020(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2190D4094()
{
  result = qword_27CC15F30;
  if (!qword_27CC15F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15F30);
  }

  return result;
}

id AppEntityAssociator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppEntityAssociator.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppEntityAssociator();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_2190D4150()
{
  sub_218AC1C94(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_219BF1634();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectRetain();
  sub_219BF1624();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_2190D42D8(v2);
  }

  (*(v4 + 32))(v6, v2, v3);
  sub_2190D4334();
  sub_219BF6354();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2190D42D8(uint64_t a1)
{
  sub_218AC1C94(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2190D4334()
{
  result = qword_280E90868;
  if (!qword_280E90868)
  {
    sub_219BF1634();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E90868);
  }

  return result;
}

id AppEntityAssociator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppEntityAssociator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2190D4724@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t PuzzleContinuePlayingConfig.deinit()
{
  v1 = OBJC_IVAR____TtC7NewsUI227PuzzleContinuePlayingConfig_feedContext;
  v2 = sub_219BF0BD4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC7NewsUI227PuzzleContinuePlayingConfig_formatContent;
  v4 = sub_219BF1904();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_unknownObjectRelease();

  v5 = OBJC_IVAR____TtC7NewsUI227PuzzleContinuePlayingConfig_feedKind;
  v6 = sub_219BF0634();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t PuzzleContinuePlayingConfig.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC7NewsUI227PuzzleContinuePlayingConfig_feedContext;
  v2 = sub_219BF0BD4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC7NewsUI227PuzzleContinuePlayingConfig_formatContent;
  v4 = sub_219BF1904();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_unknownObjectRelease();

  v5 = OBJC_IVAR____TtC7NewsUI227PuzzleContinuePlayingConfig_feedKind;
  v6 = sub_219BF0634();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t PuzzleContinuePlayingModule.createPlugin(config:)(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  type metadata accessor for PuzzleContinuePlayingViewController();
  swift_unownedRetainStrong();
  swift_unownedRetain();

  swift_unownedRetain();

  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = v1;
  v4 = sub_219BE1E04();

  result = swift_unownedRelease();
  if (v4)
  {
    sub_2190D5034();
    sub_219BF17D4();
    sub_219BEA8C4();
    swift_allocObject();
    v6 = sub_219BEA8A4();

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2190D4C10(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218809C38();
  swift_unknownObjectRetain();
  sub_219BE1B84();
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_unownedRetainStrong();

  sub_219BDD224();

  sub_219BDD274();
  sub_219BE1B94();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for PuzzleContinuePlayingConfig();
  return sub_219BE1B94();
}

uint64_t PuzzleContinuePlayingModule.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return v0;
}

uint64_t PuzzleContinuePlayingModule.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_2190D4E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = swift_allocObject();

  return sub_2190D4EB4(a1, a2, a3, a4, a5, a6, a7, v17, a9, a10);
}

uint64_t sub_2190D4EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = *a7;
  v18 = a7[1];
  v19 = OBJC_IVAR____TtC7NewsUI227PuzzleContinuePlayingConfig_feedContext;
  v20 = sub_219BF0BD4();
  (*(*(v20 - 8) + 32))(a8 + v19, a1, v20);
  v21 = OBJC_IVAR____TtC7NewsUI227PuzzleContinuePlayingConfig_formatContent;
  v22 = sub_219BF1904();
  (*(*(v22 - 8) + 32))(a8 + v21, a2, v22);
  v23 = (a8 + OBJC_IVAR____TtC7NewsUI227PuzzleContinuePlayingConfig_layoutOptionsProvider);
  *v23 = a3;
  v23[1] = a10;
  *(a8 + OBJC_IVAR____TtC7NewsUI227PuzzleContinuePlayingConfig_log) = a4;
  v24 = OBJC_IVAR____TtC7NewsUI227PuzzleContinuePlayingConfig_feedKind;
  v25 = sub_219BF0634();
  (*(*(v25 - 8) + 32))(a8 + v24, a5, v25);
  *(a8 + OBJC_IVAR____TtC7NewsUI227PuzzleContinuePlayingConfig_puzzleType) = a6;
  v26 = (a8 + OBJC_IVAR____TtC7NewsUI227PuzzleContinuePlayingConfig_knobConfig);
  *v26 = v17;
  v26[1] = v18;
  return a8;
}

unint64_t sub_2190D5034()
{
  result = qword_280E9CB10;
  if (!qword_280E9CB10)
  {
    type metadata accessor for PuzzleContinuePlayingViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9CB10);
  }

  return result;
}

uint64_t type metadata accessor for PuzzleContinuePlayingConfig()
{
  result = qword_280EB7A60;
  if (!qword_280EB7A60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2190D50E0()
{
  result = sub_219BF0BD4();
  if (v1 <= 0x3F)
  {
    result = sub_219BF1904();
    if (v2 <= 0x3F)
    {
      result = sub_219BF0634();
      if (v3 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_2190D528C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, char *), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v29 = a3;
  v31 = a2;
  sub_2190D6F8C();
  v30 = v8;
  MEMORY[0x28223BE20](v8);
  v35 = a1;
  v10 = a4 + 64;
  v11 = 1 << *(a4 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a4 + 64);
  v14 = (v11 + 63) >> 6;
  v32 = a4;
  v15 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  v17 = 0;
  if (v13)
  {
    while (1)
    {
      v18 = v15;
      v28 = a1;
      v33 = v5;
      v19 = v17;
LABEL_9:
      v20 = __clz(__rbit64(v13)) | (v19 << 6);
      v21 = *(v32 + 56);
      v22 = (*(v32 + 48) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      v25 = v21 + *(*(type metadata accessor for SportsOnboardingTagFeedGroupKnobs() - 8) + 72) * v20;
      v15 = v18;
      sub_2190D6FF8(v25, &v18[*(v30 + 48)], type metadata accessor for SportsOnboardingTagFeedGroupKnobs);
      *v18 = v23;
      *(v18 + 1) = v24;

      v26 = v33;
      v31(&v34, &v35, v18);
      v5 = v26;
      if (v26)
      {
        break;
      }

      v13 &= v13 - 1;
      result = sub_2190D70C8(v18, sub_2190D6F8C);
      a1 = v34;
      v35 = v34;
      v17 = v19;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    sub_2190D70C8(v18, sub_2190D6F8C);

    return v28;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v14)
      {

        return a1;
      }

      v13 = *(v10 + 8 * v19);
      ++v17;
      if (v13)
      {
        v18 = v15;
        v28 = a1;
        v33 = v5;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2190D54F8(void *a1)
{
  type metadata accessor for AffinityTagFeedGroupKnobs();

  v2 = sub_219BEF264();

  v3 = [objc_msgSend(a1 backingTag)];
  v4 = swift_unknownObjectRelease();
  if (v3)
  {
    MEMORY[0x28223BE20](v4);
    sub_219BE3204();
    *(swift_allocObject() + 16) = v2;
    v5 = sub_219BE2E54();
    type metadata accessor for TagFeedPoolService();
    v6 = sub_219BE2F94();

    return v6;
  }

  v8 = [objc_msgSend(a1 backingTag)];
  swift_unknownObjectRelease();
  if (!v8)
  {
    if (*(v2 + 16))
    {
      sub_2190D6C8C(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_219C09BA0;
      v11 = [objc_msgSend(a1 backingTag)];
      swift_unknownObjectRelease();
      v12 = sub_219BF5414();
      v14 = v13;

      *(inited + 32) = v12;
      *(inited + 40) = v14;
      sub_2194AD74C(inited);
      swift_setDeallocating();
      sub_2189AD3D8(inited + 32);
      sub_2190D6C8C(0, &qword_27CC15FA8, &type metadata for AffinityCurationLists, MEMORY[0x277D6CF30]);
      swift_allocObject();
      return sub_219BE3014();
    }

    else
    {

      sub_2190D6CDC();
      v6 = v15;
      sub_2190D6D70(&qword_27CC15FC0, sub_2190D6CDC);
      swift_allocError();
      v17 = v16;
      *v16 = [a1 feedConfiguration];
      v17[1] = 0xD000000000000010;
      v17[2] = 0x8000000219D0B020;
      (*(*(v6 - 8) + 104))(v17, *MEMORY[0x277D31FB8], v6);
      swift_willThrow();
    }

    return v6;
  }

  v9 = sub_2190D6DB8(v8);

  swift_unknownObjectRelease();
  return v9;
}

char *sub_2190D5904(unint64_t *a1, uint64_t a2)
{
  v52 = a2;
  v51 = type metadata accessor for TagFeedCurationRequest();
  v53 = *(v51 - 8);
  v4 = *(v53 + 64);
  v5 = MEMORY[0x28223BE20](v51);
  MEMORY[0x28223BE20](v5);
  v7 = &v49 - v6;
  v8 = *a1;
  v50 = a1[1];
  v9 = a1[2];
  if (v8 >> 62)
  {
    v10 = sub_219BF7214();
  }

  else
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v57 = v7;
  v58 = v2;
  v55 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v9;
  v54 = v4;
  if (v10)
  {
    v59 = MEMORY[0x277D84F90];

    result = sub_218C35E18(0, v10 & ~(v10 >> 63), 0);
    if (v10 < 0)
    {
      __break(1u);
      return result;
    }

    v12 = 0;
    v13 = v59;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x21CECE0F0](v12, v8);
      }

      else
      {
        v14 = *(v8 + 8 * v12 + 32);
        swift_unknownObjectRetain();
      }

      v59 = v13;
      v16 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_218C35E18((v15 > 1), v16 + 1, 1);
        v13 = v59;
      }

      ++v12;
      *(v13 + 16) = v16 + 1;
      v17 = v13 + 16 * v16;
      *(v17 + 32) = v14;
      *(v17 + 40) = 0;
    }

    while (v10 != v12);
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
  }

  v18 = v50;
  v19 = v50[2];
  v20 = MEMORY[0x277D84F90];
  if (v19)
  {
    v59 = MEMORY[0x277D84F90];
    sub_218C35E48(0, v19, 0);
    v20 = v59;
    v21 = v18 + 5;
    do
    {
      v22 = *(v21 - 1);
      v23 = *v21;
      v59 = v20;
      v25 = *(v20 + 16);
      v24 = *(v20 + 24);

      if (v25 >= v24 >> 1)
      {
        sub_218C35E48((v24 > 1), v25 + 1, 1);
        v20 = v59;
      }

      *(v20 + 16) = v25 + 1;
      v26 = (v20 + 24 * v25);
      v26[4] = v22;
      v26[5] = v23;
      v26[6] = 0;
      v21 += 2;
      --v19;
    }

    while (v19);
  }

  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  v27 = *MEMORY[0x277D30BC0];
  v28 = qword_280F61708;
  v50 = v27;
  v29 = sub_2194AD74C(&unk_282A24130);
  swift_arrayDestroy();
  v30 = sub_2194AD74C(&unk_282A24170);
  swift_arrayDestroy();
  v31 = v51;
  v32 = *(v51 + 44);
  v33 = *MEMORY[0x277D32950];
  v34 = sub_219BEFBD4();
  v35 = v57;
  (*(*(v34 - 8) + 104))(&v57[v32], v33, v34);
  v36 = *(v31 + 48);
  v37 = *MEMORY[0x277D32840];
  v38 = sub_219BEF9C4();
  (*(*(v38 - 8) + 104))(&v35[v36], v37, v38);
  *v35 = v13;
  *(v35 + 1) = v20;
  v39 = v50;
  *(v35 + 2) = v28;
  *(v35 + 3) = v39;
  *(v35 + 4) = v29;
  *(v35 + 5) = v30;
  v40 = MEMORY[0x277D84FA0];
  *(v35 + 6) = MEMORY[0x277D84FA0];
  *(v35 + 7) = v40;
  v41 = *(v52 + 248);
  sub_219BF6214();
  sub_219BE5314();
  sub_2190D6C8C(0, &unk_280EE6E20, &type metadata for TagFeedCurationResult, MEMORY[0x277D6CF30]);
  v52 = v42;
  v43 = v55;
  sub_2190D6FF8(v35, v55, type metadata accessor for TagFeedCurationRequest);
  v44 = *(v53 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = v41;
  sub_2190D7060(v43, v45 + ((v44 + 24) & ~v44), type metadata accessor for TagFeedCurationRequest);

  sub_219BE2F54();
  sub_2190D6FF8(v35, v43, type metadata accessor for TagFeedCurationRequest);
  v46 = swift_allocObject();
  sub_2190D7060(v43, v46 + ((v44 + 16) & ~v44), type metadata accessor for TagFeedCurationRequest);
  v47 = sub_219BE2E54();
  sub_219BE3024();

  v59 = v56;
  sub_2190D6AE4(0, &qword_280EE69E0, sub_2186E2394, MEMORY[0x277D6CF30]);
  swift_allocObject();
  sub_219BE3014();
  v48 = sub_219BE31C4();

  sub_2190D70C8(v35, type metadata accessor for TagFeedCurationRequest);
  return v48;
}

uint64_t sub_2190D5F1C(void *a1, uint64_t a2)
{
  v41 = a2;
  v59 = sub_219BF1934();
  v3 = *(v59 - 8);
  v4 = MEMORY[0x28223BE20](v59);
  v45 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v52 = &v39 - v6;
  v58 = type metadata accessor for CuratedTagFeedGroupConfigData();
  v7 = MEMORY[0x28223BE20](v58);
  v44 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v51 = &v39 - v9;
  v10 = type metadata accessor for TagFeedCuration(0);
  v49 = *(v10 - 8);
  v50 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v43 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v11);
  v15 = &v39 - v14;
  v16 = *a1;
  v48 = *(*a1 + 16);
  if (v48)
  {
    v17 = 0;
    v42 = a1[3];
    v40 = OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_subscriptionController;
    v56 = (v3 + 8);
    v57 = (v3 + 16);
    v46 = MEMORY[0x277D84F90];
    v47 = v16;
    v55 = &v39 - v14;
    while (v17 < *(v16 + 16))
    {
      v18 = (*(v49 + 80) + 32) & ~*(v49 + 80);
      v53 = *(v49 + 72);
      v54 = v18;
      sub_2190D6FF8(v16 + v18 + v53 * v17, v15, type metadata accessor for TagFeedCuration);
      sub_218A27A84();
      v19 = v51;
      sub_219BEDD14();
      v20 = *v57;
      v21 = v52;
      v22 = v59;
      (*v57)(v52, v19 + *(v58 + 20), v59);
      sub_2190D70C8(v19, type metadata accessor for CuratedTagFeedGroupConfigData);
      sub_219BF1784();
      v24 = v23;
      v25 = *v56;
      (*v56)(v21, v22);
      if (v24 && (v26 = *(v41 + v40), v27 = sub_219BF53D4(), , v28 = [v26 hasMutedSubscriptionForTagID_], v27, (v28 & 1) != 0) || (v29 = v44, sub_219BEDD14(), v30 = v59, v31 = v45, v20(v45, v29 + *(v58 + 20), v59), sub_2190D70C8(v29, type metadata accessor for CuratedTagFeedGroupConfigData), v32 = sub_219BF1734(), v25(v31, v30), LOBYTE(v30) = sub_2190D6964(v32, v42), , (v30 & 1) != 0))
      {
        v15 = v55;
        result = sub_2190D70C8(v55, type metadata accessor for TagFeedCuration);
      }

      else
      {
        v33 = v55;
        sub_2190D7060(v55, v43, type metadata accessor for TagFeedCuration);
        v34 = v46;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v36 = v34;
        v60 = v34;
        v15 = v33;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_218C35E68(0, *(v36 + 16) + 1, 1);
          v36 = v60;
        }

        v38 = *(v36 + 16);
        v37 = *(v36 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_218C35E68(v37 > 1, v38 + 1, 1);
          v36 = v60;
        }

        *(v36 + 16) = v38 + 1;
        v46 = v36;
        result = sub_2190D7060(v43, v36 + v54 + v38 * v53, type metadata accessor for TagFeedCuration);
      }

      ++v17;
      v16 = v47;
      if (v48 == v17)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v46 = MEMORY[0x277D84F90];
LABEL_15:
    v60 = v46;
    sub_2190D6AE4(0, &unk_280EE6B60, sub_2190D6AB0, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }

  return result;
}

uint64_t sub_2190D6480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(*(*(a2 + 24) + 24) + 16) + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsOnboardingKnobs);
  v8[2] = a3;

  v5 = sub_2190D528C(0, sub_2190D6F70, v8, v4);

  __swift_project_boxed_opaque_existential_1((a1 + 336), *(a1 + 360));
  v6 = off_282A97438;
  type metadata accessor for MySportsTagService();
  return v6(v5, 1);
}

uint64_t sub_2190D655C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v7 = *a1 >> 62;
  if (v7)
  {
    v30 = *a1;
    v31 = sub_219BF7214();
    v6 = v30;
    v8 = v31;
  }

  else
  {
    v8 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v10 = v6;
    v37 = MEMORY[0x277D84F90];
    result = sub_21870B65C(0, v8 & ~(v8 >> 63), 0);
    if (v8 < 0)
    {
      __break(1u);
      return result;
    }

    v32 = a2;
    v33 = v7;
    v34 = a3;
    v35 = v3;
    v12 = 0;
    v9 = v37;
    v6 = v10;
    v36 = v10 & 0xC000000000000001;
    v13 = v10;
    v14 = v8;
    do
    {
      if (v36)
      {
        v15 = MEMORY[0x21CECE0F0](v12, v6);
      }

      else
      {
        v15 = *(v6 + 8 * v12 + 32);
        swift_unknownObjectRetain();
      }

      v16 = [v15 identifier];
      v17 = sub_219BF5414();
      v19 = v18;
      swift_unknownObjectRelease();

      v21 = *(v37 + 16);
      v20 = *(v37 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_21870B65C((v20 > 1), v21 + 1, 1);
      }

      ++v12;
      *(v37 + 16) = v21 + 1;
      v22 = v37 + 16 * v21;
      *(v22 + 32) = v17;
      *(v22 + 40) = v19;
      v6 = v13;
    }

    while (v14 != v12);
    a3 = v34;
    a2 = v32;
    v7 = v33;
  }

  v23 = v6;
  v24 = sub_219A09690(v6);

  sub_2191ED3E8(v24);
  if (v7)
  {
    sub_2186D8870();

    v28 = sub_219BF7534();

    v23 = v28;
  }

  else
  {
    v25 = v23 & 0xFFFFFFFFFFFFFF8;

    sub_219BF7924();
    sub_2186D8870();
    if (!swift_dynamicCastMetatype())
    {
      v26 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v26)
      {
        v27 = v25 + 32;
        while (swift_dynamicCastObjCProtocolConditional())
        {
          v27 += 8;
          if (!--v26)
          {
            goto LABEL_21;
          }
        }

        v23 = v25 | 1;
      }
    }
  }

LABEL_21:
  v29 = sub_218845F78(v9);

  *a3 = v23;
  a3[1] = a2;
  a3[2] = v29;
  return result;
}

uint64_t sub_2190D67E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_2190D6F8C();
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SportsOnboardingTagFeedGroupKnobs();
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  sub_2190D6FF8(a2, v9, sub_2190D6F8C);

  sub_2190D7060(&v9[*(v7 + 56)], v12, type metadata accessor for SportsOnboardingTagFeedGroupKnobs);
  result = sub_219BEF524();
  v15 = v13 + v17;
  if (__OFADD__(v13, v17))
  {
    __break(1u);
  }

  else
  {
    result = sub_2190D70C8(v12, type metadata accessor for SportsOnboardingTagFeedGroupKnobs);
    *a3 = v15;
  }

  return result;
}

uint64_t sub_2190D6964(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a1 + 32;
  v6 = a2 + 56;
  while (1)
  {
    if (!*(a2 + 16))
    {
      goto LABEL_5;
    }

    v7 = (v5 + 16 * v4);
    v9 = *v7;
    v8 = v7[1];
    sub_219BF7AA4();

    sub_219BF5524();
    v10 = sub_219BF7AE4();
    v11 = -1 << *(a2 + 32);
    v12 = v10 & ~v11;
    if ((*(v6 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
    {
      break;
    }

LABEL_4:

LABEL_5:
    if (++v4 == v2)
    {
      return 1;
    }
  }

  v13 = ~v11;
  while (1)
  {
    v14 = (*(a2 + 48) + 16 * v12);
    v15 = *v14 == v9 && v14[1] == v8;
    if (v15 || (sub_219BF78F4() & 1) != 0)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v6 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  return 0;
}

void sub_2190D6AE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2190D6B48(uint64_t a1)
{
  v4 = *(type metadata accessor for TagFeedCurationRequest() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2187608D4;

  return sub_218E5B864(a1, v6, v1 + v5);
}

uint64_t sub_2190D6C2C()
{
  type metadata accessor for TagFeedCurationRequest();

  return sub_218E5D138();
}

void sub_2190D6C8C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2190D6CDC()
{
  if (!qword_27CC15FB0)
  {
    type metadata accessor for TagFeedServiceConfig();
    sub_2190D6D70(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    v0 = sub_219BEE2E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC15FB0);
    }
  }
}

uint64_t sub_2190D6D70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2190D6DB8(void *a1)
{
  v2 = [a1 sportsParentTagIdentifiers];
  if (v2)
  {
    v3 = v2;
    v4 = sub_219BF5924();
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  sub_2191ED3E8(v4);
  sub_2190D6C8C(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  v6 = [a1 identifier];
  v7 = sub_219BF5414();
  v9 = v8;

  *(inited + 32) = v7;
  *(inited + 40) = v9;
  sub_218845F78(inited);
  swift_setDeallocating();
  sub_2189AD3D8(inited + 32);
  sub_2190D6C8C(0, &qword_27CC15FA8, &type metadata for AffinityCurationLists, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

void sub_2190D6F8C()
{
  if (!qword_280E8F8F0)
  {
    type metadata accessor for SportsOnboardingTagFeedGroupKnobs();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8F8F0);
    }
  }
}

uint64_t sub_2190D6FF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2190D7060(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2190D70C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2190D7150(uint64_t a1)
{
  v2 = sub_2190D7C24();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_2190D7190()
{
  result = qword_27CC15FC8;
  if (!qword_27CC15FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15FC8);
  }

  return result;
}

uint64_t sub_2190D722C(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v67 = a3;
  v68 = a2;
  sub_2190D7B08(0, &qword_280EE4B20, MEMORY[0x277D6DF88]);
  v66 = v6;
  v65 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v64 = v60 - v7;
  sub_218954350();
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8);
  v76 = v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v77 = v60 - v13;
  sub_218B5B3A0();
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BCDC();
  MEMORY[0x28223BE20](v18 - 8);
  v60[3] = v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954408();
  v21 = v20;
  v22 = *(v20 - 8);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v61 = v60 - v26;
  v60[2] = sub_219BEB1B4();
  v60[1] = v27;
  v63 = v22;
  v28 = *(v22 + 16);
  v62 = a1;
  v28(v25, a1, v21);
  sub_2186CC2B4(&qword_280EE36E0, sub_218954408);
  sub_219BF56A4();
  v29 = *(v15 + 44);
  sub_2186CC2B4(&unk_280EE36D0, sub_218954408);
  sub_219BF5E84();
  if (*&v17[v29] != v78[0])
  {
    v37 = (v10 + 16);
    v38 = v10;
    v39 = a4;
    v40 = a4 + 56;
    v69 = (v38 + 8);
    v71 = v38;
    v72 = v37;
    v75 = (v38 + 32);
    v30 = MEMORY[0x277D84F90];
    v73 = v29;
    v74 = v9;
    v70 = v21;
    while (1)
    {
      v41 = sub_219BF5EC4();
      (*v72)(v77);
      v41(v78, 0);
      sub_219BF5E94();
      sub_219BE6934();
      v42 = sub_2194444D4(v78[0]);

      if (v42)
      {
        v43 = [v42 identifier];
        v44 = sub_219BF5414();
        v46 = v45;

        if (*(v39 + 16))
        {
          sub_219BF7AA4();
          sub_219BF5524();
          v47 = sub_219BF7AE4();
          v48 = -1 << *(v39 + 32);
          v49 = v47 & ~v48;
          if ((*(v40 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49))
          {
            v50 = ~v48;
            while (1)
            {
              v51 = (*(v39 + 48) + 16 * v49);
              v52 = *v51 == v44 && v51[1] == v46;
              if (v52 || (sub_219BF78F4() & 1) != 0)
              {
                break;
              }

              v49 = (v49 + 1) & v50;
              if (((*(v40 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
              {
                goto LABEL_18;
              }
            }

            swift_unknownObjectRelease();
            v9 = v74;
            (*v69)(v77, v74);
            v21 = v70;
            goto LABEL_7;
          }

LABEL_18:

          swift_unknownObjectRelease();
          v21 = v70;
        }

        else
        {

          swift_unknownObjectRelease();
        }

        v9 = v74;
      }

      v53 = *v75;
      (*v75)(v76, v77, v9);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v79 = v30;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_218C357A0(0, *(v30 + 16) + 1, 1);
        v30 = v79;
      }

      v56 = *(v30 + 16);
      v55 = *(v30 + 24);
      if (v56 >= v55 >> 1)
      {
        sub_218C357A0(v55 > 1, v56 + 1, 1);
        v30 = v79;
      }

      *(v30 + 16) = v56 + 1;
      v57 = v30 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v56;
      v9 = v74;
      v53(v57, v76, v74);
LABEL_7:
      sub_219BF5E84();
      if (*&v17[v73] == v78[0])
      {
        goto LABEL_3;
      }
    }
  }

  v30 = MEMORY[0x277D84F90];
LABEL_3:
  sub_2190D7BC8(v17);
  v31 = sub_2186CC2B4(&qword_280EE5870, sub_218954350);
  v32 = sub_2186CC2B4(&qword_280EE5880, sub_218954350);
  MEMORY[0x21CEB9170](v30, v9, v31, v32);
  type metadata accessor for TagFeedModel(0);
  sub_2186F7410();
  sub_2186CC2B4(&unk_280EDE820, type metadata accessor for TagFeedModel);
  v33 = v61;
  sub_219BEB1A4();
  v34 = sub_219759E94();
  sub_219BEEFF4();
  sub_219BEEFE4();
  type metadata accessor for TagFeedServiceConfig();
  sub_2186CC2B4(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
  v35 = sub_219BEEFC4();

  v36 = 0;
  if (v35)
  {
    v36 = sub_219BEDC74();
  }

  else
  {
    v78[1] = 0;
    v78[2] = 0;
  }

  v78[0] = v35;
  v78[3] = v36;
  sub_219BEB2C4();
  sub_21885AB78(v34);
  v58 = v64;
  sub_219BE85C4();
  v68(v58);
  (*(v65 + 8))(v58, v66);
  return (*(v63 + 8))(v33, v21);
}

void sub_2190D7B08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TagFeedSectionDescriptor;
    v8[1] = type metadata accessor for TagFeedModel(255);
    v8[2] = sub_2186F7410();
    v8[3] = sub_2186CC2B4(&unk_280EDE820, type metadata accessor for TagFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_2190D7BC8(uint64_t a1)
{
  sub_218B5B3A0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2190D7C24()
{
  result = qword_27CC15FD0;
  if (!qword_27CC15FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15FD0);
  }

  return result;
}

uint64_t sub_2190D7CA0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v39 = type metadata accessor for AudioHistoryFeedConfig();
  MEMORY[0x28223BE20](v39);
  v40 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x277D83D88];
  sub_2186DD818(0, &qword_280E91B80, MEMORY[0x277D32028], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v38 - v6;
  sub_2186DD818(0, &qword_280EE7D08, sub_2190D87C8, v4);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v38 - v8;
  sub_2186DD818(0, &qword_280EE9C40, MEMORY[0x277CC9578], v4);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  sub_2190D894C(0, &qword_280EE72C0, MEMORY[0x277D6CE98]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v17 = &v38 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190D8894();
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
    sub_2190D8A88(&unk_280EE9C70, MEMORY[0x277CC9578]);
    v21 = v17;
    sub_219BE2C94();
    v38 = v12;
    sub_2190D87C8();
    v23 = v22;
    v45 = 1;
    sub_2190D8A88(&qword_280EE7D18, sub_2190D87C8);
    v24 = v9;
    sub_219BE2C94();
    v25 = v19;
    v26 = *(v23 - 8);
    if ((*(v26 + 48))(v24, 1, v23) == 1)
    {
      sub_2187105EC(v24, &qword_280EE7D08, sub_2190D87C8);
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
    sub_2190D8A88(&qword_280E91B88, MEMORY[0x277D32028]);
    sub_219BE2C94();
    v33 = MEMORY[0x277CC9578];
    v34 = v27;
    v35 = v38;
    sub_21872ABDC(v38, v30, &qword_280EE9C40, MEMORY[0x277CC9578]);
    if (!v34)
    {
      v34 = MEMORY[0x277D84F90];
    }

    sub_2187105EC(v35, &qword_280EE9C40, v33);
    (*(v25 + 8))(v21, v14);
    v36 = v20;
    v37 = v39;
    *(v30 + *(v39 + 20)) = v34;
    sub_2189A1E30(v41, v30 + *(v37 + 24));
    sub_2190D88E8(v30, v36);
    v31 = v43;
  }

  return __swift_destroy_boxed_opaque_existential_1(v31);
}

uint64_t sub_2190D8294(void *a1)
{
  v3 = v1;
  sub_2190D894C(0, &qword_27CC15FE0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190D8894();
  sub_219BF7B44();
  v13 = 0;
  sub_219BDBD34();
  sub_2190D8A88(&qword_280EE9CA0, MEMORY[0x277CC9578]);
  sub_219BF77E4();
  if (!v2)
  {
    v12 = *(v3 + *(type metadata accessor for AudioHistoryFeedConfig() + 20));
    v11[15] = 1;
    sub_2186DD818(0, &qword_280E8F0A8, type metadata accessor for AudioHistoryFeedGroupConfig, MEMORY[0x277D83940]);
    sub_2190D89B0();
    sub_219BF7834();
    v11[14] = 2;
    sub_219BEE5B4();
    sub_2190D8A88(&unk_280E91B90, MEMORY[0x277D32028]);
    sub_219BF77E4();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2190D8524(uint64_t a1)
{
  v2 = sub_2190D8894();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2190D8560(uint64_t a1)
{
  v2 = sub_2190D8894();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2190D8618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v8 = MEMORY[0x277CC9578];
  sub_2186DD818(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v13 - v10;
  sub_21872ABDC(v5, &v13 - v10, &qword_280EE9C40, v8);
  sub_21872ABDC(v5 + *(a2 + 24), a3 + *(a2 + 24), &qword_280E91B80, MEMORY[0x277D32028]);
  sub_21872ABDC(v11, a3, &qword_280EE9C40, v8);

  result = sub_2187105EC(v11, &qword_280EE9C40, v8);
  *(a3 + *(a2 + 20)) = a1;
  return result;
}

void sub_2190D87C8()
{
  if (!qword_280EE7D10)
  {
    type metadata accessor for AudioHistoryFeedGroupConfig();
    sub_2190D8A88(&qword_280EB9448, type metadata accessor for AudioHistoryFeedGroupConfig);
    sub_2190D8A88(&qword_280EB9450, type metadata accessor for AudioHistoryFeedGroupConfig);
    v0 = sub_219BE1E54();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE7D10);
    }
  }
}

unint64_t sub_2190D8894()
{
  result = qword_280EC8C18[0];
  if (!qword_280EC8C18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EC8C18);
  }

  return result;
}

uint64_t sub_2190D88E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioHistoryFeedConfig();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2190D894C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2190D8894();
    v7 = a3(a1, &type metadata for AudioHistoryFeedConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2190D89B0()
{
  result = qword_27CC15FE8;
  if (!qword_27CC15FE8)
  {
    sub_2186DD818(255, &qword_280E8F0A8, type metadata accessor for AudioHistoryFeedGroupConfig, MEMORY[0x277D83940]);
    sub_2190D8A88(&qword_280EB9450, type metadata accessor for AudioHistoryFeedGroupConfig);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15FE8);
  }

  return result;
}

uint64_t sub_2190D8A88(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2190D8AE4()
{
  result = qword_27CC15FF0;
  if (!qword_27CC15FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15FF0);
  }

  return result;
}

unint64_t sub_2190D8B3C()
{
  result = qword_280EC8C08;
  if (!qword_280EC8C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC8C08);
  }

  return result;
}

unint64_t sub_2190D8B94()
{
  result = qword_280EC8C10;
  if (!qword_280EC8C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC8C10);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TagViewBadge(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 18))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TagViewBadge(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
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

  *(result + 18) = v3;
  return result;
}

uint64_t sub_2190D8C38(uint64_t a1)
{
  if (*(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2190D8C54(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 17) = 1;
  }

  else
  {
    *(result + 17) = 0;
  }

  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for TagAccessorySetting(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFFD)
  {
    if ((a2 + 33550339) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16773123;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16773123;
      }
    }
  }

  v4 = (*a1 & 0xFC | (((*(a1 + 2) >> 1) & 0xF) << 8) | (*(a1 + 2) >> 5) & 3) ^ 0xFFF;
  if (v4 >= 0xFFC)
  {
    v4 = -1;
  }

  return v4 + 1;
}

uint64_t storeEnumTagSinglePayload for TagAccessorySetting(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33550339) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFFC)
  {
    v3 = 0;
  }

  if (a2 > 0xFFC)
  {
    *result = a2 - 4093;
    *(result + 2) = (a2 - 4093) >> 16;
    if (v3)
    {
      v4 = ((a2 - 4093) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = -a2 & 0xFC;
      *(result + 2) = (-a2 & 0xFC | (((-a2 & 0xFFC) << 9) - (a2 << 21)) & 0x7E00FC) >> 16;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_2190D8DD0(unsigned __int16 *a1)
{
  v1 = *(a1 + 2);
  v2 = *a1 | (v1 << 16);
  v3 = v1 >> 7;
  v4 = (v1 >> 5) & 3;
  v5 = (v2 & 3 | (4 * ((v2 >> 8) & 0x1FF)) & 0xFFFFF7FF | ((v3 & 1) << 11)) + 3;
  if (v4 == 3)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

unsigned __int16 *sub_2190D8E04(unsigned __int16 *result)
{
  v1 = *result;
  v2 = (v1 | (*(result + 2) << 16)) & 0xFF9FFFFF;
  *result = v1;
  *(result + 2) = BYTE2(v2);
  return result;
}

unsigned __int16 *sub_2190D8E24(unsigned __int16 *result, unsigned int a2)
{
  if (a2 < 3)
  {
    v2 = (*result | (*(result + 2) << 16)) & 0xFF81FF03 | (a2 << 21);
  }

  else
  {
    v2 = ((a2 - 3) << 6) & 0x1FF00 | (a2 - 3) & 3 | (((a2 - 3) >> 11) << 23) | 0x600000;
  }

  *result = v2;
  *(result + 2) = BYTE2(v2);
  return result;
}

uint64_t sub_2190D8E84(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2190D8ECC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_2190D8F20(uint64_t a1, uint64_t a2, __int16 a3)
{
  if ((a3 & 0x100) != 0)
  {
    return 0;
  }

  if ((a3 & 1) != 0 || a2 >= a1)
  {
    return sub_219BF7894();
  }

  v4 = sub_219BF7894();
  MEMORY[0x21CECC330](43, 0xE100000000000000);
  return v4;
}

id sub_2190D8FB8()
{
  if (sub_219BED0C4())
  {
    v0 = [objc_opt_self() labelColor];

    return v0;
  }

  else
  {
    if (qword_280E8DA88 != -1)
    {
      swift_once();
    }

    v2 = qword_280F617F8;

    return v2;
  }
}

BOOL sub_2190D9050(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 64))();
  if ((v4 & 0x100) == 0)
  {
    return 0;
  }

  return !v4 && (v2 | v3) == 0;
}

uint64_t sub_2190D909C()
{
  v1 = v0;
  v2 = sub_219BE16E4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277D2F818])
  {
    return 0;
  }

  if (v6 == *MEMORY[0x277D2F800])
  {
    return 23;
  }

  if (v6 == *MEMORY[0x277D2F858])
  {
    return 24;
  }

  if (v6 == *MEMORY[0x277D2F598])
  {
    return 25;
  }

  if (v6 == *MEMORY[0x277D2F848])
  {
    return 2;
  }

  if (v6 == *MEMORY[0x277D2F5E8])
  {
    return 0;
  }

  if (v6 == *MEMORY[0x277D2F648])
  {
    return 30;
  }

  if (v6 == *MEMORY[0x277D2F7F0])
  {
    return 28;
  }

  if (v6 == *MEMORY[0x277D2F7E0])
  {
    return 9;
  }

  if (v6 == *MEMORY[0x277D2F6E0])
  {
    return 32;
  }

  if (v6 == *MEMORY[0x277D2F7A8])
  {
    return 33;
  }

  if (v6 == *MEMORY[0x277D2F778])
  {
    return 0;
  }

  if (v6 == *MEMORY[0x277D2F840])
  {
    return 29;
  }

  if (v6 == *MEMORY[0x277D2F868])
  {
    return 7;
  }

  v7 = 0;
  if (v6 != *MEMORY[0x277D2F5A0] && v6 != *MEMORY[0x277D2F690])
  {
    if (v6 == *MEMORY[0x277D2F5D0])
    {
      return 34;
    }

    if (v6 == *MEMORY[0x277D2F788])
    {
      return 35;
    }

    if (v6 == *MEMORY[0x277D2F600])
    {
      return 31;
    }

    if (v6 == *MEMORY[0x277D2F7F8])
    {
      return 22;
    }

    if (v6 == *MEMORY[0x277D2F5C8])
    {
      return 26;
    }

    if (v6 == *MEMORY[0x277D2F830])
    {
      return 18;
    }

    if (v6 == *MEMORY[0x277D2F810])
    {
      return 19;
    }

    if (v6 == *MEMORY[0x277D2F7E8])
    {
      return 13;
    }

    if (v6 == *MEMORY[0x277D2F728])
    {
      return 12;
    }

    if (v6 == *MEMORY[0x277D2F5F8])
    {
      return 14;
    }

    if (v6 == *MEMORY[0x277D2F6B8])
    {
      return 3;
    }

    if (v6 == *MEMORY[0x277D2F780])
    {
      return 36;
    }

    v7 = 0;
    if (v6 != *MEMORY[0x277D2F5E0] && v6 != *MEMORY[0x277D2F5D8] && v6 != *MEMORY[0x277D2F790])
    {
      if (v6 == *MEMORY[0x277D2F5B0])
      {
        return 10;
      }

      if (v6 == *MEMORY[0x277D2F850])
      {
        return 11;
      }

      if (v6 == *MEMORY[0x277D2F660])
      {
        return 8;
      }

      v7 = 0;
      if (v6 != *MEMORY[0x277D2F7D0] && v6 != *MEMORY[0x277D2F6F0])
      {
        if (v6 == *MEMORY[0x277D2F668])
        {
          return 5;
        }

        if (v6 == *MEMORY[0x277D2F738])
        {
          return 20;
        }

        if (v6 == *MEMORY[0x277D2F798])
        {
          return 21;
        }

        if (v6 != *MEMORY[0x277D2F808])
        {
          if (v6 == *MEMORY[0x277D2F838])
          {
            return 38;
          }

          if (v6 == *MEMORY[0x277D2F658])
          {
            return 39;
          }

          if (v6 == *MEMORY[0x277D2F610])
          {
            return 40;
          }

          if (v6 == *MEMORY[0x277D2F6A8])
          {
            return 41;
          }

          if (v6 == *MEMORY[0x277D2F7B8])
          {
            return 42;
          }

          if (v6 == *MEMORY[0x277D2F718])
          {
            return 43;
          }

          if (v6 == *MEMORY[0x277D2F6C8])
          {
            return 44;
          }

          if (v6 == *MEMORY[0x277D2F7D8])
          {
            return 45;
          }

          (*(v3 + 8))(v5, v2);
        }

        return 0;
      }
    }
  }

  return v7;
}

uint64_t sub_2190D9694@<X0>(unsigned __int8 a1@<W1>, uint64_t a2@<X8>)
{
  v4 = sub_219BEFAC4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  sub_219BDC8D4();
  sub_219BDC8B4();
  sub_219BDC8A4();

  (*(v5 + 32))(v8, v10, v4);
  v11 = (*(v5 + 88))(v8, v4);
  if (v11 == *MEMORY[0x277D328B0])
  {
    v12 = MEMORY[0x277D32288];
LABEL_9:
    v13 = *v12;
    v14 = sub_219BEEAF4();
    v15 = *(*(v14 - 8) + 104);
    v16 = a2;
    v17 = v13;
    return v15(v16, v17, v14);
  }

  if (v11 == *MEMORY[0x277D32890])
  {
    v12 = MEMORY[0x277D32270];
    goto LABEL_9;
  }

  if (v11 == *MEMORY[0x277D328A0])
  {
    v12 = MEMORY[0x277D32280];
    goto LABEL_9;
  }

  if (v11 == *MEMORY[0x277D32898])
  {
    v12 = MEMORY[0x277D32278];
    goto LABEL_9;
  }

  v19 = *MEMORY[0x277D328A8];
  v20 = v11;
  v14 = sub_219BEEAF4();
  v15 = *(*(v14 - 8) + 104);
  if (v20 == v19)
  {
    if (a1 > 1u)
    {
      if (a1 == 2)
      {
        v21 = MEMORY[0x277D32280];
      }

      else
      {
        v21 = MEMORY[0x277D32278];
      }
    }

    else if (a1)
    {
      v21 = MEMORY[0x277D32288];
    }

    else
    {
      v21 = MEMORY[0x277D32270];
    }

    v17 = *v21;
    v16 = a2;
    return v15(v16, v17, v14);
  }

  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v22 = MEMORY[0x277D32280];
    }

    else
    {
      v22 = MEMORY[0x277D32278];
    }
  }

  else if (a1)
  {
    v22 = MEMORY[0x277D32288];
  }

  else
  {
    v22 = MEMORY[0x277D32270];
  }

  v15(a2, *v22, v14);
  return (*(v5 + 8))(v8, v4);
}

void *sub_2190D9998(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v1562 = a4;
  v1561 = a3;
  v1560 = a2;
  v1622 = a1;
  v1559 = type metadata accessor for TopicRecipesTagFeedGroupKnobs();
  v1603 = *(v1559 - 8);
  MEMORY[0x28223BE20](v1559);
  v1436 = &v1256 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1538 = type metadata accessor for TrendingRecipesTagFeedGroupKnobs();
  v1537 = *(v1538 - 8);
  MEMORY[0x28223BE20](v1538);
  v1435 = &v1256 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1536 = type metadata accessor for SavedRecipesTagFeedGroupKnobs();
  v1535 = *(v1536 - 8);
  MEMORY[0x28223BE20](v1536);
  v1434 = &v1256 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1611 = type metadata accessor for RecentlyViewedRecipesTagFeedGroupKnobs();
  v1534 = *(v1611 - 8);
  v7 = MEMORY[0x28223BE20](v1611);
  v1359 = &v1256 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v1433 = &v1256 - v9;
  v1602 = type metadata accessor for LatestRecipesTagFeedGroupKnobs();
  v1607 = *(v1602 - 8);
  v10 = MEMORY[0x28223BE20](v1602);
  v1358 = &v1256 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v1430 = &v1256 - v12;
  v13 = sub_219BF0354();
  MEMORY[0x28223BE20](v13 - 8);
  v1356 = &v1256 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1601 = type metadata accessor for ForYouRecipesTagFeedGroupKnobs();
  v1533 = *(v1601 - 8);
  v15 = MEMORY[0x28223BE20](v1601);
  v1357 = &v1256 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v1429 = &v1256 - v17;
  v1558 = type metadata accessor for ChannelRecipesTagFeedGroupKnobs();
  v1600 = *(v1558 - 8);
  v18 = MEMORY[0x28223BE20](v1558);
  v1355 = &v1256 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v1428 = &v1256 - v20;
  v1532 = type metadata accessor for SponsoredBannerTagFeedGroupKnobs();
  v1531 = *(v1532 - 8);
  MEMORY[0x28223BE20](v1532);
  v1426 = &v1256 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1529 = type metadata accessor for AffinityTagFeedGroupKnobs();
  v1557 = *(v1529 - 8);
  MEMORY[0x28223BE20](v1529);
  v1425 = &v1256 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1556 = type metadata accessor for PuzzleScoreboardTagFeedGroupKnobs();
  v1528 = *(v1556 - 8);
  v23 = MEMORY[0x28223BE20](v1556);
  v1346 = &v1256 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v1424 = &v1256 - v25;
  v1527 = type metadata accessor for PuzzleFullArchiveTagFeedGroupKnobs();
  v1526 = *(v1527 - 8);
  MEMORY[0x28223BE20](v1527);
  v1421 = &v1256 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1555 = type metadata accessor for PuzzleFeaturedTagFeedGroupKnobs();
  v1525 = *(v1555 - 8);
  v27 = MEMORY[0x28223BE20](v1555);
  v1343 = &v1256 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v1420 = &v1256 - v29;
  v1524 = type metadata accessor for PuzzleContinuePlayingTagFeedGroupKnobs();
  v1523 = *(v1524 - 8);
  v30 = MEMORY[0x28223BE20](v1524);
  v1340 = &v1256 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v1419 = &v1256 - v32;
  v1553 = type metadata accessor for PuzzleArchiveTagFeedGroupKnobs();
  v1522 = *(v1553 - 8);
  v33 = MEMORY[0x28223BE20](v1553);
  v1338 = &v1256 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v1417 = &v1256 - v35;
  v1521 = type metadata accessor for PuzzleListTagFeedGroupKnobs();
  v1520 = *(v1521 - 8);
  v36 = MEMORY[0x28223BE20](v1521);
  v1336 = &v1256 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v1416 = &v1256 - v38;
  v1569 = type metadata accessor for SportsEventTopicTagFeedGroupKnobs();
  v1519 = *(v1569 - 8);
  v39 = MEMORY[0x28223BE20](v1569);
  v1333 = &v1256 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v1414 = &v1256 - v41;
  v1518 = type metadata accessor for SportsMastheadTagFeedGroupKnobs();
  v1517 = *(v1518 - 8);
  MEMORY[0x28223BE20](v1518);
  v1412 = &v1256 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1516 = type metadata accessor for DateRangeTagFeedGroupKnobs();
  v1515 = *(v1516 - 8);
  MEMORY[0x28223BE20](v1516);
  v1411 = &v1256 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1552 = type metadata accessor for RecentStoriesTagFeedGroupKnobs();
  v1514 = *(v1552 - 8);
  v44 = MEMORY[0x28223BE20](v1552);
  v1324 = &v1256 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v1473 = &v1256 - v46;
  sub_2186EDD04(0, &qword_280E912E0, MEMORY[0x277D32720]);
  v48 = MEMORY[0x28223BE20](v47 - 8);
  v1432 = &v1256 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x28223BE20](v48);
  v1431 = &v1256 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v1351 = &v1256 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v1409 = &v1256 - v55;
  MEMORY[0x28223BE20](v54);
  v1407 = &v1256 - v56;
  v1513 = type metadata accessor for ForYouTagFeedGroupKnobs();
  v1512 = *(v1513 - 8);
  v57 = MEMORY[0x28223BE20](v1513);
  v1323 = &v1256 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v1408 = &v1256 - v59;
  v1551 = type metadata accessor for HighlightsTagFeedGroupKnobs();
  v1511 = *(v1551 - 8);
  v60 = MEMORY[0x28223BE20](v1551);
  v1320 = &v1256 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v60);
  v1405 = &v1256 - v62;
  v1510 = type metadata accessor for WeatherTagFeedGroupKnobs();
  v1509 = *(v1510 - 8);
  MEMORY[0x28223BE20](v1510);
  v1404 = &v1256 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1550 = type metadata accessor for SportsFavoritesTagFeedGroupKnobs();
  v1508 = *(v1550 - 8);
  v64 = MEMORY[0x28223BE20](v1550);
  v1318 = &v1256 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v64);
  v1467 = &v1256 - v66;
  v1549 = type metadata accessor for SportsTopStoriesTagFeedGroupKnobs();
  v1507 = *(v1549 - 8);
  v67 = MEMORY[0x28223BE20](v1549);
  v1315 = &v1256 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v67);
  v1402 = &v1256 - v69;
  v1506 = type metadata accessor for SportsScheduleTagFeedGroupKnobs();
  v1505 = *(v1506 - 8);
  v70 = MEMORY[0x28223BE20](v1506);
  v1313 = &v1256 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v70);
  v1399 = &v1256 - v72;
  v1504 = type metadata accessor for SportsNavigationTagFeedGroupKnobs();
  v1503 = *(v1504 - 8);
  MEMORY[0x28223BE20](v1504);
  v1395 = &v1256 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1502 = type metadata accessor for SportsRecordTagFeedGroupKnobs();
  v1501 = *(v1502 - 8);
  MEMORY[0x28223BE20](v1502);
  v1394 = &v1256 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1548 = type metadata accessor for SportsEventArticlesTagFeedGroupKnobs();
  v1500 = *(v1548 - 8);
  v75 = MEMORY[0x28223BE20](v1548);
  v1309 = &v1256 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v75);
  v1393 = &v1256 - v77;
  v1547 = type metadata accessor for SportsKeyPlayersTagFeedGroupKnobs();
  v1499 = *(v1547 - 8);
  v78 = MEMORY[0x28223BE20](v1547);
  v1306 = &v1256 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v78);
  v1392 = &v1256 - v80;
  v1546 = type metadata accessor for SportsInjuryReportsTagFeedGroupKnobs();
  v1498 = *(v1546 - 8);
  v81 = MEMORY[0x28223BE20](v1546);
  v1305 = &v1256 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v81);
  v1388 = &v1256 - v83;
  v1545 = type metadata accessor for SportsEventInfoTagFeedGroupKnobs();
  v1497 = *(v1545 - 8);
  v84 = MEMORY[0x28223BE20](v1545);
  v1303 = &v1256 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v84);
  v1387 = &v1256 - v86;
  v1544 = type metadata accessor for SportsBoxScoresTagFeedGroupKnobs();
  v1496 = *(v1544 - 8);
  v87 = MEMORY[0x28223BE20](v1544);
  v1300 = &v1256 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v87);
  v1384 = &v1256 - v89;
  v1543 = type metadata accessor for SportsBracketTagFeedGroupKnobs();
  v1495 = *(v1543 - 8);
  v90 = MEMORY[0x28223BE20](v1543);
  v1299 = &v1256 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v90);
  v1382 = &v1256 - v92;
  v1542 = type metadata accessor for SportsStandingsTagFeedGroupKnobs();
  v1494 = *(v1542 - 8);
  v93 = MEMORY[0x28223BE20](v1542);
  v1296 = &v1256 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v93);
  v1379 = &v1256 - v95;
  v96 = sub_219BEF244();
  v1609 = *(v96 - 8);
  v1610 = v96;
  v97 = MEMORY[0x28223BE20](v96);
  v1354 = &v1256 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = MEMORY[0x28223BE20](v97);
  v1349 = &v1256 - v100;
  v101 = MEMORY[0x28223BE20](v99);
  v1328 = &v1256 - v102;
  MEMORY[0x28223BE20](v101);
  v1292 = &v1256 - v103;
  sub_2186EDD04(0, &qword_280E916D0, MEMORY[0x277D324F0]);
  v105 = MEMORY[0x28223BE20](v104 - 8);
  v1353 = &v1256 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = MEMORY[0x28223BE20](v105);
  v1486 = &v1256 - v108;
  v109 = MEMORY[0x28223BE20](v107);
  v1347 = &v1256 - v110;
  v111 = MEMORY[0x28223BE20](v109);
  v1485 = &v1256 - v112;
  v113 = MEMORY[0x28223BE20](v111);
  v1327 = &v1256 - v114;
  v115 = MEMORY[0x28223BE20](v113);
  v1474 = &v1256 - v116;
  v117 = MEMORY[0x28223BE20](v115);
  v1291 = &v1256 - v118;
  MEMORY[0x28223BE20](v117);
  v1450 = &v1256 - v119;
  v1568 = type metadata accessor for MySportsTopicTagFeedGroupKnobs();
  v1567 = *(v1568 - 8);
  v120 = MEMORY[0x28223BE20](v1568);
  v1376 = &v1256 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v120);
  v1377 = &v1256 - v122;
  v1493 = type metadata accessor for SportsLinksTagFeedGroupKnobs();
  v1492 = *(v1493 - 8);
  MEMORY[0x28223BE20](v1493);
  v1374 = &v1256 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1564 = type metadata accessor for SportsScoresTagFeedGroupKnobs();
  v1608 = *(v1564 - 8);
  v124 = MEMORY[0x28223BE20](v1564);
  v1286 = &v1256 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = MEMORY[0x28223BE20](v124);
  v1373 = &v1256 - v127;
  v128 = MEMORY[0x28223BE20](v126);
  v1444 = &v1256 - v129;
  MEMORY[0x28223BE20](v128);
  v1372 = &v1256 - v130;
  v1541 = type metadata accessor for ChannelSectionDirectoryTagFeedGroupKnobs();
  v1566 = *(v1541 - 8);
  v131 = MEMORY[0x28223BE20](v1541);
  v1281 = &v1256 - ((v132 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v131);
  v1370 = &v1256 - v133;
  v1540 = type metadata accessor for ChannelSectionTagFeedGroupKnobs();
  v1604 = *(v1540 - 8);
  v134 = MEMORY[0x28223BE20](v1540);
  v1279 = &v1256 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v134);
  v1368 = &v1256 - v136;
  v1539 = type metadata accessor for ArticleListTagFeedGroupKnobs();
  v1565 = *(v1539 - 8);
  v137 = MEMORY[0x28223BE20](v1539);
  v1276 = &v1256 - ((v138 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v137);
  v1367 = &v1256 - v139;
  v1439 = type metadata accessor for IssueListTagFeedGroupKnobs();
  v1491 = *(v1439 - 8);
  MEMORY[0x28223BE20](v1439);
  v1365 = &v1256 - ((v140 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1489 = type metadata accessor for PaywallTagFeedGroupKnobs();
  v1490 = *(v1489 - 8);
  MEMORY[0x28223BE20](v1489);
  v1364 = &v1256 - ((v141 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AD5C8();
  v143 = *(v142 - 8);
  v1620 = v142;
  v1621 = v143;
  v144 = MEMORY[0x28223BE20](v142);
  v1352 = &v1256 - ((v145 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = MEMORY[0x28223BE20](v144);
  v1348 = &v1256 - v147;
  v148 = MEMORY[0x28223BE20](v146);
  v1344 = &v1256 - v149;
  v150 = MEMORY[0x28223BE20](v148);
  v1341 = &v1256 - v151;
  v152 = MEMORY[0x28223BE20](v150);
  v1337 = &v1256 - v153;
  v154 = MEMORY[0x28223BE20](v152);
  v1334 = &v1256 - v155;
  v156 = MEMORY[0x28223BE20](v154);
  v1331 = &v1256 - v157;
  v158 = MEMORY[0x28223BE20](v156);
  v1329 = &v1256 - v159;
  v160 = MEMORY[0x28223BE20](v158);
  v1325 = &v1256 - v161;
  v162 = MEMORY[0x28223BE20](v160);
  v1322 = &v1256 - v163;
  v164 = MEMORY[0x28223BE20](v162);
  v1319 = &v1256 - v165;
  v166 = MEMORY[0x28223BE20](v164);
  v1316 = &v1256 - v167;
  v168 = MEMORY[0x28223BE20](v166);
  v1314 = &v1256 - v169;
  v170 = MEMORY[0x28223BE20](v168);
  v1312 = &v1256 - v171;
  v172 = MEMORY[0x28223BE20](v170);
  v1310 = &v1256 - v173;
  v174 = MEMORY[0x28223BE20](v172);
  v1308 = &v1256 - v175;
  v176 = MEMORY[0x28223BE20](v174);
  v1304 = &v1256 - v177;
  v178 = MEMORY[0x28223BE20](v176);
  v1302 = &v1256 - v179;
  v180 = MEMORY[0x28223BE20](v178);
  v1301 = &v1256 - v181;
  v182 = MEMORY[0x28223BE20](v180);
  v1297 = &v1256 - v183;
  v184 = MEMORY[0x28223BE20](v182);
  v1295 = &v1256 - v185;
  v186 = MEMORY[0x28223BE20](v184);
  v1294 = &v1256 - v187;
  v188 = MEMORY[0x28223BE20](v186);
  v1290 = &v1256 - v189;
  v190 = MEMORY[0x28223BE20](v188);
  v1285 = &v1256 - v191;
  v192 = MEMORY[0x28223BE20](v190);
  v1283 = &v1256 - v193;
  v194 = MEMORY[0x28223BE20](v192);
  v1280 = &v1256 - v195;
  v196 = MEMORY[0x28223BE20](v194);
  v1278 = &v1256 - v197;
  v198 = MEMORY[0x28223BE20](v196);
  v1274 = &v1256 - v199;
  v200 = MEMORY[0x28223BE20](v198);
  v1273 = &v1256 - v201;
  MEMORY[0x28223BE20](v200);
  v1271 = &v1256 - v202;
  sub_2186EDD04(0, &qword_280E91A70, sub_2189AD5C8);
  v204 = MEMORY[0x28223BE20](v203 - 8);
  v1350 = &v1256 - ((v205 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = MEMORY[0x28223BE20](v204);
  v1427 = &v1256 - v207;
  v208 = MEMORY[0x28223BE20](v206);
  v1345 = &v1256 - v209;
  v210 = MEMORY[0x28223BE20](v208);
  v1484 = &v1256 - v211;
  v212 = MEMORY[0x28223BE20](v210);
  v1342 = &v1256 - v213;
  v214 = MEMORY[0x28223BE20](v212);
  v1554 = &v1256 - v215;
  v216 = MEMORY[0x28223BE20](v214);
  v1339 = &v1256 - v217;
  v218 = MEMORY[0x28223BE20](v216);
  v1418 = &v1256 - v219;
  v220 = MEMORY[0x28223BE20](v218);
  v1335 = &v1256 - v221;
  v222 = MEMORY[0x28223BE20](v220);
  v1415 = &v1256 - v223;
  v224 = MEMORY[0x28223BE20](v222);
  v1332 = &v1256 - v225;
  v226 = MEMORY[0x28223BE20](v224);
  v1480 = &v1256 - v227;
  v228 = MEMORY[0x28223BE20](v226);
  v1330 = &v1256 - v229;
  v230 = MEMORY[0x28223BE20](v228);
  v1477 = &v1256 - v231;
  v232 = MEMORY[0x28223BE20](v230);
  v1326 = &v1256 - v233;
  v234 = MEMORY[0x28223BE20](v232);
  v1410 = &v1256 - v235;
  v236 = MEMORY[0x28223BE20](v234);
  v1471 = &v1256 - v237;
  v238 = MEMORY[0x28223BE20](v236);
  v1472 = &v1256 - v239;
  v240 = MEMORY[0x28223BE20](v238);
  v1321 = &v1256 - v241;
  v242 = MEMORY[0x28223BE20](v240);
  v1406 = &v1256 - v243;
  v244 = MEMORY[0x28223BE20](v242);
  v1317 = &v1256 - v245;
  v246 = MEMORY[0x28223BE20](v244);
  v1403 = &v1256 - v247;
  v248 = MEMORY[0x28223BE20](v246);
  v1401 = &v1256 - v249;
  v250 = MEMORY[0x28223BE20](v248);
  v1465 = &v1256 - v251;
  v252 = MEMORY[0x28223BE20](v250);
  v1396 = &v1256 - v253;
  v254 = MEMORY[0x28223BE20](v252);
  v1397 = &v1256 - v255;
  v256 = MEMORY[0x28223BE20](v254);
  v1311 = &v1256 - v257;
  v258 = MEMORY[0x28223BE20](v256);
  v1463 = &v1256 - v259;
  v260 = MEMORY[0x28223BE20](v258);
  v1307 = &v1256 - v261;
  v262 = MEMORY[0x28223BE20](v260);
  v1461 = &v1256 - v263;
  v264 = MEMORY[0x28223BE20](v262);
  v1390 = &v1256 - v265;
  v266 = MEMORY[0x28223BE20](v264);
  v1391 = &v1256 - v267;
  v268 = MEMORY[0x28223BE20](v266);
  v1385 = &v1256 - v269;
  v270 = MEMORY[0x28223BE20](v268);
  v1458 = &v1256 - v271;
  v272 = MEMORY[0x28223BE20](v270);
  v1383 = &v1256 - v273;
  v274 = MEMORY[0x28223BE20](v272);
  v1457 = &v1256 - v275;
  v276 = MEMORY[0x28223BE20](v274);
  v1298 = &v1256 - v277;
  v278 = MEMORY[0x28223BE20](v276);
  v1455 = &v1256 - v279;
  v280 = MEMORY[0x28223BE20](v278);
  v1378 = &v1256 - v281;
  v282 = MEMORY[0x28223BE20](v280);
  v1454 = &v1256 - v283;
  v284 = MEMORY[0x28223BE20](v282);
  v1293 = &v1256 - v285;
  v286 = MEMORY[0x28223BE20](v284);
  v1452 = &v1256 - v287;
  v288 = MEMORY[0x28223BE20](v286);
  v1288 = &v1256 - v289;
  v290 = MEMORY[0x28223BE20](v288);
  v1289 = &v1256 - v291;
  v292 = MEMORY[0x28223BE20](v290);
  v1287 = &v1256 - v293;
  v294 = MEMORY[0x28223BE20](v292);
  v1448 = &v1256 - v295;
  v296 = MEMORY[0x28223BE20](v294);
  v1284 = &v1256 - v297;
  v298 = MEMORY[0x28223BE20](v296);
  v1375 = &v1256 - v299;
  v300 = MEMORY[0x28223BE20](v298);
  v1282 = &v1256 - v301;
  v302 = MEMORY[0x28223BE20](v300);
  v1371 = &v1256 - v303;
  v304 = MEMORY[0x28223BE20](v302);
  v1277 = &v1256 - v305;
  v306 = MEMORY[0x28223BE20](v304);
  v1369 = &v1256 - v307;
  v308 = MEMORY[0x28223BE20](v306);
  v1275 = &v1256 - v309;
  v310 = MEMORY[0x28223BE20](v308);
  v1440 = &v1256 - v311;
  v312 = MEMORY[0x28223BE20](v310);
  v1363 = &v1256 - v313;
  v314 = MEMORY[0x28223BE20](v312);
  v1366 = &v1256 - v315;
  v316 = MEMORY[0x28223BE20](v314);
  v1362 = &v1256 - v317;
  v318 = MEMORY[0x28223BE20](v316);
  v1272 = &v1256 - v319;
  v320 = MEMORY[0x28223BE20](v318);
  v1619 = &v1256 - v321;
  v322 = MEMORY[0x28223BE20](v320);
  v1269 = &v1256 - v323;
  MEMORY[0x28223BE20](v322);
  v1360 = &v1256 - v324;
  v1438 = type metadata accessor for PromotedArticleListTagFeedGroupKnobs();
  v1488 = *(v1438 - 8);
  v325 = MEMORY[0x28223BE20](v1438);
  v1270 = &v1256 - ((v326 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v325);
  v1361 = &v1256 - v327;
  sub_2186EDD04(0, qword_280EADF38, type metadata accessor for TopicRecipesTagFeedGroupKnobs);
  v329 = MEMORY[0x28223BE20](v328 - 8);
  v1487 = &v1256 - ((v330 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v329);
  v1530 = &v1256 - v331;
  sub_2186EDD04(0, qword_280EA4098, type metadata accessor for TrendingRecipesTagFeedGroupKnobs);
  v333 = MEMORY[0x28223BE20](v332 - 8);
  v1423 = &v1256 - ((v334 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v333);
  v1599 = &v1256 - v335;
  sub_2186EDD04(0, qword_280EAF280, type metadata accessor for SavedRecipesTagFeedGroupKnobs);
  v337 = MEMORY[0x28223BE20](v336 - 8);
  v1422 = &v1256 - ((v338 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v337);
  v1598 = &v1256 - v339;
  sub_2186EDD04(0, qword_280E98068, type metadata accessor for RecentlyViewedRecipesTagFeedGroupKnobs);
  v341 = MEMORY[0x28223BE20](v340 - 8);
  v1483 = &v1256 - ((v342 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v341);
  v1597 = &v1256 - v343;
  sub_2186EDD04(0, qword_280EAC6F0, type metadata accessor for LatestRecipesTagFeedGroupKnobs);
  v345 = MEMORY[0x28223BE20](v344 - 8);
  v1437 = &v1256 - ((v346 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v345);
  v1596 = &v1256 - v347;
  sub_2186EDD04(0, qword_280EAC9F0, type metadata accessor for ForYouRecipesTagFeedGroupKnobs);
  v349 = MEMORY[0x28223BE20](v348 - 8);
  v1482 = &v1256 - ((v350 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v349);
  v1606 = &v1256 - v351;
  sub_2186EDD04(0, qword_280EA9BD8, type metadata accessor for ChannelRecipesTagFeedGroupKnobs);
  v353 = MEMORY[0x28223BE20](v352 - 8);
  v1481 = &v1256 - ((v354 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v353);
  v1595 = &v1256 - v355;
  sub_2186EDD04(0, &qword_280EA4A98, type metadata accessor for SponsoredBannerTagFeedGroupKnobs);
  v357 = MEMORY[0x28223BE20](v356 - 8);
  v1413 = &v1256 - ((v358 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v357);
  v1594 = &v1256 - v359;
  sub_2186EDD04(0, qword_280EBF9A0, type metadata accessor for AffinityTagFeedGroupKnobs);
  v361 = MEMORY[0x28223BE20](v360 - 8);
  v1479 = &v1256 - ((v362 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v361);
  v1593 = &v1256 - v363;
  sub_2186EDD04(0, qword_280EA2608, type metadata accessor for PuzzleScoreboardTagFeedGroupKnobs);
  v365 = MEMORY[0x28223BE20](v364 - 8);
  v1478 = &v1256 - ((v366 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v365);
  v1592 = &v1256 - v367;
  sub_2186EDD04(0, &qword_280E9F820, type metadata accessor for PuzzleFullArchiveTagFeedGroupKnobs);
  v369 = MEMORY[0x28223BE20](v368 - 8);
  v1476 = &v1256 - ((v370 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v369);
  v1617 = &v1256 - v371;
  sub_2186EDD04(0, qword_280EA86A0, type metadata accessor for PuzzleFeaturedTagFeedGroupKnobs);
  v373 = MEMORY[0x28223BE20](v372 - 8);
  v1475 = &v1256 - ((v374 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v373);
  v1591 = &v1256 - v375;
  sub_2186EDD04(0, qword_280E981F8, type metadata accessor for PuzzleContinuePlayingTagFeedGroupKnobs);
  v377 = MEMORY[0x28223BE20](v376 - 8);
  v1470 = &v1256 - ((v378 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v377);
  v1590 = &v1256 - v379;
  sub_2186EDD04(0, qword_280EABA58, type metadata accessor for PuzzleArchiveTagFeedGroupKnobs);
  v381 = MEMORY[0x28223BE20](v380 - 8);
  v1469 = &v1256 - ((v382 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v381);
  v1589 = &v1256 - v383;
  sub_2186EDD04(0, qword_280EB7648, type metadata accessor for PuzzleListTagFeedGroupKnobs);
  v385 = MEMORY[0x28223BE20](v384 - 8);
  v1468 = &v1256 - ((v386 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v385);
  v1588 = &v1256 - v387;
  sub_2186EDD04(0, qword_280EA1DD8, type metadata accessor for SportsEventTopicTagFeedGroupKnobs);
  v389 = MEMORY[0x28223BE20](v388 - 8);
  v1466 = &v1256 - ((v390 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v389);
  v1587 = &v1256 - v391;
  sub_2186EDD04(0, &qword_280EA8080, type metadata accessor for SportsMastheadTagFeedGroupKnobs);
  v393 = MEMORY[0x28223BE20](v392 - 8);
  v1400 = &v1256 - ((v394 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v393);
  v1586 = &v1256 - v395;
  sub_2186EDD04(0, qword_280EBB968, type metadata accessor for DateRangeTagFeedGroupKnobs);
  v397 = MEMORY[0x28223BE20](v396 - 8);
  v1398 = &v1256 - ((v398 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v397);
  v1585 = &v1256 - v399;
  sub_2186EDD04(0, qword_280EAB8E8, type metadata accessor for RecentStoriesTagFeedGroupKnobs);
  v401 = MEMORY[0x28223BE20](v400 - 8);
  v1464 = &v1256 - ((v402 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v401);
  v1584 = &v1256 - v403;
  sub_2186EDD04(0, qword_280EC4D68, type metadata accessor for ForYouTagFeedGroupKnobs);
  v405 = MEMORY[0x28223BE20](v404 - 8);
  v1462 = &v1256 - ((v406 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v405);
  v1605 = &v1256 - v407;
  sub_2186EDD04(0, qword_280EB87C0, type metadata accessor for HighlightsTagFeedGroupKnobs);
  v409 = MEMORY[0x28223BE20](v408 - 8);
  v1460 = &v1256 - ((v410 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v409);
  v1583 = &v1256 - v411;
  sub_2186EDD04(0, &qword_280EBFB10, type metadata accessor for WeatherTagFeedGroupKnobs);
  v413 = MEMORY[0x28223BE20](v412 - 8);
  v1389 = &v1256 - ((v414 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v413);
  v1613 = &v1256 - v415;
  sub_2186EDD04(0, qword_280EA4788, type metadata accessor for SportsFavoritesTagFeedGroupKnobs);
  v417 = MEMORY[0x28223BE20](v416 - 8);
  v1459 = &v1256 - ((v418 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v417);
  v1582 = &v1256 - v419;
  sub_2186EDD04(0, qword_280EA18A0, type metadata accessor for SportsTopStoriesTagFeedGroupKnobs);
  v421 = MEMORY[0x28223BE20](v420 - 8);
  v1386 = &v1256 - ((v422 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v421);
  v1581 = &v1256 - v423;
  sub_2186EDD04(0, qword_280EA7F10, type metadata accessor for SportsScheduleTagFeedGroupKnobs);
  v425 = MEMORY[0x28223BE20](v424 - 8);
  v1456 = &v1256 - ((v426 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v425);
  v1580 = &v1256 - v427;
  sub_2186EDD04(0, &qword_280EA1AF0, type metadata accessor for SportsNavigationTagFeedGroupKnobs);
  v429 = MEMORY[0x28223BE20](v428 - 8);
  v1381 = &v1256 - ((v430 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v429);
  v1579 = &v1256 - v431;
  sub_2186EDD04(0, &qword_280EAEC50, type metadata accessor for SportsRecordTagFeedGroupKnobs);
  v433 = MEMORY[0x28223BE20](v432 - 8);
  v1380 = &v1256 - ((v434 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v433);
  v1578 = &v1256 - v435;
  sub_2186EDD04(0, qword_280EAC298, type metadata accessor for MySportsTopicTagFeedGroupKnobs);
  v437 = MEMORY[0x28223BE20](v436 - 8);
  v1442 = &v1256 - ((v438 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v437);
  v1616 = &v1256 - v439;
  sub_2186EDD04(0, qword_280E9A708, type metadata accessor for SportsEventArticlesTagFeedGroupKnobs);
  v441 = MEMORY[0x28223BE20](v440 - 8);
  v1453 = &v1256 - ((v442 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v441);
  v1577 = &v1256 - v443;
  sub_2186EDD04(0, qword_280EA1D08, type metadata accessor for SportsKeyPlayersTagFeedGroupKnobs);
  v445 = MEMORY[0x28223BE20](v444 - 8);
  v1451 = &v1256 - ((v446 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v445);
  v1618 = &v1256 - v447;
  sub_2186EDD04(0, qword_280E9A648, type metadata accessor for SportsInjuryReportsTagFeedGroupKnobs);
  v449 = MEMORY[0x28223BE20](v448 - 8);
  v1449 = &v1256 - ((v450 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v449);
  v1576 = &v1256 - v451;
  sub_2186EDD04(0, qword_280EA4848, type metadata accessor for SportsEventInfoTagFeedGroupKnobs);
  v453 = MEMORY[0x28223BE20](v452 - 8);
  v1447 = &v1256 - ((v454 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v453);
  v1612 = &v1256 - v455;
  sub_2186EDD04(0, qword_280EA49D8, type metadata accessor for SportsBoxScoresTagFeedGroupKnobs);
  v457 = MEMORY[0x28223BE20](v456 - 8);
  v1446 = &v1256 - ((v458 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v457);
  v1615 = &v1256 - v459;
  sub_2186EDD04(0, qword_280EAB210, type metadata accessor for SportsBracketTagFeedGroupKnobs);
  v461 = MEMORY[0x28223BE20](v460 - 8);
  v1445 = &v1256 - ((v462 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v461);
  v1575 = &v1256 - v463;
  sub_2186EDD04(0, qword_280EA46C0, type metadata accessor for SportsStandingsTagFeedGroupKnobs);
  v465 = MEMORY[0x28223BE20](v464 - 8);
  v1443 = &v1256 - ((v466 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v465);
  v1574 = &v1256 - v467;
  sub_2186EDD04(0, qword_280EB2970, type metadata accessor for SportsLinksTagFeedGroupKnobs);
  v469 = MEMORY[0x28223BE20](v468 - 8);
  v1441 = &v1256 - ((v470 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v469);
  v1614 = &v1256 - v471;
  sub_2186EDD04(0, qword_280EAE9A8, type metadata accessor for SportsScoresTagFeedGroupKnobs);
  v473 = MEMORY[0x28223BE20](v472 - 8);
  v475 = &v1256 - ((v474 + 15) & 0xFFFFFFFFFFFFFFF0);
  v476 = MEMORY[0x28223BE20](v473);
  v478 = &v1256 - v477;
  v479 = MEMORY[0x28223BE20](v476);
  v1572 = &v1256 - v480;
  MEMORY[0x28223BE20](v479);
  v1573 = &v1256 - v481;
  sub_2186EDD04(0, qword_280E965F8, type metadata accessor for ChannelSectionDirectoryTagFeedGroupKnobs);
  v483 = MEMORY[0x28223BE20](v482 - 8);
  v485 = &v1256 - ((v484 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v483);
  v1571 = &v1256 - v486;
  sub_2186EDD04(0, qword_280EA9B18, type metadata accessor for ChannelSectionTagFeedGroupKnobs);
  v488 = MEMORY[0x28223BE20](v487 - 8);
  v490 = &v1256 - ((v489 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v488);
  v1570 = &v1256 - v491;
  sub_2186EDD04(0, qword_280EB5908, type metadata accessor for ArticleListTagFeedGroupKnobs);
  v493 = MEMORY[0x28223BE20](v492 - 8);
  v495 = &v1256 - ((v494 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v493);
  v497 = &v1256 - v496;
  sub_2186EDD04(0, &qword_280EBB648, type metadata accessor for IssueListTagFeedGroupKnobs);
  v499 = MEMORY[0x28223BE20](v498 - 8);
  v501 = &v1256 - ((v500 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v499);
  v503 = &v1256 - v502;
  sub_2186EDD04(0, qword_280EC0C60, type metadata accessor for PaywallTagFeedGroupKnobs);
  v505 = MEMORY[0x28223BE20](v504 - 8);
  v507 = &v1256 - ((v506 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v505);
  v509 = &v1256 - v508;
  sub_2186EDD04(0, qword_280E9ACF8, type metadata accessor for PromotedArticleListTagFeedGroupKnobs);
  v511 = MEMORY[0x28223BE20](v510 - 8);
  MEMORY[0x28223BE20](v511);
  if (v1622)
  {
    v514 = v1622;
    v515 = v1563;
  }

  else
  {
    v1258 = v507;
    v1259 = v501;
    v1261 = v495;
    v1262 = v490;
    v1263 = v485;
    v1264 = v478;
    v1265 = v475;
    v516 = v1488;
    v517 = &v1256 - v512;
    v518 = v513;
    v519 = v1438;
    (*(v1488 + 56))(&v1256 - v512, 1, 1, v1438);
    v520 = *(v1490 + 56);
    v1266 = v509;
    v520(v509, 1, 1, v1489);
    v521 = *(v1491 + 56);
    v1267 = v503;
    v522 = v503;
    v523 = v1439;
    v521(v522, 1, 1, v1439);
    v524 = *(v1565 + 56);
    v1268 = v497;
    v524(v497, 1, 1, v1539);
    (*(v1604 + 56))(v1570, 1, 1, v1540);
    (*(v1566 + 56))(v1571, 1, 1, v1541);
    v525 = v1608[7];
    v526 = v1564;
    v525(v1573, 1, 1, v1564);
    v525(v1572, 1, 1, v526);
    v527 = v518;
    (*(v1492 + 56))(v1614, 1, 1, v1493);
    (*(v1494 + 56))(v1574, 1, 1, v1542);
    (*(v1495 + 56))(v1575, 1, 1, v1543);
    (*(v1496 + 56))(v1615, 1, 1, v1544);
    (*(v1497 + 56))(v1612, 1, 1, v1545);
    (*(v1498 + 56))(v1576, 1, 1, v1546);
    (*(v1499 + 56))(v1618, 1, 1, v1547);
    (*(v1500 + 56))(v1577, 1, 1, v1548);
    (*(v1567 + 56))(v1616, 1, 1, v1568);
    (*(v1501 + 56))(v1578, 1, 1, v1502);
    (*(v1503 + 56))(v1579, 1, 1, v1504);
    (*(v1505 + 56))(v1580, 1, 1, v1506);
    (*(v1507 + 56))(v1581, 1, 1, v1549);
    (*(v1508 + 56))(v1582, 1, 1, v1550);
    (*(v1509 + 56))(v1613, 1, 1, v1510);
    (*(v1511 + 56))(v1583, 1, 1, v1551);
    (*(v1512 + 56))(v1605, 1, 1, v1513);
    (*(v1514 + 56))(v1584, 1, 1, v1552);
    (*(v1515 + 56))(v1585, 1, 1, v1516);
    (*(v1517 + 56))(v1586, 1, 1, v1518);
    (*(v1519 + 56))(v1587, 1, 1, v1569);
    (*(v1520 + 56))(v1588, 1, 1, v1521);
    (*(v1522 + 56))(v1589, 1, 1, v1553);
    (*(v1523 + 56))(v1590, 1, 1, v1524);
    (*(v1525 + 56))(v1591, 1, 1, v1555);
    (*(v1526 + 56))(v1617, 1, 1, v1527);
    (*(v1528 + 56))(v1592, 1, 1, v1556);
    (*(v1557 + 56))(v1593, 1, 1, v1529);
    (*(v1531 + 56))(v1594, 1, 1, v1532);
    (*(v1600 + 56))(v1595, 1, 1, v1558);
    (*(v1533 + 56))(v1606, 1, 1, v1601);
    (*(v1607 + 56))(v1596, 1, 1, v1602);
    (*(v1534 + 56))(v1597, 1, 1, v1611);
    (*(v1535 + 56))(v1598, 1, 1, v1536);
    (*(v1537 + 56))(v1599, 1, 1, v1538);
    (*(v1603 + 56))(v1530, 1, 1, v1559);
    type metadata accessor for TagFeedGroupKnobs();
    v1622 = swift_allocObject();
    v1260 = v517;
    sub_2190E9A34(v517, v518, qword_280E9ACF8, type metadata accessor for PromotedArticleListTagFeedGroupKnobs);
    v530 = *(v516 + 48);
    v528 = v516 + 48;
    v529 = v530;
    if (v530(v527, 1, v519) == 1)
    {
      v1257 = v527;
      v1488 = v528;
      v532 = v1620;
      v531 = v1621;
      v533 = v1360;
      (*(v1621 + 56))(v1360, 1, 1, v1620);
      v534 = v533;
      v535 = v1269;
      sub_2190E9A34(v534, v1269, &qword_280E91A70, sub_2189AD5C8);
      v536 = *(v531 + 48);
      if (v536(v535, 1, v532) == 1)
      {
        type metadata accessor for TagFeedServiceConfig();
        sub_21877C990(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
        v537 = v1271;
        sub_219BEE974();
        v538 = v536(v535, 1, v532);
        v539 = v1266;
        if (v538 != 1)
        {
          sub_2190E9AA0(v535, &qword_280E91A70, sub_2189AD5C8);
        }
      }

      else
      {
        v537 = v1271;
        (*(v531 + 32))(v1271, v535, v532);
        v539 = v1266;
      }

      v544 = *(v531 + 32);
      v545 = v1270;
      v544(v1270, v537, v532);
      v1623 = 0x7FFFFFFFFFFFFFFFLL;
      sub_2186F9548();
      swift_allocObject();
      v546 = sub_219BEF534();
      sub_2190E9AA0(v1360, &qword_280E91A70, sub_2189AD5C8);
      v547 = v1438;
      *(v545 + *(v1438 + 20)) = v546;
      *(v545 + *(v547 + 24)) = 0;
      v542 = v1361;
      sub_2190E9AFC(v545, v1361, type metadata accessor for PromotedArticleListTagFeedGroupKnobs);
      v548 = v1257;
      v549 = v529(v1257, 1, v547);
      v540 = v1439;
      v543 = v1258;
      if (v549 != 1)
      {
        sub_2190E9AA0(v548, qword_280E9ACF8, type metadata accessor for PromotedArticleListTagFeedGroupKnobs);
      }
    }

    else
    {
      v540 = v523;
      v541 = v527;
      v542 = v1361;
      sub_2190E9AFC(v541, v1361, type metadata accessor for PromotedArticleListTagFeedGroupKnobs);
      v539 = v1266;
      v543 = v1258;
    }

    v550 = v1622;
    sub_2190E9AFC(v542, v1622 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_promotedArticleListKnobs, type metadata accessor for PromotedArticleListTagFeedGroupKnobs);
    sub_2190E9A34(v539, v543, qword_280EC0C60, type metadata accessor for PaywallTagFeedGroupKnobs);
    v551 = *(v1490 + 48);
    v552 = v1489;
    v553 = v551(v543, 1, v1489);
    v554 = v1619;
    v555 = v1365;
    v556 = v1259;
    if (v553 == 1)
    {
      (*(v1621 + 56))(v1619, 1, 1, v1620);
      v557 = v1364;
      sub_219686328(v554, 0, 1, v1364);
      v558 = v551(v543, 1, v552);
      v559 = v1539;
      v560 = v1261;
      if (v558 != 1)
      {
        sub_2190E9AA0(v543, qword_280EC0C60, type metadata accessor for PaywallTagFeedGroupKnobs);
      }
    }

    else
    {
      v557 = v1364;
      sub_2190E9AFC(v543, v1364, type metadata accessor for PaywallTagFeedGroupKnobs);
      v559 = v1539;
      v560 = v1261;
    }

    v561 = v550;
    sub_2190E9AFC(v557, v550 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_paywallKnobs, type metadata accessor for PaywallTagFeedGroupKnobs);
    sub_2190E9A34(v1267, v556, &qword_280EBB648, type metadata accessor for IssueListTagFeedGroupKnobs);
    v562 = *(v1491 + 48);
    v563 = v562(v556, 1, v540);
    v564 = v1565;
    if (v563 == 1)
    {
      v565 = v1619;
      (*(v1621 + 56))(v1619, 1, 1, v1620);
      sub_2189AD728(v565, v555);
      v566 = v562(v556, 1, v540);
      v567 = v1614;
      v568 = v1362;
      v569 = v1616;
      if (v566 != 1)
      {
        sub_2190E9AA0(v556, &qword_280EBB648, type metadata accessor for IssueListTagFeedGroupKnobs);
      }
    }

    else
    {
      sub_2190E9AFC(v556, v555, type metadata accessor for IssueListTagFeedGroupKnobs);
      v567 = v1614;
      v568 = v1362;
      v569 = v1616;
    }

    sub_2190E9AFC(v555, v561 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_issueListKnobs, type metadata accessor for IssueListTagFeedGroupKnobs);
    sub_2190E9A34(v1268, v560, qword_280EB5908, type metadata accessor for ArticleListTagFeedGroupKnobs);
    v572 = *(v564 + 48);
    v571 = v564 + 48;
    v570 = v572;
    if (v572(v560, 1, v559) == 1)
    {
      v573 = v570;
      v575 = v1620;
      v574 = v1621;
      v576 = v1272;
      (*(v1621 + 56))(v1272, 1, 1, v1620);
      sub_2190E9A34(v576, v568, &qword_280E91A70, sub_2189AD5C8);
      v577 = *(v574 + 48);
      v578 = v577(v568, 1, v575);
      v1565 = v571;
      if (v578 == 1)
      {
        type metadata accessor for TagFeedServiceConfig();
        sub_21877C990(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
        v579 = v1273;
        sub_219BEE974();
        v580 = v577(v568, 1, v575) == 1;
        v581 = v568;
        v582 = v1276;
        if (!v580)
        {
          sub_2190E9AA0(v581, &qword_280E91A70, sub_2189AD5C8);
        }
      }

      else
      {
        v579 = v1273;
        (*(v574 + 32))(v1273, v568, v575);
        v582 = v1276;
      }

      (*(v574 + 32))(v582, v579, v575);
      v1623 = 6;
      sub_2186F9548();
      swift_allocObject();
      v585 = sub_219BEF534();
      v586 = v1539;
      *(v582 + *(v1539 + 20)) = v585;
      LOBYTE(v1623) = 0;
      sub_2190E9B64();
      swift_allocObject();
      *(v582 + v586[6]) = sub_219BEF534();
      LOBYTE(v1623) = 1;
      sub_2186F95C4();
      swift_allocObject();
      *(v582 + v586[7]) = sub_219BEF534();
      v1623 = 0;
      sub_2186ECA28();
      swift_allocObject();
      *(v582 + v586[8]) = sub_219BEF534();
      v1623 = 0x7FEFFFFFFFFFFFFFLL;
      swift_allocObject();
      v587 = sub_219BEF534();
      sub_2190E9AA0(v576, &qword_280E91A70, sub_2189AD5C8);
      *(v582 + v586[9]) = v587;
      *(v582 + v586[10]) = 0;
      v583 = v1367;
      sub_2190E9AFC(v582, v1367, type metadata accessor for ArticleListTagFeedGroupKnobs);
      v588 = v1261;
      v589 = v573(v1261, 1, v586);
      v569 = v1616;
      v567 = v1614;
      v584 = v1262;
      if (v589 != 1)
      {
        sub_2190E9AA0(v588, qword_280EB5908, type metadata accessor for ArticleListTagFeedGroupKnobs);
      }
    }

    else
    {
      v583 = v1367;
      sub_2190E9AFC(v560, v1367, type metadata accessor for ArticleListTagFeedGroupKnobs);
      v584 = v1262;
    }

    sub_2190E9AFC(v583, v561 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_articleListKnobs, type metadata accessor for ArticleListTagFeedGroupKnobs);
    *(v561 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_curatedKnobs) = sub_2194AF724(MEMORY[0x277D84F90]);
    sub_2190E9A34(v1570, v584, qword_280EA9B18, type metadata accessor for ChannelSectionTagFeedGroupKnobs);
    v590 = *(v1604 + 48);
    v1604 += 48;
    v591 = v590(v584, 1, v1540);
    v592 = v1621;
    v593 = v1366;
    v594 = v1363;
    if (v591 == 1)
    {
      v1565 = v590;
      v595 = v1620;
      (*(v1621 + 56))(v1366, 1, 1, v1620);
      sub_2190E9A34(v593, v594, &qword_280E91A70, sub_2189AD5C8);
      v596 = *(v592 + 48);
      if (v596(v594, 1, v595) == 1)
      {
        type metadata accessor for TagFeedServiceConfig();
        sub_21877C990(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
        v597 = v1274;
        sub_219BEE974();
        v598 = v596(v594, 1, v595);
        v599 = v1279;
        if (v598 != 1)
        {
          sub_2190E9AA0(v594, &qword_280E91A70, sub_2189AD5C8);
        }
      }

      else
      {
        v597 = v1274;
        (*(v592 + 32))(v1274, v594, v595);
        v599 = v1279;
      }

      (*(v592 + 32))(v599, v597, v595);
      v1623 = 1;
      sub_2186F9548();
      swift_allocObject();
      v604 = sub_219BEF534();
      v605 = v1540;
      *(v599 + *(v1540 + 20)) = v604;
      v1623 = 5;
      swift_allocObject();
      *(v599 + v605[6]) = sub_219BEF534();
      v1623 = 1;
      swift_allocObject();
      *(v599 + v605[7]) = sub_219BEF534();
      v1623 = 0x7FFFFFFFFFFFFFFFLL;
      swift_allocObject();
      *(v599 + v605[8]) = sub_219BEF534();
      sub_219BF5CE4();
      v1623 = v606;
      sub_2186ECA28();
      swift_allocObject();
      *(v599 + v605[9]) = sub_219BEF534();
      sub_219BF5D04();
      v1623 = v607;
      swift_allocObject();
      *(v599 + v605[10]) = sub_219BEF534();
      LOBYTE(v1623) = 0;
      sub_2190E9CE4();
      swift_allocObject();
      *(v599 + v605[11]) = sub_219BEF534();
      v1623 = 0;
      v1624 = 0xE000000000000000;
      sub_2190E9E64();
      swift_allocObject();
      v608 = sub_219BEF534();
      sub_2190E9AA0(v593, &qword_280E91A70, sub_2189AD5C8);
      *(v599 + v605[12]) = v608;
      v600 = v1368;
      sub_2190E9AFC(v599, v1368, type metadata accessor for ChannelSectionTagFeedGroupKnobs);
      v609 = v1262;
      v610 = (v1565)(v1262, 1, v605);
      v569 = v1616;
      v567 = v1614;
      v603 = v1571;
      v601 = v1440;
      v602 = v1566;
      if (v610 != 1)
      {
        sub_2190E9AA0(v609, qword_280EA9B18, type metadata accessor for ChannelSectionTagFeedGroupKnobs);
      }
    }

    else
    {
      v600 = v1368;
      sub_2190E9AFC(v584, v1368, type metadata accessor for ChannelSectionTagFeedGroupKnobs);
      v601 = v1440;
      v602 = v1566;
      v603 = v1571;
    }

    sub_2190E9AFC(v600, v561 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_channelSectionGroupKnobs, type metadata accessor for ChannelSectionTagFeedGroupKnobs);
    v611 = v603;
    v612 = v1263;
    sub_2190E9A34(v611, v1263, qword_280E965F8, type metadata accessor for ChannelSectionDirectoryTagFeedGroupKnobs);
    v615 = *(v602 + 48);
    v614 = v602 + 48;
    v613 = v615;
    if (v615(v612, 1, v1541) == 1)
    {
      v616 = v1620;
      (*(v592 + 56))(v601, 1, 1, v1620);
      v617 = v1275;
      sub_2190E9A34(v601, v1275, &qword_280E91A70, sub_2189AD5C8);
      v618 = *(v592 + 48);
      v619 = v618(v617, 1, v616);
      v1566 = v614;
      if (v619 == 1)
      {
        type metadata accessor for TagFeedServiceConfig();
        sub_21877C990(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
        v620 = v1278;
        sub_219BEE974();
        v621 = v618(v617, 1, v616);
        v622 = v1608;
        v623 = v1281;
        if (v621 != 1)
        {
          sub_2190E9AA0(v617, &qword_280E91A70, sub_2189AD5C8);
        }
      }

      else
      {
        v620 = v1278;
        (*(v592 + 32))(v1278, v617, v616);
        v622 = v1608;
        v623 = v1281;
      }

      v592 = v1621;
      (*(v1621 + 32))(v623, v620, v616);
      v1623 = 3;
      sub_2186F9548();
      swift_allocObject();
      v626 = sub_219BEF534();
      v627 = v1541;
      *(v623 + *(v1541 + 20)) = v626;
      v1623 = 0x7FFFFFFFFFFFFFFFLL;
      swift_allocObject();
      v628 = sub_219BEF534();
      sub_2190E9AA0(v1440, &qword_280E91A70, sub_2189AD5C8);
      *(v623 + *(v627 + 24)) = v628;
      v629 = v1370;
      sub_2190E9AFC(v623, v1370, type metadata accessor for ChannelSectionDirectoryTagFeedGroupKnobs);
      v630 = v1263;
      v631 = v613(v1263, 1, v627);
      v624 = v629;
      v569 = v1616;
      v567 = v1614;
      v625 = v1264;
      if (v631 != 1)
      {
        sub_2190E9AA0(v630, qword_280E965F8, type metadata accessor for ChannelSectionDirectoryTagFeedGroupKnobs);
      }
    }

    else
    {
      v624 = v1370;
      sub_2190E9AFC(v612, v1370, type metadata accessor for ChannelSectionDirectoryTagFeedGroupKnobs);
      v622 = v1608;
      v625 = v1264;
    }

    sub_2190E9AFC(v624, v561 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_channelSectionDirectoryGroupKnobs, type metadata accessor for ChannelSectionDirectoryTagFeedGroupKnobs);
    sub_2190E9A34(v1573, v625, qword_280EAE9A8, type metadata accessor for SportsScoresTagFeedGroupKnobs);
    v1604 = v622[6];
    v632 = (v1604)(v625, 1, v1564);
    v633 = v1615;
    v1608 = v622 + 6;
    if (v632 == 1)
    {
      v634 = v1369;
      v635 = v1620;
      (*(v592 + 56))(v1369, 1, 1, v1620);
      v636 = v1277;
      sub_2190E9A34(v634, v1277, &qword_280E91A70, sub_2189AD5C8);
      v637 = *(v592 + 48);
      if (v637(v636, 1, v635) == 1)
      {
        type metadata accessor for TagFeedServiceConfig();
        sub_21877C990(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
        v638 = v1280;
        sub_219BEE974();
        v639 = v637(v636, 1, v635);
        v640 = v1444;
        v641 = v1564;
        if (v639 != 1)
        {
          sub_2190E9AA0(v636, &qword_280E91A70, sub_2189AD5C8);
        }
      }

      else
      {
        v638 = v1280;
        (*(v592 + 32))(v1280, v636, v635);
        v640 = v1444;
        v641 = v1564;
      }

      (*(v1621 + 32))(v640, v638, v635);
      v1623 = 0x7FFFFFFFFFFFFFFFLL;
      sub_2186F9548();
      swift_allocObject();
      *&v640[v641[5]] = sub_219BEF534();
      v1623 = 1;
      swift_allocObject();
      *&v640[v641[6]] = sub_219BEF534();
      sub_218D554B0();
      swift_allocObject();
      v1566 = sub_219BEF274();
      sub_218D55534();
      swift_allocObject();
      v645 = sub_219BEF274();
      v1623 = 0;
      sub_218D556B4();
      swift_allocObject();
      v646 = sub_219BEF534();
      LOBYTE(v1623) = 1;
      sub_2186F95C4();
      swift_allocObject();
      v647 = sub_219BEF534();
      v648 = &v1444[v641[7]];
      *v648 = v1566;
      v648[1] = v645;
      v648[2] = v646;
      v648[3] = v647;
      swift_allocObject();
      v649 = sub_219BEF274();
      swift_allocObject();
      v650 = sub_219BEF274();
      v1623 = 0;
      v644 = v641;
      swift_allocObject();
      v651 = sub_219BEF534();
      LOBYTE(v1623) = 1;
      swift_allocObject();
      v652 = sub_219BEF534();
      v653 = v1444;
      v654 = &v1444[v641[8]];
      *v654 = v649;
      v654[1] = v650;
      v654[2] = v651;
      v654[3] = v652;
      LOBYTE(v1623) = 1;
      swift_allocObject();
      *(v653 + v641[9]) = sub_219BEF534();
      v1623 = 14;
      swift_allocObject();
      *(v653 + v641[10]) = sub_219BEF534();
      LOBYTE(v1623) = 1;
      sub_218D528A0();
      swift_allocObject();
      *(v653 + v641[11]) = sub_219BEF534();
      v655 = sub_219BF1F54();
      sub_218C3DB88(v655);

      sub_218BE9934();
      swift_allocObject();
      *(v653 + v641[12]) = sub_219BEEE04();
      swift_allocObject();
      v656 = sub_219BEEE04();
      sub_2190E9AA0(v1369, &qword_280E91A70, sub_2189AD5C8);
      *(v653 + v641[13]) = v656;
      v642 = v1372;
      sub_2190E9AFC(v653, v1372, type metadata accessor for SportsScoresTagFeedGroupKnobs);
      v657 = v1264;
      v658 = (v1604)(v1264, 1, v644);
      v561 = v1622;
      v633 = v1615;
      v569 = v1616;
      v567 = v1614;
      v643 = v1441;
      if (v658 != 1)
      {
        sub_2190E9AA0(v657, qword_280EAE9A8, type metadata accessor for SportsScoresTagFeedGroupKnobs);
      }
    }

    else
    {
      v642 = v1372;
      sub_2190E9AFC(v625, v1372, type metadata accessor for SportsScoresTagFeedGroupKnobs);
      v643 = v1441;
      v644 = v1564;
    }

    sub_2190E9AFC(v642, v561 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsScoresKnobs, type metadata accessor for SportsScoresTagFeedGroupKnobs);
    v659 = v1265;
    sub_2190E9A34(v1572, v1265, qword_280EAE9A8, type metadata accessor for SportsScoresTagFeedGroupKnobs);
    if ((v1604)(v659, 1, v644) == 1)
    {
      v661 = v1620;
      v660 = v1621;
      v662 = v1371;
      (*(v1621 + 56))(v1371, 1, 1, v1620);
      v663 = v1282;
      sub_2190E9A34(v662, v1282, &qword_280E91A70, sub_2189AD5C8);
      v664 = *(v660 + 48);
      if (v664(v663, 1, v661) == 1)
      {
        type metadata accessor for TagFeedServiceConfig();
        sub_21877C990(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
        v665 = v1283;
        sub_219BEE974();
        v666 = v664(v663, 1, v661);
        v667 = v1286;
        if (v666 != 1)
        {
          sub_2190E9AA0(v663, &qword_280E91A70, sub_2189AD5C8);
        }
      }

      else
      {
        v665 = v1283;
        (*(v660 + 32))(v1283, v663, v661);
        v667 = v1286;
      }

      (*(v660 + 32))(v667, v665, v661);
      v1623 = 0x7FFFFFFFFFFFFFFFLL;
      sub_2186F9548();
      swift_allocObject();
      *(v667 + v644[5]) = sub_219BEF534();
      v1623 = 1;
      swift_allocObject();
      *(v667 + v644[6]) = sub_219BEF534();
      sub_218D554B0();
      swift_allocObject();
      v1566 = sub_219BEF274();
      sub_218D55534();
      swift_allocObject();
      v1565 = sub_219BEF274();
      v1623 = 0;
      sub_218D556B4();
      swift_allocObject();
      v669 = sub_219BEF534();
      LOBYTE(v1623) = 1;
      sub_2186F95C4();
      swift_allocObject();
      v670 = sub_219BEF534();
      v671 = (v667 + v644[7]);
      v672 = v1565;
      *v671 = v1566;
      v671[1] = v672;
      v671[2] = v669;
      v671[3] = v670;
      swift_allocObject();
      v673 = sub_219BEF274();
      swift_allocObject();
      v674 = sub_219BEF274();
      v1623 = 0;
      swift_allocObject();
      v675 = sub_219BEF534();
      LOBYTE(v1623) = 1;
      swift_allocObject();
      v676 = sub_219BEF534();
      v677 = (v667 + v644[8]);
      *v677 = v673;
      v677[1] = v674;
      v677[2] = v675;
      v677[3] = v676;
      LOBYTE(v1623) = 1;
      swift_allocObject();
      *(v667 + v644[9]) = sub_219BEF534();
      v1623 = 14;
      swift_allocObject();
      *(v667 + v644[10]) = sub_219BEF534();
      LOBYTE(v1623) = 1;
      sub_218D528A0();
      swift_allocObject();
      *(v667 + v644[11]) = sub_219BEF534();
      v678 = sub_219BF1F54();
      sub_218C3DB88(v678);

      sub_218BE9934();
      swift_allocObject();
      *(v667 + v644[12]) = sub_219BEEE04();
      swift_allocObject();
      v679 = sub_219BEEE04();
      sub_2190E9AA0(v1371, &qword_280E91A70, sub_2189AD5C8);
      *(v667 + v644[13]) = v679;
      v668 = v1373;
      sub_2190E9AFC(v667, v1373, type metadata accessor for SportsScoresTagFeedGroupKnobs);
      v680 = v1265;
      v681 = (v1604)(v1265, 1, v644);
      v561 = v1622;
      v633 = v1615;
      v569 = v1616;
      v567 = v1614;
      v643 = v1441;
      if (v681 != 1)
      {
        sub_2190E9AA0(v680, qword_280EAE9A8, type metadata accessor for SportsScoresTagFeedGroupKnobs);
      }
    }

    else
    {
      v668 = v1373;
      sub_2190E9AFC(v659, v1373, type metadata accessor for SportsScoresTagFeedGroupKnobs);
    }

    sub_2190E9AFC(v668, v561 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsScoresCondensedKnobs, type metadata accessor for SportsScoresTagFeedGroupKnobs);
    sub_2190E9A34(v567, v643, qword_280EB2970, type metadata accessor for SportsLinksTagFeedGroupKnobs);
    v682 = *(v1492 + 48);
    v683 = v1493;
    if (v682(v643, 1, v1493) == 1)
    {
      v684 = v643;
      v685 = v1619;
      (*(v1621 + 56))(v1619, 1, 1, v1620);
      v686 = v1374;
      sub_218B5BC90(v685, MEMORY[0x277D84F90], v1374);
      v687 = v682(v684, 1, v683);
      v688 = v1618;
      v689 = v1443;
      if (v687 != 1)
      {
        sub_2190E9AA0(v684, qword_280EB2970, type metadata accessor for SportsLinksTagFeedGroupKnobs);
      }
    }

    else
    {
      v686 = v1374;
      sub_2190E9AFC(v643, v1374, type metadata accessor for SportsLinksTagFeedGroupKnobs);
      v688 = v1618;
      v689 = v1443;
    }

    sub_2190E9AFC(v686, v561 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsLinksKnobs, type metadata accessor for SportsLinksTagFeedGroupKnobs);
    v690 = v1442;
    sub_2190E9A34(v569, v1442, qword_280EAC298, type metadata accessor for MySportsTopicTagFeedGroupKnobs);
    v692 = v1567 + 48;
    v691 = *(v1567 + 48);
    if ((v691)(v690, 1, v1568) == 1)
    {
      v1608 = v691;
      v693 = v1620;
      v694 = v1621;
      v695 = v1375;
      (*(v1621 + 56))(v1375, 1, 1, v1620);
      (*(v1609 + 56))(v1450, 1, 1, v1610);
      v696 = v1284;
      sub_2190E9A34(v695, v1284, &qword_280E91A70, sub_2189AD5C8);
      v697 = *(v694 + 48);
      v698 = v697(v696, 1, v693);
      v1567 = v692;
      if (v698 == 1)
      {
        type metadata accessor for TagFeedServiceConfig();
        sub_21877C990(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
        v699 = v1285;
        sub_219BEE974();
        v700 = v697(v696, 1, v693);
        v701 = v1376;
        if (v700 != 1)
        {
          sub_2190E9AA0(v696, &qword_280E91A70, sub_2189AD5C8);
        }
      }

      else
      {
        v699 = v1285;
        (*(v694 + 32))(v1285, v696, v693);
        v701 = v1376;
      }

      (*(v1621 + 32))(v701, v699, v693);
      v1623 = 1;
      sub_2186F9548();
      swift_allocObject();
      v706 = sub_219BEF534();
      v707 = v1568;
      *&v701[*(v1568 + 24)] = v706;
      v1623 = 5;
      swift_allocObject();
      *&v701[v707[5]] = sub_219BEF534();
      LOBYTE(v1623) = 1;
      sub_2186F95C4();
      swift_allocObject();
      *&v701[v707[7]] = sub_219BEF534();
      v1623 = 0;
      sub_2186ECA28();
      swift_allocObject();
      *&v701[v707[8]] = sub_219BEF534();
      v1623 = 0x40E5180000000000;
      swift_allocObject();
      *&v701[v707[9]] = sub_219BEF534();
      v1623 = 30;
      swift_allocObject();
      *&v701[v707[10]] = sub_219BEF534();
      LOBYTE(v1623) = 1;
      sub_218D525A0();
      swift_allocObject();
      *&v701[v707[11]] = sub_219BEF534();
      v1623 = 1;
      swift_allocObject();
      *&v701[v707[12]] = sub_219BEF534();
      v1623 = 5;
      swift_allocObject();
      *&v701[v707[13]] = sub_219BEF534();
      LOBYTE(v1623) = 1;
      swift_allocObject();
      *&v701[v707[14]] = sub_219BEF534();
      v1623 = 1;
      swift_allocObject();
      *&v701[v707[15]] = sub_219BEF534();
      v1623 = 0x7FFFFFFFFFFFFFFFLL;
      swift_allocObject();
      *&v701[v707[16]] = sub_219BEF534();
      sub_218D554B0();
      swift_allocObject();
      v708 = sub_219BEF274();
      sub_218D55534();
      swift_allocObject();
      v709 = sub_219BEF274();
      v1623 = 0;
      sub_218D556B4();
      swift_allocObject();
      v710 = sub_219BEF534();
      LOBYTE(v1623) = 1;
      swift_allocObject();
      v711 = sub_219BEF534();
      v712 = &v701[v707[17]];
      *v712 = v708;
      v712[1] = v709;
      v712[2] = v710;
      v712[3] = v711;
      v713 = v1291;
      sub_2190E9A34(v1450, v1291, &qword_280E916D0, MEMORY[0x277D324F0]);
      v715 = v1609;
      v714 = v1610;
      v716 = *(v1609 + 48);
      if (v716(v713, 1, v1610) == 1)
      {
        v717 = v1292;
        sub_219BEF1C4();
        if (v716(v713, 1, v714) != 1)
        {
          sub_2190E9AA0(v713, &qword_280E916D0, MEMORY[0x277D324F0]);
        }
      }

      else
      {
        v717 = v1292;
        (*(v715 + 32))(v1292, v713, v714);
      }

      v718 = v1568;
      v719 = v1376;
      (*(v1609 + 32))(&v1376[*(v1568 + 72)], v717, v714);
      v1623 = 0x7FFFFFFFFFFFFFFFLL;
      swift_allocObject();
      *(v719 + v718[19]) = sub_219BEF534();
      sub_2190E9EE0();
      swift_allocObject();
      *(v719 + v718[20]) = sub_219BEEE04();
      LOBYTE(v1623) = 1;
      sub_218D528A0();
      swift_allocObject();
      *(v719 + v718[21]) = sub_219BEF534();
      v1623 = 6;
      swift_allocObject();
      *(v719 + v718[22]) = sub_219BEF534();
      v1623 = 0x4059000000000000;
      swift_allocObject();
      *(v719 + v718[23]) = sub_219BEF534();
      v1623 = 0;
      swift_allocObject();
      *(v719 + v718[24]) = sub_219BEF534();
      LOBYTE(v1623) = 1;
      swift_allocObject();
      v720 = sub_219BEF534();
      sub_2190E9AA0(v1450, &qword_280E916D0, MEMORY[0x277D324F0]);
      sub_2190E9AA0(v1375, &qword_280E91A70, sub_2189AD5C8);
      *(v719 + v718[25]) = v720;
      v703 = v1377;
      sub_2190E9AFC(v719, v1377, type metadata accessor for MySportsTopicTagFeedGroupKnobs);
      v721 = v1442;
      v722 = (v1608)(v1442, 1, v718);
      v704 = v1620;
      v688 = v1618;
      v705 = v1612;
      v633 = v1615;
      v561 = v1622;
      v689 = v1443;
      if (v722 != 1)
      {
        sub_2190E9AA0(v721, qword_280EAC298, type metadata accessor for MySportsTopicTagFeedGroupKnobs);
      }
    }

    else
    {
      v702 = v690;
      v703 = v1377;
      sub_2190E9AFC(v702, v1377, type metadata accessor for MySportsTopicTagFeedGroupKnobs);
      v704 = v1620;
      v705 = v1612;
    }

    sub_2190E9AFC(v703, v561 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_mySportsTopicKnobs, type metadata accessor for MySportsTopicTagFeedGroupKnobs);
    sub_2190E9A34(v1574, v689, qword_280EA46C0, type metadata accessor for SportsStandingsTagFeedGroupKnobs);
    v723 = *(v1494 + 48);
    v724 = v723(v689, 1, v1542);
    v725 = v1379;
    v726 = v1448;
    if (v724 == 1)
    {
      v727 = v1621;
      (*(v1621 + 56))(v1448, 1, 1, v704);
      v728 = v726;
      v729 = v1287;
      sub_2190E9A34(v728, v1287, &qword_280E91A70, sub_2189AD5C8);
      v730 = *(v727 + 48);
      if (v730(v729, 1, v704) == 1)
      {
        type metadata accessor for TagFeedServiceConfig();
        sub_21877C990(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
        v731 = v1290;
        sub_219BEE974();
        v580 = v730(v729, 1, v704) == 1;
        v732 = v729;
        v733 = v1296;
        if (!v580)
        {
          sub_2190E9AA0(v732, &qword_280E91A70, sub_2189AD5C8);
        }
      }

      else
      {
        v734 = *(v727 + 32);
        v731 = v1290;
        v734(v1290, v729, v704);
        v733 = v1296;
      }

      (*(v1621 + 32))(v733, v731, v704);
      v1623 = 0x7FFFFFFFFFFFFFFFLL;
      sub_2186F9548();
      swift_allocObject();
      v735 = sub_219BEF534();
      v736 = v1542;
      *(v733 + *(v1542 + 20)) = v735;
      v1623 = 1;
      swift_allocObject();
      v737 = sub_219BEF534();
      sub_2190E9AA0(v1448, &qword_280E91A70, sub_2189AD5C8);
      *(v733 + *(v736 + 24)) = v737;
      sub_2190E9AFC(v733, v725, type metadata accessor for SportsStandingsTagFeedGroupKnobs);
      v738 = v723(v689, 1, v736);
      v688 = v1618;
      v705 = v1612;
      v633 = v1615;
      if (v738 != 1)
      {
        sub_2190E9AA0(v689, qword_280EA46C0, type metadata accessor for SportsStandingsTagFeedGroupKnobs);
      }
    }

    else
    {
      sub_2190E9AFC(v689, v1379, type metadata accessor for SportsStandingsTagFeedGroupKnobs);
    }

    v739 = v1622;
    sub_2190E9AFC(v725, v1622 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsStandingsKnobs, type metadata accessor for SportsStandingsTagFeedGroupKnobs);
    v740 = v1445;
    sub_2190E9A34(v1575, v1445, qword_280EAB210, type metadata accessor for SportsBracketTagFeedGroupKnobs);
    v741 = *(v1495 + 48);
    if (v741(v740, 1, v1543) == 1)
    {
      v742 = v1621;
      v743 = v1289;
      (*(v1621 + 56))(v1289, 1, 1, v704);
      v744 = v1288;
      sub_2190E9A34(v743, v1288, &qword_280E91A70, sub_2189AD5C8);
      v745 = *(v742 + 48);
      if (v745(v744, 1, v704) == 1)
      {
        type metadata accessor for TagFeedServiceConfig();
        sub_21877C990(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
        v746 = v1294;
        sub_219BEE974();
        v747 = v745(v744, 1, v704);
        v748 = v1299;
        if (v747 != 1)
        {
          sub_2190E9AA0(v744, &qword_280E91A70, sub_2189AD5C8);
        }
      }

      else
      {
        v746 = v1294;
        (*(v742 + 32))(v1294, v744, v704);
        v748 = v1299;
      }

      (*(v742 + 32))(v748, v746, v704);
      v1623 = 0x7FFFFFFFFFFFFFFFLL;
      sub_2186F9548();
      swift_allocObject();
      v751 = sub_219BEF534();
      v752 = v1543;
      *(v748 + *(v1543 + 20)) = v751;
      v1623 = 1;
      swift_allocObject();
      v753 = sub_219BEF534();
      sub_2190E9AA0(v743, &qword_280E91A70, sub_2189AD5C8);
      *(v748 + *(v752 + 24)) = v753;
      v754 = v1382;
      sub_2190E9AFC(v748, v1382, type metadata accessor for SportsBracketTagFeedGroupKnobs);
      v755 = v1445;
      v756 = v741(v1445, 1, v752);
      v749 = v754;
      v688 = v1618;
      v705 = v1612;
      v633 = v1615;
      v750 = v1452;
      v739 = v1622;
      if (v756 != 1)
      {
        sub_2190E9AA0(v755, qword_280EAB210, type metadata accessor for SportsBracketTagFeedGroupKnobs);
      }
    }

    else
    {
      v749 = v1382;
      sub_2190E9AFC(v740, v1382, type metadata accessor for SportsBracketTagFeedGroupKnobs);
      v750 = v1452;
      v742 = v1621;
    }

    sub_2190E9AFC(v749, v739 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsBracketKnobs, type metadata accessor for SportsBracketTagFeedGroupKnobs);
    v757 = v633;
    v758 = v1446;
    sub_2190E9A34(v757, v1446, qword_280EA49D8, type metadata accessor for SportsBoxScoresTagFeedGroupKnobs);
    v759 = *(v1496 + 48);
    if (v759(v758, 1, v1544) == 1)
    {
      (*(v742 + 56))(v750, 1, 1, v704);
      v760 = v750;
      v761 = v1293;
      sub_2190E9A34(v760, v1293, &qword_280E91A70, sub_2189AD5C8);
      v762 = *(v742 + 48);
      if (v762(v761, 1, v704) == 1)
      {
        type metadata accessor for TagFeedServiceConfig();
        sub_21877C990(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
        v763 = v1295;
        sub_219BEE974();
        v764 = v762(v761, 1, v704);
        v765 = v1300;
        if (v764 != 1)
        {
          sub_2190E9AA0(v761, &qword_280E91A70, sub_2189AD5C8);
        }
      }

      else
      {
        v763 = v1295;
        (*(v742 + 32))(v1295, v761, v704);
        v765 = v1300;
      }

      (*(v742 + 32))(v765, v763, v704);
      v768 = sub_219BF1F54();
      sub_218C3DB88(v768);

      sub_218BE9934();
      swift_allocObject();
      v769 = sub_219BEEE04();
      v770 = v1544;
      *(v765 + *(v1544 + 20)) = v769;
      swift_allocObject();
      v771 = sub_219BEEE04();
      sub_2190E9AA0(v1452, &qword_280E91A70, sub_2189AD5C8);
      *(v765 + *(v770 + 24)) = v771;
      v767 = v1384;
      sub_2190E9AFC(v765, v1384, type metadata accessor for SportsBoxScoresTagFeedGroupKnobs);
      v772 = v1446;
      v773 = v759(v1446, 1, v770);
      v688 = v1618;
      v705 = v1612;
      v739 = v1622;
      if (v773 != 1)
      {
        sub_2190E9AA0(v772, qword_280EA49D8, type metadata accessor for SportsBoxScoresTagFeedGroupKnobs);
      }
    }

    else
    {
      v766 = v758;
      v767 = v1384;
      sub_2190E9AFC(v766, v1384, type metadata accessor for SportsBoxScoresTagFeedGroupKnobs);
    }

    sub_2190E9AFC(v767, v739 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsBoxScoresKnobs, type metadata accessor for SportsBoxScoresTagFeedGroupKnobs);
    v774 = v1447;
    sub_2190E9A34(v705, v1447, qword_280EA4848, type metadata accessor for SportsEventInfoTagFeedGroupKnobs);
    v775 = *(v1497 + 48);
    v776 = v775(v774, 1, v1545);
    v777 = v1454;
    v778 = v1378;
    if (v776 == 1)
    {
      (*(v742 + 56))(v1454, 1, 1, v704);
      sub_2190E9A34(v777, v778, &qword_280E91A70, sub_2189AD5C8);
      v779 = *(v742 + 48);
      if (v779(v778, 1, v704) == 1)
      {
        type metadata accessor for TagFeedServiceConfig();
        sub_21877C990(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
        v780 = v1297;
        sub_219BEE974();
        v781 = v779(v778, 1, v704);
        v782 = v1303;
        if (v781 != 1)
        {
          sub_2190E9AA0(v778, &qword_280E91A70, sub_2189AD5C8);
        }
      }

      else
      {
        v780 = v1297;
        (*(v742 + 32))(v1297, v778, v704);
        v782 = v1303;
      }

      (*(v742 + 32))(v782, v780, v704);
      v784 = sub_219BF1F54();
      sub_218C3DB88(v784);

      sub_218BE9934();
      swift_allocObject();
      v785 = sub_219BEEE04();
      v786 = v1545;
      *(v782 + *(v1545 + 20)) = v785;
      swift_allocObject();
      *(v782 + v786[6]) = sub_219BEEE04();
      v1623 = 2;
      sub_2186F9548();
      swift_allocObject();
      *(v782 + v786[7]) = sub_219BEF534();
      v1623 = 2;
      swift_allocObject();
      *(v782 + v786[8]) = sub_219BEF534();
      v1623 = 1;
      swift_allocObject();
      *(v782 + v786[9]) = sub_219BEF534();
      v1623 = 1;
      swift_allocObject();
      v787 = sub_219BEF534();
      sub_2190E9AA0(v1454, &qword_280E91A70, sub_2189AD5C8);
      *(v782 + v786[10]) = v787;
      v783 = v1387;
      sub_2190E9AFC(v782, v1387, type metadata accessor for SportsEventInfoTagFeedGroupKnobs);
      v788 = v1447;
      v789 = v775(v1447, 1, v786);
      v688 = v1618;
      if (v789 != 1)
      {
        sub_2190E9AA0(v788, qword_280EA4848, type metadata accessor for SportsEventInfoTagFeedGroupKnobs);
      }
    }

    else
    {
      v783 = v1387;
      sub_2190E9AFC(v774, v1387, type metadata accessor for SportsEventInfoTagFeedGroupKnobs);
    }

    sub_2190E9AFC(v783, v1622 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsEventInfoKnobs, type metadata accessor for SportsEventInfoTagFeedGroupKnobs);
    v790 = v1449;
    sub_2190E9A34(v1576, v1449, qword_280E9A648, type metadata accessor for SportsInjuryReportsTagFeedGroupKnobs);
    v791 = *(v1498 + 48);
    v792 = v791(v790, 1, v1546);
    v793 = v1455;
    if (v792 == 1)
    {
      v794 = v1621;
      (*(v1621 + 56))(v1455, 1, 1, v704);
      v795 = v1298;
      sub_2190E9A34(v793, v1298, &qword_280E91A70, sub_2189AD5C8);
      v796 = *(v794 + 48);
      if (v796(v795, 1, v704) == 1)
      {
        type metadata accessor for TagFeedServiceConfig();
        sub_21877C990(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
        v797 = v1301;
        sub_219BEE974();
        v798 = v796(v795, 1, v704);
        v799 = v1305;
        if (v798 != 1)
        {
          sub_2190E9AA0(v795, &qword_280E91A70, sub_2189AD5C8);
        }
      }

      else
      {
        v797 = v1301;
        (*(v794 + 32))(v1301, v795, v704);
        v799 = v1305;
      }

      (*(v794 + 32))(v799, v797, v704);
      v803 = sub_219BF1F54();
      sub_218C3DB88(v803);

      sub_218BE9934();
      swift_allocObject();
      v804 = sub_219BEEE04();
      v805 = v1546;
      *(v799 + *(v1546 + 20)) = v804;
      swift_allocObject();
      v806 = sub_219BEEE04();
      sub_2190E9AA0(v1455, &qword_280E91A70, sub_2189AD5C8);
      *(v799 + *(v805 + 24)) = v806;
      v800 = v1388;
      sub_2190E9AFC(v799, v1388, type metadata accessor for SportsInjuryReportsTagFeedGroupKnobs);
      v807 = v1449;
      v808 = v791(v1449, 1, v805);
      v688 = v1618;
      v801 = v1457;
      v802 = v1383;
      if (v808 != 1)
      {
        sub_2190E9AA0(v807, qword_280E9A648, type metadata accessor for SportsInjuryReportsTagFeedGroupKnobs);
      }
    }

    else
    {
      v800 = v1388;
      sub_2190E9AFC(v790, v1388, type metadata accessor for SportsInjuryReportsTagFeedGroupKnobs);
      v794 = v1621;
      v801 = v1457;
      v802 = v1383;
    }

    v809 = v1622;
    sub_2190E9AFC(v800, v1622 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsInjuryReportsKnobs, type metadata accessor for SportsInjuryReportsTagFeedGroupKnobs);
    v810 = v688;
    v811 = v1451;
    sub_2190E9A34(v810, v1451, qword_280EA1D08, type metadata accessor for SportsKeyPlayersTagFeedGroupKnobs);
    v812 = *(v1499 + 48);
    if (v812(v811, 1, v1547) == 1)
    {
      (*(v794 + 56))(v801, 1, 1, v704);
      sub_2190E9A34(v801, v802, &qword_280E91A70, sub_2189AD5C8);
      v813 = *(v794 + 48);
      if (v813(v802, 1, v704) == 1)
      {
        type metadata accessor for TagFeedServiceConfig();
        sub_21877C990(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
        v814 = v1302;
        sub_219BEE974();
        v815 = v813(v802, 1, v704);
        v816 = v1306;
        if (v815 != 1)
        {
          sub_2190E9AA0(v802, &qword_280E91A70, sub_2189AD5C8);
        }
      }

      else
      {
        v814 = v1302;
        (*(v794 + 32))(v1302, v802, v704);
        v816 = v1306;
      }

      (*(v794 + 32))(v816, v814, v704);
      v1623 = 0x7FFFFFFFFFFFFFFFLL;
      sub_2186F9548();
      swift_allocObject();
      v819 = sub_219BEF534();
      v820 = v1547;
      *(v816 + *(v1547 + 20)) = v819;
      v1623 = 1;
      swift_allocObject();
      *(v816 + v820[6]) = sub_219BEF534();
      v821 = sub_219BF1F54();
      sub_218C3DB88(v821);

      sub_218BE9934();
      swift_allocObject();
      *(v816 + v820[7]) = sub_219BEEE04();
      swift_allocObject();
      v822 = sub_219BEEE04();
      sub_2190E9AA0(v1457, &qword_280E91A70, sub_2189AD5C8);
      *(v816 + v820[8]) = v822;
      v817 = v1392;
      sub_2190E9AFC(v816, v1392, type metadata accessor for SportsKeyPlayersTagFeedGroupKnobs);
      v823 = v1451;
      v824 = v812(v1451, 1, v820);
      v818 = v1548;
      v809 = v1622;
      if (v824 != 1)
      {
        sub_2190E9AA0(v823, qword_280EA1D08, type metadata accessor for SportsKeyPlayersTagFeedGroupKnobs);
      }
    }

    else
    {
      v817 = v1392;
      sub_2190E9AFC(v811, v1392, type metadata accessor for SportsKeyPlayersTagFeedGroupKnobs);
      v818 = v1548;
    }

    sub_2190E9AFC(v817, v809 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsKeyPlayersKnobs, type metadata accessor for SportsKeyPlayersTagFeedGroupKnobs);
    v825 = v1453;
    sub_2190E9A34(v1577, v1453, qword_280E9A708, type metadata accessor for SportsEventArticlesTagFeedGroupKnobs);
    v826 = *(v1500 + 48);
    v827 = v826(v825, 1, v818);
    v828 = v1458;
    v829 = v1385;
    if (v827 == 1)
    {
      v830 = v1621;
      (*(v1621 + 56))(v1458, 1, 1, v704);
      sub_2190E9A34(v828, v829, &qword_280E91A70, sub_2189AD5C8);
      v831 = *(v830 + 48);
      if (v831(v829, 1, v704) == 1)
      {
        type metadata accessor for TagFeedServiceConfig();
        sub_21877C990(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
        v832 = v1304;
        sub_219BEE974();
        v833 = v831(v829, 1, v704);
        v834 = v1309;
        if (v833 != 1)
        {
          sub_2190E9AA0(v829, &qword_280E91A70, sub_2189AD5C8);
        }
      }

      else
      {
        v832 = v1304;
        (*(v830 + 32))(v1304, v829, v704);
        v834 = v1309;
      }

      (*(v830 + 32))(v834, v832, v704);
      v840 = sub_219BF1F54();
      sub_218C3DB88(v840);

      sub_218BE9934();
      swift_allocObject();
      v841 = sub_219BEEE04();
      v842 = v1548;
      *(v834 + *(v1548 + 20)) = v841;
      swift_allocObject();
      *(v834 + v842[6]) = sub_219BEEE04();
      v1623 = 5;
      sub_2186F9548();
      swift_allocObject();
      *(v834 + v842[7]) = sub_219BEF534();
      v1623 = 1;
      swift_allocObject();
      *(v834 + v842[8]) = sub_219BEF534();
      LOBYTE(v1623) = 1;
      sub_2186F95C4();
      swift_allocObject();
      *(v834 + v842[9]) = sub_219BEF534();
      v1623 = 0;
      sub_2186ECA28();
      swift_allocObject();
      v843 = sub_219BEF534();
      sub_2190E9AA0(v1458, &qword_280E91A70, sub_2189AD5C8);
      *(v834 + v842[10]) = v843;
      v836 = v1393;
      sub_2190E9AFC(v834, v1393, type metadata accessor for SportsEventArticlesTagFeedGroupKnobs);
      v844 = v1453;
      v845 = v826(v1453, 1, v842);
      v837 = v1578;
      v838 = v1502;
      v839 = v1501;
      v809 = v1622;
      if (v845 != 1)
      {
        sub_2190E9AA0(v844, qword_280E9A708, type metadata accessor for SportsEventArticlesTagFeedGroupKnobs);
      }
    }

    else
    {
      v835 = v825;
      v836 = v1393;
      sub_2190E9AFC(v835, v1393, type metadata accessor for SportsEventArticlesTagFeedGroupKnobs);
      v837 = v1578;
      v838 = v1502;
      v839 = v1501;
    }

    sub_2190E9AFC(v836, v809 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsEventArticlesKnobs, type metadata accessor for SportsEventArticlesTagFeedGroupKnobs);
    v846 = v1380;
    sub_2190E9A34(v837, v1380, &qword_280EAEC50, type metadata accessor for SportsRecordTagFeedGroupKnobs);
    v847 = *(v839 + 48);
    v848 = v847(v846, 1, v838);
    v849 = v1580;
    v850 = v1579;
    if (v848 == 1)
    {
      v851 = v1621;
      v852 = v704;
      v853 = v1619;
      (*(v1621 + 56))(v1619, 1, 1, v852);
      v854 = v1394;
      sub_218ED3A90(v853, v1394);
      v855 = v847(v846, 1, v838);
      v856 = v1391;
      if (v855 != 1)
      {
        sub_2190E9AA0(v846, &qword_280EAEC50, type metadata accessor for SportsRecordTagFeedGroupKnobs);
      }
    }

    else
    {
      v854 = v1394;
      sub_2190E9AFC(v846, v1394, type metadata accessor for SportsRecordTagFeedGroupKnobs);
      v851 = v1621;
      v856 = v1391;
    }

    sub_2190E9AFC(v854, v809 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsRecordKnobs, type metadata accessor for SportsRecordTagFeedGroupKnobs);
    v857 = v1381;
    sub_2190E9A34(v850, v1381, &qword_280EA1AF0, type metadata accessor for SportsNavigationTagFeedGroupKnobs);
    v858 = *(v1503 + 48);
    v859 = v1504;
    if (v858(v857, 1, v1504) == 1)
    {
      v860 = v1619;
      (*(v851 + 56))(v1619, 1, 1, v1620);
      v861 = v859;
      v862 = v1395;
      sub_2196EACD4(v860, v1395);
      v863 = v858(v857, 1, v861);
      v864 = v1613;
      v865 = v1390;
      v866 = v1456;
      if (v863 != 1)
      {
        sub_2190E9AA0(v857, &qword_280EA1AF0, type metadata accessor for SportsNavigationTagFeedGroupKnobs);
      }
    }

    else
    {
      v862 = v1395;
      sub_2190E9AFC(v857, v1395, type metadata accessor for SportsNavigationTagFeedGroupKnobs);
      v864 = v1613;
      v865 = v1390;
      v866 = v1456;
    }

    sub_2190E9AFC(v862, v1622 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsNavigationKnobs, type metadata accessor for SportsNavigationTagFeedGroupKnobs);
    sub_2190E9A34(v849, v866, qword_280EA7F10, type metadata accessor for SportsScheduleTagFeedGroupKnobs);
    v867 = *(v1505 + 48);
    v868 = v1506;
    if (v867(v866, 1, v1506) == 1)
    {
      v869 = v1620;
      (*(v851 + 56))(v856, 1, 1, v1620);
      sub_2190E9A34(v856, v865, &qword_280E91A70, sub_2189AD5C8);
      v870 = *(v851 + 48);
      if (v870(v865, 1, v869) == 1)
      {
        type metadata accessor for TagFeedServiceConfig();
        sub_21877C990(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
        v871 = v1308;
        sub_219BEE974();
        v872 = v870(v865, 1, v869);
        v873 = v1313;
        if (v872 != 1)
        {
          sub_2190E9AA0(v865, &qword_280E91A70, sub_2189AD5C8);
        }
      }

      else
      {
        v871 = v1308;
        (*(v851 + 32))(v1308, v865, v869);
        v873 = v1313;
      }

      (*(v851 + 32))(v873, v871, v869);
      LOBYTE(v1623) = 0;
      sub_218DF8B4C();
      swift_allocObject();
      *(v873 + v868[5]) = sub_219BEF534();
      LOBYTE(v1623) = 1;
      sub_218D528A0();
      swift_allocObject();
      *(v873 + v868[6]) = sub_219BEF534();
      v1623 = 14;
      sub_2186F9548();
      swift_allocObject();
      v875 = sub_219BEF534();
      sub_2190E9AA0(v856, &qword_280E91A70, sub_2189AD5C8);
      *(v873 + v868[7]) = v875;
      v874 = v1399;
      sub_2190E9AFC(v873, v1399, type metadata accessor for SportsScheduleTagFeedGroupKnobs);
      v876 = v1456;
      v877 = v867(v1456, 1, v868);
      v864 = v1613;
      if (v877 != 1)
      {
        sub_2190E9AA0(v876, qword_280EA7F10, type metadata accessor for SportsScheduleTagFeedGroupKnobs);
      }
    }

    else
    {
      v874 = v1399;
      sub_2190E9AFC(v866, v1399, type metadata accessor for SportsScheduleTagFeedGroupKnobs);
      v869 = v1620;
    }

    sub_2190E9AFC(v874, v1622 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsScheduleKnobs, type metadata accessor for SportsScheduleTagFeedGroupKnobs);
    v878 = v1386;
    sub_2190E9A34(v1581, v1386, qword_280EA18A0, type metadata accessor for SportsTopStoriesTagFeedGroupKnobs);
    v879 = *(v1507 + 48);
    v880 = v879(v878, 1, v1549);
    v881 = v1463;
    v882 = v1461;
    if (v880 == 1)
    {
      (*(v851 + 56))(v1461, 1, 1, v869);
      v883 = v1307;
      sub_2190E9A34(v882, v1307, &qword_280E91A70, sub_2189AD5C8);
      v884 = *(v851 + 48);
      if (v884(v883, 1, v869) == 1)
      {
        type metadata accessor for TagFeedServiceConfig();
        sub_21877C990(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
        v885 = v1310;
        sub_219BEE974();
        v580 = v884(v883, 1, v869) == 1;
        v886 = v883;
        v887 = v1315;
        if (!v580)
        {
          sub_2190E9AA0(v886, &qword_280E91A70, sub_2189AD5C8);
        }
      }

      else
      {
        v885 = v1310;
        (*(v851 + 32))(v1310, v883, v869);
        v887 = v1315;
      }

      (*(v851 + 32))(v887, v885, v869);
      v1623 = 0x7FFFFFFFFFFFFFFFLL;
      sub_2186F9548();
      swift_allocObject();
      v890 = sub_219BEF534();
      v891 = v1549;
      *(v887 + *(v1549 + 20)) = v890;
      v1623 = 1;
      swift_allocObject();
      *(v887 + v891[6]) = sub_219BEF534();
      LOBYTE(v1623) = 1;
      sub_2186F95C4();
      swift_allocObject();
      *(v887 + v891[7]) = sub_219BEF534();
      v1623 = 0;
      sub_2186ECA28();
      swift_allocObject();
      *(v887 + v891[8]) = sub_219BEF534();
      LOBYTE(v1623) = 1;
      sub_2190E9B64();
      swift_allocObject();
      *(v887 + v891[9]) = sub_219BEF534();
      v1623 = 0x7FEFFFFFFFFFFFFFLL;
      swift_allocObject();
      v892 = sub_219BEF534();
      sub_2190E9AA0(v1461, &qword_280E91A70, sub_2189AD5C8);
      *(v887 + v891[10]) = v892;
      v888 = v1402;
      sub_2190E9AFC(v887, v1402, type metadata accessor for SportsTopStoriesTagFeedGroupKnobs);
      v893 = v879(v878, 1, v891);
      v864 = v1613;
      v889 = v1467;
      v881 = v1463;
      if (v893 != 1)
      {
        sub_2190E9AA0(v878, qword_280EA18A0, type metadata accessor for SportsTopStoriesTagFeedGroupKnobs);
      }
    }

    else
    {
      v888 = v1402;
      sub_2190E9AFC(v878, v1402, type metadata accessor for SportsTopStoriesTagFeedGroupKnobs);
      v889 = v1467;
    }

    v894 = v1622;
    sub_2190E9AFC(v888, v1622 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsTopStoriesKnobs, type metadata accessor for SportsTopStoriesTagFeedGroupKnobs);
    v895 = v1459;
    sub_2190E9A34(v1582, v1459, qword_280EA4788, type metadata accessor for SportsFavoritesTagFeedGroupKnobs);
    v896 = *(v1508 + 48);
    if (v896(v895, 1, v1550) == 1)
    {
      v897 = v1621;
      (*(v1621 + 56))(v881, 1, 1, v869);
      v898 = v1311;
      sub_2190E9A34(v881, v1311, &qword_280E91A70, sub_2189AD5C8);
      v899 = *(v897 + 48);
      if (v899(v898, 1, v869) == 1)
      {
        type metadata accessor for TagFeedServiceConfig();
        sub_21877C990(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
        v900 = v1312;
        sub_219BEE974();
        v901 = v899(v898, 1, v869);
        v902 = v1318;
        if (v901 != 1)
        {
          sub_2190E9AA0(v898, &qword_280E91A70, sub_2189AD5C8);
        }
      }

      else
      {
        v900 = v1312;
        (*(v897 + 32))(v1312, v898, v869);
        v902 = v1318;
      }

      (*(v897 + 32))(v902, v900, v869);
      v1623 = 1;
      sub_2186F9548();
      swift_allocObject();
      v903 = sub_219BEF534();
      v904 = v1550;
      *(v902 + *(v1550 + 20)) = v903;
      v1623 = 0x7FFFFFFFFFFFFFFFLL;
      swift_allocObject();
      v905 = sub_219BEF534();
      sub_2190E9AA0(v881, &qword_280E91A70, sub_2189AD5C8);
      *(v902 + *(v904 + 24)) = v905;
      v889 = v1467;
      sub_2190E9AFC(v902, v1467, type metadata accessor for SportsFavoritesTagFeedGroupKnobs);
      v906 = v1459;
      v907 = v896(v1459, 1, v904);
      v864 = v1613;
      v894 = v1622;
      if (v907 != 1)
      {
        sub_2190E9AA0(v906, qword_280EA4788, type metadata accessor for SportsFavoritesTagFeedGroupKnobs);
      }
    }

    else
    {
      sub_2190E9AFC(v895, v889, type metadata accessor for SportsFavoritesTagFeedGroupKnobs);
      v897 = v1621;
    }

    sub_2190E9AFC(v889, v894 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsFavoritesKnobs, type metadata accessor for SportsFavoritesTagFeedGroupKnobs);
    v908 = v1389;
    sub_2190E9A34(v864, v1389, &qword_280EBFB10, type metadata accessor for WeatherTagFeedGroupKnobs);
    v909 = *(v1509 + 48);
    v910 = v1510;
    v911 = v909(v908, 1, v1510);
    v912 = v1583;
    v913 = v1404;
    if (v911 == 1)
    {
      v914 = v1619;
      (*(v897 + 56))(v1619, 1, 1, v869);
      sub_21973E880(v914, v913);
      v915 = v909(v908, 1, v910);
      v916 = v1605;
      v917 = v1397;
      v918 = v1396;
      if (v915 != 1)
      {
        sub_2190E9AA0(v908, &qword_280EBFB10, type metadata accessor for WeatherTagFeedGroupKnobs);
      }
    }

    else
    {
      sub_2190E9AFC(v908, v1404, type metadata accessor for WeatherTagFeedGroupKnobs);
      v916 = v1605;
      v917 = v1397;
      v918 = v1396;
    }

    sub_2190E9AFC(v913, v1622 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_weatherKnobs, type metadata accessor for WeatherTagFeedGroupKnobs);
    v919 = v912;
    v920 = v1460;
    sub_2190E9A34(v919, v1460, qword_280EB87C0, type metadata accessor for HighlightsTagFeedGroupKnobs);
    v921 = *(v1511 + 48);
    if (v921(v920, 1, v1551) == 1)
    {
      v922 = v1620;
      (*(v897 + 56))(v917, 1, 1, v1620);
      sub_2190E9A34(v917, v918, &qword_280E91A70, sub_2189AD5C8);
      v923 = *(v897 + 48);
      if (v923(v918, 1, v922) == 1)
      {
        type metadata accessor for TagFeedServiceConfig();
        sub_21877C990(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
        v924 = v1314;
        sub_219BEE974();
        v925 = v923(v918, 1, v922);
        v926 = v1320;
        if (v925 != 1)
        {
          sub_2190E9AA0(v918, &qword_280E91A70, sub_2189AD5C8);
        }
      }

      else
      {
        v924 = v1314;
        (*(v897 + 32))(v1314, v918, v922);
        v926 = v1320;
      }

      (*(v897 + 32))(v926, v924, v922);
      v1623 = 1;
      sub_2186F9548();
      swift_allocObject();
      v929 = sub_219BEF534();
      v930 = v1551;
      *(v926 + *(v1551 + 20)) = v929;
      v1623 = 0x7FFFFFFFFFFFFFFFLL;
      swift_allocObject();
      *(v926 + *(v930 + 24)) = sub_219BEF534();
      v1623 = 0x4122750000000000;
      sub_2186ECA28();
      swift_allocObject();
      v931 = sub_219BEF534();
      sub_2190E9AA0(v917, &qword_280E91A70, sub_2189AD5C8);
      *(v926 + *(v930 + 28)) = v931;
      v928 = v1405;
      sub_2190E9AFC(v926, v1405, type metadata accessor for HighlightsTagFeedGroupKnobs);
      v932 = v1460;
      v933 = v921(v1460, 1, v930);
      v916 = v1605;
      if (v933 != 1)
      {
        sub_2190E9AA0(v932, qword_280EB87C0, type metadata accessor for HighlightsTagFeedGroupKnobs);
      }
    }

    else
    {
      v927 = v920;
      v928 = v1405;
      sub_2190E9AFC(v927, v1405, type metadata accessor for HighlightsTagFeedGroupKnobs);
    }

    sub_2190E9AFC(v928, v1622 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_highlightsKnobs, type metadata accessor for HighlightsTagFeedGroupKnobs);
    v934 = v1462;
    sub_2190E9A34(v916, v1462, qword_280EC4D68, type metadata accessor for ForYouTagFeedGroupKnobs);
    v935 = *(v1512 + 48);
    v936 = v1513;
    v937 = v935(v934, 1, v1513);
    v938 = v1465;
    v939 = v1401;
    if (v937 == 1)
    {
      v940 = v1620;
      (*(v897 + 56))(v1465, 1, 1, v1620);
      v941 = sub_219BEF814();
      (*(*(v941 - 8) + 56))(v1407, 1, 1, v941);
      sub_2190E9A34(v938, v939, &qword_280E91A70, sub_2189AD5C8);
      v942 = *(v897 + 48);
      if (v942(v939, 1, v940) == 1)
      {
        type metadata accessor for TagFeedServiceConfig();
        sub_21877C990(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
        v943 = v1316;
        sub_219BEE974();
        v580 = v942(v939, 1, v940) == 1;
        v944 = v939;
        v945 = v1323;
        if (!v580)
        {
          sub_2190E9AA0(v944, &qword_280E91A70, sub_2189AD5C8);
        }
      }

      else
      {
        v943 = v1316;
        (*(v897 + 32))(v1316, v939, v940);
        v945 = v1323;
      }

      (*(v897 + 32))(v945, v943, v940);
      *(v945 + v936[5]) = 0;
      v1623 = 1;
      sub_2186F9548();
      swift_allocObject();
      *(v945 + v936[6]) = sub_219BEF534();
      v1623 = 5;
      swift_allocObject();
      *(v945 + v936[7]) = sub_219BEF534();
      LOBYTE(v1623) = 0;
      sub_2186F95C4();
      swift_allocObject();
      *(v945 + v936[8]) = sub_219BEF534();
      *(v945 + v936[9]) = 1;
      v949 = MEMORY[0x277D32720];
      v950 = v1407;
      sub_2190E9A34(v1407, v945 + v936[10], &qword_280E912E0, MEMORY[0x277D32720]);
      sub_219BF5CE4();
      v1623 = v951;
      sub_2186ECA28();
      swift_allocObject();
      *(v945 + v936[11]) = sub_219BEF534();
      v1623 = 30;
      swift_allocObject();
      v952 = sub_219BEF534();
      sub_2190E9AA0(v950, &qword_280E912E0, v949);
      sub_2190E9AA0(v1465, &qword_280E91A70, sub_2189AD5C8);
      *(v945 + v936[12]) = v952;
      v946 = v1408;
      sub_2190E9AFC(v945, v1408, type metadata accessor for ForYouTagFeedGroupKnobs);
      v953 = v1462;
      v954 = v935(v1462, 1, v936);
      v947 = v1473;
      v948 = v1552;
      if (v954 != 1)
      {
        sub_2190E9AA0(v953, qword_280EC4D68, type metadata accessor for ForYouTagFeedGroupKnobs);
      }
    }

    else
    {
      v946 = v1408;
      sub_2190E9AFC(v934, v1408, type metadata accessor for ForYouTagFeedGroupKnobs);
      v947 = v1473;
      v948 = v1552;
    }

    sub_2190E9AFC(v946, v1622 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_forYouKnobs, type metadata accessor for ForYouTagFeedGroupKnobs);
    v955 = v1464;
    sub_2190E9A34(v1584, v1464, qword_280EAB8E8, type metadata accessor for RecentStoriesTagFeedGroupKnobs);
    v956 = *(v1514 + 48);
    v957 = v956(v955, 1, v948);
    v958 = v1403;
    if (v957 == 1)
    {
      v960 = v1620;
      v959 = v1621;
      (*(v1621 + 56))(v1403, 1, 1, v1620);
      v961 = sub_219BEF814();
      (*(*(v961 - 8) + 56))(v1409, 1, 1, v961);
      v962 = v1317;
      sub_2190E9A34(v958, v1317, &qword_280E91A70, sub_2189AD5C8);
      v963 = *(v959 + 48);
      if (v963(v962, 1, v960) == 1)
      {
        type metadata accessor for TagFeedServiceConfig();
        sub_21877C990(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
        v964 = v1319;
        sub_219BEE974();
        v965 = v963(v962, 1, v960);
        v966 = v1324;
        if (v965 != 1)
        {
          sub_2190E9AA0(v962, &qword_280E91A70, sub_2189AD5C8);
        }
      }

      else
      {
        v964 = v1319;
        (*(v959 + 32))(v1319, v962, v960);
        v966 = v1324;
      }

      (*(v959 + 32))(v966, v964, v960);
      v1623 = 0x7FEFFFFFFFFFFFFFLL;
      sub_2186ECA28();
      swift_allocObject();
      v971 = sub_219BEF534();
      v972 = v1552;
      *(v966 + *(v1552 + 20)) = v971;
      v1623 = 1;
      sub_2186F9548();
      swift_allocObject();
      *(v966 + v972[6]) = sub_219BEF534();
      v1623 = 5;
      swift_allocObject();
      v973 = sub_219BEF534();
      sub_2190E9AA0(v958, &qword_280E91A70, sub_2189AD5C8);
      *(v966 + v972[7]) = v973;
      *(v966 + v972[8]) = 1;
      sub_218E2E3D4(v1409, v966 + v972[9]);
      v947 = v1473;
      sub_2190E9AFC(v966, v1473, type metadata accessor for RecentStoriesTagFeedGroupKnobs);
      v974 = v1464;
      v975 = v956(v1464, 1, v972);
      v967 = v1585;
      v968 = v1516;
      v969 = v1515;
      v970 = v1622;
      if (v975 != 1)
      {
        sub_2190E9AA0(v974, qword_280EAB8E8, type metadata accessor for RecentStoriesTagFeedGroupKnobs);
      }
    }

    else
    {
      sub_2190E9AFC(v955, v947, type metadata accessor for RecentStoriesTagFeedGroupKnobs);
      v967 = v1585;
      v968 = v1516;
      v969 = v1515;
      v970 = v1622;
    }

    v976 = v970;
    sub_2190E9AFC(v947, v970 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_recentStoriesKnobs, type metadata accessor for RecentStoriesTagFeedGroupKnobs);
    v977 = v1398;
    sub_2190E9A34(v967, v1398, qword_280EBB968, type metadata accessor for DateRangeTagFeedGroupKnobs);
    v978 = *(v969 + 48);
    v979 = v978(v977, 1, v968);
    v980 = v1587;
    v981 = v1412;
    v982 = v1619;
    if (v979 == 1)
    {
      v983 = v1621;
      (*(v1621 + 56))(v1619, 1, 1, v1620);
      v984 = v1411;
      sub_21912C508(v982, 0, v1411);
      v985 = v978(v977, 1, v968);
      v986 = v1400;
      if (v985 != 1)
      {
        sub_2190E9AA0(v977, qword_280EBB968, type metadata accessor for DateRangeTagFeedGroupKnobs);
      }
    }

    else
    {
      v984 = v1411;
      sub_2190E9AFC(v977, v1411, type metadata accessor for DateRangeTagFeedGroupKnobs);
      v983 = v1621;
      v986 = v1400;
    }

    sub_2190E9AFC(v984, v976 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_dateRangeKnobs, type metadata accessor for DateRangeTagFeedGroupKnobs);
    sub_2190E9A34(v1586, v986, &qword_280EA8080, type metadata accessor for SportsMastheadTagFeedGroupKnobs);
    v987 = *(v1517 + 48);
    v988 = v1518;
    if (v987(v986, 1, v1518) == 1)
    {
      (*(v983 + 56))(v982, 1, 1, v1620);
      sub_219B3C008(v982, v981);
      v580 = v987(v986, 1, v988) == 1;
      v989 = v1617;
      v990 = v986;
      v991 = v1521;
      v992 = v1520;
      v993 = v1474;
      v994 = v1471;
      if (!v580)
      {
        sub_2190E9AA0(v990, &qword_280EA8080, type metadata accessor for SportsMastheadTagFeedGroupKnobs);
      }
    }

    else
    {
      sub_2190E9AFC(v986, v981, type metadata accessor for SportsMastheadTagFeedGroupKnobs);
      v989 = v1617;
      v991 = v1521;
      v992 = v1520;
      v993 = v1474;
      v994 = v1471;
    }

    sub_2190E9AFC(v981, v976 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsMastheadKnobs, type metadata accessor for SportsMastheadTagFeedGroupKnobs);
    v995 = v980;
    v996 = v1466;
    sub_2190E9A34(v995, v1466, qword_280EA1DD8, type metadata accessor for SportsEventTopicTagFeedGroupKnobs);
    v997 = *(v1519 + 48);
    if ((v997)(v996, 1, v1569) == 1)
    {
      v1608 = v997;
      v998 = v983;
      v999 = *(v983 + 56);
      v1000 = v1406;
      v1001 = v1620;
      v999(v1406, 1, 1, v1620);
      (*(v1609 + 56))(v993, 1, 1, v1610);
      v1002 = v1321;
      sub_2190E9A34(v1000, v1321, &qword_280E91A70, sub_2189AD5C8);
      v1003 = *(v998 + 48);
      if (v1003(v1002, 1, v1001) == 1)
      {
        type metadata accessor for TagFeedServiceConfig();
        sub_21877C990(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
        v1004 = v1322;
        sub_219BEE974();
        if (v1003(v1002, 1, v1001) != 1)
        {
          sub_2190E9AA0(v1002, &qword_280E91A70, sub_2189AD5C8);
        }
      }

      else
      {
        v1004 = v1322;
        (*(v998 + 32))(v1322, v1002, v1001);
      }

      v1008 = *(v998 + 32);
      v1009 = v1333;
      v1008(v1333, v1004, v1001);
      v1010 = sub_219BF1F54();
      sub_218C3DB88(v1010);

      sub_218BE9934();
      swift_allocObject();
      v1011 = sub_219BEEE04();
      v1012 = v1569;
      *(v1009 + *(v1569 + 20)) = v1011;
      swift_allocObject();
      *(v1009 + v1012[6]) = sub_219BEEE04();
      v1623 = 30;
      sub_2186F9548();
      swift_allocObject();
      *(v1009 + v1012[7]) = sub_219BEF534();
      v1623 = 1;
      swift_allocObject();
      *(v1009 + v1012[8]) = sub_219BEF534();
      v1623 = 5;
      swift_allocObject();
      *(v1009 + v1012[9]) = sub_219BEF534();
      sub_219BF5CE4();
      v1623 = v1013;
      sub_2186ECA28();
      swift_allocObject();
      *(v1009 + v1012[10]) = sub_219BEF534();
      LOBYTE(v1623) = 1;
      sub_2186F95C4();
      swift_allocObject();
      *(v1009 + v1012[11]) = sub_219BEF534();
      v1623 = 0;
      swift_allocObject();
      *(v1009 + v1012[12]) = sub_219BEF534();
      v1014 = v1474;
      v1015 = v1327;
      sub_2190E9A34(v1474, v1327, &qword_280E916D0, MEMORY[0x277D324F0]);
      v1016 = v1609;
      v1017 = v1610;
      v1018 = *(v1609 + 48);
      if (v1018(v1015, 1, v1610) == 1)
      {
        v1019 = v1328;
        sub_219BEF1C4();
        sub_2190E9AA0(v1014, &qword_280E916D0, MEMORY[0x277D324F0]);
        sub_2190E9AA0(v1406, &qword_280E91A70, sub_2189AD5C8);
        v1020 = v1018(v1015, 1, v1017);
        v989 = v1617;
        if (v1020 != 1)
        {
          sub_2190E9AA0(v1015, &qword_280E916D0, MEMORY[0x277D324F0]);
        }
      }

      else
      {
        sub_2190E9AA0(v1014, &qword_280E916D0, MEMORY[0x277D324F0]);
        sub_2190E9AA0(v1406, &qword_280E91A70, sub_2189AD5C8);
        v1021 = *(v1016 + 32);
        v1019 = v1328;
        v1021(v1328, v1015, v1017);
        v989 = v1617;
      }

      v1022 = v1569;
      (*(v1609 + 32))(v1009 + *(v1569 + 52), v1019, v1017);
      v1006 = v1414;
      sub_2190E9AFC(v1009, v1414, type metadata accessor for SportsEventTopicTagFeedGroupKnobs);
      v1023 = v1466;
      v1024 = (v1608)(v1466, 1, v1022);
      v1007 = v1620;
      v983 = v1621;
      v994 = v1471;
      if (v1024 != 1)
      {
        sub_2190E9AA0(v1023, qword_280EA1DD8, type metadata accessor for SportsEventTopicTagFeedGroupKnobs);
      }
    }

    else
    {
      v1005 = v996;
      v1006 = v1414;
      sub_2190E9AFC(v1005, v1414, type metadata accessor for SportsEventTopicTagFeedGroupKnobs);
      v1007 = v1620;
    }

    v1025 = v1622;
    sub_2190E9AFC(v1006, v1622 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsEventTopicKnobs, type metadata accessor for SportsEventTopicTagFeedGroupKnobs);
    *(v1025 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsOnboardingKnobs) = sub_2194AF95C(MEMORY[0x277D84F90]);
    v1026 = v1468;
    sub_2190E9A34(v1588, v1468, qword_280EB7648, type metadata accessor for PuzzleListTagFeedGroupKnobs);
    v1027 = *(v992 + 48);
    v1028 = v1027(v1026, 1, v991);
    v1029 = v1472;
    if (v1028 == 1)
    {
      (*(v983 + 56))(v1472, 1, 1, v1007);
      sub_2190E9A34(v1029, v994, &qword_280E91A70, sub_2189AD5C8);
      v1030 = *(v983 + 48);
      if (v1030(v994, 1, v1007) == 1)
      {
        type metadata accessor for TagFeedServiceConfig();
        sub_21877C990(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
        v1031 = v1325;
        sub_219BEE974();
        v580 = v1030(v994, 1, v1007) == 1;
        v1032 = v994;
        v1033 = v1336;
        if (!v580)
        {
          sub_2190E9AA0(v1032, &qword_280E91A70, sub_2189AD5C8);
        }
      }

      else
      {
        v1031 = v1325;
        (*(v983 + 32))(v1325, v994, v1007);
        v1033 = v1336;
      }

      (*(v983 + 32))(v1033, v1031, v1007);
      v1623 = 2;
      sub_2186F9548();
      swift_allocObject();
      *&v1033[v991[5]] = sub_219BEF534();
      v1623 = 6;
      swift_allocObject();
      *&v1033[v991[6]] = sub_219BEF534();
      LOBYTE(v1623) = 0;
      sub_2186F95C4();
      swift_allocObject();
      *&v1033[v991[7]] = sub_219BEF534();
      LOBYTE(v1623) = 0;
      swift_allocObject();
      v1036 = sub_219BEF534();
      sub_2190E9AA0(v1472, &qword_280E91A70, sub_2189AD5C8);
      *&v1033[v991[8]] = v1036;
      *&v1033[v991[9]] = 0;
      v1037 = v1033;
      v1034 = v1416;
      sub_2190E9AFC(v1037, v1416, type metadata accessor for PuzzleListTagFeedGroupKnobs);
      v1038 = v1468;
      v1039 = v1027(v1468, 1, v991);
      v989 = v1617;
      v1035 = v1469;
      if (v1039 != 1)
      {
        sub_2190E9AA0(v1038, qword_280EB7648, type metadata accessor for PuzzleListTagFeedGroupKnobs);
      }
    }

    else
    {
      v1034 = v1416;
      sub_2190E9AFC(v1026, v1416, type metadata accessor for PuzzleListTagFeedGroupKnobs);
      v1035 = v1469;
    }

    sub_2190E9AFC(v1034, v1622 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_puzzleListKnobs, type metadata accessor for PuzzleListTagFeedGroupKnobs);
    sub_2190E9A34(v1589, v1035, qword_280EABA58, type metadata accessor for PuzzleArchiveTagFeedGroupKnobs);
    v1040 = *(v1522 + 48);
    v1041 = v1040(v1035, 1, v1553);
    v1042 = v1477;
    if (v1041 == 1)
    {
      v1043 = v1410;
      (*(v983 + 56))(v1410, 1, 1, v1007);
      v1044 = v1326;
      sub_2190E9A34(v1043, v1326, &qword_280E91A70, sub_2189AD5C8);
      v1045 = *(v983 + 48);
      if (v1045(v1044, 1, v1007) == 1)
      {
        type metadata accessor for TagFeedServiceConfig();
        sub_21877C990(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
        v1046 = v1329;
        sub_219BEE974();
        v1047 = v1045(v1044, 1, v1007);
        v1048 = v1338;
        if (v1047 != 1)
        {
          sub_2190E9AA0(v1044, &qword_280E91A70, sub_2189AD5C8);
        }
      }

      else
      {
        v1046 = v1329;
        (*(v983 + 32))(v1329, v1044, v1007);
        v1048 = v1338;
      }

      (*(v983 + 32))(v1048, v1046, v1007);
      v1623 = 1;
      sub_2186F9548();
      swift_allocObject();
      v1051 = sub_219BEF534();
      v1052 = v1553;
      *(v1048 + *(v1553 + 20)) = v1051;
      v1623 = 5;
      swift_allocObject();
      v1053 = sub_219BEF534();
      sub_2190E9AA0(v1410, &qword_280E91A70, sub_2189AD5C8);
      *(v1048 + *(v1052 + 24)) = v1053;
      v1050 = v1417;
      sub_2190E9AFC(v1048, v1417, type metadata accessor for PuzzleArchiveTagFeedGroupKnobs);
      v1054 = v1469;
      v1055 = v1040(v1469, 1, v1052);
      v989 = v1617;
      v1042 = v1477;
      if (v1055 != 1)
      {
        sub_2190E9AA0(v1054, qword_280EABA58, type metadata accessor for PuzzleArchiveTagFeedGroupKnobs);
      }
    }

    else
    {
      v1049 = v1035;
      v1050 = v1417;
      sub_2190E9AFC(v1049, v1417, type metadata accessor for PuzzleArchiveTagFeedGroupKnobs);
    }

    sub_2190E9AFC(v1050, v1622 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_puzzleArchiveKnobs, type metadata accessor for PuzzleArchiveTagFeedGroupKnobs);
    v1056 = v1470;
    sub_2190E9A34(v1590, v1470, qword_280E981F8, type metadata accessor for PuzzleContinuePlayingTagFeedGroupKnobs);
    v1057 = *(v1523 + 48);
    v1058 = v1524;
    if (v1057(v1056, 1, v1524) == 1)
    {
      (*(v983 + 56))(v1042, 1, 1, v1007);
      v1059 = v1330;
      sub_2190E9A34(v1042, v1330, &qword_280E91A70, sub_2189AD5C8);
      v1060 = *(v983 + 48);
      if (v1060(v1059, 1, v1007) == 1)
      {
        type metadata accessor for TagFeedServiceConfig();
        sub_21877C990(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
        v1061 = v1331;
        sub_219BEE974();
        v1062 = v1060(v1059, 1, v1007);
        v1063 = v1340;
        if (v1062 != 1)
        {
          sub_2190E9AA0(v1059, &qword_280E91A70, sub_2189AD5C8);
        }
      }

      else
      {
        v1061 = v1331;
        (*(v983 + 32))(v1331, v1059, v1007);
        v1063 = v1340;
      }

      (*(v983 + 32))(v1063, v1061, v1007);
      v1623 = 0x4122750000000000;
      sub_2186ECA28();
      swift_allocObject();
      *&v1063[*(v1058 + 20)] = sub_219BEF534();
      v1623 = 5;
      sub_2186F9548();
      swift_allocObject();
      v1066 = sub_219BEF534();
      sub_2190E9AA0(v1042, &qword_280E91A70, sub_2189AD5C8);
      *&v1063[*(v1058 + 24)] = v1066;
      v1067 = v1063;
      v1064 = v1419;
      sub_2190E9AFC(v1067, v1419, type metadata accessor for PuzzleContinuePlayingTagFeedGroupKnobs);
      v1068 = v1470;
      v1069 = v1057(v1470, 1, v1058);
      v989 = v1617;
      v1065 = v1527;
      if (v1069 != 1)
      {
        sub_2190E9AA0(v1068, qword_280E981F8, type metadata accessor for PuzzleContinuePlayingTagFeedGroupKnobs);
      }
    }

    else
    {
      v1064 = v1419;
      sub_2190E9AFC(v1056, v1419, type metadata accessor for PuzzleContinuePlayingTagFeedGroupKnobs);
      v1065 = v1527;
    }

    sub_2190E9AFC(v1064, v1622 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_puzzleContinuePlayingKnobs, type metadata accessor for PuzzleContinuePlayingTagFeedGroupKnobs);
    v1070 = v1475;
    sub_2190E9A34(v1591, v1475, qword_280EA86A0, type metadata accessor for PuzzleFeaturedTagFeedGroupKnobs);
    v1071 = *(v1525 + 48);
    v1072 = v1071(v1070, 1, v1555);
    v1073 = v1480;
    v1074 = v1476;
    if (v1072 == 1)
    {
      (*(v983 + 56))(v1480, 1, 1, v1007);
      v1075 = v1332;
      sub_2190E9A34(v1073, v1332, &qword_280E91A70, sub_2189AD5C8);
      v1076 = *(v983 + 48);
      if (v1076(v1075, 1, v1007) == 1)
      {
        type metadata accessor for TagFeedServiceConfig();
        sub_21877C990(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
        v1077 = v1334;
        sub_219BEE974();
        v1078 = v1076(v1075, 1, v1007);
        v1079 = v1343;
        if (v1078 != 1)
        {
          sub_2190E9AA0(v1075, &qword_280E91A70, sub_2189AD5C8);
        }
      }

      else
      {
        v1077 = v1334;
        (*(v983 + 32))(v1334, v1075, v1007);
        v1079 = v1343;
      }

      (*(v983 + 32))(v1079, v1077, v1007);
      v1623 = 1;
      sub_2186F9548();
      swift_allocObject();
      v1083 = sub_219BEF534();
      v1084 = v1555;
      *&v1079[*(v1555 + 20)] = v1083;
      v1623 = 5;
      swift_allocObject();
      *&v1079[v1084[6]] = sub_219BEF534();
      LOBYTE(v1623) = 0;
      sub_2186F95C4();
      swift_allocObject();
      *&v1079[v1084[7]] = sub_219BEF534();
      LOBYTE(v1623) = 0;
      swift_allocObject();
      v1085 = sub_219BEF534();
      sub_2190E9AA0(v1480, &qword_280E91A70, sub_2189AD5C8);
      *&v1079[v1084[8]] = v1085;
      v1086 = v1079;
      v1081 = v1420;
      sub_2190E9AFC(v1086, v1420, type metadata accessor for PuzzleFeaturedTagFeedGroupKnobs);
      v1087 = v1475;
      v1088 = v1071(v1475, 1, v1084);
      v989 = v1617;
      v1074 = v1476;
      v1082 = v1526;
      if (v1088 != 1)
      {
        sub_2190E9AA0(v1087, qword_280EA86A0, type metadata accessor for PuzzleFeaturedTagFeedGroupKnobs);
      }
    }

    else
    {
      v1080 = v1070;
      v1081 = v1420;
      sub_2190E9AFC(v1080, v1420, type metadata accessor for PuzzleFeaturedTagFeedGroupKnobs);
      v1082 = v1526;
    }

    sub_2190E9AFC(v1081, v1622 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_puzzleFeaturedKnobs, type metadata accessor for PuzzleFeaturedTagFeedGroupKnobs);
    sub_2190E9A34(v989, v1074, &qword_280E9F820, type metadata accessor for PuzzleFullArchiveTagFeedGroupKnobs);
    v1089 = *(v1082 + 48);
    v1090 = v1089(v1074, 1, v1065);
    v1091 = v1592;
    v1092 = v1421;
    v1093 = v1479;
    if (v1090 == 1)
    {
      v1094 = v1619;
      (*(v983 + 56))(v1619, 1, 1, v1007);
      sub_218DAEB34(v1094, v1092);
      v1095 = v1089(v1074, 1, v1065);
      v1096 = v1557;
      v1097 = v1554;
      if (v1095 != 1)
      {
        sub_2190E9AA0(v1074, &qword_280E9F820, type metadata accessor for PuzzleFullArchiveTagFeedGroupKnobs);
      }
    }

    else
    {
      sub_2190E9AFC(v1074, v1421, type metadata accessor for PuzzleFullArchiveTagFeedGroupKnobs);
      v1096 = v1557;
      v1097 = v1554;
    }

    sub_2190E9AFC(v1092, v1622 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_puzzleFullArchiveKnobs, type metadata accessor for PuzzleFullArchiveTagFeedGroupKnobs);
    v1098 = v1091;
    v1099 = v1478;
    sub_2190E9A34(v1098, v1478, qword_280EA2608, type metadata accessor for PuzzleScoreboardTagFeedGroupKnobs);
    v1100 = *(v1528 + 48);
    if (v1100(v1099, 1, v1556) == 1)
    {
      v1101 = v1415;
      (*(v983 + 56))(v1415, 1, 1, v1007);
      v1102 = v1335;
      sub_2190E9A34(v1101, v1335, &qword_280E91A70, sub_2189AD5C8);
      v1103 = *(v983 + 48);
      if (v1103(v1102, 1, v1007) == 1)
      {
        type metadata accessor for TagFeedServiceConfig();
        sub_21877C990(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
        v1104 = v1337;
        sub_219BEE974();
        v1105 = v1103(v1102, 1, v1007);
        v1106 = v1346;
        if (v1105 != 1)
        {
          sub_2190E9AA0(v1102, &qword_280E91A70, sub_2189AD5C8);
        }
      }

      else
      {
        v1104 = v1337;
        (*(v983 + 32))(v1337, v1102, v1007);
        v1106 = v1346;
      }

      (*(v983 + 32))(v1106, v1104, v1007);
      v1623 = 2;
      sub_2186F9548();
      swift_allocObject();
      v1109 = sub_219BEF534();
      v1110 = v1556;
      *(v1106 + *(v1556 + 20)) = v1109;
      v1623 = 6;
      swift_allocObject();
      v1111 = sub_219BEF534();
      sub_2190E9AA0(v1415, &qword_280E91A70, sub_2189AD5C8);
      *(v1106 + *(v1110 + 24)) = v1111;
      *(v1106 + *(v1110 + 28)) = 0;
      v1108 = v1424;
      sub_2190E9AFC(v1106, v1424, type metadata accessor for PuzzleScoreboardTagFeedGroupKnobs);
      v1112 = v1478;
      v1113 = v1100(v1478, 1, v1110);
      v1096 = v1557;
      v1097 = v1554;
      v1093 = v1479;
      if (v1113 != 1)
      {
        sub_2190E9AA0(v1112, qword_280EA2608, type metadata accessor for PuzzleScoreboardTagFeedGroupKnobs);
      }
    }

    else
    {
      v1107 = v1099;
      v1108 = v1424;
      sub_2190E9AFC(v1107, v1424, type metadata accessor for PuzzleScoreboardTagFeedGroupKnobs);
    }

    sub_2190E9AFC(v1108, v1622 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_puzzleScoreboardKnobs, type metadata accessor for PuzzleScoreboardTagFeedGroupKnobs);
    sub_2190E9A34(v1593, v1093, qword_280EBF9A0, type metadata accessor for AffinityTagFeedGroupKnobs);
    v1114 = *(v1096 + 48);
    v1115 = v1529;
    v1116 = v1114(v1093, 1, v1529);
    v1117 = v1426;
    v1118 = v1532;
    if (v1116 == 1)
    {
      v1119 = v1619;
      (*(v983 + 56))(v1619, 1, 1, v1007);
      v1120 = v1115;
      v1121 = v1425;
      sub_218C4F3A4(v1119, 0, v1425);
      v1122 = v1114(v1093, 1, v1120);
      v1123 = v1121;
      v1124 = v1485;
      v1125 = v1594;
      if (v1122 != 1)
      {
        sub_2190E9AA0(v1093, qword_280EBF9A0, type metadata accessor for AffinityTagFeedGroupKnobs);
      }
    }

    else
    {
      v1123 = v1425;
      sub_2190E9AFC(v1093, v1425, type metadata accessor for AffinityTagFeedGroupKnobs);
      v1124 = v1485;
      v1125 = v1594;
    }

    sub_2190E9AFC(v1123, v1622 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_affinityKnobs, type metadata accessor for AffinityTagFeedGroupKnobs);
    v1126 = v1413;
    sub_2190E9A34(v1125, v1413, &qword_280EA4A98, type metadata accessor for SponsoredBannerTagFeedGroupKnobs);
    v1127 = *(v1531 + 48);
    if (v1127(v1126, 1, v1118) == 1)
    {
      v1128 = v1620;
      v1129 = v1619;
      (*(v1621 + 56))(v1619, 1, 1, v1620);
      sub_219584360(v1129, v1117);
      v1130 = v1127(v1126, 1, v1118);
      v1131 = v1611;
      v1132 = v1606;
      v1133 = v1600;
      if (v1130 != 1)
      {
        sub_2190E9AA0(v1126, &qword_280EA4A98, type metadata accessor for SponsoredBannerTagFeedGroupKnobs);
      }
    }

    else
    {
      sub_2190E9AFC(v1126, v1117, type metadata accessor for SponsoredBannerTagFeedGroupKnobs);
      v1131 = v1611;
      v1132 = v1606;
      v1133 = v1600;
      v1128 = v1620;
    }

    sub_2190E9AFC(v1117, v1622 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sponsoredSuperfeedKnobs, type metadata accessor for SponsoredBannerTagFeedGroupKnobs);
    v1134 = v1481;
    sub_2190E9A34(v1595, v1481, qword_280EA9BD8, type metadata accessor for ChannelRecipesTagFeedGroupKnobs);
    v1137 = *(v1133 + 48);
    v1136 = v1133 + 48;
    v1135 = v1137;
    if (v1137(v1134, 1, v1558) == 1)
    {
      v1600 = v1136;
      v1138 = v1621;
      v1139 = v1418;
      (*(v1621 + 56))(v1418, 1, 1, v1128);
      v1140 = sub_219BEF814();
      v1141 = v1351;
      (*(*(v1140 - 8) + 56))(v1351, 1, 1, v1140);
      v1142 = v1339;
      sub_2190E9A34(v1139, v1339, &qword_280E91A70, sub_2189AD5C8);
      v1143 = *(v1138 + 48);
      if (v1143(v1142, 1, v1128) == 1)
      {
        type metadata accessor for TagFeedServiceConfig();
        sub_21877C990(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
        v1144 = v1341;
        sub_219BEE974();
        v1145 = v1143(v1142, 1, v1128);
        v1146 = v1558;
        v1147 = v1355;
        if (v1145 != 1)
        {
          sub_2190E9AA0(v1142, &qword_280E91A70, sub_2189AD5C8);
        }
      }

      else
      {
        v1144 = v1341;
        (*(v1138 + 32))(v1341, v1142, v1128);
        v1146 = v1558;
        v1147 = v1355;
      }

      (*(v1621 + 32))(v1147, v1144, v1128);
      v1150 = MEMORY[0x277D32720];
      sub_2190E9A34(v1141, v1147 + v1146[5], &qword_280E912E0, MEMORY[0x277D32720]);
      sub_218CC4F9C();
      swift_allocObject();
      v1151 = MEMORY[0x277D84F90];
      *(v1147 + v1146[6]) = sub_219BEEE04();
      v1623 = 0;
      sub_2186ECA28();
      swift_allocObject();
      *(v1147 + v1146[7]) = sub_219BEF534();
      LOBYTE(v1623) = 0;
      sub_2186F95C4();
      swift_allocObject();
      *(v1147 + v1146[8]) = sub_219BEF534();
      LOBYTE(v1623) = 0;
      swift_allocObject();
      *(v1147 + v1146[9]) = sub_219BEF534();
      v1152 = sub_2194AE724(v1151);
      sub_2190E9AA0(v1141, &qword_280E912E0, v1150);
      sub_2190E9AA0(v1418, &qword_280E91A70, sub_2189AD5C8);
      *(v1147 + v1146[10]) = v1152;
      v1149 = v1428;
      sub_2190E9AFC(v1147, v1428, type metadata accessor for ChannelRecipesTagFeedGroupKnobs);
      v1153 = v1481;
      v1154 = v1135(v1481, 1, v1146);
      v1131 = v1611;
      v1124 = v1485;
      v1132 = v1606;
      v1097 = v1554;
      if (v1154 != 1)
      {
        sub_2190E9AA0(v1153, qword_280EA9BD8, type metadata accessor for ChannelRecipesTagFeedGroupKnobs);
      }
    }

    else
    {
      v1148 = v1134;
      v1149 = v1428;
      sub_2190E9AFC(v1148, v1428, type metadata accessor for ChannelRecipesTagFeedGroupKnobs);
    }

    sub_2190E9AFC(v1149, v1622 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_channelRecipesKnobs, type metadata accessor for ChannelRecipesTagFeedGroupKnobs);
    v1155 = v1482;
    sub_2190E9A34(v1132, v1482, qword_280EAC9F0, type metadata accessor for ForYouRecipesTagFeedGroupKnobs);
    v1156 = *(v1533 + 48);
    v1157 = v1156(v1155, 1, v1601);
    v1158 = v1609;
    if (v1157 == 1)
    {
      v1159 = v1621;
      (*(v1621 + 56))(v1097, 1, 1, v1128);
      (*(v1158 + 56))(v1124, 1, 1, v1610);
      v1160 = v1097;
      v1161 = v1342;
      sub_2190E9A34(v1160, v1342, &qword_280E91A70, sub_2189AD5C8);
      v1162 = *(v1159 + 48);
      if (v1162(v1161, 1, v1128) == 1)
      {
        type metadata accessor for TagFeedServiceConfig();
        sub_21877C990(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
        v1163 = v1344;
        sub_219BEE974();
        if (v1162(v1161, 1, v1128) != 1)
        {
          sub_2190E9AA0(v1161, &qword_280E91A70, sub_2189AD5C8);
        }
      }

      else
      {
        v1166 = *(v1159 + 32);
        v1163 = v1344;
        v1166(v1344, v1161, v1128);
      }

      v1167 = v1357;
      (*(v1621 + 32))(v1357, v1163, v1128);
      v1623 = 1;
      sub_2186F9548();
      swift_allocObject();
      v1168 = sub_219BEF534();
      v1169 = v1601;
      *(v1167 + *(v1601 + 20)) = v1168;
      v1623 = 15;
      swift_allocObject();
      *(v1167 + *(v1169 + 24)) = sub_219BEF534();
      v1170 = v1347;
      sub_2190E9A34(v1124, v1347, &qword_280E916D0, MEMORY[0x277D324F0]);
      v1171 = *(v1158 + 48);
      v1172 = v1610;
      if (v1171(v1170, 1, v1610) == 1)
      {
        v1173 = v1349;
        sub_219BEF1C4();
        v1174 = v1173;
        if (v1171(v1170, 1, v1172) != 1)
        {
          sub_2190E9AA0(v1170, &qword_280E916D0, MEMORY[0x277D324F0]);
        }
      }

      else
      {
        v1174 = v1349;
        (*(v1158 + 32))(v1349, v1170, v1172);
      }

      v1175 = v1601;
      (*(v1158 + 32))(v1167 + *(v1601 + 28), v1174, v1172);
      sub_219BF0344();
      sub_2190E9FE4();
      swift_allocObject();
      *(v1167 + *(v1175 + 32)) = sub_219BEF534();
      LOBYTE(v1623) = 1;
      sub_2186F95C4();
      swift_allocObject();
      v1176 = sub_219BEF534();
      sub_2190E9AA0(v1124, &qword_280E916D0, MEMORY[0x277D324F0]);
      sub_2190E9AA0(v1554, &qword_280E91A70, sub_2189AD5C8);
      *(v1167 + *(v1175 + 36)) = v1176;
      v1165 = v1429;
      sub_2190E9AFC(v1167, v1429, type metadata accessor for ForYouRecipesTagFeedGroupKnobs);
      v1177 = v1482;
      v1178 = v1156(v1482, 1, v1175);
      v1131 = v1611;
      v1128 = v1620;
      if (v1178 != 1)
      {
        sub_2190E9AA0(v1177, qword_280EAC9F0, type metadata accessor for ForYouRecipesTagFeedGroupKnobs);
      }
    }

    else
    {
      v1164 = v1155;
      v1165 = v1429;
      sub_2190E9AFC(v1164, v1429, type metadata accessor for ForYouRecipesTagFeedGroupKnobs);
    }

    sub_2190E9AFC(v1165, v1622 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_forYouRecipesKnobs, type metadata accessor for ForYouRecipesTagFeedGroupKnobs);
    v1179 = v1437;
    sub_2190E9A34(v1596, v1437, qword_280EAC6F0, type metadata accessor for LatestRecipesTagFeedGroupKnobs);
    v1180 = *(v1607 + 48);
    v1607 += 48;
    v1181 = v1180(v1179, 1, v1602);
    v1182 = v1597;
    v1183 = v1484;
    if (v1181 == 1)
    {
      v1184 = v1621;
      (*(v1621 + 56))(v1484, 1, 1, v1128);
      (*(v1158 + 56))(v1486, 1, 1, v1610);
      v1185 = v1345;
      sub_2190E9A34(v1183, v1345, &qword_280E91A70, sub_2189AD5C8);
      v1186 = *(v1184 + 48);
      if (v1186(v1185, 1, v1128) == 1)
      {
        type metadata accessor for TagFeedServiceConfig();
        sub_21877C990(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
        v1187 = v1348;
        sub_219BEE974();
        if (v1186(v1185, 1, v1128) != 1)
        {
          sub_2190E9AA0(v1185, &qword_280E91A70, sub_2189AD5C8);
        }
      }

      else
      {
        v1189 = *(v1184 + 32);
        v1187 = v1348;
        v1189(v1348, v1185, v1128);
      }

      v1190 = v1358;
      (*(v1621 + 32))(v1358, v1187, v1128);
      v1623 = 1;
      sub_2186F9548();
      swift_allocObject();
      v1191 = sub_219BEF534();
      v1192 = v1602;
      *(v1190 + *(v1602 + 20)) = v1191;
      v1623 = 12;
      swift_allocObject();
      *(v1190 + *(v1192 + 24)) = sub_219BEF534();
      v1193 = v1353;
      sub_2190E9A34(v1486, v1353, &qword_280E916D0, MEMORY[0x277D324F0]);
      v1194 = *(v1158 + 48);
      v1195 = v1610;
      if (v1194(v1193, 1, v1610) == 1)
      {
        v1196 = v1354;
        sub_219BEF1C4();
        v1197 = v1194(v1193, 1, v1195);
        v1198 = v1196;
        v1179 = v1437;
        if (v1197 != 1)
        {
          sub_2190E9AA0(v1193, &qword_280E916D0, MEMORY[0x277D324F0]);
        }
      }

      else
      {
        v1198 = v1354;
        (*(v1158 + 32))(v1354, v1193, v1195);
      }

      v1199 = v1602;
      (*(v1158 + 32))(v1190 + *(v1602 + 28), v1198, v1195);
      LOBYTE(v1623) = 1;
      sub_2186F95C4();
      swift_allocObject();
      v1200 = sub_219BEF534();
      sub_2190E9AA0(v1486, &qword_280E916D0, MEMORY[0x277D324F0]);
      sub_2190E9AA0(v1484, &qword_280E91A70, sub_2189AD5C8);
      *(v1190 + *(v1199 + 32)) = v1200;
      v1188 = v1430;
      sub_2190E9AFC(v1190, v1430, type metadata accessor for LatestRecipesTagFeedGroupKnobs);
      v1201 = v1180(v1179, 1, v1199);
      v1131 = v1611;
      if (v1201 != 1)
      {
        sub_2190E9AA0(v1179, qword_280EAC6F0, type metadata accessor for LatestRecipesTagFeedGroupKnobs);
      }
    }

    else
    {
      v1188 = v1430;
      sub_2190E9AFC(v1179, v1430, type metadata accessor for LatestRecipesTagFeedGroupKnobs);
    }

    sub_2190E9AFC(v1188, v1622 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_latestRecipesKnobs, type metadata accessor for LatestRecipesTagFeedGroupKnobs);
    v1202 = v1483;
    sub_2190E9A34(v1182, v1483, qword_280E98068, type metadata accessor for RecentlyViewedRecipesTagFeedGroupKnobs);
    v1203 = *(v1534 + 48);
    v1204 = v1203(v1202, 1, v1131);
    v1205 = v1487;
    v1206 = v1427;
    if (v1204 == 1)
    {
      v1207 = v1621;
      (*(v1621 + 56))(v1427, 1, 1, v1128);
      v1208 = v1350;
      sub_2190E9A34(v1206, v1350, &qword_280E91A70, sub_2189AD5C8);
      v1209 = *(v1207 + 48);
      if (v1209(v1208, 1, v1128) == 1)
      {
        type metadata accessor for TagFeedServiceConfig();
        sub_21877C990(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
        v1210 = v1352;
        sub_219BEE974();
        v1211 = v1209(v1208, 1, v1128);
        v1212 = v1359;
        if (v1211 != 1)
        {
          sub_2190E9AA0(v1208, &qword_280E91A70, sub_2189AD5C8);
        }
      }

      else
      {
        v1210 = v1352;
        (*(v1207 + 32))(v1352, v1208, v1128);
        v1212 = v1359;
      }

      (*(v1621 + 32))(v1212, v1210, v1128);
      v1623 = 12;
      sub_2186F9548();
      swift_allocObject();
      v1215 = sub_219BEF534();
      v1216 = v1611;
      *(v1212 + *(v1611 + 20)) = v1215;
      v1623 = 0x4143C68000000000;
      sub_2186ECA28();
      swift_allocObject();
      v1217 = sub_219BEF534();
      sub_2190E9AA0(v1206, &qword_280E91A70, sub_2189AD5C8);
      *(v1212 + *(v1216 + 24)) = v1217;
      v1213 = v1433;
      sub_2190E9AFC(v1212, v1433, type metadata accessor for RecentlyViewedRecipesTagFeedGroupKnobs);
      v1218 = v1483;
      v1219 = v1203(v1483, 1, v1216);
      v1205 = v1487;
      v1214 = v1535;
      if (v1219 != 1)
      {
        sub_2190E9AA0(v1218, qword_280E98068, type metadata accessor for RecentlyViewedRecipesTagFeedGroupKnobs);
      }
    }

    else
    {
      v1213 = v1433;
      sub_2190E9AFC(v1202, v1433, type metadata accessor for RecentlyViewedRecipesTagFeedGroupKnobs);
      v1214 = v1535;
    }

    sub_2190E9AFC(v1213, v1622 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_recentlyViewedRecipesKnobs, type metadata accessor for RecentlyViewedRecipesTagFeedGroupKnobs);
    v1220 = v1422;
    sub_2190E9A34(v1598, v1422, qword_280EAF280, type metadata accessor for SavedRecipesTagFeedGroupKnobs);
    v1221 = *(v1214 + 48);
    v1222 = v1536;
    v1223 = v1221(v1220, 1, v1536);
    v1224 = v1435;
    v1225 = v1434;
    v1226 = v1599;
    if (v1223 == 1)
    {
      v1227 = v1621;
      v1228 = v1205;
      v1229 = v1619;
      (*(v1621 + 56))(v1619, 1, 1, v1620);
      v1230 = v1229;
      v1205 = v1228;
      sub_218FFFEBC(v1230, 0, v1225);
      if (v1221(v1220, 1, v1222) != 1)
      {
        sub_2190E9AA0(v1220, qword_280EAF280, type metadata accessor for SavedRecipesTagFeedGroupKnobs);
      }
    }

    else
    {
      sub_2190E9AFC(v1220, v1434, type metadata accessor for SavedRecipesTagFeedGroupKnobs);
      v1227 = v1621;
    }

    sub_2190E9AFC(v1225, v1622 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_savedRecipesKnobs, type metadata accessor for SavedRecipesTagFeedGroupKnobs);
    v1231 = v1423;
    sub_2190E9A34(v1226, v1423, qword_280EA4098, type metadata accessor for TrendingRecipesTagFeedGroupKnobs);
    v1232 = *(v1537 + 48);
    v1233 = v1538;
    if (v1232(v1231, 1, v1538) == 1)
    {
      v1234 = v1619;
      (*(v1227 + 56))(v1619, 1, 1, v1620);
      sub_218C6AC0C(v1234, 0, 0, v1224);
      v1235 = v1232(v1231, 1, v1233);
      v1236 = v1432;
      v1237 = v1431;
      v1238 = v1597;
      if (v1235 != 1)
      {
        sub_2190E9AA0(v1231, qword_280EA4098, type metadata accessor for TrendingRecipesTagFeedGroupKnobs);
      }
    }

    else
    {
      sub_2190E9AFC(v1231, v1224, type metadata accessor for TrendingRecipesTagFeedGroupKnobs);
      v1236 = v1432;
      v1237 = v1431;
      v1238 = v1597;
    }

    sub_2190E9AFC(v1224, v1622 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_trendingRecipesKnobs, type metadata accessor for TrendingRecipesTagFeedGroupKnobs);
    v1239 = v1530;
    sub_2190E9A34(v1530, v1205, qword_280EADF38, type metadata accessor for TopicRecipesTagFeedGroupKnobs);
    v1241 = v1603 + 48;
    v1240 = *(v1603 + 48);
    if (v1240(v1205, 1, v1559) == 1)
    {
      v1242 = v1205;
      v1243 = v1619;
      (*(v1621 + 56))(v1619, 1, 1, v1620);
      v1244 = sub_219BEF814();
      v1603 = v1241;
      v1245 = v1238;
      v1246 = v1244;
      v1247 = v1240;
      v1248 = *(*(v1244 - 8) + 56);
      v1248(v1237, 1, 1, v1244);
      v1248(v1236, 1, 1, v1246);
      v1249 = v1436;
      v1250 = v1243;
      v1251 = v1242;
      sub_218D1D278(v1250, v1237, v1236, 0, 0, 0, 0, 0, v1436);
      sub_2190E9AA0(v1239, qword_280EADF38, type metadata accessor for TopicRecipesTagFeedGroupKnobs);
      sub_2190E9AA0(v1599, qword_280EA4098, type metadata accessor for TrendingRecipesTagFeedGroupKnobs);
      sub_2190E9AA0(v1598, qword_280EAF280, type metadata accessor for SavedRecipesTagFeedGroupKnobs);
      sub_2190E9AA0(v1245, qword_280E98068, type metadata accessor for RecentlyViewedRecipesTagFeedGroupKnobs);
      sub_2190E9AA0(v1596, qword_280EAC6F0, type metadata accessor for LatestRecipesTagFeedGroupKnobs);
      sub_2190E9AA0(v1606, qword_280EAC9F0, type metadata accessor for ForYouRecipesTagFeedGroupKnobs);
      sub_2190E9AA0(v1595, qword_280EA9BD8, type metadata accessor for ChannelRecipesTagFeedGroupKnobs);
      sub_2190E9AA0(v1594, &qword_280EA4A98, type metadata accessor for SponsoredBannerTagFeedGroupKnobs);
      sub_2190E9AA0(v1593, qword_280EBF9A0, type metadata accessor for AffinityTagFeedGroupKnobs);
      sub_2190E9AA0(v1592, qword_280EA2608, type metadata accessor for PuzzleScoreboardTagFeedGroupKnobs);
      sub_2190E9AA0(v1617, &qword_280E9F820, type metadata accessor for PuzzleFullArchiveTagFeedGroupKnobs);
      sub_2190E9AA0(v1591, qword_280EA86A0, type metadata accessor for PuzzleFeaturedTagFeedGroupKnobs);
      sub_2190E9AA0(v1590, qword_280E981F8, type metadata accessor for PuzzleContinuePlayingTagFeedGroupKnobs);
      sub_2190E9AA0(v1589, qword_280EABA58, type metadata accessor for PuzzleArchiveTagFeedGroupKnobs);
      sub_2190E9AA0(v1588, qword_280EB7648, type metadata accessor for PuzzleListTagFeedGroupKnobs);
      sub_2190E9AA0(v1587, qword_280EA1DD8, type metadata accessor for SportsEventTopicTagFeedGroupKnobs);
      sub_2190E9AA0(v1586, &qword_280EA8080, type metadata accessor for SportsMastheadTagFeedGroupKnobs);
      sub_2190E9AA0(v1585, qword_280EBB968, type metadata accessor for DateRangeTagFeedGroupKnobs);
      sub_2190E9AA0(v1584, qword_280EAB8E8, type metadata accessor for RecentStoriesTagFeedGroupKnobs);
      sub_2190E9AA0(v1605, qword_280EC4D68, type metadata accessor for ForYouTagFeedGroupKnobs);
      sub_2190E9AA0(v1583, qword_280EB87C0, type metadata accessor for HighlightsTagFeedGroupKnobs);
      sub_2190E9AA0(v1613, &qword_280EBFB10, type metadata accessor for WeatherTagFeedGroupKnobs);
      sub_2190E9AA0(v1582, qword_280EA4788, type metadata accessor for SportsFavoritesTagFeedGroupKnobs);
      sub_2190E9AA0(v1581, qword_280EA18A0, type metadata accessor for SportsTopStoriesTagFeedGroupKnobs);
      sub_2190E9AA0(v1580, qword_280EA7F10, type metadata accessor for SportsScheduleTagFeedGroupKnobs);
      sub_2190E9AA0(v1579, &qword_280EA1AF0, type metadata accessor for SportsNavigationTagFeedGroupKnobs);
      sub_2190E9AA0(v1578, &qword_280EAEC50, type metadata accessor for SportsRecordTagFeedGroupKnobs);
      sub_2190E9AA0(v1616, qword_280EAC298, type metadata accessor for MySportsTopicTagFeedGroupKnobs);
      sub_2190E9AA0(v1577, qword_280E9A708, type metadata accessor for SportsEventArticlesTagFeedGroupKnobs);
      sub_2190E9AA0(v1618, qword_280EA1D08, type metadata accessor for SportsKeyPlayersTagFeedGroupKnobs);
      sub_2190E9AA0(v1576, qword_280E9A648, type metadata accessor for SportsInjuryReportsTagFeedGroupKnobs);
      sub_2190E9AA0(v1612, qword_280EA4848, type metadata accessor for SportsEventInfoTagFeedGroupKnobs);
      sub_2190E9AA0(v1615, qword_280EA49D8, type metadata accessor for SportsBoxScoresTagFeedGroupKnobs);
      sub_2190E9AA0(v1575, qword_280EAB210, type metadata accessor for SportsBracketTagFeedGroupKnobs);
      sub_2190E9AA0(v1574, qword_280EA46C0, type metadata accessor for SportsStandingsTagFeedGroupKnobs);
      sub_2190E9AA0(v1614, qword_280EB2970, type metadata accessor for SportsLinksTagFeedGroupKnobs);
      sub_2190E9AA0(v1572, qword_280EAE9A8, type metadata accessor for SportsScoresTagFeedGroupKnobs);
      sub_2190E9AA0(v1573, qword_280EAE9A8, type metadata accessor for SportsScoresTagFeedGroupKnobs);
      sub_2190E9AA0(v1571, qword_280E965F8, type metadata accessor for ChannelSectionDirectoryTagFeedGroupKnobs);
      sub_2190E9AA0(v1570, qword_280EA9B18, type metadata accessor for ChannelSectionTagFeedGroupKnobs);
      sub_2190E9AA0(v1268, qword_280EB5908, type metadata accessor for ArticleListTagFeedGroupKnobs);
      sub_2190E9AA0(v1267, &qword_280EBB648, type metadata accessor for IssueListTagFeedGroupKnobs);
      sub_2190E9AA0(v1266, qword_280EC0C60, type metadata accessor for PaywallTagFeedGroupKnobs);
      sub_2190E9AA0(v1260, qword_280E9ACF8, type metadata accessor for PromotedArticleListTagFeedGroupKnobs);
      v1252 = v1247(v1242, 1, v1559);
      v515 = v1563;
      if (v1252 != 1)
      {
        sub_2190E9AA0(v1251, qword_280EADF38, type metadata accessor for TopicRecipesTagFeedGroupKnobs);
      }
    }

    else
    {
      sub_2190E9AA0(v1239, qword_280EADF38, type metadata accessor for TopicRecipesTagFeedGroupKnobs);
      sub_2190E9AA0(v1599, qword_280EA4098, type metadata accessor for TrendingRecipesTagFeedGroupKnobs);
      sub_2190E9AA0(v1598, qword_280EAF280, type metadata accessor for SavedRecipesTagFeedGroupKnobs);
      sub_2190E9AA0(v1238, qword_280E98068, type metadata accessor for RecentlyViewedRecipesTagFeedGroupKnobs);
      sub_2190E9AA0(v1596, qword_280EAC6F0, type metadata accessor for LatestRecipesTagFeedGroupKnobs);
      sub_2190E9AA0(v1606, qword_280EAC9F0, type metadata accessor for ForYouRecipesTagFeedGroupKnobs);
      sub_2190E9AA0(v1595, qword_280EA9BD8, type metadata accessor for ChannelRecipesTagFeedGroupKnobs);
      sub_2190E9AA0(v1594, &qword_280EA4A98, type metadata accessor for SponsoredBannerTagFeedGroupKnobs);
      sub_2190E9AA0(v1593, qword_280EBF9A0, type metadata accessor for AffinityTagFeedGroupKnobs);
      sub_2190E9AA0(v1592, qword_280EA2608, type metadata accessor for PuzzleScoreboardTagFeedGroupKnobs);
      sub_2190E9AA0(v1617, &qword_280E9F820, type metadata accessor for PuzzleFullArchiveTagFeedGroupKnobs);
      sub_2190E9AA0(v1591, qword_280EA86A0, type metadata accessor for PuzzleFeaturedTagFeedGroupKnobs);
      sub_2190E9AA0(v1590, qword_280E981F8, type metadata accessor for PuzzleContinuePlayingTagFeedGroupKnobs);
      sub_2190E9AA0(v1589, qword_280EABA58, type metadata accessor for PuzzleArchiveTagFeedGroupKnobs);
      sub_2190E9AA0(v1588, qword_280EB7648, type metadata accessor for PuzzleListTagFeedGroupKnobs);
      sub_2190E9AA0(v1587, qword_280EA1DD8, type metadata accessor for SportsEventTopicTagFeedGroupKnobs);
      sub_2190E9AA0(v1586, &qword_280EA8080, type metadata accessor for SportsMastheadTagFeedGroupKnobs);
      sub_2190E9AA0(v1585, qword_280EBB968, type metadata accessor for DateRangeTagFeedGroupKnobs);
      sub_2190E9AA0(v1584, qword_280EAB8E8, type metadata accessor for RecentStoriesTagFeedGroupKnobs);
      sub_2190E9AA0(v1605, qword_280EC4D68, type metadata accessor for ForYouTagFeedGroupKnobs);
      sub_2190E9AA0(v1583, qword_280EB87C0, type metadata accessor for HighlightsTagFeedGroupKnobs);
      sub_2190E9AA0(v1613, &qword_280EBFB10, type metadata accessor for WeatherTagFeedGroupKnobs);
      sub_2190E9AA0(v1582, qword_280EA4788, type metadata accessor for SportsFavoritesTagFeedGroupKnobs);
      sub_2190E9AA0(v1581, qword_280EA18A0, type metadata accessor for SportsTopStoriesTagFeedGroupKnobs);
      sub_2190E9AA0(v1580, qword_280EA7F10, type metadata accessor for SportsScheduleTagFeedGroupKnobs);
      sub_2190E9AA0(v1579, &qword_280EA1AF0, type metadata accessor for SportsNavigationTagFeedGroupKnobs);
      sub_2190E9AA0(v1578, &qword_280EAEC50, type metadata accessor for SportsRecordTagFeedGroupKnobs);
      sub_2190E9AA0(v1616, qword_280EAC298, type metadata accessor for MySportsTopicTagFeedGroupKnobs);
      sub_2190E9AA0(v1577, qword_280E9A708, type metadata accessor for SportsEventArticlesTagFeedGroupKnobs);
      sub_2190E9AA0(v1618, qword_280EA1D08, type metadata accessor for SportsKeyPlayersTagFeedGroupKnobs);
      sub_2190E9AA0(v1576, qword_280E9A648, type metadata accessor for SportsInjuryReportsTagFeedGroupKnobs);
      sub_2190E9AA0(v1612, qword_280EA4848, type metadata accessor for SportsEventInfoTagFeedGroupKnobs);
      sub_2190E9AA0(v1615, qword_280EA49D8, type metadata accessor for SportsBoxScoresTagFeedGroupKnobs);
      sub_2190E9AA0(v1575, qword_280EAB210, type metadata accessor for SportsBracketTagFeedGroupKnobs);
      sub_2190E9AA0(v1574, qword_280EA46C0, type metadata accessor for SportsStandingsTagFeedGroupKnobs);
      sub_2190E9AA0(v1614, qword_280EB2970, type metadata accessor for SportsLinksTagFeedGroupKnobs);
      sub_2190E9AA0(v1572, qword_280EAE9A8, type metadata accessor for SportsScoresTagFeedGroupKnobs);
      sub_2190E9AA0(v1573, qword_280EAE9A8, type metadata accessor for SportsScoresTagFeedGroupKnobs);
      sub_2190E9AA0(v1571, qword_280E965F8, type metadata accessor for ChannelSectionDirectoryTagFeedGroupKnobs);
      sub_2190E9AA0(v1570, qword_280EA9B18, type metadata accessor for ChannelSectionTagFeedGroupKnobs);
      sub_2190E9AA0(v1268, qword_280EB5908, type metadata accessor for ArticleListTagFeedGroupKnobs);
      sub_2190E9AA0(v1267, &qword_280EBB648, type metadata accessor for IssueListTagFeedGroupKnobs);
      sub_2190E9AA0(v1266, qword_280EC0C60, type metadata accessor for PaywallTagFeedGroupKnobs);
      sub_2190E9AA0(v1260, qword_280E9ACF8, type metadata accessor for PromotedArticleListTagFeedGroupKnobs);
      v1249 = v1436;
      sub_2190E9AFC(v1205, v1436, type metadata accessor for TopicRecipesTagFeedGroupKnobs);
      v515 = v1563;
    }

    v514 = v1622;
    sub_2190E9AFC(v1249, v1622 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_topicRecipesKnobs, type metadata accessor for TopicRecipesTagFeedGroupKnobs);
  }

  v1253 = v1562;
  v1254 = v1560 & ~(v1560 >> 63);
  if (v1561)
  {
    v1254 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v515[2] = v514;
  v515[3] = v1254;
  if (!v1253)
  {
    LOBYTE(v1623) = 3;
    sub_2190EA0E8();
    swift_allocObject();
    v1253 = sub_219BEF534();
  }

  v515[4] = v1253;
  return v515;
}

uint64_t sub_2190E91CC(void *a1)
{
  v3 = v1;
  sub_2190EA518(0, &qword_27CC15FF8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190EA4C4();
  sub_219BF7B44();
  v12 = *(v3 + 16);
  HIBYTE(v11) = 0;
  type metadata accessor for TagFeedGroupKnobs();
  sub_21877C990(&qword_27CC16000, type metadata accessor for TagFeedGroupKnobs);
  sub_219BF7834();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_219BF7824();
    v12 = *(v3 + 32);
    HIBYTE(v11) = 2;
    sub_2190EA0E8();
    sub_21877C990(&qword_27CC16008, sub_2190EA0E8);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2190E9408(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x70756F724778616DLL;
  v4 = 0xE900000000000073;
  if (v2 != 1)
  {
    v3 = 0x5368736572666572;
    v4 = 0xEF79676574617274;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6F6E4B70756F7267;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEA00000000007362;
  }

  v7 = 0x70756F724778616DLL;
  v8 = 0xE900000000000073;
  if (*a2 != 1)
  {
    v7 = 0x5368736572666572;
    v8 = 0xEF79676574617274;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6F6E4B70756F7267;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEA00000000007362;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_219BF78F4();
  }

  return v11 & 1;
}

uint64_t sub_2190E952C()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_2190E95E4()
{
  sub_219BF5524();
}

uint64_t sub_2190E9688()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_2190E973C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2190EA694();
  *a1 = result;
  return result;
}

void sub_2190E976C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007362;
  v4 = 0xE900000000000073;
  v5 = 0x70756F724778616DLL;
  if (v2 != 1)
  {
    v5 = 0x5368736572666572;
    v4 = 0xEF79676574617274;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6F6E4B70756F7267;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2190E97E0()
{
  v1 = 0x70756F724778616DLL;
  if (*v0 != 1)
  {
    v1 = 0x5368736572666572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F6E4B70756F7267;
  }
}

uint64_t sub_2190E9850@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2190EA694();
  *a1 = result;
  return result;
}

uint64_t sub_2190E9878(uint64_t a1)
{
  v2 = sub_2190EA4C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2190E98B4(uint64_t a1)
{
  v2 = sub_2190EA4C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2190E98F0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2190E9954@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2190EA23C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2190E99B0@<X0>(uint64_t a1@<X8>)
{
  sub_219BEF524();
  v2 = v4;
  if (qword_280EE95D8 != -1)
  {
    swift_once();
    v2 = v4;
  }

  return sub_2190D9694(v2, a1);
}

uint64_t sub_2190E9A34(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_2186EDD04(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2190E9AA0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2186EDD04(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2190E9AFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2190E9B64()
{
  if (!qword_280E91510)
  {
    sub_2190E9BE8();
    sub_2190E9C3C();
    sub_2190E9C90();
    v0 = sub_219BEF544();
    if (!v1)
    {
      atomic_store(v0, &qword_280E91510);
    }
  }
}

unint64_t sub_2190E9BE8()
{
  result = qword_280EA9F20;
  if (!qword_280EA9F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA9F20);
  }

  return result;
}

unint64_t sub_2190E9C3C()
{
  result = qword_280EA9F30;
  if (!qword_280EA9F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA9F30);
  }

  return result;
}

unint64_t sub_2190E9C90()
{
  result = qword_280EA9F28;
  if (!qword_280EA9F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA9F28);
  }

  return result;
}

void sub_2190E9CE4()
{
  if (!qword_280E91508)
  {
    sub_2190E9D68();
    sub_2190E9DBC();
    sub_2190E9E10();
    v0 = sub_219BEF544();
    if (!v1)
    {
      atomic_store(v0, &qword_280E91508);
    }
  }
}

unint64_t sub_2190E9D68()
{
  result = qword_280EE2428;
  if (!qword_280EE2428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE2428);
  }

  return result;
}

unint64_t sub_2190E9DBC()
{
  result = qword_280EE2438[0];
  if (!qword_280EE2438[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EE2438);
  }

  return result;
}

unint64_t sub_2190E9E10()
{
  result = qword_280EE2430;
  if (!qword_280EE2430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE2430);
  }

  return result;
}

void sub_2190E9E64()
{
  if (!qword_280E91420)
  {
    v0 = sub_219BEF544();
    if (!v1)
    {
      atomic_store(v0, &qword_280E91420);
    }
  }
}

void sub_2190E9EE0()
{
  if (!qword_280E917A8)
  {
    sub_219BF3DC4();
    v0 = MEMORY[0x277D341E0];
    sub_21877C990(&unk_280E8FF90, MEMORY[0x277D341E0]);
    sub_21877C990(&unk_280E8FFB0, v0);
    sub_21877C990(&qword_280E8FFA8, v0);
    v1 = sub_219BEEE14();
    if (!v2)
    {
      atomic_store(v1, &qword_280E917A8);
    }
  }
}

void sub_2190E9FE4()
{
  if (!qword_280E91448)
  {
    sub_219BF0354();
    v0 = MEMORY[0x277D32C58];
    sub_21877C990(&qword_280E90F78, MEMORY[0x277D32C58]);
    sub_21877C990(&qword_280E90F88, v0);
    sub_21877C990(&qword_280E90F80, v0);
    v1 = sub_219BEF544();
    if (!v2)
    {
      atomic_store(v1, &qword_280E91448);
    }
  }
}

void sub_2190EA0E8()
{
  if (!qword_280E91538)
  {
    sub_2190EA1EC();
    sub_21877C990(&qword_280EABB80, sub_2190EA1EC);
    sub_21877C990(qword_280EABB90, sub_2190EA1EC);
    sub_21877C990(&qword_280EABB88, sub_2190EA1EC);
    v0 = sub_219BEF544();
    if (!v1)
    {
      atomic_store(v0, &qword_280E91538);
    }
  }
}

void sub_2190EA1EC()
{
  if (!qword_280EABB78)
  {
    refreshed = type metadata accessor for OverridableFeedRefreshStrategy();
    if (!v1)
    {
      atomic_store(refreshed, &qword_280EABB78);
    }
  }
}

uint64_t sub_2190EA23C(void *a1)
{
  sub_2190EA518(0, &qword_280E8CF40, MEMORY[0x277D844C8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190EA4C4();
  sub_219BF7B34();
  if (!v1)
  {
    type metadata accessor for TagFeedGroupKnobs();
    LOBYTE(v17) = 0;
    sub_21877C990(&qword_280ED4D48, type metadata accessor for TagFeedGroupKnobs);
    sub_219BF7674();
    v14 = v19;
    LOBYTE(v16) = 1;
    sub_219BF7674();
    v9 = v17;
    v10 = v18;
    sub_2190EA0E8();
    v15 = 2;
    sub_21877C990(&qword_280E91540, sub_2190EA0E8);
    sub_219BF7674();
    v11 = v16;
    type metadata accessor for TagFeedKnobsConfig();
    v8 = swift_allocObject();
    sub_2190D9998(v14, v9, v10, v11);
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_2190EA4C4()
{
  result = qword_280ED2858;
  if (!qword_280ED2858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED2858);
  }

  return result;
}

void sub_2190EA518(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2190EA4C4();
    v7 = a3(a1, &type metadata for TagFeedKnobsConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2190EA590()
{
  result = qword_27CC16010;
  if (!qword_27CC16010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16010);
  }

  return result;
}

unint64_t sub_2190EA5E8()
{
  result = qword_280ED2848;
  if (!qword_280ED2848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED2848);
  }

  return result;
}

unint64_t sub_2190EA640()
{
  result = qword_280ED2850;
  if (!qword_280ED2850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED2850);
  }

  return result;
}

uint64_t sub_2190EA694()
{
  v0 = sub_219BF7614();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2190EA6E4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7NewsUI233FeedPuzzleRankStateCommandHandler_puzzleHistory), *(v1 + OBJC_IVAR____TtC7NewsUI233FeedPuzzleRankStateCommandHandler_puzzleHistory + 24));
  v4 = [sub_219BF0AA4() identifier];
  swift_unknownObjectRelease();
  sub_219BF5414();

  v5 = sub_219BF3424();

  if (v5)
  {
    v6 = [v5 rankID];
    if (v6 && (v7 = v6, sub_219BF5414(), v7, __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC7NewsUI233FeedPuzzleRankStateCommandHandler_puzzleRankProvider), *(v2 + OBJC_IVAR____TtC7NewsUI233FeedPuzzleRankStateCommandHandler_puzzleRankProvider + 24)), v8 = [sub_219BF0AA4() puzzleType], swift_unknownObjectRelease(), v9 = objc_msgSend(v8, sel_identifier), swift_unknownObjectRelease(), sub_219BF5414(), v9, v10 = sub_219BF30D4(), , , v10))
    {
      v11 = [v10 index];
    }

    else
    {
      v11 = -1;
    }
  }

  else
  {
    v11 = -1;
  }

  *a1 = v11;
  v12 = *MEMORY[0x277D32248];
  v13 = sub_219BEEAA4();
  v14 = *(*(v13 - 8) + 104);

  return v14(a1, v12, v13);
}

uint64_t sub_2190EA9C8()
{
  sub_2189698E4();
  MEMORY[0x28223BE20](v0);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BF0A14();
  v3 = sub_219BF2204();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return 0;
  }

  v5 = (*(v4 + 88))(v2, v3);
  if (v5 == *MEMORY[0x277D337A0] || v5 == *MEMORY[0x277D33798])
  {
    return 1;
  }

  if (v5 == *MEMORY[0x277D33790])
  {
    return 0;
  }

  result = sub_219BF78E4();
  __break(1u);
  return result;
}

uint64_t sub_2190EAB10()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    sub_219BEAA14();
    sub_219BF0AC4();
    sub_219BE6FD4();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2190EABF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2190ED054(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2190EAC20(uint64_t a1)
{
  v2 = sub_2187AD790();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2190EAC5C(uint64_t a1)
{
  v2 = sub_2187AD790();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EngagementUpsellOfferEntry.encode(to:)(void *a1)
{
  sub_2187AD6F8(0, &qword_280E8C4E0, sub_2187AD790, &type metadata for EngagementUpsellOfferEntry.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187AD790();
  sub_219BF7B44();
  v13 = 0;
  sub_219BF7804();
  if (!v1)
  {
    v12 = 1;
    sub_219BF7804();
    type metadata accessor for EngagementUpsellOfferEntry(0);
    v11 = 2;
    type metadata accessor for EngagementUpsellBestOffer(0);
    sub_2187ADD20(&qword_280EBEDF0, type metadata accessor for EngagementUpsellBestOffer);
    sub_219BF77E4();
    v10 = 3;
    sub_219BDBD34();
    sub_2187ADD20(&qword_280EE9CA0, MEMORY[0x277CC9578]);
    sub_219BF7834();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t EngagementUpsellOfferEntry.description.getter()
{
  sub_21876CFD0(0, qword_280EBED90, type metadata accessor for EngagementUpsellBestOffer);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v13 - v2;
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_219BF7314();

  v15 = 0x696C456C61697274;
  v16 = 0xEF203A656C626967;
  if (*v0)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*v0)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x21CECC330](v4, v5);

  MEMORY[0x21CECC330](0x66664F7473656220, 0xEC000000203A7265);
  v6 = type metadata accessor for EngagementUpsellOfferEntry(0);
  sub_2190ED1F0(&v0[*(v6 + 24)], v3, qword_280EBED90, type metadata accessor for EngagementUpsellBestOffer);
  v7 = type metadata accessor for EngagementUpsellBestOffer(0);
  if ((*(*(v7 - 8) + 48))(v3, 1, v7) == 1)
  {
    sub_2190ED25C(v3, qword_280EBED90, type metadata accessor for EngagementUpsellBestOffer);
    v8 = 0xE700000000000000;
    v9 = 0x6E776F6E6B6E75;
  }

  else
  {
    v13 = 0;
    v14 = 0xE000000000000000;
    sub_219BF7314();
    MEMORY[0x21CECC330](0x7954726566666F28, 0xEC000000203A6570);
    sub_219BE4944();
    sub_219BF7484();
    MEMORY[0x21CECC330](0xD000000000000011, 0x8000000219D0B0E0);
    sub_219BE4144();
    sub_219BF7484();
    MEMORY[0x21CECC330](0xD000000000000017, 0x8000000219D0B100);
    if (v3[*(v7 + 24)])
    {
      v10 = 1702195828;
    }

    else
    {
      v10 = 0x65736C6166;
    }

    if (v3[*(v7 + 24)])
    {
      v11 = 0xE400000000000000;
    }

    else
    {
      v11 = 0xE500000000000000;
    }

    MEMORY[0x21CECC330](v10, v11);

    MEMORY[0x21CECC330](41, 0xE100000000000000);
    v9 = v13;
    v8 = v14;
    sub_2187AE6C0(v3, type metadata accessor for EngagementUpsellBestOffer);
  }

  MEMORY[0x21CECC330](v9, v8);

  return v15;
}

uint64_t sub_2190EB26C()
{
  sub_219BF7314();
  MEMORY[0x21CECC330](0x7954726566666F28, 0xEC000000203A6570);
  sub_219BE4944();
  sub_219BF7484();
  MEMORY[0x21CECC330](0xD000000000000011, 0x8000000219D0B0E0);
  v1 = type metadata accessor for EngagementUpsellBestOffer(0);
  sub_219BE4144();
  sub_219BF7484();
  MEMORY[0x21CECC330](0xD000000000000017, 0x8000000219D0B100);
  if (*(v0 + *(v1 + 24)))
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*(v0 + *(v1 + 24)))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x21CECC330](v2, v3);

  MEMORY[0x21CECC330](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_2190EB3E0(void *a1)
{
  sub_2187AD6F8(0, &qword_280E8C528, sub_2187AE3A4, &type metadata for EngagementUpsellBestOffer.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187AE3A4();
  sub_219BF7B44();
  v12 = 0;
  sub_219BE4944();
  sub_2187ADD20(&unk_280EE61D8, MEMORY[0x277D353E0]);
  sub_219BF7834();
  if (!v1)
  {
    type metadata accessor for EngagementUpsellBestOffer(0);
    v11 = 1;
    sub_219BE4144();
    sub_2187ADD20(&unk_280EE6400, MEMORY[0x277D34FA0]);
    sub_219BF7834();
    v10 = 2;
    sub_219BF7804();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2190EB644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2190ED330(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2190EB66C(uint64_t a1)
{
  v2 = sub_2187AE3A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2190EB6A8(uint64_t a1)
{
  v2 = sub_2187AE3A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2190EB700@<X0>(uint64_t a1@<X8>)
{
  v88 = a1;
  v87 = sub_219BDBD34();
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v83 = &v73 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for EngagementUpsellOfferEntry(0);
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v82 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21876CFD0(0, &qword_280EE9C40, MEMORY[0x277CC9578]);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v81 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v80 = &v73 - v7;
  sub_21876CFD0(0, qword_280EBED90, type metadata accessor for EngagementUpsellBestOffer);
  MEMORY[0x28223BE20](v8 - 8);
  v79 = &v73 - v9;
  v90 = type metadata accessor for EngagementUpsellBestOffer(0);
  v78 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v92 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BE4144();
  v96 = *(v11 - 8);
  v97 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v73 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v95 = &v73 - v14;
  v91 = sub_219BE4944();
  v89 = *(v91 - 8);
  v15 = MEMORY[0x28223BE20](v91);
  v74 = (&v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v94 = &v73 - v17;
  v18 = sub_219BE3D64();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x277D35380];
  sub_21876CFD0(0, &qword_280EE6200, MEMORY[0x277D35380]);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v76 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v73 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v73 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v73 - v32;
  v77 = v1;
  v75 = v1 + OBJC_IVAR____TtC7NewsUI228EngagementUpsellOfferManager_offerManager;
  swift_getObjectType();
  (*(v19 + 104))(v21, *MEMORY[0x277D34D60], v18);
  swift_unknownObjectRetain();
  sub_219BE3F44();
  swift_unknownObjectRelease();
  (*(v19 + 8))(v21, v18);
  v93 = v33;
  sub_2190ED1F0(v33, v31, &qword_280EE6200, v22);
  v34 = sub_219BE4864();
  v35 = *(v34 - 8);
  v36 = *(v35 + 6);
  if (v36(v31, 1, v34) == 1)
  {
    sub_2190ED25C(v31, &qword_280EE6200, MEMORY[0x277D35380]);
    v37 = v89;
    v38 = v91;
    (*(v89 + 104))(v94, *MEMORY[0x277D353D8], v91);
  }

  else
  {
    v39 = v74;
    sub_219BE4844();
    (*(v35 + 1))(v31, v34);
    v37 = v89;
    v38 = v91;
    (*(v89 + 32))(v94, v39, v91);
  }

  v74 = v35;
  sub_2190ED1F0(v93, v28, &qword_280EE6200, MEMORY[0x277D35380]);
  v40 = v36(v28, 1, v34);
  v41 = v97;
  v42 = v92;
  if (v40 == 1)
  {
    sub_2190ED25C(v28, &qword_280EE6200, MEMORY[0x277D35380]);
    (*(v96 + 104))(v95, *MEMORY[0x277D34F88], v41);
  }

  else
  {
    v43 = v36;
    v44 = v92;
    v45 = v38;
    v46 = v37;
    v47 = v73;
    sub_219BE4834();
    v74[1](v28, v34);
    v48 = v47;
    v37 = v46;
    v38 = v45;
    v42 = v44;
    v36 = v43;
    (*(v96 + 32))(v95, v48, v41);
  }

  v49 = v76;
  sub_2190ED1F0(v93, v76, &qword_280EE6200, MEMORY[0x277D35380]);
  if (v36(v49, 1, v34) == 1)
  {
    sub_2190ED25C(v49, &qword_280EE6200, MEMORY[0x277D35380]);
    v50 = 0;
  }

  else
  {
    v50 = sub_219BE47A4();
    v74[1](v49, v34);
  }

  v51 = v81;
  v52 = v80;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v53 = sub_219BE3F64();
  swift_unknownObjectRelease();
  (*(v37 + 16))(v42, v94, v38);
  v54 = v90;
  (*(v96 + 16))(v42 + *(v90 + 20), v95, v97);
  *(v42 + *(v54 + 24)) = v50 & 1;
  v55 = [*(v77 + OBJC_IVAR____TtC7NewsUI228EngagementUpsellOfferManager_bundleSubscriptionManager) cachedSubscription];
  if (objc_getAssociatedObject(v55, v55 + 1))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v99 = 0u;
    v100 = 0u;
  }

  v101 = v99;
  v102 = v100;
  if (*(&v100 + 1))
  {
    sub_2186C6148(0, &qword_280E8DA20);
    if (swift_dynamicCast())
    {
      v56 = v98;
      v57 = [v98 integerValue];
      if (v57 == -1)
      {
        goto LABEL_26;
      }

      goto LABEL_19;
    }
  }

  else
  {
    sub_218806FD0(&v101);
  }

  v56 = 0;
  v57 = 0;
LABEL_19:
  if (objc_getAssociatedObject(v55, ~v57))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v99 = 0u;
    v100 = 0u;
  }

  v101 = v99;
  v102 = v100;
  if (*(&v100 + 1))
  {
    sub_2186C6148(0, &qword_280E8DA20);
    if (swift_dynamicCast())
    {
      v58 = v98;
      v59 = [v58 integerValue];

      v60 = v59 - 89;
      goto LABEL_27;
    }
  }

  else
  {
    sub_218806FD0(&v101);
  }

LABEL_26:

  v60 = -89;
LABEL_27:
  v61 = v60 ^ v57;
  v62 = v42;
  v63 = v79;
  sub_2187AE658(v62, v79, type metadata accessor for EngagementUpsellBestOffer);
  (*(v78 + 56))(v63, 0, 1, v90);
  v64 = v86;
  v65 = v87;
  (*(v86 + 56))(v52, 1, 1, v87);
  v66 = v82;
  *v82 = v53 & 1;
  *(v66 + 1) = (v61 & 1) == 0;
  v67 = v85;
  sub_2190ED1F0(v63, v66 + *(v85 + 24), qword_280EBED90, type metadata accessor for EngagementUpsellBestOffer);
  sub_2190ED1F0(v52, v51, &qword_280EE9C40, MEMORY[0x277CC9578]);
  v68 = *(v64 + 48);
  v69 = v51;
  if (v68(v51, 1, v65) == 1)
  {
    v70 = v83;
    sub_219BDBCB4();
    sub_2190ED25C(v52, &qword_280EE9C40, MEMORY[0x277CC9578]);
    sub_2190ED25C(v63, qword_280EBED90, type metadata accessor for EngagementUpsellBestOffer);
    sub_2187AE6C0(v92, type metadata accessor for EngagementUpsellBestOffer);
    (*(v96 + 8))(v95, v97);
    (*(v89 + 8))(v94, v91);
    sub_2190ED25C(v93, &qword_280EE6200, MEMORY[0x277D35380]);
    if (v68(v69, 1, v65) != 1)
    {
      sub_2190ED25C(v69, &qword_280EE9C40, MEMORY[0x277CC9578]);
    }
  }

  else
  {
    sub_2190ED25C(v52, &qword_280EE9C40, MEMORY[0x277CC9578]);
    sub_2190ED25C(v63, qword_280EBED90, type metadata accessor for EngagementUpsellBestOffer);
    sub_2187AE6C0(v92, type metadata accessor for EngagementUpsellBestOffer);
    (*(v96 + 8))(v95, v97);
    (*(v89 + 8))(v94, v91);
    sub_2190ED25C(v93, &qword_280EE6200, MEMORY[0x277D35380]);
    v70 = v83;
    (*(v64 + 32))(v83, v69, v65);
  }

  (*(v64 + 32))(v66 + *(v67 + 28), v70, v65);
  v71 = v88;
  sub_2187AE8BC(v66, v88);
  return (*(v84 + 56))(v71, 0, 1, v67);
}

uint64_t sub_2190EC578()
{
  sub_2186F8278(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE30B4();
}

uint64_t sub_2190EC604(uint64_t a1, uint64_t a2)
{
  sub_21876CFD0(0, qword_280EBB760, type metadata accessor for EngagementUpsellOfferEntry);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v35 - v5;
  v7 = type metadata accessor for EngagementUpsellOfferEntry(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v35 - v12;
  sub_2190EB700(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_2190ED25C(v6, qword_280EBB760, type metadata accessor for EngagementUpsellOfferEntry);
    if (qword_280EE60A0 != -1)
    {
      swift_once();
    }

    v14 = sub_219BE5434();
    __swift_project_value_buffer(v14, qword_280F627F0);
    v15 = sub_219BE5414();
    v16 = sub_219BF61F4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2186C1000, v15, v16, "EngagementUpsellOfferManager prewarm failed: nil upsellOfferEntry", v17, 2u);
      MEMORY[0x21CECF960](v17, -1, -1);
    }

    v18 = (a2 + OBJC_IVAR____TtC7NewsUI228EngagementUpsellOfferManager_store);
    v19 = *(a2 + OBJC_IVAR____TtC7NewsUI228EngagementUpsellOfferManager_store + 24);
    v20 = *(a2 + OBJC_IVAR____TtC7NewsUI228EngagementUpsellOfferManager_store + 32);
    __swift_project_boxed_opaque_existential_1(v18, v19);
    return (*(v20 + 16))(v19, v20);
  }

  else
  {
    sub_2187AE8BC(v6, v13);
    if (qword_280EE60A0 != -1)
    {
      swift_once();
    }

    v22 = sub_219BE5434();
    __swift_project_value_buffer(v22, qword_280F627F0);
    sub_2187AE658(v13, v11, type metadata accessor for EngagementUpsellOfferEntry);
    v23 = sub_219BE5414();
    v24 = sub_219BF6214();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v35[1] = v2;
      v27 = v26;
      v36 = v26;
      *v25 = 136315138;
      v28 = EngagementUpsellOfferEntry.description.getter();
      v30 = v29;
      sub_2187AE6C0(v11, type metadata accessor for EngagementUpsellOfferEntry);
      v31 = sub_2186D1058(v28, v30, &v36);

      *(v25 + 4) = v31;
      _os_log_impl(&dword_2186C1000, v23, v24, "EngagementUpsellOfferManager finished refreshing offer state: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x21CECF960](v27, -1, -1);
      MEMORY[0x21CECF960](v25, -1, -1);
    }

    else
    {

      sub_2187AE6C0(v11, type metadata accessor for EngagementUpsellOfferEntry);
    }

    v32 = (a2 + OBJC_IVAR____TtC7NewsUI228EngagementUpsellOfferManager_store);
    v33 = *(a2 + OBJC_IVAR____TtC7NewsUI228EngagementUpsellOfferManager_store + 24);
    v34 = *(a2 + OBJC_IVAR____TtC7NewsUI228EngagementUpsellOfferManager_store + 32);
    __swift_project_boxed_opaque_existential_1(v32, v33);
    (*(v34 + 24))(v13, v33, v34);
    return sub_2187AE6C0(v13, type metadata accessor for EngagementUpsellOfferEntry);
  }
}

void sub_2190ECA70(void *a1)
{
  if (qword_280EE60A0 != -1)
  {
    swift_once();
  }

  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_280F627F0);
  v3 = a1;
  oslog = sub_219BE5414();
  v4 = sub_219BF61F4();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_219BF7A04();
    v9 = sub_2186D1058(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2186C1000, oslog, v4, "EngagementUpsellOfferManager prewarm failed: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x21CECF960](v6, -1, -1);
    MEMORY[0x21CECF960](v5, -1, -1);
  }

  else
  {
  }
}

void sub_2190ECC08(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_getObjectType();

  swift_unknownObjectRetain();
  sub_219BE3F74();
  swift_unknownObjectRelease();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2187A913C;
  *(v5 + 24) = v4;

  v6 = sub_219BE2E54();
  sub_219BE2F74();

  v7 = swift_allocObject();
  *(v7 + 16) = sub_2187A913C;
  *(v7 + 24) = v4;
  v8 = sub_219BE2E54();
  sub_219BE2FD4();
}

uint64_t sub_2190ECD94(void *a1, uint64_t (*a2)(void))
{
  if (qword_280EE60A0 != -1)
  {
    swift_once();
  }

  v4 = sub_219BE5434();
  __swift_project_value_buffer(v4, qword_280F627F0);
  v5 = a1;
  v6 = sub_219BE5414();
  v7 = sub_219BF61F4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_219BF7A04();
    v12 = sub_2186D1058(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2186C1000, v6, v7, "EngagementUpsellOfferManager offerManager refresh() failed: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x21CECF960](v9, -1, -1);
    MEMORY[0x21CECF960](v8, -1, -1);
  }

  return a2();
}

unint64_t sub_2190ED000()
{
  result = qword_27CC16040;
  if (!qword_27CC16040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16040);
  }

  return result;
}

uint64_t sub_2190ED054(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x456C616972547369 && a2 == 0xEF656C626967696CLL;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000219D0B160 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6566664F74736562 && a2 == 0xE900000000000072 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x616470557473616CLL && a2 == 0xEB00000000646574)
  {

    return 3;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_2190ED1F0(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_21876CFD0(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2190ED25C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_21876CFD0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_2190ED2DC()
{
  result = qword_27CC16050;
  if (!qword_27CC16050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16050);
  }

  return result;
}

uint64_t sub_2190ED330(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x707954726566666FLL && a2 == 0xE900000000000065;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x63536C6C65737075 && a2 == 0xEE006F6972616E65 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000219D0B1B0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_219BF78F4();

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

uint64_t sub_2190ED468@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BED8D4();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2190EDC70(0, &qword_27CC16088, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for SportsStandingsTagFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190EDBB8();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_2190EDCD4(&unk_280E92630, MEMORY[0x277D31C50]);
    sub_219BF7734();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_2190EDC0C(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2190ED714(uint64_t a1)
{
  v2 = sub_2190EDBB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2190ED750(uint64_t a1)
{
  v2 = sub_2190EDBB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2190ED7A4(void *a1)
{
  sub_2190EDC70(0, &qword_27CC16098, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190EDBB8();
  sub_219BF7B44();
  sub_219BED8D4();
  sub_2190EDCD4(&qword_280E92640, MEMORY[0x277D31C50]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2190ED92C(uint64_t a1)
{
  v2 = sub_2190EDCD4(&qword_27CC16070, type metadata accessor for SportsStandingsTagFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_2190EDAB4(uint64_t a1)
{
  result = sub_2190EDCD4(&unk_27CC1C650, type metadata accessor for SportsStandingsTagFeedGroup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2190EDB0C(void *a1)
{
  a1[1] = sub_2190EDCD4(&qword_27CC16070, type metadata accessor for SportsStandingsTagFeedGroup);
  a1[2] = sub_2190EDCD4(&qword_27CC16078, type metadata accessor for SportsStandingsTagFeedGroup);
  result = sub_2190EDCD4(&qword_27CC16080, type metadata accessor for SportsStandingsTagFeedGroup);
  a1[3] = result;
  return result;
}

unint64_t sub_2190EDBB8()
{
  result = qword_27CC16090;
  if (!qword_27CC16090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16090);
  }

  return result;
}

uint64_t sub_2190EDC0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsStandingsTagFeedGroup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2190EDC70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2190EDBB8();
    v7 = a3(a1, &type metadata for SportsStandingsTagFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2190EDCD4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2190EDD30()
{
  result = qword_27CC160A0;
  if (!qword_27CC160A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC160A0);
  }

  return result;
}

unint64_t sub_2190EDD88()
{
  result = qword_27CC160A8;
  if (!qword_27CC160A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC160A8);
  }

  return result;
}

unint64_t sub_2190EDDE0()
{
  result = qword_27CC160B0;
  if (!qword_27CC160B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC160B0);
  }

  return result;
}

uint64_t sub_2190EDE34@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_2190EE044(a1, a2);
  sub_218720FAC();
  swift_allocObject();
  result = sub_219BE2174();
  *a3 = result;
  return result;
}

uint64_t sub_2190EDE88(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BE2B94();
  sub_218718690(a2, v9);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  sub_2186CB1F0(v9, v6 + 24);
  *(v6 + 64) = a3;

  swift_unknownObjectRetain();
  v7 = sub_219BE2E54();
  sub_219BE21A4();

  return __swift_destroy_boxed_opaque_existential_1(v9);
}

unint64_t sub_2190EDF90()
{
  result = qword_27CC160C0;
  if (!qword_27CC160C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC160C0);
  }

  return result;
}

uint64_t sub_2190EE044(void *a1, void *a2)
{
  v4 = sub_219BE2A44();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v35 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE2C04();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v31 - v12;
  v14 = [a2 possiblyUnfetchedAppConfiguration];
  if ([v14 respondsToSelector_])
  {
    v34 = v4;
    v33 = [v14 criticalStorageThreshold];
    swift_unknownObjectRelease();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219BE2BA4();
    (*(v8 + 104))(v11, *MEMORY[0x277D6CE28], v7);
    v15 = sub_219BE2BF4();
    v16 = *(v8 + 8);
    v16(v11, v7);
    v16(v13, v7);
    if (v15)
    {
      return 2;
    }

    v17 = v5;
    v18 = a1[3];
    v31[1] = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v18);
    v19 = *MEMORY[0x277D6CDF0];
    v20 = *(v17 + 104);
    v32 = a2;
    v4 = v34;
    v21 = v35;
    v20(v35, v19, v34);
    v5 = v17;
    v22 = sub_219BE2B84();
    v23 = v21;
    a2 = v32;
    (*(v17 + 8))(v23, v4);
    if (v22 < v33)
    {
      return 2;
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v25 = [a2 possiblyUnfetchedAppConfiguration];
  if ([v25 respondsToSelector_])
  {
    v26 = [v25 lowStorageThreshold];
    swift_unknownObjectRelease();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219BE2BA4();
    (*(v8 + 104))(v11, *MEMORY[0x277D6CE20], v7);
    v27 = sub_219BE2BF4();
    v28 = *(v8 + 8);
    v28(v11, v7);
    v28(v13, v7);
    if (v27)
    {
      return 1;
    }

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v29 = v35;
    (*(v5 + 104))(v35, *MEMORY[0x277D6CDE8], v4);
    v30 = sub_219BE2B84();
    (*(v5 + 8))(v29, v4);
    if (v30 < v26)
    {
      return 1;
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return 0;
}

uint64_t sub_2190EE4B0(void *a1)
{
  v2 = sub_219BE15B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  Strong = swift_unknownObjectUnownedLoadStrong();

  (*(v3 + 104))(v5, *MEMORY[0x277D2F4D0], v2);
  sub_219BDD0F4();

  (*(v3 + 8))(v5, v2);
  sub_219BDD274();
  sub_219BE1B94();
}

uint64_t type metadata accessor for PuzzleScoreboardTagFeedGroupConfigData()
{
  result = qword_280E98150;
  if (!qword_280E98150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2190EE750@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BF1934();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v18 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2190EEC80(0, &qword_280E8C778, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190EEC2C();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v16;
    v11 = v17;
    v19 = 1;
    sub_218933D7C(&qword_280E90808);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    *v11 = 40;
    v13 = type metadata accessor for PuzzleScoreboardTagFeedGroupConfigData();
    (*(v12 + 32))(&v11[*(v13 + 20)], v18, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2190EE9B8(void *a1)
{
  v3 = v1;
  sub_2190EEC80(0, &qword_27CC160D8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190EEC2C();
  sub_219BF7B44();
  v11[15] = *v3;
  v11[14] = 0;
  sub_218933D28();
  sub_219BF7834();
  if (!v2)
  {
    type metadata accessor for PuzzleScoreboardTagFeedGroupConfigData();
    v11[13] = 1;
    sub_219BF1934();
    sub_218933D7C(&qword_280E90810);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2190EEB84(uint64_t a1)
{
  v2 = sub_2190EEC2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2190EEBC0(uint64_t a1)
{
  v2 = sub_2190EEC2C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2190EEC2C()
{
  result = qword_280E98188;
  if (!qword_280E98188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E98188);
  }

  return result;
}

void sub_2190EEC80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2190EEC2C();
    v7 = a3(a1, &type metadata for PuzzleScoreboardTagFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2190EECF8()
{
  result = qword_27CC160E0;
  if (!qword_27CC160E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC160E0);
  }

  return result;
}

unint64_t sub_2190EED50()
{
  result = qword_280E98178;
  if (!qword_280E98178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E98178);
  }

  return result;
}

unint64_t sub_2190EEDA8()
{
  result = qword_280E98180;
  if (!qword_280E98180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E98180);
  }

  return result;
}

uint64_t sub_2190EEDFC(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_218C82C04(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_2190F1FE4(v6);
  return sub_219BF73E4();
}

uint64_t sub_2190EEE78()
{
  v1 = type metadata accessor for SportsNavigationTagFeedGroupKnobs();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SportsNavigationTagFeedGroupEmitter();
  sub_2190F3538(v0 + *(v4 + 20), v3, type metadata accessor for SportsNavigationTagFeedGroupKnobs);
  v15 = 17;
  sub_2189AD5C8();
  v6 = v5;
  v7 = sub_219BEE964();
  (*(*(v6 - 8) + 8))(v3, v6);
  sub_2190F2F7C(0, &qword_280E8B8E0, sub_218A59E00, MEMORY[0x277D84560]);
  sub_218A59E00(0);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C09BA0;
  sub_218C6FAA0();
  swift_allocObject();
  *(v12 + v11) = sub_219BEFB94();
  (*(v10 + 104))(v12 + v11, *MEMORY[0x277D32308], v9);
  v14 = v7;
  sub_2191EDA0C(v12);
  return v14;
}

uint64_t sub_2190EF0C4(uint64_t a1)
{
  v2 = v1;
  sub_218A59C84();
  v5 = v4;
  MEMORY[0x28223BE20](v4);
  v7 = (&v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for SportsNavigationTagFeedGroupEmitter();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BEF0B4();
  v12 = *(v37 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v13 = [v12 backingTag];

  v14 = [v13 asSports];
  v15 = swift_unknownObjectRelease();
  if (v14)
  {
    v35 = v5;
    MEMORY[0x28223BE20](v15);
    *(&v32 - 2) = v2;
    sub_219BF29D4();
    sub_219BE3204();
    v36 = type metadata accessor for SportsNavigationTagFeedGroupEmitter;
    v33 = v14;
    sub_2190F3538(v2, &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SportsNavigationTagFeedGroupEmitter);
    v16 = *(v9 + 80);
    v17 = (v16 + 24) & ~v16;
    v18 = v2;
    v19 = swift_allocObject();
    *(v19 + 16) = v14;
    sub_2190F3280(&v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v17);
    *(v19 + ((v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
    swift_unknownObjectRetain();

    v20 = sub_219BE2E54();
    sub_218845868();
    sub_219BE2F64();

    sub_2190F3538(v18, &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v36);
    v21 = (v16 + 16) & ~v16;
    v34 = v21 + v10;
    v22 = (v21 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    sub_2190F3280(v11, v23 + v21);
    *(v23 + v22) = a1;

    v24 = sub_219BE2E54();
    sub_219BF1904();
    sub_219BE2F64();

    v25 = v36;
    sub_2190F3538(v18, v11, v36);
    v26 = swift_allocObject();
    sub_2190F3280(v11, v26 + v21);
    *(v26 + v22) = v33;
    *(v26 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8)) = a1;
    swift_unknownObjectRetain();

    v27 = sub_219BE2E54();
    sub_219BE2F64();

    sub_2190F3538(v18, v11, v25);
    v28 = swift_allocObject();
    sub_2190F3280(v11, v28 + v21);
    v29 = sub_219BE2E54();
    v30 = sub_219BE3064();
    swift_unknownObjectRelease();

    return v30;
  }

  else
  {
    *v7 = 0xD000000000000025;
    v7[1] = 0x8000000219D0B2F0;
    swift_storeEnumTagMultiPayload();
    sub_2190F2F7C(0, &qword_280EE6C80, sub_218A59C84, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }
}

uint64_t sub_2190EF5B0(uint64_t a1)
{
  v2 = type metadata accessor for SportsNavigationTagFeedGroupEmitter();
  __swift_project_boxed_opaque_existential_1((a1 + *(v2 + 28)), *(a1 + *(v2 + 28) + 24));
  return sub_219BF4434();
}

char *sub_2190EF60C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v64 = a3;
  v62 = a4;
  v56 = type metadata accessor for SportsNavigationTagFeedGroupEmitter();
  v59 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v60 = v5;
  v61 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2190F3600(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BF34F4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v58 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v52 - v14;
  v57 = v16;
  MEMORY[0x28223BE20](v13);
  v18 = &v52 - v17;
  v19 = [a2 identifier];
  v20 = sub_219BF5414();
  v22 = v21;

  sub_219BF29A4();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_2190F35A0(v8, sub_2190F3600);
    sub_2190F3634();
    swift_allocError();
    *v23 = v20;
    *(v23 + 8) = v22;
    *(v23 + 16) = 1;
    swift_willThrow();
  }

  else
  {

    v53 = *(v10 + 32);
    v54 = v10 + 32;
    v53(v18, v8, v9);
    v63 = v18;
    v24 = sub_219BF34A4();
    v25 = v10;
    v26 = *(v24 + 16);
    v55 = v25;
    if (v26)
    {
      v27 = v25 + 16;
      v28 = *(v25 + 16);
      v29 = *(v25 + 80);
      v52 = v24;
      v30 = v24 + ((v29 + 32) & ~v29);
      v66 = *(v27 + 56);
      v67 = v28;
      v68 = v27;
      v31 = (v27 - 8);
      v32 = MEMORY[0x277D84F90];
      v65 = v9;
      v28(v15, v30, v9);
      while (1)
      {
        v34 = sub_219BF34D4();
        v36 = v35;
        (*v31)(v15, v9);
        if (v36)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v32 = sub_218840D24(0, *(v32 + 2) + 1, 1, v32);
          }

          v38 = *(v32 + 2);
          v37 = *(v32 + 3);
          if (v38 >= v37 >> 1)
          {
            v32 = sub_218840D24((v37 > 1), v38 + 1, 1, v32);
          }

          *(v32 + 2) = v38 + 1;
          v33 = &v32[16 * v38];
          *(v33 + 4) = v34;
          *(v33 + 5) = v36;
          v9 = v65;
        }

        v30 += v66;
        if (!--v26)
        {
          break;
        }

        v67(v15, v30, v9);
      }
    }

    else
    {

      v32 = MEMORY[0x277D84F90];
    }

    v69 = v32;
    sub_2186D0C48(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_218ACCAC0();
    v8 = sub_219BF56E4();

    v39 = v55;
    v40 = v63;
    if (*(v8 + 2))
    {
      v41 = off_282A4D758;
      type metadata accessor for TagService();
      v41();

      v42 = sub_219BE2E54();
      sub_2186D6710(0, &qword_280E8E420);
      sub_2190F1E9C(&qword_280E8EFC0, sub_218A3A1C4);
      v68 = sub_219BE30C4();

      v43 = v58;
      (*(v39 + 16))(v58, v40, v9);
      v44 = v61;
      sub_2190F3538(v64, v61, type metadata accessor for SportsNavigationTagFeedGroupEmitter);
      v45 = (*(v39 + 80) + 24) & ~*(v39 + 80);
      v46 = (v57 + *(v59 + 80) + v45) & ~*(v59 + 80);
      v47 = swift_allocObject();
      *(v47 + 16) = v62;
      v53((v47 + v45), v43, v9);
      sub_2190F3280(v44, v47 + v46);

      v48 = sub_219BE2E54();
      sub_218845868();
      v8 = sub_219BE2F74();

      (*(v39 + 8))(v63, v9);
    }

    else
    {

      v49 = sub_219BEEDD4();
      sub_2190F1E9C(&qword_280E917E0, MEMORY[0x277D32430]);
      swift_allocError();
      (*(*(v49 - 8) + 104))(v50, *MEMORY[0x277D32428], v49);
      swift_willThrow();
      (*(v39 + 8))(v40, v9);
    }
  }

  return v8;
}

id sub_2190EFD64@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + 16) asSports];
  *a2 = result;
  return result;
}

void sub_2190EFDAC(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  sub_219BEF0B4();
  v4 = *(v33 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_subscriptionController);

  v5 = [v4 subscribedTagIDs];

  if (v5)
  {
    v6 = sub_219BF5924();

    v7 = sub_218845F78(v6);

    v35 = MEMORY[0x277D84F90];
    v34 = MEMORY[0x277D84F90];
    if (v3 >> 62)
    {
      goto LABEL_30;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
    {
      v26 = a2;
      v9 = 0;
      v32 = v3 & 0xC000000000000001;
      v29 = v3 & 0xFFFFFFFFFFFFFF8;
      v30 = v3;
      v28 = v3 + 32;
      v3 = v7 + 56;
      v31 = MEMORY[0x277D84F90];
      v27 = MEMORY[0x277D84F90];
      while (v32)
      {
        v11 = MEMORY[0x21CECE0F0](v9, v30);
        v12 = __OFADD__(v9++, 1);
        if (v12)
        {
          goto LABEL_28;
        }

LABEL_14:
        v13 = [v11 identifier];
        v14 = sub_219BF5414();
        a2 = v15;

        if (*(v7 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v16 = sub_219BF7AE4(), v17 = -1 << *(v7 + 32), v18 = v16 & ~v17, ((*(v3 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) != 0))
        {
          v19 = ~v17;
          while (1)
          {
            v20 = (*(v7 + 48) + 16 * v18);
            v21 = *v20 == v14 && v20[1] == a2;
            if (v21 || (sub_219BF78F4() & 1) != 0)
            {
              break;
            }

            v18 = (v18 + 1) & v19;
            if (((*(v3 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
            {
              goto LABEL_5;
            }
          }

          v22 = swift_unknownObjectRetain();
          MEMORY[0x21CECC690](v22);
          if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_219BF5A14();
          }

          sub_219BF5A54();
          swift_unknownObjectRelease();
          v27 = v35;
          if (v9 == i)
          {
LABEL_27:

            a2 = v26;
            v23 = v31;
            v24 = v27;
            goto LABEL_32;
          }
        }

        else
        {
LABEL_5:

          v10 = swift_unknownObjectRetain();
          MEMORY[0x21CECC690](v10);
          if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_219BF5A14();
          }

          sub_219BF5A54();
          swift_unknownObjectRelease();
          v31 = v34;
          if (v9 == i)
          {
            goto LABEL_27;
          }
        }
      }

      if (v9 >= *(v29 + 16))
      {
        goto LABEL_29;
      }

      v11 = *(v28 + 8 * v9);
      swift_unknownObjectRetain();
      v12 = __OFADD__(v9++, 1);
      if (!v12)
      {
        goto LABEL_14;
      }

LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      ;
    }

    v23 = MEMORY[0x277D84F90];
    v24 = MEMORY[0x277D84F90];
LABEL_32:
    if (sub_219BF34C4())
    {
      sub_2191EE304(v23);
      v25 = v24;
    }

    else
    {
      v25 = sub_2190F0180();
    }

    *a2 = v25;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2190F0180()
{

  v5 = sub_2197590B0(v0);
  sub_2190EEDFC(&v5);
  v1 = v5;

  v5 = sub_2197590B0(v2);
  sub_2190EEDFC(&v5);
  v3 = v5;
  v5 = v1;
  sub_2191EE304(v3);
  return v5;
}

void (*sub_2190F0214(unint64_t *a1, uint64_t a2, uint64_t a3))(char *, uint64_t)
{
  v4 = *a1;
  v5 = (a2 + *(type metadata accessor for SportsNavigationTagFeedGroupEmitter() + 36));
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v8 = (*(v7 + 16))(v4, v6, v7);
  v10 = v9;
  if (v4 >> 62)
  {
    sub_2186D6710(0, &qword_280E8E680);

    v16 = sub_219BF7534();

    v4 = v16;
  }

  else
  {
    v11 = v4 & 0xFFFFFFFFFFFFFF8;

    sub_219BF7924();
    sub_2186D6710(0, &qword_280E8E680);
    if (!swift_dynamicCastMetatype())
    {
      v12 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
        v13 = v11 + 32;
        while (swift_dynamicCastObjCProtocolConditional())
        {
          v13 += 8;
          if (!--v12)
          {
            goto LABEL_9;
          }
        }

        v4 = v11 | 1;
      }
    }
  }

LABEL_9:
  v14 = sub_2190F03C8(a3, v4, v8, v10);

  return v14;
}

void (*sub_2190F03C8(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4))(char *, uint64_t)
{
  v86 = a4;
  v85 = a3;
  v92 = a1;
  v6 = MEMORY[0x277D83D88];
  sub_2190F2F7C(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v80 - v8;
  sub_2190F2F7C(0, &qword_280E90150, MEMORY[0x277D33EC8], v6);
  MEMORY[0x28223BE20](v10 - 8);
  v90 = &v80 - v11;
  v12 = type metadata accessor for SportsNavigationTagFeedGroupKnobs();
  MEMORY[0x28223BE20](v12 - 8);
  v88 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2190F2F7C(0, &qword_280E91A70, sub_2189AD5C8, v6);
  MEMORY[0x28223BE20](v14 - 8);
  v89 = &v80 - v15;
  v16 = sub_219BF2AB4();
  v96 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v93 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2190F2F7C(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], v6);
  MEMORY[0x28223BE20](v18 - 8);
  v87 = &v80 - v19;
  v20 = sub_219BF2034();
  v94 = *(v20 - 8);
  v95 = v20;
  MEMORY[0x28223BE20](v20);
  v91 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for SportsNavigationTagFeedGroupConfigData();
  MEMORY[0x28223BE20](v84);
  v102 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_219BF2124();
  MEMORY[0x28223BE20](v23 - 8);
  v83 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_219BF3C84();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = (&v80 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v27);
  v31 = (&v80 - v30);
  v32 = sub_219BF3E84();
  v100 = *(v32 - 8);
  v101 = v32;
  v33 = MEMORY[0x28223BE20](v32);
  v98 = &v80 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v99 = &v80 - v35;
  v107 = a2;
  if (!(a2 >> 62))
  {
    v36 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v36)
    {
      goto LABEL_3;
    }

LABEL_22:
    v74 = sub_219BEEDD4();
    sub_2190F1E9C(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    (*(*(v74 - 1) + 104))(v76, *MEMORY[0x277D32428], v74);
    swift_willThrow();
    return v74;
  }

  if (!sub_219BF7214())
  {
    goto LABEL_22;
  }

  v36 = sub_219BF7214();
  if (!v36)
  {
    v80 = v16;
    v81 = v9;
    v82 = v4;
    goto LABEL_18;
  }

LABEL_3:
  v109 = MEMORY[0x277D84F90];
  sub_218C34A88(0, v36 & ~(v36 >> 63), 0);
  if (v36 < 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  v80 = v16;
  v81 = v9;
  v82 = v4;
  v37 = v109;
  if ((v107 & 0xC000000000000001) != 0)
  {
    v38 = 0;
    LODWORD(v106) = *MEMORY[0x277D34100];
    v105 = v26 + 32;
    do
    {
      *v31 = MEMORY[0x21CECE0F0](v38, v107);
      (*(v26 + 104))(v31, v106, v25);
      v109 = v37;
      v40 = *(v37 + 16);
      v39 = *(v37 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_218C34A88(v39 > 1, v40 + 1, 1);
        v37 = v109;
      }

      ++v38;
      *(v37 + 16) = v40 + 1;
      (*(v26 + 32))(v37 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v40, v31, v25);
    }

    while (v36 != v38);
  }

  else
  {
    v41 = (v107 + 32);
    LODWORD(v106) = *MEMORY[0x277D34100];
    v104 = *(v26 + 104);
    v105 = v26 + 104;
    v103 = v26 + 32;
    do
    {
      *v29 = *v41;
      (v104)(v29, v106, v25);
      v109 = v37;
      v42 = *(v37 + 16);
      v43 = *(v37 + 24);
      swift_unknownObjectRetain();
      if (v42 >= v43 >> 1)
      {
        sub_218C34A88(v43 > 1, v42 + 1, 1);
        v37 = v109;
      }

      *(v37 + 16) = v42 + 1;
      (*(v26 + 32))(v37 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v42, v29, v25);
      ++v41;
      --v36;
    }

    while (v36);
  }

LABEL_18:
  v44 = MEMORY[0x277D84F90];
  sub_218F0B984(MEMORY[0x277D84F90]);
  sub_218F0BA7C(v44);
  sub_218F0BB90(v44);
  v45 = v99;
  sub_219BF3E74();
  v46 = MEMORY[0x277D84560];
  sub_2190F2F7C(0, &qword_280E8B860, MEMORY[0x277D333A8], MEMORY[0x277D84560]);
  sub_219BF14C4();
  *(swift_allocObject() + 16) = xmmword_219C09BA0;
  sub_219BF20F4();
  sub_219BF14A4();
  sub_218F0B984(v44);
  sub_218F0BA7C(v44);
  sub_218F0BB90(v44);
  v47 = v98;
  sub_219BF3E74();
  v86 = type metadata accessor for SportsNavigationTagFeedGroupEmitter();
  v48 = (v97 + *(v86 + 24));
  v49 = v48[3];
  v105 = v48[4];
  v106 = v49;
  v104 = __swift_project_boxed_opaque_existential_1(v48, v49);
  sub_2190F1DD0();
  sub_219BEDD14();
  v103 = *(v84 + 20);
  sub_2190F2F7C(0, &unk_280E8B790, MEMORY[0x277D34258], v46);
  v50 = v100;
  v51 = *(v100 + 72);
  v52 = (*(v100 + 80) + 32) & ~*(v100 + 80);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_219C09EC0;
  v54 = v53 + v52;
  v55 = *(v50 + 16);
  v56 = v101;
  v55(v54, v45, v101);
  v55(v54 + v51, v47, v56);
  v57 = sub_219BEC004();
  (*(*(v57 - 8) + 56))(v87, 1, 1, v57);
  v85 = sub_219A95188(v44);
  sub_219A95188(v44);
  sub_219A951A0(v44);
  sub_219A951B8(v44);
  sub_219A952CC(v44);
  sub_219A952E4(v44);
  sub_219A953F8(v44);

  v16 = v91;
  sub_219BF2024();
  v58 = v88;
  sub_2190F3538(v97 + *(v86 + 20), v88, type metadata accessor for SportsNavigationTagFeedGroupKnobs);
  sub_2189AD5C8();
  v60 = v59;
  v61 = *(v59 - 8);
  v62 = v89;
  (*(v61 + 32))(v89, v58, v59);
  (*(v61 + 56))(v62, 0, 1, v60);
  sub_219BEF0B4();
  v63 = *(v109 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v64 = sub_219BF35D4();
  (*(*(v64 - 8) + 56))(v90, 1, 1, v64);
  LOBYTE(v108) = 17;
  sub_218C6F8FC();
  swift_allocObject();

  sub_219BF38D4();
  sub_219BEF0B4();
  sub_218CB8CBC();

  sub_219BEF0B4();
  v65 = *(v108 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  sub_219BF3914();
  swift_allocObject();
  sub_219BF3904();
  v66 = sub_219BF2774();
  (*(*(v66 - 8) + 56))(v81, 1, 1, v66);
  v67 = qword_280E8D7F8;
  *MEMORY[0x277D30BC0];
  if (v67 != -1)
  {
LABEL_26:
    swift_once();
  }

  qword_280F61708;
  v68 = v93;
  sub_219BF2A84();
  v69 = v102;
  v70 = v103;
  v71 = v82;
  v72 = sub_219BF2194();
  if (v71)
  {
    (*(v96 + 8))(v68, v80);
    (*(v94 + 8))(v16, v95);
    v73 = v101;
    v74 = *(v100 + 8);
    v74(v98, v101);
    v74(v99, v73);
  }

  else
  {
    v74 = v72;
    (*(v96 + 8))(v68, v80);
    (*(v94 + 8))(v16, v95);
    v77 = v101;
    v78 = *(v100 + 8);
    v78(v98, v101);
    v78(v99, v77);
  }

  v75 = sub_219BF1934();
  (*(*(v75 - 8) + 8))(&v69[v70], v75);
  return v74;
}

uint64_t sub_2190F138C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a3;
  sub_218A59C84();
  v40 = v5;
  MEMORY[0x28223BE20](v5);
  v38 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2190F2F7C(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v37 = v33 - v8;
  v9 = type metadata accessor for SportsNavigationTagFeedGroupKnobs();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BEF554();
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v33[1] = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v33[2] = v33 - v15;
  v16 = sub_219BF1904();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v19;
  v36 = type metadata accessor for TagFeedGroup();
  MEMORY[0x28223BE20](v36);
  v34 = v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v19, a1, v16);
  sub_2190F1DD0();
  v21 = sub_219BEDCB4();
  v33[3] = v22;
  v33[4] = v21;
  sub_219BEDCC4();
  sub_219BEDCC4();
  v23 = *(type metadata accessor for SportsNavigationTagFeedGroupEmitter() + 20);
  sub_2190F3538(a2 + v23, v11, type metadata accessor for SportsNavigationTagFeedGroupKnobs);
  sub_2189AD5C8();
  v25 = v24;
  sub_219BEE9B4();
  v26 = *(*(v25 - 8) + 8);
  v26(v11, v25);
  sub_2190F3538(a2 + v23, v11, type metadata accessor for SportsNavigationTagFeedGroupKnobs);
  sub_219BEE984();
  v28 = v27;
  v26(v11, v25);
  v33[0] = v28;
  sub_2190F3538(a2 + v23, v11, type metadata accessor for SportsNavigationTagFeedGroupKnobs);
  sub_219BEE9D4();
  v26(v11, v25);
  v29 = sub_219BEE5D4();
  (*(*(v29 - 8) + 56))(v37, 1, 1, v29);
  type metadata accessor for SportsNavigationTagFeedGroup();
  v30 = v34;
  sub_219BED854();
  *v30 = v39;
  swift_storeEnumTagMultiPayload();
  sub_2190F3538(v30, v38, type metadata accessor for TagFeedGroup);
  swift_storeEnumTagMultiPayload();
  sub_2190F2F7C(0, &qword_280EE6C80, sub_218A59C84, MEMORY[0x277D6CF30]);
  swift_allocObject();
  swift_unknownObjectRetain();
  v31 = sub_219BE3014();
  sub_2190F35A0(v30, type metadata accessor for TagFeedGroup);
  return v31;
}

uint64_t sub_2190F18E0()
{
  type metadata accessor for SportsNavigationTagFeedGroupEmitter();
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  type metadata accessor for TagFeedGroup();
  sub_2190F1E9C(&qword_280EDE9C0, type metadata accessor for TagFeedGroup);
  return sub_219BEF194();
}

uint64_t sub_2190F19D8@<X0>(uint64_t *a1@<X8>)
{
  sub_2190F1DD0();
  v4 = v3;
  v5 = swift_allocBox();
  result = (*(*(v4 - 8) + 16))(v6, v1, v4);
  *a1 = v5 | 0x2000000000000002;
  return result;
}

uint64_t sub_2190F1A58@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for SportsNavigationTagFeedGroupKnobs();
  a2[4] = sub_2190F1E9C(qword_280EA1B38, type metadata accessor for SportsNavigationTagFeedGroupKnobs);
  a2[5] = sub_2190F1E9C(&unk_27CC16140, type metadata accessor for SportsNavigationTagFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_2190F3538(v2 + v4, boxed_opaque_existential_1, type metadata accessor for SportsNavigationTagFeedGroupKnobs);
}

uint64_t sub_2190F1B20()
{
  sub_2190F1DD0();

  return sub_219BEDCA4();
}

uint64_t sub_2190F1B4C@<X0>(uint64_t *a1@<X8>)
{
  sub_2190F2F7C(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_2190F1DD0();

  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_2190F35A0(inited + 32, sub_2188317B0);
  sub_2190F2F48(0);
  a1[3] = v5;
  a1[4] = sub_2190F1E9C(&qword_27CC16108, sub_2190F2F48);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_2190F1CD0()
{
  sub_2190F1E9C(&unk_27CC16110, type metadata accessor for SportsNavigationTagFeedGroupEmitter);

  return sub_219BE2324();
}

uint64_t type metadata accessor for SportsNavigationTagFeedGroupEmitter()
{
  result = qword_280E9C440;
  if (!qword_280E9C440)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2190F1DD0()
{
  if (!qword_280E92098)
  {
    type metadata accessor for SportsNavigationTagFeedGroupConfigData();
    sub_2190F1E9C(&qword_280E97C40, type metadata accessor for SportsNavigationTagFeedGroupConfigData);
    sub_2190F1E9C(&qword_280E97C48, type metadata accessor for SportsNavigationTagFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E92098);
    }
  }
}

uint64_t sub_2190F1E9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2190F1EE4(void *a1, void *a2)
{
  v4 = [a1 sportsPrimaryName];
  if (!v4)
  {
    v4 = [a1 name];
  }

  v5 = v4;
  v6 = sub_219BF5414();
  v8 = v7;

  v9 = [a2 sportsPrimaryName];
  if (!v9)
  {
    v9 = [a2 name];
  }

  v10 = v9;
  v11 = sub_219BF5414();
  v13 = v12;

  if (v6 == v11 && v8 == v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = sub_219BF78F4();
  }

  return v15 & 1;
}

uint64_t sub_2190F1FE4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_219BF7884();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_2186D6710(0, &qword_280E8E420);
        v6 = sub_219BF5A34();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_2190F22C4(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2190F20F8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2190F20F8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v27 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
    v6 = &selRef_boldSystemFontOfSize_;
LABEL_6:
    v25 = v4;
    v26 = a3;
    v7 = *(v27 + 8 * a3);
    v24 = v5;
    while (1)
    {
      v8 = *v4;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v9 = [v7 v6[50]];
      if (!v9)
      {
        v9 = [v7 name];
      }

      v10 = v9;
      v11 = sub_219BF5414();
      v13 = v12;

      v14 = [v8 v6[50]];
      if (!v14)
      {
        v14 = [v8 name];
      }

      v15 = v14;
      v16 = sub_219BF5414();
      v18 = v17;

      if (v11 == v16 && v13 == v18)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        v6 = &selRef_boldSystemFontOfSize_;
LABEL_5:
        a3 = v26 + 1;
        v4 = v25 + 8;
        v5 = v24 - 1;
        if (v26 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v20 = sub_219BF78F4();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v6 = &selRef_boldSystemFontOfSize_;
      if ((v20 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v27)
      {
        break;
      }

      v21 = *v4;
      v7 = *(v4 + 8);
      *v4 = v7;
      *(v4 + 8) = v21;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2190F22C4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v106 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_104:
    v8 = *v106;
    if (!*v106)
    {
      goto LABEL_143;
    }

    v4 = v7;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v4;
LABEL_107:
      v4 = *(result + 16);
      if (v4 >= 2)
      {
        while (*a3)
        {
          v99 = *(result + 16 * v4);
          v100 = result;
          v101 = *(result + 16 * (v4 - 1) + 40);
          sub_2190F2ABC((*a3 + 8 * v99), (*a3 + 8 * *(result + 16 * (v4 - 1) + 32)), (*a3 + 8 * v101), v8);
          if (v115)
          {
          }

          if (v101 < v99)
          {
            goto LABEL_130;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v100 = sub_218C81048(v100);
          }

          if (v4 - 2 >= *(v100 + 2))
          {
            goto LABEL_131;
          }

          v102 = &v100[16 * v4];
          *v102 = v99;
          *(v102 + 1) = v101;
          sub_218C80FBC(v4 - 1);
          result = v100;
          v4 = *(v100 + 2);
          if (v4 <= 1)
          {
          }
        }

        goto LABEL_141;
      }
    }

LABEL_137:
    result = sub_218C81048(v4);
    goto LABEL_107;
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v8 = &selRef_boldSystemFontOfSize_;
  while (1)
  {
    v9 = v6 + 1;
    v107 = v6;
    if (v6 + 1 < v5)
    {
      v104 = v7;
      v10 = *(*a3 + 8 * v9);
      v110 = 8 * v6;
      v11 = (*a3 + 8 * v6);
      v13 = *v11;
      v12 = v11 + 2;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v116 = sub_2190F1EE4(v10, v13);
      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      v4 = v6 + 2;
      v112 = v5;
      while (1)
      {
        v8 = &selRef_boldSystemFontOfSize_;
        if (v5 == v4)
        {
          break;
        }

        v15 = *(v12 - 1);
        v16 = *v12;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v17 = [v16 sportsPrimaryName];
        if (!v17)
        {
          v17 = [v16 name];
        }

        v18 = v17;
        v19 = sub_219BF5414();
        v21 = v20;

        v22 = [v15 sportsPrimaryName];
        if (!v22)
        {
          v22 = [v15 name];
        }

        v23 = sub_219BF5414();
        v25 = v24;

        if (v19 == v23 && v21 == v25)
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_219BF78F4();
        }

        v5 = v112;

        swift_unknownObjectRelease();
        result = swift_unknownObjectRelease();
        ++v4;
        ++v12;
        if ((v116 ^ v14))
        {
          v5 = v4 - 1;
          v8 = &selRef_boldSystemFontOfSize_;
          break;
        }
      }

      v26 = v110;
      v7 = v104;
      v6 = v107;
      if (v116)
      {
        if (v5 < v107)
        {
          goto LABEL_134;
        }

        if (v107 < v5)
        {
          v27 = 8 * v5 - 8;
          v28 = v5;
          v29 = v107;
          do
          {
            if (v29 != --v28)
            {
              v30 = *a3;
              if (!*a3)
              {
                goto LABEL_140;
              }

              v31 = *(v30 + v26);
              *(v30 + v26) = *(v30 + v27);
              *(v30 + v27) = v31;
            }

            ++v29;
            v27 -= 8;
            v26 += 8;
          }

          while (v29 < v28);
        }
      }

      v9 = v5;
    }

    v32 = a3[1];
    if (v9 < v32)
    {
      if (__OFSUB__(v9, v6))
      {
        goto LABEL_133;
      }

      if (v9 - v6 < a4)
      {
        break;
      }
    }

LABEL_52:
    if (v9 < v6)
    {
      goto LABEL_132;
    }

    v52 = v7;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v7 = v52;
    }

    else
    {
      result = sub_2191F6B60(0, *(v52 + 16) + 1, 1, v52);
      v7 = result;
    }

    v4 = *(v7 + 16);
    v53 = *(v7 + 24);
    v54 = v4 + 1;
    if (v4 >= v53 >> 1)
    {
      result = sub_2191F6B60((v53 > 1), v4 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v54;
    v55 = v7 + 16 * v4;
    *(v55 + 32) = v107;
    *(v55 + 40) = v9;
    v56 = *v106;
    if (!*v106)
    {
      goto LABEL_142;
    }

    v6 = v9;
    if (v4)
    {
      while (1)
      {
        v57 = v54 - 1;
        if (v54 >= 4)
        {
          break;
        }

        if (v54 == 3)
        {
          v58 = *(v7 + 32);
          v59 = *(v7 + 40);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_72:
          if (v61)
          {
            goto LABEL_121;
          }

          v74 = (v7 + 16 * v54);
          v76 = *v74;
          v75 = v74[1];
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_124;
          }

          v80 = (v7 + 32 + 16 * v57);
          v82 = *v80;
          v81 = v80[1];
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_128;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v54 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v84 = (v7 + 16 * v54);
        v86 = *v84;
        v85 = v84[1];
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_86:
        if (v79)
        {
          goto LABEL_123;
        }

        v87 = v7 + 16 * v57;
        v89 = *(v87 + 32);
        v88 = *(v87 + 40);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_126;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_93:
        v4 = v57 - 1;
        if (v57 - 1 >= v54)
        {
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        v95 = v7;
        v96 = *(v7 + 32 + 16 * v4);
        v97 = *(v7 + 32 + 16 * v57 + 8);
        sub_2190F2ABC((*a3 + 8 * v96), (*a3 + 8 * *(v7 + 32 + 16 * v57)), (*a3 + 8 * v97), v56);
        if (v115)
        {
        }

        if (v97 < v96)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v95 = sub_218C81048(v95);
        }

        if (v4 >= *(v95 + 2))
        {
          goto LABEL_118;
        }

        v98 = &v95[16 * v4];
        *(v98 + 4) = v96;
        *(v98 + 5) = v97;
        result = sub_218C80FBC(v57);
        v7 = v95;
        v54 = *(v95 + 2);
        if (v54 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = v7 + 32 + 16 * v54;
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_119;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_120;
      }

      v69 = (v7 + 16 * v54);
      v71 = *v69;
      v70 = v69[1];
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_122;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_125;
      }

      if (v73 >= v65)
      {
        v91 = (v7 + 32 + 16 * v57);
        v93 = *v91;
        v92 = v91[1];
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_129;
        }

        if (v60 < v94)
        {
          v57 = v54 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_104;
    }
  }

  v33 = v6 + a4;
  if (__OFADD__(v6, a4))
  {
    goto LABEL_135;
  }

  if (v33 >= v32)
  {
    v33 = a3[1];
  }

  if (v33 < v6)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (v9 == v33)
  {
    goto LABEL_52;
  }

  v105 = v7;
  v117 = *a3;
  v4 = *a3 + 8 * v9 - 8;
  v34 = v6 - v9;
  v108 = v33;
LABEL_37:
  v111 = v4;
  v113 = v9;
  v35 = *(v117 + 8 * v9);
  v109 = v34;
  v36 = v34;
  while (1)
  {
    v37 = *v4;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v38 = [v35 v8[50]];
    if (!v38)
    {
      v38 = [v35 name];
    }

    v39 = v38;
    v40 = sub_219BF5414();
    v42 = v41;

    v43 = [v37 v8[50]];
    if (!v43)
    {
      v43 = [v37 name];
    }

    v44 = v43;
    v45 = sub_219BF5414();
    v47 = v46;

    if (v40 == v45 && v42 == v47)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v8 = &selRef_boldSystemFontOfSize_;
LABEL_36:
      v9 = v113 + 1;
      v4 = v111 + 8;
      v34 = v109 - 1;
      if (v113 + 1 == v108)
      {
        v9 = v108;
        v7 = v105;
        v6 = v107;
        goto LABEL_52;
      }

      goto LABEL_37;
    }

    v49 = sub_219BF78F4();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v8 = &selRef_boldSystemFontOfSize_;
    if ((v49 & 1) == 0)
    {
      goto LABEL_36;
    }

    if (!v117)
    {
      break;
    }

    v50 = *v4;
    v35 = *(v4 + 8);
    *v4 = v35;
    *(v4 + 8) = v50;
    v4 -= 8;
    if (__CFADD__(v36++, 1))
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_2190F2ABC(void **__src, void **a2, void **a3, void **a4)
{
  v4 = a3;
  v5 = a2;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != a2 || &a2[v12] <= a4)
    {
      v32 = a4;
      memmove(a4, a2, 8 * v12);
      v5 = a2;
      a4 = v32;
    }

    v62 = &a4[v12];
    v13 = a4;
    if (v10 < 8 || v5 <= v6)
    {
      v31 = v5;
    }

    else
    {
      v34 = &selRef_boldSystemFontOfSize_;
      v56 = a4;
      v59 = v6;
      do
      {
        __dsta = v5;
        v35 = v5 - 1;
        v36 = v4 - 1;
        v37 = v62;
        v55 = v35;
        while (1)
        {
          v57 = v36;
          v39 = *(v37 - 1);
          v37 -= 8;
          v38 = v39;
          v40 = *v35;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v41 = [v39 v34[50]];
          if (!v41)
          {
            v41 = [v38 name];
          }

          v42 = v41;
          v43 = sub_219BF5414();
          v45 = v44;

          v46 = v34;
          v47 = [v40 v34[50]];
          if (!v47)
          {
            v47 = [v40 name];
          }

          v48 = v47;
          v49 = sub_219BF5414();
          v51 = v50;

          v52 = v43 == v49 && v45 == v51;
          v53 = v52 ? 0 : sub_219BF78F4();

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v34 = v46;
          if (v53)
          {
            break;
          }

          v35 = v55;
          if (v57 + 1 != v62)
          {
            *v57 = *v37;
          }

          v36 = v57 - 1;
          v62 = v37;
          if (v37 <= v56)
          {
            v62 = v37;
            v13 = v56;
            v31 = __dsta;
            goto LABEL_57;
          }
        }

        v4 = v57;
        v31 = v55;
        if (v57 + 1 != __dsta)
        {
          *v57 = *v55;
        }

        v13 = v56;
        if (v62 <= v56)
        {
          break;
        }

        v5 = v55;
      }

      while (v55 > v59);
    }
  }

  else
  {
    v13 = a4;
    if (a4 != __src || &__src[v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
      v5 = a2;
    }

    v62 = &v13[v9];
    if (v7 >= 8 && v5 < v4)
    {
      v15 = &selRef_boldSystemFontOfSize_;
      while (1)
      {
        v58 = v6;
        __dst = v5;
        v16 = *v5;
        v17 = *v13;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v18 = [v16 v15[50]];
        if (!v18)
        {
          v18 = [v16 name];
        }

        v19 = v18;
        v20 = sub_219BF5414();
        v22 = v21;

        v23 = [v17 v15[50]];
        if (!v23)
        {
          v23 = [v17 name];
        }

        v24 = sub_219BF5414();
        v26 = v25;

        v27 = v20 == v24 && v22 == v26;
        if (v27)
        {
          break;
        }

        v28 = sub_219BF78F4();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        if ((v28 & 1) == 0)
        {
          goto LABEL_24;
        }

        v29 = v58;
        v30 = __dst;
        v5 = __dst + 1;
        if (v58 != __dst)
        {
          goto LABEL_25;
        }

LABEL_26:
        v6 = v29 + 1;
        v15 = &selRef_boldSystemFontOfSize_;
        if (v13 >= v62 || v5 >= v4)
        {
          goto LABEL_28;
        }
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

LABEL_24:
      v30 = v13;
      v29 = v58;
      v27 = v58 == v13++;
      v5 = __dst;
      if (v27)
      {
        goto LABEL_26;
      }

LABEL_25:
      *v29 = *v30;
      goto LABEL_26;
    }

LABEL_28:
    v31 = v6;
  }

LABEL_57:
  if (v31 != v13 || v31 >= (v13 + ((v62 - v13 + (v62 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v31, v13, 8 * ((v62 - v13) / 8));
  }

  return 1;
}