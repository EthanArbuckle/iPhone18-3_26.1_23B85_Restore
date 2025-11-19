uint64_t sub_218EE7688(uint64_t a1, uint64_t a2, uint64_t a3)
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

  return MEMORY[0x2822009F8](sub_218EE7750, 0, 0);
}

uint64_t sub_218EE7750()
{
  v1 = v0[8];
  v2 = v0[4];
  (*(v0[6] + 16))(v0[7], v2, v0[5]);
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  sub_218948094(sub_218EE7864, v3);

  sub_21878E0F4();
  sub_21878E148();
  sub_219BE6514();

  v4 = v0[1];

  return v4();
}

void sub_218EE79A8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF78A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_218EE79FC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_218EE7A68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218EE7B24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t static EmptyStateStyler.dynamicSearchHomeTheme.getter()
{
  v0 = objc_opt_self();
  v1 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.6 green:0.6 blue:0.6 alpha:1.0];
  v2 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.556862745 green:0.556862745 blue:0.576470588 alpha:1.0];
  v3 = [v0 ts:v1 dynamicColor:v2 withDarkStyleVariant:?];

  LOBYTE(v2) = sub_219BED0C4();
  sub_2186F8B0C();
  v4 = sub_219BF6D44();
  if (v2)
  {
    v5 = v4;
    v6 = [v0 labelColor];
    v3;

    return MEMORY[0x2821D3768](v5, 0, v6);
  }

  else
  {

    return sub_219BE6C34();
  }
}

uint64_t sub_218EE7CEC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BED8D4();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EE84F4(0, &qword_27CC13360, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for PuzzleFullArchiveTagFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EE843C();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_218EE8558(&unk_280E92630, MEMORY[0x277D31C50]);
    sub_219BF7734();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_218EE8490(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218EE7F98(uint64_t a1)
{
  v2 = sub_218EE843C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218EE7FD4(uint64_t a1)
{
  v2 = sub_218EE843C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218EE8050(void *a1)
{
  sub_218EE84F4(0, &qword_27CC13370, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EE843C();
  sub_219BF7B44();
  sub_219BED8D4();
  sub_218EE8558(&qword_280E92640, MEMORY[0x277D31C50]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_218EE82B0(uint64_t a1)
{
  result = sub_218EE8558(&qword_27CC13350, type metadata accessor for PuzzleFullArchiveTagFeedGroup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_218EE8308(void *a1)
{
  a1[1] = sub_218EE8558(&qword_27CC13358, type metadata accessor for PuzzleFullArchiveTagFeedGroup);
  a1[2] = sub_218EE8558(&unk_27CC1C6F0, type metadata accessor for PuzzleFullArchiveTagFeedGroup);
  result = sub_218EE8558(&unk_27CC1C800, type metadata accessor for PuzzleFullArchiveTagFeedGroup);
  a1[3] = result;
  return result;
}

uint64_t sub_218EE83B4(uint64_t a1)
{
  v2 = sub_218EE8558(&qword_27CC13358, type metadata accessor for PuzzleFullArchiveTagFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

unint64_t sub_218EE843C()
{
  result = qword_27CC13368;
  if (!qword_27CC13368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13368);
  }

  return result;
}

uint64_t sub_218EE8490(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PuzzleFullArchiveTagFeedGroup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218EE84F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218EE843C();
    v7 = a3(a1, &type metadata for PuzzleFullArchiveTagFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218EE8558(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_218EE85B4()
{
  result = qword_27CC13378;
  if (!qword_27CC13378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13378);
  }

  return result;
}

unint64_t sub_218EE860C()
{
  result = qword_27CC13380;
  if (!qword_27CC13380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13380);
  }

  return result;
}

unint64_t sub_218EE8664()
{
  result = qword_27CC13388;
  if (!qword_27CC13388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13388);
  }

  return result;
}

uint64_t sub_218EE86E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  sub_218EE8BD8(0, &qword_280E91AA0, sub_21872F4C4);
  MEMORY[0x28223BE20](v4 - 8);
  v38 = &v29 - v5;
  v36 = type metadata accessor for ArticleListAudioHistoryFeedGroupKnobs();
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EE8BD8(0, &qword_280E9A040, type metadata accessor for ArticleListAudioHistoryFeedGroupKnobs);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v43 = &v29 - v12;
  sub_218EE8C2C();
  v14 = v13;
  v37 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EE8C88();
  sub_219BF7B34();
  if (v2)
  {
    v17 = a1;
  }

  else
  {
    v31 = v11;
    v18 = v34;
    v33 = a1;
    v39 = 0x4C656C6369747261;
    v40 = 0xEB00000000747369;
    v41 = 0;
    v42 = 1;
    sub_218700550(&qword_27CC133A0, type metadata accessor for ArticleListAudioHistoryFeedGroupKnobs);
    v19 = v36;
    v32 = v14;
    sub_219BF76E4();
    v30 = v16;
    v20 = v7;
    v21 = v38;
    v22 = v31;
    v23 = v43;
    sub_218EE8CDC(v43, v31);
    v24 = *(v18 + 48);
    v25 = v24(v22, 1, v19);
    v26 = v33;
    if (v25 == 1)
    {
      sub_21872F4C4();
      (*(*(v27 - 8) + 56))(v21, 1, 1, v27);
      sub_2191B93B0(v21, v20);
      sub_218EE8D5C(v23);
      if (v24(v22, 1, v19) != 1)
      {
        sub_218EE8D5C(v22);
      }
    }

    else
    {
      sub_218EE8D5C(v23);
      sub_218D4D5AC(v22, v20);
    }

    sub_218D4D5AC(v20, v35);
    (*(v37 + 8))(v30, v32);
    v17 = v26;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_218EE8B48(uint64_t a1)
{
  v2 = sub_218EE8C88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218EE8B84(uint64_t a1)
{
  v2 = sub_218EE8C88();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_218EE8BD8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_218EE8C2C()
{
  if (!qword_27CC13390)
  {
    sub_218EE8C88();
    v0 = sub_219BF7774();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC13390);
    }
  }
}

unint64_t sub_218EE8C88()
{
  result = qword_27CC13398;
  if (!qword_27CC13398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13398);
  }

  return result;
}

uint64_t sub_218EE8CDC(uint64_t a1, uint64_t a2)
{
  sub_218EE8BD8(0, &qword_280E9A040, type metadata accessor for ArticleListAudioHistoryFeedGroupKnobs);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218EE8D5C(uint64_t a1)
{
  sub_218EE8BD8(0, &qword_280E9A040, type metadata accessor for ArticleListAudioHistoryFeedGroupKnobs);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_218EE8DE8()
{
  result = qword_27CC133A8;
  if (!qword_27CC133A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC133A8);
  }

  return result;
}

unint64_t sub_218EE8E40()
{
  result = qword_27CC133B0;
  if (!qword_27CC133B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC133B0);
  }

  return result;
}

unint64_t sub_218EE8E98()
{
  result = qword_27CC133B8;
  if (!qword_27CC133B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC133B8);
  }

  return result;
}

BOOL sub_218EE8EEC()
{
  v1 = [*(v0 + 88) cachedSubscription];
  if (objc_getAssociatedObject(v1, v1 + 1))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (!*(&v10 + 1))
  {
    sub_218806FD0(&v11);
    goto LABEL_9;
  }

  sub_2186C6148(0, &qword_280E8DA20);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v2 = 0;
    v3 = 0;
    goto LABEL_10;
  }

  v2 = v8;
  v3 = [v8 integerValue];
  if (v3 == -1)
  {
    goto LABEL_17;
  }

LABEL_10:
  if (objc_getAssociatedObject(v1, ~v3))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (!*(&v10 + 1))
  {
    sub_218806FD0(&v11);
    goto LABEL_17;
  }

  sub_2186C6148(0, &qword_280E8DA20);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:

    v6 = -43;
    return ((v6 ^ v3) & 1) == 0;
  }

  v4 = v8;
  v5 = [v4 integerValue];

  v6 = v5 - 43;
  return ((v6 ^ v3) & 1) == 0;
}

void sub_218EE90C0(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v7 = sub_218EE936C();
  if (v8)
  {
    v17 = MEMORY[0x28223BE20](v7);
    v10 = v9;
    sub_218EEA0A4();
    sub_219BE3204();
    sub_2186C6148(0, &qword_280E8E3B0);
    v11 = sub_219BF66A4();
    v12 = swift_allocObject();
    v12[2] = v4;
    v12[3] = a2;
    v12[4] = a3;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_218EEA204;
    *(v13 + 24) = v12;

    sub_219BE2F74();

    v14 = swift_allocObject();
    v14[2] = v17;
    v14[3] = v10;
    v14[4] = a2;
    v14[5] = a3;

    v15 = sub_219BE2E54();
    sub_219BE2FD4();
  }

  else
  {
    sub_219BF61F4();
    sub_2186C6148(0, &qword_280E8D790);
    v16 = sub_219BF6F44();
    sub_219BE5314();

    v18 = [objc_allocWithZone(MEMORY[0x277CD3EC8]) initWithCode:6 userActivity:0];
    a2();
  }
}

id sub_218EE936C()
{
  v1 = v0;
  v2 = [v0 mediaItems];
  if (v2)
  {
    v3 = v2;
    sub_2186C6148(0, &qword_280E8E848);
    v4 = sub_219BF5924();

    if (v4 >> 62)
    {
      result = sub_219BF7214();
      if (result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_4:
        if ((v4 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x21CECE0F0](0, v4);
        }

        else
        {
          if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v6 = *(v4 + 32);
        }

        v7 = v6;

        v8 = [v7 identifier];
        if (!v8)
        {

          goto LABEL_14;
        }

        v9 = v8;
        v10 = sub_219BF5414();
        v12 = v11;

        v19 = v10;
        v20 = v12;
        v17 = 65;
        v18 = 0xE100000000000000;
        sub_218B9E340();
        sub_218B9E394();
        LOBYTE(v9) = sub_219BF5314();

        if (v9)
        {
          return v10;
        }
      }
    }
  }

LABEL_14:
  result = [v1 mediaContainer];
  if (result)
  {
    v13 = result;
    v14 = [result identifier];
    if (v14)
    {
      v15 = v14;
      v16 = sub_219BF5414();

      sub_218B9E340();
      sub_218B9E394();
      LOBYTE(v15) = sub_219BF5314();

      if (v15)
      {
        return v16;
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t sub_218EE95B8(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
  sub_219BF2834();
  sub_218AFD1EC();
  v1 = sub_219BE2E54();
  v2 = sub_219BE2E34();

  return v2;
}

uint64_t sub_218EE9670(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v31 = a4;
  v32 = a3;
  v28 = a2;
  sub_218EEA144(0, &unk_280E90420, sub_218932F68, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v27 = &v26 - v6;
  v26 = sub_219BF1324();
  v7 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BF1C74();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BF2A04();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218932F68(0);
  v29 = *(v18 - 8);
  v30 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1;
  (*(v15 + 104))(v17, *MEMORY[0x277D33A78], v14);
  (*(v11 + 104))(v13, *MEMORY[0x277D33570], v10);
  (*(v7 + 104))(v9, *MEMORY[0x277D33280], v26);
  v33 = 0u;
  v34 = 0u;
  sub_218731D50();
  swift_unknownObjectRetain();
  sub_219BF2564();
  if (sub_218EE8EEC())
  {
    sub_219BEACD4();
  }

  else
  {
    sub_219BEAC54();
  }

  swift_getObjectType();
  v22 = v29;
  v21 = v30;
  v23 = v27;
  (*(v29 + 16))(v27, v20, v30);
  (*(v22 + 56))(v23, 0, 1, v21);
  sub_219BE7094();
  sub_218C163C4(v23);
  v24 = [objc_allocWithZone(MEMORY[0x277CD3EC8]) initWithCode:4 userActivity:0];
  v32();

  return (*(v22 + 8))(v20, v21);
}

void sub_218EE9BE0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_219BF61F4();
  sub_2186F20D4();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_219C09BA0;
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_2186FC3BC();
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;
  sub_2186C6148(0, &qword_280E8D790);

  v8 = sub_219BF6F44();
  sub_219BE5314();

  v9 = [objc_allocWithZone(MEMORY[0x277CD3EC8]) initWithCode:6 userActivity:0];
  a4();
}

uint64_t sub_218EE9D10()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_218EE9D84(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  _Block_copy(a3);
  v6 = sub_218EE936C();
  if (v7)
  {
    v16 = MEMORY[0x28223BE20](v6);
    v9 = v8;
    sub_218EEA0A4();
    sub_219BE3204();
    sub_2186C6148(0, &qword_280E8E3B0);
    v10 = sub_219BF66A4();
    v11 = swift_allocObject();
    v11[2] = a2;
    v11[3] = sub_218967168;
    v11[4] = v5;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_218EEA110;
    *(v12 + 24) = v11;

    sub_219BE2F74();

    v13 = swift_allocObject();
    v13[2] = v16;
    v13[3] = v9;
    v13[4] = sub_218967168;
    v13[5] = v5;

    v14 = sub_219BE2E54();
    sub_219BE2FD4();
  }

  else
  {
    sub_219BF61F4();
    sub_2186C6148(0, &qword_280E8D790);
    v15 = sub_219BF6F44();
    sub_219BE5314();

    v17 = [objc_allocWithZone(MEMORY[0x277CD3EC8]) initWithCode:6 userActivity:0];
    (a3)[2](a3, v17);
  }
}

void sub_218EEA0A4()
{
  if (!qword_27CC133C0)
  {
    sub_218731D50();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC133C0);
    }
  }
}

void sub_218EEA144(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t objectdestroy_10Tm()
{

  return swift_deallocObject();
}

uint64_t type metadata accessor for WebEmbedRouteModel()
{
  result = qword_280ED20A8;
  if (!qword_280ED20A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218EEA394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[31] = a4;
  v5[32] = v4;
  v5[29] = a2;
  v5[30] = a3;
  v5[28] = a1;
  v5[33] = type metadata accessor for HistoryFeedLayoutModel();
  v5[34] = swift_task_alloc();
  v6 = sub_219BEF974();
  v5[35] = v6;
  v5[36] = *(v6 - 8);
  v5[37] = swift_task_alloc();
  sub_218C3E97C();
  v5[38] = v7;
  v5[39] = *(v7 - 8);
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  v8 = sub_219BE9FA4();
  v5[42] = v8;
  v5[43] = *(v8 - 8);
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();
  sub_2189BD6B0(0, &qword_280EE9048, MEMORY[0x277D6D1A0]);
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v5[49] = swift_task_alloc();
  v9 = sub_219BDCB14();
  v5[50] = v9;
  v5[51] = *(v9 - 8);
  v5[52] = swift_task_alloc();
  v10 = sub_219BEE074();
  v5[53] = v10;
  v5[54] = *(v10 - 8);
  v5[55] = swift_task_alloc();
  v5[56] = swift_task_alloc();
  v5[57] = swift_task_alloc();
  sub_2189BD6B0(0, &qword_280E91990, MEMORY[0x277D32218]);
  v5[58] = swift_task_alloc();
  v11 = sub_219BED8D4();
  v5[59] = v11;
  v5[60] = *(v11 - 8);
  v5[61] = swift_task_alloc();
  sub_2189BD6B0(0, &qword_280E91548, MEMORY[0x277D325F8]);
  v5[62] = swift_task_alloc();
  sub_2189BD6B0(0, &qword_280E924F8, MEMORY[0x277D31DD0]);
  v5[63] = swift_task_alloc();
  v12 = sub_219BF1904();
  v5[64] = v12;
  v5[65] = *(v12 - 8);
  v5[66] = swift_task_alloc();
  v13 = type metadata accessor for ArticleListHistoryFeedGroup();
  v5[67] = v13;
  v5[68] = *(v13 - 8);
  v5[69] = swift_task_alloc();
  type metadata accessor for HistoryFeedSectionDescriptor();
  v5[70] = swift_task_alloc();
  sub_218EEC918();
  v5[71] = v14;
  v5[72] = swift_task_alloc();
  v5[73] = swift_task_alloc();
  sub_218C3EA10();
  v5[74] = v15;
  v5[75] = *(v15 - 8);
  v5[76] = swift_task_alloc();
  sub_218EEC9A0();
  v5[77] = swift_task_alloc();
  v16 = sub_219BE8944();
  v5[78] = v16;
  v5[79] = *(v16 - 8);
  v5[80] = swift_task_alloc();
  v17 = sub_219BE8164();
  v5[81] = v17;
  v5[82] = *(v17 - 8);
  v5[83] = swift_task_alloc();
  sub_219BEF6B4();
  v5[84] = swift_task_alloc();
  v18 = sub_219BEF594();
  v5[85] = v18;
  v5[86] = *(v18 - 8);
  v5[87] = swift_task_alloc();
  sub_219BEF5B4();
  v5[88] = swift_task_alloc();
  sub_219BEF604();
  v5[89] = swift_task_alloc();
  sub_219BEF644();
  v5[90] = swift_task_alloc();
  sub_219BEF664();
  v5[91] = swift_task_alloc();
  v19 = sub_219BEF694();
  v5[92] = v19;
  v5[93] = *(v19 - 8);
  v5[94] = swift_task_alloc();
  sub_2189BD6B0(0, &qword_280E91358, MEMORY[0x277D326A8]);
  v5[95] = swift_task_alloc();
  sub_2189BD6B0(0, &qword_280E91368, MEMORY[0x277D32698]);
  v5[96] = swift_task_alloc();
  v20 = sub_219BEF6C4();
  v5[97] = v20;
  v5[98] = *(v20 - 8);
  v5[99] = swift_task_alloc();
  sub_219BDCAF4();
  v5[100] = swift_task_alloc();
  v21 = sub_219BDCAE4();
  v5[101] = v21;
  v5[102] = *(v21 - 8);
  v5[103] = swift_task_alloc();
  v22 = sub_219BDCAB4();
  v5[104] = v22;
  v5[105] = *(v22 - 8);
  v5[106] = swift_task_alloc();
  sub_2189BD6B0(0, &unk_280E90C60, MEMORY[0x277D32FE0]);
  v5[107] = swift_task_alloc();
  v23 = sub_219BF0634();
  v5[108] = v23;
  v5[109] = *(v23 - 8);
  v5[110] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218EEAE34, 0, 0);
}

uint64_t sub_218EEAE34()
{
  v112 = v0[108];
  v113 = v0[109];
  v1 = v0[107];
  v2 = v0[106];
  v3 = v0[105];
  v107 = v0[110];
  v4 = v0[104];
  v142 = v0[103];
  v121 = v0[102];
  v127 = v0[101];
  v111 = v0[99];
  v115 = v0[98];
  v117 = v0[97];
  v92 = v0[96];
  v94 = v0[95];
  v5 = v0[93];
  v96 = v0[94];
  v98 = v0[92];
  v6 = v0[86];
  v101 = v0[87];
  v103 = v0[85];
  v119 = v0[82];
  v123 = v0[81];
  v125 = v0[83];
  v132 = v0[79];
  v136 = v0[78];
  v138 = v0[80];
  v7 = v0[30];
  v139 = v0[29];
  v141 = v0[77];
  (*(v113 + 104))();
  v8 = sub_219BF0BD4();
  (*(*(v8 - 8) + 56))(v1, 1, 1, v8);
  (*(v3 + 104))(v2, *MEMORY[0x277D6D178], v4);
  sub_219BE8004();
  sub_219BF6B74();
  sub_219BE8004();
  sub_219BE8044();
  sub_219BE7FD4();
  sub_219BE8064();
  sub_219BE8034();
  sub_219BE7FF4();
  sub_219BE8024();
  sub_219BE8084();
  sub_219BE8014();
  sub_219BEE674();
  sub_219BEE664();
  sub_219BEE654();

  sub_219BDCAC4();
  v9 = sub_219BEF624();
  (*(*(v9 - 8) + 56))(v92, 1, 1, v9);
  v10 = sub_219BEF684();
  (*(*(v10 - 8) + 56))(v94, 1, 1, v10);
  (*(v5 + 104))(v96, *MEMORY[0x277D326B0], v98);
  sub_219BEF654();
  sub_219BEF5F4();
  sub_219BEF5F4();
  (*(v6 + 104))(v101, *MEMORY[0x277D32680], v103);
  sub_219BEF5A4();
  sub_219BEF6A4();

  sub_219BEF5C4();
  sub_219BEE0E4();
  (*(v115 + 8))(v111, v117);
  (*(v121 + 8))(v142, v127);
  (*(v3 + 8))(v2, v4);
  sub_218864B10(v1, &unk_280E90C60, MEMORY[0x277D32FE0]);
  (*(v113 + 8))(v107, v112);
  (*(v119 + 16))(v125, v7, v123);
  (*(v132 + 104))(v138, *MEMORY[0x277D6E080], v136);
  sub_218954264();
  (*(*(v11 - 8) + 16))(v141, v139, v11);
  sub_2186FF87C(&qword_280EE3640, sub_218954264);
  v12 = sub_219BF5E44();
  if (v12)
  {
    v13 = v12;
    v144 = MEMORY[0x277D84F90];
    sub_218C36088(0, v12 & ~(v12 >> 63), 0);
    v14 = v144;
    result = sub_219BF5DF4();
    if ((v13 & 0x8000000000000000) == 0)
    {
      v16 = v0;
      v17 = 0;
      v18 = v0[22];
      v118 = v0 + 12;
      v19 = v0[54];
      v116 = (v0[68] + 48);
      v95 = (v0[60] + 16);
      v93 = (v0[65] + 8);
      v97 = (v0[51] + 8);
      v89 = (v19 + 16);
      v114 = (v0[43] + 104);
      v99 = v0[36];
      v143 = v0[39];
      v140 = (v99 + 8);
      v126 = v0[71];
      v108 = (v19 + 8);
      v91 = v0[67];
      v109 = v0[75];
      v88 = *MEMORY[0x277D6E980];
      v87 = *MEMORY[0x277D6E988];
      v90 = *MEMORY[0x277D6E9B0];
      v110 = v13;
      while (1)
      {
        v20 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        v137 = v17;
        v21 = v16[73];
        v22 = *(v126 + 48);
        v16[23] = v18;
        result = sub_219BF5DF4();
        if (v18 < v16[24])
        {
          goto LABEL_31;
        }

        result = sub_219BF5E84();
        if (v18 >= v16[25])
        {
          goto LABEL_32;
        }

        v120 = v20;
        v122 = v18;
        v124 = v14;
        v23 = v16;
        v24 = v16[72];
        v128 = v23[70];
        v133 = v23[67];
        v25 = sub_219BF5EC4();
        v27 = v26;
        sub_218EECA34(0, &qword_280EE5970, MEMORY[0x277D6D710]);
        v29 = v28;
        v30 = *(v28 - 8);
        (*(v30 + 16))(v21 + v22, v27, v28);
        v25(v118, 0);
        *v24 = v137;
        (*(v30 + 32))(&v24[*(v126 + 48)], v21 + v22, v29);
        sub_219BE6934();
        if ((*v116)(v128, 1, v133) == 1)
        {
          v31 = v23[44];
          v32 = v23[42];
          v23[17] = 0;
          v23[18] = 0;
          v23[16] = 1;
          (*v114)(v31, v90, v32);
          sub_218EECB28();
          *(v23 + 1) = 0u;
          *(v23 + 2) = 0u;
          v23[6] = 0;
          sub_219BEE0A4();
          v16 = v23;
          v33 = v23[55];
          v34 = v23[53];
          sub_218864B10((v23 + 2), &qword_280E91020, sub_2189BD704);
          v35 = sub_219BEE004();
          (*v108)(v33, v34);
          v36 = *(v35 + 16);
          if (v36)
          {
            v145 = MEMORY[0x277D84F90];
            sub_218C361C8(0, v36, 0);
            v37 = v35 + ((*(v99 + 80) + 32) & ~*(v99 + 80));
            v129 = *(v99 + 16);
            v134 = *(v99 + 72);
            do
            {
              v38 = v16[37];
              v40 = v16[34];
              v39 = v16[35];
              v129(v38, v37, v39);
              v129(v40, v38, v39);
              sub_2186FF87C(&unk_280EC8148, type metadata accessor for HistoryFeedLayoutModel);
              sub_219BE75D4();
              (*v140)(v38, v39);
              v41 = *(v145 + 16);
              v42 = *(v145 + 24);
              if (v41 >= v42 >> 1)
              {
                sub_218C361C8(v42 > 1, v41 + 1, 1);
              }

              v43 = v16[40];
              v44 = v16[38];
              *(v145 + 16) = v41 + 1;
              (*(v143 + 32))(v145 + ((*(v143 + 80) + 32) & ~*(v143 + 80)) + *(v143 + 72) * v41, v43, v44);
              v37 += v134;
              --v36;
            }

            while (v36);
          }

          sub_218EECC84();
          sub_2186FF87C(&qword_280EC8140, type metadata accessor for HistoryFeedLayoutModel);
          sub_219BE81A4();
        }

        else
        {
          v45 = v23[66];
          v46 = v23[63];
          v102 = v23[64];
          v47 = v23[61];
          v48 = v23[62];
          v49 = v23[59];
          v100 = v23[58];
          v104 = v23[49];
          v105 = v23[48];
          v106 = v23[47];
          v130 = v23[46];
          v50 = v23[69];
          sub_218B73F4C(v23[70], v50);
          v51 = *(v91 + 20);
          sub_219BED874();
          v52 = sub_219BEDB64();
          (*(*(v52 - 8) + 56))(v46, 1, 1, v52);
          (*v95)(v47, v50 + v51, v49);
          sub_219BEF4D4();
          v53 = sub_219BEF4E4();
          (*(*(v53 - 8) + 56))(v48, 0, 1, v53);
          v54 = sub_219BEEA64();
          (*(*(v54 - 8) + 56))(v100, 1, 1, v54);
          sub_2186FF87C(&unk_280EB4208, type metadata accessor for HistoryFeedSectionDescriptor);
          sub_2186FF87C(&qword_280ED8670, type metadata accessor for HistoryFeedModel);
          sub_219BE69F4();
          sub_218864B10(v100, &qword_280E91990, MEMORY[0x277D32218]);
          sub_218864B10(v48, &qword_280E91548, MEMORY[0x277D325F8]);
          sub_218864B10(v46, &qword_280E924F8, MEMORY[0x277D31DD0]);
          v55 = *v93;
          (*v93)(v45, v102);
          sub_219BED874();
          v56 = sub_219BF44B4();
          v55(v45, v102);
          v23[10] = sub_219BF3594();
          v23[11] = MEMORY[0x277D33EB8];
          v23[7] = v56;
          v57 = sub_219BDCB24();
          v58 = *(*(v57 - 8) + 56);
          v58(v104, 1, 1, v57);
          v58(v105, 1, 1, v57);
          v58(v106, 1, 1, v57);
          v58(v130, 1, 1, v57);

          sub_219BDCB04();
          sub_219BEE0B4();
          v16 = v23;
          v59 = v23[56];
          v60 = v23[57];
          v61 = v23[53];
          v62 = v23[45];
          v63 = v23[42];
          (*v97)(v23[52], v23[50]);

          sub_218864B10((v23 + 7), &qword_280E91020, sub_2189BD704);
          (*v89)(v59, v60, v61);
          v23[19] = sub_21956D914(v59);
          v23[20] = v64;
          v23[21] = v65;
          v66 = sub_219BE9F84();
          (*(*(v66 - 8) + 104))(v62, v88, v66);
          (*v114)(v62, v87, v63);
          v67 = sub_219BEE004();
          v68 = *(v67 + 16);
          if (v68)
          {
            v146 = MEMORY[0x277D84F90];
            sub_218C361C8(0, v68, 0);
            v69 = v67 + ((*(v99 + 80) + 32) & ~*(v99 + 80));
            v131 = *(v99 + 16);
            v135 = *(v99 + 72);
            do
            {
              v70 = v16[37];
              v71 = v16;
              v74 = v16 + 34;
              v73 = v16[34];
              v72 = v74[1];
              v131(v70, v69, v72);
              v131(v73, v70, v72);
              sub_2186FF87C(&unk_280EC8148, type metadata accessor for HistoryFeedLayoutModel);
              sub_219BE75D4();
              (*v140)(v70, v72);
              v75 = *(v146 + 16);
              v76 = *(v146 + 24);
              if (v75 >= v76 >> 1)
              {
                sub_218C361C8(v76 > 1, v75 + 1, 1);
              }

              v77 = v71[41];
              v78 = v71[38];
              *(v146 + 16) = v75 + 1;
              (*(v143 + 32))(v146 + ((*(v143 + 80) + 32) & ~*(v143 + 80)) + *(v143 + 72) * v75, v77, v78);
              v69 += v135;
              --v68;
              v16 = v71;
            }

            while (v68);
          }

          v79 = v16[69];
          v80 = v16[57];
          v81 = v16[53];
          sub_218EECC84();
          sub_2186FF87C(&qword_280EC8140, type metadata accessor for HistoryFeedLayoutModel);
          sub_219BE81A4();

          (*v108)(v80, v81);
          sub_218EECC24(v79, type metadata accessor for ArticleListHistoryFeedGroup);
        }

        sub_218EECC24(v16[72], sub_218EEC918);
        v14 = v124;
        v83 = *(v124 + 16);
        v82 = *(v124 + 24);
        if (v83 >= v82 >> 1)
        {
          sub_218C36088(v82 > 1, v83 + 1, 1);
          v14 = v124;
        }

        v84 = v16[76];
        v85 = v16[74];
        *(v14 + 16) = v83 + 1;
        (*(v109 + 32))(v14 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v83, v84, v85);
        v16[27] = v122;
        result = sub_219BF5E54();
        v18 = v16[26];
        v17 = v120;
        if (v120 == v110)
        {
          sub_218EECC24(v16[77], sub_218EEC9A0);
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    sub_218EECC24(v0[77], sub_218EEC9A0);
    v16 = v0;
LABEL_27:
    sub_218EECC84();
    sub_2186FF87C(&qword_280EC8140, type metadata accessor for HistoryFeedLayoutModel);
    sub_219BE6564();
    sub_219BEE0C4();

    v86 = v16[1];

    return v86();
  }

  return result;
}

uint64_t sub_218EEC854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2187608D4;

  return sub_218EEA394(a1, a2, a3, a4);
}

void sub_218EEC918()
{
  if (!qword_280E8E990)
  {
    sub_218EECA34(255, &qword_280EE5970, MEMORY[0x277D6D710]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8E990);
    }
  }
}

void sub_218EEC9A0()
{
  if (!qword_280E8D420)
  {
    sub_218954264();
    sub_2186FF87C(&qword_280EE3648, sub_218954264);
    v0 = sub_219BF7544();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8D420);
    }
  }
}

void sub_218EECA34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for HistoryFeedSectionDescriptor();
    v8[1] = type metadata accessor for HistoryFeedModel(255);
    v8[2] = sub_2186FF87C(&qword_280EB4200, type metadata accessor for HistoryFeedSectionDescriptor);
    v8[3] = sub_2186FF87C(&qword_280ED8650, type metadata accessor for HistoryFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_218EECB28()
{
  result = qword_280EE5980;
  if (!qword_280EE5980)
  {
    sub_218EECA34(255, &qword_280EE5970, MEMORY[0x277D6D710]);
    sub_2186FF87C(&unk_280EB4208, type metadata accessor for HistoryFeedSectionDescriptor);
    sub_2186FF87C(&qword_280ED8670, type metadata accessor for HistoryFeedModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE5980);
  }

  return result;
}

uint64_t sub_218EECC24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_218EECC84()
{
  result = qword_280EA0400;
  if (!qword_280EA0400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA0400);
  }

  return result;
}

uint64_t type metadata accessor for NewspaperGroup()
{
  result = qword_280EDC268;
  if (!qword_280EDC268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218EECD4C()
{
  type metadata accessor for NewspaperGroupConfig();
  if (v0 <= 0x3F)
  {
    sub_219BED8D4();
    if (v1 <= 0x3F)
    {
      sub_2186D6710(319, &qword_280E8E390);
      if (v2 <= 0x3F)
      {
        sub_218EECE28();
        if (v3 <= 0x3F)
        {
          sub_2186D0AF8();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_218EECE28()
{
  if (!qword_280E8EC20)
  {
    sub_2186D6710(255, &qword_280E8E360);
    v0 = sub_219BF5B14();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8EC20);
    }
  }
}

void sub_218EECE90(void **a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1)
  {
    v4 = v2;
    v5 = v2;
    sub_2186CFDE4(0, &qword_280E8B580);
    type metadata accessor for AVError(0);
    if (swift_dynamicCast())
    {
      sub_218EEDB58();
      sub_219BDB6E4();
      if (v20 == -11819)
      {
        sub_2186C66AC();
        v6 = sub_219BF6F74();
        sub_219BF61F4();
        sub_219BE5314();

LABEL_14:
        return;
      }
    }

    sub_2186C66AC();
    v7 = sub_219BF6F74();
    sub_219BF61F4();
    sub_2186F20D4();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_219C09BA0;
    sub_219BF7484();
    *(v8 + 56) = MEMORY[0x277D837D0];
    *(v8 + 64) = sub_2186FC3BC();
    *(v8 + 32) = 0;
    *(v8 + 40) = 0xE000000000000000;
    sub_219BE5314();

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      __swift_project_boxed_opaque_existential_1((Strong + 40), *(Strong + 64));

      v10 = sub_219BE7174();
      if (v10)
      {
        v11 = v10;
        v12 = [v10 rootViewController];

        if (v12)
        {
          v13 = sub_219BDB714();
          v14 = [v13 fc_isAVUnauthorizedError];

          sub_218EEDAF4();
          sub_219BEA744();
          swift_allocObject();
          sub_219BEA6C4();
          v15 = swift_allocObject();
          *(v15 + 16) = v14;
          *(v15 + 24) = sub_218EEDAEC;
          *(v15 + 32) = a2;
          *(v15 + 40) = v2;
          *(v15 + 48) = v12;
          v16 = v2;

          v17 = v12;
          sub_219BEA6E4();

          v18 = sub_219BF6534();
          sub_219BEA6D4();

          return;
        }
      }

      sub_218EED298(a2);
    }

    goto LABEL_14;
  }

  sub_2186C66AC();
  v19 = sub_219BF6F74();
  sub_219BF6214();
  sub_219BE5314();
}

uint64_t sub_218EED298(uint64_t a1)
{
  v24 = a1;
  sub_218CFB62C();
  MEMORY[0x28223BE20](v1 - 8);
  v21 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_219BF1324();
  v3 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_219BF1C74();
  v6 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BF2A04();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EEDBB8();
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v12, *MEMORY[0x277D33A68], v9);
  (*(v6 + 104))(v8, *MEMORY[0x277D33568], v22);
  v25 = 0u;
  v26 = 0u;
  (*(v3 + 104))(v5, *MEMORY[0x277D33290], v23);
  sub_219BF2564();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_unknownObjectRetain();

    swift_getObjectType();
    sub_219BEABC4();
    v18 = v21;
    (*(v15 + 16))(v21, v17, v14);
    (*(v15 + 56))(v18, 0, 1, v14);
    sub_219BE7094();
    swift_unknownObjectRelease();

    sub_218EEDC0C(v18);
  }

  return (*(v15 + 8))(v17, v14);
}

void sub_218EED68C(uint64_t a1, char a2, void (*a3)(void), uint64_t a4)
{
  if (a2)
  {
    v6 = [objc_allocWithZone(MEMORY[0x277CEE3D8]) init];
    [v6 setIgnoreAccountConversion_];
    sub_219BF7314();
    MEMORY[0x21CECC330](0xD000000000000087, 0x8000000219CFF2D0);
    swift_getErrorValue();
    v7 = sub_219BF7A04();
    MEMORY[0x21CECC330](v7);

    v8 = sub_219BF53D4();

    [v6 setDebugReason_];

    v9 = sub_219BF6534();
    v10 = [objc_allocWithZone(MEMORY[0x277CEE878]) initWithAccount:0 presentingViewController:v9 options:v6];

    v11 = [v10 performAuthentication];
    v12 = swift_allocObject();
    *(v12 + 16) = a3;
    *(v12 + 24) = a4;
    v14[4] = sub_218EEDBB0;
    v14[5] = v12;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = sub_218846728;
    v14[3] = &block_descriptor_74;
    v13 = _Block_copy(v14);

    [v11 addFinishBlock_];
    _Block_release(v13);
  }

  else
  {
    a3();
  }
}

uint64_t sub_218EED8C0(id a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    sub_2186C66AC();
    v8 = a2;
    v9 = sub_219BF6F74();
    sub_219BF61F4();
    sub_2186F20D4();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_219C09BA0;
    sub_2186CFDE4(0, &qword_280E8B580);
    sub_219BF7484();
    *(v10 + 56) = MEMORY[0x277D837D0];
    *(v10 + 64) = sub_2186FC3BC();
    *(v10 + 32) = 0;
    *(v10 + 40) = 0xE000000000000000;
    sub_219BE5314();
  }

  if (a1)
  {
    v11 = [a1 account];
    if (v11)
    {

      v12 = [objc_opt_self() sharedAccount];
      [v12 reloadiTunesAccount];
    }
  }

  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;

  sub_219BE3494();
}

uint64_t sub_218EEDA9C()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 40);

  return swift_deallocClassInstance();
}

unint64_t sub_218EEDAF4()
{
  result = qword_27CC133C8;
  if (!qword_27CC133C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC133C8);
  }

  return result;
}

unint64_t sub_218EEDB58()
{
  result = qword_27CC0A740;
  if (!qword_27CC0A740)
  {
    type metadata accessor for AVError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0A740);
  }

  return result;
}

void sub_218EEDBB8()
{
  if (!qword_280E90410)
  {
    v0 = sub_219BF25B4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E90410);
    }
  }
}

uint64_t sub_218EEDC0C(uint64_t a1)
{
  sub_218CFB62C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218EEDC8C(void *a1, unsigned __int8 a2)
{
  v3 = a2;
  v4 = sub_219BF2124();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_219BDB954();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v3 != 1)
  {
    return MEMORY[0x277D84F90];
  }

  v9 = [objc_msgSend(a1 eventLeagueTag)];
  swift_unknownObjectRelease();
  if (!v9)
  {
    sub_219BF5414();
    v9 = sub_219BF53D4();
  }

  v10 = [objc_opt_self() nss:v9 NewsURLForTagID:5 feedConfiguration:?];

  sub_219BDB8B4();
  sub_218EEDEFC();
  sub_219BF14C4();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_219C09BA0;
  sub_219BF20E4();
  sub_219BF14A4();
  (*(v6 + 8))(v8, v5);
  return v11;
}

void sub_218EEDEFC()
{
  if (!qword_280E8B860)
  {
    sub_219BF14C4();
    v0 = sub_219BF78A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8B860);
    }
  }
}

char *sub_218EEDF54(void *a1, char a2)
{
  if (a2 != 1)
  {
    return MEMORY[0x277D84FA0];
  }

  v2 = [a1 eventCompetitorTags];
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    goto LABEL_17;
  }

  v4 = v2;
  sub_2186D85DC();
  v5 = sub_219BF5924();

  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_16:

LABEL_17:
    v17 = sub_218845F78(v3);

    return v17;
  }

  v6 = sub_219BF7214();
  if (!v6)
  {
    goto LABEL_16;
  }

