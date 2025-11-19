uint64_t sub_2194126B8(uint64_t a1, uint64_t a2)
{
  sub_219413250(0, qword_280EDE900, type metadata accessor for TagFeedGroup, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21941274C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2194127B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21941281C(unint64_t a1, uint64_t a2)
{
  v2 = a1;
  v31 = MEMORY[0x277D84F90];
  v3 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_25:
    v4 = sub_219BF7214();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v26 = v3;
      v27 = v2;
      v3 = 0;
      v28 = v2 & 0xFFFFFFFFFFFFFF8;
      v29 = v2 & 0xC000000000000001;
      v2 += 32;
      while (1)
      {
        if (v29)
        {
          v5 = MEMORY[0x21CECE0F0](v3, v27);
          v6 = __OFADD__(v3++, 1);
          if (v6)
          {
LABEL_22:
            __break(1u);
LABEL_23:
            v18 = v31;
            v3 = v26;
            v2 = v27;
            goto LABEL_27;
          }
        }

        else
        {
          if (v3 >= *(v28 + 16))
          {
            __break(1u);
            goto LABEL_25;
          }

          v5 = *(v2 + 8 * v3);
          swift_unknownObjectRetain();
          v6 = __OFADD__(v3++, 1);
          if (v6)
          {
            goto LABEL_22;
          }
        }

        v7 = *(a2 + 88);
        v8 = [v5 identifier];
        v9 = sub_219BF5414();
        v11 = v10;

        if (*(v7 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v12 = sub_219BF7AE4(), v13 = -1 << *(v7 + 32), v14 = v12 & ~v13, ((*(v7 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0))
        {
          v15 = ~v13;
          while (1)
          {
            v16 = (*(v7 + 48) + 16 * v14);
            v17 = *v16 == v9 && v16[1] == v11;
            if (v17 || (sub_219BF78F4() & 1) != 0)
            {
              break;
            }

            v14 = (v14 + 1) & v15;
            if (((*(v7 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          swift_unknownObjectRelease();

          if (v3 == v4)
          {
            goto LABEL_23;
          }
        }

        else
        {
LABEL_4:

          sub_219BF73D4();
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
          if (v3 == v4)
          {
            goto LABEL_23;
          }
        }
      }
    }
  }

  v18 = MEMORY[0x277D84F90];
LABEL_27:
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_219C09EC0;
  if (v3)
  {
    v20 = sub_219BF7214();
  }

  else
  {
    v20 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v18 < 0 || (v18 & 0x4000000000000000) != 0)
  {
    v25 = v20;
    result = sub_219BF7214();
    v22 = v25 - result;
    if (!__OFSUB__(v25, result))
    {
      goto LABEL_35;
    }
  }

  else
  {
    result = *(v18 + 16);
    v6 = __OFSUB__(v20, result);
    v22 = v20 - result;
    if (!v6)
    {
LABEL_35:
      v23 = MEMORY[0x277D83B88];
      v24 = MEMORY[0x277D83C10];
      *(v19 + 56) = MEMORY[0x277D83B88];
      *(v19 + 64) = v24;
      *(v19 + 32) = v22;
      *(v19 + 96) = v23;
      *(v19 + 104) = v24;
      *(v19 + 72) = result;
      sub_219BF6214();
      sub_219BE5314();

      return v18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_219412B4C(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v38 = a4;
  v8 = sub_219BF0BD4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ArticleListTagFeedGroupEmitter();
  type metadata accessor for ArticleListTagFeedGroupKnobs();
  sub_219BEF134();
  sub_219BEF524();
  (*(v9 + 8))(v11, v8);
  v12 = v39;
  if (v39 < 1)
  {
    sub_219BEEDD4();
    sub_21940DB4C(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    sub_219BEEDC4();
    return swift_willThrow();
  }

  v13 = sub_219410658(a3, a1, a2);
  v15 = v14;
  v16 = sub_219410824(v4, a1, v13, v12);
  v18 = v17;

  if (v16 >> 62)
  {
    v19 = sub_219BF7214();
    if (!(v18 >> 62))
    {
      goto LABEL_4;
    }

LABEL_34:
    v20 = sub_219BF7214();
    goto LABEL_5;
  }

  v19 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v18 >> 62)
  {
    goto LABEL_34;
  }

LABEL_4:
  v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

  if (v38)
  {
    if (v19)
    {
      if (v19 >= v12)
      {
        v21 = 1;
        if ((v20 & 0x8000000000000000) == 0)
        {
          if (v20 >= v12)
          {
            v21 = 1;
          }

          else
          {
            v21 = 2;
          }
        }
      }

      else
      {
        v21 = 3;
      }
    }

    else if (v15)
    {
      v21 = 4;
    }

    else
    {
      v21 = 3;
    }
  }

  else if (v19)
  {
    v21 = v19 >= v12;
  }

  else
  {
    v21 = 4;
  }

  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_219C0EE20;
  v24 = MEMORY[0x277D83B88];
  v25 = MEMORY[0x277D83C10];
  *(v23 + 56) = MEMORY[0x277D83B88];
  *(v23 + 64) = v25;
  *(v23 + 32) = v19;
  *(v23 + 96) = v24;
  *(v23 + 104) = v25;
  *(v23 + 72) = v20;
  v37 = v16;
  LODWORD(v38) = v21;
  if (v21 <= 1u)
  {
    v26 = 0xE900000000000068;
    if (v21)
    {
      v28 = 1954047342;
    }

    else
    {
      v28 = 1953718636;
    }

    v27 = v28 | 0x6374614200000000;
  }

  else if (v21 == 2)
  {
    v26 = 0xEB00000000686374;
    v27 = 0x6142646E61707865;
  }

  else if (v21 == 3)
  {
    v26 = 0xED00006863746142;
    v27 = 0x70696B536C6F6F70;
  }

  else
  {
    v26 = 0xEA00000000006863;
    v27 = 0x7461427974706D65;
  }

  v29 = MEMORY[0x277D837D0];
  *(v23 + 136) = MEMORY[0x277D837D0];
  v30 = v23;
  v31 = sub_2186FC3BC();
  v30[18] = v31;
  v30[14] = v27;
  v30[15] = v26;
  sub_219BEF0B4();
  v32 = *(v39 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v33 = sub_21988DFA0();
  v35 = v34;

  v30[22] = v29;
  v30[23] = v31;
  v30[19] = v33;
  v30[20] = v35;
  sub_219BF6214();
  sub_219BE5314();

  sub_219BEF0B4();
  *(v39 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  return v37;
}

uint64_t sub_219412FF4(uint64_t a1, uint64_t a2)
{
  sub_219413250(0, qword_280EDE900, type metadata accessor for TagFeedGroup, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_219413088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ArticleListTagFeedGroupEmitter() - 8);
  v6 = (((*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_21940F6F8(a1, *(v2 + v6), *(v2 + v6 + 8), *(v2 + v6 + 16), a2);
}

uint64_t sub_219413144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_2194131D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_219413250(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2194132B4()
{
  result = qword_280EE78B0;
  if (!qword_280EE78B0)
  {
    sub_219413250(255, &qword_280EE78A8, type metadata accessor for ArticleListTagFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE78B0);
  }

  return result;
}

uint64_t sub_21941333C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SearchFeedServiceContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E59C4(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28 - v9;
  v11 = sub_219BDB954();
  v29 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [*(v2 + 32) appConfiguration];
  v15 = *(v2 + 80);
  if (v15 <= 9)
  {
    v16 = v14;
    v30 = v5;
    if (((1 << v15) & 0x39F) != 0)
    {
LABEL_3:
      __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
      sub_219990A4C();
      goto LABEL_4;
    }

    if (v15 == 5)
    {
      if (qword_27CC08110 != -1)
      {
        swift_once();
      }

      if ((sub_219BDC834() & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (qword_280EE9870 != -1)
      {
        swift_once();
      }

      if ((sub_219BDC834() & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    sub_219413830(v25, v10);
    v26 = v29;
    if ((*(v29 + 48))(v10, 1, v11) == 1)
    {
      sub_218838478(v10);
      sub_219413F0C();
      swift_allocError();
      *v27 = 0;
      sub_2186E59C4(0, &qword_280EE6DA0, type metadata accessor for SearchFeedServiceConfig, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v23 = sub_219BE2FF4();
      swift_unknownObjectRelease();
      return v23;
    }

    (*(v26 + 32))(v13, v10, v11);
    __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
    v28 = off_282A94378;
    type metadata accessor for SearchFeedConfigManager();
    v28(v13);
    (*(v29 + 8))(v13, v11);
LABEL_4:
    v17 = *(v2 + 88);
    sub_219413FA8(a1, &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SearchFeedServiceContext);
    v18 = (*(v30 + 80) + 16) & ~*(v30 + 80);
    v19 = (v6 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
    v21 = swift_allocObject();
    sub_219413DE8(v7, v21 + v18);
    *(v21 + v19) = v16;
    *(v21 + v20) = v15;
    *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v17;

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v22 = sub_219BE2E54();
    type metadata accessor for SearchFeedServiceConfig();
    v23 = sub_219BE2F74();

    swift_unknownObjectRelease();

    return v23;
  }

  v31 = *(v2 + 80);
  result = sub_219BF7974();
  __break(1u);
  return result;
}

uint64_t sub_219413830@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 80);
  if (v4 > 9)
  {
    result = sub_219BF7974();
    __break(1u);
    return result;
  }

  if (((1 << v4) & 0x39F) == 0)
  {
    if (v4 == 5)
    {
      if (qword_27CC08108 == -1)
      {
        goto LABEL_10;
      }
    }

    else if (qword_27CC08118 == -1)
    {
LABEL_10:
      sub_219413F60(&qword_27CC1A1B8, a1, type metadata accessor for SearchFeedServiceConfigFetcher);
      sub_219BDC7D4();
      sub_219BDB914();
    }

    swift_once();
    goto LABEL_10;
  }

  v5 = sub_219BDB954();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, 1, 1, v5);
}

uint64_t sub_219413A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v30 = a4;
  v31 = a5;
  v29 = a3;
  v28 = sub_219BEEA84();
  v9 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SearchFeedContentConfig();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SearchFeedServiceContext();
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for SearchFeedServiceContext;
  sub_219413FA8(a2, v17, type metadata accessor for SearchFeedServiceContext);
  v26 = v14;
  sub_219413FA8(a1, v14, type metadata accessor for SearchFeedContentConfig);
  v18 = v28;
  (*(v9 + 104))(v11, *MEMORY[0x277D32220], v28);
  sub_219413FA8(v17, a6, type metadata accessor for SearchFeedServiceContext);
  v19 = type metadata accessor for SearchFeedServiceConfig();
  sub_219413FA8(v14, a6 + v19[5], type metadata accessor for SearchFeedContentConfig);
  *(a6 + v19[6]) = v29;
  v20 = v9;
  v21 = *(v9 + 16);
  v22 = v18;
  v21(a6 + v19[7], v11, v18);
  v23 = [swift_unknownObjectRetain() autoRefreshMinimumInterval];
  (*(v20 + 8))(v11, v22);
  sub_219414010(v26, type metadata accessor for SearchFeedContentConfig);
  sub_219414010(v17, v27);
  *(a6 + v19[8]) = v23;
  v24 = v31;
  *(a6 + v19[9]) = v30;
  *(a6 + v19[10]) = v24;
  return swift_unknownObjectRetain();
}

uint64_t sub_219413CB8()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 40);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_219413DE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchFeedServiceContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_219413E4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SearchFeedServiceContext() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_219413A08(a1, v2 + v6, *(v2 + v7), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), a2);
}

unint64_t sub_219413F0C()
{
  result = qword_27CC1A1A8;
  if (!qword_27CC1A1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A1A8);
  }

  return result;
}

uint64_t sub_219413F60(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_219413FA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219414010(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_219414084()
{
  result = qword_27CC1A1C0;
  if (!qword_27CC1A1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A1C0);
  }

  return result;
}

unint64_t sub_219414124()
{
  result = qword_27CC1A1D0;
  if (!qword_27CC1A1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A1D0);
  }

  return result;
}

uint64_t sub_2194141A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x28223BE20](a1 - 8);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219414A24(v2, v5, type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader);
  v6 = v5[3];
  v7 = v5[6];
  v8 = v5[7];

  sub_218F351A8(v7, v8);
  sub_2187DE3C8();
  sub_219414A8C(v5 + *(v9 + 48));
  v10 = *MEMORY[0x277D6E758];
  v11 = sub_219BE9834();
  return (*(*(v11 - 8) + 104))(a2, v10, v11);
}

double sub_2194142CC()
{
  v1 = type metadata accessor for MagazineFeedGroupTitleViewLayoutAttributes();
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = (&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v2);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219414A24(v0, v6, type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader);
  v7 = v6[3];
  v8 = v6[6];
  v9 = v6[7];

  sub_218F351A8(v8, v9);
  sub_2187DE3C8();
  sub_219414AE8(v6 + *(v10 + 48), v4);
  v11 = *v4;
  sub_219414A8C(v4);
  return v11;
}

uint64_t sub_219414420(uint64_t a1)
{
  v2 = sub_21941451C(&qword_280E97060, type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader);

  return MEMORY[0x2821D5688](a1, v2);
}

uint64_t sub_21941451C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_219414564()
{
  v1 = v0;
  v2 = sub_219BE9CC4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219414A24(v1, v8, type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_219BF4E34();
  }

  else
  {
    sub_2187DE694();
    (*(v3 + 32))(v6, &v8[*(v10 + 48)], v2);
    sub_219BE9CA4();
    (*(v3 + 8))(v6, v2);
    v11 = sub_219BE8434();
    return (*(*(v11 - 8) + 8))(v8, v11);
  }
}

double sub_219414730()
{
  v1 = v0;
  v2 = sub_219BE9CC4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219414A24(v1, v8, type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_219BF4E54();
    v10 = v9;
  }

  else
  {
    sub_2187DE694();
    (*(v3 + 32))(v6, &v8[*(v11 + 48)], v2);
    sub_219BE9CB4();
    v10 = v12;
    (*(v3 + 8))(v6, v2);
    v13 = sub_219BE8434();
    (*(*(v13 - 8) + 8))(v8, v13);
  }

  return v10;
}

uint64_t sub_219414928(uint64_t a1)
{
  v2 = sub_21941451C(&qword_280E97120, type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter);

  return MEMORY[0x2821D5688](a1, v2);
}

uint64_t sub_219414A24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219414A8C(uint64_t a1)
{
  v2 = type metadata accessor for MagazineFeedGroupTitleViewLayoutAttributes();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_219414AE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagazineFeedGroupTitleViewLayoutAttributes();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_219414B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t sub_219414BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = a5(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, a2, a3, v8);
}

uint64_t sub_219414C8C(uint64_t a1)
{
  result = sub_219BE94B4();
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for RecentStoriesTagFeedGroupConfigData()
{
  result = qword_280E9C840;
  if (!qword_280E9C840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219414DC0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BF1934();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v18 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2194152F0(0, &qword_280E8C898, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21941529C();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v16;
    v11 = v17;
    v19 = 1;
    sub_218933D7C(&qword_280E90808);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    *v11 = 29;
    v13 = type metadata accessor for RecentStoriesTagFeedGroupConfigData();
    (*(v12 + 32))(&v11[*(v13 + 20)], v18, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_219415028(void *a1)
{
  v3 = v1;
  sub_2194152F0(0, &qword_27CC1A1D8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21941529C();
  sub_219BF7B44();
  v11[15] = *v3;
  v11[14] = 0;
  sub_218933D28();
  sub_219BF7834();
  if (!v2)
  {
    type metadata accessor for RecentStoriesTagFeedGroupConfigData();
    v11[13] = 1;
    sub_219BF1934();
    sub_218933D7C(&qword_280E90810);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2194151F4(uint64_t a1)
{
  v2 = sub_21941529C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219415230(uint64_t a1)
{
  v2 = sub_21941529C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_21941529C()
{
  result = qword_280E9C878[0];
  if (!qword_280E9C878[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E9C878);
  }

  return result;
}

void sub_2194152F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21941529C();
    v7 = a3(a1, &type metadata for RecentStoriesTagFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_219415368()
{
  result = qword_27CC1A1E0;
  if (!qword_27CC1A1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A1E0);
  }

  return result;
}

unint64_t sub_2194153C0()
{
  result = qword_280E9C868;
  if (!qword_280E9C868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9C868);
  }

  return result;
}

unint64_t sub_219415418()
{
  result = qword_280E9C870;
  if (!qword_280E9C870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9C870);
  }

  return result;
}

uint64_t sub_2194154B8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_218C812B0(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_2194171D8(v5);
  *a1 = v2;
  return result;
}

void sub_219415524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_219417118(0, &qword_280EE3760, MEMORY[0x277D6EC60]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = aBlock - v12;
  v14 = *(v3 + 32);
  (*(v10 + 16))(aBlock - v12, a1, v9);
  sub_218B130BC(v4, v24);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = (v11 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v10 + 32))(v17 + v15, v13, v9);
  v18 = (v17 + v16);
  v19 = v24[3];
  v18[2] = v24[2];
  v18[3] = v19;
  v18[4] = v24[4];
  v20 = v24[1];
  *v18 = v24[0];
  v18[1] = v20;
  v21 = (v17 + ((v16 + 87) & 0xFFFFFFFFFFFFFFF8));
  *v21 = a2;
  v21[1] = a3;
  aBlock[4] = sub_219417060;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_126;
  v22 = _Block_copy(aBlock);

  [v14 prepareForUseWithCompletionHandler_];
  _Block_release(v22);
}

uint64_t sub_219415748(uint64_t a1, char **a2, void (*a3)(char *), uint64_t a4)
{
  v36 = a4;
  v37 = a3;
  sub_219417118(0, &qword_280EE4B40, MEMORY[0x277D6DF88]);
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - v7;
  sub_219417118(0, &qword_280EE3760, MEMORY[0x277D6EC60]);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - v11;
  v13 = *(v10 + 16);
  v33 = v14;
  v31 = v13;
  (v13)(v12, a1);
  v38[0] = *a2;

  sub_2194154B8(v38);
  v32 = a1;
  v15 = *(v38[0] + 2);
  if (v15)
  {
    v16 = v38[0] + 40;
    do
    {
      v17 = *v16;
      v16 += 16;
      if (v17 <= 0x3F)
      {

        sub_219415B14(v18, v12);
        j__swift_release();
      }

      --v15;
    }

    while (v15);
  }

  type metadata accessor for FollowingModel();
  sub_218A7BAF8();
  sub_2187490E4();
  sub_2186D5924(&qword_280EDC630, type metadata accessor for FollowingModel);
  sub_219BE78F4();
  __swift_project_boxed_opaque_existential_1(v38, v38[3]);
  if (sub_219BE6E54())
  {
    v19 = MEMORY[0x277D6DF80];
    v20 = v37;
    v22 = v34;
    v21 = v35;
    v23 = v33;
  }

  else
  {
    sub_218A7BB4C();
    v25 = *(v24 + 48);
    v26 = *(v24 + 64);
    v23 = v33;
    v31(v8, v12, v33);
    sub_218718690(v38, &v8[v25]);
    v27 = *MEMORY[0x277D6D868];
    v28 = sub_219BE6DF4();
    (*(*(v28 - 8) + 104))(&v8[v26], v27, v28);
    v19 = MEMORY[0x277D6DF78];
    v20 = v37;
    v22 = v34;
    v21 = v35;
  }

  (*(v22 + 104))(v8, *v19, v21);
  v20(v8);
  (*(v22 + 8))(v8, v21);
  (*(v10 + 8))(v12, v23);
  return __swift_destroy_boxed_opaque_existential_1(v38);
}

uint64_t sub_219415B14(uint64_t a1, uint64_t a2)
{
  v141 = a2;
  v143 = a1;
  sub_218B061E4();
  MEMORY[0x28223BE20](v3 - 8);
  v136 = (&v116 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218950B84();
  v144 = v5;
  v133 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v132 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v125 = &v116 - v9;
  MEMORY[0x28223BE20](v8);
  v124 = &v116 - v10;
  sub_218A7B8DC();
  v129 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v145 = &v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v123 = &v116 - v14;
  sub_218748D40();
  v142 = v15;
  v130 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v120 = &v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v122 = &v116 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v128 = &v116 - v21;
  MEMORY[0x28223BE20](v20);
  v121 = &v116 - v22;
  sub_218A2D984(0);
  MEMORY[0x28223BE20](v23 - 8);
  ObjectType = (&v116 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218950928();
  v135 = v25;
  v140 = *(v25 - 8);
  v26 = MEMORY[0x28223BE20](v25);
  v131 = &v116 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v126 = &v116 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v119 = &v116 - v31;
  MEMORY[0x28223BE20](v30);
  v134 = &v116 - v32;
  v33 = sub_219BF2CB4();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v36 = (&v116 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v138 = sub_219BF2634();
  v37 = *(v138 - 1);
  MEMORY[0x28223BE20](v138);
  v39 = &v116 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(v2 + 64);
  v137 = v2;
  __swift_project_boxed_opaque_existential_1((v2 + 40), v40);
  v41 = *(v143 + 16);
  *v36 = v41;
  (*(v34 + 104))(v36, *MEMORY[0x277D33B98], v33);
  v127 = v41;
  swift_unknownObjectRetain();
  sub_219BF4794();
  v42 = v135;
  (*(v34 + 8))(v36, v33);
  v43 = sub_219BF2614();
  v44 = v39;
  v45 = v140;
  (*(v37 + 8))(v44, v138);
  v46 = type metadata accessor for FollowingTagModel();
  v47 = swift_allocObject();
  *(v47 + 16) = 1;
  *(v47 + 24) = v143;
  *(v47 + 32) = v43 & 1;
  sub_219417118(0, &qword_280EE3760, MEMORY[0x277D6EC60]);
  v49 = v48;

  v50 = ObjectType;
  sub_219BEB354();
  if ((*(v45 + 48))(v50, 1, v42) == 1)
  {
    sub_219417F6C(v50, sub_218A2D984);
    v51 = [*(v137 + 8) isOptedInToSiriSuggestions];
    v118 = v49;
    if (v51)
    {
      sub_2197ECAA4(v156);
    }

    else
    {
      sub_2197ECBE4(v156);
    }

    v151 = v156[0];
    v152 = v156[1];
    v153 = v156[2];
    v154 = v156[3];
    v155 = v157;
    sub_218725F94();
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_219C146A0;
    *(v63 + 32) = v47;
    v147[2] = v153;
    v147[3] = v154;
    v147[0] = v151;
    v147[1] = v152;
    v148 = v155;
    v149 = v63;
    v150 = 8;

    sub_218967C1C(&v151, v146);
    v64 = sub_2186D5924(&unk_280EE5C80, sub_218950B84);
    v65 = sub_2186D5924(&unk_280EE5C90, sub_218950B84);
    v66 = v144;
    MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v144, v64, v65);
    type metadata accessor for FollowingModel();
    sub_2187490E4();
    sub_2186D5924(&qword_280EDC630, type metadata accessor for FollowingModel);
    v67 = v131;
    sub_219BE6924();
    v68 = v132;
    sub_218BDF9D0();
    sub_219BE6994();
    (*(v133 + 8))(v68, v66);
    sub_2186D5924(&qword_280EE5760, sub_218950928);
    sub_219BF5DF4();
    sub_219BF5E84();
    if (*&v147[0] == v146[0])
    {
      (*(v45 + 8))(v67, v42);

      return sub_218967CDC(&v151);
    }

    else
    {
      sub_218B0632C();
      sub_219BEB324();

      sub_218967CDC(&v151);
      return (*(v45 + 8))(v67, v42);
    }
  }

  v132 = v46;
  v52 = v134;
  (*(v45 + 32))(v134, v50, v42);
  v53 = *(v47 + 16);
  v54 = *(v47 + 24);
  *&v147[0] = 0;
  *(&v147[0] + 1) = 0xE000000000000000;
  LOBYTE(v156[0]) = v53;
  sub_219BF7484();
  MEMORY[0x21CECC330](58, 0xE100000000000000);
  v55 = [*(v54 + 16) identifier];
  v56 = sub_219BF5414();
  v58 = v57;

  MEMORY[0x21CECC330](v56, v58);

  LOBYTE(v55) = sub_219BE6A14();

  if (v55)
  {
    goto LABEL_8;
  }

  v59 = *(v137 + 16);
  v60 = [v127 identifier];
  if (!v60)
  {
    sub_219BF5414();
    v60 = sub_219BF53D4();
  }

  v61 = [*(v59 + OBJC_IVAR____TtC7NewsUI219SubscriptionService_subscriptionController) isChannelPermanentForTagID_];

  if (v61)
  {
LABEL_8:
    (*(v45 + 8))(v52, v42);
  }

  v118 = v49;
  v131 = *(v137 + 32);
  sub_218725F94();
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_219C146A0;
  *(v69 + 32) = v47;
  v70 = sub_2186D5924(&unk_280ED6630, type metadata accessor for FollowingTagModel);
  v71 = sub_2186D5924(&qword_280ED6640, type metadata accessor for FollowingTagModel);
  v116 = v47;

  v72 = v128;
  MEMORY[0x21CEB9170](v69, v132, v70, v71);
  v73 = v122;
  (*(v130 + 16))(v122, v72, v142);
  v74 = *(v45 + 16);
  v127 = (v45 + 16);
  v117 = v74;
  v74(v119, v52, v42);
  sub_2186D5924(&qword_280EE5768, sub_218950928);
  v75 = v123;
  sub_219BF56A4();
  v76 = *(v129 + 36);
  v143 = sub_2186D5924(&qword_280EE5760, sub_218950928);
  sub_219BF5E84();
  v77 = v124;
  v78 = v120;
  if (*(v75 + v76) != *&v147[0])
  {
    v137 = v133 + 16;
    v138 = (v133 + 8);
    ObjectType = (v130 + 8);
    v136 = (v130 + 32);
    do
    {
      v79 = sub_219BF5EC4();
      (*v137)(v77);
      v79(v147, 0);
      sub_219BF5E94();
      sub_219416D80(v73, v78);
      (*v138)(v77, v144);
      v80 = v142;
      (*ObjectType)(v73, v142);
      (*v136)(v73, v78, v80);
      sub_219BF5E84();
    }

    while (*(v75 + v76) != *&v147[0]);
  }

  ObjectType = swift_getObjectType();
  sub_219417F6C(v75, sub_218A7B8DC);
  v81 = v130;
  v82 = v42;
  v84 = (v130 + 8);
  v83 = *(v130 + 8);
  v85 = v142;
  v83(v128, v142);
  v86 = v121;
  (*(v81 + 32))(v121, v73, v85);
  v87 = sub_219BE23E4();
  v83(v86, v85);
  v142 = sub_218BE0128(v87);

  v88 = v134;
  v89 = v117;
  v117(v126, v134, v82);
  v90 = v145;
  v89(v145, v88, v82);
  v91 = *(v129 + 36);
  sub_219BF5DF4();
  v92 = v90;
  sub_219BF5E84();
  v93 = v90;
  v94 = v144;
  v95 = v125;
  if (*&v90[v91] != *&v147[0])
  {
    v96 = (v133 + 16);
    v84 = (v133 + 8);
    do
    {
      v97 = sub_219BF5EC4();
      (*v96)(v95);
      v97(v147, 0);
      sub_219BF5E94();
      sub_219BE69D4();
      (*v84)(v95, v94);
      v92 = v145;
      sub_219BF5E84();
      v93 = v145;
    }

    while (*&v145[v91] != *&v147[0]);
  }

  sub_219417F6C(v93, sub_218A7B8DC);
  v98 = v142;
  v99 = v142 >> 62;
  if (v142 >> 62)
  {
    if (v142 < 0)
    {
      v104 = v142;
    }

    else
    {
      v104 = v142 & 0xFFFFFFFFFFFFFF8;
    }

    v115 = sub_219BF7214();
    if (v115 >= 0xD)
    {
      v101 = 13;
    }

    else
    {
      v101 = v115;
    }

    if ((v115 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v100 = v115;
    result = sub_219BF7214();
    if (result < 0)
    {
LABEL_59:
      __break(1u);
      return result;
    }

    result = sub_219BF7214();
    v98 = v142;
    if (result >= v101)
    {
      goto LABEL_24;
    }

LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v100 = *((v142 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v100 >= 0xD)
  {
    v101 = 13;
  }

  else
  {
    v101 = *((v142 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = *((v142 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v100 < v101)
  {
    goto LABEL_58;
  }

LABEL_24:
  if ((v98 & 0xC000000000000001) != 0)
  {

    if (v100)
    {
      v102 = 0;
      do
      {
        v103 = v102 + 1;
        sub_219BF7334();
        v102 = v103;
      }

      while (v101 != v103);
    }
  }

  else
  {
  }

  if (v99)
  {
    v92 = sub_219BF7564();
    v84 = v105;
    v104 = v106;
    v101 = v107;

    if (v101)
    {
      goto LABEL_35;
    }

LABEL_34:
    sub_218B6717C(v92, v84, v104, v101);
    v109 = v108;
    v110 = v140;
    v111 = v126;
LABEL_41:
    swift_unknownObjectRelease();
    goto LABEL_42;
  }

  v104 = 0;
  v92 = v98 & 0xFFFFFFFFFFFFFF8;
  v84 = ((v98 & 0xFFFFFFFFFFFFFF8) + 32);
  v101 = (2 * v101) | 1;
  if ((v101 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_35:
  sub_219BF7934();
  swift_unknownObjectRetain_n();
  v112 = swift_dynamicCastClass();
  if (!v112)
  {
    swift_unknownObjectRelease();
    v112 = MEMORY[0x277D84F90];
  }

  v113 = *(v112 + 16);

  if (__OFSUB__(v101 >> 1, v104))
  {
    goto LABEL_54;
  }

  if (v113 != (v101 >> 1) - v104)
  {
LABEL_55:
    swift_unknownObjectRelease_n();
    goto LABEL_34;
  }

  v109 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  v110 = v140;
  v111 = v126;
  if (!v109)
  {
    v109 = MEMORY[0x277D84F90];
    goto LABEL_41;
  }

LABEL_42:
  sub_218BDFF40(v109);

  sub_219BE6984();

  sub_219BF5DF4();
  sub_219BF5E84();
  if (*&v147[0] != *&v156[0])
  {
    sub_219BEB234();
  }

  v114 = *(v110 + 8);
  v114(v111, v82);
  return (v114)(v134, v82);
}

uint64_t sub_219416D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FollowingModel();
  MEMORY[0x28223BE20](v4);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218748D40();
  v8 = v7;
  v9 = *(v7 - 8);
  (*(v9 + 16))(a2, a1, v7);
  sub_218950B84();
  sub_219BE5FC4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      v10 = type metadata accessor for FollowingAudioModel;
      return sub_219417F6C(v6, v10);
    case 6u:
    case 7u:
      v13[1] = *v6;
      sub_219BE2404();

    case 0xBu:

      sub_218748BF4();
      return (*(v9 + 8))(&v6[*(v12 + 48)], v8);
    case 0x10u:
      v10 = type metadata accessor for FollowingMySportsModel;
      return sub_219417F6C(v6, v10);
    case 0x11u:
      v10 = type metadata accessor for FollowingPuzzleHubModel;
      return sub_219417F6C(v6, v10);
    default:
      v10 = type metadata accessor for FollowingModel;
      return sub_219417F6C(v6, v10);
  }
}

uint64_t sub_219416F84(uint64_t a1)
{
  v2 = sub_218B13118();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_219416FC4()
{
  result = qword_280E97440;
  if (!qword_280E97440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E97440);
  }

  return result;
}

uint64_t sub_219417060()
{
  sub_219417118(0, &qword_280EE3760, MEMORY[0x277D6EC60]);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + ((v4 + 87) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_219415748(v0 + v3, (v0 + v4), v6, v7);
}

void sub_219417118(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for FollowingDescriptor;
    v8[1] = type metadata accessor for FollowingModel();
    v8[2] = sub_2187490E4();
    v8[3] = sub_2186D5924(&qword_280EDC630, type metadata accessor for FollowingModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_2194171D8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_219BF7884();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_219BF5A34();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_2194173F0(v7, v8, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_2194172D0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2194172D0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3;
    v6 = result - a3;
LABEL_5:
    v16 = a3;
    v14 = v6;
    v15 = v5;
    while (1)
    {
      if (*(v5 + 8) > 0x3Fu || (v7 = *(v5 - 16), *(v5 - 8) <= 0x3Fu) && (v8 = *v5, j__swift_retain(), j__swift_retain(), v9 = _s7NewsUI28TagModelC1loiySbAC_ACtFZ_0(v8, v7), j__swift_release(), result = j__swift_release(), !v9))
      {
LABEL_4:
        a3 = v16 + 1;
        v5 = v15 + 16;
        v6 = v14 - 1;
        if (v16 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v10 = *v5;
      v11 = *(v5 + 8);
      *v5 = *(v5 - 16);
      *(v5 - 8) = v11;
      *(v5 - 16) = v10;
      v5 -= 16;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2194173F0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v113 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_105:
    v9 = *v113;
    if (!*v113)
    {
      goto LABEL_145;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_139:
      result = sub_218C81048(v8);
      v8 = result;
    }

    v104 = (v8 + 16);
    v105 = *(v8 + 16);
    if (v105 >= 2)
    {
      while (*a3)
      {
        v106 = (v8 + 16 * v105);
        v107 = *v106;
        v108 = &v104[2 * v105];
        v109 = v108[1];
        sub_219417C7C((*a3 + 16 * *v106), (*a3 + 16 * *v108), (*a3 + 16 * v109), v9);
        if (v5)
        {
        }

        if (v109 < v107)
        {
          goto LABEL_131;
        }

        if (v105 - 2 >= *v104)
        {
          goto LABEL_132;
        }

        *v106 = v107;
        v106[1] = v109;
        v110 = *v104 - v105;
        if (*v104 < v105)
        {
          goto LABEL_133;
        }

        v105 = *v104 - 1;
        result = memmove(v108, v108 + 2, 16 * v110);
        *v104 = v105;
        if (v105 <= 1)
        {
        }
      }

      goto LABEL_143;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7 + 1;
    v114 = v8;
    v115 = v7;
    if (v7 + 1 < v6)
    {
      v10 = v7;
      v11 = *a3 + 16 * v9;
      v12 = *a3 + 16 * v10;
      if (*(v11 + 8) > 0x3Fu)
      {
        v16 = 0;
      }

      else
      {
        if (*(v12 + 8) > 0x3Fu)
        {
          v16 = 1;
        }

        else
        {
          v13 = *v11;
          v14 = *v12;
          j__swift_retain();
          j__swift_retain();
          v15 = _s7NewsUI28TagModelC1loiySbAC_ACtFZ_0(v13, v14);
          v8 = v114;
          j__swift_release();
          result = j__swift_release();
          v16 = v15;
        }

        v10 = v115;
      }

      v9 = v10 + 2;
      if (v10 + 2 < v6)
      {
        v17 = (v12 + 24);
        v18 = (v12 + 24);
        v123 = v16;
        do
        {
          v19 = v18[16];
          v18 += 16;
          if (v19 > 0x3F)
          {
            if (v16)
            {
              goto LABEL_23;
            }
          }

          else if (*v17 > 0x3Fu)
          {
            if ((v16 & 1) == 0)
            {
              goto LABEL_34;
            }
          }

          else
          {
            v20 = *(v17 + 1);
            v21 = *(v17 - 1);
            j__swift_retain();
            j__swift_retain();
            v22 = v5;
            v23 = _s7NewsUI28TagModelC1loiySbAC_ACtFZ_0(v20, v21);
            v8 = v114;
            j__swift_release();
            result = j__swift_release();
            v16 = v123;
            v24 = v123 ^ v23;
            v5 = v22;
            if (v24)
            {
              goto LABEL_22;
            }
          }

          ++v9;
          v17 = v18;
        }

        while (v6 != v9);
        v9 = v6;
      }

LABEL_22:
      if (v16)
      {
LABEL_23:
        v25 = v115;
        if (v9 < v115)
        {
          goto LABEL_136;
        }

        if (v115 < v9)
        {
          v26 = 16 * v9 - 16;
          v27 = 16 * v115;
          v28 = v9;
          do
          {
            if (v25 != --v28)
            {
              v30 = *a3;
              if (!*a3)
              {
                goto LABEL_142;
              }

              v31 = (v30 + v27);
              v32 = (v30 + v26);
              v33 = *(v30 + v27);
              v34 = *(v30 + v27 + 8);
              if (v27 != v26 || v31 >= v32 + 1)
              {
                *v31 = *v32;
              }

              v29 = v30 + v26;
              *v29 = v33;
              *(v29 + 8) = v34;
            }

            ++v25;
            v26 -= 16;
            v27 += 16;
          }

          while (v25 < v28);
        }
      }
    }

LABEL_34:
    v35 = a3[1];
    if (v9 < v35)
    {
      if (__OFSUB__(v9, v115))
      {
        goto LABEL_135;
      }

      if (v9 - v115 < a4)
      {
        if (__OFADD__(v115, a4))
        {
          goto LABEL_137;
        }

        if (v115 + a4 >= v35)
        {
          v36 = a3[1];
        }

        else
        {
          v36 = (v115 + a4);
        }

        if (v36 < v115)
        {
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (v9 != v36)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v9 < v115)
    {
      goto LABEL_134;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v119 = v9;
    if ((result & 1) == 0)
    {
      result = sub_2191F6B60(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v57 = *(v8 + 16);
    v56 = *(v8 + 24);
    v58 = v57 + 1;
    if (v57 >= v56 >> 1)
    {
      result = sub_2191F6B60((v56 > 1), v57 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v58;
    v59 = v8 + 32;
    v60 = (v8 + 32 + 16 * v57);
    *v60 = v115;
    v60[1] = v9;
    v9 = *v113;
    if (!*v113)
    {
      goto LABEL_144;
    }

    if (v57)
    {
      while (1)
      {
        v61 = v58 - 1;
        if (v58 >= 4)
        {
          break;
        }

        if (v58 == 3)
        {
          v62 = *(v8 + 32);
          v63 = *(v8 + 40);
          v72 = __OFSUB__(v63, v62);
          v64 = v63 - v62;
          v65 = v72;
LABEL_74:
          if (v65)
          {
            goto LABEL_121;
          }

          v78 = (v8 + 16 * v58);
          v80 = *v78;
          v79 = v78[1];
          v81 = __OFSUB__(v79, v80);
          v82 = v79 - v80;
          v83 = v81;
          if (v81)
          {
            goto LABEL_123;
          }

          v84 = (v59 + 16 * v61);
          v86 = *v84;
          v85 = v84[1];
          v72 = __OFSUB__(v85, v86);
          v87 = v85 - v86;
          if (v72)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v82, v87))
          {
            goto LABEL_128;
          }

          if (v82 + v87 >= v64)
          {
            if (v64 < v87)
            {
              v61 = v58 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        if (v58 < 2)
        {
          goto LABEL_129;
        }

        v88 = (v8 + 16 * v58);
        v90 = *v88;
        v89 = v88[1];
        v72 = __OFSUB__(v89, v90);
        v82 = v89 - v90;
        v83 = v72;
LABEL_89:
        if (v83)
        {
          goto LABEL_125;
        }

        v91 = (v59 + 16 * v61);
        v93 = *v91;
        v92 = v91[1];
        v72 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v72)
        {
          goto LABEL_127;
        }

        if (v94 < v82)
        {
          goto LABEL_3;
        }

LABEL_96:
        if (v61 - 1 >= v58)
        {
          __break(1u);
LABEL_116:
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
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (!*a3)
        {
          goto LABEL_141;
        }

        v99 = (v59 + 16 * (v61 - 1));
        v100 = *v99;
        v101 = (v59 + 16 * v61);
        v102 = v101[1];
        sub_219417C7C((*a3 + 16 * *v99), (*a3 + 16 * *v101), (*a3 + 16 * v102), v9);
        if (v5)
        {
        }

        if (v102 < v100)
        {
          goto LABEL_116;
        }

        if (v61 > *(v8 + 16))
        {
          goto LABEL_117;
        }

        *v99 = v100;
        v99[1] = v102;
        v103 = *(v8 + 16);
        if (v61 >= v103)
        {
          goto LABEL_118;
        }

        v58 = v103 - 1;
        result = memmove((v59 + 16 * v61), v101 + 2, 16 * (v103 - 1 - v61));
        *(v8 + 16) = v103 - 1;
        if (v103 <= 2)
        {
          goto LABEL_3;
        }
      }

      v66 = v59 + 16 * v58;
      v67 = *(v66 - 64);
      v68 = *(v66 - 56);
      v72 = __OFSUB__(v68, v67);
      v69 = v68 - v67;
      if (v72)
      {
        goto LABEL_119;
      }

      v71 = *(v66 - 48);
      v70 = *(v66 - 40);
      v72 = __OFSUB__(v70, v71);
      v64 = v70 - v71;
      v65 = v72;
      if (v72)
      {
        goto LABEL_120;
      }

      v73 = (v8 + 16 * v58);
      v75 = *v73;
      v74 = v73[1];
      v72 = __OFSUB__(v74, v75);
      v76 = v74 - v75;
      if (v72)
      {
        goto LABEL_122;
      }

      v72 = __OFADD__(v64, v76);
      v77 = v64 + v76;
      if (v72)
      {
        goto LABEL_124;
      }

      if (v77 >= v69)
      {
        v95 = (v59 + 16 * v61);
        v97 = *v95;
        v96 = v95[1];
        v72 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v72)
        {
          goto LABEL_130;
        }

        if (v64 < v98)
        {
          v61 = v58 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_74;
    }

LABEL_3:
    v7 = v119;
    v6 = a3[1];
    if (v119 >= v6)
    {
      goto LABEL_105;
    }
  }

  v111 = v5;
  v121 = v36;
  v122 = *a3;
  v37 = (*a3 + 16 * v9);
  v38 = v115 - v9;
LABEL_45:
  v117 = v37;
  v118 = v9;
  v116 = v38;
  v39 = v38;
  while (1)
  {
    if (v37[8] > 0x3Fu || *(v37 - 8) <= 0x3Fu && (v40 = *(*v37 + 16), v124 = *(v37 - 2), j__swift_retain(), j__swift_retain(), v41 = [v40 name], sub_219BF5414(), v41, sub_219BF54D4(), , v42 = objc_msgSend(v40, sel_identifier), v43 = sub_219BF5414(), v45 = v44, v42, MEMORY[0x21CECC330](v43, v45), , v46 = *(v124 + 16), v47 = objc_msgSend(v46, sel_name), sub_219BF5414(), v47, sub_219BF54D4(), , v48 = objc_msgSend(v46, sel_identifier), v49 = sub_219BF5414(), v51 = v50, v48, MEMORY[0x21CECC330](v49, v51), , sub_2187F3BD4(), v52 = sub_219BF7054(), , , j__swift_release(), result = j__swift_release(), v36 = v121, v52 != -1))
    {
LABEL_44:
      v9 = v118 + 1;
      v37 = v117 + 16;
      v38 = v116 - 1;
      if ((v118 + 1) != v36)
      {
        goto LABEL_45;
      }

      v9 = v36;
      v5 = v111;
      v8 = v114;
      goto LABEL_54;
    }

    if (!v122)
    {
      break;
    }

    v53 = *v37;
    v54 = v37[8];
    *v37 = *(v37 - 1);
    *(v37 - 8) = v54;
    *(v37 - 2) = v53;
    v37 -= 16;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
  return result;
}

uint64_t sub_219417C7C(uint64_t *__dst, uint64_t *a2, uint64_t *a3, uint64_t *__src)
{
  v32 = __src;
  v4 = a3;
  v5 = __dst;
  v6 = a2 - __dst;
  v7 = a2 - __dst + 15;
  if (a2 - __dst >= 0)
  {
    v7 = a2 - __dst;
  }

  v8 = v7 >> 4;
  v9 = a3 - a2;
  v10 = a3 - a2 + 15;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 4;
  if (v8 < v11)
  {
    v12 = 2 * v8;
    if (__src != __dst || &__dst[v12] <= __src)
    {
      v13 = a2;
      memmove(__src, __dst, v12 * 8);
      a2 = v13;
      __src = v32;
    }

    v14 = &__src[v12];
    if (v6 < 16)
    {
LABEL_10:
      a2 = v5;
      goto LABEL_39;
    }

    while (1)
    {
      if (a2 >= v4)
      {
        goto LABEL_10;
      }

      if (*(a2 + 8) <= 0x3Fu)
      {
        if (*(__src + 8) > 0x3Fu)
        {
          break;
        }

        v17 = *a2;
        v18 = *__src;
        v33 = a2;
        v19 = __src;
        j__swift_retain();
        j__swift_retain();
        v20 = _s7NewsUI28TagModelC1loiySbAC_ACtFZ_0(v17, v18);
        j__swift_release();
        j__swift_release();
        a2 = v33;
        __src = v19;
        if (v20)
        {
          break;
        }
      }

      v15 = __src;
      v16 = v5 == __src;
      __src += 2;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v5 += 2;
      if (__src >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = a2;
    v16 = v5 == a2;
    a2 += 2;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v5 = *v15;
    goto LABEL_13;
  }

  v21 = 2 * v11;
  if (__src != a2 || &a2[v21] <= __src)
  {
    v22 = a2;
    memmove(__src, a2, 16 * v11);
    a2 = v22;
    __src = v32;
  }

  v14 = &__src[v21];
  if (v9 >= 16 && a2 > v5)
  {
LABEL_26:
    v31 = a2 - 2;
    v4 -= 2;
    v23 = v14;
    do
    {
      v25 = *(v23 - 16);
      v23 -= 16;
      v24 = v25;
      if (*(v23 + 8) <= 0x3Fu)
      {
        if (*(a2 - 8) > 0x3Fu || (v26 = *(a2 - 2), v34 = v14, v27 = a2, j__swift_retain(), j__swift_retain(), v28 = _s7NewsUI28TagModelC1loiySbAC_ACtFZ_0(v24, v26), j__swift_release(), j__swift_release(), a2 = v27, v14 = v34, __src = v32, v28))
        {
          if (v4 + 2 != a2)
          {
            *v4 = *v31;
          }

          if (v14 <= __src || (a2 = v31, v31 <= v5))
          {
            a2 = v31;
            goto LABEL_39;
          }

          goto LABEL_26;
        }
      }

      if (v4 + 2 != v14)
      {
        *v4 = *v23;
      }

      v4 -= 2;
      v14 = v23;
    }

    while (v23 > __src);
    v14 = v23;
  }

LABEL_39:
  v29 = (v14 - __src + (v14 - __src < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0;
  if (a2 != __src || a2 >= (__src + v29))
  {
    memmove(a2, __src, v29);
  }

  return 1;
}

uint64_t sub_219417F6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219417FCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_219BF78F4() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_21941805C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = result + 32;
  v5 = a2 + 32;
  while (v3 != v2)
  {
    v7 = v4 + 16 * v3;
    v8 = *v7;
    v9 = *(v7 + 8);
    v10 = (v5 + 16 * v3);
    v11 = *v10;
    v12 = *(v10 + 8);
    if (v9)
    {
      if ((v12 & 1) == 0)
      {
        return 0;
      }

      v13 = v8;
      v14 = 0x7974697669746361;
      if (v13 != 2)
      {
        v14 = 0x446873696C627570;
      }

      v15 = 0xEB00000000657461;
      if (v13 == 2)
      {
        v15 = 0xE800000000000000;
      }

      v16 = 1701667182;
      if (v13)
      {
        v16 = 0x6465727574616566;
      }

      v17 = 0xE400000000000000;
      if (v13)
      {
        v17 = 0xE800000000000000;
      }

      if (v13 <= 1)
      {
        v18 = v16;
      }

      else
      {
        v18 = v14;
      }

      if (v13 <= 1)
      {
        v19 = v17;
      }

      else
      {
        v19 = v15;
      }

      if (v11 > 1u)
      {
        if (v11 == 2)
        {
          v20 = 0xE800000000000000;
          if (v18 != 0x7974697669746361)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v20 = 0xEB00000000657461;
          if (v18 != 0x446873696C627570)
          {
            goto LABEL_5;
          }
        }
      }

      else if (v11)
      {
        v20 = 0xE800000000000000;
        if (v18 != 0x6465727574616566)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v20 = 0xE400000000000000;
        if (v18 != 1701667182)
        {
          goto LABEL_5;
        }
      }

      if (v19 != v20)
      {
LABEL_5:
        v6 = sub_219BF78F4();

        if ((v6 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_6;
      }
    }

    else
    {
      if (v12)
      {
        return 0;
      }

      v21 = *(v8 + 16);
      if (v21 != *(v11 + 16))
      {
        return 0;
      }

      if (v21)
      {
        v22 = v8 == v11;
      }

      else
      {
        v22 = 1;
      }

      if (!v22)
      {
        v23 = (v8 + 32);
        v24 = (v11 + 32);
        while (v21)
        {
          if (*v23 != *v24)
          {
            return 0;
          }

          ++v23;
          ++v24;
          if (!--v21)
          {
            goto LABEL_6;
          }
        }

        __break(1u);
        break;
      }
    }

LABEL_6:
    if (++v3 == v2)
    {
      return 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_219418294(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21941838C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v6 = *v3++;
        v5 = v6;
        v7 = *v4++;

        v8 = sub_21941805C(v5, v7);

        if ((v8 & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_219418444(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v5 = *(a1 + 80);
    v6 = *(a1 + 72);
    v7 = *(a1 + 64);
    v8 = *(a1 + 56);
    v9 = *(a1 + 48);
    v10 = *(a1 + 40);
    v11 = *(a2 + 32);
    v12 = *(a2 + 40);
    v13 = *(a2 + 48);
    v14 = *(a2 + 56);
    v24 = *(a2 + 64);
    v15 = *(a2 + 72);
    v16 = *(a2 + 80);

    if (MEMORY[0x21CEC48D0](v17, v11))
    {
      v23 = v16;
      v18 = 0;
      do
      {
        if (v9)
        {
          if ((v13 & 1) == 0)
          {
            break;
          }
        }

        else if ((v13 & 1) != 0 || v10 != v12)
        {
          break;
        }

        if (v7)
        {
          if ((v24 & 1) == 0)
          {
            break;
          }
        }

        else if ((v24 & 1) != 0 || v8 != v14)
        {
          break;
        }

        if (v5)
        {
          if ((v23 & 1) == 0)
          {
            return 0;
          }
        }

        else if (v23 & 1 | (v6 != v15))
        {
          return 0;
        }

        if (!--v2)
        {
          return 1;
        }

        v7 = *(a1 + v18 + 120);
        v9 = *(a1 + v18 + 104);
        v6 = *(a1 + v18 + 128);
        v8 = *(a1 + v18 + 112);
        v10 = *(a1 + v18 + 96);
        v19 = *(a2 + v18 + 88);
        v12 = *(a2 + v18 + 96);
        v13 = *(a2 + v18 + 104);
        v14 = *(a2 + v18 + 112);
        v24 = *(a2 + v18 + 120);
        v15 = *(a2 + v18 + 128);
        v22 = *(a1 + v18 + 136);
        v23 = *(a2 + v18 + 136);

        v18 += 56;
        v5 = v22;
      }

      while ((MEMORY[0x21CEC48D0](v20, v19) & 1) != 0);
    }
  }

  return 0;
}

uint64_t sub_219418634(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShortcutIconURL();
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v98 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v94 = &v91 - v7;
  sub_218E38C14();
  v109 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v102 = &v91 - v12;
  v108 = type metadata accessor for ShortcutIcon();
  v13 = *(v108 - 8);
  v14 = MEMORY[0x28223BE20](v108);
  v16 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v99 = (&v91 - v18);
  v19 = MEMORY[0x28223BE20](v17);
  v96 = &v91 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v95 = (&v91 - v22);
  MEMORY[0x28223BE20](v21);
  v103 = &v91 - v23;
  sub_21941C5A8(0, qword_280EDEA48, type metadata accessor for ShortcutIcon, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v24 - 8);
  v104 = &v91 - v25;
  sub_21941C974(0, &qword_27CC10AA0, qword_280EDEA48, type metadata accessor for ShortcutIcon);
  v107 = v26;
  MEMORY[0x28223BE20](v26);
  v101 = &v91 - v27;
  v110 = type metadata accessor for ShortcutCategory();
  v28 = MEMORY[0x28223BE20](v110);
  v30 = (&v91 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v28);
  v33 = (&v91 - v32);
  v34 = *(a1 + 16);
  if (v34 != *(a2 + 16))
  {
    return 0;
  }

  if (!v34 || a1 == a2)
  {
    return 1;
  }

  v35 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v36 = a1 + v35;
  v97 = (v13 + 48);
  v37 = a2 + v35;
  v38 = *(v31 + 72);
  v92 = v16;
  v93 = v38;
  v39 = v108;
  v40 = v101;
  v100 = v11;
  while (1)
  {
    sub_21941CB8C(v36, v33, type metadata accessor for ShortcutCategory);
    v106 = v36;
    sub_21941CB8C(v37, v30, type metadata accessor for ShortcutCategory);
    v41 = *v33 == *v30 && v33[1] == v30[1];
    if (!v41 && (sub_219BF78F4() & 1) == 0)
    {
      goto LABEL_44;
    }

    v42 = v33[2] == v30[2] && v33[3] == v30[3];
    if (!v42 && (sub_219BF78F4() & 1) == 0)
    {
      goto LABEL_44;
    }

    v105 = v37;
    v43 = *(v110 + 24);
    v44 = *(v107 + 48);
    sub_21941C9EC(v33 + v43, v40, qword_280EDEA48, type metadata accessor for ShortcutIcon);
    sub_21941C9EC(v30 + v43, v40 + v44, qword_280EDEA48, type metadata accessor for ShortcutIcon);
    v45 = *v97;
    if ((*v97)(v40, 1, v39) == 1)
    {
      if (v45(v40 + v44, 1, v39) != 1)
      {
        goto LABEL_36;
      }

      goto LABEL_27;
    }

    v46 = v40;
    v47 = v40;
    v48 = v104;
    sub_21941C9EC(v46, v104, qword_280EDEA48, type metadata accessor for ShortcutIcon);
    v49 = v45(v47 + v44, 1, v39);
    v50 = v102;
    if (v49 == 1)
    {
      sub_21941C6E4(v48, type metadata accessor for ShortcutIcon);
      v40 = v47;
LABEL_36:
      sub_21941C918(v40, &qword_27CC10AA0, qword_280EDEA48, type metadata accessor for ShortcutIcon);
      goto LABEL_44;
    }

    v51 = v47 + v44;
    v52 = v103;
    sub_21941CADC(v51, v103, type metadata accessor for ShortcutIcon);
    v53 = (v50 + *(v109 + 48));
    sub_21941CB8C(v48, v50, type metadata accessor for ShortcutIcon);
    sub_21941CB8C(v52, v53, type metadata accessor for ShortcutIcon);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v54 = v96;
      sub_21941CB8C(v50, v96, type metadata accessor for ShortcutIcon);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_21941C6E4(v54, type metadata accessor for ShortcutIconURL);
        goto LABEL_42;
      }

      v55 = v94;
      sub_21941CADC(v53, v94, type metadata accessor for ShortcutIconURL);
      v56 = _s7NewsUI215ShortcutIconURLV2eeoiySbAC_ACtFZ_0(v54, v55);
      sub_21941C6E4(v55, type metadata accessor for ShortcutIconURL);
      sub_21941C6E4(v54, type metadata accessor for ShortcutIconURL);
      v57 = v102;
      goto LABEL_25;
    }

    v58 = v95;
    sub_21941CB8C(v50, v95, type metadata accessor for ShortcutIcon);
    v59 = v58[1];
    v123 = *v58;
    v124 = v59;
    v60 = v58[3];
    v125 = v58[2];
    v126 = v60;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    v61 = v53[1];
    v119 = *v53;
    v120 = v61;
    v62 = v53[3];
    v64 = *v53;
    v63 = v53[1];
    v121 = v53[2];
    v122 = v62;
    v65 = v58[1];
    v115 = *v58;
    v116 = v65;
    v66 = v58[3];
    v117 = v58[2];
    v118 = v66;
    v111 = v64;
    v112 = v63;
    v67 = v53[3];
    v113 = v53[2];
    v114 = v67;
    v56 = _s7NewsUI223ShortcutIconSystemImageV2eeoiySbAC_ACtFZ_0(&v115, &v111);
    sub_218E38998(&v119);
    sub_218E38998(&v123);
    v57 = v50;
LABEL_25:
    sub_21941C6E4(v57, type metadata accessor for ShortcutIcon);
    v68 = v104;
    v40 = v101;
    if (!v56)
    {
      goto LABEL_43;
    }

    sub_21941C6E4(v103, type metadata accessor for ShortcutIcon);
    sub_21941C6E4(v68, type metadata accessor for ShortcutIcon);
LABEL_27:
    sub_21941CA6C(v40, qword_280EDEA48, type metadata accessor for ShortcutIcon);
    v69 = *(v110 + 28);
    v70 = v100;
    v71 = &v100[*(v109 + 48)];
    sub_21941CB8C(v33 + v69, v100, type metadata accessor for ShortcutIcon);
    v72 = v30 + v69;
    v39 = v108;
    sub_21941CB8C(v72, v71, type metadata accessor for ShortcutIcon);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v73 = v92;
      sub_21941CB8C(v70, v92, type metadata accessor for ShortcutIcon);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_21941C6E4(v73, type metadata accessor for ShortcutIconURL);
LABEL_39:
        sub_21941C6E4(v70, sub_218E38C14);
        goto LABEL_44;
      }

      v74 = v98;
      sub_21941CADC(v71, v98, type metadata accessor for ShortcutIconURL);
      v75 = _s7NewsUI215ShortcutIconURLV2eeoiySbAC_ACtFZ_0(v73, v74);
      v76 = v74;
      v77 = v100;
      sub_21941C6E4(v76, type metadata accessor for ShortcutIconURL);
      sub_21941C6E4(v73, type metadata accessor for ShortcutIconURL);
      sub_21941C6E4(v77, type metadata accessor for ShortcutIcon);
      v78 = v105;
      if (!v75)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v79 = v99;
      sub_21941CB8C(v70, v99, type metadata accessor for ShortcutIcon);
      v80 = v79[1];
      v123 = *v79;
      v124 = v80;
      v81 = v79[3];
      v125 = v79[2];
      v126 = v81;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_218E38998(&v123);
        goto LABEL_39;
      }

      v82 = *(v71 + 1);
      v119 = *v71;
      v120 = v82;
      v83 = *(v71 + 3);
      v85 = *v71;
      v84 = *(v71 + 1);
      v121 = *(v71 + 2);
      v122 = v83;
      v86 = v79[1];
      v115 = *v79;
      v116 = v86;
      v87 = v79[3];
      v117 = v79[2];
      v118 = v87;
      v111 = v85;
      v112 = v84;
      v88 = *(v71 + 3);
      v113 = *(v71 + 2);
      v114 = v88;
      v89 = _s7NewsUI223ShortcutIconSystemImageV2eeoiySbAC_ACtFZ_0(&v115, &v111);
      sub_218E38998(&v119);
      sub_218E38998(&v123);
      sub_21941C6E4(v70, type metadata accessor for ShortcutIcon);
      v78 = v105;
      if (!v89)
      {
        goto LABEL_44;
      }
    }

    sub_21941C6E4(v30, type metadata accessor for ShortcutCategory);
    sub_21941C6E4(v33, type metadata accessor for ShortcutCategory);
    v37 = v78 + v93;
    v36 = v106 + v93;
    if (!--v34)
    {
      return 1;
    }
  }

  sub_218E38998(&v123);
LABEL_42:
  v40 = v101;
  sub_21941C6E4(v50, sub_218E38C14);
  v68 = v104;
LABEL_43:
  sub_21941C6E4(v103, type metadata accessor for ShortcutIcon);
  sub_21941C6E4(v68, type metadata accessor for ShortcutIcon);
  sub_21941CA6C(v40, qword_280EDEA48, type metadata accessor for ShortcutIcon);
LABEL_44:
  sub_21941C6E4(v30, type metadata accessor for ShortcutCategory);
  sub_21941C6E4(v33, type metadata accessor for ShortcutCategory);
  return 0;
}

uint64_t sub_219419180(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(v4 - 1);
      v8 = *v4;
      result = 0;
      if (v6 < 0)
      {
        if ((v8 & 0x80000000) == 0 || v5 != v7)
        {
          return result;
        }
      }

      else if (v8 < 0 || *&v5 != *&v7)
      {
        return result;
      }

      if ((v8 ^ v6))
      {
        return result;
      }

      v3 += 2;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_219419210(uint64_t a1, uint64_t a2)
{
  v46 = type metadata accessor for MagazineCategoryConfig.Channel.Image(0);
  v4 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21941C5A8(0, qword_280EC7F40, type metadata accessor for MagazineCategoryConfig.Channel.Image, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v39 - v8;
  sub_21941C974(0, &qword_27CC0ECC8, qword_280EC7F40, type metadata accessor for MagazineCategoryConfig.Channel.Image);
  v11 = v10;
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - v12;
  v45 = type metadata accessor for MagazineCategoryConfig.Channel(0);
  v14 = MEMORY[0x28223BE20](v45);
  v16 = (&v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v19 = (&v39 - v18);
  v20 = *(a1 + 16);
  if (v20 == *(a2 + 16))
  {
    if (!v20 || a1 == a2)
    {
      return 1;
    }

    v21 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v22 = a1 + v21;
    v23 = a2 + v21;
    v41 = v11;
    v42 = (v4 + 48);
    v24 = *(v17 + 72);
    v39 = v6;
    v40 = v24;
    while (1)
    {
      sub_21941CB8C(v22, v19, type metadata accessor for MagazineCategoryConfig.Channel);
      sub_21941CB8C(v23, v16, type metadata accessor for MagazineCategoryConfig.Channel);
      v25 = *v19 == *v16 && v19[1] == v16[1];
      if (!v25 && (sub_219BF78F4() & 1) == 0)
      {
        break;
      }

      v26 = v19[3];
      v27 = v16[3];
      if (v26)
      {
        if (!v27 || (v19[2] != v16[2] || v26 != v27) && (sub_219BF78F4() & 1) == 0)
        {
          break;
        }
      }

      else if (v27)
      {
        break;
      }

      v28 = v19[5];
      v29 = v16[5];
      if (v28)
      {
        if (!v29 || (v19[4] != v16[4] || v28 != v29) && (sub_219BF78F4() & 1) == 0)
        {
          break;
        }
      }

      else if (v29)
      {
        break;
      }

      v43 = v23;
      v44 = v22;
      v30 = *(v45 + 28);
      v31 = *(v11 + 48);
      sub_21941C9EC(v19 + v30, v13, qword_280EC7F40, type metadata accessor for MagazineCategoryConfig.Channel.Image);
      sub_21941C9EC(v16 + v30, &v13[v31], qword_280EC7F40, type metadata accessor for MagazineCategoryConfig.Channel.Image);
      v32 = *v42;
      v33 = v46;
      if ((*v42)(v13, 1, v46) == 1)
      {
        if (v32(&v13[v31], 1, v33) != 1)
        {
          goto LABEL_34;
        }

        sub_21941CA6C(v13, qword_280EC7F40, type metadata accessor for MagazineCategoryConfig.Channel.Image);
        sub_21941C6E4(v16, type metadata accessor for MagazineCategoryConfig.Channel);
        sub_21941C6E4(v19, type metadata accessor for MagazineCategoryConfig.Channel);
      }

      else
      {
        sub_21941C9EC(v13, v9, qword_280EC7F40, type metadata accessor for MagazineCategoryConfig.Channel.Image);
        if (v32(&v13[v31], 1, v33) == 1)
        {
          sub_21941C6E4(v9, type metadata accessor for MagazineCategoryConfig.Channel.Image);
LABEL_34:
          sub_21941C918(v13, &qword_27CC0ECC8, qword_280EC7F40, type metadata accessor for MagazineCategoryConfig.Channel.Image);
          break;
        }

        v34 = v39;
        sub_21941CADC(&v13[v31], v39, type metadata accessor for MagazineCategoryConfig.Channel.Image);
        if ((sub_219BDB8A4() & 1) == 0)
        {
          sub_21941C6E4(v34, type metadata accessor for MagazineCategoryConfig.Channel.Image);
          sub_21941C6E4(v9, type metadata accessor for MagazineCategoryConfig.Channel.Image);
          sub_21941CA6C(v13, qword_280EC7F40, type metadata accessor for MagazineCategoryConfig.Channel.Image);
          break;
        }

        v35 = *(v46 + 20);
        v36 = *&v9[v35];
        v37 = *(v34 + v35);
        sub_21941C6E4(v34, type metadata accessor for MagazineCategoryConfig.Channel.Image);
        sub_21941C6E4(v9, type metadata accessor for MagazineCategoryConfig.Channel.Image);
        sub_21941CA6C(v13, qword_280EC7F40, type metadata accessor for MagazineCategoryConfig.Channel.Image);
        sub_21941C6E4(v16, type metadata accessor for MagazineCategoryConfig.Channel);
        sub_21941C6E4(v19, type metadata accessor for MagazineCategoryConfig.Channel);
        if (v36 != v37)
        {
          return 0;
        }
      }

      v11 = v41;
      v23 = v43 + v40;
      v22 = v44 + v40;
      if (!--v20)
      {
        return 1;
      }
    }

    sub_21941C6E4(v16, type metadata accessor for MagazineCategoryConfig.Channel);
    sub_21941C6E4(v19, type metadata accessor for MagazineCategoryConfig.Channel);
  }

  return 0;
}

uint64_t sub_219419860(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OfflineFeedManifest.Group(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v69 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (!v11 || a1 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v16 = *(v8 + 72);
  v70 = v16;
  while (1)
  {
    v17 = v16 * v12;
    result = sub_21941CB8C(v14 + v16 * v12, v10, type metadata accessor for OfflineFeedManifest.Group);
    if (v12 == v11)
    {
      break;
    }

    v19 = v15;
    sub_21941CB8C(v15 + v17, v7, type metadata accessor for OfflineFeedManifest.Group);
    if ((sub_219BDBC94() & 1) == 0 || (sub_219BDBC94() & 1) == 0 || ((v20 = v4[6], result = *&v10[v20], v21 = *&v10[v20 + 8], v22 = &v7[v20], result == *v22) ? (v23 = v21 == *(v22 + 1)) : (v23 = 0), !v23 && (result = sub_219BF78F4(), (result & 1) == 0)))
    {
LABEL_91:
      sub_21941C6E4(v7, type metadata accessor for OfflineFeedManifest.Group);
      sub_21941C6E4(v10, type metadata accessor for OfflineFeedManifest.Group);
      return 0;
    }

    v24 = v4[7];
    v25 = &v10[v24];
    v26 = *&v10[v24 + 8];
    v27 = &v7[v24];
    v28 = *(v27 + 1);
    if (v26)
    {
      if (!v28)
      {
        goto LABEL_91;
      }

      result = *v25;
      if (*v25 != *v27 || v26 != v28)
      {
        result = sub_219BF78F4();
        if ((result & 1) == 0)
        {
          goto LABEL_91;
        }
      }
    }

    else if (v28)
    {
      goto LABEL_91;
    }

    v29 = v4[8];
    v30 = *&v10[v29];
    v31 = *&v7[v29];
    v32 = *(v30 + 16);
    if (v32 != *(v31 + 16))
    {
      goto LABEL_91;
    }

    if (v32)
    {
      v33 = v30 == v31;
    }

    else
    {
      v33 = 1;
    }

    if (!v33)
    {
      v54 = (v30 + 40);
      v55 = (v31 + 40);
      while (v32)
      {
        result = *(v54 - 1);
        if (result != *(v55 - 1) || *v54 != *v55)
        {
          result = sub_219BF78F4();
          if ((result & 1) == 0)
          {
            goto LABEL_91;
          }
        }

        v54 += 2;
        v55 += 2;
        if (!--v32)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
      break;
    }

LABEL_26:
    v34 = v4[9];
    v35 = *&v10[v34];
    v36 = *&v7[v34];
    v37 = *(v35 + 16);
    if (v37 != *(v36 + 16))
    {
      goto LABEL_91;
    }

    if (v37)
    {
      v38 = v35 == v36;
    }

    else
    {
      v38 = 1;
    }

    if (!v38)
    {
      v57 = (v35 + 40);
      v58 = (v36 + 40);
      while (v37)
      {
        result = *(v57 - 1);
        if (result != *(v58 - 1) || *v57 != *v58)
        {
          result = sub_219BF78F4();
          if ((result & 1) == 0)
          {
            goto LABEL_91;
          }
        }

        v57 += 2;
        v58 += 2;
        if (!--v37)
        {
          goto LABEL_32;
        }
      }

      goto LABEL_96;
    }

LABEL_32:
    v39 = v4[10];
    v40 = *&v10[v39];
    v41 = *&v7[v39];
    v42 = *(v40 + 16);
    if (v42 != *(v41 + 16))
    {
      goto LABEL_91;
    }

    if (v42)
    {
      v43 = v40 == v41;
    }

    else
    {
      v43 = 1;
    }

    if (!v43)
    {
      v60 = (v40 + 40);
      v61 = (v41 + 40);
      while (v42)
      {
        result = *(v60 - 1);
        if (result != *(v61 - 1) || *v60 != *v61)
        {
          result = sub_219BF78F4();
          if ((result & 1) == 0)
          {
            goto LABEL_91;
          }
        }

        v60 += 2;
        v61 += 2;
        if (!--v42)
        {
          goto LABEL_38;
        }
      }

      goto LABEL_97;
    }

LABEL_38:
    v44 = v4[11];
    v45 = *&v10[v44];
    v46 = *&v7[v44];
    v47 = *(v45 + 16);
    if (v47 != *(v46 + 16))
    {
      goto LABEL_91;
    }

    if (v47)
    {
      v48 = v45 == v46;
    }

    else
    {
      v48 = 1;
    }

    if (!v48)
    {
      v63 = (v45 + 40);
      v64 = (v46 + 40);
      while (v47)
      {
        result = *(v63 - 1);
        if (result != *(v64 - 1) || *v63 != *v64)
        {
          result = sub_219BF78F4();
          if ((result & 1) == 0)
          {
            goto LABEL_91;
          }
        }

        v63 += 2;
        v64 += 2;
        if (!--v47)
        {
          goto LABEL_44;
        }
      }

      goto LABEL_98;
    }

LABEL_44:
    v49 = v4[12];
    v50 = *&v10[v49];
    v51 = *&v7[v49];
    v52 = *(v50 + 16);
    if (v52 != *(v51 + 16))
    {
      goto LABEL_91;
    }

    if (v52)
    {
      v53 = v50 == v51;
    }

    else
    {
      v53 = 1;
    }

    if (!v53)
    {
      v66 = (v50 + 40);
      v67 = (v51 + 40);
      while (v52)
      {
        result = *(v66 - 1);
        if (result != *(v67 - 1) || *v66 != *v67)
        {
          result = sub_219BF78F4();
          if ((result & 1) == 0)
          {
            goto LABEL_91;
          }
        }

        v66 += 2;
        v67 += 2;
        if (!--v52)
        {
          goto LABEL_50;
        }
      }

      goto LABEL_99;
    }

LABEL_50:
    ++v12;
    sub_21941C6E4(v7, type metadata accessor for OfflineFeedManifest.Group);
    sub_21941C6E4(v10, type metadata accessor for OfflineFeedManifest.Group);
    result = 1;
    v15 = v19;
    v16 = v70;
    if (v12 == v11)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_219419D60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v32 = a5;
  v33 = a6;
  v31 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  v15 = *(a1 + 16);
  if (v15 != *(a2 + 16))
  {
    v25 = 0;
    return v25 & 1;
  }

  if (!v15 || a1 == a2)
  {
    v25 = 1;
    return v25 & 1;
  }

  v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v17 = a1 + v16;
  v18 = a2 + v16;
  v20 = *(v9 + 16);
  v19 = v9 + 16;
  v21 = (v19 - 8);
  v29 = *(v19 + 56);
  v30 = v20;
  while (1)
  {
    v22 = v30;
    result = (v30)(v14, v17, v8);
    if (!v15)
    {
      break;
    }

    v24 = v19;
    v22(v12, v18, v8);
    sub_21941CB44(v31, v32);
    v25 = sub_219BF53A4();
    v26 = *v21;
    (*v21)(v12, v8);
    v26(v14, v8);
    if (v25)
    {
      v18 += v29;
      v17 += v29;
      v27 = v15-- == 1;
      v19 = v24;
      if (!v27)
      {
        continue;
      }
    }

    return v25 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_219419F58(uint64_t a1, uint64_t a2)
{
  __s1[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 40);
  for (i = (a2 + 40); ; i += 2)
  {
    v5 = *(v3 - 1);
    v6 = *v3;
    v8 = *(i - 1);
    v7 = *i;
    v9 = *v3 >> 62;
    v10 = *i >> 62;
    if (v9 == 3)
    {
      if (v5)
      {
        v11 = 0;
      }

      else
      {
        v11 = v6 == 0xC000000000000000;
      }

      v12 = 0;
      v13 = v11 && *i >> 62 == 3;
      if (v13 && !v8 && v7 == 0xC000000000000000)
      {
        goto LABEL_6;
      }

LABEL_28:
      if (v10 <= 1)
      {
        goto LABEL_29;
      }

      goto LABEL_22;
    }

    if (v9 > 1)
    {
      if (v9 == 2)
      {
        v19 = *(v5 + 16);
        v18 = *(v5 + 24);
        v16 = __OFSUB__(v18, v19);
        v12 = v18 - v19;
        if (v16)
        {
          goto LABEL_138;
        }

        goto LABEL_28;
      }

      v12 = 0;
      if (v10 <= 1)
      {
        goto LABEL_29;
      }
    }

    else if (v9)
    {
      LODWORD(v12) = HIDWORD(v5) - v5;
      if (__OFSUB__(HIDWORD(v5), v5))
      {
        goto LABEL_137;
      }

      v12 = v12;
      if (v10 <= 1)
      {
LABEL_29:
        if (v10)
        {
          LODWORD(v17) = HIDWORD(v8) - v8;
          if (__OFSUB__(HIDWORD(v8), v8))
          {
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
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
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
          }

          v17 = v17;
        }

        else
        {
          v17 = BYTE6(v7);
        }

        goto LABEL_33;
      }
    }

    else
    {
      v12 = BYTE6(v6);
      if (v10 <= 1)
      {
        goto LABEL_29;
      }
    }

LABEL_22:
    if (v10 != 2)
    {
      if (v12)
      {
        return 0;
      }

      goto LABEL_6;
    }

    v15 = *(v8 + 16);
    v14 = *(v8 + 24);
    v16 = __OFSUB__(v14, v15);
    v17 = v14 - v15;
    if (v16)
    {
      goto LABEL_136;
    }

LABEL_33:
    if (v12 != v17)
    {
      return 0;
    }

    if (v12 < 1)
    {
      goto LABEL_6;
    }

    if (v9 > 1)
    {
      break;
    }

    if (v9)
    {
      v33 = v5;
      if (v5 > v5 >> 32)
      {
        goto LABEL_139;
      }

      v64 = *(v3 - 1);
      sub_218B87528(v5, v6);
      sub_218B87528(v8, v7);
      v27 = sub_219BDB384();
      if (v27)
      {
        v34 = sub_219BDB3B4();
        if (__OFSUB__(v33, v34))
        {
          goto LABEL_141;
        }

        v27 += v33 - v34;
      }

      sub_219BDB3A4();
      if (v10 == 2)
      {
        v62 = v27;
        v54 = *(v8 + 16);
        v53 = *(v8 + 24);
        v29 = sub_219BDB384();
        if (v29)
        {
          v55 = sub_219BDB3B4();
          if (__OFSUB__(v54, v55))
          {
            goto LABEL_155;
          }

          v29 += v54 - v55;
        }

        v16 = __OFSUB__(v53, v54);
        v56 = v53 - v54;
        if (v16)
        {
          goto LABEL_151;
        }

        v57 = sub_219BDB3A4();
        if (v57 >= v56)
        {
          v32 = v56;
        }

        else
        {
          v32 = v57;
        }

        result = v62;
        if (!v62)
        {
          goto LABEL_166;
        }

        if (!v29)
        {
          goto LABEL_165;
        }

        goto LABEL_127;
      }

      if (v10 == 1)
      {
        if (v8 >> 32 < v8)
        {
          goto LABEL_150;
        }

        v29 = sub_219BDB384();
        if (v29)
        {
          v35 = sub_219BDB3B4();
          if (__OFSUB__(v8, v35))
          {
            goto LABEL_157;
          }

          v29 += v8 - v35;
        }

        v36 = sub_219BDB3A4();
        if (v36 >= (v8 >> 32) - v8)
        {
          v32 = (v8 >> 32) - v8;
        }

        else
        {
          v32 = v36;
        }

        result = v27;
        if (!v27)
        {
          goto LABEL_172;
        }

        if (!v29)
        {
          goto LABEL_171;
        }

LABEL_127:
        if (result == v29)
        {
          sub_2186C6190(v8, v7);
          sub_2186C6190(v64, v6);
          goto LABEL_6;
        }

        v58 = v32;
        v59 = v29;
        goto LABEL_132;
      }

      __s1[0] = v8;
      LOWORD(__s1[1]) = v7;
      BYTE2(__s1[1]) = BYTE2(v7);
      BYTE3(__s1[1]) = BYTE3(v7);
      BYTE4(__s1[1]) = BYTE4(v7);
      BYTE5(__s1[1]) = BYTE5(v7);
      if (!v27)
      {
        goto LABEL_162;
      }

      goto LABEL_131;
    }

    __s1[0] = *(v3 - 1);
    LOWORD(__s1[1]) = v6;
    BYTE2(__s1[1]) = BYTE2(v6);
    BYTE3(__s1[1]) = BYTE3(v6);
    BYTE4(__s1[1]) = BYTE4(v6);
    BYTE5(__s1[1]) = BYTE5(v6);
    if (!v10)
    {
      goto LABEL_89;
    }

    v63 = v5;
    if (v10 == 1)
    {
      v20 = (v8 >> 32) - v8;
      if (v8 >> 32 < v8)
      {
        goto LABEL_143;
      }

      sub_218B87528(v5, v6);
      sub_218B87528(v8, v7);
      v21 = sub_219BDB384();
      if (!v21)
      {
        goto LABEL_159;
      }

      v22 = v21;
      v23 = sub_219BDB3B4();
      if (__OFSUB__(v8, v23))
      {
        goto LABEL_147;
      }

      v24 = (v8 - v23 + v22);
      result = sub_219BDB3A4();
      if (!v24)
      {
        goto LABEL_160;
      }
    }

    else
    {
      v41 = *(v8 + 16);
      v40 = *(v8 + 24);
      sub_218B87528(v5, v6);
      sub_218B87528(v8, v7);
      v24 = sub_219BDB384();
      if (v24)
      {
        v42 = sub_219BDB3B4();
        if (__OFSUB__(v41, v42))
        {
          goto LABEL_152;
        }

        v24 += v41 - v42;
      }

      v16 = __OFSUB__(v40, v41);
      v20 = v40 - v41;
      if (v16)
      {
        goto LABEL_145;
      }

      result = sub_219BDB3A4();
      if (!v24)
      {
        goto LABEL_158;
      }
    }

LABEL_101:
    if (result >= v20)
    {
      v46 = v20;
    }

    else
    {
      v46 = result;
    }

    v47 = memcmp(__s1, v24, v46);
    sub_2186C6190(v8, v7);
    sub_2186C6190(v63, v6);
    if (v47)
    {
      return 0;
    }

LABEL_6:
    v3 += 2;
    if (!--v2)
    {
      return 1;
    }
  }

  if (v9 != 2)
  {
    memset(__s1, 0, 14);
    if (!v10)
    {
LABEL_89:
      __s2 = v8;
      v66 = v7;
      v67 = BYTE2(v7);
      v68 = BYTE3(v7);
      v69 = BYTE4(v7);
      v70 = BYTE5(v7);
      if (memcmp(__s1, &__s2, BYTE6(v7)))
      {
        return 0;
      }

      goto LABEL_6;
    }

    v63 = v5;
    if (v10 == 2)
    {
      v38 = *(v8 + 16);
      v37 = *(v8 + 24);
      sub_218B87528(v5, v6);
      sub_218B87528(v8, v7);
      v24 = sub_219BDB384();
      if (v24)
      {
        v39 = sub_219BDB3B4();
        if (__OFSUB__(v38, v39))
        {
          goto LABEL_153;
        }

        v24 += v38 - v39;
      }

      v16 = __OFSUB__(v37, v38);
      v20 = v37 - v38;
      if (v16)
      {
        goto LABEL_146;
      }

      result = sub_219BDB3A4();
      if (!v24)
      {
        goto LABEL_161;
      }
    }

    else
    {
      v20 = (v8 >> 32) - v8;
      if (v8 >> 32 < v8)
      {
        goto LABEL_142;
      }

      sub_218B87528(v5, v6);
      sub_218B87528(v8, v7);
      v43 = sub_219BDB384();
      if (!v43)
      {
        goto LABEL_163;
      }

      v44 = v43;
      v45 = sub_219BDB3B4();
      if (__OFSUB__(v8, v45))
      {
        goto LABEL_148;
      }

      v24 = (v8 - v45 + v44);
      result = sub_219BDB3A4();
      if (!v24)
      {
        goto LABEL_164;
      }
    }

    goto LABEL_101;
  }

  v26 = *(v5 + 16);
  v64 = *(v3 - 1);
  sub_218B87528(v5, v6);
  sub_218B87528(v8, v7);
  v27 = sub_219BDB384();
  if (v27)
  {
    v28 = sub_219BDB3B4();
    if (__OFSUB__(v26, v28))
    {
      goto LABEL_140;
    }

    v27 += v26 - v28;
  }

  sub_219BDB3A4();
  if (v10 == 2)
  {
    v61 = v27;
    v49 = *(v8 + 16);
    v48 = *(v8 + 24);
    v29 = sub_219BDB384();
    if (v29)
    {
      v50 = sub_219BDB3B4();
      if (__OFSUB__(v49, v50))
      {
        goto LABEL_154;
      }

      v29 += v49 - v50;
    }

    v16 = __OFSUB__(v48, v49);
    v51 = v48 - v49;
    if (v16)
    {
      goto LABEL_149;
    }

    v52 = sub_219BDB3A4();
    if (v52 >= v51)
    {
      v32 = v51;
    }

    else
    {
      v32 = v52;
    }

    result = v61;
    if (!v61)
    {
      goto LABEL_170;
    }

    if (!v29)
    {
      goto LABEL_169;
    }

    goto LABEL_127;
  }

  if (v10 == 1)
  {
    if (v8 >> 32 < v8)
    {
      goto LABEL_144;
    }

    v29 = sub_219BDB384();
    if (v29)
    {
      v30 = sub_219BDB3B4();
      if (__OFSUB__(v8, v30))
      {
        goto LABEL_156;
      }

      v29 += v8 - v30;
    }

    v31 = sub_219BDB3A4();
    if (v31 >= (v8 >> 32) - v8)
    {
      v32 = (v8 >> 32) - v8;
    }

    else
    {
      v32 = v31;
    }

    result = v27;
    if (!v27)
    {
      goto LABEL_168;
    }

    if (!v29)
    {
      goto LABEL_167;
    }

    goto LABEL_127;
  }

  __s1[0] = v8;
  LOWORD(__s1[1]) = v7;
  BYTE2(__s1[1]) = BYTE2(v7);
  BYTE3(__s1[1]) = BYTE3(v7);
  BYTE4(__s1[1]) = BYTE4(v7);
  BYTE5(__s1[1]) = BYTE5(v7);
  if (v27)
  {
LABEL_131:
    v58 = BYTE6(v7);
    v59 = __s1;
    result = v27;
LABEL_132:
    v60 = memcmp(result, v59, v58);
    sub_2186C6190(v8, v7);
    sub_2186C6190(v64, v6);
    if (v60)
    {
      return 0;
    }

    goto LABEL_6;
  }

  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  sub_219BDB3A4();
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  result = sub_219BDB3A4();
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
  return result;
}

uint64_t sub_21941A7B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PuzzleSettingsItem();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v10 = (&v22 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_27:
    v20 = 0;
    return v20 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_21941CB8C(v13, v10, type metadata accessor for PuzzleSettingsItem);
      sub_21941CB8C(v14, v7, type metadata accessor for PuzzleSettingsItem);
      v16 = *v10 == *v7 && v10[1] == v7[1];
      if (!v16 && (sub_219BF78F4() & 1) == 0)
      {
        break;
      }

      v17 = v10[2] == v7[2] && v10[3] == v7[3];
      if (!v17 && (sub_219BF78F4() & 1) == 0)
      {
        break;
      }

      v18 = v10[5];
      v19 = v7[5];
      if (v18)
      {
        if (!v19 || (v10[4] != v7[4] || v18 != v19) && (sub_219BF78F4() & 1) == 0)
        {
          break;
        }
      }

      else if (v19)
      {
        break;
      }

      v20 = sub_21911A128(v10 + *(v4 + 28), v7 + *(v4 + 28));
      sub_21941C6E4(v7, type metadata accessor for PuzzleSettingsItem);
      sub_21941C6E4(v10, type metadata accessor for PuzzleSettingsItem);
      if (v20)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v20 & 1;
    }

    sub_21941C6E4(v7, type metadata accessor for PuzzleSettingsItem);
    sub_21941C6E4(v10, type metadata accessor for PuzzleSettingsItem);
    goto LABEL_27;
  }

  v20 = 1;
  return v20 & 1;
}

uint64_t sub_21941AA94(uint64_t a1, uint64_t a2)
{
  v27 = type metadata accessor for AudioFeedTrack(0);
  v4 = MEMORY[0x28223BE20](v27);
  v6 = (&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v9 = (&v26 - v8);
  v10 = *(a1 + 16);
  if (v10 != *(a2 + 16))
  {
    v25 = 0;
    return v25 & 1;
  }

  if (!v10 || a1 == a2)
  {
    v25 = 1;
    return v25 & 1;
  }

  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = a1 + v11;
  v13 = a2 + v11;
  v26 = *(v7 + 72);
  while (1)
  {
    sub_21941CB8C(v12, v9, type metadata accessor for AudioFeedTrack);
    sub_21941CB8C(v13, v6, type metadata accessor for AudioFeedTrack);
    v14 = [*v9 identifier];
    v15 = sub_219BF5414();
    v17 = v16;

    v18 = [*v6 identifier];
    v19 = sub_219BF5414();
    v21 = v20;

    if (v15 != v19 || v17 != v21)
    {
      break;
    }

LABEL_12:
    v25 = sub_2198DB278((v9 + *(v27 + 32)), (v6 + *(v27 + 32)));
    sub_21941C6E4(v6, type metadata accessor for AudioFeedTrack);
    sub_21941C6E4(v9, type metadata accessor for AudioFeedTrack);
    if (v25)
    {
      v13 += v26;
      v12 += v26;
      if (--v10)
      {
        continue;
      }
    }

    return v25 & 1;
  }

  v23 = sub_219BF78F4();

  if (v23)
  {
    goto LABEL_12;
  }

  sub_21941C6E4(v6, type metadata accessor for AudioFeedTrack);
  sub_21941C6E4(v9, type metadata accessor for AudioFeedTrack);
  v25 = 0;
  return v25 & 1;
}

uint64_t sub_21941AD70(unint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v6)
    {
      goto LABEL_29;
    }

    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v9 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v4 < 0)
    {
      v8 = v4;
    }

    if (v5)
    {
      v9 = v8;
    }

    v10 = a2 & 0xFFFFFFFFFFFFFF8;
    v11 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v10 = a2;
    }

    if (a2 >> 62)
    {
      v11 = v10;
    }

    if (v9 == v11)
    {
LABEL_29:
      v19 = 1;
      return v19 & 1;
    }

    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = sub_2186C6148(0, a3);
    if (((a2 | v4) & 0xC000000000000001) != 0)
    {
      v12 = a2 & 0xC000000000000001;
      v13 = 4;
      while (1)
      {
        v14 = v13 - 4;
        v15 = v13 - 3;
        if (__OFADD__(v13 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v4 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x21CECE0F0](v13 - 4, v4);
          if (!v12)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v14 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v16 = *(v4 + 8 * v13);
          if (!v12)
          {
LABEL_24:
            if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v17 = *(a2 + 8 * v13);
            goto LABEL_26;
          }
        }

        v17 = MEMORY[0x21CECE0F0](v13 - 4, a2);
LABEL_26:
        v18 = v17;
        v19 = sub_219BF6DD4();

        if (v19)
        {
          ++v13;
          if (v15 != v6)
          {
            continue;
          }
        }

        return v19 & 1;
      }
    }

    v20 = (v4 + 32);
    v21 = (a2 + 32);
    v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v6 - 1;
    while (1)
    {
      if (!v22)
      {
        goto LABEL_40;
      }

      if (!v23)
      {
        break;
      }

      v26 = *v20++;
      v25 = v26;
      v27 = *v21++;
      a2 = v25;
      v4 = v27;
      v19 = sub_219BF6DD4();

      v29 = v24-- != 0;
      if (v19)
      {
        --v23;
        --v22;
        if (v29)
        {
          continue;
        }
      }

      return v19 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v30 = a3;
    v31 = sub_219BF7214();
    a3 = v30;
    v6 = v31;
  }

  v32 = a3;
  result = sub_219BF7214();
  a3 = v32;
  if (v6 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_21941B014(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 32;
    v4 = a2 + 32;
    do
    {
      sub_218C04EF0(v3, v9);
      sub_218C04EF0(v4, v8);
      if (v9[0] == v8[0] && v9[1] == v8[1])
      {
        sub_218BBF734(v8);
        sub_218BBF734(v9);
      }

      else
      {
        v6 = sub_219BF78F4();
        sub_218BBF734(v8);
        sub_218BBF734(v9);
        if ((v6 & 1) == 0)
        {
          return 0;
        }
      }

      v4 += 176;
      v3 += 176;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_21941B18C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *), uint64_t (*a6)(void))
{
  v11 = a3(0) - 8;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v17 = &v25 - v16;
  v18 = *(a1 + 16);
  if (v18 == *(a2 + 16))
  {
    if (!v18 || a1 == a2)
    {
      v23 = 1;
    }

    else
    {
      v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v20 = a1 + v19;
      v21 = a2 + v19;
      v22 = *(v15 + 72);
      do
      {
        sub_21941CB8C(v20, v17, a4);
        sub_21941CB8C(v21, v14, a4);
        v23 = a5(v17, v14);
        sub_21941C6E4(v14, a6);
        sub_21941C6E4(v17, a6);
        if ((v23 & 1) == 0)
        {
          break;
        }

        v21 += v22;
        v20 += v22;
        --v18;
      }

      while (v18);
    }
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

NewsUI2::ShortcutsConfigResource __swiftcall ShortcutsConfigResource.init(categories:)(Swift::OpaquePointer categories)
{
  v3 = v1;
  v4 = type metadata accessor for ShortcutCategory();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v12 = &v34 - v11;
  v38 = *(categories._rawValue + 2);
  if (v38)
  {
    v35 = v3;
    v37 = categories._rawValue + ((*(v5 + 80) + 32) & ~*(v5 + 80));

    v13 = 0;
    v14 = MEMORY[0x277D84F98];
    rawValue = categories._rawValue;
    while (v13 < *(categories._rawValue + 2))
    {
      v15 = v5;
      v16 = *(v5 + 72);
      sub_21941CB8C(&v37[v16 * v13], v12, type metadata accessor for ShortcutCategory);
      v18 = *(v12 + 2);
      v17 = *(v12 + 3);
      v19 = v8;
      sub_21941CB8C(v12, v8, type metadata accessor for ShortcutCategory);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = v14;
      v21 = sub_21870F700(v18, v17);
      v23 = v14[2];
      v24 = (v22 & 1) == 0;
      v25 = __OFADD__(v23, v24);
      v26 = v23 + v24;
      if (v25)
      {
        goto LABEL_19;
      }

      v27 = v22;
      if (v14[3] >= v26)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v32 = v21;
          sub_219490320();
          v21 = v32;
        }
      }

      else
      {
        sub_21947DE70(v26, isUniquelyReferenced_nonNull_native);
        v21 = sub_21870F700(v18, v17);
        if ((v27 & 1) != (v28 & 1))
        {
          goto LABEL_21;
        }
      }

      v8 = v19;
      v14 = v39;
      if (v27)
      {
        sub_21941C3C0(v19, v39[7] + v21 * v16);
      }

      else
      {
        v39[(v21 >> 6) + 8] |= 1 << v21;
        v29 = (v14[6] + 16 * v21);
        *v29 = v18;
        v29[1] = v17;
        sub_21941CADC(v19, v14[7] + v21 * v16, type metadata accessor for ShortcutCategory);
        v30 = v14[2];
        v25 = __OFADD__(v30, 1);
        v31 = v30 + 1;
        if (v25)
        {
          goto LABEL_20;
        }

        v14[2] = v31;
      }

      ++v13;
      sub_21941C6E4(v12, type metadata accessor for ShortcutCategory);
      categories._rawValue = rawValue;
      v5 = v15;
      if (v38 == v13)
      {

        v3 = v35;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    v9 = sub_219BF79A4();
    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x277D84F98];
LABEL_17:
    v3->_rawValue = categories._rawValue;
    v3[1]._rawValue = v14;
  }

  result.categoriesById._rawValue = v10;
  result.categories._rawValue = v9;
  return result;
}

uint64_t ShortcutsConfigResource.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v23 = a2;
  sub_21941C5A8(0, &qword_27CC1A200, sub_21941C424, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  sub_21941C544(0, &qword_27CC1A220, MEMORY[0x277D6CE98]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21941C4F0();
  sub_219BF7B04();
  if (!v2)
  {
    v21 = v9;
    v12 = v23;
    sub_21941C424();
    v14 = v13;
    sub_21941CB44(&qword_27CC1A230, sub_21941C424);
    sub_219BE2C94();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v6, 1, v14) == 1)
    {
      sub_21941CA6C(v6, &qword_27CC1A200, sub_21941C424);
      v16._rawValue = MEMORY[0x277D84F90];
    }

    else
    {
      v17 = sub_219BE1E44();
      (*(v15 + 8))(v6, v14);
      v16._rawValue = v17;
    }

    v18 = v21;
    ShortcutsConfigResource.init(categories:)(v16);
    (*(v18 + 8))(v11, v8);
    *v12 = v22;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21941B944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x69726F6765746163 && a2 == 0xEA00000000007365)
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

uint64_t sub_21941B9D4(uint64_t a1)
{
  v2 = sub_21941C4F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21941BA10(uint64_t a1)
{
  v2 = sub_21941C4F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ShortcutsConfigResource.encode(to:)(void *a1)
{
  sub_21941C544(0, &qword_27CC1A238, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21941C4F0();

  sub_219BF7B44();
  v10[1] = v8;
  sub_21941C5A8(0, &qword_27CC1A240, type metadata accessor for ShortcutCategory, MEMORY[0x277D83940]);
  sub_21941C60C();
  sub_219BF7834();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_21941BC24()
{
  v0 = sub_219BDCA34();
  __swift_allocate_value_buffer(v0, qword_27CC1A1E8);
  v1 = __swift_project_value_buffer(v0, qword_27CC1A1E8);
  v2 = *MEMORY[0x277D6D0C0];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t static ShortcutsConfigResource.dataType.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CC08520 != -1)
  {
    swift_once();
  }

  v2 = sub_219BDCA34();
  v3 = __swift_project_value_buffer(v2, qword_27CC1A1E8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static ShortcutsConfigResource.convert(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_219BE5434();
  MEMORY[0x28223BE20](v4);
  sub_2186D1230(a1, &v8);
  result = swift_dynamicCast();
  if (result)
  {
    sub_219BDAFF4();
    swift_allocObject();
    sub_219BDAFE4();
    sub_218B6B2F0();
    sub_219BDAFC4();
    sub_2186C6190(v6, v7);

    *a2 = v8;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  return result;
}

uint64_t ShortcutsConfigResource.toData()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_219BE5434();
  MEMORY[0x28223BE20](v2);
  sub_219BDB084();
  swift_allocObject();
  sub_219BDB074();
  sub_21941C744();
  v3 = sub_219BDB064();
  v5 = v4;

  a1[3] = MEMORY[0x277CC9318];
  *a1 = v3;
  a1[1] = v5;
  return result;
}

uint64_t static ShortcutsConfigResource.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_219418634(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_21931B478(v2, v3);
}

uint64_t sub_21941C2B4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CC08520 != -1)
  {
    swift_once();
  }

  v2 = sub_219BDCA34();
  v3 = __swift_project_value_buffer(v2, qword_27CC1A1E8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_21941C364(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_219418634(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_21931B478(v2, v3);
}

uint64_t sub_21941C3C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShortcutCategory();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_21941C424()
{
  if (!qword_27CC1A208)
  {
    type metadata accessor for ShortcutCategory();
    sub_21941CB44(&qword_27CC1A210, type metadata accessor for ShortcutCategory);
    sub_21941CB44(&qword_27CC1A218, type metadata accessor for ShortcutCategory);
    v0 = sub_219BE1E54();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1A208);
    }
  }
}

unint64_t sub_21941C4F0()
{
  result = qword_27CC1A228;
  if (!qword_27CC1A228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A228);
  }

  return result;
}

void sub_21941C544(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21941C4F0();
    v7 = a3(a1, &type metadata for ShortcutsConfigResource.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_21941C5A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_21941C60C()
{
  result = qword_27CC1A248;
  if (!qword_27CC1A248)
  {
    sub_21941C5A8(255, &qword_27CC1A240, type metadata accessor for ShortcutCategory, MEMORY[0x277D83940]);
    sub_21941CB44(&qword_27CC1A218, type metadata accessor for ShortcutCategory);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A248);
  }

  return result;
}

uint64_t sub_21941C6E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21941C744()
{
  result = qword_27CC1A250;
  if (!qword_27CC1A250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A250);
  }

  return result;
}

unint64_t sub_21941C79C()
{
  result = qword_27CC1A258;
  if (!qword_27CC1A258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A258);
  }

  return result;
}

unint64_t sub_21941C814()
{
  result = qword_27CC1A260;
  if (!qword_27CC1A260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A260);
  }

  return result;
}

unint64_t sub_21941C86C()
{
  result = qword_27CC1A268;
  if (!qword_27CC1A268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A268);
  }

  return result;
}

unint64_t sub_21941C8C4()
{
  result = qword_27CC1A270;
  if (!qword_27CC1A270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A270);
  }

  return result;
}

uint64_t sub_21941C918(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_21941C974(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_21941C974(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_21941C5A8(255, a3, a4, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_21941C9EC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_21941C5A8(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_21941CA6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_21941C5A8(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_21941CADC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21941CB44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21941CB8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21941CC04(uint64_t a1, void *a2, void *a3)
{
  v32 = a2;
  v33 = a3;
  sub_219424D8C(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192FF26C(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_219BF2DE4();
  v10 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v35 = MEMORY[0x277D84F90];
    v34 = v12;
    sub_218C37450(0, v13, 0);
    v14 = v35;
    v30 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v15 = a1 + v30;
    v28 = *(v10 + 72);
    v29 = (v10 + 32);
    sub_2186DEE0C();
    v27 = v16;
    v17 = *(v16 - 8);
    v18 = *(v17 + 56);
    v25 = v17 + 56;
    v26 = v18;
    do
    {
      v26(v9, 1, 1, v27);
      v19 = sub_219BF2DC4();
      sub_21941CF40(v19, v32, v33);

      v20 = sub_219BF19F4();
      (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
      sub_219BF2DB4();

      sub_2194244C4(v6, sub_219424D8C);
      sub_2194244C4(v9, sub_2192FF26C);
      v35 = v14;
      v22 = *(v14 + 16);
      v21 = *(v14 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_218C37450(v21 > 1, v22 + 1, 1);
        v14 = v35;
      }

      *(v14 + 16) = v22 + 1;
      v23 = v28;
      (*v29)(v14 + v30 + v22 * v28, v34, v31);
      v15 += v23;
      --v13;
    }

    while (v13);
  }

  return v14;
}

uint64_t sub_21941CF40(uint64_t a1, void *a2, void *a3)
{
  v58 = a3;
  v64 = a2;
  sub_2186D8C44(0, &qword_280E8FEA0, MEMORY[0x277D343A0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v57 = v47 - v6;
  v56 = sub_219BF3C94();
  v7 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = (v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for TodayLocalNewsArticle.Resolved(0);
  v53 = *(v9 - 8);
  v54 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v52 = (v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v10);
  v51 = v47 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = v47 - v14;
  v16 = sub_219BF20B4();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a1 + 16);
  if (!v20)
  {
    return MEMORY[0x277D84F90];
  }

  v47[1] = v3;
  v70 = MEMORY[0x277D84F90];
  sub_218C374A0(0, v20, 0);
  v67 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v21 = a1 + v67;
  v63 = (v17 + 16);
  v50 = (v7 + 104);
  v22 = v70;
  v49 = *MEMORY[0x277D340E0];
  v65 = *(v17 + 72);
  v66 = (v17 + 32);
  v62 = xmmword_219C09BA0;
  v61 = v19;
  v48 = v16;
  while (1)
  {
    result = sub_219422FC4();
    if ((result & 1) == 0)
    {
      (*v63)(v19, v21, v16);
      goto LABEL_14;
    }

    v24 = v64[1];
    v25 = *(*v64 + 16);
    if (v24 == v25)
    {
      v26 = v15;
      if (qword_280E8D7A0 != -1)
      {
        swift_once();
      }

      sub_2186D8C44(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
      v27 = swift_allocObject();
      *(v27 + 16) = v62;
      v28 = sub_219BF2064();
      v30 = v29;
      *(v27 + 56) = MEMORY[0x277D837D0];
      *(v27 + 64) = sub_2186FC3BC();
      *(v27 + 32) = v28;
      *(v27 + 40) = v30;
      sub_219BF6214();
      sub_219BE5314();

      v19 = v61;
      (*v63)(v61, v21, v16);
      v15 = v26;
      goto LABEL_14;
    }

    if (v24 >= v25)
    {
      break;
    }

    v31 = v51;
    sub_219424DC0(*v64 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v24, v51, type metadata accessor for TodayLocalNewsArticle.Resolved);
    v64[1] = v24 + 1;
    sub_219424E28(v31, v15, type metadata accessor for TodayLocalNewsArticle.Resolved);
    v32 = sub_219BF2064();
    v59 = v33;
    v60 = v32;
    sub_2186D8C44(0, &unk_280E8B800, MEMORY[0x277D33BF0], MEMORY[0x277D84560]);
    sub_219BF2D44();
    *(swift_allocObject() + 16) = v62;
    sub_219BF16E4();
    v34 = v15;
    v35 = v15;
    v36 = v52;
    sub_219424DC0(v34, v52, type metadata accessor for TodayLocalNewsArticle.Resolved);
    v37 = sub_2194234C4(v36);
    v39 = v55;
    v38 = v56;
    *v55 = v37;
    (*v50)(v39, v49, v38);
    v40 = sub_219BF4324();
    (*(*(v40 - 8) + 56))(v57, 1, 1, v40);
    sub_219BF2D24();
    sub_219BF2054();
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    sub_2186D8C44(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v41 = swift_allocObject();
    *(v41 + 16) = v62;
    v68 = 0;
    v69 = 0xE000000000000000;
    sub_219BF7484();
    v42 = v68;
    v43 = v69;
    *(v41 + 56) = MEMORY[0x277D837D0];
    *(v41 + 64) = sub_2186FC3BC();
    *(v41 + 32) = v42;
    *(v41 + 40) = v43;
    sub_219BF6214();
    sub_219BE5314();

    result = sub_2194244C4(v35, type metadata accessor for TodayLocalNewsArticle.Resolved);
    if (__OFADD__(*v58, 1))
    {
      goto LABEL_21;
    }

    v15 = v35;
    ++*v58;
    v16 = v48;
    v19 = v61;
LABEL_14:
    v70 = v22;
    v45 = *(v22 + 16);
    v44 = *(v22 + 24);
    if (v45 >= v44 >> 1)
    {
      sub_218C374A0(v44 > 1, v45 + 1, 1);
      v22 = v70;
    }

    *(v22 + 16) = v45 + 1;
    v46 = v65;
    (*v66)(v22 + v67 + v45 * v65, v19, v16);
    v21 += v46;
    if (!--v20)
    {
      return v22;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_21941D764(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for TodayLocalNewsArticle.Resolved(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_21941D850@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  sub_218D45728(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE3514();
  v28 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v30 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CuratedTodayFeedGroupConfigData();
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DE644();
  sub_219BEDD14();
  v13 = *&v12[*(v10 + 68)];

  result = sub_2194244C4(v12, type metadata accessor for CuratedTodayFeedGroupConfigData);
  if (!v13)
  {
    goto LABEL_15;
  }

  v29 = *(v13 + 16);
  if (!v29)
  {

LABEL_15:
    *a1 = 0u;
    a1[1] = 0u;
    return result;
  }

  v25 = v2;
  v26 = a1;
  v15 = 0;
  v16 = (v28 + 48);
  v17 = (v28 + 32);
  v18 = v13 + 40;
  v19 = MEMORY[0x277D84F90];
  v27 = v13;
  while (v15 < *(v13 + 16))
  {

    sub_219BE34E4();
    if ((*v16)(v6, 1, v7) == 1)
    {
      result = sub_2194244C4(v6, sub_218D45728);
    }

    else
    {
      v20 = *v17;
      (*v17)(v30, v6, v7);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_2191F7D30(0, v19[2] + 1, 1, v19);
      }

      v22 = v19[2];
      v21 = v19[3];
      if (v22 >= v21 >> 1)
      {
        v19 = sub_2191F7D30(v21 > 1, v22 + 1, 1, v19);
      }

      v19[2] = v22 + 1;
      result = (v20)(v19 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v22, v30, v7);
      v13 = v27;
    }

    ++v15;
    v18 += 16;
    if (v29 == v15)
    {

      v23 = *__swift_project_boxed_opaque_existential_1((v25 + OBJC_IVAR____TtC7NewsUI228CuratedTodayFeedGroupEmitter_todayFeedEngagementEventHandler), *(v25 + OBJC_IVAR____TtC7NewsUI228CuratedTodayFeedGroupEmitter_todayFeedEngagementEventHandler + 24));
      v24 = swift_allocObject();
      *(v24 + 16) = v23;
      *(v24 + 24) = v19;

      sub_219BE3494();

      a1 = v26;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21941DBDC()
{
  v62 = sub_219BF1934();
  v64 = *(v62 - 8);
  v1 = MEMORY[0x28223BE20](v62);
  v61 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v65 = &v51 - v3;
  v4 = type metadata accessor for CuratedTodayFeedGroupConfigData();
  v5 = MEMORY[0x28223BE20](v4);
  v59 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v51 - v7;
  v56 = sub_219BF0BD4();
  v9 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v0;
  v74 = 0;
  sub_2189AE994(0);
  v60 = sub_219BEE964();
  sub_2186D8C44(0, &unk_280E8B8C0, sub_218D907D4, MEMORY[0x277D84560]);
  sub_218D907D4();
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v57 = *(v14 + 72);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_219C0EE20;
  v58 = v16;
  v17 = (v16 + v15);
  v18 = swift_allocObject();
  sub_218D90870();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  v69 = v19;
  swift_allocObject();
  *v17 = sub_219BEFB94();
  v20 = *MEMORY[0x277D32308];
  v21 = *(v14 + 104);
  v67 = v17;
  v68 = v20;
  v70 = v13;
  v71 = v21;
  v22 = v14 + 104;
  v21(v17);
  type metadata accessor for CuratedTodayFeedGroupKnobs();
  sub_219BEF134();
  sub_219BEF524();
  (*(v9 + 8))(v11, v56);
  v23 = 0;
  v24 = 0;
  if (v73 == 1)
  {
    sub_2186DE644();
    sub_219BEDD14();
    v26 = v64;
    v25 = v65;
    v27 = v62;
    (*(v64 + 16))(v65, &v8[*(v4 + 20)], v62);
    sub_2194244C4(v8, type metadata accessor for CuratedTodayFeedGroupConfigData);
    v23 = sub_219BF1784();
    v24 = v28;
    (*(v26 + 8))(v25, v27);
  }

  v29 = swift_allocObject();
  *(v29 + 16) = v23;
  *(v29 + 24) = v24;
  swift_allocObject();
  v30 = sub_219BEFB94();
  v31 = v67;
  v32 = v57;
  *(v67 + v57) = v30;
  v66 = v22;
  v71(v31 + v32, v68, v70);
  v33 = (v31 + 2 * v32);
  v55 = OBJC_IVAR____TtC7NewsUI228CuratedTodayFeedGroupEmitter_config;
  v56 = 2 * v32;
  sub_2186DE644();
  v54 = v34;
  sub_219BEDD14();
  v35 = *(v4 + 20);
  v36 = v64;
  v53 = v4;
  v52 = *(v64 + 16);
  v37 = v65;
  v38 = v62;
  v52(v65, &v8[v35], v62);
  v51 = type metadata accessor for CuratedTodayFeedGroupConfigData;
  sub_2194244C4(v8, type metadata accessor for CuratedTodayFeedGroupConfigData);
  v39 = sub_219BF1704();
  v41 = v40;
  v42 = *(v36 + 8);
  v42(v37, v38);
  *v33 = v39;
  v33[1] = v41;
  v43 = v70;
  v71(v33, *MEMORY[0x277D322D0], v70);
  v44 = v56 + v32;
  v45 = v59;
  sub_219BEDD14();
  v46 = v61;
  v52(v61, (v45 + *(v53 + 20)), v38);
  sub_2194244C4(v45, v51);
  v47 = sub_219BF1734();
  v42(v46, v38);
  *(swift_allocObject() + 16) = v47;
  swift_allocObject();
  v48 = sub_219BEFB94();
  v49 = v67;
  *(v67 + v44) = v48;
  v71(v49 + v44, v68, v43);
  v72 = v60;
  sub_2191EE478(v58);
  return v72;
}

uint64_t sub_21941E2C0(uint64_t a1, uint64_t a2)
{
  v3[56] = a2;
  v3[57] = v2;
  v3[55] = a1;
  v4 = sub_219BEF8A4();
  v3[58] = v4;
  v3[59] = *(v4 - 8);
  v3[60] = swift_task_alloc();
  v3[61] = type metadata accessor for CuratedTodayFeedGroup();
  v3[62] = swift_task_alloc();
  v5 = sub_219BF1904();
  v3[63] = v5;
  v3[64] = *(v5 - 8);
  v3[65] = swift_task_alloc();
  v6 = MEMORY[0x277D83D88];
  sub_2186D8C44(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  v3[66] = swift_task_alloc();
  sub_219BEF554();
  v3[67] = swift_task_alloc();
  v3[68] = swift_task_alloc();
  v7 = sub_219BED8D4();
  v3[69] = v7;
  v3[70] = *(v7 - 8);
  v3[71] = swift_task_alloc();
  v3[72] = swift_task_alloc();
  sub_2186D8C44(0, &qword_280E90380, MEMORY[0x277D339F0], v6);
  v3[73] = swift_task_alloc();
  sub_2186D8C44(0, &qword_280E90150, MEMORY[0x277D33EC8], v6);
  v3[74] = swift_task_alloc();
  sub_2186D8C44(0, &unk_280E91A10, sub_2189AE994, v6);
  v3[75] = swift_task_alloc();
  v8 = sub_219BF2AB4();
  v3[76] = v8;
  v3[77] = *(v8 - 8);
  v3[78] = swift_task_alloc();
  v9 = sub_219BEF9C4();
  v3[79] = v9;
  v3[80] = *(v9 - 8);
  v3[81] = swift_task_alloc();
  sub_2186D8C44(0, &unk_280E90FA0, MEMORY[0x277D32C48], v6);
  v3[82] = swift_task_alloc();
  v10 = sub_219BEF564();
  v3[83] = v10;
  v3[84] = *(v10 - 8);
  v3[85] = swift_task_alloc();
  v11 = sub_219BEFBD4();
  v3[86] = v11;
  v3[87] = *(v11 - 8);
  v3[88] = swift_task_alloc();
  sub_2186E4FBC(0);
  v3[89] = swift_task_alloc();
  v3[90] = swift_task_alloc();
  v3[91] = swift_task_alloc();
  v12 = sub_219BF0BD4();
  v3[92] = v12;
  v3[93] = *(v12 - 8);
  v3[94] = swift_task_alloc();
  sub_2186D8C44(0, &qword_280E90300, MEMORY[0x277D33AA8], v6);
  v3[95] = swift_task_alloc();
  v13 = sub_219BF2774();
  v3[96] = v13;
  v3[97] = *(v13 - 8);
  v3[98] = swift_task_alloc();
  sub_219BEDC14();
  v3[99] = swift_task_alloc();
  v14 = sub_219BF35D4();
  v3[100] = v14;
  v3[101] = *(v14 - 8);
  v3[102] = swift_task_alloc();
  sub_2186FE720();
  v3[103] = swift_task_alloc();
  v15 = sub_219BF2034();
  v3[104] = v15;
  v3[105] = *(v15 - 8);
  v3[106] = swift_task_alloc();
  v16 = sub_219BF1934();
  v3[107] = v16;
  v3[108] = *(v16 - 8);
  v3[109] = swift_task_alloc();
  v3[110] = swift_task_alloc();
  v3[111] = swift_task_alloc();
  v3[112] = type metadata accessor for CuratedTodayFeedGroupConfigData();
  v3[113] = swift_task_alloc();
  v3[114] = swift_task_alloc();
  v3[115] = swift_task_alloc();
  v3[116] = swift_task_alloc();
  v3[117] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21941EADC, 0, 0);
}

uint64_t sub_21941EADC()
{
  if (([*(*(v0 + 456) + OBJC_IVAR____TtC7NewsUI228CuratedTodayFeedGroupEmitter_featureAvailability) puzzlesEnabled] & 1) == 0)
  {
    sub_219BEF0B4();
    v1 = *(*(v0 + 376) + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_appConfig);
    swift_unknownObjectRetain();

    v2 = [v1 puzzlesConfig];
    swift_unknownObjectRelease();
    v3 = [v2 puzzleHubTagID];

    if (v3)
    {
      v4 = *(v0 + 936);
      v5 = *(v0 + 896);
      v6 = *(v0 + 888);
      v7 = *(v0 + 864);
      v8 = *(v0 + 856);
      v9 = sub_219BF5414();
      v11 = v10;

      sub_2186DE644();
      sub_219BEDD14();
      (*(v7 + 16))(v6, v4 + *(v5 + 20), v8);
      sub_2194244C4(v4, type metadata accessor for CuratedTodayFeedGroupConfigData);
      v12 = sub_219BF1784();
      v14 = v13;
      (*(v7 + 8))(v6, v8);
      if (v14)
      {
        if (v12 == v9 && v14 == v11)
        {

LABEL_28:
          v77 = sub_219BEEDD4();
          sub_219423C28(&qword_280E917E0, MEMORY[0x277D32430]);
          swift_allocError();
          (*(*(v77 - 8) + 104))(v78, *MEMORY[0x277D323E0], v77);
          swift_willThrow();

          v79 = *(v0 + 8);

          return v79();
        }

        v16 = sub_219BF78F4();

        if (v16)
        {
          goto LABEL_28;
        }
      }

      else
      {
      }
    }
  }

  sub_219BEF164();
  v17 = *(v0 + 384);
  *(v0 + 944) = v17;
  sub_219BEF0B4();

  v18 = sub_2197DFE8C();

  v19 = MEMORY[0x277D84F90];
  v106 = v17;
  if (v17)
  {
    v21 = *(v17 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 16);
    v20 = *(v17 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 32);
    v22 = *(v17 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines);
    *(v0 + 64) = *(v17 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 48);
    *(v0 + 32) = v21;
    *(v0 + 48) = v20;
    *(v0 + 16) = v22;
    v23 = *(v0 + 16);
    *(v0 + 368) = v23;
    v109 = v23;
    sub_219424C08(v0 + 16, v0 + 128, &qword_280ECC538, &qword_280E8E260, &protocolRef_FCHeadlineProviding, type metadata accessor for TodayFeedPoolContent);
    v24 = MEMORY[0x277D83940];
    v102 = MEMORY[0x277D83940];
    sub_219424C08(v0 + 368, v0 + 408, &qword_280E8EC00, &qword_280E8E260, &protocolRef_FCHeadlineProviding, MEMORY[0x277D83940]);

    sub_2191ED6C8(v25);
    *(v0 + 416) = v109;
    *(swift_task_alloc() + 16) = v0 + 16;
    sub_219424BA0(0, &qword_280E8EC00, &qword_280E8E260, &protocolRef_FCHeadlineProviding, v24);
    sub_219424C7C(&qword_280E8EBF0, &qword_280E8EC00, &qword_280E8E260, &protocolRef_FCHeadlineProviding);
    sub_219BF56E4();
    sub_219424CE0(v0 + 16, &qword_280ECC538, &qword_280E8E260, &protocolRef_FCHeadlineProviding);

    v27 = *(v17 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags + 16);
    v26 = *(v17 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags + 32);
    v28 = *(v17 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags);
    *(v0 + 120) = *(v17 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_tags + 48);
    *(v0 + 88) = v27;
    *(v0 + 104) = v26;
    *(v0 + 72) = v28;
    v29 = *(v0 + 72);
    *(v0 + 360) = v29;
    v110 = v29;
    sub_219424C08(v0 + 72, v0 + 184, qword_280ECC548, &qword_280E8E680, &protocolRef_FCTagProviding, type metadata accessor for TodayFeedPoolContent);
    sub_219424C08(v0 + 360, v0 + 424, &qword_280E8ED00, &qword_280E8E680, &protocolRef_FCTagProviding, v102);

    sub_2191ED550(v30);
    *(v0 + 432) = v110;
    *(swift_task_alloc() + 16) = v0 + 72;
    sub_219424BA0(0, &qword_280E8ED00, &qword_280E8E680, &protocolRef_FCTagProviding, v102);
    sub_219424C7C(&qword_280E8ECF0, &qword_280E8ED00, &qword_280E8E680, &protocolRef_FCTagProviding);
    sub_219BF56E4();
    sub_219424CE0(v0 + 72, qword_280ECC548, &qword_280E8E680, &protocolRef_FCTagProviding);
  }

  else
  {
    sub_2191ED6C8(v18);
  }

  v31 = *(v0 + 928);
  v103 = *(v0 + 896);
  v32 = *(v0 + 824);
  v33 = sub_219BEC004();
  (*(*(v33 - 8) + 56))(v32, 1, 1, v33);
  sub_219A95188(v19);
  sub_219A95188(v19);
  sub_219A951A0(v19);
  sub_219A951B8(v19);
  sub_219A952CC(v19);
  sub_219A952E4(v19);
  sub_219A953F8(v19);
  sub_219BF2024();
  *(v0 + 952) = OBJC_IVAR____TtC7NewsUI228CuratedTodayFeedGroupEmitter_config;
  sub_2186DE644();
  *(v0 + 960) = v34;
  sub_219BEDD14();
  v35 = *(v31 + *(v103 + 48));
  sub_2194244C4(v31, type metadata accessor for CuratedTodayFeedGroupConfigData);
  v36 = *(v0 + 816);
  if (v35 == 1)
  {
    v37 = *(v0 + 808);
    v38 = *(v0 + 800);
    *v36 = 0x404E000000000000;
    (*(v37 + 104))(v36, *MEMORY[0x277D33EC0], v38);
  }

  else
  {
    sub_219BEF084();
    sub_219BF35E4();
  }

  v39 = *(v0 + 728);
  v107 = *(v0 + 720);
  v40 = *(v0 + 696);
  v95 = *(v0 + 688);
  v97 = *(v0 + 704);
  v100 = *(v0 + 760);
  v104 = *(v0 + 680);
  v41 = *(v0 + 672);
  v99 = *(v0 + 664);
  v42 = *(v0 + 448);
  v43 = *(v0 + 456);
  sub_219BEF134();
  v44 = OBJC_IVAR____TtC7NewsUI228CuratedTodayFeedGroupEmitter_knobs;
  *(v0 + 968) = OBJC_IVAR____TtC7NewsUI228CuratedTodayFeedGroupEmitter_knobs;
  v45 = v43 + v44;
  v46 = type metadata accessor for CuratedTodayFeedGroupKnobs();
  *(v0 + 976) = v46;
  v47 = *(v46 + 40);
  *(v0 + 1080) = v47;
  sub_219424DC0(v45 + v47, v39, sub_2186E4FBC);
  *(v0 + 304) = v46;
  *(v0 + 312) = sub_219423C28(&qword_280EBBA88, type metadata accessor for CuratedTodayFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 280));
  sub_219424DC0(v45, boxed_opaque_existential_1, type metadata accessor for CuratedTodayFeedGroupKnobs);
  v49 = sub_219BF1234();
  v50 = MEMORY[0x277D33230];
  *(v0 + 264) = v49;
  *(v0 + 272) = v50;
  __swift_allocate_boxed_opaque_existential_1((v0 + 240));
  sub_219BF1224();
  sub_219BF2AC4();
  v51 = sub_219BF2AD4();
  (*(*(v51 - 8) + 56))(v100, 0, 1, v51);
  sub_219420F38(v42);
  (*(v40 + 104))(v97, *MEMORY[0x277D329D8], v95);
  (*(v41 + 104))(v104, *MEMORY[0x277D32668], v99);
  v105 = v45;
  sub_219424DC0(v45 + v47, v107, sub_2186E4FBC);
  v52 = sub_219BEF814();
  *(v0 + 984) = v52;
  v53 = *(v52 - 8);
  *(v0 + 992) = v53;
  v54 = *(v53 + 48);
  *(v0 + 1000) = v54;
  *(v0 + 1008) = (v53 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v54(v107, 1, v52) == 1)
  {
    sub_2194244C4(*(v0 + 720), sub_2186E4FBC);
    v55 = 1;
  }

  else
  {
    v56 = *(v0 + 752);
    v57 = *(v0 + 744);
    v58 = *(v0 + 736);
    v59 = *(v0 + 720);
    sub_219BEF134();
    sub_219BEF7E4();
    (*(v57 + 8))(v56, v58);
    (*(v53 + 8))(v59, v52);
    v55 = 0;
  }

  v60 = *(v0 + 928);
  v94 = *(v0 + 920);
  v84 = *(v0 + 872);
  v85 = *(v0 + 880);
  v61 = *(v0 + 864);
  v82 = *(v0 + 896);
  v83 = *(v0 + 856);
  v88 = *(v0 + 808);
  v89 = *(v0 + 800);
  v90 = *(v0 + 816);
  v91 = *(v0 + 784);
  v96 = *(v0 + 776);
  v98 = *(v0 + 768);
  v62 = *(v0 + 656);
  v63 = *(v0 + 648);
  v64 = *(v0 + 640);
  v65 = *(v0 + 632);
  v86 = *(v0 + 600);
  v87 = *(v0 + 592);
  v93 = *(v0 + 584);
  v81 = *(v0 + 456);
  v108 = *(v0 + 448);
  v66 = sub_219BF02F4();
  (*(*(v66 - 8) + 56))(v62, v55, 1, v66);
  (*(v64 + 104))(v63, *MEMORY[0x277D32840], v65);
  sub_219BF2764();
  *(v0 + 1016) = CACurrentMediaTime();
  sub_218718690(v81 + OBJC_IVAR____TtC7NewsUI228CuratedTodayFeedGroupEmitter_formatService, v0 + 320);
  v101 = *(v0 + 352);
  v92 = *(v0 + 344);
  __swift_project_boxed_opaque_existential_1((v0 + 320), v92);
  sub_219BEDD14();
  (*(v61 + 16))(v84, v60 + *(v82 + 20), v83);
  sub_2194244C4(v60, type metadata accessor for CuratedTodayFeedGroupConfigData);
  sub_219421270(v108, v84, v85);
  v67 = *(v61 + 8);
  *(v0 + 1024) = v67;
  *(v0 + 1032) = (v61 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v67(v84, v83);
  sub_2189AE994(0);
  v69 = v68;
  *(v0 + 1040) = v68;
  v70 = *(v68 - 8);
  (*(v70 + 16))(v86, v105, v68);
  (*(v70 + 56))(v86, 0, 1, v69);
  sub_219BEDD14();

  sub_2194244C4(v60, type metadata accessor for CuratedTodayFeedGroupConfigData);
  (*(v88 + 16))(v87, v90, v89);
  (*(v88 + 56))(v87, 0, 1, v89);
  *(v0 + 1084) = 0;
  sub_218D451AC();
  swift_allocObject();

  sub_219BF38D4();
  sub_219BEDD14();
  sub_218ABD4E8();
  sub_2194244C4(v94, type metadata accessor for CuratedTodayFeedGroupConfigData);
  (*(v96 + 16))(v93, v91, v98);
  (*(v96 + 56))(v93, 0, 1, v98);
  if (v106)
  {
  }

  v71 = qword_280E8D7A0;
  *MEMORY[0x277D30BC8];
  if (v71 != -1)
  {
    swift_once();
  }

  v72 = qword_280F616D8;
  *(v0 + 1048) = qword_280F616D8;
  v72;
  sub_219BF2A84();
  v73 = swift_task_alloc();
  *(v0 + 1056) = v73;
  *v73 = v0;
  v73[1] = sub_21941FC64;
  v74 = *(v0 + 880);
  v75 = *(v0 + 848);
  v76 = *(v0 + 624);

  return MEMORY[0x2821921B8](v74, v75, v76, v92, v101);
}

uint64_t sub_21941FC64(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[133] = a1;
  v4[134] = v1;

  v5 = v3[128];
  v6 = v3[110];
  v7 = v3[107];
  (*(v3[77] + 8))(v3[78], v3[76]);
  v5(v6, v7);
  if (v1)
  {
    v8 = sub_219420C74;
  }

  else
  {
    v8 = sub_21941FE44;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_21941FE44()
{
  v1 = *(v0 + 928);
  v94 = *(v0 + 512);
  v87 = *(v0 + 520);
  v91 = *(v0 + 504);
  __swift_destroy_boxed_opaque_existential_1(v0 + 320);
  sub_2186D8C44(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C09EC0;
  sub_219BEDD14();
  v4 = *v1;
  v3 = v1[1];

  sub_2194244C4(v1, type metadata accessor for CuratedTodayFeedGroupConfigData);
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 64) = sub_2186FC3BC();
  *(v2 + 32) = v4;
  *(v2 + 40) = v3;
  sub_219BF5CD4();
  v5 = MEMORY[0x277D83A80];
  *(v2 + 96) = MEMORY[0x277D839F8];
  *(v2 + 104) = v5;
  *(v2 + 72) = v6;
  sub_219BF6214();
  sub_219BE5314();

  sub_219BEDCB4();
  sub_219BEDCC4();
  sub_219BEDCC4();
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  sub_2189AE9B4(0);
  sub_219BEEC84();
  sub_219BED834();
  sub_219BF2734();
  v7 = sub_219BF18B4();
  v8 = *(v94 + 8);
  v8(v87, v91);
  LOBYTE(v3) = sub_21942170C(v7);

  if (v3)
  {
    v9 = *(v0 + 840);
    v88 = *(v0 + 832);
    v92 = *(v0 + 848);
    v10 = *(v0 + 808);
    v81 = *(v0 + 800);
    v84 = *(v0 + 816);
    v78 = *(v0 + 784);
    v11 = *(v0 + 776);
    v76 = *(v0 + 768);
    v12 = *(v0 + 576);
    v13 = *(v0 + 560);
    v14 = *(v0 + 552);
    v15 = sub_219BEEDD4();
    sub_219423C28(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    (*(*(v15 - 8) + 104))(v16, *MEMORY[0x277D323D0], v15);
    swift_willThrow();

    (*(v13 + 8))(v12, v14);
    (*(v11 + 8))(v78, v76);
    (*(v10 + 8))(v84, v81);
    (*(v9 + 8))(v92, v88);
LABEL_8:

    v44 = *(v0 + 8);
    goto LABEL_12;
  }

  v17 = *(v0 + 1000);
  v18 = *(v0 + 984);
  v19 = *(v0 + 712);
  sub_219424DC0(*(v0 + 456) + *(v0 + 968) + *(v0 + 1080), v19, sub_2186E4FBC);
  if (v17(v19, 1, v18) == 1)
  {
    sub_2194244C4(*(v0 + 712), sub_2186E4FBC);
  }

  else
  {
    v20 = *(v0 + 992);
    v21 = *(v0 + 984);
    v22 = *(v0 + 712);
    sub_219BEF794();
    (*(v20 + 8))(v22, v21);
  }

  v23 = *(v0 + 752);
  v24 = *(v0 + 744);
  v25 = *(v0 + 736);
  v26 = *(v0 + 520);
  v27 = *(v0 + 504);
  sub_219BEF134();
  sub_219BEF524();

  v89 = *(v24 + 8);
  v89(v23, v25);
  v28 = *(v0 + 400);
  sub_219BED874();
  v29 = sub_219BF18E4();
  v8(v26, v27);
  v30 = *(v29 + 16);

  if (v30 < v28)
  {
    v90 = *(v0 + 832);
    v93 = *(v0 + 848);
    v82 = *(v0 + 816);
    v85 = *(v0 + 840);
    v77 = *(v0 + 808);
    v79 = *(v0 + 800);
    v36 = *(v0 + 776);
    v74 = *(v0 + 768);
    v75 = *(v0 + 784);
    v37 = *(v0 + 560);
    v72 = *(v0 + 576);
    v73 = *(v0 + 552);
    v38 = *(v0 + 520);
    v71 = *(v0 + 504);
    v39 = sub_219BEEDD4();
    sub_219423C28(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    v41 = v40;
    sub_219BED874();
    v42 = sub_219BF18E4();
    v8(v38, v71);
    v43 = *(v42 + 16);

    *v41 = v28;
    v41[1] = v43;
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D32400], v39);
    swift_willThrow();

    (*(v37 + 8))(v72, v73);
    (*(v36 + 8))(v75, v74);
    (*(v77 + 8))(v82, v79);
    (*(v85 + 8))(v93, v90);
    goto LABEL_8;
  }

  v45 = *(v0 + 912);
  v80 = *(v0 + 904);
  v54 = *(v0 + 896);
  v68 = *(v0 + 840);
  v69 = *(v0 + 832);
  v70 = *(v0 + 848);
  v65 = *(v0 + 808);
  v66 = *(v0 + 800);
  v67 = *(v0 + 816);
  v86 = *(v0 + 784);
  v61 = *(v0 + 776);
  v62 = *(v0 + 768);
  v83 = *(v0 + 752);
  v58 = *(v0 + 736);
  v63 = *(v0 + 464);
  v46 = *(v0 + 576);
  v95 = *(v0 + 568);
  v47 = *(v0 + 560);
  v48 = *(v0 + 552);
  v59 = *(v0 + 496);
  v60 = *(v0 + 488);
  v49 = *(v0 + 472);
  v57 = *(v0 + 480);
  v64 = *(v0 + 440);
  (*(v47 + 16))(v95, v46, v48, v31, v32, v33, v34, v35, 0, 0, 1, 0);
  sub_219BEDD14();
  v55 = v45[1];
  v56 = *v45;

  sub_2194244C4(v45, type metadata accessor for CuratedTodayFeedGroupConfigData);
  sub_219BEDD14();
  v50 = *(v80 + *(v54 + 60));

  sub_2194244C4(v80, type metadata accessor for CuratedTodayFeedGroupConfigData);
  sub_219BEF134();
  sub_219BEF524();

  v89(v83, v58);
  (*(v47 + 8))(v46, v48);
  (*(v61 + 8))(v86, v62);
  (*(v65 + 8))(v67, v66);
  (*(v68 + 8))(v70, v69);
  v51 = MEMORY[0x277D32768];
  if (!*(v0 + 1085))
  {
    v51 = MEMORY[0x277D32760];
  }

  (*(v49 + 104))(v57, *v51, v63);
  (*(v47 + 32))(v59, v95, v48);
  v52 = (v59 + v60[5]);
  *v52 = v56;
  v52[1] = v55;
  *(v59 + v60[6]) = v50;
  (*(v49 + 32))(v59 + v60[7], v57, v63);
  sub_219424E28(v59, v64, type metadata accessor for CuratedTodayFeedGroup);
  type metadata accessor for TodayFeedGroup();
  swift_storeEnumTagMultiPayload();
  sub_218B8B124(0);
  swift_storeEnumTagMultiPayload();

  v44 = *(v0 + 8);
LABEL_12:

  return v44();
}

uint64_t sub_219420C74()
{
  v1 = v0[106];
  v2 = v0[105];
  v3 = v0[104];
  v4 = v0[102];
  v5 = v0[101];
  v6 = v0[100];
  v7 = v0[98];
  v8 = v0[97];
  v9 = v0[96];

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  v10 = v0[1];

  return v10();
}

uint64_t sub_219420F38(uint64_t a1)
{
  v24 = a1;
  v1 = sub_219BF3924();
  v2 = *(v1 - 8);
  v3 = v2;
  v4 = MEMORY[0x28223BE20](v1);
  v21 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v20 = &v19 - v6;
  v23 = sub_219BF0BD4();
  v7 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186D8C44(0, &unk_280E8B7B0, MEMORY[0x277D33FB8], MEMORY[0x277D84560]);
  v10 = *(v2 + 72);
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C0B8C0;
  v13 = *MEMORY[0x277D33FA8];
  v22 = v3;
  v14 = *(v3 + 104);
  v14(v12 + v11, v13, v1);
  v14(v12 + v11 + v10, *MEMORY[0x277D33F90], v1);
  v14(v12 + v11 + 2 * v10, *MEMORY[0x277D33FA0], v1);
  v15 = sub_2194B2A30(v12);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v26 = v15;
  type metadata accessor for CuratedTodayFeedGroupKnobs();
  sub_219BEF134();
  sub_219BEF524();
  (*(v7 + 8))(v9, v23);
  if (v25 == 1)
  {
    v16 = v21;
    v14(v21, *MEMORY[0x277D33F98], v1);
    v17 = v20;
    sub_2194995E4(v20, v16);
    (*(v22 + 8))(v17, v1);
  }

  return v26;
}

uint64_t sub_219421270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_218A89A94(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2186FE720();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v26[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_219BF1934();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v26[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = a2;
  v16 = sub_219422028(a1, sub_219424D50);
  if (!v16)
  {
    return (*(v13 + 16))(a3, a2, v12);
  }

  v30[0] = v16;
  v30[1] = 0;
  v29 = 0;
  v17 = sub_219BEC004();
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  sub_218A42400(0);
  (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
  v19 = sub_219BF1924();
  sub_21941CC04(v19, v30, &v29);

  sub_219BF1764();

  sub_2194244C4(v8, sub_218A89A94);
  sub_2194244C4(v11, sub_2186FE720);
  v20 = v29;
  if (v29 < 1)
  {
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    sub_219BF6214();
    sub_219BE5314();
    (*(v13 + 8))(v15, v12);
    (*(v13 + 16))(a3, a2, v12);
  }

  else
  {
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    sub_2186D8C44(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_219C09BA0;
    v28 = v20;
    v22 = sub_219BF7894();
    v24 = v23;
    *(v21 + 56) = MEMORY[0x277D837D0];
    *(v21 + 64) = sub_2186FC3BC();
    *(v21 + 32) = v22;
    *(v21 + 40) = v24;
    sub_219BF6214();
    sub_219BE5314();

    (*(v13 + 32))(a3, v15, v12);
  }
}

char *sub_21942170C(unint64_t a1)
{
  v2 = type metadata accessor for CuratedTodayFeedGroupConfigData();
  MEMORY[0x28223BE20](v2 - 8);
  v43 = MEMORY[0x277D84F90];
  v35 = a1 >> 62;
  v36 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
LABEL_43:
    v4 = sub_219BF7214();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v6 = 0;
    v38 = (v37 + OBJC_IVAR____TtC7NewsUI228CuratedTodayFeedGroupEmitter_puzzleHistoryService);
    v39 = v4;
    v40 = a1 & 0xFFFFFFFFFFFFFF8;
    v41 = a1 & 0xC000000000000001;
    while (1)
    {
      if (v41)
      {
        v7 = MEMORY[0x21CECE0F0](v6, a1);
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v5 = v43;
          break;
        }
      }

      else
      {
        if (v6 >= *(v40 + 16))
        {
          __break(1u);
          goto LABEL_43;
        }

        v7 = *(a1 + 8 * v6 + 32);
        swift_unknownObjectRetain();
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_14;
        }
      }

      __swift_project_boxed_opaque_existential_1(v38, v38[3]);
      v9 = [v7 identifier];
      sub_219BF5414();

      v10 = sub_219BF3414();

      if (v10)
      {
        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      v4 = v39;
      ++v6;
      if (v8 == v39)
      {
        goto LABEL_15;
      }
    }
  }

  sub_2186DE644();
  v11 = v36;
  sub_219BEDD14();
  if (*v11 == 0x73656C7A7A7570 && v11[1] == 0xE700000000000000)
  {
    sub_2194244C4(v11, type metadata accessor for CuratedTodayFeedGroupConfigData);
    if (!v4)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v13 = sub_219BF78F4();
    sub_2194244C4(v11, type metadata accessor for CuratedTodayFeedGroupConfigData);
    if ((v13 & 1) == 0 || !v4)
    {
      goto LABEL_46;
    }
  }

  if (v5 < 0 || (v5 & 0x4000000000000000) != 0)
  {
    v14 = sub_219BF7214();
    if (!v35)
    {
LABEL_27:
      if (v14 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

LABEL_46:

      return 0;
    }
  }

  else
  {
    v14 = *(v5 + 16);
    if (!v35)
    {
      goto LABEL_27;
    }
  }

  if (v14 < sub_219BF7214())
  {
    goto LABEL_46;
  }

LABEL_28:
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v15 = qword_280F616D8;
  sub_2186D8C44(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v16 = swift_allocObject();
  v17 = v16;
  *(v16 + 16) = xmmword_219C09BA0;
  v43 = 0;
  v44 = 0xE000000000000000;
  if (!v14)
  {

    v20 = MEMORY[0x277D84F90];
LABEL_41:
    v29 = MEMORY[0x277D837D0];
    v30 = MEMORY[0x21CECC6D0](v20, MEMORY[0x277D837D0]);
    v32 = v31;

    MEMORY[0x21CECC330](v30, v32);

    v33 = v43;
    v34 = v44;
    v17[7] = v29;
    v17[8] = sub_2186FC3BC();
    v17[4] = v33;
    v17[5] = v34;
    sub_219BF6214();
    sub_219BE5314();

    return 1;
  }

  v40 = v16;
  v41 = v15;
  v42 = MEMORY[0x277D84F90];
  result = sub_21870B65C(0, v14 & ~(v14 >> 63), 0);
  if ((v14 & 0x8000000000000000) == 0)
  {
    v19 = 0;
    v20 = v42;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x21CECE0F0](v19, v5);
      }

      else
      {
        v21 = *(v5 + 8 * v19 + 32);
        swift_unknownObjectRetain();
      }

      v22 = [v21 identifier];
      v23 = sub_219BF5414();
      v25 = v24;
      swift_unknownObjectRelease();

      v42 = v20;
      v27 = *(v20 + 16);
      v26 = *(v20 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_21870B65C((v26 > 1), v27 + 1, 1);
        v20 = v42;
      }

      ++v19;
      *(v20 + 16) = v27 + 1;
      v28 = v20 + 16 * v27;
      *(v28 + 32) = v23;
      *(v28 + 40) = v25;
    }

    while (v14 != v19);

    v17 = v40;
    goto LABEL_41;
  }

  __break(1u);
  return result;
}

uint64_t sub_219421C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  sub_218D3BC60(0);
  v4[7] = swift_task_alloc();
  v5 = type metadata accessor for TodayFeedGroup();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = type metadata accessor for CuratedTodayFeedGroupConfigData();
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219421D50, 0, 0);
}

uint64_t sub_219421D50()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  sub_2186DE644();
  sub_219BEDD14();
  v3 = *(v1 + *(v2 + 52));
  sub_2194244C4(v1, type metadata accessor for CuratedTodayFeedGroupConfigData);
  if (v3)
  {
    v4 = *(v0 + 24);
    sub_219424DC0(*(v0 + 40), v4, sub_218D3BC94);
    sub_218D3BC94();
    (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
    goto LABEL_7;
  }

  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v8 = *(v0 + 56);
  sub_218D3BC94();
  v10 = v9;
  sub_219BEFDA4();
  if ((*(v7 + 48))(v8, 1, v6) == 1)
  {
    sub_2194244C4(*(v0 + 56), sub_218D3BC60);
  }

  else
  {
    sub_219424E28(*(v0 + 56), *(v0 + 80), type metadata accessor for TodayFeedGroup);
    sub_219BEF164();
    v16 = *(v0 + 80);
    v17 = sub_21899D954(*(v0 + 16));

    sub_2194244C4(v16, type metadata accessor for TodayFeedGroup);
    if (v17)
    {
      v18 = *(v0 + 24);
      sub_219424DC0(*(v0 + 40), v18, sub_218D3BC94);
      v12 = *(*(v10 - 8) + 56);
      v11 = v18;
      v13 = 0;
      goto LABEL_6;
    }
  }

  v11 = *(v0 + 24);
  v12 = *(*(v10 - 8) + 56);
  v13 = 1;
LABEL_6:
  v12(v11, v13, 1, v10);
LABEL_7:

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_219422028(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v44[0] = a1;
  v3 = type metadata accessor for CuratedTodayFeedGroupConfigData();
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = (v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v8 = (v44 - v7);
  sub_2186DE644();
  sub_219BEDD14();
  if (*v8 == 0x69726F7453706F74 && v8[1] == 0xEA00000000007365)
  {
    sub_2194244C4(v8, type metadata accessor for CuratedTodayFeedGroupConfigData);
LABEL_10:
    v14 = v44[0];
    sub_219BEF0B4();
    v15 = *(v46 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_contentConfigData);

    v16 = *(v15 + OBJC_IVAR____TtC7NewsUI215TodayConfigData_localNewsArticles);

    v17 = *(v16 + 16);

    if (!v17)
    {
      if (qword_280E8D7A0 == -1)
      {
        goto LABEL_45;
      }

      goto LABEL_51;
    }

    sub_219BEF0B4();

    v18 = sub_2197E0020();

    v46 = v18;
    if (!v18[2])
    {

      if (qword_280E8D7A0 == -1)
      {
        goto LABEL_45;
      }

      goto LABEL_51;
    }

    v20 = a2(v19);
    v21 = v20;
    if (v20 >> 62)
    {
      v22 = sub_219BF7214();
      if (v22)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v22 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v22)
      {
LABEL_14:
        v45 = MEMORY[0x277D84F90];
        sub_21870B65C(0, v22 & ~(v22 >> 63), 0);
        if (v22 < 0)
        {
          __break(1u);
          goto LABEL_51;
        }

        v23 = 0;
        v24 = v45;
        do
        {
          if ((v21 & 0xC000000000000001) != 0)
          {
            MEMORY[0x21CECE0F0](v23, v21);
          }

          else
          {
          }

          v25 = sub_219BF16A4();
          v27 = v26;

          v45 = v24;
          v29 = *(v24 + 16);
          v28 = *(v24 + 24);
          if (v29 >= v28 >> 1)
          {
            sub_21870B65C((v28 > 1), v29 + 1, 1);
            v24 = v45;
          }

          ++v23;
          *(v24 + 16) = v29 + 1;
          v30 = v24 + 16 * v29;
          *(v30 + 32) = v25;
          *(v30 + 40) = v27;
        }

        while (v22 != v23);

        v14 = v44[0];
LABEL_29:
        v31 = sub_218845F78(v24);

        v32 = sub_219424E90(&v46, v31);

        v33 = v46;
        v34 = v46[2];
        if (v32 > v34)
        {
          __break(1u);
        }

        else if ((v32 & 0x8000000000000000) == 0)
        {
          if (!__OFADD__(v34, v32 - v34))
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if (!isUniquelyReferenced_nonNull_native || v32 > v33[3] >> 1)
            {
              if (v34 <= v32)
              {
                v36 = v32;
              }

              else
              {
                v36 = v34;
              }

              v33 = sub_2191FAAC0(isUniquelyReferenced_nonNull_native, v36, 1, v33);
              v46 = v33;
            }

            sub_2194B3E20(v32, v34, 0);

            v46 = v33;
            if (v33[2])
            {
              sub_2194256A4(v14, &v46);
              result = v46;
              if (v46[2])
              {
                return result;
              }

              v38 = v46;
              if (qword_280E8D7A0 != -1)
              {
                swift_once();
              }

              sub_2186D8C44(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
              v39 = swift_allocObject();
              *(v39 + 16) = xmmword_219C09BA0;
              v40 = type metadata accessor for TodayLocalNewsArticle.Resolved(0);
              v41 = MEMORY[0x21CECC6D0](v38, v40);
              v43 = v42;

              *(v39 + 56) = MEMORY[0x277D837D0];
              *(v39 + 64) = sub_2186FC3BC();
              *(v39 + 32) = v41;
              *(v39 + 40) = v43;
              sub_219BF6214();
              sub_219BE5314();
              goto LABEL_43;
            }

            if (qword_280E8D7A0 == -1)
            {
LABEL_45:
              sub_219BF6214();
              sub_219BE5314();
              return 0;
            }

LABEL_51:
            swift_once();
            goto LABEL_45;
          }

LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        __break(1u);
        goto LABEL_50;
      }
    }

    v24 = MEMORY[0x277D84F90];
    goto LABEL_29;
  }

  v10 = sub_219BF78F4();
  sub_2194244C4(v8, type metadata accessor for CuratedTodayFeedGroupConfigData);
  if (v10)
  {
    goto LABEL_10;
  }

  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  sub_2186D8C44(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_219C09BA0;
  sub_219BEDD14();
  v13 = *v6;
  v12 = v6[1];

  sub_2194244C4(v6, type metadata accessor for CuratedTodayFeedGroupConfigData);
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = sub_2186FC3BC();
  *(v11 + 32) = v13;
  *(v11 + 40) = v12;
  sub_219BF6214();
  sub_219BE5314();
LABEL_43:

  return 0;
}

uint64_t sub_219422768(uint64_t a1)
{
  v2 = sub_219BF7B94();
  v54 = *(v2 - 8);
  v55 = v2;
  MEMORY[0x28223BE20](v2);
  v52 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_219BF7B74();
  v50 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v47 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_219BF7BF4();
  v46 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_219BF7C04();
  v49 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BDBD34();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v39 - v14;
  v16 = [*(a1 + 8) publisherSpecifiedArticleIDsModifiedDate];
  if (v16)
  {
    v17 = v16;
    sub_219BDBCA4();

    (*(v10 + 32))(v15, v13, v9);
    if ((sub_219BDBC24() & 1) == 0)
    {
      (*(v10 + 8))(v15, v9);
      return 0;
    }

    sub_219BDBC64();
    if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v18 < 9.22337204e18)
    {
      if (v18 > -9.22337204e18)
      {
        v43 = v10;
        v44 = v9;
        v45 = a1;
        v19 = sub_219BF7C24();
        v40 = v20;
        v41 = v19;
        if (qword_280E8D7A0 == -1)
        {
LABEL_7:
          v42 = qword_280F616D8;
          v21 = MEMORY[0x277D84560];
          sub_2186D8C44(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
          v22 = swift_allocObject();
          v39 = xmmword_219C0B8C0;
          *(v22 + 16) = xmmword_219C0B8C0;
          sub_2186D8C44(0, &qword_280E8B5A8, MEMORY[0x277CC9FC8], v21);
          sub_219BF7BD4();
          v23 = swift_allocObject();
          *(v23 + 16) = v39;
          sub_219BF7BA4();
          sub_219BF7BB4();
          sub_219BF7BC4();
          sub_21942538C(v23);
          swift_setDeallocating();
          swift_arrayDestroy();
          swift_deallocClassInstance();
          sub_219BF7BE4();
          v24 = v47;
          sub_219BF7B64();
          v25 = v52;
          sub_219BF7B84();
          v26 = 1;
          sub_219BDAF94();

          (*(v54 + 8))(v25, v55);
          (*(v50 + 8))(v24, v53);
          (*(v46 + 8))(v6, v48);
          v27 = MEMORY[0x277D837D0];
          *(v22 + 56) = MEMORY[0x277D837D0];
          v28 = sub_2186FC3BC();
          *(v22 + 64) = v28;
          sub_219423C28(&unk_280E8B510, MEMORY[0x277CC9FF0]);
          v29 = v51;
          sub_219BF7C14();
          (*(v49 + 8))(v8, v29);
          sub_219423C28(&qword_280EE9C60, MEMORY[0x277CC9578]);
          v30 = v44;
          v31 = sub_219BF7894();
          *(v22 + 96) = v27;
          *(v22 + 104) = v28;
          *(v22 + 72) = v31;
          *(v22 + 80) = v32;
          v56 = 0;
          v57 = 0xE000000000000000;
          type metadata accessor for TodayLocalNewsArticle.Resolved(0);
          sub_219BF7484();
          v33 = v56;
          v34 = v57;
          *(v22 + 136) = v27;
          *(v22 + 144) = v28;
          *(v22 + 112) = v33;
          *(v22 + 120) = v34;
          sub_219BF6214();
          sub_219BE5314();

          (*(v43 + 8))(v15, v30);
          return v26;
        }

LABEL_16:
        swift_once();
        goto LABEL_7;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  sub_2186D8C44(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_219C09BA0;
  v56 = 0;
  v57 = 0xE000000000000000;
  type metadata accessor for TodayLocalNewsArticle.Resolved(0);
  sub_219BF7484();
  v36 = v56;
  v37 = v57;
  *(v35 + 56) = MEMORY[0x277D837D0];
  *(v35 + 64) = sub_2186FC3BC();
  *(v35 + 32) = v36;
  *(v35 + 40) = v37;
  sub_219BF6214();
  sub_219BE5314();

  return 1;
}

uint64_t sub_219422FC4()
{
  v0 = sub_219BF26F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B6F8A0();
  v31 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BF1A44();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_219BF2044();
  v12 = result;
  v13 = *(result + 16);
  if (v13)
  {
    v14 = v5;
    v15 = 0;
    v39 = result + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v40 = 0x8000000219D203B0;
    v37 = (v8 + 8);
    v38 = v8 + 16;
    v36 = (v1 + 88);
    v35 = *MEMORY[0x277D339C8];
    v33 = (v1 + 96);
    v34 = (v1 + 8);
    v32 = *MEMORY[0x277D33758];
    v27 = (v14 + 8);
    v28 = (v14 + 16);
    v29 = v13;
    do
    {
      if (v15 >= *(v12 + 16))
      {
        __break(1u);
        return result;
      }

      v16 = v0;
      (*(v8 + 16))(v10, v39 + *(v8 + 72) * v15, v7);
      if (sub_219BF1A14() == 0xD00000000000001ALL && v40 == v17)
      {
      }

      else
      {
        v18 = sub_219BF78F4();

        if ((v18 & 1) == 0)
        {
          result = (*v37)(v10, v7);
LABEL_16:
          v0 = v16;
          goto LABEL_4;
        }
      }

      sub_219BF1A34();
      v0 = v16;
      v19 = (*v36)(v3, v16);
      if (v19 == v35)
      {
        (*v33)(v3, v16);
        v20 = sub_219BF2124();
        v21 = *(v20 - 8);
        v22 = (*(v21 + 88))(v3, v20);
        if (v22 != v32)
        {
          (*v37)(v10, v7);
          result = (*(v21 + 8))(v3, v20);
          goto LABEL_16;
        }

        (*(v21 + 96))(v3, v20);
        v23 = swift_projectBox();
        v24 = v30;
        v25 = v31;
        (*v28)(v30, v23, v31);
        v13 = v29;

        sub_219BF2714();
        (*v27)(v24, v25);
        result = (*v37)(v10, v7);
        v0 = v16;
        if (v41)
        {

          return 1;
        }
      }

      else
      {
        (*v37)(v10, v7);
        result = (*v34)(v3, v16);
      }

LABEL_4:
      ++v15;
    }

    while (v13 != v15);
  }

  return 0;
}

uint64_t sub_2194234C4(id *a1)
{
  v2 = sub_219BDB954();
  v36 = *(v2 - 8);
  v37 = v2;
  MEMORY[0x28223BE20](v2);
  v35 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BF26F4();
  v27 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BF3034();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v11;
  v12 = [*a1 identifier];
  v13 = sub_219BF5414();
  v33 = v14;
  v34 = v13;

  v15 = *(type metadata accessor for TodayLocalNewsArticle.Resolved(0) + 24);
  v16 = *(v9 + 16);
  v28 = a1;
  v16(v11, a1 + v15, v8);
  v31 = sub_2194AD74C(&unk_282A21818);
  sub_2189AD3D8(&unk_282A21838);
  sub_2186D8C44(0, &qword_280E8B850, MEMORY[0x277D334E0], MEMORY[0x277D84560]);
  v29 = 2 * *(*(sub_219BF1A44() - 8) + 72);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_219C0B8C0;
  v17 = [a1[1] name];
  sub_219BF5414();

  sub_219BF20F4();

  v18 = *MEMORY[0x277D339C8];
  v19 = *(v5 + 104);
  v19(v7, v18, v4);
  sub_219BF1A04();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  sub_219BF20F4();

  v22 = v27;
  v19(v7, v18, v27);
  sub_219BF1A04();
  v23 = v35;
  v24 = v28;
  sub_218B7B564();
  sub_219BF20E4();
  (*(v36 + 8))(v23, v37);
  v19(v7, v18, v22);
  sub_219BF1A04();
  v25 = sub_219BF1684();
  sub_2194244C4(v24, type metadata accessor for TodayLocalNewsArticle.Resolved);
  return v25;
}

uint64_t sub_2194239F0()
{
  v1 = OBJC_IVAR____TtC7NewsUI228CuratedTodayFeedGroupEmitter_config;
  sub_2186DE644();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_2194244C4(v0 + OBJC_IVAR____TtC7NewsUI228CuratedTodayFeedGroupEmitter_knobs, type metadata accessor for CuratedTodayFeedGroupKnobs);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI228CuratedTodayFeedGroupEmitter_formatService);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI228CuratedTodayFeedGroupEmitter_todayFeedEngagementEventHandler);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI228CuratedTodayFeedGroupEmitter_puzzleHistoryService);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CuratedTodayFeedGroupEmitter()
{
  result = qword_280EB4A08;
  if (!qword_280EB4A08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219423B44()
{
  sub_2186DE644();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CuratedTodayFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_219423C28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_219423C94(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_21941E2C0(a1, a2);
}

uint64_t sub_219423D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2187608D4;

  return sub_219421C30(a1, a2, a3);
}

uint64_t sub_219423DF4()
{
  v0 = type metadata accessor for CuratedTodayFeedGroupConfigData();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = (v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6[0] = 0x2064657461727543;
  v6[1] = 0xE900000000000028;
  sub_2186DE644();
  sub_219BEDD14();
  v3 = *v2;
  v4 = v2[1];

  sub_2194244C4(v2, type metadata accessor for CuratedTodayFeedGroupConfigData);
  MEMORY[0x21CECC330](v3, v4);

  MEMORY[0x21CECC330](41, 0xE100000000000000);
  return v6[0];
}

uint64_t sub_219423EF0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI228CuratedTodayFeedGroupEmitter_config;
  sub_2186DE644();
  (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
  type metadata accessor for TodayFeedGroupConfig();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_219423F84@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI228CuratedTodayFeedGroupEmitter_knobs;
  a1[3] = type metadata accessor for CuratedTodayFeedGroupKnobs();
  a1[4] = sub_219423C28(&qword_280EBBA70, type metadata accessor for CuratedTodayFeedGroupKnobs);
  a1[5] = sub_219423C28(&unk_280EBBA78, type metadata accessor for CuratedTodayFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219424DC0(v3 + v4, boxed_opaque_existential_1, type metadata accessor for CuratedTodayFeedGroupKnobs);
}

uint64_t sub_2194240AC@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for CuratedTodayFeedGroupConfigData();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = 0x2064657461727543;
  v14 = 0xE900000000000028;
  sub_2186DE644();
  sub_219BEDD14();
  v5 = *v4;
  v6 = v4[1];

  sub_2194244C4(v4, type metadata accessor for CuratedTodayFeedGroupConfigData);
  MEMORY[0x21CECC330](v5, v6);

  MEMORY[0x21CECC330](41, 0xE100000000000000);
  sub_2186D8C44(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  v8 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v8;
  *(inited + 56) = v9;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_2194244C4(inited + 32, sub_2188317B0);
  sub_219425EE8(0);
  a1[3] = v10;
  a1[4] = sub_219423C28(&qword_280EE7948, sub_219425EE8);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_2194242F0()
{
  sub_219423C28(&qword_280EB4A30, type metadata accessor for CuratedTodayFeedGroupEmitter);

  return sub_219BE2324();
}

uint64_t sub_2194244C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219424524(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v6 = type metadata accessor for TodayLocalNewsArticle.Resolved(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v34 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v34 - v14;
  v16 = *v2;
  result = sub_21941D764(a1, a2, *v2);
  if (!v3)
  {
    v44 = 0;
    if (v18)
    {
      return *(v16 + 16);
    }

    v39 = v15;
    v40 = a1;
    v36 = v13;
    v37 = v10;
    v35 = v2;
    v43 = result;
    v19 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v21 = (v16 + 16);
      v20 = *(v16 + 16);
      if (v19 == v20)
      {
        return v43;
      }

      v38 = v7;
      while (v19 < v20)
      {
        v22 = v16;
        v41 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v23 = v16 + v41;
        v24 = *(v7 + 72);
        v42 = v24 * v19;
        v25 = v39;
        sub_219424DC0(v23 + v24 * v19, v39, type metadata accessor for TodayLocalNewsArticle.Resolved);
        v26 = a2;
        v27 = v44;
        v28 = v40(v25);
        result = sub_2194244C4(v25, type metadata accessor for TodayLocalNewsArticle.Resolved);
        v44 = v27;
        if (v27)
        {
          return result;
        }

        if (v28)
        {
          a2 = v26;
          v7 = v38;
          v16 = v22;
        }

        else
        {
          v29 = v43;
          if (v19 == v43)
          {
            a2 = v26;
            v7 = v38;
            v16 = v22;
          }

          else
          {
            if ((v43 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v30 = *v21;
            if (v43 >= *v21)
            {
              goto LABEL_27;
            }

            v31 = v24 * v43;
            result = sub_219424DC0(v23 + v24 * v43, v36, type metadata accessor for TodayLocalNewsArticle.Resolved);
            if (v19 >= v30)
            {
              goto LABEL_28;
            }

            v32 = v42;
            sub_219424DC0(v23 + v42, v37, type metadata accessor for TodayLocalNewsArticle.Resolved);
            v16 = v22;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v16 = sub_2194ABA9C(v22);
            }

            a2 = v26;
            v33 = v16 + v41;
            result = sub_219425DE8(v37, v16 + v41 + v31);
            if (v19 >= *(v16 + 16))
            {
              goto LABEL_29;
            }

            result = sub_219425DE8(v36, v33 + v32);
            *v35 = v16;
            v7 = v38;
            v29 = v43;
          }

          v43 = v29 + 1;
        }

        ++v19;
        v21 = (v16 + 16);
        v20 = *(v16 + 16);
        if (v19 == v20)
        {
          return v43;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_219424854@<X0>(void *a1@<X8>)
{
  result = swift_getAtKeyPath();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_2194248A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v5 = a2 + 56;
  v6 = 0;
  v7 = *(type metadata accessor for TodayLocalNewsArticle.Resolved(0) - 8);
  v21 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v20 = *(v7 + 72);
  while (1)
  {
    v8 = [*(v21 + v20 * v6) identifier];
    v9 = sub_219BF5414();
    v11 = v10;

    if (*(a2 + 16))
    {
      sub_219BF7AA4();
      sub_219BF5524();
      v12 = sub_219BF7AE4();
      v13 = -1 << *(a2 + 32);
      v14 = v12 & ~v13;
      if ((*(v5 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
      {
        break;
      }
    }

LABEL_3:

    if (++v6 == v2)
    {
      return 0;
    }
  }

  v15 = ~v13;
  while (1)
  {
    v16 = (*(a2 + 48) + 16 * v14);
    v17 = *v16 == v9 && v16[1] == v11;
    if (v17 || (sub_219BF78F4() & 1) != 0)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v5 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  sub_2186D8C44(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_219C09BA0;
  sub_219BF7484();
  *(v18 + 56) = MEMORY[0x277D837D0];
  *(v18 + 64) = sub_2186FC3BC();
  *(v18 + 32) = 0;
  *(v18 + 40) = 0xE000000000000000;
  sub_219BF6214();
  sub_219BE5314();

  return v6;
}

void sub_219424BA0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2186D6710(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_219424C08(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  sub_219424BA0(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_219424C7C(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_219424BA0(255, a2, a3, a4, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_219424CE0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_219424BA0(0, a2, a3, a4, type metadata accessor for TodayFeedPoolContent);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_219424D50()
{
  sub_219BF1724();
  v0 = sub_219BF5AB4();

  return v0;
}

uint64_t sub_219424DC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219424E28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_219424E90(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for TodayLocalNewsArticle.Resolved(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v42 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = (v42 - v14);
  v16 = *a1;
  result = sub_2194248A4(*a1, a2);
  if (v2)
  {
    return v3;
  }

  if (v18)
  {
    return *(v16 + 16);
  }

  v3 = result;
  v42[1] = 0;
  v46 = v10;
  v47 = v13;
  v44 = v6;
  v45 = a1;
  v19 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v55 = a2 + 56;
    v43 = xmmword_219C09BA0;
    v20 = v16;
    v48 = v7;
    v49 = v15;
    while (1)
    {
      v25 = v20[2];
      if (v19 == v25)
      {
        return v3;
      }

      if (v19 >= v25)
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        break;
      }

      v50 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v26 = v20 + v50;
      v27 = *(v7 + 72);
      v51 = v27 * v19;
      v52 = v20;
      sub_219424DC0(v20 + v50 + v27 * v19, v15, type metadata accessor for TodayLocalNewsArticle.Resolved);
      v28 = [*v15 identifier];
      v29 = sub_219BF5414();
      v31 = v30;

      if (*(a2 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v32 = sub_219BF7AE4(), v33 = -1 << *(a2 + 32), v34 = v32 & ~v33, ((*(v55 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) != 0))
      {
        v35 = ~v33;
        while (1)
        {
          v36 = (*(a2 + 48) + 16 * v34);
          v37 = *v36 == v29 && v36[1] == v31;
          if (v37 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v34 = (v34 + 1) & v35;
          if (((*(v55 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        if (qword_280E8D7A0 != -1)
        {
          swift_once();
        }

        sub_2186D8C44(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
        v21 = swift_allocObject();
        *(v21 + 16) = v43;
        v53 = 0;
        v54 = 0xE000000000000000;
        v15 = v49;
        sub_219BF7484();
        v22 = v53;
        v23 = v54;
        *(v21 + 56) = MEMORY[0x277D837D0];
        *(v21 + 64) = sub_2186FC3BC();
        *(v21 + 32) = v22;
        *(v21 + 40) = v23;
        sub_219BF6214();
        sub_219BE5314();

        result = sub_2194244C4(v15, type metadata accessor for TodayLocalNewsArticle.Resolved);
        v7 = v48;
        v20 = v52;
        v24 = __OFADD__(v19++, 1);
        if (v24)
        {
          goto LABEL_37;
        }
      }

      else
      {
LABEL_22:

        v15 = v49;
        result = sub_2194244C4(v49, type metadata accessor for TodayLocalNewsArticle.Resolved);
        if (v3 == v19)
        {
          v20 = v52;
        }

        else
        {
          v20 = v52;
          if ((v3 & 0x8000000000000000) != 0)
          {
            goto LABEL_39;
          }

          v38 = v52[2];
          if (v3 >= v38)
          {
            goto LABEL_40;
          }

          result = sub_219424DC0(&v26[v27 * v3], v47, type metadata accessor for TodayLocalNewsArticle.Resolved);
          if (v19 >= v38)
          {
            goto LABEL_41;
          }

          v39 = &v26[v51];
          v40 = v51;
          sub_219424DC0(v39, v46, type metadata accessor for TodayLocalNewsArticle.Resolved);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = sub_2194ABA9C(v20);
          }

          v41 = v20 + v50;
          result = sub_219425DE8(v46, v20 + v50 + v27 * v3);
          if (v19 >= v20[2])
          {
            goto LABEL_42;
          }

          result = sub_219425DE8(v47, &v41[v40]);
          *v45 = v20;
        }

        v24 = __OFADD__(v3++, 1);
        if (v24)
        {
          goto LABEL_38;
        }

        v7 = v48;
        v24 = __OFADD__(v19++, 1);
        if (v24)
        {
          goto LABEL_37;
        }
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21942538C(uint64_t a1)
{
  v2 = sub_219BF7BD4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_219425E4C();
    v9 = sub_219BF72E4();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v33 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    v31 = v8;
    v32 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v13 * v10, v2);
      sub_219423C28(&qword_280E8B528, MEMORY[0x277CC9FC8]);
      v15 = sub_219BF52E4();
      v16 = -1 << *(v9 + 32);
      v17 = v15 & ~v16;
      v18 = v17 >> 6;
      v19 = *(v36 + 8 * (v17 >> 6));
      v20 = 1 << v17;
      if (((1 << v17) & v19) != 0)
      {
        v21 = ~v16;
        do
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v17 * v13, v2);
          sub_219423C28(&qword_280E8B520, MEMORY[0x277CC9FC8]);
          v23 = sub_219BF53A4();
          v24 = *v14;
          (*v14)(v6, v2);
          if (v23)
          {
            v24(v37, v2);
            v11 = v22;
            v8 = v31;
            goto LABEL_4;
          }

          v17 = (v17 + 1) & v21;
          v18 = v17 >> 6;
          v19 = *(v36 + 8 * (v17 >> 6));
          v20 = 1 << v17;
          v11 = v22;
        }

        while (((1 << v17) & v19) != 0);
        v8 = v31;
      }

      v25 = v37;
      *(v36 + 8 * v18) = v20 | v19;
      result = (*v32)(*(v9 + 48) + v17 * v13, v25, v2);
      v27 = *(v9 + 16);
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        break;
      }

      *(v9 + 16) = v29;
LABEL_4:
      v10 = v34 + 1;
      if (v34 + 1 == v8)
      {
        return v9;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_2194256A4(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v2 = sub_219BF7B94();
  v44 = *(v2 - 8);
  v45 = v2;
  MEMORY[0x28223BE20](v2);
  v42 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_219BF7B74();
  v40 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BF7BF4();
  v37 = *(v6 - 8);
  v38 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_219BF7C04();
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BDBD34();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v35 - v16;
  sub_219BEF0B4();
  v18 = *(v47 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_appConfig);
  swift_unknownObjectRetain();

  if (([v18 respondsToSelector_] & 1) == 0)
  {
    return swift_unknownObjectRelease();
  }

  [v18 topStoriesLocalNewsExpiration];
  swift_unknownObjectRelease();
  v19 = sub_219BF7C24();
  v35[2] = v20;
  v35[3] = v19;
  sub_219BDBCB4();
  sub_219BDBC44();
  v35[0] = *(v12 + 8);
  v35[1] = v12 + 8;
  (v35[0])(v15, v11);
  v36 = v11;
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v35[4] = qword_280F616D8;
  v21 = MEMORY[0x277D84560];
  sub_2186D8C44(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_219C09EC0;
  sub_2186D8C44(0, &qword_280E8B5A8, MEMORY[0x277CC9FC8], v21);
  sub_219BF7BD4();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_219C0B8C0;
  sub_219BF7BA4();
  sub_219BF7BB4();
  sub_219BF7BC4();
  sub_21942538C(v23);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_219BF7BE4();
  sub_219BF7B64();
  v24 = v42;
  sub_219BF7B84();
  sub_219BDAF94();

  (*(v44 + 8))(v24, v45);
  (*(v40 + 8))(v5, v43);
  (*(v37 + 8))(v8, v38);
  v25 = MEMORY[0x277D837D0];
  *(v22 + 56) = MEMORY[0x277D837D0];
  v26 = sub_2186FC3BC();
  *(v22 + 64) = v26;
  sub_219423C28(&unk_280E8B510, MEMORY[0x277CC9FF0]);
  v27 = v41;
  sub_219BF7C14();
  (*(v39 + 8))(v10, v27);
  sub_219423C28(&qword_280EE9C60, MEMORY[0x277CC9578]);
  v28 = v36;
  v29 = sub_219BF7894();
  *(v22 + 96) = v25;
  *(v22 + 104) = v26;
  *(v22 + 72) = v29;
  *(v22 + 80) = v30;
  sub_219BF6214();
  sub_219BE5314();

  MEMORY[0x28223BE20](v31);
  v35[-2] = v17;
  v32 = v46;
  result = sub_219424524(sub_219425DC8, &v35[-4]);
  v34 = *(*v32 + 16);
  if (v34 < result)
  {
    __break(1u);
  }

  else
  {
    sub_218952730(result, v34);
    return (v35[0])(v17, v28);
  }

  return result;
}

uint64_t sub_219425DE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TodayLocalNewsArticle.Resolved(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_219425E4C()
{
  if (!qword_280E8D5E0)
  {
    sub_219BF7BD4();
    sub_219423C28(&qword_280E8B528, MEMORY[0x277CC9FC8]);
    v0 = sub_219BF72F4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8D5E0);
    }
  }
}

void sub_219425F54()
{
  if (!qword_280E920A0)
  {
    type metadata accessor for SportsKeyPlayersTagFeedGroupConfigData();
    sub_2194295C4(&unk_280E97D00, type metadata accessor for SportsKeyPlayersTagFeedGroupConfigData);
    sub_2194295C4(&qword_280E97D10, type metadata accessor for SportsKeyPlayersTagFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E920A0);
    }
  }
}

uint64_t type metadata accessor for SportsKeyPlayersTagFeedGroupEmitter()
{
  result = qword_280E9C4F0;
  if (!qword_280E9C4F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219426080()
{
  sub_219425F54();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SportsKeyPlayersTagFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      sub_2186CFDE4(319, &qword_280E90510);
      if (v2 <= 0x3F)
      {
        sub_2186CFDE4(319, &qword_280E8FD40);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_21942615C()
{
  sub_219429480(0, &qword_280EE6910, sub_21880702C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_2194261DC(uint64_t a1)
{
  v3 = type metadata accessor for SportsKeyPlayersTagFeedGroupEmitter();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v1;
  v20 = a1;
  v18[0] = v1;
  sub_219429480(0, &unk_27CC1A2B0, MEMORY[0x277D34518], MEMORY[0x277D83940]);
  sub_219BE3204();
  sub_21942960C(v1, v6, type metadata accessor for SportsKeyPlayersTagFeedGroupEmitter);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18[1] = v7 + v5;
  v8 = (v7 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  sub_219427268(v6, v9 + v7);
  *(v9 + v8) = a1;

  v10 = sub_219BE2E54();
  sub_219BF1904();
  sub_219BE2F64();

  v11 = v18[0];
  sub_21942960C(v18[0], v6, type metadata accessor for SportsKeyPlayersTagFeedGroupEmitter);
  v12 = swift_allocObject();
  sub_219427268(v6, v12 + v7);
  *(v12 + v8) = a1;

  v13 = sub_219BE2E54();
  sub_218A59C84();
  sub_219BE2F64();

  sub_21942960C(v11, v6, type metadata accessor for SportsKeyPlayersTagFeedGroupEmitter);
  v14 = swift_allocObject();
  sub_219427268(v6, v14 + v7);
  v15 = sub_219BE2E54();
  v16 = sub_219BE3064();

  return v16;
}

uint64_t sub_2194264C0@<X0>(uint64_t *a1@<X8>)
{
  sub_219425F54();
  v4 = v3;
  v5 = swift_allocBox();
  result = (*(*(v4 - 8) + 16))(v6, v1, v4);
  *a1 = v5 | 0x5000000000000004;
  return result;
}

uint64_t sub_219426540@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for SportsKeyPlayersTagFeedGroupKnobs();
  a2[4] = sub_2194295C4(&qword_280EA1D60, type metadata accessor for SportsKeyPlayersTagFeedGroupKnobs);
  a2[5] = sub_2194295C4(&qword_27CC1A2C8, type metadata accessor for SportsKeyPlayersTagFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_21942960C(v2 + v4, boxed_opaque_existential_1, type metadata accessor for SportsKeyPlayersTagFeedGroupKnobs);
}

unint64_t sub_219426608(uint64_t a1)
{
  v3 = sub_219BF0BD4();
  v27 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(type metadata accessor for SportsKeyPlayersTagFeedGroupEmitter() + 20);
  LOBYTE(v35) = 23;
  sub_2189AD5C8();
  v29 = v7;
  v30 = a1;
  v34 = sub_219BEE964();
  sub_219429480(0, &qword_280E8B8E0, sub_218A59E00, MEMORY[0x277D84560]);
  sub_218A59E00(0);
  v31 = v8;
  v9 = *(v8 - 8);
  v33 = *(v9 + 72);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  v32 = v11;
  *(v11 + 16) = xmmword_219C09EC0;
  v12 = (v11 + v10);
  type metadata accessor for SportsKeyPlayersTagFeedGroupKnobs();
  sub_219BEF134();
  v13 = sub_219BEEDF4();
  v14 = *(v4 + 8);
  v26[1] = v4 + 8;
  v28 = v14;
  v14(v6, v3);
  v35 = 0;
  v36 = 0xE000000000000000;
  sub_219BF7314();

  v35 = 0xD00000000000001BLL;
  v36 = 0x8000000219CE4670;
  sub_218A80DA8();
  v15 = sub_219BF5D54();
  MEMORY[0x21CECC330](v15);

  *(swift_allocObject() + 16) = v13;
  sub_218A7F1DC(0, &qword_280E91240, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D328E0]);
  swift_allocObject();
  *v12 = sub_219BEFB94();
  v16 = *MEMORY[0x277D32308];
  v17 = *(v9 + 104);
  v26[0] = v9 + 104;
  v18 = v12;
  v19 = v12;
  v20 = v31;
  v17(v18, v16, v31);
  sub_219BEF134();
  v21 = sub_219BEEDF4();
  v28(v6, v27);
  v35 = 0;
  v36 = 0xE000000000000000;
  sub_219BF7314();

  v35 = 0xD00000000000001ELL;
  v36 = 0x8000000219CE4690;
  v22 = sub_219BF5D54();
  MEMORY[0x21CECC330](v22);

  *(swift_allocObject() + 16) = v21;
  swift_allocObject();
  v23 = sub_219BEFB94();
  v24 = v33;
  *(v19 + v33) = v23;
  v17((v19 + v24), v16, v20);
  v35 = v34;
  sub_2191EDA0C(v32);
  return v35;
}

uint64_t sub_219426A94()
{
  sub_219425F54();

  return sub_219BEDCA4();
}

uint64_t sub_219426AC0@<X0>(uint64_t *a1@<X8>)
{
  sub_219429480(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_219425F54();

  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_218A80EBC(inited + 32, sub_2188317B0);
  sub_219429480(0, &qword_27CC1A2D0, type metadata accessor for SportsKeyPlayersTagFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a1[3] = v5;
  a1[4] = sub_219429674();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_219426C44()
{
  sub_2194295C4(&unk_27CC1A298, type metadata accessor for SportsKeyPlayersTagFeedGroupEmitter);

  return sub_219BE2324();
}

uint64_t sub_219426DF8()
{
  v1 = sub_219BF0BD4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SportsKeyPlayersTagFeedGroupEmitter();
  v21 = v0;
  type metadata accessor for SportsKeyPlayersTagFeedGroupKnobs();
  sub_219BEF134();
  sub_219BEF524();
  v5 = *(v2 + 8);
  v5(v4, v1);
  v6 = v22;
  sub_219BEF134();
  sub_219BEF524();
  v5(v4, v1);
  v7 = v22;
  sub_219BEF0B4();
  v8 = *(v22 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  sub_219BEF0B4();
  v9 = *(v22 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_sportsEventVisualizationResult);

  if (v9)
  {
    if (qword_280E8D7F8 != -1)
    {
      swift_once();
    }

    sub_2186F20D4();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_219C09EC0;
    v11 = MEMORY[0x277D83B88];
    v12 = MEMORY[0x277D83C10];
    *(v10 + 56) = MEMORY[0x277D83B88];
    *(v10 + 64) = v12;
    *(v10 + 32) = v6;
    *(v10 + 96) = v11;
    *(v10 + 104) = v12;
    *(v10 + 72) = v7;
    sub_219BF6214();
    sub_219BE5314();

    MEMORY[0x28223BE20](v13);
    *(&v21 - 2) = v21;
    sub_219BF3824();
    sub_219BE3204();
    v14 = swift_allocObject();
    v14[2] = v9;
    v14[3] = v8;
    v14[4] = v7;
    v14[5] = v6;
    v15 = v8;

    v16 = sub_219BE2E54();
    sub_219429480(0, &unk_27CC1A2B0, MEMORY[0x277D34518], MEMORY[0x277D83940]);
    sub_219BE2F74();

    v17 = sub_219BE2E54();
    v18 = sub_219BE2FD4();
  }

  else
  {
    v18 = sub_219BEEDD4();
    sub_2194295C4(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D32410], v18);
    swift_willThrow();
  }

  return v18;
}

uint64_t sub_219427268(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsKeyPlayersTagFeedGroupEmitter();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21942736C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v78 = a2;
  v5 = sub_219BF3E84();
  v6 = *(v5 - 8);
  v79 = v5;
  v80 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277D83D88];
  sub_219429480(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v59 - v11;
  sub_219429480(0, &qword_280E90150, MEMORY[0x277D33EC8], v9);
  MEMORY[0x28223BE20](v13 - 8);
  v68 = &v59 - v14;
  sub_219429480(0, &qword_280E91A70, sub_2189AD5C8, v9);
  MEMORY[0x28223BE20](v15 - 8);
  v67 = &v59 - v16;
  v17 = sub_219BF2AB4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219429480(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], v9);
  MEMORY[0x28223BE20](v21 - 8);
  v65 = &v59 - v22;
  v72 = sub_219BF2034();
  v70 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v69 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for SportsKeyPlayersTagFeedGroupConfigData();
  MEMORY[0x28223BE20](v63);
  v64 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_219BF1934();
  v26 = *(v25 - 8);
  v76 = v25;
  v77 = v26;
  MEMORY[0x28223BE20](v25);
  v75 = &v59 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = a1;
  sub_219BEF0B4();
  v28 = *(v82 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v29 = sub_219BF6394();

  v30 = [v29 asSportsEvent];
  swift_unknownObjectRelease();
  v31 = MEMORY[0x277D84F90];
  if (v30)
  {
    v32 = [v30 eventCompetitorTags];
    swift_unknownObjectRelease();
    if (v32)
    {
      sub_2186D85DC();
      v33 = sub_219BF5924();

      v31 = v33;
    }

    else
    {
      v31 = MEMORY[0x277D84F90];
    }
  }

  v73 = v18;
  v74 = v12;
  if (v31 >> 62)
  {
    goto LABEL_18;
  }

  v82 = v78;
  while (1)
  {
    v60 = v20;
    v61 = v17;
    v62 = v3;
    sub_219429480(0, &unk_27CC1A2B0, MEMORY[0x277D34518], MEMORY[0x277D83940]);
    sub_2194294E4();
    v34 = sub_219BF5E14();
    v3 = *(v34 + 16);
    if (!v3)
    {
      break;
    }

    v82 = MEMORY[0x277D84F90];
    sub_218C35610(0, v3, 0);
    v20 = 0;
    v35 = v82;
    v78 = *(v34 + 16);
    v17 = (v80 + 4);
    while (v78 != v20)
    {
      if (v20 >= *(v34 + 16))
      {
        goto LABEL_17;
      }

      v36 = *(v34 + 8 * v20 + 32);

      sub_219428FAC(v20, v36, v8);

      v82 = v35;
      v37 = v8;
      v39 = *(v35 + 16);
      v38 = *(v35 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_218C35610(v38 > 1, v39 + 1, 1);
        v35 = v82;
      }

      ++v20;
      *(v35 + 16) = v39 + 1;
      v80[4](v35 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + v80[9] * v39, v37, v79);
      v8 = v37;
      if (v3 == v20)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    v58 = sub_219BF7214();

    v82 = v78;
    if (v58 < 0)
    {
      __break(1u);
      goto LABEL_20;
    }
  }

LABEL_14:

  sub_219425F54();
  v40 = v64;
  v41 = v66;
  sub_219BEDD14();
  v42 = *(v63 + 20);
  sub_219BF1744();
  v43 = *(v77 + 8);
  v77 += 8;
  v80 = v43;
  (v43)(&v40[v42], v76);
  v44 = (v41 + *(type metadata accessor for SportsKeyPlayersTagFeedGroupEmitter() + 24));
  v45 = v44[3];
  v78 = v44[4];
  v79 = v45;
  v66 = __swift_project_boxed_opaque_existential_1(v44, v45);
  v46 = sub_219BEC004();
  (*(*(v46 - 8) + 56))(v65, 1, 1, v46);
  v47 = MEMORY[0x277D84F90];
  sub_219A95188(MEMORY[0x277D84F90]);
  sub_219A95188(v47);
  sub_219A951A0(v47);
  sub_219A951B8(v47);
  sub_219A952CC(v47);
  sub_219A952E4(v47);
  sub_219A953F8(v47);
  v20 = v69;
  sub_219BF2024();
  sub_2189AD5C8();
  (*(*(v48 - 8) + 56))(v67, 1, 1, v48);
  sub_219BEF0B4();
  v49 = *(v82 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v50 = sub_219BF35D4();
  (*(*(v50 - 8) + 56))(v68, 1, 1, v50);
  LOBYTE(v81) = 23;
  sub_218A7F1DC(0, &qword_280E90090, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  sub_219BEF0B4();
  sub_218CB8CBC();

  sub_219BEF0B4();
  v51 = *(v81 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  sub_219BF3914();
  swift_allocObject();
  sub_219BF3904();
  v52 = sub_219BF2774();
  (*(*(v52 - 8) + 56))(v74, 1, 1, v52);
  v53 = qword_280E8D7F8;
  *MEMORY[0x277D30BC0];
  if (v53 == -1)
  {
    goto LABEL_15;
  }

LABEL_20:
  swift_once();
LABEL_15:
  qword_280F61708;
  v54 = v60;
  sub_219BF2A84();
  v55 = v75;
  v56 = sub_219BF2194();
  (*(v73 + 8))(v54, v61);
  (*(v70 + 8))(v20, v72);
  (v80)(v55, v76);
  return v56;
}

uint64_t sub_219427EB8(uint64_t a1)
{
  sub_218A59C84();
  MEMORY[0x28223BE20](v2);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TagFeedGroup();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2194280E4(a1, v7);
  sub_21942960C(v7, v4, type metadata accessor for TagFeedGroup);
  swift_storeEnumTagMultiPayload();
  sub_219429480(0, &qword_280EE6C80, sub_218A59C84, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v8 = sub_219BE3014();
  sub_218A80EBC(v7, type metadata accessor for TagFeedGroup);
  return v8;
}

uint64_t sub_2194280E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  sub_219429480(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
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
  sub_219425F54();
  v15 = sub_219BEDCB4();
  v19[1] = v16;
  v19[2] = v15;
  sub_219BEDCC4();
  sub_219BEDCC4();
  type metadata accessor for SportsKeyPlayersTagFeedGroupEmitter();
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

uint64_t sub_219428488()
{
  type metadata accessor for SportsKeyPlayersTagFeedGroupEmitter();
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  type metadata accessor for TagFeedGroup();
  sub_21877D2B0();
  return sub_219BEF194();
}

uint64_t sub_2194285C8(uint64_t a1)
{
  v2 = sub_219BF4684();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SportsKeyPlayersTagFeedGroupEmitter();
  __swift_project_boxed_opaque_existential_1((a1 + *(v6 + 28)), *(a1 + *(v6 + 28) + 24));
  (*(v3 + 104))(v5, *MEMORY[0x277D344A8], v2);
  v7 = sub_219BF4C14();
  (*(v3 + 8))(v5, v2);
  return v7;
}

uint64_t sub_2194286FC@<X0>(uint64_t a1@<X0>, void *a2@<X2>, int64_t a3@<X3>, int64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v50 = a4;
  v51 = a3;
  v8 = sub_219BF43D4();
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  v9 = qword_280F61708;
  sub_2186F20D4();
  v11 = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C09EC0;
  v49 = a5;
  v52 = v11;
  if (v8 >> 62)
  {
    v45 = v12;
    v13 = sub_219BF7214();
    v12 = v45;
  }

  else
  {
    v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = MEMORY[0x277D83C10];
  *(v12 + 56) = MEMORY[0x277D83B88];
  *(v12 + 64) = v14;
  *(v12 + 32) = v13;
  v15 = v12;
  v16 = [objc_msgSend(a2 backingTag)];
  swift_unknownObjectRelease();
  v17 = sub_219BF5414();
  v19 = v18;

  v15[12] = MEMORY[0x277D837D0];
  v15[13] = sub_2186FC3BC();
  v15[9] = v17;
  v15[10] = v19;
  sub_219BF6214();
  v20 = v9;
  sub_219BE5314();

  MEMORY[0x28223BE20](v21);
  v48[2] = a1;
  v48[3] = a2;
  v22 = sub_218DE0310(sub_2194295A8, v48, v8);

  v23 = v22 >> 62;
  if (v22 >> 62)
  {
    v24 = sub_219BF7214();
    if (v24)
    {
LABEL_7:
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_219C09BA0;
      if (v23)
      {
        v26 = sub_219BF7214();
      }

      else
      {
        v26 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v27 = MEMORY[0x277D83C10];
      *(v25 + 56) = MEMORY[0x277D83B88];
      *(v25 + 64) = v27;
      *(v25 + 32) = v26;
      sub_219BF6214();
      sub_219BE5314();

      if (v51 < 0)
      {
        __break(1u);
      }

      else
      {
        if (v24 >= v51)
        {
          v28 = v51;
        }

        else
        {
          v28 = v24;
        }

        if (v24 < 0)
        {
          v28 = v51;
        }

        if (v51)
        {
          v24 = v28;
        }

        else
        {
          v24 = 0;
        }

        if (v23)
        {
          if ((v22 & 0x8000000000000000) != 0)
          {
            a1 = v22;
          }

          else
          {
            a1 = v22 & 0xFFFFFFFFFFFFFF8;
          }

          if (sub_219BF7214() < 0)
          {
            goto LABEL_54;
          }

          v29 = sub_219BF7214();
        }

        else
        {
          v29 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v29 >= v24)
        {
          if ((v22 & 0xC000000000000001) != 0 && v24)
          {
            sub_219BF48C4();

            v30 = 0;
            do
            {
              v31 = v30 + 1;
              sub_219BF7334();
              v30 = v31;
            }

            while (v24 != v31);
          }

          else
          {
          }

          if (v23)
          {
            a1 = sub_219BF7564();
            v25 = v32;
            v20 = v33;
            v24 = v34;
          }

          else
          {
            v20 = 0;
            a1 = v22 & 0xFFFFFFFFFFFFFF8;
            v25 = (v22 & 0xFFFFFFFFFFFFFF8) + 32;
            v24 = (2 * v24) | 1;
          }

          v35 = (v24 >> 1) - v20;
          v36 = v50;
          if (!__OFSUB__(v24 >> 1, v20))
          {
            if (v35 < v50)
            {
              v37 = sub_219BEEDD4();
              sub_2194295C4(&qword_280E917E0, MEMORY[0x277D32430]);
              swift_allocError();
              *v38 = v36;
              v38[1] = v35;
              (*(*(v37 - 8) + 104))(v38, *MEMORY[0x277D32400], v37);
              swift_willThrow();
              return swift_unknownObjectRelease();
            }

            if ((v24 & 1) == 0)
            {
              goto LABEL_40;
            }

            sub_219BF7934();
            swift_unknownObjectRetain_n();
            v43 = swift_dynamicCastClass();
            if (!v43)
            {
              swift_unknownObjectRelease();
              v43 = MEMORY[0x277D84F90];
            }

            v44 = *(v43 + 16);

            if (v44 == v35)
            {
              v41 = swift_dynamicCastClass();
              result = swift_unknownObjectRelease_n();
              v42 = v49;
              if (v41)
              {
LABEL_47:
                *v42 = v41;
                return result;
              }

              v41 = MEMORY[0x277D84F90];
LABEL_46:
              result = swift_unknownObjectRelease();
              goto LABEL_47;
            }

LABEL_55:
            swift_unknownObjectRelease_n();
LABEL_40:
            sub_218B673E4(a1, v25, v20, v24);
            v41 = v40;
            v42 = v49;
            goto LABEL_46;
          }

          goto LABEL_53;
        }
      }

      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }
  }

  else
  {
    v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
      goto LABEL_7;
    }
  }

  v46 = sub_219BEEDD4();
  sub_2194295C4(&qword_280E917E0, MEMORY[0x277D32430]);
  swift_allocError();
  (*(*(v46 - 8) + 104))(v47, *MEMORY[0x277D32428], v46);
  return swift_willThrow();
}

uint64_t sub_219428CE0@<X0>(uint64_t *a1@<X0>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = sub_219BF4F64();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = sub_219BF48B4();
  v12 = [a2 alternativeFeedDescriptor];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 feedConfiguration];
  }

  else
  {
    v14 = [a2 feedConfiguration];
  }

  swift_getObjectType();
  (*(v7 + 104))(v9, *MEMORY[0x277D346B8], v6);
  v15 = sub_218CCFF3C(v11, v10, 23, v14, v9);
  swift_unknownObjectRelease();
  result = (*(v7 + 8))(v9, v6);
  *a3 = v15;
  return result;
}

uint64_t sub_219428E80()
{
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2186F20D4();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_219C09BA0;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_2186FC3BC();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  sub_219BE5314();
}

size_t sub_219428FAC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = sub_219BF3484();
  v41 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = (v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_219BF3C84();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v40 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v39 - v11;
  v47 = 0x6579616C5079656BLL;
  v48 = 0xEB000000002D7372;
  v46 = a1;
  v13 = sub_219BF7894();
  MEMORY[0x21CECC330](v13);

  v14 = v47;
  v15 = v48;
  if (a2 >> 62)
  {
    v16 = sub_219BF7214();
  }

  else
  {
    v16 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v16)
  {
LABEL_15:
    v38 = MEMORY[0x277D84F90];
    sub_218F0B984(MEMORY[0x277D84F90]);
    sub_218F0BA7C(v38);
    sub_218F0BB90(v38);
    return sub_219BF3E74();
  }

  v47 = MEMORY[0x277D84F90];
  result = sub_218C34A88(0, v16 & ~(v16 >> 63), 0);
  if ((v16 & 0x8000000000000000) == 0)
  {
    v39[0] = v15;
    v39[1] = v14;
    v39[2] = a3;
    v18 = v47;
    if ((a2 & 0xC000000000000001) != 0)
    {
      v43 = a2;
      v19 = 0;
      v42 = *MEMORY[0x277D33E10];
      v20 = (v41 + 104);
      LODWORD(v41) = *MEMORY[0x277D34130];
      v40 = (v8 + 32);
      do
      {
        v21 = MEMORY[0x21CECE0F0](v19, v43);
        v22 = swift_allocObject();
        *(v22 + 16) = v21;
        v24 = v44;
        v23 = v45;
        *v44 = v22;
        (*v20)(v24, v42, v23);
        sub_219BF1AC4();
        (*(v8 + 104))(v12, v41, v7);
        v47 = v18;
        v26 = *(v18 + 16);
        v25 = *(v18 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_218C34A88(v25 > 1, v26 + 1, 1);
          v18 = v47;
        }

        ++v19;
        *(v18 + 16) = v26 + 1;
        (*(v8 + 32))(v18 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v26, v12, v7);
      }

      while (v16 != v19);
    }

    else
    {
      v27 = (a2 + 32);
      LODWORD(v43) = *MEMORY[0x277D33E10];
      v28 = v40;
      v29 = (v41 + 104);
      v42 = *MEMORY[0x277D34130];
      v41 = v8 + 32;
      v30 = v7;
      do
      {
        v31 = *v27;
        v32 = swift_allocObject();
        *(v32 + 16) = v31;
        v34 = v44;
        v33 = v45;
        *v44 = v32;
        (*v29)(v34, v43, v33);

        sub_219BF1AC4();
        (*(v8 + 104))(v28, v42, v30);
        v47 = v18;
        v35 = v28;
        v37 = *(v18 + 16);
        v36 = *(v18 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_218C34A88(v36 > 1, v37 + 1, 1);
          v18 = v47;
        }

        *(v18 + 16) = v37 + 1;
        (*(v8 + 32))(v18 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v37, v35, v30);
        ++v27;
        --v16;
        v28 = v35;
      }

      while (v16);
    }

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

void sub_219429480(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2194294E4()
{
  result = qword_27CC1A2C0;
  if (!qword_27CC1A2C0)
  {
    sub_219429480(255, &unk_27CC1A2B0, MEMORY[0x277D34518], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A2C0);
  }

  return result;
}

uint64_t sub_2194295C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21942960C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_219429674()
{
  result = qword_27CC1A2D8;
  if (!qword_27CC1A2D8)
  {
    sub_219429480(255, &qword_27CC1A2D0, type metadata accessor for SportsKeyPlayersTagFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A2D8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7NewsUI228FeedAvailabilityServiceErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_219429714(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 16))
  {
    return (*a1 + 2147483642);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21942976C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 5;
    }
  }

  return result;
}

uint64_t type metadata accessor for EngagementTodayFeedGroupKnobs()
{
  result = qword_280EB0D80;
  if (!qword_280EB0D80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219429840()
{
  sub_2189AE994(319);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_2194298AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2189AF720(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AE994(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219429FD8(a1, v6);
  v12 = *(v9 + 48);
  if (v12(v6, 1, v8) == 1)
  {
    type metadata accessor for TodayFeedServiceConfig();
    sub_2186DFD40(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
    sub_219BEE974();
    sub_21942A03C(a1);
    if (v12(v6, 1, v8) != 1)
    {
      sub_21942A03C(v6);
    }
  }

  else
  {
    sub_21942A03C(a1);
    (*(v9 + 32))(v11, v6, v8);
  }

  return (*(v9 + 32))(a2, v11, v8);
}

uint64_t sub_219429AF0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  sub_2189AF720(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21942A098(0, &qword_280E8CBC0, MEMORY[0x277D844C8]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219429F84();
  sub_219BF7B34();
  if (!v2)
  {
    sub_2189AE994(0);
    sub_2186DFD40(&qword_280E91A28, sub_2189AE994);
    sub_219BF7674();
    sub_2194298AC(v6, v14);
    (*(v9 + 8))(v11, v8);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_219429CE0(uint64_t a1)
{
  v2 = sub_219429F84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219429D1C(uint64_t a1)
{
  v2 = sub_219429F84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219429D70(void *a1)
{
  sub_21942A098(0, &qword_280E8C408, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219429F84();
  sub_219BF7B44();
  sub_2189AE994(0);
  sub_2186DFD40(&qword_280E91A30, sub_2189AE994);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_219429EF8()
{
  type metadata accessor for TodayFeedServiceConfig();
  sub_2186DFD40(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);

  return sub_219BEE9F4();
}

unint64_t sub_219429F84()
{
  result = qword_280EB0DD8;
  if (!qword_280EB0DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB0DD8);
  }

  return result;
}

uint64_t sub_219429FD8(uint64_t a1, uint64_t a2)
{
  sub_2189AF720(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21942A03C(uint64_t a1)
{
  sub_2189AF720(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21942A098(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219429F84();
    v7 = a3(a1, &type metadata for EngagementTodayFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_21942A110()
{
  result = qword_27CC1A2E0;
  if (!qword_27CC1A2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A2E0);
  }

  return result;
}