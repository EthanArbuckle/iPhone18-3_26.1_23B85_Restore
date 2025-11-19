uint64_t sub_2188C970C()
{

  return swift_deallocObject();
}

uint64_t sub_2188C9744()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188C977C()
{

  return swift_deallocObject();
}

uint64_t sub_2188C97C8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188C9800()
{

  return swift_deallocObject();
}

uint64_t sub_2188C9840()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188C9878()
{

  return swift_deallocObject();
}

uint64_t sub_2188C98B0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188C98E8()
{

  return swift_deallocObject();
}

uint64_t sub_2188C9920()
{

  return swift_deallocObject();
}

uint64_t sub_2188C9958()
{

  return swift_deallocObject();
}

uint64_t sub_2188C9998()
{

  return swift_deallocObject();
}

uint64_t sub_2188C99E8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for RecipeBoxFeedContentConfig();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_219BEEA84();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_2188C9B0C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for RecipeBoxFeedContentConfig();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_219BEEA84();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_2188C9C30()
{
  if (*(v0 + 24) >= 3uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2188C9C78()
{

  if (*(v0 + 32) >= 3uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2188C9CC0()
{

  return swift_deallocObject();
}

uint64_t sub_2188C9CF8()
{

  if (*(v0 + 40) != 1)
  {

    if (*(v0 + 104) != 1)
    {
    }
  }

  return swift_deallocObject();
}

uint64_t sub_2188C9D8C()
{

  return swift_deallocObject();
}

uint64_t sub_2188C9E04()
{

  return swift_deallocObject();
}

uint64_t sub_2188C9E84()
{

  return swift_deallocObject();
}

uint64_t sub_2188C9F10()
{
  sub_21896FBB0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  v1 = *(v0 + 96);
  if (v1 != 255)
  {
    sub_21896FC30(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_2188C9F68()
{
  sub_21896FD44(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_2188C9FC4()
{
  sub_21896FD44(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_2188CA038()
{
  v1 = sub_219BE8F74();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_2188CA0C0()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188CA188()
{

  return swift_deallocObject();
}

uint64_t sub_2188CA1C0()
{

  return swift_deallocObject();
}

uint64_t sub_2188CA1F8()
{

  return swift_deallocObject();
}

uint64_t sub_2188CA254()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188CA28C()
{
  sub_218AB7640();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(*(type metadata accessor for AudioFeedGapLocation(0) - 8) + 80);
  v7 = (v4 + v5 + v6) & ~v6;
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  (*(v3 + 8))(v0 + v4, v2);
  sub_2186FB308();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);

  return swift_deallocObject();
}

uint64_t sub_2188CA3EC()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188CA424()
{

  return swift_deallocObject();
}

uint64_t sub_2188CA6D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_2186E57E0(0, &unk_280EE9D00, MEMORY[0x277CC9260]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_2186E57E0(0, &qword_280EE68E0, MEMORY[0x277D6CF38]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 40);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_2188CA834(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_2186E57E0(0, &unk_280EE9D00, MEMORY[0x277CC9260]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_2186E57E0(0, &qword_280EE68E0, MEMORY[0x277D6CF38]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 40);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_2188CA990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2189AD5C8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    sub_2186EDD58(0, &qword_280E912E0, MEMORY[0x277D32720]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 40);

    return v13(v14, a2, v12);
  }
}

void sub_2188CAAD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2189AD5C8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  else
  {
    sub_2186EDD58(0, &qword_280E912E0, MEMORY[0x277D32720]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 40);

    v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2188CAC10(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2188CAC7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2188CACF4()
{

  return swift_deallocObject();
}

uint64_t sub_2188CAD2C()
{
  sub_21916B604(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_21916B970(0, qword_280EE0178, type metadata accessor for NewsActivity2.Article, MEMORY[0x277D83D88]);
  v7 = (((v5 + 79) & 0xFFFFFFFFFFFFFFF8) + *(*(v6 - 8) + 80) + 16) & ~*(*(v6 - 8) + 80);
  (*(v3 + 8))(v0 + v4, v2);
  sub_21896FD44(*(v0 + v5), *(v0 + v5 + 8), *(v0 + v5 + 16), *(v0 + v5 + 24), *(v0 + v5 + 32), *(v0 + v5 + 40));

  v8 = type metadata accessor for NewsActivity2.Article(0);
  if (!(*(*(v8 - 8) + 48))(v0 + v7, 1, v8))
  {
    sub_219BDD944();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

    if (EnumCaseMultiPayload != 1)
    {
      sub_2187B3004();
      v11 = *(v10 + 48);
      v12 = sub_219BDE294();
      (*(*(v12 - 8) + 8))(v0 + v7 + v11, v12);
    }

    sub_218AB0628(0, &qword_280EE8E00, MEMORY[0x277D2FB40], sub_2187B2E10);
  }

  return swift_deallocObject();
}

uint64_t sub_2188CB00C()
{
  v1 = v0;
  sub_21916B604(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
  v3 = *(v2 - 8);
  v22 = v2;
  v23 = *(v3 + 80);
  v4 = *(v3 + 64);
  v21 = sub_219BE3F04();
  v5 = *(v21 - 8);
  v19 = (((v23 + 16) & ~v23) + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v6 = *(v5 + 64);
  v20 = sub_219BDDD44();
  v7 = *(v20 - 8);
  v8 = (v19 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  sub_21916B970(0, qword_280EE0178, type metadata accessor for NewsActivity2.Article, MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 80);
  (*(v3 + 8))(v1 + ((v23 + 16) & ~v23), v22);
  (*(v5 + 8))(v1 + v19, v21);
  (*(v7 + 8))(v1 + v8, v20);
  v12 = v1 + ((v8 + v9 + v11) & ~v11);
  v13 = type metadata accessor for NewsActivity2.Article(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    sub_219BDD944();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

    if (EnumCaseMultiPayload != 1)
    {
      sub_2187B3004();
      v16 = *(v15 + 48);
      v17 = sub_219BDE294();
      (*(*(v17 - 8) + 8))(v12 + v16, v17);
    }

    sub_218AB0628(0, &qword_280EE8E00, MEMORY[0x277D2FB40], sub_2187B2E10);
  }

  return swift_deallocObject();
}

uint64_t sub_2188CB3C8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188CB400()
{
  sub_21916B604(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 79) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v4, v2);
  sub_21896FD44(*(v0 + v5), *(v0 + v5 + 8), *(v0 + v5 + 16), *(v0 + v5 + 24), *(v0 + v5 + 32), *(v0 + v5 + 40));
  sub_21896FDCC(*(v0 + v6), *(v0 + v6 + 8), *(v0 + v6 + 16), *(v0 + v6 + 24), *(v0 + v6 + 32), *(v0 + v6 + 40));

  return swift_deallocObject();
}

uint64_t sub_2188CB584()
{
  sub_21916B604(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_2188CB68C()
{

  return swift_deallocObject();
}

uint64_t sub_2188CB6CC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188CB704()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188CB744()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188CB77C()
{

  return swift_deallocObject();
}

uint64_t sub_2188CB7D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_219BED8D4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2188CB884(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_219BED8D4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2188CB928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2186E13DC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for SavedStoriesTodayFeedGroupKnobs();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_2188CBA38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2186E13DC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for SavedStoriesTodayFeedGroupKnobs();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 24) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_2188CBB44()
{

  return swift_deallocObject();
}

uint64_t sub_2188CBB7C()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188CBBB4()
{

  return swift_deallocObject();
}

uint64_t sub_2188CBC18()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188CBC50()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188CBC98()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188CBCD0()
{
  v1 = sub_219BE8F74();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_2188CBD70()
{
  v1 = (type metadata accessor for EngagementAction() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = sub_219BE3514();
  (*(*(v3 - 8) + 8))(v2, v3);

  v4 = v1[8];
  v5 = sub_219BDB954();
  (*(*(v5 - 8) + 8))(v2 + v4, v5);
  v6 = v1[9];
  v7 = sub_219BE3794();
  (*(*(v7 - 8) + 8))(v2 + v6, v7);

  v8 = v1[11];
  v9 = sub_219BE3C04();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v2 + v8, 1, v9))
  {
    (*(v10 + 8))(v2 + v8, v9);
  }

  return swift_deallocObject();
}

uint64_t sub_2188CBF60()
{
  sub_2191992CC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2188CC00C()
{
  v13 = sub_219BE3514();
  v1 = *(v13 - 8);
  v11 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v10 = (*(v1 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = sub_219BE35B4();
  v2 = *(v12 - 8);
  v3 = (v10 + *(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_2191992CC();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = (v4 + *(v7 + 80) + 8) & ~*(v7 + 80);

  (*(v1 + 8))(v0 + v11, v13);

  (*(v2 + 8))(v0 + v3, v12);

  (*(v7 + 8))(v0 + v8, v6);

  return swift_deallocObject();
}

void sub_2188CC224()
{
  if (MEMORY[0x277D85020])
  {
    sub_2191A1DF4(0, &qword_27CC16ED0, sub_2191A1DC0, MEMORY[0x277D85458]);
  }
}

uint64_t sub_2188CC290()
{
  swift_unknownObjectRelease();

  if (*(v0 + 72))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2188CC2F8()
{
  v1 = (type metadata accessor for RecipeBoxExpandRequest() - 8);
  v2 = (*(*v1 + 80) + 56) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(type metadata accessor for RecipeBoxGapLocation(0) - 8);
  v5 = (v3 + *(v4 + 80) + 40) & ~*(v4 + 80);
  swift_unknownObjectRelease();

  v6 = v0 + v2;

  v7 = v1[7];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21879991C();
    (*(*(v8 - 8) + 8))(v6 + v7, v8);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21879991C();
    (*(*(v9 - 8) + 8))(v0 + v5, v9);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2188CC4F0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2188CC538()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188CC570()
{

  return swift_deallocObject();
}

uint64_t sub_2188CC5A8()
{
  v1 = *(type metadata accessor for RecipeFilterConfigFetchResult() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  swift_unknownObjectRelease();

  sub_218FD9434();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_2188CC684()
{
  v1 = (type metadata accessor for RecipeBoxRefreshRequest() - 8);
  v2 = (*(*v1 + 80) + 64) & ~*(*v1 + 80);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v3 = v1[9];
  v4 = sub_219BF0BD4();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_2188CC7A0()
{
  v1 = (type metadata accessor for EngagementDismissal() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = sub_219BE3514();
  (*(*(v3 - 8) + 8))(v2, v3);

  v4 = v1[8];
  v5 = sub_219BE3794();
  (*(*(v5 - 8) + 8))(v2 + v4, v5);

  v6 = v1[10];
  v7 = sub_219BE3C04();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v2 + v6, 1, v7))
  {
    (*(v8 + 8))(v2 + v6, v7);
  }

  return swift_deallocObject();
}

uint64_t sub_2188CC954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for RecipeBoxGapLocation(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2188CCA00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for RecipeBoxGapLocation(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2188CCAAC()
{

  return swift_deallocObject();
}

uint64_t sub_2188CCAE4()
{
  sub_21896FA3C();
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

  return swift_deallocObject();
}

uint64_t sub_2188CCC24()
{
  sub_21896FA3C();
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

uint64_t sub_2188CCD90()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188CCDC8()
{
  sub_21897EC04();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_2188CCE8C()
{

  return swift_deallocObject();
}

uint64_t sub_2188CCEC4()
{

  return swift_deallocObject();
}

uint64_t sub_2188CCF00()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2188CCF40()
{

  return swift_deallocObject();
}

uint64_t sub_2188CCF78()
{

  return swift_deallocObject();
}

uint64_t sub_2188CCFB0()
{

  return swift_deallocObject();
}

uint64_t sub_2188CCFE8()
{
  v16 = sub_219BE1524();
  v1 = *(v16 - 8);
  v13 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v2 = *(v1 + 64);
  v15 = sub_219BDF104();
  v3 = *(v15 - 8);
  v10 = (v13 + v2 + *(v3 + 80)) & ~*(v3 + 80);
  v4 = *(v3 + 64);
  v14 = sub_219BDF184();
  v5 = *(v14 - 8);
  v11 = (v10 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v6 = (*(v5 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = sub_219BDFFE4();
  v7 = *(v12 - 8);
  v8 = (v6 + *(v7 + 80) + 8) & ~*(v7 + 80);
  (*(v1 + 8))(v0 + v13, v16);
  (*(v3 + 8))(v0 + v10, v15);
  (*(v5 + 8))(v0 + v11, v14);

  (*(v7 + 8))(v0 + v8, v12);

  return swift_deallocObject();
}

uint64_t sub_2188CD264()
{

  return swift_deallocObject();
}

uint64_t sub_2188CD29C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SportsHighlights.SubsectionDescriptor(0);
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

uint64_t sub_2188CD358(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SportsHighlights.SubsectionDescriptor(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2188CD410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_218809BE4(0, &unk_280EE56F0, MEMORY[0x277D6D878]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2188CD4DC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    sub_218809BE4(0, &unk_280EE56F0, MEMORY[0x277D6D878]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 32);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2188CD59C(uint64_t a1, uint64_t a2)
{
  sub_21872F4C4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2188CD608(uint64_t a1, uint64_t a2)
{
  sub_21872F4C4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2188CD678()
{

  return swift_deallocObject();
}

uint64_t sub_2188CD6B0()
{
  v1 = sub_219BE84F4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2188CD78C()
{
  v1 = sub_219BDB954();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2188CD880()
{

  return swift_deallocObject();
}

uint64_t sub_2188CD8C8()
{

  return swift_deallocObject();
}

uint64_t sub_2188CD908()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_2188CD940()
{

  return swift_deallocObject();
}

uint64_t sub_2188CD988()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188CD9DC()
{

  return swift_deallocObject();
}

uint64_t sub_2188CDA18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2186DD998(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
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

void sub_2188CDB04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2186DD998(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
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

uint64_t sub_2188CDBEC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_2186DD998(0, &unk_27CC21480, type metadata accessor for PuzzleMonthArchive, MEMORY[0x277D83D88]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_2188CDCCC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_2186DD998(0, &unk_27CC21480, type metadata accessor for PuzzleMonthArchive, MEMORY[0x277D83D88]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2188CDDA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_2186DD998(0, &unk_27CC21480, type metadata accessor for PuzzleMonthArchive, MEMORY[0x277D83D88]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2188CDE80(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    sub_2186DD998(0, &unk_27CC21480, type metadata accessor for PuzzleMonthArchive, MEMORY[0x277D83D88]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 32);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2188CDFF0()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188CE038()
{

  return swift_deallocObject();
}

uint64_t sub_2188CE084()
{
  v1 = *(v0 + 56);
  if (v1 == 2)
  {
  }

  else if (v1 == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  else if (!*(v0 + 56))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2188CE0F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2191E9624();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for SportsMastheadTagFeedGroupKnobs();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_2188CE204(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2191E9624();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for SportsMastheadTagFeedGroupKnobs();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 24) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_2188CE314()
{
  v1 = (type metadata accessor for SportsMastheadTagFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_2191E9624();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v1[7];
  sub_2189AD5C8();
  (*(*(v5 - 8) + 8))(v2 + v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2188CE45C()
{

  return swift_deallocObject();
}

uint64_t sub_2188CE4B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_219BDBD34();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2188CE570(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_219BDBD34();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2188CE62C()
{
  sub_2192008C8(0, &qword_27CC17688, MEMORY[0x277D6DA48]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_2188CE720()
{

  return swift_deallocObject();
}

uint64_t sub_2188CE760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_219201950();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for SportsBracketTagFeedGroupKnobs();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_2188CE884(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_219201950();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for SportsBracketTagFeedGroupKnobs();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_2188CE9AC()
{
  v1 = (type metadata accessor for SportsBracketTagFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  sub_219201950();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v2 + v1[8];
  sub_2189AD5C8();
  (*(*(v6 - 8) + 8))(v5, v6);
  type metadata accessor for SportsBracketTagFeedGroupKnobs();

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[9]);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[11]);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[13]);

  return swift_deallocObject();
}

uint64_t sub_2188CEB3C()
{

  return swift_deallocObject();
}

uint64_t sub_2188CEB74()
{

  return swift_deallocObject();
}

uint64_t sub_2188CEBAC()
{

  return swift_deallocObject();
}

uint64_t sub_2188CEBE4()
{

  return swift_deallocObject();
}

uint64_t sub_2188CEC2C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_219BF1934();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 254)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = sub_219BEF554();
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[7];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_2188CED60(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_219BF1934();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 254)
  {
    *(a1 + a4[6]) = a2 + 1;
  }

  else
  {
    v13 = sub_219BEF554();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[7];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_2188CEE90()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2188CEED0()
{

  return swift_deallocObject();
}

uint64_t sub_2188CEF08()
{

  return swift_deallocObject();
}

uint64_t sub_2188CEF48()
{
  sub_2186FF3C0(0, &qword_27CC0E4F0, type metadata accessor for SearchFeedServiceConfig, sub_2186FF508, MEMORY[0x277D31C68]);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_2188CF018()
{

  return swift_deallocObject();
}

uint64_t sub_2188CF050()
{

  return swift_deallocObject();
}

uint64_t sub_2188CF088()
{

  return swift_deallocObject();
}

uint64_t sub_2188CF108()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188CF178()
{
  v1 = *(type metadata accessor for ChannelPickerElementModel() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = (v0 + v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_19;
      }

      if (*(v3 + 11) != 1)
      {
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + v2);
    }

    goto LABEL_18;
  }

  if (EnumCaseMultiPayload == 2)
  {

    if (*(v3 + 7))
    {
      __swift_destroy_boxed_opaque_existential_1((v3 + 32));
    }

    if (*(v3 + 12))
    {
      __swift_destroy_boxed_opaque_existential_1((v3 + 72));
    }

    if (*(v3 + 17))
    {
      __swift_destroy_boxed_opaque_existential_1((v3 + 112));
    }

LABEL_18:

    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 3)
  {

    v5 = *(type metadata accessor for ChannelPickerEngagementModel() + 20);
    v6 = sub_219BE35B4();
    (*(*(v6 - 8) + 8))(&v3[v5], v6);
  }

LABEL_19:

  return swift_deallocObject();
}

uint64_t sub_2188CF378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    type metadata accessor for AudioFeedGapLocation(0);
    v8 = *(a3 + 20);
    sub_2186FB308();
    v10 = *(*(v9 - 8) + 48);

    return v10(a1 + v8, a2, v9);
  }
}

uint64_t sub_2188CF42C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for AudioFeedGapLocation(0);
    v7 = *(a4 + 20);
    sub_2186FB308();
    v9 = *(*(v8 - 8) + 56);

    return v9(v5 + v7, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2188CF4D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioFeedFailedData(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2188CF544(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioFeedFailedData(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2188CF5B4()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2188CF5F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MagazineFeedExpandResult(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2188CF6B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MagazineFeedExpandResult(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2188CF770()
{

  return swift_deallocObject();
}

uint64_t sub_2188CF7AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2187A09A8(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

void sub_2188CF878(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2187A09A8(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }
}

uint64_t sub_2188CF934(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_219BF11C4();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 28)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_2188CF9E0(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_219BF11C4();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 28)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2188CFA80()
{

  return swift_deallocObject();
}

uint64_t sub_2188CFAB8()
{

  return swift_deallocObject();
}

uint64_t sub_2188CFAF8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_2186DCF58();
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_2188CFBA4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_2186DCF58();
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2188CFC48()
{

  return swift_deallocObject();
}

uint64_t sub_2188CFC84(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_219BE3514();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_219BE3794();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    sub_21922CB44();
    v16 = v15;
    v17 = *(*(v15 - 8) + 48);
    v18 = a1 + a3[8];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_2188CFDFC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_219BE3514();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = sub_219BE3794();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  sub_21922CB44();
  v16 = v15;
  v17 = *(*(v15 - 8) + 56);
  v18 = a1 + a4[8];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_2188CFF74()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188CFFAC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_2188CFFEC()
{
  sub_21896FBB0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  v1 = *(v0 + 96);
  if (v1 != 255)
  {
    sub_21896FC30(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_2188D004C()
{

  return swift_deallocObject();
}

uint64_t sub_2188D0084()
{

  return swift_deallocObject();
}

uint64_t sub_2188D00C0()
{
  sub_218A264C8(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_2188D0118(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_219BEE6F4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_2188D01C4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_219BEE6F4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2188D0268()
{
  v1 = *(type metadata accessor for MagazineFeedServiceContext() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = sub_219BEE754();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_2188D0334(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagazineFeedFailedData();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2188D03A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagazineFeedFailedData();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2188D0410()
{
  v1 = *(type metadata accessor for PuzzleGameCenterOpenLeaderboardCommandContext() - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v4 = sub_219BF4F84();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);

  return swift_deallocObject();
}

uint64_t sub_2188D0508()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2188D0548()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188D0580()
{
  sub_21923DAD0(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_2188D0674()
{
  if (*(v0 + 24) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2188D06B4()
{
  sub_21896FBB0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  v1 = *(v0 + 96);
  if (v1 != 255)
  {
    sub_21896FC30(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_2188D070C(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BDBD34();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2188D0778(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_219BDBD34();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_2188D07F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_219BE3514();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2188D08A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_219BE3514();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2188D0948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TagFeedCurationHeaderTitle(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_21881AD58(0, &unk_280EAE640, type metadata accessor for TagFeedCurationHeaderSubtitle);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_2188D0A54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for TagFeedCurationHeaderTitle(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_21881AD58(0, &unk_280EAE640, type metadata accessor for TagFeedCurationHeaderSubtitle);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_2188D0B6C()
{

  return swift_deallocObject();
}

uint64_t sub_2188D0BA4()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2188D0BFC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188D0C34()
{

  return swift_deallocObject();
}

uint64_t sub_2188D0C74()
{
  v1 = *(type metadata accessor for MagazineCatalogSectionHeaderViewLayoutAttributes() - 8);
  v14 = *(v1 + 80);
  v12 = *(v1 + 64);

  v13 = (v14 + 40) & ~v14;

  v2 = v0 + v13 + *(type metadata accessor for MagazineCatalogSectionHeaderModel() + 20);

  v3 = v2 + *(type metadata accessor for MagazineCatalogSectionDescriptor.Categories(0) + 20);

  v4 = type metadata accessor for MagazineCategoryConfig(0);
  v5 = v4[6];
  v6 = sub_219BDB954();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (!v8(v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  v9 = v4[7];
  if (!v8(v3 + v9, 1, v6))
  {
    (*(v7 + 8))(v3 + v9, v6);
  }

  v10 = v4[8];
  if (!v8(v3 + v10, 1, v6))
  {
    (*(v7 + 8))(v3 + v10, v6);
  }

  return swift_deallocObject();
}

uint64_t sub_2188D0EE0()
{

  return swift_deallocObject();
}

uint64_t sub_2188D0F20()
{

  sub_21895102C(*(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_2188D0F64()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188D0FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SportsManagementDetailPrewarmResult();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2188D1060(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SportsManagementDetailPrewarmResult();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2188D111C()
{
  v1 = (type metadata accessor for SportsSectionCurationRequest() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  swift_unknownObjectRelease();

  v3 = v1[12];
  v4 = sub_219BEFBD4();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_2188D1254()
{
  v1 = (type metadata accessor for TagFeedCurationRequest() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v1[13];
  v4 = sub_219BEFBD4();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);
  v5 = v1[14];
  v6 = sub_219BEF9C4();
  (*(*(v6 - 8) + 8))(v0 + v2 + v5, v6);

  return swift_deallocObject();
}

uint64_t sub_2188D13C0()
{
  v1 = (type metadata accessor for TagFeedCurationRequest() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[13];
  v4 = sub_219BEFBD4();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v1[14];
  v6 = sub_219BEF9C4();
  (*(*(v6 - 8) + 8))(v2 + v5, v6);

  return swift_deallocObject();
}

uint64_t sub_2188D1534()
{
  sub_21925312C(0, &qword_27CC17FA0, MEMORY[0x277D6DA48]);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2188D1614()
{

  return swift_deallocObject();
}

uint64_t sub_2188D1650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_219BE4584();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2188D16FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_219BE4584();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2188D17E8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_219BEF9C4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_219BF0354();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_2188D190C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_219BEF9C4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_219BF0354();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_2188D1A30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2186FF4C0(0);
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

void sub_2188D1AEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2186FF4C0(0);
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

uint64_t sub_2188D1BAC()
{

  return swift_deallocObject();
}

uint64_t sub_2188D1BEC()
{

  return swift_deallocObject();
}

uint64_t sub_2188D1C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 1);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_219BEF554();
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 28);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = sub_219BF1934();
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 36);

      return v16(v17, a2, v15);
    }
  }
}

uint64_t sub_2188D1D48(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 1) = a2 + 1;
  }

  else
  {
    v8 = sub_219BEF554();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_219BF1934();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_2188D1E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_21925E9AC(0, &unk_27CC21480, type metadata accessor for PuzzleMonthArchive, MEMORY[0x277D83D88]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2188D1F48(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_21925E9AC(0, &unk_27CC21480, type metadata accessor for PuzzleMonthArchive, MEMORY[0x277D83D88]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2188D201C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188D2054()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2188D20C4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188D20FC()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2188D214C()
{
  swift_unownedRelease();

  return swift_deallocObject();
}

uint64_t sub_2188D2184()
{

  return swift_deallocObject();
}

uint64_t sub_2188D21BC()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188D2200()
{

  return swift_deallocObject();
}

uint64_t sub_2188D2238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_219268F50();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for ChannelSectionDirectoryTagFeedGroupKnobs();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_2188D2348(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_219268F50();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for ChannelSectionDirectoryTagFeedGroupKnobs();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 24) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_2188D2458()
{

  return swift_deallocObject();
}

uint64_t sub_2188D2490()
{
  v1 = (type metadata accessor for ChannelSectionDirectoryTagFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_219268F50();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];
  sub_2189AD5C8();
  (*(*(v5 - 8) + 8))(v4, v5);
  type metadata accessor for ChannelSectionDirectoryTagFeedGroupKnobs();

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2188D2600()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2188D2640()
{

  return swift_deallocObject();
}

uint64_t sub_2188D2680()
{

  return swift_deallocObject();
}

uint64_t sub_2188D2720()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188D2770()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188D27A8()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188D27E0()
{

  return swift_deallocObject();
}

uint64_t sub_2188D2820()
{
  swift_unownedRelease();

  return swift_deallocObject();
}

uint64_t sub_2188D2860(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 210)
  {
    v4 = *a1;
    if (v4 >= 0x2E)
    {
      return v4 - 45;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_219BF1934();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_2188D2904(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 210)
  {
    *result = a2 + 45;
  }

  else
  {
    v7 = sub_219BF1934();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2188D29A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_219BF1934();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2188D2A5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_219BF1934();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_2188D2B14()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188D2B4C()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188D2B84()
{

  return swift_deallocObject();
}

uint64_t sub_2188D2BC4()
{
  v1 = (type metadata accessor for ChannelIssuesGroupTitleViewLayoutAttributes() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v4 = v1[8];
  v5 = sub_219BDCAF4();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_2188D2D10()
{

  return swift_deallocObject();
}

uint64_t sub_2188D2D50()
{
  v1 = sub_219BF34F4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2188D2E14()
{

  return swift_deallocObject();
}

uint64_t sub_2188D2E5C()
{

  return swift_deallocObject();
}

uint64_t sub_2188D2E94()
{

  return swift_deallocObject();
}

uint64_t sub_2188D2ED4()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188D2F0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2188D2F78(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2188D2FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TagFeedFailedData();
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

uint64_t sub_2188D30A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TagFeedFailedData();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2188D315C()
{
  sub_21896FA3C();
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

uint64_t sub_2188D32C8()
{
  v1 = sub_219BF3F24();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_2188D3364()
{

  return swift_deallocObject();
}

uint64_t sub_2188D33A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_219BEF554();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2188D344C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_219BEF554();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2188D34F4()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188D3558()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2188D3780()
{
  v13 = sub_219BE3514();
  v1 = *(v13 - 8);
  v11 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v2 = (*(v1 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = sub_219BE35B4();
  v3 = *(v12 - 8);
  v4 = (v2 + *(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  sub_218B58D38(0);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = (v4 + v5 + *(v8 + 80)) & ~*(v8 + 80);

  (*(v1 + 8))(v0 + v11, v13);

  (*(v3 + 8))(v0 + v4, v12);
  (*(v8 + 8))(v0 + v9, v7);

  return swift_deallocObject();
}

uint64_t sub_2188D397C()
{
  sub_218B58D38(0);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 41) & ~*(v3 + 80);

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_2188D3A74()
{
  sub_218B58D38(0);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_218B59134(0);
  v7 = (v5 + *(*(v6 - 8) + 80) + 8) & ~*(*(v6 - 8) + 80);
  (*(v3 + 8))(v0 + v4, v2);
  swift_unknownObjectRelease();
  v8 = sub_219BDF4A4();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v7, 1, v8))
  {
    (*(v9 + 8))(v0 + v7, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_2188D3C4C()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188D3C84()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2188D3CC4()
{
  sub_218B58D38(0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2188D3DA0()
{
  v18 = sub_219BDEF94();
  v1 = *(v18 - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_219BF0AC4();
  v5 = *(v4 - 8);
  v6 = (v3 + *(v5 + 80) + v2 + 1) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  sub_218B59134(0);
  v9 = *(*(v8 - 8) + 80);
  v10 = (v6 + v7 + v9) & ~v9;
  v17 = *(*(v8 - 8) + 64);
  sub_218B58D38(0);
  v19 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 80);
  (*(v1 + 8))(v0 + v2, v18);
  (*(v5 + 8))(v0 + v6, v4);
  v14 = sub_219BDF4A4();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v0 + v10, 1, v14))
  {
    (*(v15 + 8))(v0 + v10, v14);
  }

  (*(v12 + 8))(v0 + ((((v17 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + v13 + 8) & ~v13), v19);

  return swift_deallocObject();
}

uint64_t sub_2188D4084()
{
  v1 = sub_219BDB184();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2188D4150()
{
  v1 = sub_219BE16D4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  sub_2192CF5FC(0);
  v6 = *(*(v5 - 8) + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v14 = *(*(v5 - 8) + 64);
  v8 = sub_219BDB184();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  v11 = sub_219BEDFD4();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v7, 1, v11))
  {
    (*(v12 + 8))(v0 + v7, v11);
  }

  (*(v9 + 8))(v0 + ((v7 + v14 + v10) & ~v10), v8);

  return swift_deallocObject();
}

uint64_t sub_2188D437C()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188D43B4()
{
  v1 = sub_219BDB184();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  sub_21880B928();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = (v3 + v4 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for TodayFeedGroup() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v7 + 8))(v0 + v8, v6);
  v12 = (v0 + v11);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v21 = sub_219BED8D4();
      (*(*(v21 - 8) + 8))(v0 + v11, v21);
      v22 = type metadata accessor for CuratedTodayFeedGroup();

      v23 = *(v22 + 28);
LABEL_12:
      v24 = sub_219BEF8A4();
      goto LABEL_20;
    case 1u:
      v25 = sub_219BED8D4();
      (*(*(v25 - 8) + 8))(v0 + v11, v25);
      type metadata accessor for NewspaperTodayFeedGroup();
      swift_unknownObjectRelease();

      goto LABEL_14;
    case 2u:
      v16 = sub_219BED8D4();
      (*(*(v16 - 8) + 8))(v0 + v11, v16);
      v17 = type metadata accessor for LocalNewsTodayFeedGroup();
      swift_unknownObjectRelease();

      v18 = *(v17 + 28);
      v19 = sub_219BF0D34();
      v20 = *(v19 - 8);
      if (!(*(v20 + 48))(v12 + v18, 1, v19))
      {
        (*(v20 + 8))(v12 + v18, v19);
      }

LABEL_14:

      break;
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 8u:
    case 0xAu:
    case 0xBu:
    case 0xDu:
    case 0xEu:
    case 0xFu:
    case 0x12u:
    case 0x13u:
    case 0x14u:
    case 0x15u:
    case 0x16u:
    case 0x18u:
LABEL_2:
      v13 = sub_219BED8D4();
      goto LABEL_3;
    case 9u:
      type metadata accessor for MagazineFeedGroup();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:

          v26 = type metadata accessor for CategoriesMagazineFeedGroup();
          goto LABEL_35;
        case 1u:
          sub_2186E3594();
          (*(*(v43 - 8) + 8))(v0 + v11, v43);
          v28 = type metadata accessor for FeaturedArticleMagazineFeedGroup();
          goto LABEL_19;
        case 2u:
        case 0xAu:
        case 0xBu:
          goto LABEL_2;
        case 3u:
          sub_2186EC3A4();
          (*(*(v58 - 8) + 8))(v0 + v11, v58);
          v28 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup();
          goto LABEL_19;
        case 4u:

          v26 = type metadata accessor for InlineCategoriesMagazineFeedGroup();
LABEL_35:
          v23 = *(v26 + 40);
          v24 = sub_219BEF554();
          goto LABEL_20;
        case 5u:

          v44 = type metadata accessor for MyMagazinesMagazineFeedGroup();
          v45 = v44[10];
          v46 = sub_219BEF554();
          v47 = *(*(v46 - 8) + 8);
          v47(v12 + v45, v46);
          v47(v12 + v44[11], v46);
          v48 = v12 + v44[13];
          sub_2186E3B14();
          (*(*(v49 - 8) + 8))(v48, v49);
          v50 = type metadata accessor for MyMagazinesMagazineFeedGroupKnobs();

          v51 = *(v50 + 24);
          sub_2186F64EC(0);
          (*(*(v52 - 8) + 8))(&v48[v51], v52);
          swift_unknownObjectRelease();
          v53 = v44[16];
          v54 = sub_219BEF8A4();
          (*(*(v54 - 8) + 8))(v12 + v53, v54);
          v55 = v44[17];
          v56 = sub_219BEE5D4();
          v57 = *(v56 - 8);
          if (!(*(v57 + 48))(v12 + v55, 1, v56))
          {
            (*(v57 + 8))(v12 + v55, v56);
          }

          goto LABEL_14;
        case 6u:
          sub_2186ECD30();
          (*(*(v67 - 8) + 8))(v0 + v11, v67);
          v28 = type metadata accessor for NewIssueMagazineFeedGroup();
          goto LABEL_19;
        case 7u:

          v31 = type metadata accessor for PaywallMagazineFeedGroup();
          v32 = v31[5];
          v33 = sub_219BEF554();
          v34 = *(*(v33 - 8) + 8);
          v34(v12 + v32, v33);
          v34(v12 + v31[6], v33);
          v35 = (v12 + v31[9]);
          type metadata accessor for FeedPaywallModel(0);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v36 = type metadata accessor for FeedVideoPaywallModel(0);
            v37 = v36[5];
            v38 = sub_219BDB954();
            v39 = *(v38 - 8);
            if (!(*(v39 + 48))(v35 + v37, 1, v38))
            {
              (*(v39 + 8))(v35 + v37, v38);
            }

            v40 = v36[22];
            v41 = sub_219BE4584();
            (*(*(v41 - 8) + 8))(v35 + v40, v41);

            v42 = v36[24];
          }

          else
          {

            v68 = type metadata accessor for FeedRegularPaywallModel(0);
            v69 = *(v68 + 64);
            v70 = sub_219BE4584();
            (*(*(v70 - 8) + 8))(v35 + v69, v70);

            v42 = *(v68 + 72);
          }

          v71 = sub_219BE4314();
          v72 = *(v71 - 8);
          if (!(*(v72 + 48))(v35 + v42, 1, v71))
          {
            (*(v72 + 8))(v35 + v42, v71);
          }

          v73 = type metadata accessor for FeedPaywallConfig();
          v74 = (v35 + v73[5]);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v75 = type metadata accessor for FeedVideoPaywallModel(0);
            v76 = v75[5];
            v77 = sub_219BDB954();
            v78 = *(v77 - 8);
            if (!(*(v78 + 48))(v74 + v76, 1, v77))
            {
              (*(v78 + 8))(v74 + v76, v77);
            }

            v79 = v75[22];
            v80 = sub_219BE4584();
            (*(*(v80 - 8) + 8))(v74 + v79, v80);

            v81 = v75[24];
            v82 = sub_219BE4314();
            v83 = *(v82 - 8);
            if (!(*(v83 + 48))(v74 + v81, 1, v82))
            {
              (*(v83 + 8))(v74 + v81, v82);
            }
          }

          else
          {

            v84 = type metadata accessor for FeedRegularPaywallModel(0);
            v85 = *(v84 + 64);
            v86 = sub_219BE4584();
            (*(*(v86 - 8) + 8))(v74 + v85, v86);

            v87 = *(v84 + 72);
            v88 = sub_219BE4314();
            v89 = *(v88 - 8);
            if (!(*(v89 + 48))(v74 + v87, 1, v88))
            {
              (*(v89 + 8))(v74 + v87, v88);
            }
          }

          v90 = (v35 + v73[6]);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v91 = type metadata accessor for FeedVideoPaywallModel(0);
            v92 = v91[5];
            v93 = sub_219BDB954();
            v94 = *(v93 - 8);
            if (!(*(v94 + 48))(v90 + v92, 1, v93))
            {
              (*(v94 + 8))(v90 + v92, v93);
            }

            v95 = v91[22];
            v96 = sub_219BE4584();
            (*(*(v96 - 8) + 8))(v90 + v95, v96);

            v97 = v91[24];
          }

          else
          {

            v98 = type metadata accessor for FeedRegularPaywallModel(0);
            v99 = *(v98 + 64);
            v100 = sub_219BE4584();
            (*(*(v100 - 8) + 8))(v90 + v99, v100);

            v97 = *(v98 + 72);
          }

          v101 = sub_219BE4314();
          v102 = *(v101 - 8);
          if (!(*(v102 + 48))(v90 + v97, 1, v101))
          {
            (*(v102 + 8))(v90 + v97, v101);
          }

          v12 = (v35 + v73[7]);
          type metadata accessor for FeedPaywallType(0);
          if (swift_getEnumCaseMultiPayload())
          {
            goto LABEL_4;
          }

          sub_2186F6684();
          v23 = *(v103 + 48);
          v24 = sub_219BE4034();
          break;
        case 8u:

          v63 = type metadata accessor for RecommendedIssuesMagazineFeedGroup();
          v64 = *(v63 + 44);
          v65 = sub_219BEF554();
          v66 = *(*(v65 - 8) + 8);
          v66(v12 + v64, v65);
          v66(v12 + *(v63 + 48), v65);
          goto LABEL_4;
        case 9u:
          sub_2186E60B0();
          (*(*(v29 - 8) + 8))(v0 + v11, v29);
          v28 = type metadata accessor for TopicMagazineFeedGroup();
          goto LABEL_19;
        case 0xCu:
          v30 = sub_219BED8D4();
          (*(*(v30 - 8) + 8))(v0 + v11, v30);
          type metadata accessor for NewspaperMagazineFeedGroup();
          swift_unknownObjectRelease();
          goto LABEL_14;
        case 0xDu:
          sub_2186ECF58();
          (*(*(v59 - 8) + 8))(v0 + v11, v59);
          v60 = type metadata accessor for CuratedMagazineFeedGroup();
          v61 = *(v60 + 20);
          v62 = sub_219BED8D4();
          (*(*(v62 - 8) + 8))(v12 + v61, v62);
          v23 = *(v60 + 24);
          goto LABEL_12;
        default:
          goto LABEL_4;
      }

      goto LABEL_20;
    case 0xCu:
      v13 = sub_219BED544();
      goto LABEL_3;
    case 0x10u:
      sub_2186E0CD8();
      (*(*(v27 - 8) + 8))(v0 + v11, v27);
      v28 = type metadata accessor for SharedWithYouTodayFeedGroup();
LABEL_19:
      v23 = *(v28 + 20);
      v24 = sub_219BED8D4();
LABEL_20:
      (*(*(v24 - 8) + 8))(v12 + v23, v24);
      break;
    case 0x11u:
      sub_2186F687C();
LABEL_3:
      (*(*(v13 - 8) + 8))(v0 + v11, v13);
      break;
    case 0x17u:
      v15 = sub_219BED8D4();
      (*(*(v15 - 8) + 8))(v0 + v11, v15);
      type metadata accessor for ChannelPickerTodayFeedGroup();

      break;
    default:
      break;
  }

LABEL_4:

  return swift_deallocObject();
}

uint64_t sub_2188D5798()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188D57EC()
{
  sub_218729624(0, &qword_280EE45D8, MEMORY[0x277D6E3A0]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = sub_219BE16D4();
  v7 = *(v6 - 8);
  v8 = (v4 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  (*(v3 + 8))(v0 + v4, v2);
  (*(v7 + 8))(v0 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_2188D5950()
{
  sub_2188118D4(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  sub_2187E2B78(0);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 80);
  sub_218729624(0, &qword_280EE58C0, MEMORY[0x277D6D710]);
  v9 = v8;
  v10 = *(v8 - 8);
  if (!(*(v10 + 48))(v0 + v2, 1, v8))
  {
    (*(v10 + 8))(v0 + v2, v9);
  }

  (*(v6 + 8))(v0 + ((v2 + v3 + v7) & ~v7), v5);

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2188D5B40()
{
  v1 = sub_219BEBF14();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  sub_2192DD684(0);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(*(v5 - 8) + 64);
  sub_2187E2B78(0);
  v17 = v10;
  v11 = *(v10 - 8);
  v12 = (v8 + v9 + *(v11 + 80)) & ~*(v11 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  v13 = sub_219BDF624();
  (*(*(v13 - 8) + 8))(v0 + v8, v13);
  v14 = *(v6 + 56);
  v15 = sub_219BDEEF4();
  (*(*(v15 - 8) + 8))(v0 + v8 + v14, v15);
  (*(v11 + 8))(v0 + v12, v17);

  return swift_deallocObject();
}

uint64_t sub_2188D5D88()
{
  v13 = sub_219BE3514();
  v1 = *(v13 - 8);
  v11 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v10 = (*(v1 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = sub_219BE35B4();
  v2 = *(v12 - 8);
  v3 = (v10 + *(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_2187E2B78(0);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = (v4 + *(v7 + 80) + 8) & ~*(v7 + 80);

  (*(v1 + 8))(v0 + v11, v13);

  (*(v2 + 8))(v0 + v3, v12);

  (*(v7 + 8))(v0 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_2188D5FA0()
{
  sub_2188118D4(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v16 = *(*(v1 - 8) + 64);
  sub_2187E2B78(0);
  v17 = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v15 = *(v4 + 64);
  v6 = sub_219BF07A4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  sub_218729624(0, &qword_280EE58C0, MEMORY[0x277D6D710]);
  v10 = v9;
  v11 = *(v9 - 8);
  if (!(*(v11 + 48))(v0 + v2, 1, v9))
  {
    (*(v11 + 8))(v0 + v2, v10);
  }

  v12 = (v2 + v16 + v5) & ~v5;
  v13 = (((v15 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8;
  (*(v4 + 8))(v0 + v12, v17);

  (*(v7 + 8))(v0 + v13, v6);

  return swift_deallocObject();
}

uint64_t sub_2188D6240()
{
  sub_218729624(0, &qword_280EE58C0, MEMORY[0x277D6D710]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_218B59134(0);
  v7 = (v5 + *(*(v6 - 8) + 80) + 8) & ~*(*(v6 - 8) + 80);
  v14 = *(*(v6 - 8) + 64);
  sub_2187E2B78(0);
  v15 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  (*(v3 + 8))(v0 + v4, v2);
  swift_unknownObjectRelease();
  v11 = sub_219BDF4A4();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v7, 1, v11))
  {
    (*(v12 + 8))(v0 + v7, v11);
  }

  (*(v9 + 8))(v0 + ((((v14 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + v10 + 8) & ~v10), v15);

  return swift_deallocObject();
}

uint64_t sub_2188D64B0()
{
  v19 = sub_219BDEF94();
  v1 = *(v19 - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v16 = sub_219BF0AC4();
  v4 = *(v16 - 8);
  v5 = (v3 + *(v4 + 80) + v2 + 1) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_218B59134(0);
  v8 = *(*(v7 - 8) + 80);
  v9 = (v6 + v8 + 8) & ~v8;
  v17 = *(*(v7 - 8) + 64);
  sub_2187E2B78(0);
  v18 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  (*(v1 + 8))(v0 + v2, v19);
  (*(v4 + 8))(v0 + v5, v16);

  v13 = sub_219BDF4A4();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v0 + v9, 1, v13))
  {
    (*(v14 + 8))(v0 + v9, v13);
  }

  (*(v11 + 8))(v0 + ((v9 + v17 + v12) & ~v12), v18);

  return swift_deallocObject();
}

uint64_t sub_2188D6790()
{
  v12 = sub_219BE16D4();
  v1 = *(v12 - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v11 = sub_219BEE024();
  v4 = *(v11 - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = sub_219BDBD34();
  v8 = *(v7 - 8);
  v9 = (v5 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  (*(v1 + 8))(v0 + v2, v12);
  (*(v4 + 8))(v0 + v5, v11);
  (*(v8 + 8))(v0 + v9, v7);

  return swift_deallocObject();
}

uint64_t sub_2188D6974()
{

  return swift_deallocObject();
}

uint64_t sub_2188D69AC()
{
  v1 = sub_219BDB954();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_2188D6A34(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_219BEF554();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[7];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_219BF1934();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[8];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[9] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_2188D6B40(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_219BEF554();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
  }

  else
  {
    result = sub_219BF1934();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[9] + 8) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[8];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_2188D6C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2186DDB18(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
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
    sub_2186DDB18(0, &qword_280E91B80, MEMORY[0x277D32028], MEMORY[0x277D83D88]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

void sub_2188D6E0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2186DDB18(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    sub_2186DDB18(0, &qword_280E91B80, MEMORY[0x277D32028], MEMORY[0x277D83D88]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2188D7038()
{
  sub_2191CE1C8();
  v0 = sub_219BF6434();

  return v0;
}

uint64_t sub_2188D70AC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188D70E4()
{

  return swift_deallocObject();
}

uint64_t sub_2188D7134()
{
  v1 = (type metadata accessor for FollowingMySportsModel() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  v4 = v1[9];
  v5 = sub_219BDB954();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v0 + v2 + v4, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_2188D7290()
{
  v1 = (type metadata accessor for FollowingMySportsModel() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  v4 = v1[9];
  v5 = sub_219BDB954();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v0 + v2 + v4, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + ((((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 497) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_2188D7400()
{

  return swift_deallocObject();
}

uint64_t sub_2188D744C()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188D74A0()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188D74F0()
{
  swift_unownedRelease();

  return swift_deallocObject();
}

uint64_t sub_2188D7620()
{
  v1 = sub_219BE51D4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_219BE5134();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_2188D778C()
{
  v1 = *(v0 + 56);
  if (v1 == 2)
  {
  }

  else if (v1 == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  else if (!*(v0 + 56))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2188D7800(uint64_t a1, uint64_t a2)
{
  sub_21895F570();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2188D786C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  sub_21895F570();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_2188D78EC()
{

  swift_unownedRelease();

  return swift_deallocObject();
}

uint64_t sub_2188D7934(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_219BDC104();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_2188D79E0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_219BDC104();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2188D7A84()
{
  sub_21896FA3C();
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

uint64_t sub_2188D7BF0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 210)
  {
    v4 = *a1;
    if (v4 >= 0x2E)
    {
      return v4 - 45;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_219BF1934();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_2188D7C94(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 210)
  {
    *result = a2 + 45;
  }

  else
  {
    v7 = sub_219BF1934();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2188D7D34()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2188D7D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_219BF1934();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_2186D8FA8(0);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_2188D7E7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_219BF1934();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_2186D8FA8(0);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_2188D7F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2186FF4C0(0);
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

void sub_2188D8034(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2186FF4C0(0);
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

uint64_t sub_2188D80EC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for ChannelSectionsGroupSectionModel();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_2188D8198(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ChannelSectionsGroupSectionModel();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2188D823C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188D8274()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188D82AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2186DDB7C(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
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
    sub_2186DDB7C(0, &qword_280E91B80, MEMORY[0x277D32028], MEMORY[0x277D83D88]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

void sub_2188D8430(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2186DDB7C(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    sub_2186DDB7C(0, &qword_280E91B80, MEMORY[0x277D32028], MEMORY[0x277D83D88]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2188D85B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218A42400(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_2192FF26C(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_218D45314(0);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

uint64_t sub_2188D86F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_218A42400(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  sub_2192FF26C(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_218D45314(0);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_2188D8840()
{

  return swift_deallocObject();
}

uint64_t sub_2188D8878()
{
  sub_21896FA3C();
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

uint64_t sub_2188D89E4()
{

  return swift_deallocObject();
}

uint64_t sub_2188D8A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SportsManagementDetailSectionDescriptor();
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

uint64_t sub_2188D8AE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SportsManagementDetailSectionDescriptor();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2188D8B9C(uint64_t a1, uint64_t a2)
{
  sub_2186EBE2C();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2188D8C08(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  sub_2186EBE2C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_2188D8E90()
{
  sub_2186FACE4();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_2188D8F5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_219BF0BD4();
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

uint64_t sub_2188D9018(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_219BF0BD4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2188D90D8()
{
  sub_21896FA3C();
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

  if (*(v0 + ((v3 + 47) & 0xFFFFFFFFFFFFFFF8) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2188D9234()
{
  v1 = *(v0 + 56);
  if (v1 == 2)
  {
  }

  else if (v1 == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  else if (!*(v0 + 56))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2188D929C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2188D92E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2189AD5C8();
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

void sub_2188D93A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2189AD5C8();
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

uint64_t sub_2188D9458()
{
  sub_2186FF3C0(0, &qword_27CC0E4F0, type metadata accessor for SearchFeedServiceConfig, sub_2186FF508, MEMORY[0x277D31C68]);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_2188D9524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_219327A64();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for RecentStoriesTagFeedGroupKnobs();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_2188D9634(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_219327A64();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for RecentStoriesTagFeedGroupKnobs();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 24) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_2188D9744()
{

  return swift_deallocObject();
}

uint64_t sub_2188D977C()
{
  v1 = type metadata accessor for RecentStoriesTagFeedGroupEmitter();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_219327A64();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[5];
  sub_2189AD5C8();
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = type metadata accessor for RecentStoriesTagFeedGroupKnobs();

  v7 = *(v6 + 36);
  v8 = sub_219BEF814();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v4 + v7, 1, v8))
  {
    (*(v9 + 8))(v4 + v7, v8);
  }

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[6]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[7]);

  return swift_deallocObject();
}

uint64_t sub_2188D9978()
{

  return swift_deallocObject();
}

uint64_t sub_2188D9A30(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BF1934();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2188D9A9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BF1934();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2188D9B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_219BDBD34();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2188D9BB8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_219BDBD34();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2188D9C74()
{
  v1 = (type metadata accessor for SearchHomeFilterItem(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v1[8];
  v4 = sub_219BDBD34();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_2188D9D6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SearchHomeFilterItem(0);
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
    sub_21933212C();
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_2188D9E90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SearchHomeFilterItem(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    sub_21933212C();
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_2188D9FB4()
{
  sub_219330F58(255, &qword_27CC18D60, sub_219330F24, sub_219330FE4);
  sub_219330F24(255);
  sub_219330FE4();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2188DA07C()
{
  v1 = (type metadata accessor for SearchHomeFilterItemView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = *(type metadata accessor for SearchHomeFilterItem(0) + 24);
  v4 = sub_219BDBD34();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  v5 = v1[8];
  sub_21933212C();
  (*(*(v6 - 8) + 8))(v2 + v5, v6);

  return swift_deallocObject();
}

uint64_t sub_2188DA1C8(uint64_t a1, uint64_t a2)
{
  sub_2193323B8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2188DA230()
{
  v1 = *(type metadata accessor for SearchMoreFeedGapLocation(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for SearchMoreExpandRequest();
  v5 = (v2 + v3 + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80);
  v6 = v0 + v2;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2193340D0(0, &qword_27CC20A10, MEMORY[0x277D33098]);
    (*(*(v7 - 8) + 8))(v6, v7);
    goto LABEL_11;
  }

  v8 = *(v6 + 40);
  if (v8 > 1)
  {
    if (v8 != 2 && v8 != 3 && v8 != 4)
    {
      goto LABEL_11;
    }

LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v6);
    goto LABEL_11;
  }

  if (!*(v6 + 40) || v8 == 1)
  {
    goto LABEL_10;
  }

LABEL_11:

  v9 = v0 + v5 + *(v4 + 20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2193340D0(0, &qword_27CC20A10, MEMORY[0x277D33098]);
    (*(*(v10 - 8) + 8))(v9, v10);
    goto LABEL_21;
  }

  v11 = *(v9 + 40);
  if (v11 > 1)
  {
    if (v11 != 2 && v11 != 3 && v11 != 4)
    {
      goto LABEL_21;
    }

LABEL_20:
    __swift_destroy_boxed_opaque_existential_1(v9);
    goto LABEL_21;
  }

  if (!*(v9 + 40) || v11 == 1)
  {
    goto LABEL_20;
  }

LABEL_21:

  return swift_deallocObject();
}

uint64_t sub_2188DA4A8()
{

  return swift_deallocObject();
}

uint64_t sub_2188DA4E0()
{

  return swift_deallocObject();
}

uint64_t sub_2188DA554()
{
  v1 = sub_219BDB954();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_2188DA5DC()
{

  return swift_deallocObject();
}

uint64_t sub_2188DA614(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2188DA680(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2188DA6F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2188DA75C(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2188DA7EC()
{

  return swift_deallocObject();
}

uint64_t sub_2188DA824()
{
  v1 = type metadata accessor for MagazineCategoryConfig(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[6];
  v4 = sub_219BDB954();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!v6(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  v7 = v1[7];
  if (!v6(v2 + v7, 1, v4))
  {
    (*(v5 + 8))(v2 + v7, v4);
  }

  v8 = v1[8];
  if (!v6(v2 + v8, 1, v4))
  {
    (*(v5 + 8))(v2 + v8, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_2188DA9F8()
{
  sub_21896FA3C();
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

uint64_t sub_2188DAB6C()
{
  v1 = sub_219BE3EE4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2188DAC44()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

id sub_2188DACF0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 sharedWithYouFeedRules];
  *a2 = result;
  return result;
}

uint64_t sub_2188DADA0()
{

  return swift_deallocObject();
}

uint64_t sub_2188DADDC()
{
  sub_21934C31C(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
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

uint64_t sub_2188DAF78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218B87670();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for PaywallMagazineFeedGroupKnobs();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_2188DB084(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_218B87670();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for PaywallMagazineFeedGroupKnobs();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_2188DB18C()
{
  v1 = (type metadata accessor for PaywallMagazineFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_218B87670();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v1[7];
  sub_2186F909C(0, &qword_280E919C0, type metadata accessor for MagazineFeedServiceConfig, sub_2187EF390, MEMORY[0x277D321A0]);
  (*(*(v5 - 8) + 8))(v2 + v4, v5);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[9]);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2188DB330()
{

  return swift_deallocObject();
}

uint64_t sub_2188DB370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2189AD5C8();
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
    v11 = sub_219BEF244();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 52);

    return v12(v13, a2, v11);
  }
}

void sub_2188DB494(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2189AD5C8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_219BEF244();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 52);

    v12(v13, a2, a2, v11);
  }
}

uint64_t sub_2188DB5C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_219BE8164();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2188DB694(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_219BE8164();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_2188DB74C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188DB784()
{
  sub_218A74FF4();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_2188DB848()
{
  v1 = type metadata accessor for MagazineSectionConfig();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[6];
  v4 = sub_219BDB954();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!v6(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  v7 = v1[7];
  if (!v6(v2 + v7, 1, v4))
  {
    (*(v5 + 8))(v2 + v7, v4);
  }

  v8 = v1[8];
  if (!v6(v2 + v8, 1, v4))
  {
    (*(v5 + 8))(v2 + v8, v4);
  }

  sub_21896755C(*(v2 + v1[9]), *(v2 + v1[9] + 8), *(v2 + v1[9] + 16));
  v9 = v1[10];
  v10 = sub_219BE3184();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (!v12(v2 + v9, 1, v10))
  {
    (*(v11 + 8))(v2 + v9, v10);
  }

  v13 = v1[11];
  if (!v12(v2 + v13, 1, v10))
  {
    (*(v11 + 8))(v2 + v13, v10);
  }

  return swift_deallocObject();
}

uint64_t sub_2188DBAE8()
{
  swift_unownedRelease();

  return swift_deallocObject();
}

uint64_t sub_2188DBB20()
{
  v1 = type metadata accessor for NewspaperGroupConfig();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v26 = type metadata accessor for NewspaperGroupKnobs();
  v4 = *(*(v26 - 8) + 80);
  v5 = v2 + v3 + v4;
  v27 = *(*(v26 - 8) + 64);
  v28 = type metadata accessor for ChannelSectionsGroupModel();
  v6 = *(*(v28 - 8) + 80);
  v7 = v0 + v2;

  v8 = v1[5];
  sub_21935CFA0(0, &qword_280E8FD60, MEMORY[0x277D345E8]);
  v10 = v9;
  v11 = *(v9 - 8);
  if (!(*(v11 + 48))(v7 + v8, 1, v9))
  {
    (*(v11 + 8))(v7 + v8, v10);
  }

  v12 = v5 & ~v4;

  v13 = v1[8];
  v14 = sub_219BF26F4();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v7 + v13, 1, v14))
  {
    (*(v15 + 8))(v7 + v13, v14);
  }

  v16 = v1[10];
  v17 = sub_219BEF554();
  v18 = *(*(v17 - 8) + 8);
  v18(v7 + v16, v17);
  v18(v7 + v1[11], v17);

  v19 = *(v26 + 40);
  v20 = sub_219BEE5D4();
  v21 = *(v20 - 8);
  if (!(*(v21 + 48))(v0 + v12 + v19, 1, v20))
  {
    (*(v21 + 8))(v0 + v12 + v19, v20);
  }

  swift_unknownObjectRelease();
  v22 = v0 + ((v12 + v27 + v6) & ~v6) + *(v28 + 20);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v23 = *(type metadata accessor for ChannelSectionsGroupSectionModel() + 40);
  v24 = sub_219BDB954();
  (*(*(v24 - 8) + 8))(v22 + v23, v24);

  return swift_deallocObject();
}

uint64_t sub_2188DBF80()
{
  v1 = sub_219BE00B4();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_2188DC008()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188DC048(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_2186DDC34(0, &qword_280EE9C40, MEMORY[0x277CC9578]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_2186DDC34(0, &qword_280E91B80, MEMORY[0x277D32028]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_2188DC1A4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_2186DDC34(0, &qword_280EE9C40, MEMORY[0x277CC9578]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_2186DDC34(0, &qword_280E91B80, MEMORY[0x277D32028]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 28);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_2188DC300()
{

  return swift_deallocObject();
}

uint64_t sub_2188DC340()
{
  v1 = (type metadata accessor for ChannelHeadlineServiceRequest() - 8);
  v2 = (*(*v1 + 80) + 176) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = (type metadata accessor for ChannelSectionsGroupModel() - 8);
  v5 = (v2 + v3 + *(*v4 + 80)) & ~*(*v4 + 80);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);
  v6 = v0 + v2;

  v7 = v1[19];
  v8 = sub_219BEFBD4();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v9 = v0 + v5 + v4[7];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v10 = *(type metadata accessor for ChannelSectionsGroupSectionModel() + 40);
  v11 = sub_219BDB954();
  (*(*(v11 - 8) + 8))(v9 + v10, v11);

  return swift_deallocObject();
}

uint64_t sub_2188DC5A4(uint64_t a1, uint64_t a2)
{
  sub_218EA8ABC();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2188DC610(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  sub_218EA8ABC();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_2188DC6D8()
{
  sub_218985EAC();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_2188DC79C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188DC7D4()
{

  return swift_deallocObject();
}

uint64_t sub_2188DC80C()
{

  return swift_deallocObject();
}

uint64_t sub_2188DC844()
{

  return swift_deallocObject();
}

uint64_t sub_2188DC884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TodayPrewarmResult();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2188DC944(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TodayPrewarmResult();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2188DCA00(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_219BEFBD4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_219BE5434();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_2188DCB24(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_219BEFBD4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_219BE5434();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_2188DCC48()
{

  return swift_deallocObject();
}

uint64_t sub_2188DCC80()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 40);
  __swift_destroy_boxed_opaque_existential_1(v0 + 80);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2188DCD00()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188DCD38()
{
  sub_219372E58();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_2188DCDC8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_219BED8D4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_2188DCE74(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_219BED8D4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2188DCF18(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for SearchMoreFeedContentConfig();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_219BEEA84();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[8]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_2188DD020(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for SearchMoreFeedContentConfig();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = sub_219BEEA84();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[8]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_2188DD124(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BE8164();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2188DD190(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BE8164();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2188DD25C(uint64_t a1, uint64_t a2)
{
  sub_218A75088();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2188DD2C8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  sub_218A75088();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_2188DD390()
{
  sub_218985EAC();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_2188DD454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MagazineFeedConfig();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for MagazineKnobsConfig();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2188DD544(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for MagazineFeedConfig();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for MagazineKnobsConfig();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2188DD640()
{

  return swift_deallocObject();
}

uint64_t sub_2188DD678(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_219BDE924();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_3:
    v10 = *(v8 + 48);

    return v10(a1 + v9, a2, v7);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[8]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    sub_21876A024(0, &qword_280EE6350, MEMORY[0x277D35078], MEMORY[0x277D83D88]);
    if (*(*(v13 - 8) + 84) == a2)
    {
      v7 = v13;
      v8 = *(v13 - 8);
      v9 = a3[10];
      goto LABEL_3;
    }

    sub_21876A024(0, &unk_280EE8E70, MEMORY[0x277D2F9F0], MEMORY[0x277D83D88]);
    v15 = v14;
    v16 = *(*(v14 - 8) + 48);
    v17 = a1 + a3[12];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_2188DD848(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_219BDE924();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[5];
LABEL_3:
    v12 = *(v10 + 56);

    return v12(a1 + v11, a2, a2, v9);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[8]) = (a2 - 1);
    return result;
  }

  sub_21876A024(0, &qword_280EE6350, MEMORY[0x277D35078], MEMORY[0x277D83D88]);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[10];
    goto LABEL_3;
  }

  sub_21876A024(0, &unk_280EE8E70, MEMORY[0x277D2F9F0], MEMORY[0x277D83D88]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = a1 + a4[12];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_2188DDA18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21937E158();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for TopicRecipesTagFeedGroupKnobs();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_2188DDB28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_21937E158();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for TopicRecipesTagFeedGroupKnobs();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 24) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_2188DDC34(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2188DDCA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2188DDD10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for SearchResponse.SearchResultGroups(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2188DDDC8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = type metadata accessor for SearchResponse.SearchResultGroups(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2188DDE6C(uint64_t a1, uint64_t a2)
{
  sub_219219310();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2188DDED8(uint64_t a1, uint64_t a2)
{
  sub_219219310();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2188DDF48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    sub_21921898C();
    v10 = v9;
    v11 = *(*(v9 - 8) + 48);
    v12 = a1 + *(a3 + 28);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2188DE000(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    sub_21921898C();
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 28);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2188DE0A4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188DE0DC()
{
  sub_218985E18();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_2188DE1A0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_219BEF244();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_2188DE24C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_219BEF244();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2188DE2F0()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2188DE340()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_2188DE3A0()
{

  return swift_deallocObject();
}

uint64_t sub_2188DE3D8()
{

  return swift_deallocObject();
}

uint64_t sub_2188DE418()
{

  return swift_deallocObject();
}

uint64_t sub_2188DE450()
{

  return swift_deallocObject();
}

uint64_t sub_2188DE488()
{

  return swift_deallocObject();
}

uint64_t sub_2188DE4D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2188DE544(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2188DE5B4()
{
  sub_21896FBB0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  v1 = *(v0 + 96);
  if (v1 != 255)
  {
    sub_21896FC30(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_2188DE60C()
{
  v1 = *(v0 + 56);
  if (v1 == 2)
  {
  }

  else if (v1 == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  else if (!*(v0 + 56))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2188DE67C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_218A42400(0);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_2188DE728(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_218A42400(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2188DE7CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_219BDAED4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2188DE878(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_219BDAED4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2188DE91C()
{
  v1 = sub_219BDAED4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_219BDAEC4();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_2188DEA84()
{
  v1 = sub_219BDAED4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_219BDAEC4();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_2188DEBE0()
{

  return swift_deallocObject();
}

uint64_t sub_2188DEC18()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2188DEC68()
{

  return swift_deallocObject();
}

uint64_t sub_2188DECA0()
{

  return swift_deallocObject();
}

uint64_t sub_2188DECE0()
{
  sub_218747C64(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
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

uint64_t sub_2188DEE7C()
{
  v1 = sub_219BE8F74();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_2188DEF04()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188DEF70()
{
  sub_21880B928();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_2188DF014()
{

  return swift_deallocObject();
}

uint64_t sub_2188DF04C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2188DF094()
{

  return swift_deallocObject();
}

uint64_t sub_2188DF0D4()
{

  return swift_deallocObject();
}

uint64_t sub_2188DF118()
{

  return swift_deallocObject();
}

uint64_t sub_2188DF150()
{
  v1 = (type metadata accessor for TodayExpandContext() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  swift_unknownObjectRelease();
  v3 = v1[10];
  v4 = sub_219BE6DF4();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_2188DF288()
{

  return swift_deallocObject();
}

uint64_t sub_2188DF2E0()
{
  v1 = (type metadata accessor for TodayExpandContext() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);

  swift_unknownObjectRelease();
  v3 = v1[10];
  v4 = sub_219BE6DF4();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v0 + v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_2188DF410()
{
  v1 = sub_219BEEAF4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_219BEE644();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_2188DF56C()
{
  v1 = *(type metadata accessor for TodayGapLocation(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_2186EA98C();
  v4 = v3;
  v5 = *(v3 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v3))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_2188DF690()
{
  v1 = type metadata accessor for TodayExpandRequest();
  v2 = (*(*(v1 - 8) + 80) + 40) & ~*(*(v1 - 8) + 80);

  v3 = v0 + v2;

  v4 = *(v1 + 20);
  sub_2186EA98C();
  v6 = v5;
  v7 = *(v5 - 8);
  if (!(*(v7 + 48))(v0 + v2 + v4, 1, v5))
  {
    (*(v7 + 8))(v3 + v4, v6);
  }

  v8 = v3 + *(v1 + 24);
  swift_unknownObjectRelease();
  v9 = *(type metadata accessor for TodayExpandContext() + 32);
  v10 = sub_219BE6DF4();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v8 + v9, 1, v10))
  {
    (*(v11 + 8))(v8 + v9, v10);
  }

  return swift_deallocObject();
}

uint64_t sub_2188DF858()
{
  v1 = sub_219BE5384();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_2188DF914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_219BEF814();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_219BEFF54();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2188DFA04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_219BEF814();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_219BEFF54();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2188DFB00(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2188DFB6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2188DFBDC()
{

  return swift_deallocObject();
}

uint64_t sub_2188DFC18()
{

  return swift_deallocObject();
}

uint64_t sub_2188DFC50()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188DFC88()
{

  return swift_deallocObject();
}

uint64_t sub_2188DFCC0()
{

  return swift_deallocObject();
}

uint64_t sub_2188DFCF8()
{

  return swift_deallocObject();
}

uint64_t sub_2188DFD5C()
{

  return swift_deallocObject();
}

uint64_t sub_2188DFD94()
{
  sub_21896FBB0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  v1 = *(v0 + 96);
  if (v1 != 255)
  {
    sub_21896FC30(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_2188DFDEC()
{
  sub_21896FD44(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_2188DFE40(uint64_t a1, uint64_t a2, int *a3)
{
  sub_2187335C8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    TrackData = type metadata accessor for AudioState.UpNextTrackData(0);
    v14 = *(TrackData - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = TrackData;
      v9 = *(v14 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v15 = sub_219BDBD34();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[9];

    return v16(v17, a2, v15);
  }
}

void sub_2188DFFB4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_2187335C8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    v11(v12, a2, a2, v10);
    return;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return;
  }

  TrackData = type metadata accessor for AudioState.UpNextTrackData(0);
  v14 = *(TrackData - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = TrackData;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = sub_219BDBD34();
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[9];

  v16(v17, a2, a2, v15);
}

uint64_t sub_2188E088C()
{
  sub_218747C64(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
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

uint64_t sub_2188E0A28(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2188E0A94(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2188E0B04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SearchFeedConfig();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for SearchFeedKnobsConfig();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2188E0BF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for SearchFeedConfig();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for SearchFeedKnobsConfig();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2188E0CF0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_219BE3514();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = sub_219BDB954();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[6];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = sub_219BE3794();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[7];
    goto LABEL_11;
  }

  sub_21922CB44();
  v18 = v17;
  v19 = *(*(v17 - 8) + 48);
  v20 = a1 + a3[9];

  return v19(v20, a2, v18);
}

uint64_t sub_2188E0EB0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_219BE3514();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = sub_219BDB954();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_219BE3794();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  sub_21922CB44();
  v18 = v17;
  v19 = *(*(v17 - 8) + 56);
  v20 = a1 + a4[9];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_2188E1070()
{

  return swift_deallocObject();
}

uint64_t sub_2188E10AC()
{

  return swift_deallocObject();
}

uint64_t sub_2188E10F4()
{

  return swift_deallocObject();
}

uint64_t sub_2188E1134()
{

  return swift_deallocObject();
}

uint64_t sub_2188E116C()
{

  return swift_deallocObject();
}

uint64_t sub_2188E11B4()
{

  return swift_deallocObject();
}

uint64_t sub_2188E1208()
{

  return swift_deallocObject();
}

uint64_t sub_2188E1240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for MagazineFeedExpandResult.Result(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2188E12EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for MagazineFeedExpandResult.Result(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2188E1444()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188E147C()
{
  sub_2193D4D6C(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_2188E15A0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188E15D8()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188E1618()
{

  return swift_deallocObject();
}

uint64_t sub_2188E1650(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 210)
  {
    v4 = *a1;
    if (v4 >= 0x2E)
    {
      return v4 - 45;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_219BF1934();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_2188E16F4(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 210)
  {
    *result = a2 + 45;
  }

  else
  {
    v7 = sub_219BF1934();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2188E1794()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188E17DC()
{

  return swift_deallocObject();
}

uint64_t sub_2188E1814()
{

  return swift_deallocObject();
}

uint64_t sub_2188E185C()
{

  return swift_deallocObject();
}

uint64_t sub_2188E189C()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2188E18E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2186DDCEC(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
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
    sub_2186DDCEC(0, &qword_280E91B80, MEMORY[0x277D32028], MEMORY[0x277D83D88]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

void sub_2188E1A64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2186DDCEC(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    sub_2186DDCEC(0, &qword_280E91B80, MEMORY[0x277D32028], MEMORY[0x277D83D88]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2188E1BE8()
{
  v1 = sub_219BDB954();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2188E1CAC()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188E1CE8()
{

  return swift_deallocObject();
}

uint64_t sub_2188E1D20()
{

  return swift_deallocObject();
}

uint64_t sub_2188E1D64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2189AD5C8();
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

void sub_2188E1E20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2189AD5C8();
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

uint64_t sub_2188E1ED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_21873F65C(0);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2188E1F84(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_21873F65C(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 28);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2188E2028()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2188E2080()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2188E20DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagazineFeedExpandResult(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2188E2148(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for MagazineFeedExpandResult(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_2188E21C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleListHistoryFeedGroup();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2188E2234(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for ArticleListHistoryFeedGroup();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_2188E2390()
{
  v1 = (type metadata accessor for EngagementAction() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = sub_219BE3514();
  (*(*(v3 - 8) + 8))(v2, v3);

  v4 = v1[8];
  v5 = sub_219BDB954();
  (*(*(v5 - 8) + 8))(v2 + v4, v5);
  v6 = v1[9];
  v7 = sub_219BE3794();
  (*(*(v7 - 8) + 8))(v2 + v6, v7);

  v8 = v1[11];
  v9 = sub_219BE3C04();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v2 + v8, 1, v9))
  {
    (*(v10 + 8))(v2 + v8, v9);
  }

  return swift_deallocObject();
}

uint64_t sub_2188E2584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_219BEF554();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for FeedPaywallConfig();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_2188E26A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_219BEF554();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for FeedPaywallConfig();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_2188E27CC()
{
  if (*v0)
  {
    return 0x6E656D7461657274;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_2188E2818()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188E2850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2186DDD50(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    sub_2186DDD50(0, &qword_280E91B80, MEMORY[0x277D32028], MEMORY[0x277D83D88]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_2188E29E4()
{
  sub_219092554(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_2188E2A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21940DA80();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for ArticleListTagFeedGroupKnobs();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_2188E2B3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_21940DA80();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for ArticleListTagFeedGroupKnobs();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 24) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_2188E2C4C()
{

  return swift_deallocObject();
}

uint64_t sub_2188E2C84()
{
  v1 = (type metadata accessor for ArticleListTagFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_21940DA80();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];
  sub_2189AD5C8();
  (*(*(v5 - 8) + 8))(v4, v5);
  type metadata accessor for ArticleListTagFeedGroupKnobs();

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[9]);

  return swift_deallocObject();
}

uint64_t sub_2188E2E14()
{
  v1 = (type metadata accessor for ArticleListTagFeedGroupEmitter() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  sub_21940DA80();
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = v4 + v1[7];
  sub_2189AD5C8();
  (*(*(v7 - 8) + 8))(v6, v7);
  type metadata accessor for ArticleListTagFeedGroupKnobs();

  __swift_destroy_boxed_opaque_existential_1(v4 + v1[8]);
  __swift_destroy_boxed_opaque_existential_1(v4 + v1[9]);

  return swift_deallocObject();
}

uint64_t sub_2188E2FD4()
{

  return swift_deallocObject();
}

uint64_t sub_2188E309C()
{
  v1 = *(type metadata accessor for SearchFeedServiceContext() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);

  v3 = type metadata accessor for SearchResults();
  v4 = *(v3 + 24);
  v5 = sub_219BDF034();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  v6 = *(v3 + 32);
  v7 = sub_219BE04F4();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v2 + v6, 1, v7))
  {
    (*(v8 + 8))(v0 + v2 + v6, v7);
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2188E324C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 210)
  {
    v4 = *a1;
    if (v4 >= 0x2E)
    {
      return v4 - 45;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_219BF1934();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_2188E32F0(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 210)
  {
    *result = a2 + 45;
  }

  else
  {
    v7 = sub_219BF1934();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2188E33E0()
{
  sub_219417118(0, &qword_280EE3760, MEMORY[0x277D6EC60]);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + v4 + 40);

  return swift_deallocObject();
}

uint64_t sub_2188E34D0()
{

  return swift_deallocObject();
}

uint64_t sub_2188E3510()
{

  return swift_deallocObject();
}

uint64_t sub_2188E3548()
{

  return swift_deallocObject();
}

uint64_t sub_2188E3584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_219425F54();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for SportsKeyPlayersTagFeedGroupKnobs();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_2188E3694(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_219425F54();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for SportsKeyPlayersTagFeedGroupKnobs();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 24) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_2188E37A4()
{
  v1 = (type metadata accessor for SportsKeyPlayersTagFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_219425F54();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];
  sub_2189AD5C8();
  (*(*(v5 - 8) + 8))(v4, v5);
  type metadata accessor for SportsKeyPlayersTagFeedGroupKnobs();

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[9]);

  return swift_deallocObject();
}

uint64_t sub_2188E392C()
{

  return swift_deallocObject();
}

uint64_t sub_2188E3964()
{

  return swift_deallocObject();
}

uint64_t sub_2188E39A4()
{

  return swift_deallocObject();
}

uint64_t sub_2188E39E4(uint64_t a1, uint64_t a2)
{
  sub_2189AE994(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2188E3A50(uint64_t a1, uint64_t a2)
{
  sub_2189AE994(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2188E3AC0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 210)
  {
    v4 = *a1;
    if (v4 >= 0x2E)
    {
      return v4 - 45;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_219BF1934();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_2188E3B64(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 210)
  {
    *result = a2 + 45;
  }

  else
  {
    v7 = sub_219BF1934();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2188E3C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2189AD5C8();
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
    v11 = sub_219BEF244();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

void sub_2188E3D28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2189AD5C8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_219BEF244();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    v12(v13, a2, a2, v11);
  }
}

uint64_t sub_2188E3E4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2188E3EB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2188E3F28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21942CDA4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for LatestRecipesTagFeedGroupKnobs();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_2188E4038(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_21942CDA4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for LatestRecipesTagFeedGroupKnobs();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 24) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_2188E4144()
{
  v1 = type metadata accessor for AudioFeedContentConfig();
  v23 = *(*(v1 - 8) + 80);
  v2 = v0 + ((v23 + 16) & ~v23);
  v3 = sub_219BDBD34();
  v4 = *(v3 - 8);
  v21 = *(v4 + 48);
  if (!v21(v2, 1, v3))
  {
    (*(v4 + 8))(v2, v3);
  }

  v18 = v4;
  v22 = v3;
  v5 = type metadata accessor for AudioFeedConfig();

  v6 = *(v5 + 28);
  v7 = sub_219BEE5B4();
  v8 = *(v7 - 8);
  v19 = *(v8 + 48);
  if (!v19(v2 + v6, 1, v7))
  {
    (*(v8 + 8))(v2 + v6, v7);
  }

  v20 = v7;
  v9 = v2 + *(v1 + 20);
  sub_2186E7180(0);
  v11 = v10;
  v12 = *(*(v10 - 8) + 8);
  v12(v9, v10);
  type metadata accessor for UpNextAudioFeedGroupKnobs();

  v13 = type metadata accessor for AudioFeedGroupKnobs();
  v12(v9 + *(v13 + 20), v11);
  type metadata accessor for ForYouAudioFeedGroupKnobs();

  v14 = v2 + *(v1 + 24);
  v15 = type metadata accessor for LegacyAudioFeedConfiguration();
  if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
  {
    if (!v21(v14, 1, v22))
    {
      (*(v18 + 8))(v14, v22);
    }

    v16 = *(v15 + 28);
    if (!v19(v14 + v16, 1, v20))
    {
      (*(v8 + 8))(v14 + v16, v20);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_2188E4508()
{
  sub_2187C5110();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  if (*(v0 + v4 + 40) <= 4u)
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v4);
  }

  if (*(v0 + v4 + 56))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2188E45C8()
{
  sub_21896FBB0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  v1 = *(v0 + 96);
  if (v1 != 255)
  {
    sub_21896FC30(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_2188E4628(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BF1934();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2188E4694(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BF1934();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2188E4704(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 210)
  {
    v4 = *a1;
    if (v4 >= 0x2E)
    {
      return v4 - 45;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_219BF1934();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_2188E47A8(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 210)
  {
    *result = a2 + 45;
  }

  else
  {
    v7 = sub_219BF1934();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2188E4848()
{

  return swift_deallocObject();
}

uint64_t sub_2188E4880()
{
  sub_21896FA3C();
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

uint64_t sub_2188E49EC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2188E4A34()
{

  return swift_deallocObject();
}

uint64_t sub_2188E4A6C()
{
  sub_218B803C4(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
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

  if (*(v0 + ((v3 + 47) & 0xFFFFFFFFFFFFFFF8) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2188E4BF8()
{
  sub_218B803C4(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
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

uint64_t sub_2188E4D94()
{

  return swift_deallocObject();
}

uint64_t sub_2188E4DCC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 210)
  {
    v4 = *a1;
    if (v4 >= 0x2E)
    {
      return v4 - 45;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_219BF1934();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_2188E4E70(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 210)
  {
    *result = a2 + 45;
  }

  else
  {
    v7 = sub_219BF1934();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2188E4F10(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 210)
  {
    v4 = *a1;
    if (v4 >= 0x2E)
    {
      return v4 - 45;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_219BF1934();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_2188E4FB4(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 210)
  {
    *result = a2 + 45;
  }

  else
  {
    v7 = sub_219BF1934();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2188E5714()
{
  sub_219457FAC();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_2188E57FC()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188E5834()
{

  return swift_deallocObject();
}

uint64_t sub_2188E5874()
{
  v1 = sub_219BF1584();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2188E593C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_219BE9834();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 40));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2188E5A08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_219BE9834();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 40)) = a2 + 1;
  }

  return result;
}

uint64_t sub_2188E5AC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_219BE8164();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 7)
    {
      return v10 - 6;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2188E5B78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_219BE8164();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 6;
  }

  return result;
}

uint64_t sub_2188E5C30(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 210)
  {
    v4 = *a1;
    if (v4 >= 0x2E)
    {
      return v4 - 45;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_219BF1934();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_2188E5CD4(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 210)
  {
    *result = a2 + 45;
  }

  else
  {
    v7 = sub_219BF1934();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2188E5D74()
{

  return swift_deallocObject();
}

uint64_t sub_2188E5DAC(uint64_t a1, uint64_t a2)
{
  sub_218853400();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2188E5E18(uint64_t a1, uint64_t a2)
{
  sub_218853400();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2188E5E88()
{
  v1 = *(type metadata accessor for TodayUncollapseBlueprintModifier(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  sub_218849DB8(0, &qword_280EE3720, MEMORY[0x277D6EC60]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = (v3 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(*(type metadata accessor for TodayBlueprintCollapsedSection(0) - 8) + 80);
  v10 = (v7 + v8 + v9) & ~v9;
  sub_218853400();
  (*(*(v11 - 8) + 8))(v0 + v2, v11);
  (*(v6 + 8))(v0 + v7, v5);
  sub_2187FAD00();
  (*(*(v12 - 8) + 8))(v0 + v10, v12);

  return swift_deallocObject();
}

uint64_t sub_2188E60D4()
{

  return swift_deallocObject();
}

uint64_t sub_2188E610C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188E614C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_219BF0BD4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_2188E61F8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_219BF0BD4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2188E629C()
{

  return swift_deallocObject();
}

uint64_t sub_2188E62D4()
{
  sub_218747F00(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
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

uint64_t sub_2188E6470(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_2186DD55C(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_2188E6550(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_2186DD55C(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2188E6624(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BF1934();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2188E6690(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BF1934();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2188E6700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2186D8920();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_219BED8D4();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_219BF02C4();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_2188E6840(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2186D8920();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_219BED8D4();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_219BF02C4();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_2188E698C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_219465EC4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for SportsOnboardingTagFeedGroupKnobs();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_2188E6A9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_219465EC4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for SportsOnboardingTagFeedGroupKnobs();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 24) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_2188E6BAC()
{

  return swift_deallocObject();
}

uint64_t sub_2188E6BFC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188E6C34()
{
  v1 = sub_219BEFE34();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2188E6D00()
{

  return swift_deallocObject();
}

uint64_t sub_2188E6D40()
{

  return swift_deallocObject();
}

uint64_t sub_2188E6D90()
{

  return swift_deallocObject();
}

uint64_t sub_2188E6DCC()
{

  return swift_deallocObject();
}

uint64_t sub_2188E6E04()
{

  return swift_deallocObject();
}

uint64_t sub_2188E6E40()
{
  sub_219476494();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_2188E72A0()
{

  return swift_deallocObject();
}

uint64_t sub_2188E72D8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188E7310()
{

  return swift_deallocObject();
}

uint64_t sub_2188E7350(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BE8164();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2188E73BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BE8164();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2188E742C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_2194BB554();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for PuzzleArchiveTagFeedGroupKnobs();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6] + 24);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = sub_219BDC084();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}