LABEL_5:
  result = sub_21870B65C(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x21CECE0F0](v8, v5);
      }

      else
      {
        v9 = *(v5 + 8 * v8 + 32);
        swift_unknownObjectRetain();
      }

      v10 = [v9 identifier];
      v11 = sub_219BF5414();
      v13 = v12;
      swift_unknownObjectRelease();

      v15 = *(v3 + 16);
      v14 = *(v3 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_21870B65C((v14 > 1), v15 + 1, 1);
      }

      ++v8;
      *(v3 + 16) = v15 + 1;
      v16 = v3 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
    }

    while (v6 != v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

id sub_218EEE114(uint64_t a1)
{
  sub_218EEE4B8();
  v3 = v2;
  sub_219BED8F4();
  v4 = *(v11 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v5 = [v4 backingTag];

  LODWORD(v4) = [v5 isMySports];
  swift_unknownObjectRelease();
  if (v4)
  {
    (*(*(v3 - 8) + 8))(a1, v3);
    return 0;
  }

  else
  {
    sub_219BED8F4();
    v7 = *(v11 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

    v8 = [v7 backingTag];

    v6 = [v8 asSportsEvent];
    swift_unknownObjectRelease();
    if (!v6)
    {
      sub_219BED8F4();
      v9 = *(v11 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

      v6 = [v9 backingTag];
    }

    (*(*(v3 - 8) + 8))(a1, v3);
  }

  return v6;
}

id sub_218EEE328()
{
  sub_219BEF0B4();
  v0 = *(v8 + 16);

  v1 = *(v0 + 32);

  v2 = [v1 backingTag];

  LODWORD(v1) = [v2 isMySports];
  swift_unknownObjectRelease();
  if (v1)
  {

    return 0;
  }

  else
  {
    sub_219BEF0B4();
    v4 = *(v8 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

    v5 = [v4 backingTag];

    v3 = [v5 asSportsEvent];
    swift_unknownObjectRelease();
    if (!v3)
    {
      sub_219BEF0B4();
      v6 = *(v8 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

      v3 = [v6 backingTag];
    }
  }

  return v3;
}

void sub_218EEE4B8()
{
  if (!qword_27CC133D0)
  {
    type metadata accessor for TagFeedServiceConfig();
    sub_2186F7CA4();
    v0 = sub_219BED924();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC133D0);
    }
  }
}

uint64_t type metadata accessor for TagFeedFailedData()
{
  result = qword_280ED4E10;
  if (!qword_280ED4E10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218EEE590()
{
  result = type metadata accessor for TagFeedGapLocation(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_218EEE60C()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC944();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D0A8]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v8[15] = 0;
  sub_21871A648();
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_280EE9A18 = result;
  return result;
}

uint64_t static Settings.FeedPerformance.suppressAlerts.getter()
{
  if (qword_280EE9A10 != -1)
  {
    swift_once();
  }
}

uint64_t sub_218EEE82C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BED8D4();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EEF034(0, &qword_280E8CDC8, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for SpotlightTodayFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EEEF7C();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_218EEF098(&unk_280E92630, MEMORY[0x277D31C50]);
    sub_219BF7734();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_218EEEFD0(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218EEEAD8(uint64_t a1)
{
  v2 = sub_218EEEF7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218EEEB14(uint64_t a1)
{
  v2 = sub_218EEEF7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218EEEB90(void *a1)
{
  sub_218EEF034(0, &qword_280E8C580, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EEEF7C();
  sub_219BF7B44();
  sub_219BED8D4();
  sub_218EEF098(&qword_280E92640, MEMORY[0x277D31C50]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_218EEEDF0(uint64_t a1)
{
  result = sub_218EEF098(&qword_280EC3198, type metadata accessor for SpotlightTodayFeedGroup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_218EEEE48(uint64_t a1)
{
  v2 = sub_218EEF098(&qword_280EC31C8, type metadata accessor for SpotlightTodayFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_218EEEED0(void *a1)
{
  a1[1] = sub_218EEF098(&qword_280EC31C8, type metadata accessor for SpotlightTodayFeedGroup);
  a1[2] = sub_218EEF098(&qword_280EC31A0, type metadata accessor for SpotlightTodayFeedGroup);
  result = sub_218EEF098(&qword_280EC31B0, type metadata accessor for SpotlightTodayFeedGroup);
  a1[3] = result;
  return result;
}

unint64_t sub_218EEEF7C()
{
  result = qword_280EC31E0;
  if (!qword_280EC31E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC31E0);
  }

  return result;
}

uint64_t sub_218EEEFD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpotlightTodayFeedGroup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218EEF034(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218EEEF7C();
    v7 = a3(a1, &type metadata for SpotlightTodayFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218EEF098(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_218EEF0F4()
{
  result = qword_27CC133D8;
  if (!qword_27CC133D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC133D8);
  }

  return result;
}

unint64_t sub_218EEF14C()
{
  result = qword_280EC31D0;
  if (!qword_280EC31D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC31D0);
  }

  return result;
}

unint64_t sub_218EEF1A4()
{
  result = qword_280EC31D8;
  if (!qword_280EC31D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC31D8);
  }

  return result;
}

uint64_t sub_218EEF1F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BED8D4();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EEFA00(0, &qword_280E8CB88, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for SeenContentMarkTodayFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EEF948();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_218EEFA64(&unk_280E92630, MEMORY[0x277D31C50]);
    sub_219BF7734();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_218EEF99C(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218EEF4A4(uint64_t a1)
{
  v2 = sub_218EEF948();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218EEF4E0(uint64_t a1)
{
  v2 = sub_218EEF948();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218EEF55C(void *a1)
{
  sub_218EEFA00(0, &qword_280E8C3E8, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EEF948();
  sub_219BF7B44();
  sub_219BED8D4();
  sub_218EEFA64(&qword_280E92640, MEMORY[0x277D31C50]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_218EEF7BC(uint64_t a1)
{
  result = sub_218EEFA64(&qword_27CC0B998, type metadata accessor for SeenContentMarkTodayFeedGroup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_218EEF814(uint64_t a1)
{
  v2 = sub_218EEFA64(&qword_27CC133F0, type metadata accessor for SeenContentMarkTodayFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_218EEF89C(void *a1)
{
  a1[1] = sub_218EEFA64(&qword_27CC133F0, type metadata accessor for SeenContentMarkTodayFeedGroup);
  a1[2] = sub_218EEFA64(&qword_280EAEF40, type metadata accessor for SeenContentMarkTodayFeedGroup);
  result = sub_218EEFA64(&qword_280EAEF48, type metadata accessor for SeenContentMarkTodayFeedGroup);
  a1[3] = result;
  return result;
}

unint64_t sub_218EEF948()
{
  result = qword_280EAEF68;
  if (!qword_280EAEF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAEF68);
  }

  return result;
}

uint64_t sub_218EEF99C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SeenContentMarkTodayFeedGroup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218EEFA00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218EEF948();
    v7 = a3(a1, &type metadata for SeenContentMarkTodayFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218EEFA64(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_218EEFAC0()
{
  result = qword_27CC133F8;
  if (!qword_27CC133F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC133F8);
  }

  return result;
}

unint64_t sub_218EEFB18()
{
  result = qword_280EAEF58;
  if (!qword_280EAEF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAEF58);
  }

  return result;
}

unint64_t sub_218EEFB70()
{
  result = qword_280EAEF60;
  if (!qword_280EAEF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAEF60);
  }

  return result;
}

uint64_t sub_218EEFBEC(uint64_t a1)
{
  v2 = v1;
  sub_21896FA3C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - v9;
  v11 = *(v2 + 16);
  v12 = swift_allocObject();
  *(v12 + 16) = 1;
  if (a1 && (v13 = sub_219BE82D4()) != 0)
  {
    v14 = v13;
  }

  else
  {
    v14 = *(v2 + 24);
  }

  v15 = sub_219BDFA44();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  v36 = v11;
  sub_2187B14CC(v37, &v32, &unk_280EE7DB0, &qword_280EE7DC0);
  v30 = v12;
  if (v33)
  {
    sub_21875F93C(&v32, v34);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v17 = qword_280ED32D8;
    v16 = qword_280ED32E0;
    v18 = qword_280ED32E8;

    sub_2188202A8(v16);
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  else
  {
    sub_2187448D0(&v32, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v17 = qword_280ED32D8;
    v16 = qword_280ED32E0;
    v18 = qword_280ED32E8;

    sub_2188202A8(v16);
  }

  v31 = v12 | 0x7000000000000006;
  v33 = sub_219BDD274();
  *&v32 = v14;
  sub_2189B4E2C(v10, v8);
  sub_2187B14CC(v39, v34, &qword_280EE33A0, &qword_280EE33B0);
  v19 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v20 = (v6 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 47) & 0xFFFFFFFFFFFFFFF8;
  v29 = v10;
  v22 = swift_allocObject();
  *(v22 + 16) = v14;
  sub_2189B4EAC(v8, v22 + v19);
  v23 = v22 + v20;
  v24 = v34[1];
  *v23 = v34[0];
  *(v23 + 16) = v24;
  *(v23 + 32) = v35;
  v25 = (v22 + v21);
  v26 = (v22 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v25 = 0;
  v25[1] = 0;
  *v26 = v17;
  v26[1] = v16;
  v26[2] = v18;
  swift_retain_n();

  sub_2188202A8(v16);
  sub_2186CF94C();
  sub_2189B4DD4();
  sub_219BEB464();

  sub_2187FABEC(v16);
  sub_2187448D0(v37, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  sub_2187448D0(v39, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_218A42D80(v29);
  sub_2187448D0(&v32, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
}

uint64_t type metadata accessor for FollowingShortcutsMoveModifier()
{
  result = qword_27CC13400;
  if (!qword_27CC13400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218EF0258()
{
  sub_218EF0318();
  if (v0 <= 0x3F)
  {
    type metadata accessor for FollowingModel();
    if (v1 <= 0x3F)
    {
      sub_218EF12C0(319, &qword_27CC16390, MEMORY[0x277D6E3E0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_218EF0318()
{
  result = qword_280ED02F0;
  if (!qword_280ED02F0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280ED02F0);
  }

  return result;
}

uint64_t sub_218EF037C(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v99 = a3;
  v100 = a2;
  v97 = a1;
  sub_218EF1200(0, &qword_280EE4B40, MEMORY[0x277D6DF88]);
  v101 = *(v4 - 8);
  v102 = v4;
  MEMORY[0x28223BE20](v4);
  v98 = (&v76 - v5);
  v6 = sub_219BE7654();
  v84 = *(v6 - 8);
  v85 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v83 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v82 = &v76 - v9;
  v10 = sub_219BE91F4();
  v87 = *(v10 - 8);
  v88 = v10;
  MEMORY[0x28223BE20](v10);
  v86 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EF1200(0, &qword_280EE3760, MEMORY[0x277D6EC60]);
  v13 = v12;
  v93 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v90 = &v76 - v14;
  v15 = MEMORY[0x277D6D3F0];
  sub_218EF135C(0, &unk_280EE5C60, &qword_280EE5C70, MEMORY[0x277D6D3F0], sub_218EF12C0);
  MEMORY[0x28223BE20](v16 - 8);
  v96 = &v76 - v17;
  sub_218EF12C0(0, &qword_280EE5C70, v15);
  v19 = v18;
  v95 = *(v18 - 1);
  MEMORY[0x28223BE20](v18);
  v94 = &v76 - v20;
  v21 = MEMORY[0x277D6D710];
  sub_218EF135C(0, &unk_280EE5740, &qword_280EE5750, MEMORY[0x277D6D710], sub_218EF1200);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v76 - v23;
  sub_218EF1200(0, &qword_280EE5750, v21);
  v26 = v25;
  v27 = *(v25 - 8);
  v28 = MEMORY[0x28223BE20](v25);
  v89 = &v76 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v76 - v30;
  v91 = type metadata accessor for FollowingShortcutsMoveModifier();
  sub_218F37C08();
  v92 = v13;
  v32 = v97;
  sub_219BEB244();

  if ((*(v27 + 48))(v24, 1, v26) == 1)
  {
    v33 = &unk_280EE5740;
    v34 = &qword_280EE5750;
    v35 = MEMORY[0x277D6D710];
    v36 = sub_218EF1200;
LABEL_5:
    sub_218EF140C(v24, v33, v34, v35, v36);
    sub_218EF13B8();
    v38 = swift_allocError();
    *v39 = 0;
    v40 = v98;
    *v98 = v38;
    v42 = v101;
    v41 = v102;
    (*(v101 + 104))(v40, *MEMORY[0x277D6DF68], v102);
    v100(v40);
    return (*(v42 + 8))(v40, v41);
  }

  (*(v27 + 32))(v31, v24, v26);
  sub_218F37C08();
  v24 = v96;
  sub_219BE6A64();

  v37 = v95;
  if ((*(v95 + 48))(v24, 1, v19) == 1)
  {
    (*(v27 + 8))(v31, v26);
    v33 = &unk_280EE5C60;
    v34 = &qword_280EE5C70;
    v35 = MEMORY[0x277D6D3F0];
    v36 = sub_218EF12C0;
    goto LABEL_5;
  }

  v44 = v19;
  v45 = v37;
  v81 = v31;
  v80 = v27;
  v79 = v26;
  v46 = *(v37 + 32);
  v47 = v94;
  v96 = v44;
  v46();
  v48 = sub_218EF0F08(v3);
  v50 = v49;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v51 = v32;
  v53 = v92;
  v52 = v93;
  if (!v50)
  {
    goto LABEL_12;
  }

  v78 = *(v3 + *(v91 + 24));
  v54 = sub_218C55948(v48, v50);
  if (!v54)
  {

    goto LABEL_12;
  }

  v55 = v54;
  v56 = sub_218C55854(v54, v78);

  if ((v56 & 1) == 0)
  {
LABEL_12:
    sub_218EF13B8();
    v68 = swift_allocError();
    *v69 = 1;
    v70 = v98;
    *v98 = v68;
    v72 = v101;
    v71 = v102;
    (*(v101 + 104))(v70, *MEMORY[0x277D6DF68], v102);
    v100(v70);
    (*(v72 + 8))(v70, v71);
    (*(v45 + 8))(v47, v96);
    return (*(v80 + 8))(v81, v79);
  }

  (*(v80 + 16))(v89, v81, v79);
  sub_219BE6964();
  (*(v52 + 16))(v90, v51, v53);
  sub_219BEB234();
  v57 = v86;
  v58 = v87;
  v59 = *(v87 + 104);
  LODWORD(v78) = *MEMORY[0x277D6E440];
  v60 = v88;
  v77 = v59;
  v59(v86);
  v91 = sub_219BE9034();
  v76 = *(v58 + 8);
  v76(v57, v60);
  v61 = v82;
  sub_219BE9084();
  v62 = v83;
  v63 = v84;
  v64 = v85;
  (*(v84 + 104))(v83, *MEMORY[0x277D6DAA0], v85);
  LODWORD(v87) = sub_219BE7644();
  v65 = *(v63 + 8);
  v65(v62, v64);
  v65(v61, v64);
  type metadata accessor for FollowingModel();
  sub_2187490E4();
  sub_2186D56E4(&qword_280EDC630, type metadata accessor for FollowingModel);
  v66 = v98;
  v67 = v90;
  if (v87)
  {
    sub_219BE8574();
    v100(v66);

    (*(v101 + 8))(v66, v102);
  }

  else
  {
    sub_219BE85B4();
    v100(v66);
    (*(v101 + 8))(v66, v102);
    v73 = v88;
    v77(v57, v78, v88);
    sub_219BE9204();

    v76(v57, v73);
  }

  (*(v93 + 8))(v67, v92);
  v74 = *(v80 + 8);
  v75 = v79;
  v74(v89, v79);
  (*(v45 + 8))(v94, v96);
  return (v74)(v81, v75);
}

uint64_t sub_218EF0F08(uint64_t a1)
{
  v2 = type metadata accessor for FollowingModel();
  MEMORY[0x28223BE20](v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FollowingShortcutsMoveModifier();
  sub_218EF1468(a1 + *(v5 + 20), v4);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      v6 = type metadata accessor for FollowingAudioModel;
      goto LABEL_3;
    case 6u:
    case 7u:
      v8 = *(*(*v4 + 24) + 16);

      v9 = [v8 identifier];
      v10 = sub_219BF5414();

      return v10;
    case 0xBu:

      sub_218748BF4();
      v12 = *(v11 + 48);
      sub_218748D40();
      (*(*(v13 - 8) + 8))(&v4[v12], v13);
      return 0;
    case 0x10u:
      v6 = type metadata accessor for FollowingMySportsModel;
      goto LABEL_3;
    case 0x11u:
      sub_218EF14CC(v4, type metadata accessor for FollowingPuzzleHubModel);
      return 0x7548656C7A7A7570;
    default:
      v6 = type metadata accessor for FollowingModel;
LABEL_3:
      sub_218EF14CC(v4, v6);
      return 0;
  }
}

uint64_t sub_218EF1104(uint64_t a1)
{
  v2 = sub_2186D56E4(&qword_27CC0E088, type metadata accessor for FollowingShortcutsMoveModifier);

  return MEMORY[0x2821D4040](a1, v2);
}

void sub_218EF1200(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for FollowingDescriptor;
    v8[1] = type metadata accessor for FollowingModel();
    v8[2] = sub_2187490E4();
    v8[3] = sub_2186D56E4(&qword_280EDC630, type metadata accessor for FollowingModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218EF12C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for FollowingModel();
    v7 = sub_2186D56E4(&qword_280EDC630, type metadata accessor for FollowingModel);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_218EF135C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_219BF6FB4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_218EF13B8()
{
  result = qword_27CC13418;
  if (!qword_27CC13418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13418);
  }

  return result;
}

uint64_t sub_218EF140C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_218EF135C(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_218EF1468(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FollowingModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218EF14CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_218EF1540()
{
  result = qword_27CC13420;
  if (!qword_27CC13420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13420);
  }

  return result;
}

uint64_t sub_218EF1594@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for MagazineCategoriesPickerModule();
    v7 = swift_allocObject();
    result = sub_2186CB1F0(v8, v7 + 16);
    *(v7 + 56) = v5;
    a2[3] = v6;
    a2[4] = &protocol witness table for MagazineCategoriesPickerModule;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218EF1644()
{
  type metadata accessor for MagazineCategoriesPickerViewController();
  sub_219BE2904();

  sub_2186C709C(0, &qword_27CC13428);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC13430);
  sub_219BE2914();
  type metadata accessor for MagazineCategoriesPickerRouter();
  sub_219BE19C4();

  sub_2186C709C(0, &qword_27CC13438);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC13440);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC13448);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC13450);
  sub_219BE2914();

  sub_218EF53F4();
  sub_219BE2904();

  sub_218EF62D8(0, &qword_27CC13468, MEMORY[0x277D6D8B8]);
  sub_219BE2904();

  type metadata accessor for MagazineCategoriesPickerBlueprintModifierFactory();
  sub_219BE2904();

  sub_2186C709C(0, &qword_27CC13470);
  sub_219BE2914();

  sub_218EF549C();
  sub_219BE2904();
  sub_219BE19D4();

  sub_218EF5DC0();
  sub_219BE2904();

  sub_219BE9C54();
  sub_219BE2904();

  sub_218EF55A8();
  sub_219BE2904();

  sub_218EF5EFC();
  sub_219BE2904();

  sub_218EF59D8();
  sub_219BE2904();

  type metadata accessor for MagazineCategoriesPickerBlueprintLayoutBuilder();
  sub_219BE2904();

  sub_218EF5FB4();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C6148(0, &qword_280E8E4C0);
  sub_219BE2904();

  sub_218EF5674();
  sub_219BE2904();

  sub_2186C709C(0, &qword_280EE3DE0);
  sub_219BE2914();
  sub_219BE95A4();
  sub_219BE19C4();

  sub_21879AAE0(0, &qword_280EE44C0, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D6E608]);
  sub_219BE2904();

  sub_218EF57F0();
  sub_219BE2904();
  sub_219BE19D4();

  sub_218EF5B1C();
  sub_219BE2904();
  sub_219BE19D4();

  sub_218EF5CB4();
  sub_219BE2904();

  type metadata accessor for MagazineCategoriesPickerBlueprintViewCellProvider();
  sub_219BE2904();
  sub_219BE19D4();

  type metadata accessor for MagazineCategoriesPickerBlueprintViewSupplementaryViewProvider();
  sub_219BE2904();

  sub_218EF6214(0, &qword_27CC13530, MEMORY[0x277D6E388]);
  sub_219BE2904();

  sub_219BE70E4();
  sub_219BE2904();

  sub_218EF6108();
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE8A54();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C709C(0, &unk_280EE3C80);
  sub_219BE2914();
}

uint64_t sub_218EF2034(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC13428);
  result = sub_219BE1E34();
  if (!v16)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC13438);
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
  sub_218EF5FB4();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EF53F4();
  result = sub_219BE1DE4();
  if (result)
  {
    v6 = result;
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
    MEMORY[0x28223BE20](v7);
    v9 = (&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9);
    v11 = sub_218EF63F0(*v9, v3, v4, v5, v6);
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v15);
    return v11;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_218EF2278@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EDC810);
  result = sub_219BE1E34();
  if (v24)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280E902B0);
    result = sub_219BE1E34();
    if (v22)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
      MEMORY[0x28223BE20](v5);
      v7 = (&v20[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v8 + 16))(v7);
      v9 = *v7;
      v10 = type metadata accessor for BaseStyler();
      v20[3] = v10;
      v11 = sub_218EF5AD4(&qword_280EDFED0, type metadata accessor for BaseStyler);
      v20[4] = v11;
      v20[0] = v9;
      v12 = type metadata accessor for MagazineCategoriesPickerStyler();
      v13 = swift_allocObject();
      v14 = __swift_mutable_project_boxed_opaque_existential_1(v20, v10);
      MEMORY[0x28223BE20](v14);
      v16 = (&v20[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v17 + 16))(v16);
      v18 = *v16;
      *(v13 + 40) = v10;
      *(v13 + 48) = v11;
      *(v13 + 16) = v18;
      *(v13 + 96) = xmmword_219C46040;
      sub_2186CB1F0(&v21, v13 + 56);
      __swift_destroy_boxed_opaque_existential_1(v20);
      result = __swift_destroy_boxed_opaque_existential_1(v23);
      a2[3] = v12;
      a2[4] = &off_282A974C0;
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

uint64_t sub_218EF2548@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_21874EDE8(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
    result = sub_219BE1E24();
    if (result)
    {
      v6 = result;
      v7 = type metadata accessor for MagazineCategoriesPickerRouter();
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      result = sub_2186CB1F0(v9, v8 + 24);
      *(v8 + 64) = v5;
      *(v8 + 72) = v6;
      a2[3] = v7;
      a2[4] = &off_282A795F8;
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

void sub_218EF267C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for MagazineCategoriesPickerViewController();
  v2 = sub_219BE1E24();
  swift_unknownObjectWeakAssign();
}

uint64_t sub_218EF26FC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC13440);
  result = sub_219BE1E34();
  v5 = v20;
  if (!v20)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC13430);
  result = sub_219BE1E34();
  if (!v19)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC13448);
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
    v15 = sub_218EF6794(v5, v6, *v9, *v13);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v16);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    *a2 = v15;
    a2[1] = &off_282A5BE28;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_218EF29AC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC13450);
  result = sub_219BE1E34();
  if (!v8)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EF549C();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MagazineCategoriesPickerBlueprintModifierFactory();
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    sub_218EF635C();
    v7 = swift_allocObject();
    v7[3] = 0;
    result = swift_unknownObjectWeakInit();
    v7[6] = v8;
    v7[7] = v9;
    v7[4] = v5;
    v7[5] = v6;
    *a2 = v7;
    a2[1] = &off_282A97600;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_218EF2AEC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for MagazineCategoriesPickerTracker();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_282A867B0;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218EF2B74@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EA3480);
  result = sub_219BE1E34();
  if (v38)
  {
    v30 = a2;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, qword_280EB84C0);
    result = sub_219BE1E34();
    if (v36)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
      v29[1] = v29;
      MEMORY[0x28223BE20](v5);
      v7 = (v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v8 + 16))(v7);
      v9 = __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
      v29[0] = v29;
      MEMORY[0x28223BE20](v9);
      v11 = (v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v12 + 16))(v11);
      v13 = *v7;
      v14 = *v11;
      v15 = type metadata accessor for MagazineCategoryConfigService();
      v34[3] = v15;
      v34[4] = &off_282A6EDE8;
      v34[0] = v13;
      v16 = type metadata accessor for MagazineCategoryService();
      v32 = v16;
      v33 = &off_282A649E8;
      v31[0] = v14;
      type metadata accessor for MagazineCategoriesPickerDataManager();
      v17 = swift_allocObject();
      v18 = __swift_mutable_project_boxed_opaque_existential_1(v34, v15);
      MEMORY[0x28223BE20](v18);
      v20 = (v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v21 + 16))(v20);
      v22 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
      MEMORY[0x28223BE20](v22);
      v24 = (v29 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v25 + 16))(v24);
      v26 = *v20;
      v27 = *v24;
      v17[5] = v15;
      v17[6] = &off_282A6EDE8;
      v17[2] = v26;
      v17[10] = v16;
      v17[11] = &off_282A649E8;
      v17[7] = v27;
      __swift_destroy_boxed_opaque_existential_1(v31);
      __swift_destroy_boxed_opaque_existential_1(v34);
      __swift_destroy_boxed_opaque_existential_1(v35);
      result = __swift_destroy_boxed_opaque_existential_1(v37);
      v28 = v30;
      *v30 = v17;
      v28[1] = &off_282A51F50;
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

uint64_t sub_218EF2F9C()
{
  sub_218EF53F4();
  swift_allocObject();
  return sub_219BE20D4();
}

uint64_t sub_218EF2FFC()
{
  sub_218EF62D8(0, &qword_27CC13468, MEMORY[0x277D6D8B8]);
  swift_allocObject();
  return sub_219BE6F94();
}

uint64_t sub_218EF3050(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC13470);
  result = sub_219BE1E34();
  if (v16)
  {
    v2 = __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
    MEMORY[0x28223BE20](v2);
    v4 = (v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v5 + 16))(v4);
    v6 = *v4;
    v7 = type metadata accessor for MagazineCategoriesPickerSectionFactory();
    v14[3] = v7;
    v14[4] = &off_282A853F0;
    v14[0] = v6;
    type metadata accessor for MagazineCategoriesPickerBlueprintModifierFactory();
    v8 = swift_allocObject();
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v14, v7);
    MEMORY[0x28223BE20](v9);
    v11 = (v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = *v11;
    v8[5] = v7;
    v8[6] = &off_282A853F0;
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

uint64_t sub_218EF3260@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for MagazineCategoriesPickerSectionFactory();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_282A853F0;
  *a1 = result;
  return result;
}

uint64_t sub_218EF32A8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EF62D8(0, &qword_27CC13468, MEMORY[0x277D6D8B8]);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_218EF55A8();
    result = sub_219BE1E24();
    if (result)
    {
      sub_218EF549C();
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

uint64_t sub_218EF33A4(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D6E728];
  sub_218EF62D8(0, &qword_27CC13578, MEMORY[0x277D6E728]);
  swift_allocObject();
  sub_219BE96E4();
  sub_218EF62D8(0, &qword_27CC13580, MEMORY[0x277D6E3B8]);
  swift_allocObject();
  sub_218EF5A90(&qword_27CC13588, &qword_27CC13578, v3);
  sub_219BE8FA4();
  sub_219BE6ED4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_218EF5DC0();
  result = sub_219BE1E24();
  if (result)
  {
    swift_allocObject();
    sub_218EF5AD4(&qword_27CC13590, sub_218EF5DC0);
    sub_219BE8FA4();
    sub_219BE6ED4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218EF355C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EF59D8();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE3DE0);
  result = sub_219BE1DF4();
  if (!v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MagazineCategoriesPickerBlueprintLayoutBuilder();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EF5EFC();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE9C54();
  result = sub_219BE1DE4();
  if (result)
  {
    sub_218EF5DC0();
    swift_allocObject();
    return sub_219BEA484();
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_218EF3764(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void))
{
  a2(0);
  swift_allocObject();
  return a3();
}

uint64_t sub_218EF37A8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EF5674();
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EE39D0);
    result = sub_219BE1E34();
    if (v3)
    {
      sub_218EF55A8();
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

uint64_t sub_218EF3900(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21879AAE0(0, &unk_280E91DA0, MEMORY[0x277D33AC8], MEMORY[0x277D33AC0], MEMORY[0x277D31F40]);
  result = sub_219BE1E24();
  if (result)
  {
    v2 = result;
    type metadata accessor for MagazineCategoriesPickerBlueprintLayoutBuilder();
    result = swift_allocObject();
    *(result + 16) = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218EF39A8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EF62D8(0, &qword_27CC13468, MEMORY[0x277D6D8B8]);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EF5674();
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
  sub_218EF6214(0, &qword_27CC13530, MEMORY[0x277D6E388]);
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
    sub_218EF5AD4(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
    sub_218EF5FB4();
    v4 = objc_allocWithZone(v3);
    return sub_219BE8754();
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_218EF3CE0(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BF3E94();
  if (sub_219BE1E24())
  {
    sub_218EF5AD4(&qword_280E8FF80, MEMORY[0x277D34268]);
  }

  return sub_219BE8704();
}

uint64_t sub_218EF3D8C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21879AAE0(0, &qword_280EE44C0, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D6E608]);
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

uint64_t sub_218EF3E6C(void *a1)
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
  sub_218EF57F0();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EF5B1C();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EF5CB4();
  result = sub_219BE1E24();
  if (result)
  {
    sub_218EF5674();
    swift_allocObject();
    return sub_219BE7BB4();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_218EF3FD8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EF5674();
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

uint64_t sub_218EF4090()
{
  v0 = sub_219BE80A4();
  MEMORY[0x28223BE20](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6DDE0]);
  return sub_219BE9574();
}

uint64_t sub_218EF4160(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE9C54();
  result = sub_219BE1DE4();
  if (result)
  {
    sub_21879AAE0(0, &qword_280EE44C0, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D6E608]);
    v3 = objc_allocWithZone(v2);
    return sub_219BE9454();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218EF4228(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EF62D8(0, &qword_27CC13468, MEMORY[0x277D6D8B8]);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EF59D8();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MagazineCategoriesPickerBlueprintViewCellProvider();
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
  type metadata accessor for MagazineCategoriesPickerBlueprintViewSupplementaryViewProvider();
  result = sub_219BE1E24();
  if (result)
  {
    *&v8[0] = v3;
    sub_218EF57F0();
    v7 = objc_allocWithZone(v6);
    return sub_219BE9B64();
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_218EF43E0(void *a1, void *a2)
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

uint64_t sub_218EF44F0(uint64_t a1, void *a2)
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

uint64_t sub_218EF45C4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EF62D8(0, &qword_27CC13468, MEMORY[0x277D6D8B8]);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EF59D8();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EF6214(0, &qword_27CC13530, MEMORY[0x277D6E388]);
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

  sub_218EF5AD4(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE4800);
  result = sub_219BE1E34();
  if (v5)
  {
    sub_218EF5B1C();
    v4 = objc_allocWithZone(v3);
    return sub_219BE9744();
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_218EF484C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BE70E4();
  sub_219BE1DE4();
  sub_219BE9764();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_218EF6108();
  if (sub_219BE1E24())
  {
    sub_218EF5AD4(&qword_27CC13570, sub_218EF6108);
  }

  return sub_219BE9774();
}

uint64_t sub_218EF4950(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EF62D8(0, &qword_27CC13468, MEMORY[0x277D6D8B8]);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_218EF59D8();
    result = sub_219BE1E24();
    if (result)
    {
      sub_218EF5CB4();
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

uint64_t sub_218EF4A2C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E90158);
  result = sub_219BE1E34();
  if (!v8)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E91810);
  result = sub_219BE1E34();
  if (!v5)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EF53F4();
  result = sub_219BE1DE4();
  if (result)
  {
    v3 = result;
    type metadata accessor for MagazineCategoriesPickerBlueprintViewCellProvider();
    v4 = swift_allocObject();
    v4[3] = 0;
    swift_unknownObjectWeakInit();
    sub_2186CB1F0(&v7, (v4 + 4));
    v4[9] = v5;
    v4[10] = v6;
    v4[11] = v3;
    return v4;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_218EF4B94(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for MagazineCategoriesPickerViewController();
  v4 = sub_219BE1E24();
  v3 = &off_282A5E398;
  if (!v4)
  {
    v3 = 0;
  }

  *(v2 + 24) = v3;
  swift_unknownObjectWeakAssign();
}

uint64_t sub_218EF4C28(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90FD0);
  result = sub_219BE1E34();
  if (v4)
  {
    type metadata accessor for MagazineCategoriesPickerBlueprintViewSupplementaryViewProvider();
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

uint64_t sub_218EF4CC8(void *a1)
{
  v2 = sub_219BE9BC4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_219BE9BE4();
  MEMORY[0x28223BE20](v6 - 8);
  sub_218EF6214(0, &qword_27CC13568, MEMORY[0x277D6E380]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EF62D8(0, &qword_27CC13468, MEMORY[0x277D6D8B8]);
  result = sub_219BE1E24();
  if (result)
  {
    v13 = result;
    (*(v9 + 104))(v11, *MEMORY[0x277D6E378], v8);
    *v5 = 0;
    (*(v3 + 104))(v5, *MEMORY[0x277D6E828], v2);
    sub_219BE9BD4();
    v14[1] = v13;
    sub_218EF6214(0, &qword_27CC13530, MEMORY[0x277D6E388]);
    swift_allocObject();
    return sub_219BE8EC4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218EF4F70(void *a1)
{
  sub_2187F2110();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C09EC0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EF6108();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = sub_218EF5AD4(&qword_27CC13560, sub_218EF6108);
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

uint64_t sub_218EF50AC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EF5674();
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_218EF62D8(0, &qword_27CC13468, MEMORY[0x277D6D8B8]);
    result = sub_219BE1E24();
    if (result)
    {
      sub_218EF6108();
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

uint64_t sub_218EF51DC(uint64_t a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_218EF5FB4();
  v7 = sub_219BE1E24();
  if (v7)
  {
    v8 = v7;
    v9 = sub_218EF5AD4(a3, sub_218EF5FB4);
    v7 = v8;
  }

  else
  {
    v9 = 0;
  }

  return a5(v7, v9);
}

uint64_t sub_218EF5290(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EF5674();
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

uint64_t sub_218EF534C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EF5FB4();
  v4 = v3;
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    a2[3] = v4;
    result = sub_218EF5AD4(&qword_27CC13548, sub_218EF5FB4);
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_218EF53F4()
{
  if (!qword_27CC13458)
  {
    sub_218EF544C();
    v0 = sub_219BE2124();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC13458);
    }
  }
}

void sub_218EF544C()
{
  if (!qword_27CC13460)
  {
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC13460);
    }
  }
}

void sub_218EF549C()
{
  if (!qword_27CC13478)
  {
    v0 = MEMORY[0x277D6D8B8];
    sub_218EF62D8(255, &qword_27CC13468, MEMORY[0x277D6D8B8]);
    sub_218EF55A8();
    sub_218EF5A90(&qword_27CC134A0, &qword_27CC13468, v0);
    sub_218EF5AD4(&qword_27CC13500, sub_218EF55A8);
    v1 = sub_219BE6F54();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC13478);
    }
  }
}

void sub_218EF55A8()
{
  if (!qword_27CC13480)
  {
    sub_218EF5674();
    sub_218DB6788();
    sub_218DB6840();
    sub_218EF5AD4(&qword_27CC134F8, sub_218EF5674);
    v0 = sub_219BE72E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC13480);
    }
  }
}

void sub_218EF5674()
{
  if (!qword_27CC13488)
  {
    sub_2186C6148(255, &qword_280E8E4C0);
    sub_218EF57F0();
    sub_218EF5B1C();
    sub_218EF5CB4();
    type metadata accessor for MagazineCategoriesPickerViewController();
    sub_218EF5AD4(&qword_27CC134E0, sub_218EF57F0);
    sub_218EF5AD4(&qword_27CC134E8, sub_218EF5B1C);
    sub_218EF5AD4(&qword_27CC134F0, sub_218EF5CB4);
    v0 = sub_219BE7BE4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC13488);
    }
  }
}

void sub_218EF57F0()
{
  if (!qword_27CC13490)
  {
    v0 = MEMORY[0x277D6D8B8];
    sub_218EF62D8(255, &qword_27CC13468, MEMORY[0x277D6D8B8]);
    sub_218EF59D8();
    type metadata accessor for MagazineCategoriesPickerBlueprintViewCellProvider();
    type metadata accessor for MagazineCategoriesPickerBlueprintViewSupplementaryViewProvider();
    sub_218EF5A90(&qword_27CC134A0, &qword_27CC13468, v0);
    sub_218EF5AD4(&qword_27CC134A8, sub_218EF59D8);
    sub_218EF5AD4(&qword_27CC134B0, type metadata accessor for MagazineCategoriesPickerBlueprintViewCellProvider);
    sub_218EF5AD4(&qword_27CC134B8, type metadata accessor for MagazineCategoriesPickerBlueprintViewSupplementaryViewProvider);
    sub_218EF5AD4(&qword_27CC134C0, type metadata accessor for MagazineCategoriesPickerLayoutModel);
    v1 = sub_219BE9B94();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC13490);
    }
  }
}

void sub_218EF59D8()
{
  if (!qword_27CC13498)
  {
    type metadata accessor for MagazineCategoriesPickerLayoutModel();
    sub_218ACD334();
    sub_218EF5AD4(&qword_27CC0F818, type metadata accessor for MagazineCategoriesPickerLayoutModel);
    v0 = sub_219BE8564();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC13498);
    }
  }
}

uint64_t sub_218EF5A90(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  result = *a1;
  if (!result)
  {
    sub_218EF62D8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_218EF5AD4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_218EF5B1C()
{
  if (!qword_27CC134C8)
  {
    v0 = MEMORY[0x277D6D8B8];
    sub_218EF62D8(255, &qword_27CC13468, MEMORY[0x277D6D8B8]);
    sub_218EF59D8();
    type metadata accessor for MagazineCategoriesPickerViewController();
    sub_218EF5A90(&qword_27CC134A0, &qword_27CC13468, v0);
    sub_218EF5AD4(&qword_27CC134A8, sub_218EF59D8);
    sub_218EF5AD4(&qword_27CC134D0, type metadata accessor for MagazineCategoriesPickerViewController);
    sub_218EF5AD4(&qword_27CC134C0, type metadata accessor for MagazineCategoriesPickerLayoutModel);
    v1 = sub_219BE9794();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC134C8);
    }
  }
}

void sub_218EF5CB4()
{
  if (!qword_27CC134D8)
  {
    v0 = MEMORY[0x277D6D8B8];
    sub_218EF62D8(255, &qword_27CC13468, MEMORY[0x277D6D8B8]);
    sub_218EF59D8();
    sub_218EF5A90(&qword_27CC134A0, &qword_27CC13468, v0);
    sub_218EF5AD4(&qword_27CC134A8, sub_218EF59D8);
    v1 = sub_219BE9F34();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC134D8);
    }
  }
}

void sub_218EF5DC0()
{
  if (!qword_27CC13508)
  {
    sub_218EF59D8();
    type metadata accessor for MagazineCategoriesPickerBlueprintLayoutBuilder();
    sub_218EF5EFC();
    sub_218EF5AD4(&qword_27CC134A8, sub_218EF59D8);
    sub_218EF5AD4(&qword_27CC13518, type metadata accessor for MagazineCategoriesPickerBlueprintLayoutBuilder);
    sub_218EF5AD4(&qword_27CC13520, sub_218EF5EFC);
    v0 = sub_219BEA4A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC13508);
    }
  }
}

void sub_218EF5EFC()
{
  if (!qword_27CC13510)
  {
    type metadata accessor for MagazineCategoriesPickerLayoutModel();
    sub_218ACD38C();
    sub_218EF5AD4(&qword_27CC134C0, type metadata accessor for MagazineCategoriesPickerLayoutModel);
    v0 = sub_219BE9974();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC13510);
    }
  }
}

void sub_218EF5FB4()
{
  if (!qword_27CC13528)
  {
    v0 = MEMORY[0x277D6D8B8];
    sub_218EF62D8(255, &qword_27CC13468, MEMORY[0x277D6D8B8]);
    sub_218EF5674();
    type metadata accessor for MagazineCategoriesPickerViewController();
    sub_218EF5A90(&qword_27CC134A0, &qword_27CC13468, v0);
    sub_218EF5AD4(&qword_27CC134F8, sub_218EF5674);
    sub_218EF5AD4(&qword_27CC134D0, type metadata accessor for MagazineCategoriesPickerViewController);
    v1 = sub_219BE8774();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC13528);
    }
  }
}

void sub_218EF6108()
{
  if (!qword_27CC13538)
  {
    sub_218EF5674();
    v0 = MEMORY[0x277D6D8B8];
    sub_218EF62D8(255, &qword_27CC13468, MEMORY[0x277D6D8B8]);
    sub_218EF5AD4(&qword_27CC134F8, sub_218EF5674);
    sub_218EF5A90(&qword_27CC13540, &qword_27CC13468, v0);
    v1 = sub_219BE9AD4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC13538);
    }
  }
}

void sub_218EF6214(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = MEMORY[0x277D6D8B8];
    sub_218EF62D8(255, &qword_27CC13468, MEMORY[0x277D6D8B8]);
    v8 = v7;
    v9 = sub_218EF5A90(&qword_27CC134A0, &qword_27CC13468, v6);
    v10 = a3(a1, v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_218EF62D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for MagazineCategoriesPickerSectionDescriptor;
    v8[1] = &type metadata for MagazineCategoriesPickerModel;
    v8[2] = sub_218DB6788();
    v8[3] = sub_218DB6840();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218EF635C()
{
  if (!qword_27CC13598)
  {
    type metadata accessor for MagazineCategoriesPickerBlueprintModifierFactory();
    sub_218EF5AD4(&qword_27CC135A0, type metadata accessor for MagazineCategoriesPickerBlueprintModifierFactory);
    v0 = type metadata accessor for MagazineCategoriesPickerInteractor();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC13598);
    }
  }
}

char *sub_218EF63F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = type metadata accessor for MagazineCategoriesPickerStyler();
  v29[3] = v10;
  v29[4] = &off_282A974C0;
  v29[0] = a1;
  v11 = type metadata accessor for MagazineCategoriesPickerViewController();
  v12 = objc_allocWithZone(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v29, v10);
  MEMORY[0x28223BE20](v13);
  v15 = (&v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v15;
  v28[3] = v10;
  v28[4] = &off_282A974C0;
  v28[0] = v17;
  *&v12[OBJC_IVAR____TtC7NewsUI238MagazineCategoriesPickerViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v18 = OBJC_IVAR____TtC7NewsUI238MagazineCategoriesPickerViewController_coverViewManager;
  sub_219BE6C14();
  swift_allocObject();
  *&v12[v18] = sub_219BE6C04();
  v19 = OBJC_IVAR____TtC7NewsUI238MagazineCategoriesPickerViewController_eventManager;
  sub_21874EDE8(0, &qword_27CC135A8, sub_218EF69A0, &type metadata for MagazineCategoriesPickerViewController.Event, MEMORY[0x277D6CAA0]);
  swift_allocObject();
  *&v12[v19] = sub_219BE1D34();
  *&v12[OBJC_IVAR____TtC7NewsUI238MagazineCategoriesPickerViewController_contentSizeObserver] = 0;
  sub_218718690(v28, &v12[OBJC_IVAR____TtC7NewsUI238MagazineCategoriesPickerViewController_styler]);
  v20 = &v12[OBJC_IVAR____TtC7NewsUI238MagazineCategoriesPickerViewController_eventHandler];
  *v20 = a2;
  *(v20 + 1) = a3;
  *&v12[OBJC_IVAR____TtC7NewsUI238MagazineCategoriesPickerViewController_blueprintViewController] = a4;
  *&v12[OBJC_IVAR____TtC7NewsUI238MagazineCategoriesPickerViewController_selectedCategory] = a5;
  v27.receiver = v12;
  v27.super_class = v11;
  swift_unknownObjectRetain();
  v21 = a4;

  v22 = objc_msgSendSuper2(&v27, sel_initWithNibName_bundle_, 0, 0);
  *(*&v22[OBJC_IVAR____TtC7NewsUI238MagazineCategoriesPickerViewController_eventHandler] + 24) = &off_282A5E3A0;
  swift_unknownObjectWeakAssign();
  v23 = *&v22[OBJC_IVAR____TtC7NewsUI238MagazineCategoriesPickerViewController_blueprintViewController];
  v24 = v22;
  v25 = v23;
  sub_219BE8744();

  __swift_destroy_boxed_opaque_existential_1(v28);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return v24;
}

void *sub_218EF669C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v15[3] = type metadata accessor for MagazineCategoriesPickerRouter();
  v15[4] = &off_282A795F8;
  v15[0] = a3;
  v14[3] = type metadata accessor for MagazineCategoriesPickerTracker();
  v14[4] = &off_282A867B0;
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

  v11(v12, &off_282A5BE08, ObjectType, a2);
  __swift_destroy_boxed_opaque_existential_1(v14);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return a5;
}

void *sub_218EF6794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v24 = type metadata accessor for MagazineCategoriesPickerRouter();
  v25 = &off_282A795F8;
  v23[0] = a3;
  v21 = v8;
  v22 = &off_282A867B0;
  v20[0] = a4;
  type metadata accessor for MagazineCategoriesPickerEventHandler();
  v9 = swift_allocObject();
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
  MEMORY[0x28223BE20](v10);
  v12 = (v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
  MEMORY[0x28223BE20](v14);
  v16 = (v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = sub_218EF669C(a1, a2, *v12, *v16, v9);
  __swift_destroy_boxed_opaque_existential_1(v20);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return v18;
}

unint64_t sub_218EF69A0()
{
  result = qword_27CC135B0;
  if (!qword_27CC135B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC135B0);
  }

  return result;
}

uint64_t type metadata accessor for MagazineGridItemModel()
{
  result = qword_27CC135B8;
  if (!qword_27CC135B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218EF6A40()
{
  sub_2189E96A0();
  if (v0 <= 0x3F)
  {
    sub_2189E9570(319);
    if (v1 <= 0x3F)
    {
      sub_2189E93F4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_218EF6AC8()
{
  v1 = type metadata accessor for MagazineGridItemModel();
  MEMORY[0x28223BE20](v1);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189F50E4(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *v3;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_2189E93F4();
      v8 = &v3[*(v16 + 48)];
      v17 = *&v3[*(v16 + 64) + 32];

      v18 = [v5[2] identifier];
      v14 = sub_219BF5414();

      v15 = sub_219BF0444();
      goto LABEL_7;
    }

    v6 = *(v3 + 2);
    sub_2189E9530(*(v3 + 4), *(v3 + 5), *(v3 + 6));
    sub_2189E9570(0);
    v8 = &v3[*(v7 + 64)];
    v9 = *&v3[*(v7 + 80) + 32];

    v10 = [v5 identifier];
  }

  else
  {
    v6 = *(v3 + 2);
    sub_2189E96A0();
    v8 = &v3[*(v11 + 48)];
    v12 = *&v3[*(v11 + 64) + 32];

    v10 = [v5 identifier];
  }

  v13 = v10;
  v14 = sub_219BF5414();

  v15 = sub_219BF0744();
LABEL_7:
  (*(*(v15 - 8) + 8))(v8, v15);
  return v14;
}

uint64_t sub_218EF6CE0()
{
  v1 = v0;
  v2 = sub_219BE59F4();
  v107 = *(v2 - 8);
  v108 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v5 = (&v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v106 = (&v96 - v6);
  v7 = sub_219BE5A04();
  v105 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v96 - v11;
  v13 = sub_219BF0744();
  v14 = *(v13 - 8);
  v109 = v13;
  v110 = v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v96 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v96 - v21;
  v23 = type metadata accessor for MagazineGridItemModel();
  MEMORY[0x28223BE20](v23);
  v25 = &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189F50E4(v1, v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      *v117 = *v25;
      *&v117[9] = *(v25 + 9);
      v27 = *(v25 + 5);
      v103 = *(v25 + 4);
      v28 = v103 != 0;
      v105 = *(v25 + 6);
      v106 = v27;
      LODWORD(v104) = v25[56];
      sub_2189E9570(0);
      v30 = v29;
      v31 = *&v25[*(v29 + 80) + 32];

      v32 = [*v117 sourceChannel];
      v102 = *(v30 + 64);
      sub_219BE5A14();
      *v5 = v32;
      v5[1] = 2 * v28;
      v101 = v32;
      v34 = v107;
      v33 = v108;
      (*(v107 + 104))(v5, *MEMORY[0x277D31A10], v108);
      swift_unknownObjectRetain();
      v100 = MEMORY[0x21CEBC780](v5, MEMORY[0x277D84FA0]);
      (*(v34 + 8))(v5, v33);
      v35 = *v117;
      v36 = v117[8];
      v37 = v117[9];
      LOBYTE(v31) = v117[10];
      LOBYTE(v32) = v117[11];
      LOBYTE(v34) = v117[12];
      v38 = *&v117[16];
      LODWORD(v108) = v117[24];
      v39 = swift_allocObject();
      *(v39 + 16) = v35;
      *(v39 + 24) = v36;
      *(v39 + 25) = v37;
      *(v39 + 26) = v31;
      *(v39 + 27) = v32;
      *(v39 + 28) = v34;
      *(v39 + 32) = v38;
      *(v39 + 40) = v108;
      swift_allocObject();
      sub_218950CAC(v117, v116);
      v40 = sub_219BE59B4();
      swift_unknownObjectRelease();
      sub_2189E9530(v103, v106, v105);
      sub_218950D08(v117);
      (*(v110 + 8))(&v25[v102], v109);
    }

    else
    {
      v57 = *v25;
      sub_2189E93F4();
      v59 = *(v58 + 48);
      v60 = *&v25[*(v58 + 64) + 32];

      sub_219BE5A14();
      v61 = v106;
      v62 = v107;
      *v106 = *(v57 + 16);
      v61[1] = 0;
      v63 = v108;
      (*(v62 + 104))(v61, *MEMORY[0x277D31A10], v108);
      swift_unknownObjectRetain();
      MEMORY[0x21CEBC780](v61, MEMORY[0x277D84FA0]);
      (*(v62 + 8))(v61, v63);
      swift_allocObject();
      v40 = sub_219BE59B4();
      v64 = sub_219BF0444();
      (*(*(v64 - 8) + 8))(&v25[v59], v64);
    }
  }

  else
  {
    v96 = v12;
    v97 = v10;
    v101 = *v25;
    v116[0] = v25[8];
    v115 = v25[9];
    v114 = v25[10];
    v113 = v25[11];
    v112 = v25[12];
    v102 = *(v25 + 2);
    v111 = v25[24];
    sub_2189E96A0();
    v41 = v22;
    v43 = *(v42 + 48);
    v44 = *&v25[*(v42 + 64) + 32];

    v45 = v109;
    v46 = v110;
    (*(v110 + 32))(v41, &v25[v43], v109);
    v47 = *(v46 + 16);
    v104 = v41;
    v47(v20, v41, v45);
    sub_219BF0704();
    v48 = sub_218EFC3E4(&qword_280E90EB8, MEMORY[0x277D32F30]);
    v49 = sub_219BF70D4();
    v50 = *(v46 + 8);
    v50(v17, v45);
    v110 = v46 + 8;
    v103 = v50;
    v100 = v17;
    v99 = v48;
    if (v49)
    {
      v50(v20, v45);
      sub_218EFC5A4(0, &unk_280E8BD80, MEMORY[0x277D31B20], MEMORY[0x277D84560]);
      v51 = sub_219BEAAD4();
      v52 = *(v51 - 8);
      v53 = (*(v52 + 80) + 32) & ~*(v52 + 80);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_219C09BA0;
      v55 = *MEMORY[0x277D31B10];
      v56 = *(v52 + 104);
      v98 = v54;
      v56(v54 + v53, v55, v51);
    }

    else
    {
      sub_219BF0714();
      v65 = sub_219BF70D4();
      v50(v17, v45);
      v50(v20, v45);
      sub_218EFC5A4(0, &unk_280E8BD80, MEMORY[0x277D31B20], MEMORY[0x277D84560]);
      v66 = sub_219BEAAD4();
      v67 = *(v66 - 8);
      v68 = *(v67 + 72);
      v69 = (*(v67 + 80) + 32) & ~*(v67 + 80);
      v70 = swift_allocObject();
      if (v65)
      {
        *(v70 + 16) = xmmword_219C09BA0;
        v71 = *MEMORY[0x277D31B18];
        v72 = *(v67 + 104);
        v98 = v70;
        v72(v70 + v69, v71, v66);
      }

      else
      {
        *(v70 + 16) = xmmword_219C09EC0;
        v98 = v70;
        v73 = v70 + v69;
        v74 = *(v67 + 104);
        v74(v70 + v69, *MEMORY[0x277D31B10], v66);
        v74(v73 + v68, *MEMORY[0x277D31B18], v66);
      }

      v50 = v103;
    }

    sub_218EFC5A4(0, &unk_280E8C008, MEMORY[0x277D31AD0], MEMORY[0x277D84560]);
    v75 = v105;
    v76 = (v105[80] + 32) & ~v105[80];
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_219C09BA0;
    v78 = *(v75 + 13);
    v78(v77 + v76, *MEMORY[0x277D31A98], v7);
    v79 = sub_218C3D46C(v77);
    swift_setDeallocating();
    v80 = *(v75 + 1);
    v80(v77 + v76, v7);
    swift_deallocClassInstance();
    *v117 = v79;
    v81 = v100;
    sub_219BF06C4();
    LOBYTE(v77) = sub_219BF70D4();
    v50(v81, v45);
    if (v77)
    {
      v82 = v97;
      v78(v97, *MEMORY[0x277D31AB8], v7);
      v83 = v96;
      sub_219498044(v96, v82);
      v80(v83, v7);
    }

    sub_219BE5A14();
    v84 = v106;
    v85 = v107;
    v86 = v101;
    v87 = v98;
    *v106 = v101;
    v84[1] = v87;
    v84[2] = 0;
    v88 = v108;
    (*(v85 + 104))(v84, *MEMORY[0x277D31A28], v108);
    v89 = *v117;
    v90 = v86;
    MEMORY[0x21CEBC780](v84, v89);

    (*(v85 + 8))(v84, v88);
    LOBYTE(v84) = v116[0];
    LOBYTE(v85) = v115;
    v91 = v114;
    v92 = v113;
    v93 = v112;
    LOBYTE(v88) = v111;
    v94 = swift_allocObject();
    *(v94 + 16) = v90;
    *(v94 + 24) = v84;
    *(v94 + 25) = v85;
    *(v94 + 26) = v91;
    *(v94 + 27) = v92;
    *(v94 + 28) = v93;
    *(v94 + 32) = v102;
    *(v94 + 40) = v88;
    swift_allocObject();
    v40 = sub_219BE59B4();
    v103(v104, v109);
  }

  return v40;
}

uint64_t sub_218EF7908()
{
  v1 = type metadata accessor for MagazineGridItemModel();
  MEMORY[0x28223BE20](v1);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189F50E4(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *v3;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {

      sub_2189E93F4();
      v20 = *(v19 + 48);
      v21 = *&v3[*(v19 + 64) + 32];

      v22 = sub_219BF0444();
      (*(*(v22 - 8) + 8))(&v3[v20], v22);
      return 1;
    }

    v6 = v3[8];
    v25 = v3[9];
    v26 = v6;
    v7 = v3[10];
    v8 = v3[11];
    v9 = v3[12];
    v10 = *(v3 + 2);
    v11 = v3[24];
    sub_2189E9530(*(v3 + 4), *(v3 + 5), *(v3 + 6));
    sub_2189E9570(0);
    v13 = 80;
    v14 = 64;
  }

  else
  {
    v15 = v3[8];
    v25 = v3[9];
    v26 = v15;
    v7 = v3[10];
    v8 = v3[11];
    v9 = v3[12];
    v10 = *(v3 + 2);
    v11 = v3[24];
    sub_2189E96A0();
    v13 = 64;
    v14 = 48;
  }

  v16 = *(v12 + v14);
  v17 = *&v3[*(v12 + v13) + 32];

  v18 = sub_219BF0744();
  (*(*(v18 - 8) + 8))(&v3[v16], v18);
  v27 = v5;
  v28 = v26;
  v29 = v25;
  v30 = v7;
  v31 = v8;
  v32 = v9;
  v33 = v10;
  v34 = v11;
  sub_218950D08(&v27);
  return v11;
}

id sub_218EF7B34()
{
  v1 = type metadata accessor for MagazineGridItemModel();
  MEMORY[0x28223BE20](v1);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189F50E4(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *v3;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_2189E93F4();
      v8 = &v3[*(v15 + 48)];
      v16 = *&v3[*(v15 + 64) + 32];

      v13 = v5[2];
      swift_unknownObjectRetain();

      v14 = sub_219BF0444();
      goto LABEL_7;
    }

    v6 = *(v3 + 2);
    sub_2189E9530(*(v3 + 4), *(v3 + 5), *(v3 + 6));
    sub_2189E9570(0);
    v8 = &v3[*(v7 + 64)];
    v9 = *&v3[*(v7 + 80) + 32];

    v10 = [v5 sourceChannel];
  }

  else
  {
    v6 = *(v3 + 2);
    sub_2189E96A0();
    v8 = &v3[*(v11 + 48)];
    v12 = *&v3[*(v11 + 64) + 32];

    v10 = [v5 sourceChannel];
  }

  v13 = v10;

  v14 = sub_219BF0744();
LABEL_7:
  (*(*(v14 - 8) + 8))(v8, v14);
  return v13;
}

uint64_t sub_218EF7D18()
{
  v1 = v0;
  v2 = type metadata accessor for MagazineGridItemModel();
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189F50E4(v1, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = *v4;
  if (!EnumCaseMultiPayload)
  {
    v13 = *(v4 + 2);
    sub_2189E96A0();
    v15 = v14;
    v16 = &v4[*(v14 + 64)];
    v17 = v16[4];
    if (v16[1])
    {
      v12 = *v16;
    }

    else
    {
      v24 = [v6 title];
      v12 = sub_219BF5414();
    }

    v23 = *(v15 + 48);
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v7 = *(v4 + 2);
    sub_2189E9530(*(v4 + 4), *(v4 + 5), *(v4 + 6));
    sub_2189E9570(0);
    v9 = v8;
    v10 = &v4[*(v8 + 80)];
    v11 = v10[4];
    if (v10[1])
    {
      v12 = *v10;
    }

    else
    {
      v22 = [v6 title];
      v12 = sub_219BF5414();
    }

    v23 = *(v9 + 64);
LABEL_13:
    v19 = &v4[v23];
    v25 = sub_219BF0744();
    goto LABEL_16;
  }

  sub_2189E93F4();
  v19 = &v4[*(v18 + 48)];
  v20 = &v4[*(v18 + 64)];
  v21 = v20[4];
  if (v20[1])
  {
    v12 = *v20;
  }

  else
  {
    v26 = [v6[2] displayName];
    v12 = sub_219BF5414();
  }

  v25 = sub_219BF0444();
LABEL_16:
  (*(*(v25 - 8) + 8))(v19, v25);
  return v12;
}

uint64_t sub_218EF7F98@<X0>(unsigned int *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for MagazineGridItemModel();
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189F50E4(v3, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = *v9;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {

      sub_2189E93F4();
      v13 = &v9[*(v20 + 48)];
      v21 = *&v9[*(v20 + 64) + 32];

      v22 = *a1;
      v23 = a2(0);
      (*(*(v23 - 8) + 104))(a3, v22, v23);
      v19 = sub_219BF0444();
      return (*(*(v19 - 8) + 8))(v13, v19);
    }

    sub_2189E9530(*(v9 + 4), *(v9 + 5), *(v9 + 6));
    sub_2189E9570(0);
    v13 = &v9[*(v12 + 64)];
    v14 = *(v12 + 80);
  }

  else
  {

    sub_2189E96A0();
    v13 = &v9[*(v15 + 48)];
    v14 = *(v15 + 64);
  }

  v16 = *&v9[v14 + 32];

  v17 = *a1;
  v18 = a2(0);
  (*(*(v18 - 8) + 104))(a3, v17, v18);
  v19 = sub_219BF0744();
  return (*(*(v19 - 8) + 8))(v13, v19);
}

uint64_t sub_218EF81BC()
{
  v1 = v0;
  v2 = sub_219BF0444();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v31[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_219BF0744();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v31[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for MagazineGridItemModel();
  MEMORY[0x28223BE20](v10);
  v12 = &v31[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2189F50E4(v1, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v14 = *v12;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_2189E93F4();
      v24 = *(v23 + 48);
      v25 = *&v12[*(v23 + 64) + 32];

      (*(v3 + 32))(v5, &v12[v24], v2);
      v32 = 0;
      v33 = 0xE000000000000000;
      v26 = [v14[2] name];
      v27 = sub_219BF5414();
      v29 = v28;

      MEMORY[0x21CECC330](v27, v29);

      MEMORY[0x21CECC330](36, 0xE100000000000000);
      sub_219BF7484();

      v22 = v32;
      (*(v3 + 8))(v5, v2);
      return v22;
    }

    v15 = v12[8];
    v16 = *(v12 + 2);
    sub_2189E9530(*(v12 + 4), *(v12 + 5), *(v12 + 6));
    sub_2189E9570(0);
    v18 = *(v17 + 64);
    v19 = *(v17 + 80);
  }

  else
  {
    v15 = v12[8];
    v16 = *(v12 + 2);
    sub_2189E96A0();
    v18 = *(v20 + 48);
    v19 = *(v20 + 64);
  }

  v21 = *&v12[v19 + 32];

  (*(v7 + 32))(v9, &v12[v18], v6);
  v32 = 0;
  v33 = 0xE000000000000000;
  v31[15] = v15;
  sub_219BF7484();
  MEMORY[0x21CECC330](36, 0xE100000000000000);
  sub_219BF7484();

  v22 = v32;
  (*(v7 + 8))(v9, v6);
  return v22;
}

uint64_t sub_218EF8560()
{
  v1 = v0;
  v2 = type metadata accessor for MagazineGridItemModel();
  MEMORY[0x28223BE20](v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189F50E4(v1, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = *v4;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {

      sub_2189E93F4();
      v8 = &v4[*(v13 + 48)];
      v14 = *&v4[*(v13 + 64) + 32];

      v12 = sub_219BF0444();
      goto LABEL_7;
    }

    sub_2189E9530(*(v4 + 4), *(v4 + 5), *(v4 + 6));
    sub_2189E9570(0);
    v8 = &v4[*(v7 + 64)];
    v9 = *(v7 + 80);
  }

  else
  {

    sub_2189E96A0();
    v8 = &v4[*(v10 + 48)];
    v9 = *(v10 + 64);
  }

  v11 = *&v4[v9 + 32];

  v12 = sub_219BF0744();
LABEL_7:
  (*(*(v12 - 8) + 8))(v8, v12);
  return 1;
}

uint64_t sub_218EF86F0@<X0>(char *a1@<X8>)
{
  v3 = sub_219BDBD34();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EFC5A4(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v31 - v8;
  v10 = type metadata accessor for MagazineGridItemModel();
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189F50E4(v1, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v14 = *v12;
  if (!EnumCaseMultiPayload)
  {
    v15 = *(v12 + 2);
    sub_2189E96A0();
    v17 = &v12[*(v20 + 48)];
    v21 = *&v12[*(v20 + 64) + 32];

    v19 = [v14 publicationDate];
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v15 = *(v12 + 2);
    sub_2189E9530(*(v12 + 4), *(v12 + 5), *(v12 + 6));
    sub_2189E9570(0);
    v17 = &v12[*(v16 + 64)];
    v18 = *&v12[*(v16 + 80) + 32];

    v19 = [v14 publicationDate];
LABEL_5:
    v22 = v19;
    sub_219BDBCA4();

    v23 = sub_219BF0744();
    return (*(*(v23 - 8) + 8))(v17, v23);
  }

  sub_2189E93F4();
  v25 = v24;
  v26 = *&v12[*(v24 + 64) + 32];

  v27 = [v14[2] publisherSpecifiedArticleIDsModifiedDate];
  if (v27)
  {
    v28 = v27;
    sub_219BDBCA4();

    v29 = *(v4 + 32);
    v29(v9, v6, v3);
    (*(v4 + 56))(v9, 0, 1, v3);
    v29(a1, v9, v3);
  }

  else
  {
    (*(v4 + 56))(v9, 1, 1, v3);
    sub_219BDBBB4();

    if ((*(v4 + 48))(v9, 1, v3) != 1)
    {
      sub_2187104B0(v9, &qword_280EE9C40, MEMORY[0x277CC9578]);
    }
  }

  v17 = &v12[*(v25 + 48)];
  v23 = sub_219BF0444();
  return (*(*(v23 - 8) + 8))(v17, v23);
}

uint64_t sub_218EF8AD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_218EFC3E4(&qword_27CC135E0, type metadata accessor for MagazineGridItemModel);

  return MEMORY[0x2821D2598](a1, a2, v4);
}

uint64_t sub_218EF8CE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v205 = a1;
  v207 = a2;
  v2 = MEMORY[0x277D83D88];
  sub_218EFC5A4(0, &qword_27CC13600, MEMORY[0x277D32F68], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v188 = &v172 - v4;
  v187 = sub_219BF07A4();
  v186 = *(v187 - 8);
  MEMORY[0x28223BE20](v187);
  v185 = &v172 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EFC5A4(0, &qword_27CC13608, MEMORY[0x277D32CD0], v2);
  MEMORY[0x28223BE20](v6 - 8);
  v181 = &v172 - v7;
  sub_218EFC5A4(0, &unk_280E90F30, MEMORY[0x277D32CD8], v2);
  MEMORY[0x28223BE20](v8 - 8);
  v182 = (&v172 - v9);
  v197 = sub_219BF0444();
  v196 = *(v197 - 1);
  v10 = MEMORY[0x28223BE20](v197);
  v193 = &v172 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v195 = &v172 - v12;
  v200 = sub_219BF0534();
  v199 = *(v200 - 8);
  v13 = MEMORY[0x28223BE20](v200);
  v179 = &v172 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v178 = &v172 - v15;
  v203 = sub_219BF06A4();
  v202 = *(v203 - 8);
  v16 = MEMORY[0x28223BE20](v203);
  v183 = &v172 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v201 = &v172 - v19;
  MEMORY[0x28223BE20](v18);
  v180 = &v172 - v20;
  v212 = sub_219BF19D4();
  v206 = *(v212 - 8);
  v21 = MEMORY[0x28223BE20](v212);
  v194 = (&v172 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = MEMORY[0x28223BE20](v21);
  v189 = &v172 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v208 = &v172 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v172 - v27;
  v29 = sub_219BF0574();
  v210 = *(v29 - 8);
  v211 = v29;
  v30 = MEMORY[0x28223BE20](v29);
  v192 = &v172 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v198 = &v172 - v33;
  MEMORY[0x28223BE20](v32);
  v35 = &v172 - v34;
  sub_218EFC5A4(0, &qword_27CC13610, MEMORY[0x277D32F58], v2);
  v37 = MEMORY[0x28223BE20](v36 - 8);
  v177 = &v172 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v40 = &v172 - v39;
  sub_218EFC5A4(0, &qword_280E90EA8, MEMORY[0x277D32F60], v2);
  v42 = MEMORY[0x28223BE20](v41 - 8);
  v190 = &v172 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  v46 = &v172 - v45;
  MEMORY[0x28223BE20](v44);
  v48 = &v172 - v47;
  v213 = sub_219BF0744();
  v209 = *(v213 - 8);
  v49 = MEMORY[0x28223BE20](v213);
  v204 = &v172 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x28223BE20](v49);
  v191 = &v172 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v55 = &v172 - v54;
  v56 = MEMORY[0x28223BE20](v53);
  v58 = &v172 - v57;
  MEMORY[0x28223BE20](v56);
  v60 = &v172 - v59;
  v61 = type metadata accessor for MagazineGridItemModel();
  MEMORY[0x28223BE20](v61);
  v63 = &v172 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189F50E4(v205, v63);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v205 = v55;
      v184 = v46;
      *v215 = *v63;
      *&v215[9] = *(v63 + 9);
      v65 = *(v63 + 5);
      v197 = *(v63 + 4);
      v196 = v65;
      v195 = *(v63 + 6);
      LODWORD(v193) = v63[56];
      sub_2189E9570(0);
      v67 = *(v66 + 64);
      v68 = &v63[*(v66 + 80)];
      v69 = *(v68 + 1);
      *v216 = *v68;
      *&v216[16] = v69;
      v217 = *(v68 + 2);
      v70 = v209;
      v71 = v191;
      v72 = v213;
      (*(v209 + 32))(v191, &v63[v67], v213);
      v182 = *(v70 + 16);
      v182(v204, v71, v72);
      v73 = *&v216[8];
      v74 = *&v216[24];
      v75 = v217;
      v189 = v217;
      if (v217)
      {

        v76 = v75;

        v77 = v177;
        sub_219BF0764();
        v78 = sub_219BF0774();
        (*(*(v78 - 8) + 56))(v77, 0, 1, v78);
      }

      else
      {
        v111 = sub_219BF0774();
        (*(*(v111 - 8) + 56))(v177, 1, 1, v111);
      }

      v112 = v190;
      v181 = v73;
      sub_219BF0784();
      v113 = sub_219BF0794();
      (*(*(v113 - 8) + 56))(v112, 0, 1, v113);
      v114 = v211;
      v115 = v210;
      v116 = v192;
      (*(v210 + 104))(v192, *MEMORY[0x277D32D70], v211);
      sub_218950CAC(v215, v214);
      v117 = 256;
      if (!v215[9])
      {
        v117 = 0;
      }

      v118 = v194;
      v119 = v204;
      sub_2198D47EC(*v215, v117 | v215[8], v194);
      v120 = MEMORY[0x277D32D48];
      if (!v215[12])
      {
        v120 = MEMORY[0x277D32D40];
      }

      (*(v199 + 104))(v179, *v120, v200);
      v200 = v74;
      v121 = v183;
      sub_219BF0694();
      v122 = *v215;
      v123 = v206;
      (*(v206 + 16))(v208, v118, v212);
      v182(v205, v119, v213);
      (*(v115 + 16))(v198, v116, v114);
      sub_218DFDB20(v112, v184);
      v124 = *&v215[16];
      v125 = v202;
      v126 = v203;
      (*(v202 + 16))(v201, v121, v203);
      v127 = v122;
      v128 = v124;
      v129 = v185;
      sub_219BF0654();
      sub_218950D08(v215);
      (*(v125 + 8))(v121, v126);
      (*(v123 + 8))(v194, v212);
      (*(v210 + 8))(v192, v211);
      sub_2187104B0(v190, &qword_280E90EA8, MEMORY[0x277D32F60]);
      v130 = *(v209 + 8);
      v131 = v213;
      v130(v204, v213);
      v132 = v188;
      v133 = v197;
      v134 = v196;
      v135 = v195;
      v136 = v191;
      sub_218EFA450(v197, v196, v195, v193, v191, v216, v188);
      sub_2189E9530(v133, v134, v135);

      sub_218950D08(v215);
      v130(v136, v131);
      sub_218EFC42C();
      v138 = *(v137 + 48);
      v139 = v207;
      (*(v186 + 32))(v207, v129, v187);
      sub_218EFC4D0(v132, v139 + v138);
      v140 = *MEMORY[0x277D31E20];
      v141 = sub_219BEDC24();
      return (*(*(v141 - 8) + 104))(v139, v140, v141);
    }

    else
    {
      v94 = *v63;
      sub_2189E93F4();
      v96 = *(v95 + 48);
      v97 = &v63[*(v95 + 64)];
      v213 = *v97;
      v99 = v97[2];
      v98 = v97[3];
      v100 = v97[4];
      v209 = v97[5];
      v101 = v196;
      v102 = &v63[v96];
      v103 = v195;
      v104 = v197;
      (*(v196 + 32))(v195, v102, v197);
      v105 = [*(v94 + 16) identifier];
      v106 = sub_219BF5414();
      v210 = v107;
      v211 = v106;
      (*(v206 + 104))(v189, *MEMORY[0x277D334C8], v212);
      if (v98)
      {
        v108 = v99;
      }

      else
      {
        v108 = 0;
      }

      v212 = v108;
      (*(v101 + 16))(v193, v103, v104);
      if (v100)
      {
        v100 = v100;
        swift_unknownObjectRetain();

        v109 = v181;
        sub_219BF0474();
        v110 = 0;
      }

      else
      {

        swift_unknownObjectRetain();

        v110 = 1;
        v109 = v181;
      }

      v166 = sub_219BF0484();
      (*(*(v166 - 8) + 56))(v109, v110, 1, v166);
      v167 = v182;
      sub_219BF0464();
      v168 = sub_219BF0494();
      (*(*(v168 - 8) + 56))(v167, 0, 1, v168);
      v169 = v207;
      sub_219BF03D4();

      (*(v196 + 8))(v195, v197);
      v170 = *MEMORY[0x277D31E10];
      v171 = sub_219BEDC24();
      return (*(*(v171 - 8) + 104))(v169, v170, v171);
    }
  }

  else
  {
    v204 = v40;
    v175 = v48;
    v174 = v35;
    v176 = v28;
    *v216 = *v63;
    *&v216[9] = *(v63 + 9);
    sub_2189E96A0();
    v80 = *(v79 + 48);
    v81 = &v63[*(v79 + 64)];
    v82 = *(v81 + 1);
    v192 = *v81;
    v83 = *(v81 + 3);
    v191 = *(v81 + 2);
    v84 = *(v81 + 4);
    v85 = v209;
    v86 = v213;
    (*(v209 + 32))(v60, &v63[v80], v213);
    v87 = *(v85 + 16);
    v173 = v58;
    v205 = v60;
    v88 = v60;
    v89 = v84;
    v194 = v87;
    v193 = (v85 + 16);
    (v87)(v58, v88, v86);
    v184 = v46;
    v197 = v84;
    if (v84)
    {
      v90 = v55;

      v91 = v89;

      v92 = v204;
      sub_219BF0764();
      v93 = sub_219BF0774();
      (*(*(v93 - 8) + 56))(v92, 0, 1, v93);
    }

    else
    {
      v90 = v55;
      v143 = sub_219BF0774();
      (*(*(v143 - 8) + 56))(v204, 1, 1, v143);
    }

    v144 = v175;
    v195 = v82;
    v196 = v83;
    sub_219BF0784();
    v145 = sub_219BF0794();
    (*(*(v145 - 8) + 56))(v144, 0, 1, v145);
    v146 = v211;
    v147 = v210;
    v148 = v174;
    (*(v210 + 104))(v174, *MEMORY[0x277D32D70], v211);
    v149 = 256;
    if (!v216[9])
    {
      v149 = 0;
    }

    if (v216[12])
    {
      v150 = MEMORY[0x277D32D48];
    }

    else
    {
      v150 = MEMORY[0x277D32D40];
    }

    v151 = v176;
    v152 = v173;
    sub_2198D47EC(*v216, v149 | v216[8], v176);
    (*(v199 + 104))(v178, *v150, v200);
    v153 = v180;
    sub_219BF0694();
    v154 = *v216;
    v155 = v206;
    (*(v206 + 16))(v208, v151, v212);
    (v194)(v90, v152, v213);
    (*(v147 + 16))(v198, v148, v146);
    sub_218DFDB20(v144, v184);
    v156 = *&v216[16];
    v157 = v202;
    v158 = v203;
    (*(v202 + 16))(v201, v153, v203);
    v159 = v154;
    v160 = v156;
    v161 = v207;
    sub_219BF0654();
    sub_218950D08(v216);

    (*(v157 + 8))(v153, v158);
    (*(v155 + 8))(v176, v212);
    (*(v210 + 8))(v174, v211);
    sub_2187104B0(v175, &qword_280E90EA8, MEMORY[0x277D32F60]);
    v162 = *(v209 + 8);
    v163 = v213;
    v162(v173, v213);
    v162(v205, v163);
    v164 = *MEMORY[0x277D31E18];
    v165 = sub_219BEDC24();
    return (*(*(v165 - 8) + 104))(v161, v164, v165);
  }
}

uint64_t sub_218EFA450@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v86 = a5;
  v94 = a4;
  v12 = sub_219BF0534();
  v80 = *(v12 - 8);
  v81 = v12;
  MEMORY[0x28223BE20](v12);
  v79 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BF06A4();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v83 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v92 = &v67 - v18;
  v93 = sub_219BF19D4();
  v82 = *(v93 - 8);
  v19 = MEMORY[0x28223BE20](v93);
  v89 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v91 = &v67 - v21;
  v90 = sub_219BF0574();
  v88 = *(v90 - 8);
  v22 = MEMORY[0x28223BE20](v90);
  v78 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v87 = &v67 - v24;
  v25 = MEMORY[0x277D83D88];
  sub_218EFC5A4(0, &qword_27CC13610, MEMORY[0x277D32F58], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v67 - v27;
  sub_218EFC5A4(0, &qword_280E90EA8, MEMORY[0x277D32F60], v25);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v77 = &v67 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v33 = &v67 - v32;
  v34 = sub_219BF0744();
  v35 = *(v34 - 8);
  v36 = MEMORY[0x28223BE20](v34);
  MEMORY[0x28223BE20](v36);
  if (a1)
  {
    v72 = v39;
    v95 = v33;
    v74 = v15;
    v75 = v14;
    v40 = a1;
    v76 = a7;
    v73 = v35;
    v41 = *(v35 + 16);
    v85 = &v67 - v37;
    v86 = v38;
    v71 = v41;
    v70 = v35 + 16;
    v41();
    v69 = *(a6 + 16);
    v42 = *(a6 + 32);
    v84 = a3;
    if (v42)
    {
      v43 = a2;
      sub_218EFC564(a1, a2, a3);

      v44 = v42;

      sub_219BF0764();
      v45 = sub_219BF0774();
      (*(*(v45 - 8) + 56))(v28, 0, 1, v45);
    }

    else
    {
      v49 = sub_219BF0774();
      (*(*(v49 - 8) + 56))(v28, 1, 1, v49);
      v43 = a2;
      sub_218EFC564(a1, a2, a3);
    }

    v50 = v95;
    sub_219BF0784();
    v51 = sub_219BF0794();
    (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
    v52 = v87;
    v53 = v88;
    v54 = v90;
    (*(v88 + 104))(v87, *MEMORY[0x277D32D70], v90);
    v68 = v43;
    v55 = v91;
    v56 = v85;
    sub_2198D47EC(v40, v43 & 0x101, v91);
    v57 = MEMORY[0x277D32D40];
    if ((v43 & 0x100000000) != 0)
    {
      v57 = MEMORY[0x277D32D48];
    }

    (*(v80 + 104))(v79, *v57, v81);
    v58 = v92;
    sub_219BF0694();
    v59 = v82;
    (*(v82 + 16))(v89, v55, v93);
    (v71)(v72, v56, v86);
    (*(v53 + 16))(v78, v52, v54);
    sub_218DFDB20(v95, v77);
    v60 = v74;
    v61 = v75;
    (*(v74 + 16))(v83, v58, v75);
    v62 = v40;
    v63 = v84;
    v64 = v84;
    v65 = v76;
    sub_219BF0654();
    sub_2189E9530(v40, v68, v63);
    (*(v60 + 8))(v92, v61);
    (*(v59 + 8))(v91, v93);
    (*(v88 + 8))(v87, v90);
    sub_2187104B0(v95, &qword_280E90EA8, MEMORY[0x277D32F60]);
    (*(v73 + 8))(v85, v86);
    v66 = sub_219BF07A4();
    return (*(*(v66 - 8) + 56))(v65, 0, 1, v66);
  }

  else
  {
    v46 = sub_219BF07A4();
    v47 = *(*(v46 - 8) + 56);

    return v47(a7, 1, 1, v46);
  }
}

uint64_t sub_218EFAD90@<X0>(uint64_t a1@<X8>)
{
  sub_218EF8CE0(v1, a1);
  v3 = *MEMORY[0x277D32CF8];
  v4 = sub_219BF0614();
  v5 = *(*(v4 - 8) + 104);

  return v5(a1, v3, v4);
}

uint64_t sub_218EFAE2C()
{
  sub_218EF7D18();
  sub_219BF54D4();

  v0 = sub_219BF5494();
  v2 = v1;

  sub_218EF7D18();
  sub_219BF54D4();

  v3 = sub_219BF5494();
  v5 = v4;

  if (v0 == v3 && v2 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_219BF78F4();
  }

  return v6 & 1;
}

uint64_t sub_218EFAF1C()
{
  sub_218EF7D18();
  sub_219BF54D4();

  v0 = sub_219BF5494();
  v2 = v1;

  sub_218EF7D18();
  sub_219BF54D4();

  v3 = sub_219BF5494();
  v5 = v4;

  if (v0 == v3 && v2 == v5)
  {

    v6 = 1;
  }

  else
  {
    v7 = sub_219BF78F4();

    v6 = v7 ^ 1;
  }

  return v6 & 1;
}

uint64_t sub_218EFB020()
{
  sub_218EF7D18();
  sub_219BF54D4();

  v0 = sub_219BF5494();
  v2 = v1;

  sub_218EF7D18();
  sub_219BF54D4();

  v3 = sub_219BF5494();
  v5 = v4;

  if (v0 == v3 && v2 == v5)
  {

    v6 = 1;
  }

  else
  {
    v7 = sub_219BF78F4();

    v6 = v7 ^ 1;
  }

  return v6 & 1;
}

uint64_t sub_218EFB124()
{
  sub_218EF7D18();
  sub_219BF54D4();

  v0 = sub_219BF5494();
  v2 = v1;

  sub_218EF7D18();
  sub_219BF54D4();

  v3 = sub_219BF5494();
  v5 = v4;

  if (v0 == v3 && v2 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_219BF78F4();
  }

  return v6 & 1;
}

uint64_t sub_218EFB214(void *a1)
{
  sub_219BF4284();
  v2 = [a1 sourceChannel];
  return sub_219BF4274();
}

uint64_t sub_218EFB25C()
{
  sub_219BF4284();
  swift_unknownObjectRetain();
  return sub_219BF4274();
}

uint64_t sub_218EFB304(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BF0444();
  v118 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v111 - v8;
  v10 = sub_219BF0744();
  v119 = *(v10 - 8);
  v120 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v117 = (&v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v11);
  v116 = (&v111 - v14);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v111 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v111 - v18;
  sub_218EFC380();
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v111 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = &v23[*(v21 + 56)];
  sub_2189F50E4(a1, v23);
  sub_2189F50E4(a2, v24);
  type metadata accessor for MagazineGridItemModel();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      *v122 = *v23;
      *&v122[9] = *(v23 + 9);
      v27 = *(v23 + 4);
      v26 = *(v23 + 5);
      v28 = *(v23 + 6);
      sub_2189E9570(0);
      v30 = *(v29 + 64);
      v31 = *(v29 + 80);
      v32 = *&v23[v31 + 16];
      v123 = *&v23[v31];
      v124 = v32;
      v125 = *&v23[v31 + 32];
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v115 = v28;
        *v121 = *v24;
        *&v121[9] = *(v24 + 9);
        v33 = *(v24 + 40);
        v118 = *(v24 + 32);
        v34 = *(v24 + 48);
        v112 = v33;
        v113 = v34;
        v114 = *(v24 + 56);
        v35 = *(v24 + v31 + 16);
        v126 = *(v24 + v31);
        v127 = v35;
        v128 = *(v24 + v31 + 32);
        v36 = *(v119 + 4);
        v37 = &v23[v30];
        v38 = v120;
        v36(v116, v37, v120);
        v36(v117, (v24 + v30), v38);
        v39 = [*v122 identifier];
        v40 = sub_219BF5414();
        v42 = v41;

        v43 = [*v121 identifier];
        v44 = sub_219BF5414();
        v46 = v45;

        if (v40 == v44 && v42 == v46)
        {
        }

        else
        {
          v87 = sub_219BF78F4();

          if ((v87 & 1) == 0)
          {
            goto LABEL_51;
          }
        }

        if (v27)
        {
          v88 = [v27 identifier];
          v89 = sub_219BF5414();
          v91 = v90;

          if (!v118)
          {
            if (!v91)
            {
              goto LABEL_49;
            }

LABEL_47:
            v141 = v126;
            sub_218744C90(&v141, &qword_280E8F860);
            v142 = v127;
            sub_218744C90(&v142, &qword_280E8F860);
            v143 = v128;
            sub_218744C90(&v143, &qword_27CC0EA08);
            v144 = v123;
            sub_218744C90(&v144, &qword_280E8F860);
            v145 = v124;
            sub_218744C90(&v145, &qword_280E8F860);
            v146[0] = v125;
            sub_218744C90(v146, &qword_27CC0EA08);
            sub_2189E9530(v118, v112, v113);
            sub_2189E9530(v27, v26, v115);
            sub_218950D08(v121);
            sub_218950D08(v122);

LABEL_52:
            v69 = 0;
            goto LABEL_53;
          }
        }

        else
        {
          if (!v118)
          {
            goto LABEL_49;
          }

          v91 = 0;
          v89 = 0;
        }

        v99 = [v118 identifier];
        v100 = sub_219BF5414();
        v102 = v101;

        if (!v91)
        {
          if (!v102)
          {
            goto LABEL_49;
          }

          goto LABEL_47;
        }

        if (!v102)
        {
          goto LABEL_47;
        }

        if (v89 == v100 && v91 == v102)
        {

          goto LABEL_49;
        }

        v107 = sub_219BF78F4();

        if (v107)
        {
LABEL_49:
          sub_218EFC3E4(&qword_27CC0EA10, MEMORY[0x277D32F30]);
          sub_219BF5874();
          sub_219BF5874();
          if (*&v146[0] == v145)
          {
            v69 = sub_21938C82C(&v123, &v126);
            v141 = v126;
            sub_218744C90(&v141, &qword_280E8F860);
            v142 = v127;
            sub_218744C90(&v142, &qword_280E8F860);
            v143 = v128;
            sub_218744C90(&v143, &qword_27CC0EA08);
            v144 = v123;
            sub_218744C90(&v144, &qword_280E8F860);
            v145 = v124;
            sub_218744C90(&v145, &qword_280E8F860);
            v146[0] = v125;
            sub_218744C90(v146, &qword_27CC0EA08);
            sub_2189E9530(v118, v112, v113);
            sub_2189E9530(v27, v26, v115);
            sub_218950D08(v121);
            sub_218950D08(v122);
LABEL_53:
            v108 = v120;
            v109 = *(v119 + 1);
            v109(v117, v120);
            v109(v116, v108);
            return v69 & 1;
          }
        }

LABEL_51:
        v141 = v126;
        sub_218744C90(&v141, &qword_280E8F860);
        v142 = v127;
        sub_218744C90(&v142, &qword_280E8F860);
        v143 = v128;
        sub_218744C90(&v143, &qword_27CC0EA08);
        v144 = v123;
        sub_218744C90(&v144, &qword_280E8F860);
        v145 = v124;
        sub_218744C90(&v145, &qword_280E8F860);
        v146[0] = v125;
        sub_218744C90(v146, &qword_27CC0EA08);
        sub_2189E9530(v118, v112, v113);
        sub_2189E9530(v27, v26, v115);
        sub_218950D08(v121);
        sub_218950D08(v122);
        goto LABEL_52;
      }

      sub_218950D08(v122);
      sub_2189E9530(v27, v26, v28);
      goto LABEL_17;
    }

    v50 = *v23;
    sub_2189E93F4();
    v52 = *(v51 + 48);
    v53 = *(v51 + 64);
    v54 = *&v23[v53 + 16];
    v123 = *&v23[v53];
    v124 = v54;
    v125 = *&v23[v53 + 32];
    if (swift_getEnumCaseMultiPayload() != 2)
    {

      *v121 = v123;
      sub_218744C90(v121, &qword_280E8F860);
      *v122 = v124;
      sub_218744C90(v122, &qword_280E8F860);
      v126 = v125;
      sub_218744C90(&v126, &qword_27CC0EA08);
      (v118[1])(&v23[v52], v4);
      goto LABEL_19;
    }

    v55 = v9;
    v56 = *v24;
    v57 = *(v24 + v53 + 16);
    v126 = *(v24 + v53);
    v127 = v57;
    v128 = *(v24 + v53 + 32);
    v58 = v118[4];
    v119 = v55;
    v58();
    v120 = v7;
    (v58)(v7, v24 + v52, v4);
    v117 = v50;
    v59 = [*(v50 + 16) identifier];
    v60 = sub_219BF5414();
    v62 = v61;

    v116 = v56;
    v63 = [v56[2] identifier];
    v64 = sub_219BF5414();
    v66 = v65;

    if (v60 == v64 && v62 == v66)
    {
    }

    else
    {
      v68 = sub_219BF78F4();

      if ((v68 & 1) == 0)
      {
        v69 = 0;
        v70 = &v142;
        v115 = &v141;
        v71 = v140;
        v72 = v133;
        v73 = v132;
        v74 = v131;
LABEL_35:
        *v74 = v126;
        sub_218744C90(v74, &qword_280E8F860);
        *v73 = v127;
        sub_218744C90(v73, &qword_280E8F860);
        *v72 = v128;
        sub_218744C90(v72, &qword_27CC0EA08);
        *v71 = v123;
        sub_218744C90(v71, &qword_280E8F860);
        v97 = v115;
        *v115 = v124;
        sub_218744C90(v97, &qword_280E8F860);
        *v70 = v125;
        sub_218744C90(v70, &qword_27CC0EA08);

        v98 = v118[1];
        (v98)(v120, v4);
        (v98)(v119, v4);
        return v69 & 1;
      }
    }

    sub_218EFC3E4(&qword_27CC135F8, MEMORY[0x277D32CB0]);
    sub_219BF5874();
    sub_219BF5874();
    if (*v122 == *v121)
    {
      v69 = sub_21938C82C(&v123, &v126);
      v70 = v122;
      v115 = v121;
      v71 = v146;
      v72 = v139;
      v73 = v138;
      v74 = v137;
    }

    else
    {
      v69 = 0;
      v70 = &v145;
      v115 = &v144;
      v71 = &v143;
      v72 = v136;
      v73 = v135;
      v74 = v134;
    }

    goto LABEL_35;
  }

  *v122 = *v23;
  *&v122[9] = *(v23 + 9);
  sub_2189E96A0();
  v30 = *(v47 + 48);
  v48 = *(v47 + 64);
  v49 = *&v23[v48 + 16];
  v123 = *&v23[v48];
  v124 = v49;
  v125 = *&v23[v48 + 32];
  if (!swift_getEnumCaseMultiPayload())
  {
    *v121 = *v24;
    *&v121[9] = *(v24 + 9);
    v75 = *(v24 + v48 + 16);
    v126 = *(v24 + v48);
    v127 = v75;
    v128 = *(v24 + v48 + 32);
    v76 = *(v119 + 4);
    v77 = &v23[v30];
    v78 = v120;
    v76(v19, v77, v120);
    v76(v17, (v24 + v30), v78);
    v79 = [*v122 identifier];
    v80 = sub_219BF5414();
    v82 = v81;

    v83 = [*v121 identifier];
    v84 = sub_219BF5414();
    v86 = v85;

    if (v80 == v84 && v82 == v86)
    {
    }

    else
    {
      v92 = sub_219BF78F4();

      if ((v92 & 1) == 0)
      {
        v69 = 0;
        v118 = v140;
        v117 = v139;
        v93 = v138;
        v94 = v131;
        v95 = &v130;
        v96 = &v129;
LABEL_45:
        *v96 = v126;
        sub_218744C90(v96, &qword_280E8F860);
        *v95 = v127;
        sub_218744C90(v95, &qword_280E8F860);
        *v94 = v128;
        sub_218744C90(v94, &qword_27CC0EA08);
        *v93 = v123;
        sub_218744C90(v93, &qword_280E8F860);
        v103 = v117;
        *v117 = v124;
        sub_218744C90(v103, &qword_280E8F860);
        v104 = v118;
        *v118 = v125;
        sub_218744C90(v104, &qword_27CC0EA08);
        sub_218950D08(v121);
        sub_218950D08(v122);
        v105 = v120;
        v106 = *(v119 + 1);
        v106(v17, v120);
        v106(v19, v105);
        return v69 & 1;
      }
    }

    sub_218EFC3E4(&qword_27CC0EA10, MEMORY[0x277D32F30]);
    sub_219BF5874();
    sub_219BF5874();
    if (*&v146[0] == v145)
    {
      v69 = sub_21938C82C(&v123, &v126);
      v118 = v146;
      v117 = &v145;
      v93 = &v144;
      v94 = v137;
      v95 = v136;
      v96 = v135;
    }

    else
    {
      v69 = 0;
      v118 = &v143;
      v117 = &v142;
      v93 = &v141;
      v94 = v134;
      v95 = v133;
      v96 = v132;
    }

    goto LABEL_45;
  }

  sub_218950D08(v122);
LABEL_17:
  v146[0] = v123;
  sub_218744C90(v146, &qword_280E8F860);
  *v121 = v124;
  sub_218744C90(v121, &qword_280E8F860);
  v126 = v125;
  sub_218744C90(&v126, &qword_27CC0EA08);
  (*(v119 + 1))(&v23[v30], v120);
LABEL_19:
  sub_21897C080(v24);
  v69 = 0;
  return v69 & 1;
}

void sub_218EFC380()
{
  if (!qword_27CC135F0)
  {
    type metadata accessor for MagazineGridItemModel();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC135F0);
    }
  }
}

uint64_t sub_218EFC3E4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_218EFC42C()
{
  if (!qword_27CC13618)
  {
    sub_219BF07A4();
    sub_218EFC5A4(255, &qword_27CC13600, MEMORY[0x277D32F68], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC13618);
    }
  }
}

uint64_t sub_218EFC4D0(uint64_t a1, uint64_t a2)
{
  sub_218EFC5A4(0, &qword_27CC13600, MEMORY[0x277D32F68], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_218EFC564(id result, uint64_t a2, void *a3)
{
  if (result)
  {
    v3 = result;

    return a3;
  }

  return result;
}

void sub_218EFC5A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218EFC60C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v113 = a2;
  v99 = sub_219BF0BD4();
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v96 = v5;
  v97 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BDF6C4();
  MEMORY[0x28223BE20](v6 - 8);
  v109 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_219BE1BF4();
  MEMORY[0x28223BE20](v104);
  v9 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_218EFFFF8(a1);
  if (qword_280E8D910 != -1)
  {
LABEL_28:
    swift_once();
  }

  sub_2186E80E4(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_219C09EC0;
  sub_218F0014C();
  v12 = sub_219BF5D54();
  v14 = v13;
  v15 = MEMORY[0x277D837D0];
  *(v11 + 56) = MEMORY[0x277D837D0];
  v16 = sub_2186FC3BC();
  *(v11 + 64) = v16;
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  v112 = (a1 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_context);
  v17 = sub_219361A30();
  *(v11 + 96) = v15;
  *(v11 + 104) = v16;
  *(v11 + 72) = v17;
  *(v11 + 80) = v18;
  sub_219BF6214();
  sub_219BE5314();

  v19 = sub_2194B3934(&unk_282A24EE0);

  v107 = v10;
  v108 = v3;
  v20 = sub_218EFD62C(v19, v10, sub_218F001A0, a1);

  v21 = MEMORY[0x277D84F90];
  v117[0] = MEMORY[0x277D84F90];
  v22 = sub_2186DFB90(&qword_280EE7E70, MEMORY[0x277D6CA70]);
  sub_218A4E214(0);
  v24 = v23;
  v25 = sub_2186DFB90(&qword_280E8F600, sub_218A4E214);

  v102 = v24;
  ObjectType = v25;
  v26 = v104;
  v103 = v22;
  sub_219BF7164();
  sub_2186E80E4(0, &unk_280EE71C0, sub_218F001B0, MEMORY[0x277D6CEE8]);
  swift_allocObject();
  v106 = v20;
  v114 = sub_219BE2D14();
  v110 = a1;
  v111 = *(a1 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_contentConfigData);
  v100 = OBJC_IVAR____TtC7NewsUI215TodayConfigData_headlines;
  v27 = *(v111 + OBJC_IVAR____TtC7NewsUI215TodayConfigData_headlines);
  v30 = *(v27 + 64);
  v29 = v27 + 64;
  v28 = v30;
  v31 = 1 << *(*(v111 + OBJC_IVAR____TtC7NewsUI215TodayConfigData_headlines) + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & v28;
  v34 = (v31 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v3 = 0;
  v105 = v21;
  v10 = v9;
  a1 = v26;
LABEL_5:
  v35 = v3;
  if (!v33)
  {
    goto LABEL_7;
  }

  do
  {
    v3 = v35;
LABEL_10:
    v33 &= v33 - 1;
    v36 = [swift_unknownObjectRetain_n() clusterID];
    if (v36)
    {
      v37 = v36;
      v95 = sub_219BF5414();
      v94 = v38;
      swift_unknownObjectRelease_n();

      v39 = v105;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = sub_218840D24(0, *(v39 + 2) + 1, 1, v39);
      }

      v41 = *(v39 + 2);
      v40 = *(v39 + 3);
      if (v41 >= v40 >> 1)
      {
        v39 = sub_218840D24((v40 > 1), v41 + 1, 1, v39);
      }

      *(v39 + 2) = v41 + 1;
      v105 = v39;
      v42 = &v39[16 * v41];
      v43 = v94;
      *(v42 + 4) = v95;
      *(v42 + 5) = v43;
      v9 = v10;
      goto LABEL_5;
    }

    swift_unknownObjectRelease_n();
    v35 = v3;
    v9 = v10;
  }

  while (v33);
  while (1)
  {
LABEL_7:
    v3 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v3 >= v34)
    {
      break;
    }

    v33 = *(v29 + 8 * v3);
    ++v35;
    if (v33)
    {
      goto LABEL_10;
    }
  }

  v94 = sub_218845F78(v105);

  v44 = *(v112 + 1);
  v105 = *(v110 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_appConfig);
  swift_unknownObjectRetain();
  v95 = v44;
  sub_218DAE5F8(v109);
  v45 = MEMORY[0x277D84F90];
  v117[0] = MEMORY[0x277D84F90];

  sub_219BF7164();
  sub_2186E80E4(0, &unk_280EE7160, sub_218F001EC, MEMORY[0x277D6CEE8]);
  swift_allocObject();
  v103 = sub_219BE2D14();
  v46 = *(v111 + v100);
  v47 = *(v46 + 16);
  if (v47)
  {
    v48 = sub_2194B7E58(*(v46 + 16), 0);
    v49 = sub_2194B7E40(v117, v48 + 32, v47, v46);

    sub_21892DE98();
    if (v49 == v47)
    {
      goto LABEL_22;
    }

    __break(1u);
  }

  v48 = v45;
LABEL_22:
  v50 = *(v112 + 3);
  KeyPath = swift_getKeyPath();
  v52 = swift_getKeyPath();
  v53 = MEMORY[0x277D84FA0];
  v115[0] = v48;
  v115[1] = v45;
  v115[2] = v50;
  v115[3] = MEMORY[0x277D84FA0];
  v115[4] = v45;
  v115[5] = KeyPath;
  v115[6] = v52;
  v54 = *(v111 + OBJC_IVAR____TtC7NewsUI215TodayConfigData_tags);
  v55 = *(v54 + 16);
  if (!v55)
  {

    v56 = MEMORY[0x277D84F90];
    goto LABEL_26;
  }

  v56 = sub_2194B7E58(*(v54 + 16), 0);
  v57 = sub_2194B7E40(v117, v56 + 32, v55, v54);

  result = sub_21892DE98();
  if (v57 == v55)
  {
    v45 = MEMORY[0x277D84F90];
    v53 = MEMORY[0x277D84FA0];
LABEL_26:
    v102 = type metadata accessor for TodayFeedPool();
    ObjectType = swift_getObjectType();
    v59 = swift_getKeyPath();
    v116[0] = v56;
    v116[1] = v45;
    v116[2] = v53;
    v116[3] = v53;
    v116[4] = v45;
    v116[5] = v59;
    v116[6] = 0;
    v60 = swift_getKeyPath();
    v117[0] = v45;
    v117[1] = v45;
    v117[2] = v53;
    v117[3] = v53;
    v117[4] = v45;
    v117[5] = v60;
    v117[6] = 0;
    v61 = swift_allocObject();
    swift_weakInit();
    v62 = v98;
    v63 = *(v98 + 16);
    v111 = v98 + 16;
    v112 = v63;
    v64 = v97;
    v65 = v99;
    v63(v97, v113, v99);
    v66 = *(v62 + 80);
    v67 = (v66 + 24) & ~v66;
    v96 += 7;
    v68 = (v96 + v67) & 0xFFFFFFFFFFFFFFF8;
    v69 = swift_allocObject();
    *(v69 + 16) = v61;
    v104 = *(v62 + 32);
    v104(v69 + v67, v64, v65);
    v70 = v110;
    *(v69 + v68) = v110;
    v71 = sub_2194B3934(&unk_282A24F08);

    v100 = sub_218EFE53C(v71, v107, sub_218F00288, v69);

    v112(v64, v113, v65);
    v72 = swift_allocObject();
    *(v72 + 16) = v114;
    v104(v72 + v67, v64, v65);
    *(v72 + v68) = v70;
    v73 = sub_2194B3934(&unk_282A24F30);

    v74 = v107;
    v75 = v108;
    v98 = sub_218EFE21C(v73, v107, sub_218F002A0, v72);

    v112(v64, v113, v65);
    v76 = (v66 + 32) & ~v66;
    v77 = (v96 + v76) & 0xFFFFFFFFFFFFFFF8;
    v78 = swift_allocObject();
    v79 = v114;
    v80 = v94;
    *(v78 + 16) = v114;
    *(v78 + 24) = v80;
    v104(v78 + v76, v64, v65);
    *(v78 + v77) = v70;
    v81 = sub_2194B3934(&unk_282A24F58);

    v82 = sub_218EFDF2C(v81, v74, sub_218F0036C, v78);

    v83 = swift_allocObject();
    *(v83 + 16) = v79;
    *(v83 + 24) = v70;
    v84 = sub_2194B3934(&unk_282A24F80);

    v85 = sub_218EFDC3C(v84, v74, sub_218F0040C, v83);

    v86 = sub_2194B3934(&unk_282A24FA8);

    v87 = v75;
    v88 = sub_218EFD91C(v86, v74, sub_218F00414, v70);

    v89 = sub_218A4E590(v105, v95, 1, v109, v103, v115, v116, v117, v100, v98, v82, v85, v88);
    __swift_project_boxed_opaque_existential_1((v87 + 232), *(v87 + 256));
    v90 = swift_allocObject();
    swift_weakInit();
    v91 = swift_allocObject();
    swift_weakInit();
    v92 = swift_allocObject();
    *(v92 + 16) = v90;
    *(v92 + 24) = v91;
    sub_219BE2D04();

    return v89;
  }

  __break(1u);
  return result;
}

uint64_t sub_218EFD45C(void *a1, uint64_t a2)
{
  v5 = a1[2];
  v4 = a1[3];
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = sub_219BE2CC4();
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = v4;
  v10[4] = v8;

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_219BE31D4();

  v11 = sub_219BE2CC4();
  sub_218718690((a1 + 39), v19);
  sub_218718690((a1 + 44), v18);
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a1;
  v12[4] = v5;
  sub_2186CB1F0(v19, (v12 + 5));
  sub_2186CB1F0(v18, (v12 + 10));
  v12[15] = v7;
  v12[16] = v6;
  v12[17] = v4;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_218F00D3C;
  *(v13 + 24) = v12;

  swift_unknownObjectRetain();

  v14 = v5;
  v15 = v7;
  swift_unknownObjectRetain();
  v16 = sub_219BE2F64();

  return v16;
}

uint64_t sub_218EFD62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_219BE1BF4();
  MEMORY[0x28223BE20](v8);

  v9 = *(sub_2192090F4(a1, a2) + 2);

  if (v9)
  {
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = a3;
    v11[4] = a4;
    sub_2186DFB90(&qword_280EE7E70, MEMORY[0x277D6CA70]);
    sub_218A4E214(0);
    sub_2186DFB90(&qword_280E8F600, sub_218A4E214);
  }

  else
  {
    sub_2186DFB90(&qword_280EE7E70, MEMORY[0x277D6CA70]);
    sub_218A4E214(0);
    sub_2186DFB90(&qword_280E8F600, sub_218A4E214);
  }

  sub_219BF7164();
  sub_218F0065C(0, &unk_280EE71B0, &qword_280EE6E40, &_s20FeedItemFetchResultsVN);
  swift_allocObject();
  return sub_219BE2D14();
}

uint64_t sub_218EFD91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_219BE1BF4();
  MEMORY[0x28223BE20](v8);

  v9 = *(sub_2192090F4(a1, a2) + 2);

  if (v9)
  {
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = a3;
    v11[4] = a4;
    sub_2186DFB90(&qword_280EE7E70, MEMORY[0x277D6CA70]);
    sub_218A4E214(0);
    sub_2186DFB90(&qword_280E8F600, sub_218A4E214);
  }

  else
  {
    sub_2186DFB90(&qword_280EE7E70, MEMORY[0x277D6CA70]);
    sub_218A4E214(0);
    sub_2186DFB90(&qword_280E8F600, sub_218A4E214);
  }

  sub_219BF7164();
  sub_2186E80E4(0, &qword_280EE7190, sub_218F00458, MEMORY[0x277D6CEE8]);
  swift_allocObject();
  return sub_219BE2D14();
}

uint64_t sub_218EFDC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_219BE1BF4();
  MEMORY[0x28223BE20](v8);

  v9 = *(sub_2192090F4(a1, a2) + 2);

  if (v9)
  {
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = a3;
    v11[4] = a4;
    sub_2186DFB90(&qword_280EE7E70, MEMORY[0x277D6CA70]);
    sub_218A4E214(0);
    sub_2186DFB90(&qword_280E8F600, sub_218A4E214);
  }

  else
  {
    sub_2186DFB90(&qword_280EE7E70, MEMORY[0x277D6CA70]);
    sub_218A4E214(0);
    sub_2186DFB90(&qword_280E8F600, sub_218A4E214);
  }

  sub_219BF7164();
  sub_218F0065C(0, &unk_280EE71E0, &unk_280EE6F30, &_s11SuggestionsVN);
  swift_allocObject();
  return sub_219BE2D14();
}

uint64_t sub_218EFDF2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_219BE1BF4();
  MEMORY[0x28223BE20](v8);

  v9 = *(sub_2192090F4(a1, a2) + 2);

  if (v9)
  {
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = a3;
    v11[4] = a4;
    sub_2186DFB90(&qword_280EE7E70, MEMORY[0x277D6CA70]);
    sub_218A4E214(0);
    sub_2186DFB90(&qword_280E8F600, sub_218A4E214);
  }

  else
  {
    sub_2186DFB90(&qword_280EE7E70, MEMORY[0x277D6CA70]);
    sub_218A4E214(0);
    sub_2186DFB90(&qword_280E8F600, sub_218A4E214);
  }

  sub_219BF7164();
  sub_218F0065C(0, &unk_280EE71D0, &unk_280EE6F20, &_s13MissedStoriesVN);
  swift_allocObject();
  return sub_219BE2D14();
}

uint64_t sub_218EFE21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_219BE1BF4();
  MEMORY[0x28223BE20](v8);

  v9 = *(sub_2192090F4(a1, a2) + 2);

  if (v9)
  {
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = a3;
    v11[4] = a4;
    sub_2186DFB90(&qword_280EE7E70, MEMORY[0x277D6CA70]);
    sub_218A4E214(0);
    sub_2186DFB90(&qword_280E8F600, sub_218A4E214);
  }

  else
  {
    sub_2186DFB90(&qword_280EE7E70, MEMORY[0x277D6CA70]);
    sub_218A4E214(0);
    sub_2186DFB90(&qword_280E8F600, sub_218A4E214);
  }

  sub_219BF7164();
  sub_2186E80E4(0, &unk_280EE71F0, sub_218A4E350, MEMORY[0x277D6CEE8]);
  swift_allocObject();
  return sub_219BE2D14();
}

uint64_t sub_218EFE53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_219BE1BF4();
  MEMORY[0x28223BE20](v8);

  v9 = *(sub_2192090F4(a1, a2) + 2);

  if (v9)
  {
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = a3;
    v11[4] = a4;
    sub_2186DFB90(&qword_280EE7E70, MEMORY[0x277D6CA70]);
    sub_218A4E214(0);
    sub_2186DFB90(&qword_280E8F600, sub_218A4E214);
  }

  else
  {
    sub_2186DFB90(&qword_280EE7E70, MEMORY[0x277D6CA70]);
    sub_218A4E214(0);
    sub_2186DFB90(&qword_280E8F600, sub_218A4E214);
  }

  sub_219BF7164();
  sub_218F0065C(0, &unk_280EE7200, &qword_280EE6F50, &_s11ForYouFetchVN);
  swift_allocObject();
  return sub_219BE2D14();
}

void sub_218EFE82C(uint64_t *a1@<X8>)
{
  sub_219BE2CF4();
  v2 = sub_219BE2E54();
  _s19FeedItemFetchResultVMa(0);
  v3 = sub_219BE2F64();

  *a1 = v3;
}

void sub_218EFE8D0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 clusterID];
  if (v3)
  {
    v4 = v3;
    v5 = sub_219BF5414();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_218EFE938(uint64_t *a1@<X8>)
{
  _s19FeedItemFetchResultVMa(0);
  sub_219BE3204();
  v2 = sub_219BE2E54();
  sub_2187381BC(0, &qword_280E8ED70, &qword_280E8E800, 0x277D35488, MEMORY[0x277D83940]);
  v3 = sub_219BE2F74();

  *a1 = v3;
}

uint64_t sub_218EFEA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_219BF0BD4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_219BE2CF4();
    (*(v7 + 16))(&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
    v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v10 = swift_allocObject();
    (*(v7 + 32))(v10 + v9, &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    *(v10 + ((v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;

    v11 = sub_219BE2E54();
    type metadata accessor for TodayFeedPoolService();
    v12 = sub_219BE2F84();

    return v12;
  }

  else
  {
    if (qword_280E8D910 != -1)
    {
      swift_once();
    }

    sub_219BF61F4();
    sub_219BE5314();
    sub_218F00A5C();
    swift_allocError();
    *v14 = 0;
    sub_218F00CCC(0, &qword_280EE6F50, &_s11ForYouFetchVN, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE2FF4();
  }
}

uint64_t sub_218EFECB0(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  v7 = a1[1];
  v10 = a1[2];
  v9 = a1[3];
  v11 = a2[2];
  v12 = a2[4];
  v42 = a2[3];
  v43 = v12;
  v13 = *__swift_project_boxed_opaque_existential_1(a2 + 34, a2[37]);
  v47[3] = type metadata accessor for LocalNewsChannelService();
  v47[4] = &off_282A6E848;
  v47[0] = v13;

  if (sub_219614240(a3, a4))
  {
    v14 = sub_219BEEDD4();
    sub_2186DFB90(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277D323D0], v14);
    sub_218F00CCC(0, &qword_280EE6F50, &_s11ForYouFetchVN, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v16 = sub_219BE2FF4();
LABEL_6:
    __swift_destroy_boxed_opaque_existential_1(v47);
    return v16;
  }

  v35[0] = v4;
  v17 = CACurrentMediaTime();
  sub_218F00CCC(0, &qword_280EE7358, &_s4FeedVN, MEMORY[0x277D6CE00]);
  swift_allocObject();
  v36 = sub_219BE2B44();
  sub_2186E80E4(0, &unk_280EE7340, sub_218A4E818, MEMORY[0x277D6CE00]);
  swift_allocObject();
  v39 = sub_219BE2B44();
  v40 = v11;
  v41 = v8;
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  swift_weakInit();
  sub_218718690(v47, &v44);
  v35[1] = a4;
  v37 = v10;
  v38 = v9;
  v21 = swift_allocObject();
  *(v21 + 2) = v36;
  *(v21 + 3) = v18;
  *(v21 + 4) = v19;
  *(v21 + 5) = v20;
  v22 = v43;
  *(v21 + 6) = v42;
  *(v21 + 7) = v22;
  *(v21 + 8) = v40;
  v21[9] = v17;
  v23 = sub_2186CB1F0(&v44, (v21 + 10));
  v35[2] = v35;
  v24 = v39;
  *(v21 + 15) = a4;
  *(v21 + 16) = v24;
  MEMORY[0x28223BE20](v23);
  _s19FeedItemFetchResultVMa(0);

  swift_unknownObjectRetain();
  v25 = v22;
  v26 = v40;

  sub_219BE3204();
  v27 = swift_allocObject();
  *(v27 + 16) = sub_218F00BF4;
  *(v27 + 24) = v21;

  v28 = sub_219BE2E54();
  sub_219BE2F74();

  v29 = sub_219BE2E54();
  sub_219BE2FD4();

  v30 = swift_allocObject();
  v30[2] = v41;
  v30[3] = v7;
  v31 = v38;
  v30[4] = v37;
  v30[5] = v31;
  v30[6] = sub_218F00BF4;
  v30[7] = v21;

  result = MEMORY[0x21CEB98C0](v32);
  if (result)
  {
    v34 = result;
    result = MEMORY[0x21CEB98C0]();
    if (result)
    {
      *&v44 = v34;
      *(&v44 + 1) = result;
      v45 = sub_218F00C5C;
      v46 = v30;
      sub_218F00CCC(0, &qword_280EE6F50, &_s11ForYouFetchVN, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v16 = sub_219BE3014();

      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218EFF220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_219BF0BD4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_219BE2CF4();
  (*(v7 + 16))(&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
  v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = swift_allocObject();
  (*(v7 + 32))(v10 + v9, &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  *(v10 + ((v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;

  v11 = sub_219BE2E54();
  _s11MyHeadlinesCMa();
  type metadata accessor for TodayFeedPoolService();
  v12 = sub_219BE2F84();

  return v12;
}

uint64_t sub_218EFF3D0()
{
  sub_218A4E350(0);
  swift_allocObject();
  return sub_219BE30B4();
}

uint64_t sub_218EFF454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_219BF0BD4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_219BE2CF4();
  (*(v9 + 16))(&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v8);
  v11 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  (*(v9 + 32))(v12 + v11, &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  *(v12 + ((v10 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = a5;

  v13 = sub_219BE2E54();
  type metadata accessor for TodayFeedPoolService();
  v14 = sub_219BE2F84();

  return v14;
}

uint64_t sub_218EFF60C(uint64_t a1, uint64_t a2)
{
  v2 = *__swift_project_boxed_opaque_existential_1((a2 + 272), *(a2 + 296));
  v5[3] = type metadata accessor for LocalNewsChannelService();
  v5[4] = &off_282A6E848;
  v5[0] = v2;
  sub_218F00CCC(0, &unk_280EE6F20, &_s13MissedStoriesVN, MEMORY[0x277D6CF30]);
  swift_allocObject();

  v3 = sub_219BE30B4();
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

uint64_t sub_218EFF738()
{
  sub_219BE2CF4();

  v0 = sub_219BE2E54();
  type metadata accessor for TodayFeedPoolService();
  v1 = sub_219BE2F84();

  return v1;
}

uint64_t sub_218EFF7DC()
{
  sub_218F00CCC(0, &unk_280EE6F30, &_s11SuggestionsVN, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE30B4();
}

uint64_t sub_218EFF870(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagazineFeedServiceContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - v9;
  v11 = OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_context;
  v12 = a2 + *(type metadata accessor for TodayFeedServiceContext() + 36);
  v13 = sub_219BEE754();
  (*(*(v13 - 8) + 16))(v10, v12 + v11, v13);
  swift_storeEnumTagMultiPayload();
  v14 = CACurrentMediaTime();
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  sub_218F004A8();
  sub_219BE3204();
  sub_218F00D58(v10, v8, type metadata accessor for MagazineFeedServiceContext);
  v15 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  sub_218AC55A4(v8, v16 + v15);
  v17 = sub_219BE2E54();
  type metadata accessor for MagazineFeedServiceConfig();
  type metadata accessor for MagazineFeedServiceConfigFetcher();
  sub_219BE2F94();

  sub_218F00DC0(v10, type metadata accessor for MagazineFeedServiceContext);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;

  v19 = sub_219BE2E54();
  v20 = sub_219BE2F74();

  return v20;
}

uint64_t sub_218EFFB98()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 64);

  __swift_destroy_boxed_opaque_existential_1(v0 + 112);
  __swift_destroy_boxed_opaque_existential_1(v0 + 152);
  __swift_destroy_boxed_opaque_existential_1(v0 + 192);
  __swift_destroy_boxed_opaque_existential_1(v0 + 232);
  __swift_destroy_boxed_opaque_existential_1(v0 + 272);
  __swift_destroy_boxed_opaque_existential_1(v0 + 312);
  __swift_destroy_boxed_opaque_existential_1(v0 + 352);
  return v0;
}

uint64_t sub_218EFFC28()
{
  sub_218EFFB98();

  return swift_deallocClassInstance();
}

uint64_t sub_218EFFC5C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_218EFC60C(*a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_218EFFCB8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_2189FE9D0();
  swift_allocError();
  *v6 = 8;
  sub_218F00CCC(0, a1, a2, MEMORY[0x277D6CF30]);
  swift_allocObject();
  result = sub_219BE2FF4();
  *a3 = result;
  return result;
}

uint64_t sub_218EFFD50@<X0>(uint64_t (*a1)(void)@<X1>, unint64_t *a2@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v8 = a1();
  }

  else
  {
    sub_2189FE9D0();
    swift_allocError();
    *v10 = 6;
    sub_218F00CCC(0, a2, a3, MEMORY[0x277D6CF30]);
    swift_allocObject();
    result = sub_219BE2FF4();
    v8 = result;
  }

  *a4 = v8;
  return result;
}

uint64_t sub_218EFFE74@<X0>(void (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  sub_2189FE9D0();
  swift_allocError();
  *v4 = 8;
  a1(0);
  swift_allocObject();
  result = sub_219BE2FF4();
  *a2 = result;
  return result;
}

uint64_t sub_218EFFEF4@<X0>(uint64_t (*a1)(void)@<X1>, void (*a2)(void)@<X3>, uint64_t *a3@<X8>)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v6 = a1();
  }

  else
  {
    sub_2189FE9D0();
    swift_allocError();
    *v8 = 6;
    a2(0);
    swift_allocObject();
    result = sub_219BE2FF4();
    v6 = result;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_218EFFFF8(uint64_t a1)
{
  v2 = type metadata accessor for TodayFeedGroupConfig();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D84FA0];
  v15 = MEMORY[0x277D84FA0];
  v7 = a1 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_contentConfig;
  v8 = *(v7 + *(type metadata accessor for TodayFeedConfig() + 20));
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    do
    {
      sub_218F00D58(v10, v5, type metadata accessor for TodayFeedGroupConfig);
      v12 = sub_219A47B58();
      sub_218F00DC0(v5, type metadata accessor for TodayFeedGroupConfig);
      sub_218DD89FC(v12);
      v10 += v11;
      --v9;
    }

    while (v9);
    return v15;
  }

  return v6;
}

unint64_t sub_218F0014C()
{
  result = qword_280EB6278;
  if (!qword_280EB6278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB6278);
  }

  return result;
}

void sub_218F001EC()
{
  if (!qword_280EE6A98)
  {
    sub_2187381BC(255, &qword_280E8ED70, &qword_280E8E800, 0x277D35488, MEMORY[0x277D83940]);
    v0 = sub_219BE3114();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE6A98);
    }
  }
}

uint64_t sub_218F002B8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v4 = *(sub_219BF0BD4() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v2 + 16);
  v7 = *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a2(a1, v6, v2 + v5, v7);
}

uint64_t sub_218F0036C(uint64_t a1)
{
  v3 = *(sub_219BF0BD4() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);

  return sub_218EFF454(a1, v6, v7, v1 + v4, v5);
}

void sub_218F004A8()
{
  if (!qword_280E8E050)
  {
    sub_2186D6710(255, &qword_280E8E080);
    type metadata accessor for MagazineConfig();
    sub_2186C6148(255, &qword_280E8DDC0);
    sub_2187381BC(255, &unk_280E8E8C0, &qword_280E8E8D0, 0x277D31208, MEMORY[0x277D83D88]);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_280E8E050);
    }
  }
}

void sub_218F0065C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_218F00CCC(255, a3, a4, MEMORY[0x277D6CF30]);
    v5 = sub_219BE2D24();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t objectdestroy_11Tm_3(void (*a1)(void))
{
  v3 = sub_219BF0BD4();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  a1(*(v1 + 16));
  (*(v4 + 8))(v1 + v5, v3);

  return swift_deallocObject();
}

unint64_t sub_218F00A5C()
{
  result = qword_27CC13620;
  if (!qword_27CC13620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13620);
  }

  return result;
}

uint64_t objectdestroy_64Tm()
{
  v1 = sub_219BF0BD4();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_218F00B4C(uint64_t *a1, void *a2)
{
  v5 = *(sub_219BF0BD4() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_218EFECB0(a1, a2, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_218F00CCC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_218F00D58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218F00DC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_218F00E44()
{
  result = qword_27CC13630;
  if (!qword_27CC13630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13630);
  }

  return result;
}

unint64_t sub_218F00E9C()
{
  result = qword_27CC13638;
  if (!qword_27CC13638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13638);
  }

  return result;
}

uint64_t sub_218F00EFC()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t sub_218F00F4C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BED8D4();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F0175C(0, &qword_27CC13660, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for RecentStoriesTagFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218F016A4();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_218F017C0(&unk_280E92630, MEMORY[0x277D31C50]);
    sub_219BF7734();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_218F016F8(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218F011F8(uint64_t a1)
{
  v2 = sub_218F016A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218F01234(uint64_t a1)
{
  v2 = sub_218F016A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218F012B0(void *a1)
{
  sub_218F0175C(0, &qword_27CC13670, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218F016A4();
  sub_219BF7B44();
  sub_219BED8D4();
  sub_218F017C0(&qword_280E92640, MEMORY[0x277D31C50]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_218F01510(uint64_t a1)
{
  result = sub_218F017C0(&qword_27CC13650, type metadata accessor for RecentStoriesTagFeedGroup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_218F01568(void *a1)
{
  a1[1] = sub_218F017C0(&qword_27CC13658, type metadata accessor for RecentStoriesTagFeedGroup);
  a1[2] = sub_218F017C0(&unk_27CC1C720, type metadata accessor for RecentStoriesTagFeedGroup);
  result = sub_218F017C0(&unk_27CC1C830, type metadata accessor for RecentStoriesTagFeedGroup);
  a1[3] = result;
  return result;
}

uint64_t sub_218F01614(uint64_t a1)
{
  v2 = sub_218F017C0(&qword_27CC13658, type metadata accessor for RecentStoriesTagFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

unint64_t sub_218F016A4()
{
  result = qword_27CC13668;
  if (!qword_27CC13668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13668);
  }

  return result;
}

uint64_t sub_218F016F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecentStoriesTagFeedGroup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218F0175C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218F016A4();
    v7 = a3(a1, &type metadata for RecentStoriesTagFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218F017C0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_218F0181C()
{
  result = qword_27CC13678;
  if (!qword_27CC13678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13678);
  }

  return result;
}

unint64_t sub_218F01874()
{
  result = qword_27CC13680;
  if (!qword_27CC13680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13680);
  }

  return result;
}

unint64_t sub_218F018CC()
{
  result = qword_27CC13688;
  if (!qword_27CC13688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13688);
  }

  return result;
}

id sub_218F01934(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

void sub_218F0198C(uint64_t a1, SEL *a2, void *a3)
{
  v4 = [objc_opt_self() *a2];
  v5 = [v4 colorWithAlphaComponent_];

  *a3 = v5;
}

uint64_t sub_218F019FC@<X0>(uint64_t a1@<X8>)
{
  v15[3] = a1;
  sub_218F01E5C(0, &qword_280E90F70, MEMORY[0x277D32C58]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v15 - v3;
  sub_218F01E5C(0, &qword_280E91148, MEMORY[0x277D32A88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v15 - v6;
  v8 = type metadata accessor for SportsTopicClusteringRequest();
  v9 = *(v1 + v8[16]);
  v15[1] = *(v1 + v8[15]);
  v15[2] = v9;
  v10 = sub_219BEFD84();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = v8[24];
  v12 = sub_219BF0354();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v4, v1 + v11, v12);
  (*(v13 + 56))(v4, 0, 1, v12);

  return sub_219BF02D4();
}

uint64_t sub_218F01C2C@<X0>(uint64_t a1@<X8>)
{
  v15[3] = a1;
  sub_218F01E5C(0, &qword_280E90F70, MEMORY[0x277D32C58]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v15 - v3;
  sub_218F01E5C(0, &qword_280E91148, MEMORY[0x277D32A88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v15 - v6;
  v8 = type metadata accessor for SportsTopicClusteringRequest();
  v9 = *(v1 + v8[18]);
  v15[1] = *(v1 + v8[17]);
  v15[2] = v9;
  v10 = sub_219BEFD84();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = v8[24];
  v12 = sub_219BF0354();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v4, v1 + v11, v12);
  (*(v13 + 56))(v4, 0, 1, v12);

  return sub_219BF02D4();
}

void sub_218F01E5C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t type metadata accessor for SportsTopicClusteringRequest()
{
  result = qword_280EB2588;
  if (!qword_280EB2588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218F01F24()
{
  sub_219BF03B4();
  if (v0 <= 0x3F)
  {
    sub_218F0215C();
    if (v1 <= 0x3F)
    {
      sub_2186C6148(319, &qword_280E8E860);
      if (v2 <= 0x3F)
      {
        type metadata accessor for FCOperationPurpose(319);
        if (v3 <= 0x3F)
        {
          sub_2186C6148(319, &qword_280E8D790);
          if (v4 <= 0x3F)
          {
            type metadata accessor for FCFeedBin(319);
            if (v5 <= 0x3F)
            {
              sub_219BEFBD4();
              if (v6 <= 0x3F)
              {
                sub_2186E2394();
                if (v7 <= 0x3F)
                {
                  sub_218822764();
                  if (v8 <= 0x3F)
                  {
                    sub_219BF0354();
                    if (v9 <= 0x3F)
                    {
                      sub_2186DEFE0(319, &qword_280E8EA30, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
                      if (v10 <= 0x3F)
                      {
                        type metadata accessor for FCFeedFilterOptions(319);
                        if (v11 <= 0x3F)
                        {
                          sub_2186DEFE0(319, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
                          if (v12 <= 0x3F)
                          {
                            swift_cvw_initStructMetadataWithLayoutString();
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_218F0215C()
{
  result = qword_280E8E288;
  if (!qword_280E8E288)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280E8E288);
  }

  return result;
}

void sub_218F021C0(uint64_t a1, void *a2, uint64_t a3)
{
  v48 = a3;
  v62 = a1;
  v46 = type metadata accessor for MastheadPaywallConfiguration;
  sub_2187F6124(0, qword_280EB3C28, type metadata accessor for MastheadPaywallConfiguration);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v45 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = v44 - v7;
  sub_2187F6124(0, &qword_280EE62C8, MEMORY[0x277D35210]);
  MEMORY[0x28223BE20](v9 - 8);
  v47 = v44 - v10;
  v11 = MEMORY[0x277D34D28];
  sub_2187F6124(0, &qword_280EE64B0, MEMORY[0x277D34D28]);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v44 - v16;
  v18 = a2[19];
  v19 = a2[20];
  __swift_project_boxed_opaque_existential_1(a2 + 16, v18);
  (*(v19 + 16))(v18, v19);
  v20 = OBJC_IVAR____TtC7NewsUI227MastheadPaywallEventHandler_paywallModel;
  swift_beginAccess();
  sub_218F0370C(v17, a2 + v20, &qword_280EE64B0, v11);
  swift_endAccess();
  sub_218809EDC(v62, v8, qword_280EB3C28, v46);
  v21 = type metadata accessor for MastheadPaywallConfiguration();
  v22 = *(v21 - 8);
  v46 = *(v22 + 48);
  v44[1] = v22 + 48;
  if ((v46)(v8, 1, v21) == 1)
  {
    sub_218809FC8(v8, qword_280EB3C28, type metadata accessor for MastheadPaywallConfiguration);
    v23 = sub_219BE4584();
    v24 = v47;
    (*(*(v23 - 8) + 56))(v47, 1, 1, v23);
  }

  else
  {
    v25 = *(v21 + 20);
    v26 = sub_219BE4584();
    v27 = *(v26 - 8);
    v28 = &v8[v25];
    v24 = v47;
    (*(v27 + 16))(v47, v28, v26);
    sub_218F03920(v8, type metadata accessor for MastheadPaywallConfiguration);
    (*(v27 + 56))(v24, 0, 1, v26);
  }

  v29 = OBJC_IVAR____TtC7NewsUI227MastheadPaywallEventHandler_subscribeButtonDestination;
  swift_beginAccess();
  sub_218F0370C(v24, a2 + v29, &qword_280EE62C8, MEMORY[0x277D35210]);
  swift_endAccess();
  v30 = MEMORY[0x277D34D28];
  sub_218809EDC(a2 + v20, v15, &qword_280EE64B0, MEMORY[0x277D34D28]);
  v31 = sub_219BE3D34();
  v32 = (*(*(v31 - 8) + 48))(v15, 1, v31);
  sub_218809FC8(v15, &qword_280EE64B0, v30);
  if (v32 == 1)
  {
    v56 = 0;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
  }

  else
  {
    v33 = v45;
    sub_218809EDC(v62, v45, qword_280EB3C28, type metadata accessor for MastheadPaywallConfiguration);
    if ((v46)(v33, 1, v21) == 1)
    {
      sub_218809FC8(v33, qword_280EB3C28, type metadata accessor for MastheadPaywallConfiguration);
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 0;
    }

    else
    {
      v34 = *(v33 + 48);
      v59 = *(v33 + 32);
      v60 = v34;
      v61 = *(v33 + 64);
      v35 = *(v33 + 16);
      v57 = *v33;
      v58 = v35;
      sub_218F038C4(&v57, &v52);
      sub_218F03920(v33, type metadata accessor for MastheadPaywallConfiguration);
      v54 = v59;
      v55 = v60;
      v56 = v61;
      v52 = v57;
      v53 = v58;
    }
  }

  v36 = v53;
  v59 = v54;
  v60 = v55;
  v37 = v52;
  v57 = v52;
  v58 = v53;
  v38 = v48 + OBJC_IVAR____TtC7NewsUI227MastheadPaywallEventHandler_callToAction;
  v39 = *(v48 + OBJC_IVAR____TtC7NewsUI227MastheadPaywallEventHandler_callToAction + 48);
  v50[2] = *(v48 + OBJC_IVAR____TtC7NewsUI227MastheadPaywallEventHandler_callToAction + 32);
  v50[3] = v39;
  v40 = *(v48 + OBJC_IVAR____TtC7NewsUI227MastheadPaywallEventHandler_callToAction + 16);
  v50[0] = *(v48 + OBJC_IVAR____TtC7NewsUI227MastheadPaywallEventHandler_callToAction);
  v50[1] = v40;
  v41 = v55;
  *(v38 + 32) = v54;
  *(v38 + 48) = v41;
  v61 = v56;
  v51 = *(v38 + 64);
  *(v38 + 64) = v56;
  *v38 = v37;
  *(v38 + 16) = v36;
  sub_218A6E6F4(&v52, &v49);
  sub_218C8FBF8(v50);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v43 = Strong;
    sub_218F03778(&v57, Strong);
    sub_218C8FBF8(&v52);
  }

  else
  {
    sub_218C8FBF8(&v52);
  }
}

uint64_t sub_218F027EC()
{
  sub_2187F6124(0, &qword_280EE64B0, MEMORY[0x277D34D28]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v20 - v2;
  v4 = sub_219BE3D34();
  v20 = *(v4 - 8);
  v21 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D35210];
  sub_2187F6124(0, &qword_280EE62C8, MEMORY[0x277D35210]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = sub_219BE4584();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC7NewsUI227MastheadPaywallEventHandler_subscribeButtonDestination;
  swift_beginAccess();
  sub_218809EDC(v0 + v15, v10, &qword_280EE62C8, v7);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_218809FC8(v10, &qword_280EE62C8, MEMORY[0x277D35210]);
  }

  (*(v12 + 32))(v14, v10, v11);
  v17 = OBJC_IVAR____TtC7NewsUI227MastheadPaywallEventHandler_paywallModel;
  swift_beginAccess();
  sub_218809EDC(v0 + v17, v3, &qword_280EE64B0, MEMORY[0x277D34D28]);
  v19 = v20;
  v18 = v21;
  if ((*(v20 + 48))(v3, 1, v21) == 1)
  {
    (*(v12 + 8))(v14, v11);
    return sub_218809FC8(v3, &qword_280EE64B0, MEMORY[0x277D34D28]);
  }

  else
  {
    (*(v19 + 32))(v6, v3, v18);
    swift_getObjectType();
    sub_219BE4364();
    (*(v19 + 8))(v6, v18);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_218F02BA0()
{
  sub_2187F6124(0, &qword_280EB7F90, type metadata accessor for MastheadPaywallEventSession);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v2);
  v6 = &v13[-v5];
  v7 = type metadata accessor for MastheadPaywallEventSession(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = OBJC_IVAR____TtC7NewsUI227MastheadPaywallEventHandler_session;
  swift_beginAccess();
  sub_218809EDC(v0 + v11, v6, &qword_280EB7F90, type metadata accessor for MastheadPaywallEventSession);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_218809FC8(v6, &qword_280EB7F90, type metadata accessor for MastheadPaywallEventSession);
  }

  sub_218F0368C(v6, v10);
  swift_getObjectType();
  sub_219BE4344();
  sub_219BE4334();
  sub_218F03920(v10, type metadata accessor for MastheadPaywallEventSession);
  (*(v8 + 56))(v4, 1, 1, v7);
  swift_beginAccess();
  sub_218F0370C(v4, v0 + v11, &qword_280EB7F90, type metadata accessor for MastheadPaywallEventSession);
  return swift_endAccess();
}

uint64_t sub_218F02E2C()
{
  sub_218774F78(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 48);
  __swift_destroy_boxed_opaque_existential_1(v0 + 88);
  __swift_destroy_boxed_opaque_existential_1(v0 + 128);
  sub_218809FC8(v0 + OBJC_IVAR____TtC7NewsUI227MastheadPaywallEventHandler_subscribeButtonDestination, &qword_280EE62C8, MEMORY[0x277D35210]);
  sub_218809FC8(v0 + OBJC_IVAR____TtC7NewsUI227MastheadPaywallEventHandler_paywallModel, &qword_280EE64B0, MEMORY[0x277D34D28]);
  sub_218F03C00(*(v0 + OBJC_IVAR____TtC7NewsUI227MastheadPaywallEventHandler_callToAction), *(v0 + OBJC_IVAR____TtC7NewsUI227MastheadPaywallEventHandler_callToAction + 8), *(v0 + OBJC_IVAR____TtC7NewsUI227MastheadPaywallEventHandler_callToAction + 16), *(v0 + OBJC_IVAR____TtC7NewsUI227MastheadPaywallEventHandler_callToAction + 24), *(v0 + OBJC_IVAR____TtC7NewsUI227MastheadPaywallEventHandler_callToAction + 32), *(v0 + OBJC_IVAR____TtC7NewsUI227MastheadPaywallEventHandler_callToAction + 40), *(v0 + OBJC_IVAR____TtC7NewsUI227MastheadPaywallEventHandler_callToAction + 48), *(v0 + OBJC_IVAR____TtC7NewsUI227MastheadPaywallEventHandler_callToAction + 56), *(v0 + OBJC_IVAR____TtC7NewsUI227MastheadPaywallEventHandler_callToAction + 64));
  sub_218809FC8(v0 + OBJC_IVAR____TtC7NewsUI227MastheadPaywallEventHandler_session, &qword_280EB7F90, type metadata accessor for MastheadPaywallEventSession);

  return swift_deallocClassInstance();
}

uint64_t sub_218F02F78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_2187F6124(0, &qword_280EE64B0, MEMORY[0x277D34D28]);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v39 - v10;
  v12 = sub_219BE3D34();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v39 - v17;
  if (a1 <= 1)
  {
    if (!a1)
    {
      *a3 = 0;
      v24 = MEMORY[0x277D34D10];
      goto LABEL_12;
    }

    if (a1 != 1)
    {
      goto LABEL_5;
    }

LABEL_8:
    v24 = MEMORY[0x277D34D08];
LABEL_12:
    v28 = *v24;
    v29 = sub_219BE3CB4();
    v39 = *(v29 - 8);
    (*(v39 + 104))(a3, v28, v29);
    v20 = *(v39 + 56);
    v22 = a3;
    v23 = 0;
    v21 = v29;
    goto LABEL_13;
  }

  if ((a1 - 2) < 2)
  {
    v25 = OBJC_IVAR____TtC7NewsUI227MastheadPaywallEventHandler_paywallModel;
    swift_beginAccess();
    sub_218809EDC(a2 + v25, v11, &qword_280EE64B0, MEMORY[0x277D34D28]);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      v26 = MEMORY[0x277D34D28];
      v27 = v11;
LABEL_19:
      sub_218809FC8(v27, &qword_280EE64B0, v26);
      v34 = sub_219BE3CB4();
      return (*(*(v34 - 8) + 56))(a3, 1, 1, v34);
    }

    (*(v13 + 32))(v18, v11, v12);
    v31 = sub_219BE3D24();
    (*(v13 + 8))(v18, v12);
    *a3 = v31;
    v32 = MEMORY[0x277D34CF8];
LABEL_21:
    v36 = *v32;
    v37 = sub_219BE3CB4();
    v38 = *(v37 - 8);
    (*(v38 + 104))(a3, v36, v37);
    return (*(v38 + 56))(a3, 0, 1, v37);
  }

  if (a1 == 5)
  {
    v33 = OBJC_IVAR____TtC7NewsUI227MastheadPaywallEventHandler_paywallModel;
    swift_beginAccess();
    sub_218809EDC(a2 + v33, v9, &qword_280EE64B0, MEMORY[0x277D34D28]);
    if ((*(v13 + 48))(v9, 1, v12) == 1)
    {
      v26 = MEMORY[0x277D34D28];
      v27 = v9;
      goto LABEL_19;
    }

    (*(v13 + 32))(v16, v9, v12);
    v35 = sub_219BE3D24();
    (*(v13 + 8))(v16, v12);
    *a3 = v35;
    v32 = MEMORY[0x277D34D00];
    goto LABEL_21;
  }

  if (a1 == 4)
  {
    goto LABEL_8;
  }

LABEL_5:
  v19 = sub_219BE3CB4();
  v20 = *(*(v19 - 8) + 56);
  v21 = v19;
  v22 = a3;
  v23 = 1;
LABEL_13:

  return v20(v22, v23, 1, v21);
}

uint64_t sub_218F034A0()
{
  sub_2186F8278(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_218F03510()
{
  sub_2187F6124(0, qword_280EB3C28, type metadata accessor for MastheadPaywallConfiguration);
  sub_219BE3204();
  sub_2187D9028();
  v0 = sub_219BF66A4();

  sub_219BE2F94();
}

uint64_t sub_218F03628(uint64_t a1, uint64_t a2)
{
  sub_2187FF18C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218F0368C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MastheadPaywallEventSession(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218F0370C(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_2187F6124(0, a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

void sub_218F03778(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (sub_219BED0C4())
  {
    sub_21978FDE0(a1);
    return;
  }

  v5 = a2 + OBJC_IVAR____TtC7NewsUI219TodayViewController_mastheadViewProviderDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 8);
    v7 = swift_getObjectType();
    v8 = sub_218803338();
    (*(v6 + 8))(a2, v8, a1, v7, v6);
    swift_unknownObjectRelease();
  }

  v9 = sub_218803338();
  v10 = MEMORY[0x21CEBCBD0](ObjectType, v9);
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = v10;
  swift_getObjectType();
  if ((sub_219BE90B4() & 1) == 0)
  {

LABEL_11:
    sub_218F02BA0();
    return;
  }

  sub_21880D358();
}

uint64_t sub_218F03920(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218F03980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20[1] = a3;
  v5 = sub_219BE3CB4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277D34D18];
  sub_2187F6124(0, &qword_27CC13690, MEMORY[0x277D34D18]);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v20 - v14;
  sub_218F02F78(a2, v3, (v20 - v14));
  sub_218809EDC(v15, v13, &qword_27CC13690, v9);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    sub_218809FC8(v15, &qword_27CC13690, MEMORY[0x277D34D18]);
  }

  else
  {
    (*(v6 + 32))(v8, v13, v5);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v17 = Strong;
      __swift_project_boxed_opaque_existential_1((v3 + 48), *(v3 + 72));
      v18 = v17;
      sub_219BE4254();
    }

    (*(v6 + 8))(v8, v5);
    v13 = v15;
  }

  return sub_218809FC8(v13, &qword_27CC13690, MEMORY[0x277D34D18]);
}

void sub_218F03C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, void *a9)
{
  if (a2)
  {
  }
}

uint64_t sub_218F03CB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 136))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_218F03D10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_218F03D94()
{
  sub_219BF7AA4();
  sub_219BF5524();
  return sub_219BF7AE4();
}

uint64_t sub_218F03E18()
{
  sub_219BF7AA4();
  sub_219BF5524();
  return sub_219BF7AE4();
}

uint64_t sub_218F03E74@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_219BF7614();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_218F03F14@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_219BF7614();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_218F03F6C(uint64_t a1)
{
  v2 = sub_218F041E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218F03FA8(uint64_t a1)
{
  v2 = sub_218F041E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChannelSupergroupKnobs.init(from:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  sub_218F044F0(0, &qword_27CC13698, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218F041E0();
  sub_219BF7B34();
  if (!v2)
  {
    sub_219BF7714();
    v11 = v10;
    if (v10 < 0.0)
    {
      if (qword_280E8D920 != -1)
      {
        swift_once();
      }

      sub_219BF61F4();
      sub_219BE5314();
      v11 = 0.0;
    }

    (*(v7 + 8))(v9, v6);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_218F041E0()
{
  result = qword_27CC136A0;
  if (!qword_27CC136A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC136A0);
  }

  return result;
}

uint64_t ChannelSupergroupKnobs.encode(to:)(void *a1)
{
  sub_218F044F0(0, &qword_27CC136A8, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218F041E0();
  sub_219BF7B44();
  sub_219BF7814();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_218F043A8(void *a1)
{
  sub_218F044F0(0, &qword_27CC136A8, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218F041E0();
  sub_219BF7B44();
  sub_219BF7814();
  return (*(v4 + 8))(v6, v3);
}

void sub_218F044F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218F041E0();
    v7 = a3(a1, &type metadata for ChannelSupergroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218F04578()
{
  result = qword_27CC136B0;
  if (!qword_27CC136B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC136B0);
  }

  return result;
}

unint64_t sub_218F045D0()
{
  result = qword_27CC136B8;
  if (!qword_27CC136B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC136B8);
  }

  return result;
}

unint64_t sub_218F04628()
{
  result = qword_27CC136C0;
  if (!qword_27CC136C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC136C0);
  }

  return result;
}

uint64_t sub_218F0467C(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277D84560];
  sub_218F05538(0, &unk_280E8B6F0, sub_218A38BBC, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  strcpy((inited + 32), "puzzleTypeID");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  sub_218F05538(0, &unk_280E8C0A0, MEMORY[0x277D6CCB8], v4);
  v6 = sub_219BE26C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_219C09EC0;
  v11 = (v10 + v9);
  *v11 = 90;
  v11[1] = 0xE100000000000000;
  v12 = *(v7 + 104);
  result = v12(v11, *MEMORY[0x277D6CCA8], v6);
  if ((*MEMORY[0x277D30A00] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *(v11 + v8) = *MEMORY[0x277D30A00];
    v12((v11 + v8), *MEMORY[0x277D6CCB0], v6);
    *(inited + 48) = v10;
    sub_2194AE704(inited);
    swift_setDeallocating();
    sub_218F0559C(inited + 32);
    v14 = sub_219BE2684();

    v2[2] = v14;
    v2[3] = a1;
    v2[4] = a2;
    return v2;
  }

  return result;
}

uint64_t sub_218F048A8(uint64_t a1)
{
  sub_218F05538(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v49 = &v43 - v3;
  v4 = sub_219BE26D4();
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x28223BE20](v4);
  v45 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE22B4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE22F4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v43 - v15;
  sub_218F05538(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  v48 = a1;
  sub_219BE2594();
  sub_219BE22D4();
  v17 = *(v11 + 8);
  v17(v16, v10);
  v18 = sub_219BE22C4();
  v20 = v19;
  (*(v7 + 8))(v9, v6);
  if (v20)
  {
    v44 = v18;
    v21 = [objc_opt_self() sharedAccount];
    v22 = [v21 isContentStoreFrontSupported];

    if (v22)
    {
      v43 = sub_218FA86C8(v48);
      v23 = v43;

      sub_219BE2594();
      v24 = v45;
      sub_219BE22E4();
      v17(v14, v10);
      v25 = sub_219BE2634();
      v27 = v26;
      (*(v46 + 8))(v24, v47);
      if (v27 && (v52[0] = v25, v52[1] = v27, v50 = 0x65766968637261, v51 = 0xE700000000000000, sub_2187F3BD4(), v28 = sub_219BF7084(), , (v28 & 1) != 0))
      {
        v29 = swift_allocObject();
        *(v29 + 16) = v44;
        *(v29 + 24) = v20;
        *(v29 + 32) = v23;
        v30 = v29 | 0xE000000000000004;
      }

      else
      {

        v36 = swift_allocObject();
        v37 = v43;
        *(v36 + 16) = v44;
        *(v36 + 24) = v20;
        v38 = MEMORY[0x277D84F90];
        *(v36 + 32) = v37;
        *(v36 + 40) = v38;
        *(v36 + 48) = 1;
        *(v36 + 56) = 10;
        *(v36 + 64) = 0u;
        *(v36 + 80) = 0u;
        *(v36 + 96) = -1;
        v30 = v36 | 0x2000000000000006;
        v39 = v23;
      }

      v52[0] = v30;
      v40 = v49;
      sub_219BE2564();
      v41 = sub_219BDFA44();
      (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
      v31 = sub_218F04F1C(v52, v40);

      sub_21874522C(v40, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218F05538);
      v35 = v30;
    }

    else
    {

      v32 = swift_allocObject();
      *(v32 + 40) = &type metadata for AlertContentRegionUnavailable;
      *(v32 + 48) = sub_2189F7F2C();
      *(v32 + 56) = 1;
      v52[0] = v32;
      v33 = v49;
      sub_219BE2564();
      v34 = sub_219BDFA44();
      (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
      v31 = sub_218F04F1C(v52, v33);
      sub_21874522C(v33, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218F05538);
      v35 = v52[0];
    }

    sub_218932F9C(v35);
  }

  else
  {
    v31 = 0;
  }

  return v31 & 1;
}

uint64_t sub_218F04F1C(uint64_t *a1, uint64_t a2)
{
  sub_218F05538(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v9 = v26 - v8;
  v10 = *a1;
  v11 = *(v2 + 24);
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  v33 = 0;
  memset(v32, 0, sizeof(v32));
  v31 = v11;
  sub_2187B1898(v32, &v27, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  if (*(&v28 + 1))
  {
    sub_21875F93C(&v27, v29);
    *&v27 = v10;
    v12 = sub_2194DA78C(v29);
    v14 = v13;
    v16 = v15;
    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  else
  {
    sub_21874522C(&v27, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v12 = qword_280ED32D8;
    v14 = qword_280ED32E0;
    v16 = qword_280ED32E8;

    sub_2188202A8(v14);
  }

  v26[1] = v10;
  v28 = 0u;
  v27 = 0u;
  sub_2187B1898(a2, v9, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218F05538);
  sub_2187B1898(v34, v29, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  v17 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v18 = (v7 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 47) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  sub_2189B4EAC(v9, v20 + v17);
  v21 = v20 + v18;
  v22 = v29[1];
  *v21 = v29[0];
  *(v21 + 16) = v22;
  *(v21 + 32) = v30;
  v23 = (v20 + v19);
  v24 = (v20 + ((v19 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v23 = 0;
  v23[1] = 0;
  *v24 = v12;
  v24[1] = v14;
  v24[2] = v16;

  sub_2188202A8(v14);
  sub_2186CF94C();
  sub_218F056EC(&qword_280EE5A90, 255, sub_2186CF94C);
  sub_219BEB464();

  sub_2187FABEC(v14);
  sub_21874522C(v32, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  sub_21874522C(v34, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_21874522C(&v27, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
  return 1;
}

void sub_218F05538(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218F0559C(uint64_t a1)
{
  sub_218A38BBC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218F055F8(void *a1)
{
  sub_218F05538(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v4 = (*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2194DAC9C(a1, *(v1 + 16), v1 + v4, v1 + v5, *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_218F056EC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_218F05748()
{
  if (!qword_280E92070)
  {
    type metadata accessor for BestOfBundleMagazineFeedGroupConfigData();
    sub_218F0A318(&unk_280E97770, type metadata accessor for BestOfBundleMagazineFeedGroupConfigData);
    sub_218F0A318(&qword_280E97780, type metadata accessor for BestOfBundleMagazineFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E92070);
    }
  }
}

uint64_t type metadata accessor for BestOfBundleMagazineFeedGroupEmitter()
{
  result = qword_280E9BD20;
  if (!qword_280E9BD20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218F05874()
{
  sub_218F05748();
  if (v0 <= 0x3F)
  {
    type metadata accessor for BestOfBundleMagazineFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      sub_2186CFDE4(319, &qword_280E90510);
      if (v2 <= 0x3F)
      {
        sub_2186CFDE4(319, &qword_280E910C0);
        if (v3 <= 0x3F)
        {
          sub_2186CFDE4(319, &unk_280E90370);
          if (v4 <= 0x3F)
          {
            sub_2186D6710(319, &qword_280E8E270);
            if (v5 <= 0x3F)
            {
              sub_2186CFDE4(319, &unk_280EE6160);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_218F059C8()
{
  v0 = sub_219BF1934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for BestOfBundleMagazineFeedGroupConfigData();
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BestOfBundleMagazineFeedGroupEmitter();
  v20 = 11;
  sub_2186E3B14();
  v18 = sub_219BEE964();
  sub_2186E48B4(0, &unk_280E8B8B0, sub_218C6086C, MEMORY[0x277D84560]);
  sub_218C6086C(0);
  v17 = v8;
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_219C09BA0;
  sub_218F05748();
  sub_219BEDD14();
  (*(v1 + 16))(v3, &v7[*(v5 + 44)], v0);
  sub_218817458(v7, type metadata accessor for BestOfBundleMagazineFeedGroupConfigData);
  v12 = sub_219BF1784();
  v14 = v13;
  (*(v1 + 8))(v3, v0);
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  *(v15 + 24) = v14;
  sub_2186F8E48(0, &unk_280E91220, MEMORY[0x277D328E0]);
  swift_allocObject();
  *(v11 + v10) = sub_219BEFB94();
  (*(v9 + 104))(v11 + v10, *MEMORY[0x277D32308], v17);
  v19 = v18;
  sub_2191EE154(v11);
  return v19;
}

uint64_t sub_218F05D04(uint64_t a1)
{
  v28 = a1;
  v2 = type metadata accessor for BestOfBundleMagazineFeedGroupEmitter();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE3204();
  v27 = type metadata accessor for BestOfBundleMagazineFeedGroupEmitter;
  sub_218F0A27C(v1, v5, type metadata accessor for BestOfBundleMagazineFeedGroupEmitter);
  v6 = *(v3 + 80);
  v7 = ((v6 + 16) & ~v6) + v4;
  v26 = (v6 + 16) & ~v6;
  v29 = v7;
  v8 = swift_allocObject();
  sub_218F08B48(v5, v8 + ((v6 + 16) & ~v6));
  v9 = sub_219BE2E54();
  sub_219BE2F64();

  v10 = v30;
  sub_218F0A27C(v30, v5, type metadata accessor for BestOfBundleMagazineFeedGroupEmitter);
  v11 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  v13 = v26;
  sub_218F08B48(v5, v12 + v26);
  v14 = v28;
  *(v12 + v11) = v28;

  v15 = sub_219BE2E54();
  sub_218F08CD8();
  sub_219BE2F64();

  v16 = v27;
  sub_218F0A27C(v10, v5, v27);
  v17 = swift_allocObject();
  sub_218F08B48(v5, v17 + v13);
  *(v17 + v11) = v14;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_218F08F24;
  *(v18 + 24) = v17;

  v19 = sub_219BE2E54();
  type metadata accessor for MagazineFeedGroup();
  sub_219BE2F74();

  v20 = sub_219BE2E54();
  sub_218C5FB88();
  sub_219BE2F74();

  sub_218F0A27C(v30, v5, v16);
  v21 = swift_allocObject();
  sub_218F08B48(v5, v21 + v13);
  v22 = sub_219BE2E54();
  v23 = sub_219BE3064();

  return v23;
}

uint64_t sub_218F060BC(_OWORD *a1)
{
  v3 = type metadata accessor for BestOfBundleMagazineFeedGroupEmitter();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x277D84F90];
  v20 = a1;
  v21 = v1;
  sub_2189FE7E4();
  sub_219BE3204();
  sub_218F0A27C(v1, &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for BestOfBundleMagazineFeedGroupEmitter);
  v7 = (*(v4 + 80) + 96) & ~*(v4 + 80);
  v8 = swift_allocObject();
  v9 = a1[3];
  v8[3] = a1[2];
  v8[4] = v9;
  v8[5] = a1[4];
  v10 = a1[1];
  v8[1] = *a1;
  v8[2] = v10;
  sub_218F08B48(&v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v8 + v7);
  *(v8 + ((v5 + v7 + 7) & 0xFFFFFFFFFFFFFFF8)) = v6;
  sub_218F0A1CC(a1, v22);

  v11 = sub_219BE2E54();
  sub_2187E7248();
  sub_219BE2F64();

  v12 = sub_219BE2E54();
  sub_219BEE6E4();
  sub_218F0A318(&qword_280E8EBF0, sub_2187E7248);
  sub_219BE30D4();

  v13 = swift_allocObject();
  *(v13 + 16) = v6;
  v14 = *a1;
  *(v13 + 40) = a1[1];
  v15 = a1[3];
  *(v13 + 56) = a1[2];
  *(v13 + 72) = v15;
  *(v13 + 88) = a1[4];
  *(v13 + 24) = v14;
  sub_218F0A1CC(a1, v22);

  v16 = sub_219BE2E54();
  v17 = sub_219BE2F74();

  return v17;
}

void (*sub_218F063C8(uint64_t *a1, uint64_t a2, uint64_t a3))(char *, uint64_t)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  result = sub_218F0909C(a3, *a1);
  if (!v3)
  {
    v8 = swift_allocObject();
    v8[2] = v5;
    v8[3] = v4;
    v8[4] = v6;

    v9 = sub_219BE2E54();
    sub_218F08CD8();
    v10 = sub_219BE2F74();

    return v10;
  }

  return result;
}

uint64_t sub_218F064A4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = *a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
}

uint64_t sub_218F064FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v66 = a3;
  v67 = a4;
  v64 = a1;
  v68 = a5;
  sub_2186E48B4(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v65 = &v51 - v7;
  v56 = type metadata accessor for BestOfBundleMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v56);
  v57 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BEF554();
  v54 = *(v9 - 8);
  v55 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v63 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v61 = &v51 - v12;
  v62 = sub_219BED8D4();
  v60 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v59 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FE720();
  MEMORY[0x28223BE20](v14 - 8);
  v53 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D7A90C(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D7A940(0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D7A974(0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DCF58();
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v51 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_219BF1904();
  v29 = *(v28 - 8);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v51 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v51 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v51 - v36;
  sub_219BF2734();
  v38 = sub_219BDBD34();
  (*(*(v38 - 8) + 56))(v27, 1, 1, v38);
  v58 = a2;
  sub_219BF2734();
  v39 = sub_219BF18D4();
  v51 = *(v29 + 8);
  v52 = v28;
  v51(v32, v28);
  if (v39 >> 62)
  {
    result = sub_219BF7214();
    if (!result)
    {
      goto LABEL_7;
    }
  }

  else
  {
    result = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
LABEL_7:

      v41 = sub_219BF1AD4();
      (*(*(v41 - 8) + 56))(v24, 1, 1, v41);
      v42 = sub_219BEFC64();
      (*(*(v42 - 8) + 56))(v21, 1, 1, v42);
      v43 = sub_219BF4334();
      (*(*(v43 - 8) + 56))(v18, 1, 1, v43);
      v44 = sub_219BEC004();
      v45 = v53;
      (*(*(v44 - 8) + 56))(v53, 1, 1, v44);
      sub_219BF1854();
      swift_unknownObjectRelease();
      sub_218817458(v45, sub_2186FE720);
      sub_218817458(v18, sub_218D7A90C);
      sub_218817458(v21, sub_218D7A940);
      sub_218817458(v24, sub_218D7A974);
      sub_218817458(v27, sub_2186DCF58);
      v46 = v35;
      v48 = v51;
      v47 = v52;
      v51(v46, v52);
      v58 = sub_219BF2744();
      v48(v37, v47);
      sub_218F05748();
      v53 = sub_219BEDCB4();
      sub_219BEDCC4();
      v49 = v57;
      sub_219BEDD14();
      (*(v54 + 16))(v63, v49 + *(v56 + 28), v55);
      sub_218817458(v49, type metadata accessor for BestOfBundleMagazineFeedGroupConfigData);
      type metadata accessor for BestOfBundleMagazineFeedGroupEmitter();
      sub_2186E3B14();
      sub_219BEE9B4();
      sub_219BEE984();
      sub_219BEE9D4();
      type metadata accessor for BestOfBundleMagazineFeedGroupKnobs();
      sub_2186F8E48(0, &qword_280E91830, MEMORY[0x277D32318]);
      sub_219BEEC84();
      sub_219BEF864();

      sub_219BEF824();
      v50 = v59;
      sub_219BED834();
      (*(v60 + 32))(v68, v50, v62);
      type metadata accessor for MagazineFeedGroup();
      return swift_storeEnumTagMultiPayload();
    }
  }

  if ((v39 & 0xC000000000000001) != 0)
  {
    MEMORY[0x21CECE0F0](0, v39);
    goto LABEL_7;
  }

  if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    swift_unknownObjectRetain();
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_218F06E60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_218F0A27C(a1, a2, type metadata accessor for MagazineFeedGroup);
  sub_218C5FB88();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_218F06EBC()
{
  type metadata accessor for BestOfBundleMagazineFeedGroupEmitter();
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  type metadata accessor for MagazineFeedGroup();
  sub_218F0A318(&qword_280ED5E20, type metadata accessor for MagazineFeedGroup);
  return sub_219BEF194();
}

uint64_t sub_218F06FB0(uint64_t a1, uint64_t a2)
{
  v2 = a2 + *(type metadata accessor for BestOfBundleMagazineFeedGroupEmitter() + 20);
  v3 = type metadata accessor for BestOfBundleMagazineFeedGroupKnobs();
  return sub_219B6D49C(*(v2 + *(v3 + 20)), *(v2 + *(v3 + 24)));
}

id sub_218F07018(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v102 = a4;
  v107 = a3;
  v115 = a2;
  v6 = MEMORY[0x277D83D88];
  sub_2186E48B4(0, &qword_280E90F70, MEMORY[0x277D32C58], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v99 = v91 - v8;
  sub_2186E48B4(0, &qword_280E91148, MEMORY[0x277D32A88], v6);
  MEMORY[0x28223BE20](v9 - 8);
  v97 = v91 - v10;
  v101 = sub_219BF02F4();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v12 = v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BEE6F4();
  v106 = *(v13 - 1);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = (v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v104 = v91 - v17;
  v114 = *a1;
  sub_2189FE7E4();
  sub_2186DEEA0(0, &qword_280E8F860);
  sub_218F0A318(&qword_280E8ED60, sub_2189FE7E4);
  sub_218A42594();
  v18 = sub_219BF56E4();
  v105 = v4;
  v113 = MEMORY[0x277D84F90];
  if (v18 >> 62)
  {
LABEL_60:
    v90 = v18;
    v19 = sub_219BF7214();
    v18 = v90;
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v108 = v13;
  v98 = v16;
  if (!v19)
  {
    v49 = MEMORY[0x277D84F90];
LABEL_38:

    v50 = type metadata accessor for BestOfBundleMagazineFeedGroupEmitter();
    v51 = v107;
    __swift_project_boxed_opaque_existential_1((v107 + *(v50 + 40)), *(v107 + *(v50 + 40) + 24));
    if (sub_219BE4ED4())
    {
      v103 = v50;
      v52 = (v51 + *(v50 + 28));
      v53 = v52[3];
      v111 = v52[4];
      v95 = v52;
      v110 = v53;
      v109 = __swift_project_boxed_opaque_existential_1(v52, v53);
      v96 = v12;
      if (v49 < 0 || (v49 & 0x4000000000000000) != 0)
      {
        sub_2186D6710(0, &qword_280E8DF60);

        v112 = sub_219BF7534();
      }

      else
      {

        sub_219BF7924();
        sub_2186D6710(0, &qword_280E8DF60);
        v112 = v49;
      }

      v54 = v106;
      v55 = v104;

      v56 = *MEMORY[0x277D32988];
      v57 = sub_219BEFBD4();
      v58 = *(v57 - 8);
      v59 = *(v58 + 104);
      v60 = v58 + 104;
      LODWORD(v104) = v56;
      v59(v55, v56, v57);
      v61 = *MEMORY[0x277D320E8];
      v62 = v54;
      v63 = v54 + 104;
      v64 = *(v54 + 104);
      v64(v55, *MEMORY[0x277D320E8], v108);
      v65 = v105;
      v66 = sub_219BF0004();
      v111 = v65;
      if (v65)
      {
        (*(v54 + 8))(v55, v108);

        return v60;
      }

      v70 = v66;
      v91[1] = v63;
      v92 = v64;
      v93 = v61;
      v94 = v57;
      v71 = *(v62 + 8);
      v105 = v60;
      v106 = v62 + 8;
      v109 = v59;
      v110 = v71;
      v71(v55, v108);

      v72 = v102;
      swift_beginAccess();
      *(v72 + 16) = v70;

      swift_beginAccess();

      v74 = v107;
      v75 = sub_218F07E38(v73, v115);

      if (*(v75 + 16))
      {
        v115 = __swift_project_boxed_opaque_existential_1(v95, v95[3]);
        v76 = v98;
        (v109)(v98, v104, v94);
        v92(v76, v93, v108);
        v77 = v74 + *(v103 + 20);
        v78 = type metadata accessor for BestOfBundleMagazineFeedGroupKnobs();
        v112 = v77;
        v79 = sub_219BEFD84();
        (*(*(v79 - 8) + 56))(v97, 1, 1, v79);
        v80 = sub_219BF0354();
        (*(*(v80 - 8) + 56))(v99, 1, 1, v80);
        v81 = v96;
        sub_219BF02D4();
        v82 = v111;
        v83 = sub_219BEFFD4();
        if (v82)
        {

          (*(v100 + 8))(v81, v101);
          v110(v76, v108);
          v60 = sub_219BEEDD4();
          sub_218F0A318(&qword_280E917E0, MEMORY[0x277D32430]);
          swift_allocError();
          *v84 = v82;
          (*(*(v60 - 8) + 104))(v84, *MEMORY[0x277D32378], v60);
          swift_willThrow();
          return v60;
        }

        v86 = v83;

        (*(v100 + 8))(v81, v101);
        v110(v76, v108);
        v87 = *(v86 + 16);
        v88 = *(v112 + *(v78 + 28));
        if (v87 >= v88)
        {
          __swift_project_boxed_opaque_existential_1((v107 + *(v103 + 32)), *(v107 + *(v103 + 32) + 24));
          v60 = sub_219BF2804();

          return v60;
        }

        v60 = sub_219BEEDD4();
        sub_218F0A318(&qword_280E917E0, MEMORY[0x277D32430]);
        swift_allocError();
        v68 = v89;
        *v89 = v88;
        v89[1] = v87;
        v69 = MEMORY[0x277D32400];
      }

      else
      {

        if (qword_280E8D920 != -1)
        {
          swift_once();
        }

        sub_219BF61F4();
        sub_219BE5314();
        v60 = sub_219BEEDD4();
        sub_218F0A318(&qword_280E917E0, MEMORY[0x277D32430]);
        swift_allocError();
        v68 = v85;
        v69 = MEMORY[0x277D323B0];
      }
    }

    else
    {

      if (qword_280E8D920 != -1)
      {
        swift_once();
      }

      sub_219BF61F4();
      sub_219BE5314();
      v60 = sub_219BEEDD4();
      sub_218F0A318(&qword_280E917E0, MEMORY[0x277D32430]);
      swift_allocError();
      v68 = v67;
      v69 = MEMORY[0x277D32408];
    }

    (*(*(v60 - 8) + 104))(v68, *v69, v60);
    swift_willThrow();
    return v60;
  }

  v20 = 0;
  v21 = v18 & 0xC000000000000001;
  v22 = v18 & 0xFFFFFFFFFFFFFF8;
  v103 = v18;
  v23 = (v18 + 32);
  v16 = &selRef_moveShortcutWithIdentifier_toIndex_;
  v111 = v18 & 0xC000000000000001;
  v112 = v19;
  v109 = (v18 + 32);
  v110 = (v18 & 0xFFFFFFFFFFFFFF8);
  while (1)
  {
    while (1)
    {
      if (v21)
      {
        v18 = MEMORY[0x21CECE0F0](v20, v103);
      }

      else
      {
        if (v20 >= *(v22 + 16))
        {
          goto LABEL_59;
        }

        v18 = v23[v20];
      }

      v13 = v18;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      if ([v18 v16[256]])
      {
        break;
      }

      if (v20 == v19)
      {
        goto LABEL_36;
      }
    }

    v25 = v12;
    result = [v13 articleID];
    if (!result)
    {
      break;
    }

    v27 = result;
    v28 = v115[1];
    v29 = sub_219BF5414();
    v31 = v30;

    if (*(v28 + 16))
    {
      sub_219BF7AA4();
      sub_219BF5524();
      v32 = sub_219BF7AE4();
      v33 = -1 << *(v28 + 32);
      v34 = v32 & ~v33;
      if ((*(v28 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
      {
        v35 = ~v33;
        do
        {
          v36 = (*(v28 + 48) + 16 * v34);
          v37 = *v36 == v29 && v36[1] == v31;
          if (v37 || (sub_219BF78F4() & 1) != 0)
          {
            goto LABEL_32;
          }

          v34 = (v34 + 1) & v35;
        }

        while (((*(v28 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) != 0);
      }
    }

    result = [v13 articleID];
    if (!result)
    {
      goto LABEL_63;
    }

    v38 = result;
    v39 = v115[3];
    v40 = sub_219BF5414();
    v42 = v41;

    if (*(v39 + 16))
    {
      sub_219BF7AA4();
      sub_219BF5524();
      v43 = sub_219BF7AE4();
      v44 = -1 << *(v39 + 32);
      v45 = v43 & ~v44;
      if ((*(v39 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45))
      {
        v46 = ~v44;
        while (1)
        {
          v47 = (*(v39 + 48) + 16 * v45);
          v48 = *v47 == v40 && v47[1] == v42;
          if (v48 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v45 = (v45 + 1) & v46;
          if (((*(v39 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
          {
            goto LABEL_31;
          }
        }

LABEL_32:

        goto LABEL_33;
      }
    }

LABEL_31:

    sub_219BF73D4();
    sub_219BF7414();
    sub_219BF7424();
    v18 = sub_219BF73E4();
LABEL_33:
    v12 = v25;
    v21 = v111;
    v19 = v112;
    v23 = v109;
    v22 = v110;
    v16 = &selRef_moveShortcutWithIdentifier_toIndex_;
    if (v20 == v112)
    {
LABEL_36:
      v49 = v113;
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}