uint64_t sub_218923350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2197B87D0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for SportsEventInfoTagFeedGroupKnobs();
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

uint64_t sub_218923460(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2197B87D0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for SportsEventInfoTagFeedGroupKnobs();
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

uint64_t sub_218923570()
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

uint64_t sub_218923710()
{

  return swift_deallocObject();
}

uint64_t sub_218923748()
{

  return swift_deallocObject();
}

uint64_t sub_2189237B0()
{
  v1 = (type metadata accessor for EngagementPresentationFailure() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = sub_219BE3514();
  (*(*(v3 - 8) + 8))(v2, v3);

  v4 = v1[9];
  v5 = sub_219BE3774();
  (*(*(v5 - 8) + 8))(v2 + v4, v5);
  v6 = v1[10];
  v7 = sub_219BE3794();
  (*(*(v7 - 8) + 8))(v2 + v6, v7);

  return swift_deallocObject();
}

uint64_t sub_21892392C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_218923A24()
{

  return swift_deallocObject();
}

uint64_t sub_218923A5C()
{

  return swift_deallocObject();
}

uint64_t sub_218923AEC()
{

  return swift_deallocObject();
}

uint64_t sub_218923B24()
{

  return swift_deallocObject();
}

uint64_t sub_218923B6C()
{

  return swift_deallocObject();
}

uint64_t sub_218923BAC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
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

_BYTE *sub_218923C50(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_218923CF0(uint64_t a1, uint64_t a2, uint64_t a3)
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

void sub_218923DAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_218923E64(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BDB954();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_218923ED0(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BDB954();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_218923F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2186E7180(0);
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
    sub_2186EDEB8(0, &qword_280E912E0, MEMORY[0x277D32720]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 36);

    return v13(v14, a2, v12);
  }
}

void sub_218924080(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2186E7180(0);
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
    sub_2186EDEB8(0, &qword_280E912E0, MEMORY[0x277D32720]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 36);

    v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2189241C0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_219BE8164();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_219BDCAA4();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[7];
    goto LABEL_5;
  }

  if (a2 == 254)
  {
    v14 = *(a1 + a3[8]);
    if (v14 >= 2)
    {
      return v14 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v15 = sub_219BDCAF4();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[9];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_21892432C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_219BE8164();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_219BDCAA4();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[7];
    goto LABEL_5;
  }

  if (a3 == 254)
  {
    *(a1 + a4[8]) = a2 + 1;
  }

  else
  {
    v15 = sub_219BDCAF4();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[9];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_21892449C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_2189244D4()
{

  return swift_deallocObject();
}

uint64_t sub_218924510(uint64_t a1, uint64_t a2, uint64_t a3)
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

void sub_2189245CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_218924684(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HistoryFeedFailedData();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2189246F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HistoryFeedFailedData();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_218924764()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21892479C()
{

  return swift_deallocObject();
}

uint64_t sub_2189247DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218A2D07C(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_21892489C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_218A2D07C(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 28) + 24) = (a2 - 1);
  }
}

uint64_t sub_218924B38()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_218924B78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2186F6D38(0);
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

void sub_218924C34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2186F6D38(0);
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

uint64_t sub_218924CEC()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_218924D24(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_219AF9CC0(0, &qword_280EE5188, MEMORY[0x277D6D9E0]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_218924DF0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    sub_219AF9CC0(0, &qword_280EE5188, MEMORY[0x277D6D9E0]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_218924EB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagazineCatalogSectionHeaderModel();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_218924F1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagazineCatalogSectionHeaderModel();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_218924F8C()
{
  v1 = sub_219BDEF94();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  sub_219AFADE4();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = (v4 + *(v7 + 80) + v3 + 1) & ~*(v7 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v7 + 8))(v0 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_2189250D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_219AFD120();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

void sub_2189251A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_219AFD120();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }
}

uint64_t sub_218925268(uint64_t a1, uint64_t a2, uint64_t a3)
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

void sub_218925324(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_2189253E0()
{

  return swift_deallocObject();
}

uint64_t sub_218925418()
{

  return swift_deallocObject();
}

uint64_t sub_218925450()
{

  return swift_deallocObject();
}

uint64_t sub_218925490()
{

  return swift_deallocObject();
}

uint64_t sub_2189254C8()
{

  return swift_deallocObject();
}

uint64_t sub_218925508()
{

  return swift_deallocObject();
}

uint64_t sub_218925550(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2189255BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21892562C(uint64_t a1, uint64_t a2)
{
  sub_2186EA98C();
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

uint64_t sub_218925698(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  sub_2186EA98C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_218925B18()
{
  sub_2186EAF38();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_218925BE0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for MagazineCategoryConfig(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_218925C8C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for MagazineCategoryConfig(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_218925D40()
{

  return swift_deallocObject();
}

uint64_t sub_218925D88()
{

  return swift_deallocObject();
}

uint64_t sub_218925DC4()
{
  sub_21896FBB0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  v1 = *(v0 + 96);
  if (v1 != 255)
  {
    sub_21896FC30(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_218925E20()
{
  sub_21896FD44(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_218925E74()
{
  sub_218DFB934(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_218925ED4()
{
  sub_219B21B58(0, &qword_27CC18780, MEMORY[0x277D6E1E0]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_218925FB4()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_218926030()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_218926068()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2189260A0()
{

  return swift_deallocObject();
}

uint64_t sub_2189260D8()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_218926158(uint64_t a1, uint64_t a2, uint64_t a3)
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
    updated = type metadata accessor for ShortcutsUpdateAllRequest();
    v9 = *(*(updated - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, updated);
  }
}

uint64_t sub_218926204(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    updated = type metadata accessor for ShortcutsUpdateAllRequest();
    v8 = *(*(updated - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, updated);
  }

  return result;
}

uint64_t sub_2189262A8()
{

  return swift_deallocObject();
}

uint64_t sub_2189262E0()
{
  sub_21896FBB0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  v1 = *(v0 + 96);
  if (v1 != 255)
  {
    sub_21896FC30(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_218926338()
{
  sub_21896FD44(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_21892638C()
{
  v1 = sub_219BDD434();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_218926464()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2189264AC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2189264EC()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_218926530()
{
  v1 = sub_219BEE544();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_218926608()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21892664C(uint64_t a1, uint64_t a2, uint64_t a3)
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

void sub_218926708(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_2189267C0(uint64_t a1, uint64_t a2)
{
  sub_2189AD5C8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21892682C(uint64_t a1, uint64_t a2)
{
  sub_2189AD5C8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21892689C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2193DDC40();
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

void sub_21892695C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2193DDC40();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 24) + 24) = (a2 - 1);
  }
}

uint64_t sub_218926A18()
{
  v1 = (type metadata accessor for CategoriesMagazineFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 24) & ~*(*v1 + 80));
  sub_2193DDC40();
  (*(*(v3 - 8) + 8))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[10]);

  return swift_deallocObject();
}

uint64_t sub_218926B38()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_218926B78(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_218926C24(void *result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_218926CE0()
{

  return swift_deallocObject();
}

uint64_t sub_218926D18()
{
  v1 = sub_219BDBD34();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_218926DB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchFeedGroupKnobs();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_218926E24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchFeedGroupKnobs();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_218926E94()
{

  return swift_deallocObject();
}

uint64_t sub_218926EDC()
{

  return swift_deallocObject();
}

uint64_t sub_218926F14()
{
  v1 = *(type metadata accessor for MagazineFeedServiceContext() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_219BEE754();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_218926FE0()
{
  v1 = type metadata accessor for MagazineFeedExpandRequest();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 20);
  sub_2186EBE2C();
  v5 = v4;
  v6 = *(v4 - 8);
  if (!(*(v6 + 48))(v2 + v3, 1, v4))
  {
    (*(v6 + 8))(v2 + v3, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_218927120()
{

  return swift_deallocObject();
}

uint64_t sub_21892715C()
{

  return swift_deallocObject();
}

uint64_t sub_2189271AC()
{

  return swift_deallocObject();
}

uint64_t sub_2189271E4()
{

  return swift_deallocObject();
}

uint64_t sub_218927238()
{
  v1 = *(type metadata accessor for MagazineFeedGapLocation(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_2186EBE2C();
  v4 = v3;
  v5 = *(v3 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v3))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_218927344()
{
  v1 = type metadata accessor for MagazineFeedExpandRequest();
  v2 = (*(*(v1 - 8) + 80) + 40) & ~*(*(v1 - 8) + 80);

  v3 = v0 + v2;

  v4 = *(v1 + 20);
  sub_2186EBE2C();
  v6 = v5;
  v7 = *(v5 - 8);
  if (!(*(v7 + 48))(v0 + v2 + v4, 1, v5))
  {
    (*(v7 + 8))(v3 + v4, v6);
  }

  return swift_deallocObject();
}

uint64_t sub_21892748C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2189274F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BF1934();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_218927560(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BF1934();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2189275E0()
{

  return swift_deallocObject();
}

uint64_t sub_218927618(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BF4F84();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_218927684(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BF4F84();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2189276F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SportsManagementSectionDescriptor();
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

uint64_t sub_2189277B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SportsManagementSectionDescriptor();
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

uint64_t sub_218927868()
{

  if (*(v0 + 72))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 48);
  }

  if (*(v0 + 112))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 88);
  }

  if (*(v0 + 152))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 128);
  }

  sub_21896755C(*(v0 + 168), *(v0 + 176), *(v0 + 184));

  return swift_deallocObject();
}

uint64_t sub_2189278E8()
{
  sub_219B4F870(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_2189279AC()
{

  return swift_deallocObject();
}

uint64_t sub_2189279E4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_219BE7434();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 108);

    return v9(v10, a2, v8);
  }
}

void *sub_218927A90(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_219BE7434();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 108);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_218927B34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2186ECF58();
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

  v14 = sub_219BEF8A4();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_218927C74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2186ECF58();
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

  v16 = sub_219BEF8A4();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_218927DC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BE9834();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_218927E2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BE9834();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_218927E9C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_2189AE994(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_2189AE9B4(0);
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
    v14 = *(a1 + a3[6]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = sub_219BEF244();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[10];

    return v16(v17, a2, v15);
  }
}

void sub_218928010(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_2189AE994(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    v11(v12, a2, a2, v10);
    return;
  }

  sub_2189AE9B4(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    v15 = sub_219BEF244();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[10];

    v16(v17, a2, a2, v15);
  }
}

uint64_t sub_218928184(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for AudioHistoryFeedRemovalResult();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_218928230(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AudioHistoryFeedRemovalResult();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2189282D4()
{
  sub_219B5C600(0, &qword_27CC24168, MEMORY[0x277D6DA48]);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  __swift_destroy_boxed_opaque_existential_1(v0 + v4);

  return swift_deallocObject();
}

uint64_t sub_21892838C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2189283C4()
{
  v13 = sub_219BE3514();
  v1 = *(v13 - 8);
  v11 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v2 = (*(v1 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = sub_219BE35B4();
  v3 = *(v12 - 8);
  v4 = (v2 + *(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  sub_219B5C600(0, &qword_27CC24168, MEMORY[0x277D6DA48]);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = (v4 + v5 + *(v8 + 80)) & ~*(v8 + 80);

  (*(v1 + 8))(v0 + v11, v13);

  (*(v3 + 8))(v0 + v4, v12);
  (*(v8 + 8))(v0 + v9, v7);

  return swift_deallocObject();
}

uint64_t sub_2189285E4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21892863C()
{

  return swift_deallocObject();
}

uint64_t sub_21892868C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2189286DC()
{

  return swift_deallocObject();
}

uint64_t sub_21892872C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21892877C()
{
  v1 = *(type metadata accessor for MagazineFeedGroup() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + v2);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:

      v20 = type metadata accessor for CategoriesMagazineFeedGroup();
      goto LABEL_17;
    case 1u:
      sub_2186E3594();
      (*(*(v21 - 8) + 8))(v0 + v2, v21);
      v6 = type metadata accessor for FeaturedArticleMagazineFeedGroup();
      goto LABEL_20;
    case 2u:
    case 0xAu:
    case 0xBu:
      v4 = sub_219BED8D4();
      (*(*(v4 - 8) + 8))(v0 + v2, v4);
      break;
    case 3u:
      sub_2186EC3A4();
      (*(*(v36 - 8) + 8))(v0 + v2, v36);
      v6 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup();
      goto LABEL_20;
    case 4u:

      v20 = type metadata accessor for InlineCategoriesMagazineFeedGroup();
LABEL_17:
      v41 = *(v20 + 40);
      v42 = sub_219BEF554();
      goto LABEL_21;
    case 5u:

      v22 = type metadata accessor for MyMagazinesMagazineFeedGroup();
      v23 = v22[10];
      v24 = sub_219BEF554();
      v25 = *(*(v24 - 8) + 8);
      v25(v3 + v23, v24);
      v25(v3 + v22[11], v24);
      v26 = v3 + v22[13];
      sub_2186F94AC(0, &qword_280E919C0, MEMORY[0x277D321A0]);
      (*(*(v27 - 8) + 8))(v26, v27);
      v28 = type metadata accessor for MyMagazinesMagazineFeedGroupKnobs();

      v29 = *(v28 + 24);
      sub_2186F94AC(0, &qword_280E91830, MEMORY[0x277D32318]);
      (*(*(v30 - 8) + 8))(&v26[v29], v30);
      swift_unknownObjectRelease();
      v31 = v22[16];
      v32 = sub_219BEF8A4();
      (*(*(v32 - 8) + 8))(v3 + v31, v32);
      v33 = v22[17];
      v34 = sub_219BEE5D4();
      v35 = *(v34 - 8);
      if (!(*(v35 + 48))(v3 + v33, 1, v34))
      {
        (*(v35 + 8))(v3 + v33, v34);
      }

      goto LABEL_13;
    case 6u:
      sub_2186ECD30();
      (*(*(v47 - 8) + 8))(v0 + v2, v47);
      v6 = type metadata accessor for NewIssueMagazineFeedGroup();
      goto LABEL_20;
    case 7u:

      v8 = type metadata accessor for PaywallMagazineFeedGroup();
      v9 = v8[5];
      v10 = sub_219BEF554();
      v11 = *(*(v10 - 8) + 8);
      v11(v3 + v9, v10);
      v11(v3 + v8[6], v10);
      v12 = (v3 + v8[9]);
      type metadata accessor for FeedPaywallModel(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v13 = type metadata accessor for FeedVideoPaywallModel(0);
        v14 = v13[5];
        v15 = sub_219BDB954();
        v16 = *(v15 - 8);
        if (!(*(v16 + 48))(v12 + v14, 1, v15))
        {
          (*(v16 + 8))(v12 + v14, v15);
        }

        v17 = v13[22];
        v18 = sub_219BE4584();
        (*(*(v18 - 8) + 8))(v12 + v17, v18);

        v19 = v13[24];
      }

      else
      {

        v49 = type metadata accessor for FeedRegularPaywallModel(0);
        v50 = *(v49 + 64);
        v51 = sub_219BE4584();
        (*(*(v51 - 8) + 8))(v12 + v50, v51);

        v19 = *(v49 + 72);
      }

      v52 = sub_219BE4314();
      v53 = *(v52 - 8);
      if (!(*(v53 + 48))(v12 + v19, 1, v52))
      {
        (*(v53 + 8))(v12 + v19, v52);
      }

      v84 = type metadata accessor for FeedPaywallConfig();
      v54 = (v12 + v84[5]);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v55 = type metadata accessor for FeedVideoPaywallModel(0);
        v56 = v55[5];
        v57 = sub_219BDB954();
        v58 = *(v57 - 8);
        if (!(*(v58 + 48))(v54 + v56, 1, v57))
        {
          (*(v58 + 8))(v54 + v56, v57);
        }

        v59 = v55[22];
        v60 = sub_219BE4584();
        (*(*(v60 - 8) + 8))(v54 + v59, v60);

        v61 = v55[24];
        v62 = sub_219BE4314();
        v63 = *(v62 - 8);
        if (!(*(v63 + 48))(v54 + v61, 1, v62))
        {
          (*(v63 + 8))(v54 + v61, v62);
        }
      }

      else
      {

        v64 = type metadata accessor for FeedRegularPaywallModel(0);
        v65 = *(v64 + 64);
        v66 = sub_219BE4584();
        (*(*(v66 - 8) + 8))(v54 + v65, v66);

        v67 = *(v64 + 72);
        v68 = sub_219BE4314();
        v69 = *(v68 - 8);
        if (!(*(v69 + 48))(v54 + v67, 1, v68))
        {
          (*(v69 + 8))(v54 + v67, v68);
        }
      }

      v70 = (v12 + v84[6]);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v71 = type metadata accessor for FeedVideoPaywallModel(0);
        v72 = v71[5];
        v73 = sub_219BDB954();
        v74 = *(v73 - 8);
        if (!(*(v74 + 48))(v70 + v72, 1, v73))
        {
          (*(v74 + 8))(v70 + v72, v73);
        }

        v75 = v71[22];
        v76 = sub_219BE4584();
        (*(*(v76 - 8) + 8))(v70 + v75, v76);

        v77 = v71[24];
      }

      else
      {

        v78 = type metadata accessor for FeedRegularPaywallModel(0);
        v79 = *(v78 + 64);
        v80 = sub_219BE4584();
        (*(*(v80 - 8) + 8))(v70 + v79, v80);

        v77 = *(v78 + 72);
      }

      v81 = sub_219BE4314();
      v82 = *(v81 - 8);
      if (!(*(v82 + 48))(v70 + v77, 1, v81))
      {
        (*(v82 + 8))(v70 + v77, v81);
      }

      v3 = (v12 + v84[7]);
      type metadata accessor for FeedPaywallType(0);
      if (swift_getEnumCaseMultiPayload())
      {
        break;
      }

      sub_2186F6684();
      v41 = *(v83 + 48);
      v42 = sub_219BE4034();
      goto LABEL_21;
    case 8u:

      v43 = type metadata accessor for RecommendedIssuesMagazineFeedGroup();
      v44 = *(v43 + 44);
      v45 = sub_219BEF554();
      v46 = *(*(v45 - 8) + 8);
      v46(v3 + v44, v45);
      v46(v3 + *(v43 + 48), v45);
      break;
    case 9u:
      sub_2186E60B0();
      (*(*(v5 - 8) + 8))(v0 + v2, v5);
      v6 = type metadata accessor for TopicMagazineFeedGroup();
LABEL_20:
      v41 = *(v6 + 20);
      v42 = sub_219BED8D4();
      goto LABEL_21;
    case 0xCu:
      v7 = sub_219BED8D4();
      (*(*(v7 - 8) + 8))(v0 + v2, v7);
      type metadata accessor for NewspaperMagazineFeedGroup();
      swift_unknownObjectRelease();
LABEL_13:

      break;
    case 0xDu:
      sub_2186ECF58();
      (*(*(v37 - 8) + 8))(v0 + v2, v37);
      v38 = type metadata accessor for CuratedMagazineFeedGroup();
      v39 = *(v38 + 20);
      v40 = sub_219BED8D4();
      (*(*(v40 - 8) + 8))(v3 + v39, v40);
      v41 = *(v38 + 24);
      v42 = sub_219BEF8A4();
LABEL_21:
      (*(*(v42 - 8) + 8))(v3 + v41, v42);
      break;
    default:
      break;
  }

  return swift_deallocObject();
}

uint64_t sub_218929784()
{

  return swift_deallocObject();
}

uint64_t sub_218929808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_219BED8D4();
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

    return (v10 + 1);
  }
}

uint64_t sub_2189298C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_219BED8D4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_218929988()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2189299C0()
{

  return swift_deallocObject();
}

uint64_t sub_2189299F8()
{

  if (*(v0 + 96) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_218929A80()
{

  if (*(v0 + 88) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_218929B08()
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

uint64_t sub_218929CBC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_218929CF4()
{

  return swift_deallocObject();
}

uint64_t sub_218929D2C()
{

  return swift_deallocObject();
}

uint64_t sub_218929D64()
{

  return swift_deallocObject();
}

uint64_t sub_218929DAC()
{

  return swift_deallocObject();
}

uint64_t sub_218929DE8()
{

  return swift_deallocObject();
}

uint64_t sub_218929E28()
{
  sub_2186FE720();
  v2 = (*(*(v1 - 8) + 80) + 128) & ~*(*(v1 - 8) + 80);

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1(v0 + 72);

  v3 = sub_219BEC004();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_218929FFC()
{
  v1 = type metadata accessor for PuzzleModel();
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);

  sub_218B083E8(*(v0 + v2), *(v0 + v2 + 8), *(v0 + v2 + 16));
  v4 = *(v1 + 20);
  v5 = sub_219BF24E4();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v0 + v2 + v4, v5);
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21892A17C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsScoresTagFeedGroupKnobs();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21892A1E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsScoresTagFeedGroupKnobs();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21892A258()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21892A290()
{

  return swift_deallocObject();
}

uint64_t sub_21892A2D8()
{

  return swift_deallocObject();
}

uint64_t sub_21892A310()
{
  v1 = *(type metadata accessor for AudioHistoryFeedRemovalResult() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);

  v3 = sub_219BF0BD4();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_21892A40C()
{
  v1 = *(type metadata accessor for SharedWithYouFeedGapLocation(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_219B83C38(0, &qword_27CC12F80, MEMORY[0x277D33098]);
  v4 = v3;
  v5 = *(v3 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v3))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_21892A534()
{

  return swift_deallocObject();
}

uint64_t sub_21892A56C()
{

  return swift_deallocObject();
}

uint64_t sub_21892A5A4()
{

  return swift_deallocObject();
}

uint64_t sub_21892A5DC()
{
  v1 = (type metadata accessor for SharedWithYouFeedExpandRequest() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  sub_219B83C38(0, &qword_27CC12F80, MEMORY[0x277D33098]);
  v5 = v4;
  v6 = *(v4 - 8);
  if (!(*(v6 + 48))(v2 + v3, 1, v4))
  {
    (*(v6 + 8))(v2 + v3, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_21892A720@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_21892A7D8()
{
  sub_219B88610(0, &qword_27CC24168, MEMORY[0x277D6DA48]);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  __swift_destroy_boxed_opaque_existential_1(v0 + v4);

  return swift_deallocObject();
}

uint64_t sub_21892A890()
{
  sub_21896FBB0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  v1 = *(v0 + 96);
  if (v1 != 255)
  {
    sub_21896FC30(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_21892A8E8()
{
  sub_219B897C4(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
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

uint64_t sub_21892AA84(uint64_t a1, uint64_t a2)
{
  sub_218D57484();
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

uint64_t sub_21892AAF0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  sub_218D57484();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_21892AB70()
{
  v1 = sub_219BE8F74();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_21892ABF8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21892AC38()
{

  return swift_deallocObject();
}

uint64_t sub_21892AC70()
{

  return swift_deallocObject();
}

uint64_t sub_21892ACAC()
{
  sub_21896FBB0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  v1 = *(v0 + 96);
  if (v1 != 255)
  {
    sub_21896FC30(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_21892AD08()
{
  v1 = sub_219BDB954();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21892ADEC(uint64_t a1, uint64_t a2, uint64_t a3)
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

void sub_21892AEA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_21892AF60(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_219BED684();
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
    v13 = sub_219BEE6F4();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v15 = sub_219BF0354();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[13];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_21892B0D4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_219BED684();
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
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = sub_219BEE6F4();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = sub_219BF0354();
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[13];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_21892B248(uint64_t a1, uint64_t a2, uint64_t a3)
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

void sub_21892B304(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_21892B40C()
{

  return swift_deallocObject();
}

uint64_t sub_21892B484()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21892B4BC()
{
  sub_21898BF70();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_21892B580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2186DEC08(0, &qword_280E90800, MEMORY[0x277D33478]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_2186DEC08(0, &unk_280E8FD50, sub_2186DEE0C);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

void sub_21892B6C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2186DEC08(0, &qword_280E90800, MEMORY[0x277D33478]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_2186DEC08(0, &unk_280E8FD50, sub_2186DEE0C);
    v14 = *(v13 - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return;
    }

    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_21892B84C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_219BF1934();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_21892B910(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_219BF1934();
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
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21892B9D0()
{

  return swift_deallocObject();
}

uint64_t sub_21892BA0C()
{

  return swift_deallocObject();
}

uint64_t sub_21892BA48()
{
  swift_unownedRelease();

  return swift_deallocObject();
}

uint64_t sub_21892BA84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2186EF13C();
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

void sub_21892BB40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2186EF13C();
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

uint64_t sub_21892BBF8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21892BC38()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21892BC70()
{
  v1 = sub_219BDD7D4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21892BD48()
{

  return swift_deallocObject();
}

uint64_t sub_21892BD80()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21892BDB8()
{

  return swift_deallocObject();
}

uint64_t sub_21892BDF0()
{

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21892BE50()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21892BE88()
{
  v1 = sub_219BE6174();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21892BF54()
{
  v1 = *(type metadata accessor for FollowingNotificationsPrewarm() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);

  v3 = v0 + v2;
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    sub_21878D714();
    v5 = *(v4 + 48);
    v6 = sub_219BF3BD4();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v3 + v5, 1, v6))
    {
      (*(v7 + 8))(v3 + v5, v6);
    }
  }

  else
  {
    v8 = sub_219BF3BD4();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v0 + v2, 1, v8))
    {
      (*(v9 + 8))(v0 + v2, v8);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_21892C130()
{
  v1 = *(type metadata accessor for FollowingNotificationsPrewarm() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = v0 + v2;
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    sub_21878D714();
    v5 = *(v4 + 48);
    v6 = sub_219BF3BD4();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v3 + v5, 1, v6))
    {
      (*(v7 + 8))(v3 + v5, v6);
    }
  }

  else
  {
    v8 = sub_219BF3BD4();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v0 + v2, 1, v8))
    {
      (*(v9 + 8))(v0 + v2, v8);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_21892C350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2186D868C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_219BED8D4();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21892C440(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2186D868C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_219BED8D4();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21892C53C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_219BF1934();
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
    v11 = sub_219BF1214();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_21892C660(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_219BF1934();
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
    v11 = sub_219BF1214();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_21892C784()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21892C7BC()
{
  v13 = sub_219BE3514();
  v1 = *(v13 - 8);
  v11 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v2 = *(v1 + 64);
  v12 = sub_219BEB674();
  v3 = *(v12 - 8);
  v4 = (v11 + v2 + *(v3 + 80)) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_219BE3794();
  v7 = *(v6 - 8);
  v8 = (v5 + *(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v1 + 8))(v0 + v11, v13);
  (*(v3 + 8))(v0 + v4, v12);

  (*(v7 + 8))(v0 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_21892C9E0()
{
  v12 = sub_219BE3514();
  v1 = *(v12 - 8);
  v9 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v2 = *(v1 + 64);
  v11 = sub_219BEB674();
  v3 = *(v11 - 8);
  v4 = (v9 + v2 + *(v3 + 80)) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = sub_219BE3794();
  v6 = *(v10 - 8);
  v7 = (((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + *(v6 + 80) + 16) & ~*(v6 + 80);

  (*(v1 + 8))(v0 + v9, v12);
  (*(v3 + 8))(v0 + v4, v11);

  (*(v6 + 8))(v0 + v7, v10);

  return swift_deallocObject();
}

uint64_t sub_21892CBFC()
{
  v1 = sub_219BE3514();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_219BE3794();
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 16) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_21892CD80()
{
  v1 = (type metadata accessor for EngagementPresentation() - 8);
  v21 = *(*v1 + 80);
  v18 = *(*v1 + 64);
  v2 = sub_219BE3794();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v16 = *(v3 + 64);
  v5 = sub_219BE3514();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);

  v19 = (v21 + 24) & ~v21;
  v17 = v5;
  v15 = *(v6 + 8);
  v15(v0 + v19, v5);

  v8 = *(v3 + 8);
  v20 = v2;
  v8(v0 + v19 + v1[8], v2);

  v9 = v1[10];
  v10 = sub_219BE3C04();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v19 + v9, 1, v10))
  {
    (*(v11 + 8))(v0 + v19 + v9, v10);
  }

  v12 = (v19 + v18 + v4) & ~v4;
  v13 = (v12 + v16 + v7) & ~v7;
  v8(v0 + v12, v20);
  v15(v0 + v13, v17);

  return swift_deallocObject();
}

uint64_t sub_21892D02C()
{
  v1 = sub_219BE3514();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_219BE3794();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_21892D190()
{

  return swift_deallocObject();
}

uint64_t sub_21892D1D0()
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

uint64_t sub_21892D384()
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

uint64_t sub_21892D57C()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21892D5B4()
{
  sub_219BBE508();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_21892D63C()
{

  return swift_deallocObject();
}

uint64_t sub_21892D674()
{
  sub_219BBE4A0();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 8);
  v5 = *(v3 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = (*(v3 + 64) + v5 + v6) & ~v5;
  v4(v0 + v6, v1);
  v4(v0 + v7, v2);

  return swift_deallocObject();
}

uint64_t sub_21892D730()
{
  v1 = sub_219BF1F44();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (type metadata accessor for PuzzleSettingsItem() - 8);
  v6 = (v3 + v4 + *(*v5 + 80)) & ~*(*v5 + 80);

  v7 = *(v2 + 8);
  v7(v0 + v3, v1);

  v8 = v0 + v6 + v5[9];
  type metadata accessor for PuzzleSetting();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v7(v8, v1);
  }

  else if (!EnumCaseMultiPayload)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21892D8C8()
{
  v1 = (type metadata accessor for PuzzleSettingsItem() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v0 + v2 + v1[9];
  type metadata accessor for PuzzleSetting();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v5 = sub_219BF1F44();
    (*(*(v5 - 8) + 8))(v3, v5);
  }

  else if (!EnumCaseMultiPayload)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21892D9F8()
{

  return swift_deallocObject();
}

uint64_t sub_21892DA38()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21892DA70()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_21892DAB0()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21892DAE8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21892DB40()
{
  v1 = *(v0 + 32);
  if (v1 != 255)
  {
    sub_21896755C(*(v0 + 16), *(v0 + 24), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_21892DB84()
{
  sub_218932F9C(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_21892DC88()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21892DCD0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21892DD08()
{

  return swift_deallocObject();
}

uint64_t sub_21892DD40()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21892DD78()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21892DE58()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_21892DEB4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  *a2 = v3;
  a2[1] = v2;
}

uint64_t get_enum_tag_for_layout_string_7NewsUI224SportsScoreSortingConfigVSg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21892DF38@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return sub_218B87528(v3, v2);
}

uint64_t get_enum_tag_for_layout_string_7NewsUI219ChannelPickerModuleVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21892E67C(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v54 = a2;
  sub_218932330(0, &qword_280EE4B08, MEMORY[0x277D6DF88]);
  v6 = v5;
  v53 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v52 = v41 - v7;
  sub_2189320DC();
  v55 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218932138();
  MEMORY[0x28223BE20](v12 - 8);
  v48 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218932330(0, &qword_280EE5990, MEMORY[0x277D6D710]);
  v15 = v14;
  v47 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v46 = v41 - v16;
  sub_218932204();
  MEMORY[0x28223BE20](v17 - 8);
  sub_218932330(0, &qword_280EE3650, MEMORY[0x277D6EC60]);
  v19 = v18;
  v51 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = v41 - v20;
  v22 = sub_2189322D0(&qword_280EE59A0);
  v23 = sub_2189322D0(&qword_280EE59A8);
  v49 = v15;
  v24 = v22;
  v25 = v21;
  MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v15, v24, v23);
  v26 = sub_218931D04();
  sub_218931D5C();
  v27 = a3;
  sub_219BEB2D4();
  v28 = *(v50 + 16);
  if (v28)
  {
    v29 = v50;
    v41[1] = v26;
    v42 = v25;
    v43 = v19;
    v44 = v6;
    v45 = v27;
    sub_219822EE8(v63);
    v59 = v63[0];
    v60 = v63[1];
    v61 = v64;
    v62 = v65;
    v58 = MEMORY[0x277D84F90];
    sub_218C34090(0, v28, 0);
    v30 = v58;
    v31 = (v29 + 40);
    do
    {
      v32 = *v31;
      v56 = *(v31 - 1);
      v57 = v32;

      sub_219BE5FB4();
      v58 = v30;
      v34 = *(v30 + 16);
      v33 = *(v30 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_218C34090(v33 > 1, v34 + 1, 1);
        v30 = v58;
      }

      *(v30 + 16) = v34 + 1;
      (*(v9 + 32))(v30 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v34, v11, v55);
      v31 += 2;
      --v28;
    }

    while (v28);
    v35 = sub_218751280(&qword_280EE5C20, sub_2189320DC);
    v36 = sub_218751280(&qword_280EE5C28, sub_2189320DC);
    MEMORY[0x21CEB9170](v30, v55, v35, v36);
    v37 = v46;
    sub_219BE6924();
    v19 = v43;
    v25 = v42;
    sub_219BEB1E4();
    (*(v47 + 8))(v37, v49);
    v6 = v44;
  }

  v38 = v25;
  v39 = v52;
  sub_219BE85C4();
  v54(v39);
  (*(v53 + 8))(v39, v6);
  return (*(v51 + 8))(v38, v19);
}

uint64_t sub_21892ECFC(uint64_t a1)
{
  v2 = sub_2189323B4();

  return MEMORY[0x2821D4040](a1, v2);
}

uint64_t sub_21892ED98()
{
  v1 = *v0;
  sub_219BF7AA4();
  MEMORY[0x21CECE850](v1);
  return sub_219BF7AE4();
}

uint64_t sub_21892EDE0()
{
  v1 = *v0;
  sub_219BF7AA4();
  MEMORY[0x21CECE850](v1);
  return sub_219BF7AE4();
}

uint64_t sub_21892EE24(uint64_t a1, id *a2)
{
  result = sub_219BF53F4();
  *a2 = 0;
  return result;
}

uint64_t sub_21892EE9C(uint64_t a1, id *a2)
{
  v3 = sub_219BF5404();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_21892EF1C@<X0>(uint64_t *a1@<X8>)
{
  sub_219BF5414();
  v2 = sub_219BF53D4();

  *a1 = v2;
  return result;
}

uint64_t sub_21892EF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t *))
{
  v9 = 0;
  v10 = 1;
  result = a5(a1, &v9);
  v7 = v9;
  v8 = v10;
  if (v10)
  {
    v7 = 0;
  }

  *a2 = v7;
  *(a2 + 8) = v8;
  return result;
}

uint64_t sub_21892F004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t *))
{
  v10 = 0;
  v11 = 1;
  v6 = a5(a1, &v10);
  v7 = v10;
  v8 = v11;
  if (v11)
  {
    v7 = 0;
  }

  *a2 = v7;
  *(a2 + 8) = v8;
  return v6 & 1;
}

uint64_t sub_21892F060@<X0>(uint64_t *a1@<X8>)
{
  result = sub_219BF5DD4();
  *a1 = result;
  return result;
}

uint64_t sub_21892F088@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2198DC75C();

  *a1 = v2;
  return result;
}

uint64_t sub_21892F0D8(uint64_t a1)
{
  v2 = sub_218751280(&qword_27CC0A740, type metadata accessor for AVError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_21892F144(uint64_t a1)
{
  v2 = sub_218751280(&qword_27CC0A740, type metadata accessor for AVError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_21892F1B0(void *a1, uint64_t a2)
{
  v4 = sub_218751280(&qword_27CC0A740, type metadata accessor for AVError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_21892F240(uint64_t a1, uint64_t a2)
{
  v4 = sub_218751280(&qword_27CC0A740, type metadata accessor for AVError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_21892F2CC(uint64_t a1)
{
  v2 = sub_218751280(&unk_27CC0A6F0, type metadata accessor for SKError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_21892F338(uint64_t a1)
{
  v2 = sub_218751280(&unk_27CC0A6F0, type metadata accessor for SKError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_21892F3A4(void *a1, uint64_t a2)
{
  v4 = sub_218751280(&unk_27CC0A6F0, type metadata accessor for SKError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_21892F434(uint64_t a1, uint64_t a2)
{
  v4 = sub_218751280(&unk_27CC0A6F0, type metadata accessor for SKError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_21892F4B0()
{
  sub_219BF7AA4();
  sub_219BF52F4();
  return sub_219BF7AE4();
}

double sub_21892F510@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_21892F51C()
{
  sub_218751280(&qword_27CC0A7A0, type metadata accessor for Weight);
  sub_218751280(&qword_27CC0A7A8, type metadata accessor for Weight);
  sub_218932408();
  return sub_219BF7604();
}

uint64_t sub_21892F5E4()
{
  sub_218751280(&qword_27CC0A808, type metadata accessor for ActivityType);
  sub_218751280(&qword_27CC0A810, type metadata accessor for ActivityType);

  return sub_219BF7604();
}

uint64_t sub_21892F6A0()
{
  sub_218751280(&qword_27CC0A370, type metadata accessor for FCOperationPurpose);
  sub_218751280(&qword_27CC0A378, type metadata accessor for FCOperationPurpose);

  return sub_219BF7604();
}

uint64_t sub_21892F75C()
{
  sub_218751280(&qword_280E8E118, type metadata accessor for Key);
  sub_218751280(&unk_27CC0A7E0, type metadata accessor for Key);

  return sub_219BF7604();
}

uint64_t sub_21892F818()
{
  sub_218751280(&qword_27CC0A790, type metadata accessor for Name);
  sub_218751280(&qword_27CC0A798, type metadata accessor for Name);

  return sub_219BF7604();
}

uint64_t sub_21892F8D4()
{
  sub_218751280(&qword_27CC0A360, type metadata accessor for UIContentSizeCategory);
  sub_218751280(&qword_27CC0A368, type metadata accessor for UIContentSizeCategory);

  return sub_219BF7604();
}

uint64_t sub_21892F990()
{
  sub_218751280(&unk_280E8DC50, type metadata accessor for OpenURLOptionsKey);
  sub_218751280(&qword_27CC0A788, type metadata accessor for OpenURLOptionsKey);

  return sub_219BF7604();
}

uint64_t sub_21892FA4C()
{
  sub_218751280(&qword_27CC0A770, type metadata accessor for OpenExternalURLOptionsKey);
  sub_218751280(&unk_27CC0A778, type metadata accessor for OpenExternalURLOptionsKey);

  return sub_219BF7604();
}

uint64_t sub_21892FB08()
{
  sub_218751280(&qword_27CC0A7F8, type metadata accessor for Identifier);
  sub_218751280(&qword_27CC0A800, type metadata accessor for Identifier);

  return sub_219BF7604();
}

uint64_t sub_21892FBC4()
{
  sub_218751280(&qword_280E8E508, type metadata accessor for URLResourceKey);
  sub_218751280(&qword_27CC0A7F0, type metadata accessor for URLResourceKey);

  return sub_219BF7604();
}

uint64_t sub_21892FC80()
{
  sub_218751280(&qword_27CC0A748, type metadata accessor for NSKeyValueChangeKey);
  sub_218751280(&qword_27CC0A750, type metadata accessor for NSKeyValueChangeKey);

  return sub_219BF7604();
}

uint64_t sub_21892FD3C(uint64_t a1)
{
  v2 = sub_218751280(&qword_27CC0A710, type metadata accessor for AVError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_21892FDA8(uint64_t a1)
{
  v2 = sub_218751280(&qword_27CC0A710, type metadata accessor for AVError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_21892FE14(uint64_t a1)
{
  v2 = sub_218751280(&qword_27CC0A740, type metadata accessor for AVError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_21892FE80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_218751280(&qword_27CC0A740, type metadata accessor for AVError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_21892FF04()
{
  sub_218751280(&qword_27CC0A758, type metadata accessor for LaunchOptionsKey);
  sub_218751280(&unk_27CC0A760, type metadata accessor for LaunchOptionsKey);

  return sub_219BF7604();
}

uint64_t sub_21892FFC0(uint64_t a1)
{
  v2 = sub_218751280(&qword_27CC0A6B8, type metadata accessor for SKError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_21893002C(uint64_t a1)
{
  v2 = sub_218751280(&qword_27CC0A6B8, type metadata accessor for SKError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_218930098(uint64_t a1)
{
  v2 = sub_218751280(&unk_27CC0A6F0, type metadata accessor for SKError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_218930104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_218751280(&unk_27CC0A6F0, type metadata accessor for SKError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_218930188()
{
  sub_218751280(&qword_280E8DC98, type metadata accessor for AttributeName);
  sub_218751280(&unk_27CC0A7D0, type metadata accessor for AttributeName);

  return sub_219BF7604();
}

uint64_t sub_218930244@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_219BF53D4();

  *a1 = v2;
  return result;
}

uint64_t sub_21893028C()
{
  sub_218751280(&unk_280E8DE00, type metadata accessor for TraitKey);
  sub_218751280(&unk_27CC0A7C0, type metadata accessor for TraitKey);

  return sub_219BF7604();
}

uint64_t sub_2189304F8()
{
  sub_218751280(&qword_27CC0A350, type metadata accessor for UIBackgroundTaskIdentifier);
  sub_218751280(&qword_27CC0A358, type metadata accessor for UIBackgroundTaskIdentifier);
  return sub_219BF7604();
}

uint64_t sub_2189305BC()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x21CECE870](*&v1);
}

uint64_t sub_218930610()
{
  v0 = sub_219BF5414();
  v1 = MEMORY[0x21CECC3E0](v0);

  return v1;
}

uint64_t sub_21893064C()
{
  sub_219BF5414();
  sub_219BF5524();
}

uint64_t sub_2189306A0()
{
  sub_219BF5414();
  sub_219BF7AA4();
  sub_219BF5524();
  v0 = sub_219BF7AE4();

  return v0;
}

uint64_t sub_218930A98()
{
  v0 = sub_219BF5414();
  v2 = v1;
  if (v0 == sub_219BF5414() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_219BF78F4();
  }

  return v5 & 1;
}

uint64_t sub_218930D30(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_218930D50(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

unint64_t sub_218931BC4()
{
  result = qword_27CC0A6E0;
  if (!qword_27CC0A6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0A6E0);
  }

  return result;
}

unint64_t sub_218931CAC()
{
  result = qword_280E9F1D8;
  if (!qword_280E9F1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9F1D8);
  }

  return result;
}

unint64_t sub_218931D04()
{
  result = qword_280EB7280;
  if (!qword_280EB7280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB7280);
  }

  return result;
}

unint64_t sub_218931D5C()
{
  result = qword_280ED9AC0;
  if (!qword_280ED9AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED9AC0);
  }

  return result;
}

void sub_2189320DC()
{
  if (!qword_280EE5C10)
  {
    sub_218931D5C();
    v0 = sub_219BE5FE4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE5C10);
    }
  }
}

void sub_218932138()
{
  if (!qword_280EE7518)
  {
    sub_2189320DC();
    sub_218751280(&qword_280EE5C20, sub_2189320DC);
    sub_218751280(&qword_280EE5C28, sub_2189320DC);
    v0 = sub_219BE2454();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE7518);
    }
  }
}

void sub_218932204()
{
  if (!qword_280EE74D8)
  {
    sub_218932330(255, &qword_280EE5990, MEMORY[0x277D6D710]);
    sub_2189322D0(&qword_280EE59A0);
    sub_2189322D0(&qword_280EE59A8);
    v0 = sub_219BE2454();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE74D8);
    }
  }
}

uint64_t sub_2189322D0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_218932330(255, &qword_280EE5990, MEMORY[0x277D6D710]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_218932330(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for SearchHomeSectionDescriptor;
    v8[1] = &type metadata for SearchHomeModel;
    v8[2] = sub_218931D04();
    v8[3] = sub_218931D5C();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_2189323B4()
{
  result = qword_280E9F1E8[0];
  if (!qword_280E9F1E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E9F1E8);
  }

  return result;
}

unint64_t sub_218932408()
{
  result = qword_27CC0A7B0;
  if (!qword_27CC0A7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0A7B0);
  }

  return result;
}

uint64_t sub_218932540(uint64_t a1)
{
  v64 = a1;
  sub_218932F00(0);
  MEMORY[0x28223BE20](v2 - 8);
  v54 = v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218932F34(0);
  MEMORY[0x28223BE20](v4 - 8);
  v53 = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BF1324();
  MEMORY[0x28223BE20](v6 - 8);
  v51[1] = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BF1C74();
  MEMORY[0x28223BE20](v8 - 8);
  v51[2] = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BF2A04();
  MEMORY[0x28223BE20](v10 - 8);
  v51[0] = v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218932F68(0);
  v56 = *(v12 - 8);
  v57 = v12;
  MEMORY[0x28223BE20](v12);
  v55 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BE9414();
  v15 = *(v14 - 8);
  v62 = v14;
  v63 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_219BDE294();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_219BDEE04();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = v51 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v1;
  v61 = *(v1 + 16);
  sub_2187B2C48();
  v30 = v29;
  v31 = swift_allocBox();
  v33 = v32;
  v59 = *(v30 + 48);
  v60 = v31;
  sub_2187B2DA0();
  v58 = *(v34 + 48);
  sub_219BDE8D4();
  sub_219BDEDE4();
  v35 = sub_219BDB954();
  (*(*(v35 - 8) + 56))(v24, 1, 1, v35);
  (*(v19 + 104))(v21, *MEMORY[0x277D2FF08], v18);
  sub_219BDD904();
  (*(v19 + 8))(v21, v18);
  v36 = v62;
  sub_2187BC270(v24, sub_21873F65C);
  (*(v26 + 8))(v28, v25);
  v37 = v63;
  v38 = v59;
  *(v33 + v58) = 0;
  *(v33 + v38) = MEMORY[0x277D84F90];
  *&v65 = v60 | 2;
  (*(v37 + 104))(v17, *MEMORY[0x277D6E598], v36);
  sub_219BE6474();
  v39 = v52;
  (*(v37 + 8))(v17, v36);
  sub_218932F9C(v65);
  if (sub_219BDE8C4())
  {
    v40 = sub_219BEACD4();
  }

  else
  {
    v40 = sub_219BEABF4();
  }

  v62 = v40;
  v42 = v56;
  v41 = v57;
  v43 = v55;
  v67 = sub_219BDE8D4();
  sub_219BDE8B4();
  sub_219BDE894();
  sub_219BDE8A4();
  sub_218731D50();
  v65 = 0u;
  v66 = 0u;
  sub_219BF2564();
  v44 = *(v39 + 80);
  swift_getObjectType();
  v45 = v53;
  (*(v42 + 16))(v53, v43, v41);
  (*(v42 + 56))(v45, 0, 1, v41);
  v63 = v44;
  sub_219BE7094();
  sub_2187BC270(v45, sub_218932F34);
  if (sub_219BDE884())
  {
    sub_219BEA984();
  }

  else
  {
    sub_219BEA964();
  }

  v46 = *MEMORY[0x277D6EBF8];
  v47 = sub_219BEA994();
  v48 = *(v47 - 8);
  v49 = v54;
  (*(v48 + 104))(v54, v46, v47);
  (*(v48 + 56))(v49, 0, 1, v47);
  sub_219BE7094();

  sub_2187BC270(v49, sub_218932F00);
  (*(v56 + 8))(v55, v57);
  return 1;
}

uint64_t sub_218932E5C()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 88);

  return swift_deallocClassInstance();
}

unint64_t sub_218932F9C(unint64_t result)
{
  switch((result >> 58) & 0x3C | (result >> 1) & 3)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x14uLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
    case 0x1AuLL:
    case 0x1BuLL:
    case 0x1CuLL:
    case 0x1DuLL:
    case 0x1EuLL:
    case 0x1FuLL:
    case 0x20uLL:
    case 0x21uLL:
    case 0x22uLL:
    case 0x23uLL:
    case 0x24uLL:
    case 0x25uLL:
    case 0x26uLL:
    case 0x27uLL:
    case 0x28uLL:
    case 0x29uLL:
    case 0x2AuLL:
    case 0x2BuLL:
    case 0x2CuLL:
    case 0x2DuLL:
    case 0x2EuLL:
    case 0x2FuLL:
    case 0x30uLL:
    case 0x31uLL:
    case 0x32uLL:
    case 0x33uLL:
    case 0x34uLL:
    case 0x35uLL:
    case 0x36uLL:
    case 0x37uLL:
    case 0x38uLL:
    case 0x39uLL:
    case 0x3AuLL:
    case 0x3BuLL:

      break;
    default:
      return result;
  }

  return result;
}

void sub_218932FF4()
{
  if (!qword_27CC0AD20)
  {
    v0 = type metadata accessor for MagazineCatalogSectionHeaderViewLayoutAttributes();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0AD20);
    }
  }
}

uint64_t type metadata accessor for MagazineCatalogLayoutSectionDescriptor()
{
  result = qword_27CC0AD28;
  if (!qword_27CC0AD28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21893309C()
{
  sub_218932FF4();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_2189330F4()
{
  v1 = v0;
  v2 = type metadata accessor for MagazineCatalogSectionHeaderViewLayoutAttributes();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189333F0(v1, v7);
  sub_218932FF4();
  v9 = (*(*(v8 - 8) + 48))(v7, 1, v8);
  result = 0;
  if (v9 != 1)
  {
    sub_218933454(v7, v5);
    sub_2189334B8();
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_219C09BA0;
    *(v11 + 56) = v2;
    *(v11 + 64) = sub_218933574(&qword_27CC0AD40, type metadata accessor for MagazineCatalogSectionHeaderViewLayoutAttributes);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v11 + 32));
    sub_218933454(v5, boxed_opaque_existential_1);
    return v11;
  }

  return result;
}

uint64_t sub_218933288(uint64_t a1)
{
  v2 = sub_218933574(&qword_27CC0AD48, type metadata accessor for MagazineCatalogLayoutSectionDescriptor);

  return MEMORY[0x2821D5BC0](a1, v2);
}

uint64_t sub_2189332F4(uint64_t a1)
{
  v2 = sub_218933574(&qword_27CC0E6A0, type metadata accessor for MagazineCatalogLayoutSectionDescriptor);

  return MEMORY[0x2821D5688](a1, v2);
}

uint64_t sub_2189333F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagazineCatalogLayoutSectionDescriptor();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218933454(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagazineCatalogSectionHeaderViewLayoutAttributes();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2189334B8()
{
  if (!qword_280E8BD90)
  {
    sub_218933510();
    v0 = sub_219BF78A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8BD90);
    }
  }
}

unint64_t sub_218933510()
{
  result = qword_280EE3B38;
  if (!qword_280EE3B38)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280EE3B38);
  }

  return result;
}

uint64_t sub_218933574(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for PuzzleArchiveTagFeedGroupConfigData()
{
  result = qword_280E9CBB0;
  if (!qword_280E9CBB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218933630@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BF1934();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v18 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218933CC4(0, &qword_280E8C8A0, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218933C70();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v16;
    v11 = v17;
    v19 = 1;
    sub_218933D7C(&qword_280E90808);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    *v11 = 36;
    v13 = type metadata accessor for PuzzleArchiveTagFeedGroupConfigData();
    (*(v12 + 32))(&v11[*(v13 + 20)], v18, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t _s7NewsUI20A9Activity2O15MySportsOnboardO9hashValueSivg_0()
{
  v1 = *v0;
  sub_219BF7AA4();
  MEMORY[0x21CECE850](v1);
  return sub_219BF7AE4();
}

uint64_t sub_2189338E0()
{
  if (*v0)
  {
    return 0x746E65746E6F63;
  }

  else
  {
    return 1684957547;
  }
}

uint64_t sub_218933914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v5 || (sub_219BF78F4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_219BF78F4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2189339FC(uint64_t a1)
{
  v2 = sub_218933C70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218933A38(uint64_t a1)
{
  v2 = sub_218933C70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218933A74(void *a1)
{
  v3 = v1;
  sub_218933CC4(0, &qword_27CC0AD50, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218933C70();
  sub_219BF7B44();
  v11[15] = *v3;
  v11[14] = 0;
  sub_218933D28();
  sub_219BF7834();
  if (!v2)
  {
    type metadata accessor for PuzzleArchiveTagFeedGroupConfigData();
    v11[13] = 1;
    sub_219BF1934();
    sub_218933D7C(&qword_280E90810);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_218933C70()
{
  result = qword_280E9CBE8;
  if (!qword_280E9CBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9CBE8);
  }

  return result;
}

void sub_218933CC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218933C70();
    v7 = a3(a1, &type metadata for PuzzleArchiveTagFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218933D28()
{
  result = qword_280ED7608;
  if (!qword_280ED7608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED7608);
  }

  return result;
}

uint64_t sub_218933D7C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_219BF1934();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_218933DD4()
{
  result = qword_27CC0AD58;
  if (!qword_27CC0AD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0AD58);
  }

  return result;
}

unint64_t sub_218933E2C()
{
  result = qword_280E9CBD8;
  if (!qword_280E9CBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9CBD8);
  }

  return result;
}

unint64_t sub_218933E84()
{
  result = qword_280E9CBE0;
  if (!qword_280E9CBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9CBE0);
  }

  return result;
}

uint64_t sub_218933F00@<X0>(uint64_t a1@<X0>, int *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, unint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v676 = a8;
  v677 = a7;
  v678 = a6;
  v679 = a5;
  v680 = a4;
  LODWORD(v650) = a3;
  v687 = a2;
  v613 = a1;
  v690 = a9;
  sub_21893CF78(0, qword_280EA8D00, type metadata accessor for NewspaperMagazineFeedGroupKnobs);
  MEMORY[0x28223BE20](v16 - 8);
  v664 = &v553 - v17;
  v663 = type metadata accessor for NewspaperMagazineFeedGroupKnobs();
  v648 = *(v663 - 8);
  v18 = MEMORY[0x28223BE20](v663);
  v605 = &v553 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v649 = &v553 - v20;
  sub_21893CF78(0, qword_280EA0FE0, type metadata accessor for BestOfBundleMagazineFeedGroupKnobs);
  MEMORY[0x28223BE20](v21 - 8);
  v665 = &v553 - v22;
  v675 = type metadata accessor for BestOfBundleMagazineFeedGroupKnobs();
  v646 = *(v675 - 8);
  v23 = MEMORY[0x28223BE20](v675);
  v645 = &v553 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v647 = &v553 - v25;
  sub_21893CF78(0, qword_280EAA120, type metadata accessor for TrendingMagazineFeedGroupKnobs);
  MEMORY[0x28223BE20](v26 - 8);
  v662 = &v553 - v27;
  v674 = type metadata accessor for TrendingMagazineFeedGroupKnobs();
  v684 = *(v674 - 8);
  v28 = MEMORY[0x28223BE20](v674);
  v30 = &v553 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v644 = &v553 - v31;
  sub_21893CF78(0, qword_280EB61C0, type metadata accessor for TopicMagazineFeedGroupKnobs);
  MEMORY[0x28223BE20](v32 - 8);
  v661 = &v553 - v33;
  v673 = type metadata accessor for TopicMagazineFeedGroupKnobs();
  v683 = *(v673 - 8);
  v34 = MEMORY[0x28223BE20](v673);
  v598 = &v553 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v639 = &v553 - v36;
  sub_21893CF78(0, qword_280E96AE0, type metadata accessor for RecommendedIssuesMagazineFeedGroupKnobs);
  MEMORY[0x28223BE20](v37 - 8);
  v660 = &v553 - v38;
  v659 = type metadata accessor for RecommendedIssuesMagazineFeedGroupKnobs();
  v682 = *(v659 - 8);
  v39 = MEMORY[0x28223BE20](v659);
  v635 = &v553 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v636 = &v553 - v41;
  sub_21893CF78(0, &qword_280EAF818, type metadata accessor for PaywallMagazineFeedGroupKnobs);
  MEMORY[0x28223BE20](v42 - 8);
  v658 = &v553 - v43;
  v657 = type metadata accessor for PaywallMagazineFeedGroupKnobs();
  v632 = *(v657 - 8);
  v44 = MEMORY[0x28223BE20](v657);
  v588 = &v553 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v633 = &v553 - v46;
  sub_21893CF78(0, qword_280EAC0A0, type metadata accessor for NewIssueMagazineFeedGroupKnobs);
  MEMORY[0x28223BE20](v47 - 8);
  v656 = &v553 - v48;
  v672 = type metadata accessor for NewIssueMagazineFeedGroupKnobs();
  v681 = *(v672 - 8);
  v49 = MEMORY[0x28223BE20](v672);
  v630 = &v553 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v655 = &v553 - v51;
  v554 = sub_219BEE3E4();
  v553 = *(v554 - 8);
  MEMORY[0x28223BE20](v554);
  v555 = &v553 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21893CF78(0, qword_280EA3068, type metadata accessor for MyMagazinesMagazineFeedGroupKnobs);
  MEMORY[0x28223BE20](v53 - 8);
  v685 = &v553 - v54;
  v670 = type metadata accessor for MyMagazinesMagazineFeedGroupKnobs();
  v669 = *(v670 - 8);
  v55 = MEMORY[0x28223BE20](v670);
  v628 = &v553 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55);
  v629 = &v553 - v57;
  sub_21893CF78(0, &qword_280E983F0, type metadata accessor for InlineCategoriesMagazineFeedGroupKnobs);
  MEMORY[0x28223BE20](v58 - 8);
  v625 = &v553 - v59;
  v653 = type metadata accessor for InlineCategoriesMagazineFeedGroupKnobs();
  v668 = *(v653 - 8);
  v60 = MEMORY[0x28223BE20](v653);
  v572 = &v553 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v60);
  v624 = &v553 - v62;
  sub_21893CF78(0, qword_280E9DAE8, type metadata accessor for FeaturedIssueMagazineFeedGroupKnobs);
  MEMORY[0x28223BE20](v63 - 8);
  v652 = &v553 - v64;
  v671 = type metadata accessor for FeaturedIssueMagazineFeedGroupKnobs();
  v667 = *(v671 - 1);
  v65 = MEMORY[0x28223BE20](v671);
  v620 = &v553 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v65);
  v621 = &v553 - v67;
  sub_21893CF78(0, qword_280E94EA0, type metadata accessor for FeaturedIssueArticleMagazineFeedGroupKnobs);
  MEMORY[0x28223BE20](v68 - 8);
  v651 = &v553 - v69;
  v616 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroupKnobs();
  v666 = *(v616 - 8);
  v70 = MEMORY[0x28223BE20](v616);
  v615 = &v553 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v70);
  v618 = &v553 - v72;
  v73 = MEMORY[0x277D32318];
  sub_21893C3CC(0, &qword_280E91830, MEMORY[0x277D32318]);
  v689 = v74;
  v691 = *(v74 - 8);
  v75 = MEMORY[0x28223BE20](v74);
  v77 = &v553 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = MEMORY[0x28223BE20](v75);
  v597 = &v553 - v79;
  v80 = MEMORY[0x28223BE20](v78);
  v592 = &v553 - v81;
  v82 = MEMORY[0x28223BE20](v80);
  v585 = &v553 - v83;
  v84 = MEMORY[0x28223BE20](v82);
  v580 = &v553 - v85;
  v86 = MEMORY[0x28223BE20](v84);
  v574 = &v553 - v87;
  v88 = MEMORY[0x28223BE20](v86);
  v566 = &v553 - v89;
  v90 = MEMORY[0x28223BE20](v88);
  v562 = &v553 - v91;
  MEMORY[0x28223BE20](v90);
  v557 = &v553 - v92;
  sub_21893CF78(0, &qword_280E92530, MEMORY[0x277D31D70]);
  MEMORY[0x28223BE20](v93 - 8);
  v688 = &v553 - v94;
  v95 = MEMORY[0x277D321A0];
  sub_21893C3CC(0, &qword_280E919C0, MEMORY[0x277D321A0]);
  v692 = v96;
  v686 = *(v96 - 8);
  v97 = MEMORY[0x28223BE20](v96);
  v603 = &v553 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = MEMORY[0x28223BE20](v97);
  v604 = &v553 - v100;
  v101 = MEMORY[0x28223BE20](v99);
  v641 = &v553 - v102;
  v103 = MEMORY[0x28223BE20](v101);
  v600 = &v553 - v104;
  v105 = MEMORY[0x28223BE20](v103);
  v594 = &v553 - v106;
  v107 = MEMORY[0x28223BE20](v105);
  v595 = &v553 - v108;
  v109 = MEMORY[0x28223BE20](v107);
  v589 = &v553 - v110;
  v111 = MEMORY[0x28223BE20](v109);
  v590 = &v553 - v112;
  v113 = MEMORY[0x28223BE20](v111);
  v581 = &v553 - v114;
  v115 = MEMORY[0x28223BE20](v113);
  v582 = &v553 - v116;
  v117 = MEMORY[0x28223BE20](v115);
  v577 = &v553 - v118;
  v119 = MEMORY[0x28223BE20](v117);
  v578 = &v553 - v120;
  v121 = MEMORY[0x28223BE20](v119);
  v570 = &v553 - v122;
  v123 = MEMORY[0x28223BE20](v121);
  v571 = &v553 - v124;
  v125 = MEMORY[0x28223BE20](v123);
  v568 = &v553 - v126;
  v127 = MEMORY[0x28223BE20](v125);
  v569 = &v553 - v128;
  v129 = MEMORY[0x28223BE20](v127);
  v563 = &v553 - v130;
  v131 = MEMORY[0x28223BE20](v129);
  v564 = &v553 - v132;
  v133 = MEMORY[0x28223BE20](v131);
  v558 = &v553 - v134;
  v135 = MEMORY[0x28223BE20](v133);
  v559 = &v553 - v136;
  v137 = MEMORY[0x28223BE20](v135);
  v139 = &v553 - v138;
  MEMORY[0x28223BE20](v137);
  v556 = &v553 - v140;
  sub_21893C468(0, &unk_280E91820, &qword_280E91830, v73);
  v142 = MEMORY[0x28223BE20](v141 - 8);
  v599 = &v553 - ((v143 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = MEMORY[0x28223BE20](v142);
  v640 = &v553 - v145;
  v146 = MEMORY[0x28223BE20](v144);
  v593 = &v553 - v147;
  v148 = MEMORY[0x28223BE20](v146);
  v637 = &v553 - v149;
  v150 = MEMORY[0x28223BE20](v148);
  v587 = &v553 - v151;
  v152 = MEMORY[0x28223BE20](v150);
  v586 = &v553 - v153;
  v154 = MEMORY[0x28223BE20](v152);
  v654 = &v553 - v155;
  v156 = MEMORY[0x28223BE20](v154);
  v583 = &v553 - v157;
  v158 = MEMORY[0x28223BE20](v156);
  v576 = &v553 - v159;
  v160 = MEMORY[0x28223BE20](v158);
  v575 = &v553 - v161;
  v162 = MEMORY[0x28223BE20](v160);
  v607 = &v553 - v163;
  v164 = MEMORY[0x28223BE20](v162);
  v623 = &v553 - v165;
  v166 = MEMORY[0x28223BE20](v164);
  v565 = &v553 - v167;
  v168 = MEMORY[0x28223BE20](v166);
  v617 = &v553 - v169;
  v170 = MEMORY[0x28223BE20](v168);
  v560 = &v553 - v171;
  v172 = MEMORY[0x28223BE20](v170);
  v174 = &v553 - v173;
  v175 = MEMORY[0x28223BE20](v172);
  v177 = &v553 - v176;
  MEMORY[0x28223BE20](v175);
  v610 = &v553 - v178;
  sub_21893C468(0, &unk_280E919B0, &qword_280E919C0, v95);
  v180 = MEMORY[0x28223BE20](v179 - 8);
  v642 = &v553 - ((v181 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = MEMORY[0x28223BE20](v180);
  v643 = &v553 - v183;
  v184 = MEMORY[0x28223BE20](v182);
  v596 = &v553 - v185;
  v186 = MEMORY[0x28223BE20](v184);
  v638 = &v553 - v187;
  v188 = MEMORY[0x28223BE20](v186);
  v591 = &v553 - v189;
  v190 = MEMORY[0x28223BE20](v188);
  v634 = &v553 - v191;
  v192 = MEMORY[0x28223BE20](v190);
  v584 = &v553 - v193;
  v194 = MEMORY[0x28223BE20](v192);
  v631 = &v553 - v195;
  v196 = MEMORY[0x28223BE20](v194);
  v579 = &v553 - v197;
  v198 = MEMORY[0x28223BE20](v196);
  v627 = &v553 - v199;
  v200 = MEMORY[0x28223BE20](v198);
  v573 = &v553 - v201;
  v202 = MEMORY[0x28223BE20](v200);
  v626 = &v553 - v203;
  v204 = MEMORY[0x28223BE20](v202);
  v567 = &v553 - v205;
  v206 = MEMORY[0x28223BE20](v204);
  v622 = &v553 - v207;
  v208 = MEMORY[0x28223BE20](v206);
  v606 = &v553 - v209;
  v210 = MEMORY[0x28223BE20](v208);
  v619 = &v553 - v211;
  v212 = MEMORY[0x28223BE20](v210);
  v561 = &v553 - v213;
  v214 = MEMORY[0x28223BE20](v212);
  v614 = &v553 - v215;
  v216 = MEMORY[0x28223BE20](v214);
  v611 = &v553 - v217;
  v218 = MEMORY[0x28223BE20](v216);
  v612 = &v553 - v219;
  v220 = MEMORY[0x28223BE20](v218);
  v222 = &v553 - v221;
  MEMORY[0x28223BE20](v220);
  v608 = &v553 - v223;
  sub_21893CF78(0, qword_280E99AE8, type metadata accessor for FeaturedArticleMagazineFeedGroupKnobs);
  MEMORY[0x28223BE20](v224 - 8);
  v226 = &v553 - v225;
  v227 = type metadata accessor for FeaturedArticleMagazineFeedGroupKnobs();
  v228 = *(v227 - 1);
  v229 = MEMORY[0x28223BE20](v613);
  v231 = &v553 - ((v230 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = MEMORY[0x28223BE20](v229);
  v609 = &v553 - v233;
  if (!v232)
  {
    v232 = sub_2194AE1DC(MEMORY[0x277D84F90]);
  }

  v613 = v174;
  v601 = v77;
  v234 = v687;
  if (v650)
  {
    v234 = 1;
  }

  v235 = v690;
  *v690 = v232;
  v235[1] = v234;
  sub_21893CBC8(v680, v226, qword_280E99AE8, type metadata accessor for FeaturedArticleMagazineFeedGroupKnobs);
  v236 = *(v228 + 48);
  v687 = (v228 + 48);
  v237 = v236(v226, 1, v227);
  v602 = v30;
  if (v237 == 1)
  {
    v238 = v177;
    v650 = v236;
    v239 = v686;
    v240 = v608;
    v241 = v692;
    (*(v686 + 56))(v608, 1, 1, v692);
    (*(v691 + 56))(v610, 1, 1, v689);
    sub_21893CAA0(v240, v222, &unk_280E919B0, &qword_280E919C0, MEMORY[0x277D321A0]);
    v242 = *(v239 + 48);
    if (v242(v222, 1, v241) == 1)
    {
      if (qword_280E91AB8 != -1)
      {
        swift_once();
      }

      v243 = v692;
      v244 = __swift_project_value_buffer(v692, qword_280F61818);
      v239 = v686;
      (*(v686 + 16))(v139, v244, v243);
      if (v242(v222, 1, v243) != 1)
      {
        sub_21893CB6C(v222, &unk_280E919B0, &qword_280E919C0, MEMORY[0x277D321A0]);
      }
    }

    else
    {
      (*(v239 + 32))(v139, v222, v692);
    }

    v248 = sub_219BEDB04();
    v249 = v688;
    (*(*(v248 - 8) + 56))(v688, 1, 1, v248);
    v250 = v692;
    v251 = v556;
    sub_219BEEA04();
    sub_21893CB10(v249, &qword_280E92530, MEMORY[0x277D31D70]);
    (*(v239 + 8))(v139, v250);
    (*(v239 + 32))(v231, v251, v250);
    v231[v227[5]] = 0;
    v693 = 8;
    sub_2186F9548();
    swift_allocObject();
    *&v231[v227[6]] = sub_219BEF534();
    v693 = 4;
    swift_allocObject();
    *&v231[v227[7]] = sub_219BEF534();
    LOBYTE(v693) = 1;
    sub_2186F95C4();
    swift_allocObject();
    *&v231[v227[8]] = sub_219BEF534();
    v693 = 0;
    sub_2186ECA28();
    swift_allocObject();
    *&v231[v227[9]] = sub_219BEF534();
    v231[v227[10]] = 0;
    v252 = v610;
    sub_21893CAA0(v610, v238, &unk_280E91820, &qword_280E91830, MEMORY[0x277D32318]);
    v253 = v691;
    v254 = *(v691 + 48);
    v255 = v689;
    if (v254(v238, 1, v689) == 1)
    {
      type metadata accessor for MagazineFeedServiceConfig();
      sub_2186EC5F0(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig);
      v256 = v238;
      v257 = v557;
      sub_219BEEC74();
      sub_21893CB6C(v252, &unk_280E91820, &qword_280E91830, MEMORY[0x277D32318]);
      sub_21893CB6C(v608, &unk_280E919B0, &qword_280E919C0, MEMORY[0x277D321A0]);
      v258 = v254(v256, 1, v255);
      v259 = v257;
      v246 = v690;
      v247 = v651;
      if (v258 != 1)
      {
        sub_21893CB6C(v256, &unk_280E91820, &qword_280E91830, MEMORY[0x277D32318]);
      }
    }

    else
    {
      sub_21893CB6C(v252, &unk_280E91820, &qword_280E91830, MEMORY[0x277D32318]);
      sub_21893CB6C(v608, &unk_280E919B0, &qword_280E919C0, MEMORY[0x277D321A0]);
      v259 = v557;
      (*(v253 + 32))(v557, v238, v255);
      v246 = v690;
      v247 = v651;
    }

    (*(v691 + 32))(&v231[v227[11]], v259, v255);
    v245 = v609;
    sub_21893CC34(v231, v609, type metadata accessor for FeaturedArticleMagazineFeedGroupKnobs);
    if (v650(v226, 1, v227) != 1)
    {
      sub_21893CB10(v226, qword_280E99AE8, type metadata accessor for FeaturedArticleMagazineFeedGroupKnobs);
    }
  }

  else
  {
    v245 = v609;
    sub_21893CC34(v226, v609, type metadata accessor for FeaturedArticleMagazineFeedGroupKnobs);
    v246 = v690;
    v247 = v651;
  }

  v687 = type metadata accessor for MagazineFeedGroupKnobs();
  sub_21893CC34(v245, v246 + v687[6], type metadata accessor for FeaturedArticleMagazineFeedGroupKnobs);
  sub_21893CBC8(v679, v247, qword_280E94EA0, type metadata accessor for FeaturedIssueArticleMagazineFeedGroupKnobs);
  v260 = (v666 + 48);
  v261 = *(v666 + 6);
  v262 = v616;
  v263 = v261(v247, 1, v616);
  v264 = v685;
  v265 = v686;
  v266 = v611;
  if (v263 == 1)
  {
    v650 = v261;
    v666 = v260;
    v267 = v612;
    v268 = v692;
    (*(v686 + 56))(v612, 1, 1, v692);
    v269 = v691;
    (*(v691 + 56))(v613, 1, 1, v689);
    sub_21893CAA0(v267, v266, &unk_280E919B0, &qword_280E919C0, MEMORY[0x277D321A0]);
    v270 = *(v265 + 48);
    if (v270(v266, 1, v268) == 1)
    {
      v271 = v558;
      if (qword_280E91AB8 != -1)
      {
        swift_once();
      }

      v272 = v692;
      v273 = __swift_project_value_buffer(v692, qword_280F61818);
      (*(v265 + 16))(v271, v273, v272);
      if (v270(v266, 1, v272) != 1)
      {
        sub_21893CB6C(v266, &unk_280E919B0, &qword_280E919C0, MEMORY[0x277D321A0]);
      }
    }

    else
    {
      v271 = v558;
      (*(v265 + 32))(v558, v266, v692);
    }

    v277 = sub_219BEDB04();
    v278 = v688;
    (*(*(v277 - 8) + 56))(v688, 1, 1, v277);
    v279 = v692;
    v280 = v559;
    sub_219BEEA04();
    sub_21893CB10(v278, &qword_280E92530, MEMORY[0x277D31D70]);
    (*(v265 + 8))(v271, v279);
    v281 = v615;
    (*(v265 + 32))(v615, v280, v279);
    v281[v262[5]] = 0;
    v693 = 8;
    sub_2186F9548();
    swift_allocObject();
    *&v281[v262[6]] = sub_219BEF534();
    v693 = 4;
    swift_allocObject();
    *&v281[v262[7]] = sub_219BEF534();
    LOBYTE(v693) = 1;
    sub_2186F95C4();
    swift_allocObject();
    *&v281[v262[8]] = sub_219BEF534();
    v693 = 0;
    sub_2186ECA28();
    swift_allocObject();
    *&v281[v262[9]] = sub_219BEF534();
    v281[v262[10]] = 0;
    v282 = v613;
    v283 = v560;
    sub_21893CAA0(v613, v560, &unk_280E91820, &qword_280E91830, MEMORY[0x277D32318]);
    v284 = *(v269 + 48);
    v275 = v689;
    if (v284(v283, 1, v689) == 1)
    {
      type metadata accessor for MagazineFeedServiceConfig();
      sub_2186EC5F0(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig);
      v285 = v562;
      sub_219BEEC74();
      v286 = v282;
      v287 = v283;
      sub_21893CB6C(v286, &unk_280E91820, &qword_280E91830, MEMORY[0x277D32318]);
      sub_21893CB6C(v612, &unk_280E919B0, &qword_280E919C0, MEMORY[0x277D321A0]);
      v288 = v284(v283, 1, v275);
      v246 = v690;
      v276 = v652;
      v264 = v685;
      if (v288 != 1)
      {
        sub_21893CB6C(v287, &unk_280E91820, &qword_280E91830, MEMORY[0x277D32318]);
      }
    }

    else
    {
      sub_21893CB6C(v282, &unk_280E91820, &qword_280E91830, MEMORY[0x277D32318]);
      sub_21893CB6C(v612, &unk_280E919B0, &qword_280E919C0, MEMORY[0x277D321A0]);
      v285 = v562;
      (*(v269 + 32))(v562, v283, v275);
      v246 = v690;
      v276 = v652;
      v264 = v685;
    }

    v289 = v615;
    (*(v269 + 32))(&v615[v262[11]], v285, v275);
    v290 = v262;
    v274 = v618;
    sub_21893CC34(v289, v618, type metadata accessor for FeaturedIssueArticleMagazineFeedGroupKnobs);
    v291 = v651;
    if (v650(v651, 1, v290) != 1)
    {
      sub_21893CB10(v291, qword_280E94EA0, type metadata accessor for FeaturedIssueArticleMagazineFeedGroupKnobs);
    }
  }

  else
  {
    v274 = v618;
    sub_21893CC34(v247, v618, type metadata accessor for FeaturedIssueArticleMagazineFeedGroupKnobs);
    v275 = v689;
    v269 = v691;
    v276 = v652;
  }

  sub_21893CC34(v274, v246 + v687[7], type metadata accessor for FeaturedIssueArticleMagazineFeedGroupKnobs);
  sub_21893CBC8(v678, v276, qword_280E9DAE8, type metadata accessor for FeaturedIssueMagazineFeedGroupKnobs);
  v292 = v667 + 48;
  v293 = *(v667 + 48);
  v294 = v293(v276, 1, v671);
  v295 = v617;
  if (v294 == 1)
  {
    v666 = v293;
    v296 = v614;
    v297 = v692;
    (*(v265 + 56))(v614, 1, 1, v692);
    (*(v269 + 56))(v295, 1, 1, v275);
    v298 = v561;
    sub_21893CAA0(v296, v561, &unk_280E919B0, &qword_280E919C0, MEMORY[0x277D321A0]);
    v299 = *(v265 + 48);
    v300 = v299(v298, 1, v297);
    v667 = v292;
    if (v300 == 1)
    {
      v301 = v563;
      if (qword_280E91AB8 != -1)
      {
        swift_once();
      }

      v302 = v692;
      v303 = __swift_project_value_buffer(v692, qword_280F61818);
      (*(v265 + 16))(v301, v303, v302);
      if (v299(v298, 1, v302) != 1)
      {
        sub_21893CB6C(v298, &unk_280E919B0, &qword_280E919C0, MEMORY[0x277D321A0]);
      }
    }

    else
    {
      v301 = v563;
      (*(v265 + 32))(v563, v298, v692);
    }

    v305 = sub_219BEDB04();
    v306 = v688;
    (*(*(v305 - 8) + 56))(v688, 1, 1, v305);
    v307 = v692;
    v308 = v564;
    sub_219BEEA04();
    sub_21893CB10(v306, &qword_280E92530, MEMORY[0x277D31D70]);
    (*(v265 + 8))(v301, v307);
    v309 = v620;
    (*(v265 + 32))(v620, v308, v307);
    v310 = v671;
    v309[v671[5]] = 0;
    v693 = 4;
    sub_2186F9548();
    swift_allocObject();
    *&v309[v310[6]] = sub_219BEF534();
    v693 = 4;
    swift_allocObject();
    *&v309[v310[7]] = sub_219BEF534();
    LOBYTE(v693) = 1;
    sub_2186F95C4();
    swift_allocObject();
    *&v309[v310[8]] = sub_219BEF534();
    v693 = 0;
    sub_2186ECA28();
    swift_allocObject();
    *&v309[v310[9]] = sub_219BEF534();
    v309[v310[10]] = 0;
    v311 = v565;
    sub_21893CAA0(v295, v565, &unk_280E91820, &qword_280E91830, MEMORY[0x277D32318]);
    v269 = v691;
    v312 = *(v691 + 48);
    v275 = v689;
    if (v312(v311, 1, v689) == 1)
    {
      type metadata accessor for MagazineFeedServiceConfig();
      sub_2186EC5F0(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig);
      v313 = v566;
      sub_219BEEC74();
      sub_21893CB6C(v295, &unk_280E91820, &qword_280E91830, MEMORY[0x277D32318]);
      sub_21893CB6C(v614, &unk_280E919B0, &qword_280E919C0, MEMORY[0x277D321A0]);
      v314 = v312(v311, 1, v275);
      v246 = v690;
      v315 = v652;
      v264 = v685;
      if (v314 != 1)
      {
        sub_21893CB6C(v311, &unk_280E91820, &qword_280E91830, MEMORY[0x277D32318]);
      }
    }

    else
    {
      sub_21893CB6C(v295, &unk_280E91820, &qword_280E91830, MEMORY[0x277D32318]);
      sub_21893CB6C(v614, &unk_280E919B0, &qword_280E919C0, MEMORY[0x277D321A0]);
      v313 = v566;
      (*(v269 + 32))(v566, v311, v275);
      v246 = v690;
      v315 = v652;
      v264 = v685;
    }

    v316 = v671;
    v317 = v620;
    (*(v269 + 32))(&v620[v671[11]], v313, v275);
    v318 = v317;
    v304 = v621;
    sub_21893CC34(v318, v621, type metadata accessor for FeaturedIssueMagazineFeedGroupKnobs);
    if (v666(v315, 1, v316) != 1)
    {
      sub_21893CB10(v315, qword_280E9DAE8, type metadata accessor for FeaturedIssueMagazineFeedGroupKnobs);
    }
  }

  else
  {
    v304 = v621;
    sub_21893CC34(v276, v621, type metadata accessor for FeaturedIssueMagazineFeedGroupKnobs);
  }

  v671 = a10;
  v319 = v687;
  sub_21893CC34(v304, v246 + v687[8], type metadata accessor for FeaturedIssueMagazineFeedGroupKnobs);
  v320 = v625;
  sub_21893CBC8(v677, v625, &qword_280E983F0, type metadata accessor for InlineCategoriesMagazineFeedGroupKnobs);
  v322 = v668 + 48;
  v321 = *(v668 + 48);
  if (v321(v320, 1, v653) == 1)
  {
    v668 = v322;
    v323 = v619;
    v324 = v692;
    (*(v265 + 56))(v619, 1, 1, v692);
    v325 = v606;
    sub_21893CAA0(v323, v606, &unk_280E919B0, &qword_280E919C0, MEMORY[0x277D321A0]);
    v326 = *(v265 + 48);
    if (v326(v325, 1, v324) == 1)
    {
      if (qword_280E91AB8 != -1)
      {
        swift_once();
      }

      v327 = v692;
      v328 = __swift_project_value_buffer(v692, qword_280F61818);
      v329 = v568;
      (*(v265 + 16))(v568, v328, v327);
      v330 = v606;
      v331 = v329;
      if (v326(v606, 1, v327) != 1)
      {
        sub_21893CB6C(v330, &unk_280E919B0, &qword_280E919C0, MEMORY[0x277D321A0]);
      }
    }

    else
    {
      v331 = v568;
      (*(v265 + 32))(v568, v325, v692);
    }

    v333 = sub_219BEDB04();
    v334 = v688;
    (*(*(v333 - 8) + 56))(v688, 1, 1, v333);
    v335 = v692;
    v336 = v569;
    sub_219BEEA04();
    sub_21893CB10(v334, &qword_280E92530, MEMORY[0x277D31D70]);
    (*(v265 + 8))(v331, v335);
    sub_21893CB6C(v619, &unk_280E919B0, &qword_280E919C0, MEMORY[0x277D321A0]);
    v337 = v572;
    (*(v265 + 32))(v572, v336, v335);
    v338 = v337;
    v339 = v624;
    sub_21893CC34(v338, v624, type metadata accessor for InlineCategoriesMagazineFeedGroupKnobs);
    v340 = v321(v320, 1, v653);
    v332 = v339;
    v246 = v690;
    v319 = v687;
    v264 = v685;
    if (v340 != 1)
    {
      sub_21893CB10(v320, &qword_280E983F0, type metadata accessor for InlineCategoriesMagazineFeedGroupKnobs);
    }
  }

  else
  {
    v332 = v624;
    sub_21893CC34(v320, v624, type metadata accessor for InlineCategoriesMagazineFeedGroupKnobs);
  }

  v668 = a11;
  sub_21893CC34(v332, v246 + v319[9], type metadata accessor for InlineCategoriesMagazineFeedGroupKnobs);
  sub_21893CBC8(v676, v264, qword_280EA3068, type metadata accessor for MyMagazinesMagazineFeedGroupKnobs);
  v341 = v669 + 48;
  v342 = *(v669 + 48);
  if (v342(v264, 1, v670) == 1)
  {
    v669 = v341;
    v343 = v622;
    v344 = v692;
    (*(v265 + 56))(v622, 1, 1, v692);
    (*(v269 + 56))(v623, 1, 1, v275);
    v345 = v567;
    sub_21893CAA0(v343, v567, &unk_280E919B0, &qword_280E919C0, MEMORY[0x277D321A0]);
    v346 = *(v265 + 48);
    if (v346(v345, 1, v344) == 1)
    {
      if (qword_280E91AB8 != -1)
      {
        swift_once();
      }

      v347 = v692;
      v348 = __swift_project_value_buffer(v692, qword_280F61818);
      v349 = v570;
      (*(v265 + 16))(v570, v348, v347);
      if (v346(v345, 1, v347) != 1)
      {
        sub_21893CB6C(v345, &unk_280E919B0, &qword_280E919C0, MEMORY[0x277D321A0]);
      }
    }

    else
    {
      v349 = v570;
      (*(v265 + 32))(v570, v345, v692);
    }

    v352 = sub_219BEDB04();
    v353 = v688;
    (*(*(v352 - 8) + 56))(v688, 1, 1, v352);
    v354 = v692;
    v355 = v571;
    sub_219BEEA04();
    sub_21893CB10(v353, &qword_280E92530, MEMORY[0x277D31D70]);
    (*(v265 + 8))(v349, v354);
    v356 = v628;
    (*(v265 + 32))(v628, v355, v354);
    v693 = 1;
    sub_2186F9548();
    swift_allocObject();
    *&v356[*(v670 + 20)] = sub_219BEF534();
    v357 = v623;
    v358 = v607;
    sub_21893CAA0(v623, v607, &unk_280E91820, &qword_280E91830, MEMORY[0x277D32318]);
    v359 = *(v269 + 48);
    v275 = v689;
    if (v359(v358, 1, v689) == 1)
    {
      v360 = v555;
      sub_219BEFA94();
      (*(v553 + 104))(v360, *MEMORY[0x277D31FE8], v554);
      sub_21893CC9C();
      swift_allocObject();
      v361 = v357;
      sub_219BEF534();
      type metadata accessor for MagazineFeedServiceConfig();
      sub_2186EC5F0(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig);
      v362 = v574;
      v363 = v607;
      sub_219BEEC74();
      v364 = v361;
      v269 = v691;
      sub_21893CB6C(v364, &unk_280E91820, &qword_280E91830, MEMORY[0x277D32318]);
      sub_21893CB6C(v622, &unk_280E919B0, &qword_280E919C0, MEMORY[0x277D321A0]);
      v365 = v359(v363, 1, v275);
      v351 = v655;
      v319 = v687;
      if (v365 != 1)
      {
        sub_21893CB6C(v363, &unk_280E91820, &qword_280E91830, MEMORY[0x277D32318]);
      }
    }

    else
    {
      sub_21893CB6C(v357, &unk_280E91820, &qword_280E91830, MEMORY[0x277D32318]);
      sub_21893CB6C(v622, &unk_280E919B0, &qword_280E919C0, MEMORY[0x277D321A0]);
      v362 = v574;
      (*(v269 + 32))(v574, v358, v275);
      v351 = v655;
      v319 = v687;
    }

    v366 = v670;
    v367 = v628;
    (*(v269 + 32))(&v628[*(v670 + 24)], v362, v275);
    v368 = v367;
    v350 = v629;
    sub_21893CC34(v368, v629, type metadata accessor for MyMagazinesMagazineFeedGroupKnobs);
    v369 = v685;
    if (v342(v685, 1, v366) != 1)
    {
      sub_21893CB10(v369, qword_280EA3068, type metadata accessor for MyMagazinesMagazineFeedGroupKnobs);
    }
  }

  else
  {
    v350 = v629;
    sub_21893CC34(v264, v629, type metadata accessor for MyMagazinesMagazineFeedGroupKnobs);
    v351 = v655;
  }

  v685 = a12;
  v370 = v690;
  sub_21893CC34(v350, v690 + v319[10], type metadata accessor for MyMagazinesMagazineFeedGroupKnobs);
  v371 = v656;
  sub_21893CBC8(v671, v656, qword_280EAC0A0, type metadata accessor for NewIssueMagazineFeedGroupKnobs);
  v372 = *(v681 + 48);
  v681 += 48;
  if (v372(v371, 1, v672) == 1)
  {
    v373 = v626;
    v374 = v692;
    (*(v265 + 56))(v626, 1, 1, v692);
    v375 = v575;
    (*(v269 + 56))(v575, 1, 1, v275);
    v376 = v573;
    sub_21893CAA0(v373, v573, &unk_280E919B0, &qword_280E919C0, MEMORY[0x277D321A0]);
    v377 = *(v265 + 48);
    if (v377(v376, 1, v374) == 1)
    {
      v378 = v577;
      if (qword_280E91AB8 != -1)
      {
        swift_once();
      }

      v379 = v692;
      v380 = __swift_project_value_buffer(v692, qword_280F61818);
      (*(v265 + 16))(v378, v380, v379);
      if (v377(v376, 1, v379) != 1)
      {
        sub_21893CB6C(v376, &unk_280E919B0, &qword_280E919C0, MEMORY[0x277D321A0]);
      }
    }

    else
    {
      v378 = v577;
      (*(v265 + 32))(v577, v376, v692);
    }

    v381 = sub_219BEDB04();
    v382 = v688;
    (*(*(v381 - 8) + 56))(v688, 1, 1, v381);
    v383 = v692;
    v384 = v578;
    sub_219BEEA04();
    sub_21893CB10(v382, &qword_280E92530, MEMORY[0x277D31D70]);
    (*(v265 + 8))(v378, v383);
    v385 = v630;
    (*(v265 + 32))(v630, v384, v383);
    v386 = v672;
    v385[*(v672 + 20)] = 2;
    v385[*(v386 + 24)] = 0;
    *&v385[*(v386 + 28)] = 0x7FEFFFFFFFFFFFFFLL;
    v387 = v576;
    sub_21893CAA0(v375, v576, &unk_280E91820, &qword_280E91830, MEMORY[0x277D32318]);
    v388 = v691;
    v389 = *(v691 + 48);
    v390 = v689;
    if (v389(v387, 1, v689) == 1)
    {
      type metadata accessor for MagazineFeedServiceConfig();
      sub_2186EC5F0(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig);
      v391 = v580;
      sub_219BEEC74();
      sub_21893CB6C(v375, &unk_280E91820, &qword_280E91830, MEMORY[0x277D32318]);
      sub_21893CB6C(v626, &unk_280E919B0, &qword_280E919C0, MEMORY[0x277D321A0]);
      v392 = v389(v387, 1, v390);
      v351 = v655;
      if (v392 != 1)
      {
        sub_21893CB6C(v387, &unk_280E91820, &qword_280E91830, MEMORY[0x277D32318]);
      }
    }

    else
    {
      sub_21893CB6C(v375, &unk_280E91820, &qword_280E91830, MEMORY[0x277D32318]);
      sub_21893CB6C(v626, &unk_280E919B0, &qword_280E919C0, MEMORY[0x277D321A0]);
      v391 = v580;
      (*(v388 + 32))(v580, v387, v390);
      v351 = v655;
    }

    v393 = v672;
    v394 = v630;
    (*(v691 + 32))(&v630[*(v672 + 32)], v391, v390);
    sub_21893CC34(v394, v351, type metadata accessor for NewIssueMagazineFeedGroupKnobs);
    v395 = v656;
    v396 = v372(v656, 1, v393);
    v275 = v390;
    v319 = v687;
    v370 = v690;
    if (v396 != 1)
    {
      sub_21893CB10(v395, qword_280EAC0A0, type metadata accessor for NewIssueMagazineFeedGroupKnobs);
    }
  }

  else
  {
    sub_21893CC34(v371, v351, type metadata accessor for NewIssueMagazineFeedGroupKnobs);
  }

  v681 = a13;
  sub_21893CC34(v351, v370 + v319[11], type metadata accessor for NewIssueMagazineFeedGroupKnobs);
  v397 = v658;
  sub_21893CBC8(v668, v658, &qword_280EAF818, type metadata accessor for PaywallMagazineFeedGroupKnobs);
  v398 = *(v632 + 48);
  v399 = v398(v397, 1, v657);
  v400 = v654;
  if (v399 == 1)
  {
    v401 = v627;
    v402 = v692;
    (*(v265 + 56))(v627, 1, 1, v692);
    v403 = v579;
    sub_21893CAA0(v401, v579, &unk_280E919B0, &qword_280E919C0, MEMORY[0x277D321A0]);
    v404 = *(v265 + 48);
    if (v404(v403, 1, v402) == 1)
    {
      if (qword_280E91AB8 != -1)
      {
        swift_once();
      }

      v405 = v692;
      v406 = __swift_project_value_buffer(v692, qword_280F61818);
      v407 = v581;
      (*(v265 + 16))(v581, v406, v405);
      v408 = v407;
      if (v404(v403, 1, v405) != 1)
      {
        sub_21893CB6C(v403, &unk_280E919B0, &qword_280E919C0, MEMORY[0x277D321A0]);
      }
    }

    else
    {
      v408 = v581;
      (*(v265 + 32))(v581, v403, v692);
    }

    v410 = sub_219BEDB04();
    v411 = v688;
    (*(*(v410 - 8) + 56))(v688, 1, 1, v410);
    v412 = v692;
    v413 = v582;
    sub_219BEEA04();
    sub_21893CB10(v411, &qword_280E92530, MEMORY[0x277D31D70]);
    (*(v265 + 8))(v408, v412);
    sub_21893CB6C(v627, &unk_280E919B0, &qword_280E919C0, MEMORY[0x277D321A0]);
    v414 = v588;
    (*(v265 + 32))(v588, v413, v412);
    v415 = v633;
    sub_21893CC34(v414, v633, type metadata accessor for PaywallMagazineFeedGroupKnobs);
    v416 = v658;
    v417 = v398(v658, 1, v657);
    v409 = v415;
    v400 = v654;
    v275 = v689;
    if (v417 != 1)
    {
      sub_21893CB10(v416, &qword_280EAF818, type metadata accessor for PaywallMagazineFeedGroupKnobs);
    }
  }

  else
  {
    v409 = v633;
    sub_21893CC34(v397, v633, type metadata accessor for PaywallMagazineFeedGroupKnobs);
  }

  v672 = a14;
  sub_21893CC34(v409, v370 + v319[12], type metadata accessor for PaywallMagazineFeedGroupKnobs);
  v418 = v660;
  sub_21893CBC8(v685, v660, qword_280E96AE0, type metadata accessor for RecommendedIssuesMagazineFeedGroupKnobs);
  v419 = *(v682 + 48);
  v682 += 48;
  if (v419(v418, 1, v659) == 1)
  {
    v420 = v691;
    v421 = v583;
    (*(v691 + 56))(v583, 1, 1, v275);
    v422 = v635;
    *v635 = 0;
    *(v422 + 8) = xmmword_219C09EB0;
    *(v422 + 3) = 4;
    v422[32] = 0;
    *(v422 + 6) = 0;
    *(v422 + 7) = 0;
    *(v422 + 5) = 0x3FF3333333333333;
    *(v422 + 32) = 257;
    sub_21893CAA0(v421, v400, &unk_280E91820, &qword_280E91830, MEMORY[0x277D32318]);
    v423 = v275;
    v424 = *(v420 + 48);
    if (v424(v400, 1, v275) == 1)
    {
      type metadata accessor for MagazineFeedServiceConfig();
      v425 = v265;
      v426 = v319;
      v427 = v421;
      sub_2186EC5F0(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig);
      v428 = v585;
      sub_219BEEC74();
      v429 = v427;
      v319 = v426;
      v265 = v425;
      sub_21893CB6C(v429, &unk_280E91820, &qword_280E91830, MEMORY[0x277D32318]);
      if (v424(v400, 1, v275) != 1)
      {
        sub_21893CB6C(v400, &unk_280E91820, &qword_280E91830, MEMORY[0x277D32318]);
      }
    }

    else
    {
      sub_21893CB6C(v421, &unk_280E91820, &qword_280E91830, MEMORY[0x277D32318]);
      v428 = v585;
      (*(v420 + 32))(v585, v400, v275);
    }

    v431 = v659;
    v432 = *(v420 + 32);
    v433 = v635;
    v432(&v635[*(v659 + 52)], v428, v423);
    v430 = v636;
    sub_21893CC34(v433, v636, type metadata accessor for RecommendedIssuesMagazineFeedGroupKnobs);
    v434 = v660;
    if (v419(v660, 1, v431) != 1)
    {
      sub_21893CB10(v434, qword_280E96AE0, type metadata accessor for RecommendedIssuesMagazineFeedGroupKnobs);
    }
  }

  else
  {
    v430 = v636;
    sub_21893CC34(v418, v636, type metadata accessor for RecommendedIssuesMagazineFeedGroupKnobs);
  }

  v682 = a15;
  v435 = v690;
  sub_21893CC34(v430, v690 + v319[13], type metadata accessor for RecommendedIssuesMagazineFeedGroupKnobs);
  v436 = v661;
  sub_21893CBC8(v681, v661, qword_280EB61C0, type metadata accessor for TopicMagazineFeedGroupKnobs);
  v437 = *(v683 + 48);
  v683 += 48;
  if (v437(v436, 1, v673) == 1)
  {
    v438 = v631;
    v439 = v692;
    (*(v265 + 56))(v631, 1, 1, v692);
    v440 = v586;
    (*(v691 + 56))(v586, 1, 1, v689);
    v441 = v438;
    v442 = v584;
    sub_21893CAA0(v441, v584, &unk_280E919B0, &qword_280E919C0, MEMORY[0x277D321A0]);
    v443 = *(v265 + 48);
    if (v443(v442, 1, v439) == 1)
    {
      v444 = v589;
      if (qword_280E91AB8 != -1)
      {
        swift_once();
      }

      v445 = v692;
      v446 = __swift_project_value_buffer(v692, qword_280F61818);
      (*(v265 + 16))(v444, v446, v445);
      if (v443(v442, 1, v445) != 1)
      {
        sub_21893CB6C(v442, &unk_280E919B0, &qword_280E919C0, MEMORY[0x277D321A0]);
      }
    }

    else
    {
      v444 = v589;
      (*(v265 + 32))(v589, v442, v692);
    }

    v449 = sub_219BEDB04();
    v450 = v688;
    (*(*(v449 - 8) + 56))(v688, 1, 1, v449);
    v451 = v692;
    v452 = v590;
    sub_219BEEA04();
    sub_21893CB10(v450, &qword_280E92530, MEMORY[0x277D31D70]);
    (*(v265 + 8))(v444, v451);
    v453 = *(v265 + 32);
    v454 = v598;
    v453(v598, v452, v451);
    v455 = v673;
    *(v454 + *(v673 + 20)) = 0;
    *(v454 + *(v455 + 24)) = 0;
    v456 = v587;
    sub_21893CAA0(v440, v587, &unk_280E91820, &qword_280E91830, MEMORY[0x277D32318]);
    v457 = v691;
    v458 = *(v691 + 48);
    v459 = v689;
    if (v458(v456, 1, v689) == 1)
    {
      type metadata accessor for MagazineFeedServiceConfig();
      sub_2186EC5F0(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig);
      v460 = v592;
      sub_219BEEC74();
      sub_21893CB6C(v440, &unk_280E91820, &qword_280E91830, MEMORY[0x277D32318]);
      sub_21893CB6C(v631, &unk_280E919B0, &qword_280E919C0, MEMORY[0x277D321A0]);
      v461 = v458(v456, 1, v459);
      v462 = v661;
      if (v461 != 1)
      {
        sub_21893CB6C(v456, &unk_280E91820, &qword_280E91830, MEMORY[0x277D32318]);
      }
    }

    else
    {
      sub_21893CB6C(v440, &unk_280E91820, &qword_280E91830, MEMORY[0x277D32318]);
      sub_21893CB6C(v631, &unk_280E919B0, &qword_280E919C0, MEMORY[0x277D321A0]);
      v460 = v592;
      (*(v457 + 32))(v592, v456, v459);
      v462 = v661;
    }

    v463 = v673;
    (*(v457 + 32))(v454 + *(v673 + 28), v460, v459);
    v447 = v639;
    sub_21893CC34(v454, v639, type metadata accessor for TopicMagazineFeedGroupKnobs);
    v464 = v437(v462, 1, v463);
    v265 = v686;
    v435 = v690;
    v448 = v665;
    if (v464 != 1)
    {
      sub_21893CB10(v462, qword_280EB61C0, type metadata accessor for TopicMagazineFeedGroupKnobs);
    }
  }

  else
  {
    v447 = v639;
    sub_21893CC34(v436, v639, type metadata accessor for TopicMagazineFeedGroupKnobs);
    v448 = v665;
  }

  v683 = a16;
  v465 = v687;
  sub_21893CC34(v447, v435 + v687[14], type metadata accessor for TopicMagazineFeedGroupKnobs);
  v466 = v662;
  sub_21893CBC8(v672, v662, qword_280EAA120, type metadata accessor for TrendingMagazineFeedGroupKnobs);
  v467 = *(v684 + 48);
  v684 += 48;
  if (v467(v466, 1, v674) == 1)
  {
    v468 = v634;
    v469 = v692;
    (*(v265 + 56))(v634, 1, 1, v692);
    (*(v691 + 56))(v637, 1, 1, v689);
    v470 = v591;
    sub_21893CAA0(v468, v591, &unk_280E919B0, &qword_280E919C0, MEMORY[0x277D321A0]);
    v471 = v265;
    v472 = *(v265 + 48);
    if (v472(v470, 1, v469) == 1)
    {
      v473 = v602;
      if (qword_280E91AB8 != -1)
      {
        swift_once();
      }

      v474 = v692;
      v475 = __swift_project_value_buffer(v692, qword_280F61818);
      v471 = v686;
      v476 = v594;
      (*(v686 + 16))(v594, v475, v474);
      v477 = v476;
      if (v472(v470, 1, v474) != 1)
      {
        sub_21893CB6C(v470, &unk_280E919B0, &qword_280E919C0, MEMORY[0x277D321A0]);
      }
    }

    else
    {
      v477 = v594;
      (*(v265 + 32))(v594, v470, v692);
      v473 = v602;
    }

    v480 = sub_219BEDB04();
    v481 = v688;
    (*(*(v480 - 8) + 56))(v688, 1, 1, v480);
    v482 = v692;
    v483 = v595;
    sub_219BEEA04();
    sub_21893CB10(v481, &qword_280E92530, MEMORY[0x277D31D70]);
    (*(v471 + 8))(v477, v482);
    (*(v471 + 32))(v473, v483, v482);
    v484 = v674;
    *(v473 + *(v674 + 20)) = 3;
    *(v473 + *(v484 + 24)) = 9;
    *(v473 + *(v484 + 28)) = 1;
    v485 = v637;
    v486 = v593;
    sub_21893CAA0(v637, v593, &unk_280E91820, &qword_280E91830, MEMORY[0x277D32318]);
    v487 = v691;
    v488 = *(v691 + 48);
    v489 = v689;
    if (v488(v486, 1, v689) == 1)
    {
      type metadata accessor for MagazineFeedServiceConfig();
      sub_2186EC5F0(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig);
      v490 = v597;
      sub_219BEEC74();
      sub_21893CB6C(v485, &unk_280E91820, &qword_280E91830, MEMORY[0x277D32318]);
      sub_21893CB6C(v634, &unk_280E919B0, &qword_280E919C0, MEMORY[0x277D321A0]);
      v491 = v488(v486, 1, v489) == 1;
      v435 = v690;
      v492 = v489;
      v493 = v486;
      v465 = v687;
      if (!v491)
      {
        sub_21893CB6C(v493, &unk_280E91820, &qword_280E91830, MEMORY[0x277D32318]);
        v492 = v489;
        v448 = v665;
      }
    }

    else
    {
      sub_21893CB6C(v485, &unk_280E91820, &qword_280E91830, MEMORY[0x277D32318]);
      sub_21893CB6C(v634, &unk_280E919B0, &qword_280E919C0, MEMORY[0x277D321A0]);
      v494 = *(v487 + 32);
      v490 = v597;
      v494(v597, v486, v489);
      v435 = v690;
      v492 = v489;
      v465 = v687;
    }

    v495 = v674;
    (*(v691 + 32))(v473 + *(v674 + 32), v490, v492);
    v479 = v644;
    sub_21893CC34(v473, v644, type metadata accessor for TrendingMagazineFeedGroupKnobs);
    v496 = v662;
    v497 = v467(v662, 1, v495);
    v265 = v686;
    if (v497 != 1)
    {
      sub_21893CB10(v496, qword_280EAA120, type metadata accessor for TrendingMagazineFeedGroupKnobs);
    }
  }

  else
  {
    v478 = v466;
    v479 = v644;
    sub_21893CC34(v478, v644, type metadata accessor for TrendingMagazineFeedGroupKnobs);
  }

  sub_21893CC34(v479, v435 + v465[15], type metadata accessor for TrendingMagazineFeedGroupKnobs);
  sub_21893CBC8(v682, v448, qword_280EA0FE0, type metadata accessor for BestOfBundleMagazineFeedGroupKnobs);
  v498 = *(v646 + 48);
  v499 = v498(v448, 1, v675);
  v500 = v641;
  if (v499 == 1)
  {
    v501 = v638;
    v502 = v692;
    (*(v265 + 56))(v638, 1, 1, v692);
    (*(v691 + 56))(v640, 1, 1, v689);
    v503 = v501;
    v504 = v596;
    sub_21893CAA0(v503, v596, &unk_280E919B0, &qword_280E919C0, MEMORY[0x277D321A0]);
    v505 = *(v265 + 48);
    if (v505(v504, 1, v502) == 1)
    {
      if (qword_280E91AB8 != -1)
      {
        swift_once();
      }

      v506 = v692;
      v507 = __swift_project_value_buffer(v692, qword_280F61818);
      v265 = v686;
      (*(v686 + 16))(v500, v507, v506);
      if (v505(v504, 1, v506) != 1)
      {
        sub_21893CB6C(v504, &unk_280E919B0, &qword_280E919C0, MEMORY[0x277D321A0]);
      }
    }

    else
    {
      (*(v265 + 32))(v500, v504, v692);
    }

    v509 = sub_219BEDB04();
    v510 = v688;
    (*(*(v509 - 8) + 56))(v688, 1, 1, v509);
    v511 = v692;
    v512 = v600;
    sub_219BEEA04();
    sub_21893CB10(v510, &qword_280E92530, MEMORY[0x277D31D70]);
    (*(v265 + 8))(v500, v511);
    v513 = v645;
    (*(v265 + 32))(v645, v512, v511);
    v514 = v675;
    v513[*(v675 + 20)] = 0;
    v513[v514[6]] = 0;
    *&v513[v514[7]] = 3;
    v513[v514[8]] = 1;
    v513[v514[9]] = 0;
    v515 = v640;
    v516 = v599;
    sub_21893CAA0(v640, v599, &unk_280E91820, &qword_280E91830, MEMORY[0x277D32318]);
    v517 = v691;
    v518 = *(v691 + 48);
    v519 = v689;
    if (v518(v516, 1, v689) == 1)
    {
      type metadata accessor for MagazineFeedServiceConfig();
      sub_2186EC5F0(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig);
      v520 = v601;
      sub_219BEEC74();
      sub_21893CB6C(v515, &unk_280E91820, &qword_280E91830, MEMORY[0x277D32318]);
      sub_21893CB6C(v638, &unk_280E919B0, &qword_280E919C0, MEMORY[0x277D321A0]);
      v521 = v518(v516, 1, v519);
      v435 = v690;
      v465 = v687;
      if (v521 != 1)
      {
        sub_21893CB6C(v516, &unk_280E91820, &qword_280E91830, MEMORY[0x277D32318]);
      }
    }

    else
    {
      sub_21893CB6C(v515, &unk_280E91820, &qword_280E91830, MEMORY[0x277D32318]);
      sub_21893CB6C(v638, &unk_280E919B0, &qword_280E919C0, MEMORY[0x277D321A0]);
      v520 = v601;
      (*(v517 + 32))(v601, v516, v519);
      v435 = v690;
      v465 = v687;
    }

    v522 = v675;
    v523 = v645;
    (*(v691 + 32))(&v645[*(v675 + 40)], v520, v519);
    v524 = v523;
    v508 = v647;
    sub_21893CC34(v524, v647, type metadata accessor for BestOfBundleMagazineFeedGroupKnobs);
    v525 = v665;
    v526 = v498(v665, 1, v522);
    v265 = v686;
    if (v526 != 1)
    {
      sub_21893CB10(v525, qword_280EA0FE0, type metadata accessor for BestOfBundleMagazineFeedGroupKnobs);
    }
  }

  else
  {
    v508 = v647;
    sub_21893CC34(v448, v647, type metadata accessor for BestOfBundleMagazineFeedGroupKnobs);
  }

  sub_21893CC34(v508, v435 + v465[16], type metadata accessor for BestOfBundleMagazineFeedGroupKnobs);
  v527 = v683;
  v528 = v664;
  sub_21893CBC8(v683, v664, qword_280EA8D00, type metadata accessor for NewspaperMagazineFeedGroupKnobs);
  v529 = *(v648 + 48);
  v530 = v529(v528, 1, v663);
  v531 = v642;
  if (v530 == 1)
  {
    v532 = v643;
    v533 = v692;
    (*(v265 + 56))(v643, 1, 1, v692);
    sub_21893CAA0(v532, v531, &unk_280E919B0, &qword_280E919C0, MEMORY[0x277D321A0]);
    v534 = *(v265 + 48);
    if (v534(v531, 1, v533) == 1)
    {
      if (qword_280E91AB8 != -1)
      {
        swift_once();
      }

      v535 = v692;
      v536 = __swift_project_value_buffer(v692, qword_280F61818);
      v265 = v686;
      v537 = v603;
      (*(v686 + 16))(v603, v536, v535);
      v538 = v537;
      if (v534(v531, 1, v535) != 1)
      {
        sub_21893CB6C(v531, &unk_280E919B0, &qword_280E919C0, MEMORY[0x277D321A0]);
      }
    }

    else
    {
      v538 = v603;
      (*(v265 + 32))(v603, v531, v692);
    }

    v541 = sub_219BEDB04();
    v542 = v688;
    (*(*(v541 - 8) + 56))(v688, 1, 1, v541);
    v543 = v692;
    v544 = v604;
    sub_219BEEA04();
    sub_21893CB10(v542, &qword_280E92530, MEMORY[0x277D31D70]);
    (*(v265 + 8))(v538, v543);
    v545 = v605;
    (*(v265 + 32))(v605, v544, v543);
    sub_219BF5CF4();
    v547 = v663;
    *(v545 + *(v663 + 20)) = v546 * 12.0;
    sub_219BF5D04();
    *(v545 + *(v547 + 24)) = v548;
    sub_21893CDA0();
    v549 = swift_allocObject();
    *(v549 + 16) = xmmword_219C09EC0;
    if (qword_280EB0610 != -1)
    {
      swift_once();
    }

    v550 = byte_280F61A98 | 0x80;
    *(v549 + 32) = qword_280F61A90;
    *(v549 + 40) = v550;
    *(v549 + 48) = 5;
    *(v549 + 56) = 0;
    sub_21893CB10(v683, qword_280EA8D00, type metadata accessor for NewspaperMagazineFeedGroupKnobs);
    sub_21893CB10(v682, qword_280EA0FE0, type metadata accessor for BestOfBundleMagazineFeedGroupKnobs);
    sub_21893CB10(v672, qword_280EAA120, type metadata accessor for TrendingMagazineFeedGroupKnobs);
    sub_21893CB10(v681, qword_280EB61C0, type metadata accessor for TopicMagazineFeedGroupKnobs);
    sub_21893CB10(v685, qword_280E96AE0, type metadata accessor for RecommendedIssuesMagazineFeedGroupKnobs);
    sub_21893CB10(v668, &qword_280EAF818, type metadata accessor for PaywallMagazineFeedGroupKnobs);
    sub_21893CB10(v671, qword_280EAC0A0, type metadata accessor for NewIssueMagazineFeedGroupKnobs);
    sub_21893CB10(v676, qword_280EA3068, type metadata accessor for MyMagazinesMagazineFeedGroupKnobs);
    sub_21893CB10(v677, &qword_280E983F0, type metadata accessor for InlineCategoriesMagazineFeedGroupKnobs);
    sub_21893CB10(v678, qword_280E9DAE8, type metadata accessor for FeaturedIssueMagazineFeedGroupKnobs);
    sub_21893CB10(v679, qword_280E94EA0, type metadata accessor for FeaturedIssueArticleMagazineFeedGroupKnobs);
    sub_21893CB10(v680, qword_280E99AE8, type metadata accessor for FeaturedArticleMagazineFeedGroupKnobs);
    sub_21893CB6C(v643, &unk_280E919B0, &qword_280E919C0, MEMORY[0x277D321A0]);
    *(v545 + *(v547 + 28)) = v549;
    v540 = v649;
    sub_21893CC34(v545, v649, type metadata accessor for NewspaperMagazineFeedGroupKnobs);
    v551 = v664;
    if (v529(v664, 1, v547) != 1)
    {
      sub_21893CB10(v551, qword_280EA8D00, type metadata accessor for NewspaperMagazineFeedGroupKnobs);
    }
  }

  else
  {
    sub_21893CB10(v527, qword_280EA8D00, type metadata accessor for NewspaperMagazineFeedGroupKnobs);
    sub_21893CB10(v682, qword_280EA0FE0, type metadata accessor for BestOfBundleMagazineFeedGroupKnobs);
    sub_21893CB10(v672, qword_280EAA120, type metadata accessor for TrendingMagazineFeedGroupKnobs);
    sub_21893CB10(v681, qword_280EB61C0, type metadata accessor for TopicMagazineFeedGroupKnobs);
    sub_21893CB10(v685, qword_280E96AE0, type metadata accessor for RecommendedIssuesMagazineFeedGroupKnobs);
    sub_21893CB10(v668, &qword_280EAF818, type metadata accessor for PaywallMagazineFeedGroupKnobs);
    sub_21893CB10(v671, qword_280EAC0A0, type metadata accessor for NewIssueMagazineFeedGroupKnobs);
    sub_21893CB10(v676, qword_280EA3068, type metadata accessor for MyMagazinesMagazineFeedGroupKnobs);
    sub_21893CB10(v677, &qword_280E983F0, type metadata accessor for InlineCategoriesMagazineFeedGroupKnobs);
    sub_21893CB10(v678, qword_280E9DAE8, type metadata accessor for FeaturedIssueMagazineFeedGroupKnobs);
    sub_21893CB10(v679, qword_280E94EA0, type metadata accessor for FeaturedIssueArticleMagazineFeedGroupKnobs);
    sub_21893CB10(v680, qword_280E99AE8, type metadata accessor for FeaturedArticleMagazineFeedGroupKnobs);
    v539 = v528;
    v540 = v649;
    sub_21893CC34(v539, v649, type metadata accessor for NewspaperMagazineFeedGroupKnobs);
  }

  return sub_21893CC34(v540, v435 + v465[17], type metadata accessor for NewspaperMagazineFeedGroupKnobs);
}

uint64_t sub_21893A0B8@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v92 = a2;
  sub_21893CF78(0, qword_280EA8D00, type metadata accessor for NewspaperMagazineFeedGroupKnobs);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v71 - v4;
  sub_21893CF78(0, qword_280EA0FE0, type metadata accessor for BestOfBundleMagazineFeedGroupKnobs);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v71 - v7;
  sub_21893CF78(0, qword_280EAA120, type metadata accessor for TrendingMagazineFeedGroupKnobs);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v71 - v10;
  sub_21893CF78(0, qword_280EB61C0, type metadata accessor for TopicMagazineFeedGroupKnobs);
  MEMORY[0x28223BE20](v12 - 8);
  v74 = &v71 - v13;
  sub_21893CF78(0, qword_280E96AE0, type metadata accessor for RecommendedIssuesMagazineFeedGroupKnobs);
  MEMORY[0x28223BE20](v14 - 8);
  v83 = &v71 - v15;
  sub_21893CF78(0, &qword_280EAF818, type metadata accessor for PaywallMagazineFeedGroupKnobs);
  MEMORY[0x28223BE20](v16 - 8);
  v82 = &v71 - v17;
  sub_21893CF78(0, qword_280EAC0A0, type metadata accessor for NewIssueMagazineFeedGroupKnobs);
  MEMORY[0x28223BE20](v18 - 8);
  v81 = &v71 - v19;
  sub_21893CF78(0, qword_280EA3068, type metadata accessor for MyMagazinesMagazineFeedGroupKnobs);
  MEMORY[0x28223BE20](v20 - 8);
  v80 = &v71 - v21;
  sub_21893CF78(0, &qword_280E983F0, type metadata accessor for InlineCategoriesMagazineFeedGroupKnobs);
  MEMORY[0x28223BE20](v22 - 8);
  v79 = &v71 - v23;
  sub_21893CF78(0, qword_280E9DAE8, type metadata accessor for FeaturedIssueMagazineFeedGroupKnobs);
  MEMORY[0x28223BE20](v24 - 8);
  v78 = &v71 - v25;
  sub_21893CF78(0, qword_280E94EA0, type metadata accessor for FeaturedIssueArticleMagazineFeedGroupKnobs);
  MEMORY[0x28223BE20](v26 - 8);
  v77 = &v71 - v27;
  sub_21893CF78(0, qword_280E99AE8, type metadata accessor for FeaturedArticleMagazineFeedGroupKnobs);
  MEMORY[0x28223BE20](v28 - 8);
  v76 = &v71 - v29;
  sub_21893D038(0, &qword_280E8CE40, MEMORY[0x277D844C8]);
  v31 = v30;
  v73 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v71 - v32;
  v34 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21893CDF0();
  v35 = v100;
  sub_219BF7B34();
  if (v35)
  {
    v36 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v36);
  }

  v37 = v92;
  v75 = 0;
  v38 = v33;
  result = sub_219BF7754();
  v91 = *(result + 16);
  v72 = v11;
  if (!v91)
  {
    v93 = MEMORY[0x277D84F90];
    v42 = v34;
    v43 = v37;
LABEL_34:

    MEMORY[0x28223BE20](v66);
    v67 = v75;
    v100 = sub_218D2A748(MEMORY[0x277D84F98], sub_21893CE44, &v70, v93);
    v75 = v67;

    strcpy(v97, "categories");
    BYTE3(v97[1]) = 0;
    HIDWORD(v97[1]) = -369098752;
    v98 = 0;
    v99 = 1;
    sub_21893CE60();
    sub_219BF7674();
    v94 = v95;
    LODWORD(v93) = v96;
    type metadata accessor for FeaturedArticleMagazineFeedGroupKnobs();
    v97[0] = 0x6465727574616566;
    v97[1] = 0xEF656C6369747241;
    v98 = 0;
    v99 = 1;
    sub_2186EC5F0(&qword_280E99B40, type metadata accessor for FeaturedArticleMagazineFeedGroupKnobs);
    sub_219BF7674();
    type metadata accessor for FeaturedIssueArticleMagazineFeedGroupKnobs();
    v97[0] = 0xD000000000000014;
    v97[1] = 0x8000000219CD6680;
    v98 = 0;
    v99 = 1;
    sub_2186EC5F0(&qword_280E94EF8, type metadata accessor for FeaturedIssueArticleMagazineFeedGroupKnobs);
    sub_219BF7674();
    type metadata accessor for FeaturedIssueMagazineFeedGroupKnobs();
    strcpy(v97, "featuredIssue");
    HIWORD(v97[1]) = -4864;
    v98 = 0;
    v99 = 1;
    sub_2186EC5F0(&qword_280E9DB40, type metadata accessor for FeaturedIssueMagazineFeedGroupKnobs);
    sub_219BF7674();
    type metadata accessor for InlineCategoriesMagazineFeedGroupKnobs();
    v97[0] = 0xD000000000000010;
    v97[1] = 0x8000000219CD66A0;
    v98 = 0;
    v99 = 1;
    sub_2186EC5F0(&qword_280E98430, type metadata accessor for InlineCategoriesMagazineFeedGroupKnobs);
    sub_219BF7674();
    type metadata accessor for MyMagazinesMagazineFeedGroupKnobs();
    strcpy(v97, "myMagazines");
    HIDWORD(v97[1]) = -352321536;
    v98 = 0;
    v99 = 1;
    sub_2186EC5F0(&qword_280EA30B0, type metadata accessor for MyMagazinesMagazineFeedGroupKnobs);
    sub_219BF7674();
    type metadata accessor for NewIssueMagazineFeedGroupKnobs();
    strcpy(v97, "newIssue");
    BYTE1(v97[1]) = 0;
    WORD1(v97[1]) = 0;
    HIDWORD(v97[1]) = -402653184;
    v98 = 0;
    v99 = 1;
    sub_2186EC5F0(&qword_280EAC0F0, type metadata accessor for NewIssueMagazineFeedGroupKnobs);
    sub_219BF7674();
    type metadata accessor for PaywallMagazineFeedGroupKnobs();
    strcpy(v97, "paywall");
    v97[1] = 0xE700000000000000;
    v98 = 0;
    v99 = 1;
    sub_2186EC5F0(&qword_280EAF858, type metadata accessor for PaywallMagazineFeedGroupKnobs);
    sub_219BF7674();
    type metadata accessor for RecommendedIssuesMagazineFeedGroupKnobs();
    v97[0] = 0xD000000000000011;
    v97[1] = 0x8000000219CD66C0;
    v98 = 0;
    v99 = 1;
    sub_2186EC5F0(&qword_280E96B40, type metadata accessor for RecommendedIssuesMagazineFeedGroupKnobs);
    sub_219BF7674();
    type metadata accessor for TopicMagazineFeedGroupKnobs();
    v97[0] = 0x6369706F74;
    v97[1] = 0xE500000000000000;
    v98 = 0;
    v99 = 1;
    sub_2186EC5F0(&qword_280EB6210, type metadata accessor for TopicMagazineFeedGroupKnobs);
    v68 = v74;
    sub_219BF7674();
    type metadata accessor for TrendingMagazineFeedGroupKnobs();
    strcpy(v97, "trending");
    BYTE1(v97[1]) = 0;
    WORD1(v97[1]) = 0;
    HIDWORD(v97[1]) = -402653184;
    v98 = 0;
    v99 = 1;
    sub_2186EC5F0(&unk_280EAA170, type metadata accessor for TrendingMagazineFeedGroupKnobs);
    v69 = v72;
    sub_219BF7674();
    type metadata accessor for BestOfBundleMagazineFeedGroupKnobs();
    strcpy(v97, "bestOfBundle");
    BYTE5(v97[1]) = 0;
    HIWORD(v97[1]) = -5120;
    v98 = 0;
    v99 = 1;
    sub_2186EC5F0(&qword_280EA1038, type metadata accessor for BestOfBundleMagazineFeedGroupKnobs);
    sub_219BF7674();
    type metadata accessor for NewspaperMagazineFeedGroupKnobs();
    strcpy(v97, "newspaper");
    WORD1(v97[1]) = 0;
    HIDWORD(v97[1]) = -385875968;
    v98 = 0;
    v99 = 1;
    sub_2186EC5F0(&qword_280EA8D48, type metadata accessor for NewspaperMagazineFeedGroupKnobs);
    sub_219BF7674();
    sub_218933F00(v100, v94, v93, v76, v77, v78, v79, v80, v43, v81, v82, v83, v68, v69, v8, v5);
    (*(v73 + 8))(v38, v31);
    v36 = v42;
    return __swift_destroy_boxed_opaque_existential_1(v36);
  }

  v93 = MEMORY[0x277D84F90];
  v89 = v34;
  v90 = result + 32;
  v40 = 0;
  v87 = v8;
  v88 = v5;
  v85 = v33;
  v86 = v31;
  v84 = result;
  while (v40 < *(result + 16))
  {
    v44 = v90 + 32 * v40;
    v46 = *v44;
    v45 = *(v44 + 8);
    v100 = *(v44 + 16);
    v47 = *(v44 + 24);
    v48 = qword_280EC7D80;

    if (v48 != -1)
    {
      swift_once();
    }

    v94 = (v40 + 1);
    v49 = off_280EC7D88;
    if (*(off_280EC7D88 + 2))
    {
      sub_219BF7AA4();
      sub_219BF5524();
      sub_219BF7AC4();
      if (!v47)
      {
        MEMORY[0x21CECE850](v100);
      }

      v50 = sub_219BF7AE4();
      v51 = v49 + 56;
      v52 = -1 << v49[32];
      v53 = v50 & ~v52;
      if ((*&v49[((v53 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v53))
      {
        v54 = ~v52;
        v55 = *(v49 + 6);
        do
        {
          v56 = v55 + 32 * v53;
          v57 = *(v56 + 16);
          v58 = *(v56 + 24);
          v59 = *v56 == v46 && *(v56 + 8) == v45;
          if (v59 || (sub_219BF78F4() & 1) != 0)
          {
            if (v58)
            {
              if (v47)
              {
                goto LABEL_5;
              }
            }

            else
            {
              if (v57 == v100)
              {
                v60 = v47;
              }

              else
              {
                v60 = 1;
              }

              if ((v60 & 1) == 0)
              {
LABEL_5:

                v40 = v94;
                v41 = v94 == v91;
                v42 = v89;
                goto LABEL_6;
              }
            }
          }

          v53 = (v53 + 1) & v54;
        }

        while (((*&v51[(v53 >> 3) & 0xFFFFFFFFFFFFFF8] >> v53) & 1) != 0);
      }
    }

    v61 = v93;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v95 = v61;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_218C340B0(0, *(v61 + 16) + 1, 1);
      v61 = v95;
    }

    v42 = v89;
    v64 = *(v61 + 16);
    v63 = *(v61 + 24);
    if (v64 >= v63 >> 1)
    {
      sub_218C340B0((v63 > 1), v64 + 1, 1);
      v61 = v95;
    }

    *(v61 + 16) = v64 + 1;
    v93 = v61;
    v65 = v61 + 32 * v64;
    *(v65 + 32) = v46;
    *(v65 + 40) = v45;
    *(v65 + 48) = v100;
    *(v65 + 56) = v47;
    v40 = v94;
    v41 = v94 == v91;
LABEL_6:
    v43 = v92;
    v8 = v87;
    v5 = v88;
    v38 = v85;
    v31 = v86;
    result = v84;
    if (v41)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21893B0B8(uint64_t a1, uint64_t a2)
{
  v20[1] = a1;
  sub_21893CF78(0, &qword_280EB10B0, type metadata accessor for CuratedMagazineFeedGroupKnobs);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v20 - v7;
  v9 = type metadata accessor for CuratedMagazineFeedGroupKnobs();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  v14 = *(a2 + 8);
  v15 = *(a2 + 16);
  v16 = *(a2 + 24);
  v20[2] = *a2;
  v20[3] = v14;
  v20[4] = v15;
  v21 = v16;
  sub_21893D038(0, &qword_280E8CE40, MEMORY[0x277D844C8]);
  sub_2186EC5F0(&qword_280EB1108, type metadata accessor for CuratedMagazineFeedGroupKnobs);
  v17 = v22;
  sub_219BF7734();
  if (v17)
  {

    (*(v10 + 56))(v8, 1, 1, v9);
    return sub_21893CB10(v8, &qword_280EB10B0, type metadata accessor for CuratedMagazineFeedGroupKnobs);
  }

  else
  {
    v19 = *(v10 + 56);
    v19(v8, 0, 1, v9);
    sub_21893CC34(v8, v12, type metadata accessor for CuratedMagazineFeedGroupKnobs);
    sub_21893CEB4(v12, v6);
    v19(v6, 0, 1, v9);

    sub_2199D567C(v6, v13, v14);
    return sub_21893CF18(v12, type metadata accessor for CuratedMagazineFeedGroupKnobs);
  }
}

uint64_t sub_21893B398(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for CuratedMagazineFeedGroupKnobs();
  v52 = *(v4 - 8);
  v53 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v54 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v51 = &v45 - v7;
  sub_21893CF78(0, &qword_280E8F900, sub_21893CFCC);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v45 - v12;
  sub_21893D038(0, &qword_280E8C5B8, MEMORY[0x277D84538]);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v45 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21893CDF0();
  sub_219BF7B44();
  v55 = v2;
  v60 = v2[1];
  strcpy(v57, "categories");
  BYTE3(v57[1]) = 0;
  HIDWORD(v57[1]) = -369098752;
  v58 = 0;
  v59 = 1;
  sub_21893D09C();
  v19 = v56;
  sub_219BF7834();
  if (v19)
  {
    return (*(v16 + 8))(v18, v15);
  }

  v49 = v13;
  v50 = v11;
  v56 = v16;
  type metadata accessor for MagazineFeedGroupKnobs();
  v57[0] = 0x6465727574616566;
  v57[1] = 0xEF656C6369747241;
  v58 = 0;
  v59 = 1;
  type metadata accessor for FeaturedArticleMagazineFeedGroupKnobs();
  sub_2186EC5F0(&qword_280E99B48, type metadata accessor for FeaturedArticleMagazineFeedGroupKnobs);
  sub_219BF7834();
  v57[0] = 0xD000000000000014;
  v57[1] = 0x8000000219CD6680;
  v58 = 0;
  v59 = 1;
  type metadata accessor for FeaturedIssueArticleMagazineFeedGroupKnobs();
  sub_2186EC5F0(&qword_280E94F00, type metadata accessor for FeaturedIssueArticleMagazineFeedGroupKnobs);
  sub_219BF7834();
  strcpy(v57, "featuredIssue");
  HIWORD(v57[1]) = -4864;
  v58 = 0;
  v59 = 1;
  type metadata accessor for FeaturedIssueMagazineFeedGroupKnobs();
  sub_2186EC5F0(&qword_280E9DB48, type metadata accessor for FeaturedIssueMagazineFeedGroupKnobs);
  sub_219BF7834();
  v57[0] = 0xD000000000000010;
  v57[1] = 0x8000000219CD66A0;
  v58 = 0;
  v59 = 1;
  type metadata accessor for InlineCategoriesMagazineFeedGroupKnobs();
  sub_2186EC5F0(&qword_280E98438, type metadata accessor for InlineCategoriesMagazineFeedGroupKnobs);
  sub_219BF7834();
  strcpy(v57, "myMagazines");
  HIDWORD(v57[1]) = -352321536;
  v58 = 0;
  v59 = 1;
  type metadata accessor for MyMagazinesMagazineFeedGroupKnobs();
  sub_2186EC5F0(&qword_280EA30B8, type metadata accessor for MyMagazinesMagazineFeedGroupKnobs);
  sub_219BF7834();
  strcpy(v57, "newIssue");
  BYTE1(v57[1]) = 0;
  WORD1(v57[1]) = 0;
  HIDWORD(v57[1]) = -402653184;
  v58 = 0;
  v59 = 1;
  type metadata accessor for NewIssueMagazineFeedGroupKnobs();
  sub_2186EC5F0(&qword_280EAC0F8, type metadata accessor for NewIssueMagazineFeedGroupKnobs);
  sub_219BF7834();
  strcpy(v57, "paywall");
  v57[1] = 0xE700000000000000;
  v58 = 0;
  v59 = 1;
  type metadata accessor for PaywallMagazineFeedGroupKnobs();
  sub_2186EC5F0(&qword_280EAF860, type metadata accessor for PaywallMagazineFeedGroupKnobs);
  sub_219BF7834();
  v57[0] = 0xD000000000000011;
  v57[1] = 0x8000000219CD66C0;
  v58 = 0;
  v59 = 1;
  type metadata accessor for RecommendedIssuesMagazineFeedGroupKnobs();
  sub_2186EC5F0(&qword_280E96B48, type metadata accessor for RecommendedIssuesMagazineFeedGroupKnobs);
  sub_219BF7834();
  v57[0] = 0x6369706F74;
  v57[1] = 0xE500000000000000;
  v58 = 0;
  v59 = 1;
  type metadata accessor for TopicMagazineFeedGroupKnobs();
  sub_2186EC5F0(&qword_280EB6218, type metadata accessor for TopicMagazineFeedGroupKnobs);
  sub_219BF7834();
  strcpy(v57, "trending");
  BYTE1(v57[1]) = 0;
  WORD1(v57[1]) = 0;
  HIDWORD(v57[1]) = -402653184;
  v58 = 0;
  v59 = 1;
  type metadata accessor for TrendingMagazineFeedGroupKnobs();
  sub_2186EC5F0(&qword_280EAA180, type metadata accessor for TrendingMagazineFeedGroupKnobs);
  v48 = v15;
  v21 = v18;
  sub_219BF7834();
  strcpy(v57, "bestOfBundle");
  BYTE5(v57[1]) = 0;
  HIWORD(v57[1]) = -5120;
  v58 = 0;
  v59 = 1;
  type metadata accessor for BestOfBundleMagazineFeedGroupKnobs();
  sub_2186EC5F0(&qword_280EA1040, type metadata accessor for BestOfBundleMagazineFeedGroupKnobs);
  sub_219BF7834();
  strcpy(v57, "newspaper");
  WORD1(v57[1]) = 0;
  HIDWORD(v57[1]) = -385875968;
  v58 = 0;
  v59 = 1;
  type metadata accessor for NewspaperMagazineFeedGroupKnobs();
  sub_2186EC5F0(&qword_280EA8D50, type metadata accessor for NewspaperMagazineFeedGroupKnobs);
  sub_219BF7834();
  v22 = *v55;
  v23 = *(*v55 + 64);
  v47 = *v55 + 64;
  v24 = 1 << *(v22 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v23;
  v46 = (v24 + 63) >> 6;
  v55 = v22;

  v27 = 0;
  if (v26)
  {
    while (1)
    {
      v28 = v27;
LABEL_14:
      v31 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
      v32 = v31 | (v28 << 6);
      v33 = (v55[6] + 16 * v32);
      v35 = *v33;
      v34 = v33[1];
      v36 = v51;
      sub_21893CEB4(v55[7] + *(v52 + 72) * v32, v51);
      sub_21893CFCC();
      v38 = v37;
      v39 = *(v37 + 48);
      v40 = v50;
      *v50 = v35;
      v40[1] = v34;
      sub_21893CC34(v36, v40 + v39, type metadata accessor for CuratedMagazineFeedGroupKnobs);
      (*(*(v38 - 8) + 56))(v40, 0, 1, v38);

      v30 = v28;
LABEL_15:
      v41 = v49;
      sub_21893D0F0(v50, v49);
      sub_21893CFCC();
      if ((*(*(v38 - 8) + 48))(v41, 1, v38) == 1)
      {
        break;
      }

      v42 = *v49;
      v43 = v49[1];
      sub_21893CC34(v49 + *(v38 + 48), v54, type metadata accessor for CuratedMagazineFeedGroupKnobs);
      v57[0] = v42;
      v57[1] = v43;
      v58 = 0;
      v59 = 1;
      sub_2186EC5F0(&qword_280EB1110, type metadata accessor for CuratedMagazineFeedGroupKnobs);
      sub_219BF7834();
      sub_21893CF18(v54, type metadata accessor for CuratedMagazineFeedGroupKnobs);

      v27 = v30;
      if (!v26)
      {
        goto LABEL_7;
      }
    }

    return (*(v56 + 8))(v21, v48);
  }

  else
  {
LABEL_7:
    if (v46 <= v27 + 1)
    {
      v29 = v27 + 1;
    }

    else
    {
      v29 = v46;
    }

    v30 = v29 - 1;
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v28 >= v46)
      {
        sub_21893CFCC();
        v38 = v44;
        (*(*(v44 - 8) + 56))(v50, 1, 1, v44);
        v26 = 0;
        goto LABEL_15;
      }

      v26 = *(v47 + 8 * v28);
      ++v27;
      if (v26)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21893C0A8()
{
  v0 = sub_2194B1FC8(&unk_282A21848);
  result = swift_arrayDestroy();
  off_280EC7D88 = v0;
  return result;
}

uint64_t sub_21893C0F8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  return result;
}

void sub_21893C118(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
}

uint64_t sub_21893C128(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v6 || (v7 = sub_219BF78F4(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else
    {
      if (v2 == v4)
      {
        v9 = v5;
      }

      else
      {
        v9 = 1;
      }

      if ((v9 & 1) == 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_21893C1AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_219BF7AA4();
  sub_219BF5524();
  sub_219BF7AC4();
  if (v2 != 1)
  {
    MEMORY[0x21CECE850](v1);
  }

  return sub_219BF7AE4();
}

uint64_t sub_21893C238()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_219BF5524();
  if (v2 == 1)
  {
    return sub_219BF7AC4();
  }

  sub_219BF7AC4();
  return MEMORY[0x21CECE850](v1);
}

uint64_t sub_21893C29C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_219BF7AA4();
  sub_219BF5524();
  sub_219BF7AC4();
  if (v2 != 1)
  {
    MEMORY[0x21CECE850](v1);
  }

  return sub_219BF7AE4();
}

uint64_t sub_21893C324(uint64_t a1)
{
  v2 = sub_21893CDF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21893C360(uint64_t a1)
{
  v2 = sub_21893CDF0();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_21893C3CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for MagazineFeedServiceConfig();
    v7 = sub_2186EC5F0(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_21893C468(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_21893C3CC(255, a3, a4);
    v5 = sub_219BF6FB4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_21893C4C0@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v2 = type metadata accessor for CuratedMagazineFeedGroupConfigData();
  MEMORY[0x28223BE20](v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21893CF78(0, &qword_280EB10B0, type metadata accessor for CuratedMagazineFeedGroupKnobs);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v32 - v6;
  v8 = *v1;
  sub_2186ECF58();
  v9 = sub_219BEDCA4();
  if (*(v8 + 16))
  {
    v11 = sub_21870F700(v9, v10);
    v13 = v12;

    if (v13)
    {
      v14 = *(v8 + 56);
      v15 = type metadata accessor for CuratedMagazineFeedGroupKnobs();
      v16 = *(v15 - 8);
      sub_21893CEB4(v14 + *(v16 + 72) * v11, v7);
      v17 = *(v16 + 56);
      v17(v7, 0, 1, v15);
      v18 = v33;
      sub_21893CC34(v7, v33, type metadata accessor for CuratedMagazineFeedGroupKnobs);
      return (v17)(v18, 0, 1, v15);
    }
  }

  else
  {
  }

  v20 = type metadata accessor for CuratedMagazineFeedGroupKnobs();
  v21 = *(v20 - 8);
  v32 = *(v21 + 56);
  v32(v7, 1, 1, v20);
  sub_219BEDD14();
  v22 = &v4[*(v2 + 36)];
  v23 = *v22;
  v24 = v22[1];

  sub_21893CF18(v4, type metadata accessor for CuratedMagazineFeedGroupConfigData);
  if (*(v8 + 16))
  {
    v25 = sub_21870F700(v23, v24);
    v27 = v26;

    if (v27)
    {
      v28 = *(v8 + 56) + *(v21 + 72) * v25;
      v29 = v33;
      sub_21893CEB4(v28, v33);
      v30 = v29;
      v31 = 0;
      goto LABEL_10;
    }
  }

  else
  {
  }

  v31 = 1;
  v30 = v33;
LABEL_10:
  v32(v30, v31, 1, v20);
  result = (*(v21 + 48))(v7, 1, v20);
  if (result != 1)
  {
    return sub_21893CB10(v7, &qword_280EB10B0, type metadata accessor for CuratedMagazineFeedGroupKnobs);
  }

  return result;
}

BOOL sub_21893C834(uint64_t *a1, uint64_t *a2)
{
  result = 0;
  if ((sub_21931BD74(*a1, *a2) & 1) != 0 && a1[1] == a2[1])
  {
    v4 = type metadata accessor for MagazineFeedGroupKnobs();
    if (sub_218D5D69C(a1 + v4[6], a2 + v4[6]) & 1) != 0 && (sub_21997A678(a1 + v4[7], a2 + v4[7]) & 1) != 0 && (sub_21986FCCC(a1 + v4[8], a2 + v4[8]))
    {
      type metadata accessor for MagazineFeedServiceConfig();
      sub_2186EC5F0(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig);
      if (sub_219BEE9F4() & 1) != 0 && (sub_219BEE9F4())
      {
        sub_2186F9548();
        type metadata accessor for MyMagazinesMagazineFeedGroupKnobs();
        if (sub_219BEF504() & 1) != 0 && (sub_219BEEC64() & 1) != 0 && (sub_218CE8938(a1 + v4[11], a2 + v4[11]) & 1) != 0 && (sub_219BEE9F4() & 1) != 0 && (sub_218E03800(a1 + v4[13], a2 + v4[13]) & 1) != 0 && (sub_219024374(a1 + v4[14], a2 + v4[14]) & 1) != 0 && (sub_2198C2CB0(a1 + v4[15], a2 + v4[15]) & 1) != 0 && (sub_219628B24(a1 + v4[16], a2 + v4[16]))
        {
          v5 = v4[17];
          v6 = a1 + v5;
          v7 = a2 + v5;
          if (sub_219BEE9F4())
          {
            v8 = type metadata accessor for NewspaperMagazineFeedGroupKnobs();
            if (*&v6[v8[5]] == *&v7[v8[5]] && *&v6[v8[6]] == *&v7[v8[6]] && (sub_219419180(*&v6[v8[7]], *&v7[v8[7]]) & 1) != 0)
            {
              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_21893CAA0(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_21893C468(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_21893CB10(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_21893CF78(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_21893CB6C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  sub_21893C468(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_21893CBC8(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_21893CF78(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_21893CC34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_21893CC9C()
{
  if (!qword_280E91440)
  {
    sub_219BEE3E4();
    v0 = MEMORY[0x277D31FF0];
    sub_2186EC5F0(&qword_280E91C20, MEMORY[0x277D31FF0]);
    sub_2186EC5F0(&unk_280E91C30, v0);
    sub_2186EC5F0(&qword_280E91C28, v0);
    v1 = sub_219BEF544();
    if (!v2)
    {
      atomic_store(v1, &qword_280E91440);
    }
  }
}

void sub_21893CDA0()
{
  if (!qword_280E8BAF0)
  {
    v0 = sub_219BF78A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8BAF0);
    }
  }
}

unint64_t sub_21893CDF0()
{
  result = qword_280EC7D60;
  if (!qword_280EC7D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC7D60);
  }

  return result;
}

unint64_t sub_21893CE60()
{
  result = qword_280EA6D60;
  if (!qword_280EA6D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA6D60);
  }

  return result;
}

uint64_t sub_21893CEB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CuratedMagazineFeedGroupKnobs();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21893CF18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21893CF78(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_21893CFCC()
{
  if (!qword_280E8F908)
  {
    type metadata accessor for CuratedMagazineFeedGroupKnobs();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8F908);
    }
  }
}

void sub_21893D038(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21893CDF0();
    v7 = a3(a1, &type metadata for MagazineFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_21893D09C()
{
  result = qword_280EA6D68;
  if (!qword_280EA6D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA6D68);
  }

  return result;
}

uint64_t sub_21893D0F0(uint64_t a1, uint64_t a2)
{
  sub_21893CF78(0, &qword_280E8F900, sub_21893CFCC);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_21893D184(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_21893D1CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21893D224()
{
  result = qword_280EC7D68;
  if (!qword_280EC7D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC7D68);
  }

  return result;
}

unint64_t sub_21893D27C()
{
  result = qword_280EC7D50;
  if (!qword_280EC7D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC7D50);
  }

  return result;
}

unint64_t sub_21893D2D4()
{
  result = qword_280EC7D58;
  if (!qword_280EC7D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC7D58);
  }

  return result;
}

uint64_t sub_21893D328()
{
  v1 = OBJC_IVAR____TtC7NewsUI230EngagementManagerConfigFactory_messagesDirectory;
  v2 = sub_219BDB954();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_21893D3CC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_218718690(a1, v10);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for FollowingNotificationsModule();
    v7 = objc_allocWithZone(v6);
    sub_218718690(v10, &v7[OBJC_IVAR___TSFollowingNotificationsModule_resolver]);
    *&v7[OBJC_IVAR___TSFollowingNotificationsModule_tracker] = v5;
    v9.receiver = v7;
    v9.super_class = v6;
    v8 = objc_msgSendSuper2(&v9, sel_init);
    result = __swift_destroy_boxed_opaque_existential_1(v10);
    a2[3] = v6;
    a2[4] = &off_282A809F0;
    *a2 = v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21893D4A4(void *a1)
{
  sub_218718690(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    v4 = type metadata accessor for FollowingNotificationsModule();
    v5 = objc_allocWithZone(v4);
    sub_218718690(v8, &v5[OBJC_IVAR___TSFollowingNotificationsModule_resolver]);
    *&v5[OBJC_IVAR___TSFollowingNotificationsModule_tracker] = v3;
    v7.receiver = v5;
    v7.super_class = v4;
    v6 = objc_msgSendSuper2(&v7, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v8);
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21893D56C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8E240);
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EA36D8);
    result = sub_219BE1E34();
    if (v18)
    {
      v4 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
      MEMORY[0x28223BE20](v4);
      v6 = (v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v7 + 16))(v6);
      v8 = *v6;
      v9 = type metadata accessor for FollowingNotificationsTracker();
      v16[3] = v9;
      v16[4] = &off_282A46F70;
      v16[0] = v8;
      type metadata accessor for NewsletterManagementTrackingObserver();
      v10 = swift_allocObject();
      v11 = __swift_mutable_project_boxed_opaque_existential_1(v16, v9);
      MEMORY[0x28223BE20](v11);
      v13 = (v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v14 + 16))(v13);
      v15 = *v13;
      v10[6] = v9;
      v10[7] = &off_282A46F70;
      v10[2] = v3;
      v10[3] = v15;
      __swift_destroy_boxed_opaque_existential_1(v16);
      __swift_destroy_boxed_opaque_existential_1(v17);
      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21893D7D0(void *a1)
{
  sub_218943A7C(0, qword_27CC0ADF0, type metadata accessor for FollowingNotificationsPrewarm);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EA6940);
  result = sub_219BE1E34();
  if (!v19)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E98560);
  result = sub_219BE1E34();
  v6 = v16;
  if (!v16)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v7 = v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21878E8C0();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = type metadata accessor for FollowingNotificationsPrewarm();
  sub_219BE1E34();
  result = (*(*(v9 - 8) + 48))(v4, 1, v9);
  if (result != 1)
  {
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x28223BE20](v10);
    v12 = (&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12);
    v14 = sub_218943BF4(*v12, v6, v7, v8, v4);
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v18);
    return v14;
  }

LABEL_9:
  __break(1u);
  return result;
}

_BYTE *sub_21893DA90@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8E6E0);
  result = sub_219BE1E24();
  if (result)
  {
    v4 = [result isPrivateDataSyncingEnabled];
    swift_unknownObjectRelease();
    v5 = type metadata accessor for FollowingNotificationsHeaderLabelTextProvider();
    result = swift_allocObject();
    result[16] = v4;
    a2[3] = v5;
    a2[4] = &off_282A3A188;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21893DB40@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EDC810);
  result = sub_219BE1E34();
  if (v40)
  {
    v32 = a2;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280E93398);
    result = sub_219BE1E34();
    if (v38)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v39, v40);
      v31[1] = v31;
      MEMORY[0x28223BE20](v5);
      v7 = (v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v8 + 16))(v7);
      v9 = __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
      v31[0] = v31;
      MEMORY[0x28223BE20](v9);
      v11 = (v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v12 + 16))(v11);
      v13 = *v7;
      v14 = *v11;
      v15 = type metadata accessor for BaseStyler();
      v36[3] = v15;
      v16 = sub_218703FA0(&qword_280EDFED0, type metadata accessor for BaseStyler);
      v36[4] = v16;
      v36[0] = v13;
      v17 = type metadata accessor for FollowingNotificationsHeaderLabelTextProvider();
      v34 = v17;
      v35 = &off_282A3A188;
      v33[0] = v14;
      v18 = type metadata accessor for FollowingNotificationsStyler();
      v19 = swift_allocObject();
      v20 = __swift_mutable_project_boxed_opaque_existential_1(v36, v15);
      MEMORY[0x28223BE20](v20);
      v22 = (v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v23 + 16))(v22);
      v24 = __swift_mutable_project_boxed_opaque_existential_1(v33, v34);
      MEMORY[0x28223BE20](v24);
      v26 = (v31 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v27 + 16))(v26);
      v28 = *v22;
      v29 = *v26;
      v19[10] = v15;
      v19[11] = v16;
      v19[7] = v28;
      v19[5] = v17;
      v19[6] = &off_282A3A188;
      v19[2] = v29;
      __swift_destroy_boxed_opaque_existential_1(v33);
      __swift_destroy_boxed_opaque_existential_1(v36);
      __swift_destroy_boxed_opaque_existential_1(v37);
      result = __swift_destroy_boxed_opaque_existential_1(v39);
      v30 = v32;
      v32[3] = v18;
      v30[4] = &off_282A80198;
      *v30 = v19;
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

uint64_t sub_21893DFB0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186CF94C();
    result = sub_219BE1E24();
    if (result)
    {
      v6 = result;
      v7 = type metadata accessor for FollowingNotificationsRouter();
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      result = sub_2186CB1F0(v9, v8 + 24);
      *(v8 + 64) = v5;
      *(v8 + 72) = v6;
      a2[3] = v7;
      a2[4] = &off_282A5C798;
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

void sub_21893E0AC(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for FollowingNotificationsViewController();
  v2 = sub_219BE1E24();
  swift_unknownObjectWeakAssign();
}

uint64_t sub_21893E12C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E9B818);
  result = sub_219BE1E34();
  v5 = v20;
  if (!v20)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EA6948);
  result = sub_219BE1E34();
  if (!v19)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EA36D8);
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
    v15 = sub_218943F24(v5, v6, *v9, *v13);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v16);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    *a2 = v15;
    a2[1] = &off_282A57E48;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_21893E3DC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186CF94C();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E998E0);
  result = sub_219BE1E34();
  v6 = v19;
  if (!v19)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21878DB3C();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FollowingNotificationsModifierFactory();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = result;
  v12 = v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8E240);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EB8D80);
  result = sub_219BE1E34();
  if (!v18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EA37A0);
  result = sub_219BE1E34();
  if (!v16)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v10 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB6AF0);
  result = sub_219BE1E34();
  if (v14)
  {
    sub_218943B60();
    v11 = swift_allocObject();
    v11[3] = 0;
    swift_unknownObjectWeakInit();
    v11[4] = v5;
    v11[5] = v7;
    v11[6] = v8;
    v11[7] = v6;
    v11[8] = v12;
    v11[9] = v9;
    sub_2186CB1F0(&v17, (v11 + 10));
    sub_2186CB1F0(&v15, (v11 + 16));
    v11[15] = v10;
    sub_2186CB1F0(&v13, (v11 + 21));
    *(v6 + OBJC_IVAR____TtC7NewsUI233FollowingNotificationsDataManager_delegate + 8) = &off_282AA2D40;
    result = swift_unknownObjectWeakAssign();
    *a2 = v11;
    a2[1] = &off_282AA2D68;
    return result;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_21893E73C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_219BDBD34();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EC30E0);
  result = sub_219BE1E34();
  v9 = v33;
  if (!v33)
  {
    __break(1u);
    goto LABEL_10;
  }

  v24 = v5;
  v25 = v4;
  v10 = v34;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9F20);
  result = sub_219BE1E34();
  v11 = v31;
  if (!v31)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v12 = v32;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EC4290);
  result = sub_219BE1E34();
  if (!v30)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v23 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB6AF0);
  result = sub_219BE1E34();
  if (!v28)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v14 = type metadata accessor for FollowingNotificationsDataManager();
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR____TtC7NewsUI233FollowingNotificationsDataManager_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v16 = &v15[OBJC_IVAR____TtC7NewsUI233FollowingNotificationsDataManager_subscriptionService];
  *v16 = v9;
  *(v16 + 1) = v10;
  v17 = &v15[OBJC_IVAR____TtC7NewsUI233FollowingNotificationsDataManager_tagService];
  *v17 = v11;
  *(v17 + 1) = v12;
  sub_218718690(v29, &v15[OBJC_IVAR____TtC7NewsUI233FollowingNotificationsDataManager_notificationService]);
  *&v15[OBJC_IVAR____TtC7NewsUI233FollowingNotificationsDataManager_configurationManager] = v13;
  sub_218718690(v27, &v15[OBJC_IVAR____TtC7NewsUI233FollowingNotificationsDataManager_sportsOnboardingManager]);
  v26.receiver = v15;
  v26.super_class = v14;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v18 = objc_msgSendSuper2(&v26, sel_init);
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 defaultCenter];
  [v21 addObserver:v20 selector:sel_determineSystemNotificationSettingsStatus name:*MEMORY[0x277D76758] object:0];

  if (qword_280EE9AA0 != -1)
  {
    swift_once();
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_218703FA0(&qword_27CC0ADD8, type metadata accessor for FollowingNotificationsDataManager);
  sub_219BDC7E4();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v24 + 8))(v7, v25);
  __swift_destroy_boxed_opaque_existential_1(v27);
  result = __swift_destroy_boxed_opaque_existential_1(v29);
  v22 = v23;
  *v23 = v20;
  v22[1] = &off_282A64D40;
  return result;
}

void *sub_21893EBCC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C6148(0, &qword_280E8E890);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  [result addObserver_];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186D6710(0, &qword_280E8E240);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  [result addObserver_];

  return swift_unknownObjectRelease();
}

uint64_t sub_21893ECCC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EC30E0);
  result = sub_219BE1E34();
  v3 = v41;
  if (!v41)
  {
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9F20);
  result = sub_219BE1E34();
  if (!v39)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EAFB10);
  result = sub_219BE1E34();
  if (!v38)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E890);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = result;
  v29 = v40;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v7 = result;
  v27 = v39;
  v28 = v42;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8E240);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EB8D80);
  result = sub_219BE1E34();
  if (!v36)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v25 = v6;
  v26 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FDF0);
  result = sub_219BE1E34();
  if (!v34)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E93398);
  result = sub_219BE1E34();
  if (v32)
  {
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
    MEMORY[0x28223BE20](v9);
    v11 = (&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = *v11;
    v14 = type metadata accessor for FollowingNotificationsHeaderLabelTextProvider();
    v30[4] = &off_282A3A188;
    v30[3] = v14;
    v30[0] = v13;
    type metadata accessor for FollowingNotificationsModifierFactory();
    v15 = swift_allocObject();
    v16 = __swift_mutable_project_boxed_opaque_existential_1(v30, v14);
    MEMORY[0x28223BE20](v16);
    v18 = (&v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18);
    v20 = *v18;
    v15[29] = v14;
    v15[30] = &off_282A3A188;
    v15[26] = v20;
    v21 = v28;
    v15[2] = v3;
    v15[3] = v21;
    v22 = v29;
    v15[4] = v27;
    v15[5] = v22;
    sub_2186CB1F0(&v37, (v15 + 6));
    v23 = v26;
    v15[11] = v4;
    v15[12] = v23;
    v15[13] = v25;
    v15[14] = v7;
    v15[15] = v8;
    sub_2186CB1F0(&v35, (v15 + 16));
    sub_2186CB1F0(&v33, (v15 + 21));
    __swift_destroy_boxed_opaque_existential_1(v30);
    __swift_destroy_boxed_opaque_existential_1(v31);
    return v15;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_21893F290()
{
  sub_21878D854(0, &qword_280EE53E0, MEMORY[0x277D6D8B8]);
  swift_allocObject();
  return sub_219BE6F94();
}

uint64_t sub_21893F2E4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21878D854(0, &qword_280EE53E0, MEMORY[0x277D6D8B8]);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_21878DF90();
    result = sub_219BE1E24();
    if (result)
    {
      sub_21878DB3C();
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

uint64_t sub_21893F3E0(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D6E728];
  sub_21878D854(0, &qword_27CC0ADB0, MEMORY[0x277D6E728]);
  swift_allocObject();
  sub_219BE96E4();
  sub_21878D854(0, &qword_27CC0ADB8, MEMORY[0x277D6E3B8]);
  swift_allocObject();
  sub_21878E1E4(&qword_27CC0ADC0, &qword_27CC0ADB0, v3);
  sub_219BE8FA4();
  sub_219BE6ED4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_21878E644();
  result = sub_219BE1E24();
  if (result)
  {
    swift_allocObject();
    sub_218703FA0(&unk_27CC0ADC8, sub_21878E644);
    sub_219BE8FA4();
    sub_219BE6ED4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21893F598(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21878E05C(0, &unk_280EE4C20, sub_21878E0F4, sub_21878E148, MEMORY[0x277D6DF28]);
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
  type metadata accessor for FollowingNotificationsLayoutBuilder();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21878E05C(0, &qword_280EE41E8, sub_21878E7CC, sub_21878E308, MEMORY[0x277D6E7B0]);
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
    sub_21878E644();
    swift_allocObject();
    return sub_219BEA484();
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_21893F7F8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21878DE14();
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EE39D0);
    result = sub_219BE1E34();
    if (v3)
    {
      sub_21878DF90();
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

uint64_t sub_21893F8F8()
{
  sub_21878E05C(0, &qword_280EE41E8, sub_21878E7CC, sub_21878E308, MEMORY[0x277D6E7B0]);
  swift_allocObject();
  return sub_219BE9964();
}

uint64_t sub_21893F974()
{
  sub_21878E05C(0, &unk_280EE4C20, sub_21878E0F4, sub_21878E148, MEMORY[0x277D6DF28]);
  swift_allocObject();
  return sub_219BE8554();
}

uint64_t sub_21893F9F0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E9A130);
  result = sub_219BE1E34();
  if (!v67)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E92F38);
  result = sub_219BE1E34();
  if (!v65)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E9E4D0);
  result = sub_219BE1E34();
  if (!v63)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FollowingSettingsButtonViewLayoutAttributesFactory();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v51 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = type metadata accessor for FollowingNotificationsDisabledViewLayoutAttributesFactory();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = __swift_mutable_project_boxed_opaque_existential_1(v66, v67);
    v50 = &v42;
    MEMORY[0x28223BE20](v5);
    v7 = (&v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7);
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v64, v65);
    v49 = &v42;
    MEMORY[0x28223BE20](v9);
    v11 = (&v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v62, v63);
    v48 = &v42;
    MEMORY[0x28223BE20](v13);
    v15 = (&v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15);
    v17 = *v7;
    v18 = *v11;
    v19 = *v15;
    v20 = type metadata accessor for TitleViewLayoutAttributesFactory();
    v61[3] = v20;
    v61[4] = &off_282A72438;
    v61[0] = v17;
    v47 = type metadata accessor for FollowingNotificationsSectionFooterViewLayoutAttributesFactory();
    v59 = v47;
    v60 = &off_282A74580;
    v58[0] = v18;
    v46 = type metadata accessor for TagViewLayoutAttributesFactory();
    v56 = v46;
    v57 = &off_282A3D208;
    v55[0] = v19;
    v53 = v3;
    v54 = &off_282A2F738;
    v52[0] = v4;
    type metadata accessor for FollowingNotificationsLayoutBuilder();
    v21 = swift_allocObject();
    v22 = __swift_mutable_project_boxed_opaque_existential_1(v61, v20);
    v45 = &v42;
    MEMORY[0x28223BE20](v22);
    v24 = (&v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v25 + 16))(v24);
    v26 = __swift_mutable_project_boxed_opaque_existential_1(v58, v59);
    v44 = &v42;
    MEMORY[0x28223BE20](v26);
    v43 = v3;
    v28 = (&v42 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v29 + 16))(v28);
    v30 = __swift_mutable_project_boxed_opaque_existential_1(v55, v56);
    MEMORY[0x28223BE20](v30);
    v32 = (&v42 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v33 + 16))(v32);
    v34 = __swift_mutable_project_boxed_opaque_existential_1(v52, v53);
    MEMORY[0x28223BE20](v34);
    v36 = (&v42 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v37 + 16))(v36);
    v38 = *v24;
    v39 = *v28;
    v40 = *v32;
    v41 = *v36;
    v21[5] = v20;
    v21[6] = &off_282A72438;
    v21[2] = v38;
    v21[10] = v47;
    v21[11] = &off_282A74580;
    v21[7] = v39;
    v21[15] = v46;
    v21[16] = &off_282A3D208;
    v21[12] = v40;
    v21[21] = v43;
    v21[22] = &off_282A2F738;
    v21[17] = v51;
    v21[18] = v41;
    __swift_destroy_boxed_opaque_existential_1(v52);
    __swift_destroy_boxed_opaque_existential_1(v55);
    __swift_destroy_boxed_opaque_existential_1(v58);
    __swift_destroy_boxed_opaque_existential_1(v61);
    __swift_destroy_boxed_opaque_existential_1(v62);
    __swift_destroy_boxed_opaque_existential_1(v64);
    __swift_destroy_boxed_opaque_existential_1(v66);
    return v21;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_218940158(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21878D854(0, &qword_280EE53E0, MEMORY[0x277D6D8B8]);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21878DE14();
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
  sub_21878EB38(0, &unk_280EE4600, MEMORY[0x277D6E388]);
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
    sub_218703FA0(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
    sub_21878E8C0();
    v4 = objc_allocWithZone(v3);
    return sub_219BE8754();
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_218940490()
{
  v0 = sub_219BE8FC4();
  MEMORY[0x28223BE20](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6E3C8]);
  return sub_219BE86C4();
}

uint64_t sub_218940560(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21878EA14();
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

uint64_t sub_218940608(void *a1)
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
  sub_21878DC48();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21878E360();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21878E4DC();
  result = sub_219BE1E24();
  if (result)
  {
    sub_21878DE14();
    swift_allocObject();
    return sub_219BE7BB4();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_218940774(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE9C54();
  result = sub_219BE1DE4();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_21878EBF4();
    result = sub_219BE1DE4();
    if (result)
    {
      sub_21878EA14();
      v4 = objc_allocWithZone(v3);
      return sub_219BEA524();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_218940860(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C6148(0, &qword_280E8E4C0);
  v3 = sub_219BE1DE4();
  if (v3)
  {
    v4 = v3;
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_2186C709C(0, &qword_280EE3DE0);
    sub_219BE1DF4();
    if (v5)
    {
      sub_219BEA534();
      swift_unknownObjectRelease();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_218940980@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21878DE14();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = sub_219BE7BC4();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE5390);
  result = sub_219BE1E34();
  if (!v13)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_2186CB1F0(&v12, v14);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_219BE7BC4();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE3A98);
  result = sub_219BE1DF4();
  if (v11)
  {
    sub_2186CB1F0(&v10, &v12);
    sub_218718690(v14, v9);
    v6 = swift_allocObject();
    sub_2186CB1F0(v9, v6 + 16);
    *(v6 + 56) = v5;
    sub_219BE95A4();
    swift_allocObject();
    v7 = sub_219BE9594();
    result = __swift_destroy_boxed_opaque_existential_1(v14);
    v8 = MEMORY[0x277D6E690];
    *a2 = v7;
    a2[1] = v8;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

id sub_218940BAC(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE7174();
  if (!result)
  {
    result = [a2 window];
    if (!result)
    {

      return a2;
    }
  }

  return result;
}

uint64_t sub_218940C40(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21878D854(0, &qword_280EE53E0, MEMORY[0x277D6D8B8]);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21878E05C(0, &unk_280EE4C20, sub_21878E0F4, sub_21878E148, MEMORY[0x277D6DF28]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FollowingNotificationsViewCellProvider();
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
  type metadata accessor for FollowingNotificationsViewSupplementaryViewProvider();
  result = sub_219BE1E24();
  if (result)
  {
    *&v8[0] = v3;
    sub_21878DC48();
    v7 = objc_allocWithZone(v6);
    return sub_219BE9B64();
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_218940E3C(void *a1, void *a2)
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

uint64_t sub_218940F4C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21878D854(0, &qword_280EE53E0, MEMORY[0x277D6D8B8]);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21878E05C(0, &unk_280EE4C20, sub_21878E0F4, sub_21878E148, MEMORY[0x277D6DF28]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21878EB38(0, &unk_280EE4600, MEMORY[0x277D6E388]);
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
    sub_218703FA0(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
    sub_21878E360();
    v4 = objc_allocWithZone(v3);
    return sub_219BE9754();
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_2189411B4(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BE70E4();
  sub_219BE1DE4();
  sub_219BE9764();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_21878ED24();
  if (sub_219BE1E24())
  {
    sub_218703FA0(&unk_27CC0ADA0, sub_21878ED24);
  }

  return sub_219BE9774();
}

uint64_t sub_2189412B8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21878D854(0, &qword_280EE53E0, MEMORY[0x277D6D8B8]);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_21878E05C(0, &unk_280EE4C20, sub_21878E0F4, sub_21878E148, MEMORY[0x277D6DF28]);
    result = sub_219BE1E24();
    if (result)
    {
      sub_21878E4DC();
      v4 = objc_allocWithZone(v3);
      return sub_219BEA184();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2189413D8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ECFD08);
  result = sub_219BE1E34();
  if (v18)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    type metadata accessor for FollowingSettingsButtonViewRenderer();
    result = sub_219BE1E24();
    if (result)
    {
      v3 = result;
      v4 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
      MEMORY[0x28223BE20](v4);
      v6 = (v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v7 + 16))(v6);
      v8 = *v6;
      v9 = type metadata accessor for TagViewRenderer();
      v16[3] = v9;
      v16[4] = &off_282A46F20;
      v16[0] = v8;
      type metadata accessor for FollowingNotificationsViewCellProvider();
      v10 = swift_allocObject();
      v11 = __swift_mutable_project_boxed_opaque_existential_1(v16, v9);
      MEMORY[0x28223BE20](v11);
      v13 = (v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v14 + 16))(v13);
      v15 = *v13;
      v10[7] = v9;
      v10[8] = &off_282A46F20;
      v10[3] = 0;
      v10[4] = v15;
      swift_unknownObjectWeakInit();
      v10[9] = v3;
      __swift_destroy_boxed_opaque_existential_1(v16);
      __swift_destroy_boxed_opaque_existential_1(v17);
      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_218941640(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for FollowingNotificationsViewController();
  v4 = sub_219BE1E24();
  v3 = &off_282A34770;
  if (!v4)
  {
    v3 = 0;
  }

  *(v2 + 24) = v3;
  swift_unknownObjectWeakAssign();
}

uint64_t sub_218941728(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EA9380);
  result = sub_219BE1E34();
  if (!v27)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E930C0);
  result = sub_219BE1E34();
  if (!v25)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EC9540);
  result = sub_219BE1E34();
  if (!v23)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E938C8);
  result = sub_219BE1E34();
  if (v21)
  {
    v3 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
    MEMORY[0x28223BE20](v3);
    v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v6 + 16))(v5);
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
    MEMORY[0x28223BE20](v7);
    v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v10 + 16))(v9);
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
    MEMORY[0x28223BE20](v11);
    v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v14 + 16))(v13);
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    MEMORY[0x28223BE20](v15);
    v17 = &v20[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v18 + 16))(v17);
    v19 = sub_2189435CC(*v5, *v9, *v13, *v17);
    __swift_destroy_boxed_opaque_existential_1(v20);
    __swift_destroy_boxed_opaque_existential_1(v22);
    __swift_destroy_boxed_opaque_existential_1(v24);
    __swift_destroy_boxed_opaque_existential_1(v26);
    return v19;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_218941B68(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for FollowingNotificationsViewController();
  v4 = sub_219BE1E24();
  v3 = &off_282A34760;
  if (!v4)
  {
    v3 = 0;
  }

  *(v2 + 184) = v3;
  swift_unknownObjectWeakAssign();
}

uint64_t sub_218941BFC(void *a1)
{
  v2 = sub_219BE9BC4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_219BE9BE4();
  MEMORY[0x28223BE20](v6 - 8);
  sub_21878EB38(0, &unk_27CC0AD90, MEMORY[0x277D6E380]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21878D854(0, &qword_280EE53E0, MEMORY[0x277D6D8B8]);
  result = sub_219BE1E24();
  if (result)
  {
    v13 = result;
    (*(v9 + 104))(v11, *MEMORY[0x277D6E378], v8);
    *v5 = 0;
    (*(v3 + 104))(v5, *MEMORY[0x277D6E828], v2);
    sub_219BE9BD4();
    v14[1] = v13;
    sub_21878EB38(0, &unk_280EE4600, MEMORY[0x277D6E388]);
    swift_allocObject();
    return sub_219BE8EC4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_218941EA4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21878D854(0, &qword_280EE53E0, MEMORY[0x277D6D8B8]);
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    sub_21878EB38(0, &qword_27CC0AD80, type metadata accessor for FollowingNotificationsCompositionalLayoutOptionsProvider);
    v6 = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = v4;
    a2[3] = v6;
    result = sub_218943AD0();
    a2[4] = result;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218941F68(void *a1)
{
  sub_218943A7C(0, &qword_280EE3560, MEMORY[0x277D74DB0]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_219BEBB84();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE1DF4();
  result = (*(v6 + 48))(v4, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    sub_21878EBF4();
    (*(v6 + 16))(v9, v11, v5);
    v13 = sub_219BEA554();
    (*(v6 + 8))(v11, v5);
    return v13;
  }

  return result;
}

uint64_t sub_218942188(void *a1)
{
  v2 = sub_219BEBB04();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BEBB14();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BEBAF4();
  MEMORY[0x28223BE20](v10);
  (*(v12 + 104))(&v16[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D74D58]);
  sub_219BEBB24();
  (*(v7 + 104))(v9, *MEMORY[0x277D74D90], v6);
  sub_219BEBB44();
  (*(v3 + 104))(v5, *MEMORY[0x277D74D88], v2);
  sub_219BEBB34();
  sub_219BEBB74();
  sub_219BEBB64();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EDC810);
  result = sub_219BE1E34();
  if (v17)
  {
    v14 = *(*__swift_project_boxed_opaque_existential_1(v16, v17) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme);
    sub_219BEBB54();
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21894245C()
{
  sub_219BE9C54();
  swift_allocObject();
  return sub_219BE9C44();
}

uint64_t sub_218942494(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E93EB0);
  result = sub_219BE1E34();
  if (v20)
  {
    v2 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
    MEMORY[0x28223BE20](v2);
    v4 = (&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v5 + 16))(v4);
    v6 = *v4;
    v7 = type metadata accessor for FollowingNotificationsDisabledViewStyler();
    v18[3] = v7;
    v18[4] = &off_282AA3220;
    v18[0] = v6;
    type metadata accessor for FollowingNotificationsDisabledViewLayoutAttributesFactory();
    v8 = swift_allocObject();
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v18, v7);
    MEMORY[0x28223BE20](v9);
    v11 = (&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = *v11;
    v16 = v7;
    v17 = &off_282AA3220;
    *&v15 = v13;
    sub_2186CB1F0(&v15, v8 + 16);
    __swift_destroy_boxed_opaque_existential_1(v18);
    __swift_destroy_boxed_opaque_existential_1(v19);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2189426B0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E93EB0);
  result = sub_219BE1E34();
  if (v19)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x28223BE20](v4);
    v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for FollowingNotificationsDisabledViewStyler();
    v17[3] = v9;
    v17[4] = &off_282AA3220;
    v17[0] = v8;
    v10 = type metadata accessor for FollowingNotificationsDisabledViewRenderer();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v9);
    MEMORY[0x28223BE20](v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v11[5] = v9;
    v11[6] = &off_282AA3220;
    v11[2] = v16;
    __swift_destroy_boxed_opaque_existential_1(v17);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    a2[3] = v10;
    a2[4] = &off_282A72AA0;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2189428DC@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for FollowingNotificationsDisabledViewStyler();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_282AA3220;
  *a1 = result;
  return result;
}

uint64_t sub_218942924@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E93388);
  result = sub_219BE1E34();
  if (v19)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x28223BE20](v4);
    v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for FollowingNotificationsSectionFooterViewStyler();
    v17[3] = v9;
    v17[4] = &off_282A4EFF0;
    v17[0] = v8;
    v10 = type metadata accessor for FollowingNotificationsSectionFooterViewLayoutAttributesFactory();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v9);
    MEMORY[0x28223BE20](v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v11[5] = v9;
    v11[6] = &off_282A4EFF0;
    v11[2] = v16;
    sub_218943A14();
    swift_allocObject();
    v11[7] = sub_219BE2D94();
    __swift_destroy_boxed_opaque_existential_1(v17);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    a2[3] = v10;
    a2[4] = &off_282A74580;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218942B70@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E93388);
  result = sub_219BE1E34();
  if (v19)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x28223BE20](v4);
    v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for FollowingNotificationsSectionFooterViewStyler();
    v17[3] = v9;
    v17[4] = &off_282A4EFF0;
    v17[0] = v8;
    v10 = type metadata accessor for FollowingNotificationsSectionFooterViewRenderer();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v9);
    MEMORY[0x28223BE20](v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v11[5] = v9;
    v11[6] = &off_282A4EFF0;
    v11[2] = v16;
    __swift_destroy_boxed_opaque_existential_1(v17);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    a2[3] = v10;
    a2[4] = &off_282A88B60;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_218942D9C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for FollowingNotificationsSectionFooterViewStyler();
  v3 = swift_allocObject();
  result = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  *(v3 + 16) = result;
  a1[3] = v2;
  a1[4] = &off_282A4EFF0;
  *a1 = v3;
  return result;
}

uint64_t sub_218942E1C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v1 = type metadata accessor for FollowingSettingsButtonViewStyler();
  result = sub_219BE1E24();
  if (result)
  {
    v10[3] = v1;
    v10[4] = &off_282A3BF18;
    v10[0] = result;
    type metadata accessor for FollowingSettingsButtonViewLayoutAttributesFactory();
    v3 = swift_allocObject();
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v10, v1);
    MEMORY[0x28223BE20](v4);
    v6 = (&v10[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v3[5] = v1;
    v3[6] = &off_282A3BF18;
    v3[2] = v8;
    sub_2189439B4();
    swift_allocObject();
    v3[7] = sub_219BE2D94();
    __swift_destroy_boxed_opaque_existential_1(v10);
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218942FB4(void *a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(void))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = a2(0);
  result = sub_219BE1E24();
  if (result)
  {
    v16[3] = v7;
    v16[4] = a3;
    v16[0] = result;
    a4(0);
    v9 = swift_allocObject();
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v16, v7);
    MEMORY[0x28223BE20](v10);
    v12 = (&v16[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12);
    v14 = *v12;
    v9[5] = v7;
    v9[6] = a3;
    v9[2] = v14;
    __swift_destroy_boxed_opaque_existential_1(v16);
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218943130(uint64_t a1, void (*a2)(void), void *a3)
{
  a2(0);
  v4 = swift_allocObject();
  *(v4 + 16) = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  return v4;
}

uint64_t sub_218943194(void *a1)
{
  sub_2187F2110();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C09EC0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21878ED24();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = sub_218703FA0(&unk_27CC0AD68, sub_21878ED24);
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

uint64_t sub_2189432D0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21878DE14();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21878D854(0, &qword_280EE53E0, MEMORY[0x277D6D8B8]);
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
    sub_218703FA0(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
    sub_21878ED24();
    swift_allocObject();
    return sub_219BE9AB4();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_218943498(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_21878E8C0();
  if (sub_219BE1E24())
  {
    sub_218703FA0(&qword_27CC0AD60, sub_21878E8C0);
  }

  return sub_219BE9AC4();
}

uint64_t sub_218943544(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21878DE14();
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

void *sub_2189435CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = type metadata accessor for FollowingHeaderViewRenderer();
  v44[3] = v9;
  v44[4] = &off_282A60170;
  v44[0] = a1;
  v10 = type metadata accessor for FollowingNotificationsSectionFooterViewRenderer();
  v42 = v10;
  v43 = &off_282A88B60;
  v41[0] = a2;
  v11 = type metadata accessor for TitleViewRenderer();
  v39 = v11;
  v40 = &off_282A6AF80;
  v38[0] = a3;
  v36 = v8;
  v37 = &off_282A72AA0;
  v35[0] = a4;
  type metadata accessor for FollowingNotificationsViewSupplementaryViewProvider();
  v12 = swift_allocObject();
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v44, v9);
  MEMORY[0x28223BE20](v13);
  v15 = (&v35[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
  MEMORY[0x28223BE20](v17);
  v19 = (&v35[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
  MEMORY[0x28223BE20](v21);
  v23 = (&v35[-1] - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
  MEMORY[0x28223BE20](v25);
  v27 = (&v35[-1] - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  v29 = *v15;
  v30 = *v19;
  v31 = *v23;
  v32 = *v27;
  v12[5] = v9;
  v12[6] = &off_282A60170;
  v12[2] = v29;
  v12[10] = v10;
  v12[11] = &off_282A88B60;
  v12[7] = v30;
  v12[20] = v11;
  v12[21] = &off_282A6AF80;
  v12[17] = v31;
  v12[15] = v8;
  v12[16] = &off_282A72AA0;
  v12[12] = v32;
  v12[23] = 0;
  swift_unknownObjectWeakInit();
  __swift_destroy_boxed_opaque_existential_1(v35);
  __swift_destroy_boxed_opaque_existential_1(v38);
  __swift_destroy_boxed_opaque_existential_1(v41);
  __swift_destroy_boxed_opaque_existential_1(v44);
  return v12;
}

void sub_2189439B4()
{
  if (!qword_280EE70D0)
  {
    v0 = sub_219BE2DA4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE70D0);
    }
  }
}

void sub_218943A14()
{
  if (!qword_27CC0AD78)
  {
    type metadata accessor for FollowingNotificationsSectionFooterViewLayoutAttributes();
    v0 = sub_219BE2DA4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0AD78);
    }
  }
}

void sub_218943A7C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_218943AD0()
{
  result = qword_27CC0AD88;
  if (!qword_27CC0AD88)
  {
    sub_21878EB38(255, &qword_27CC0AD80, type metadata accessor for FollowingNotificationsCompositionalLayoutOptionsProvider);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0AD88);
  }

  return result;
}

void sub_218943B60()
{
  if (!qword_27CC0ADE0)
  {
    type metadata accessor for FollowingNotificationsModifierFactory();
    sub_218703FA0(&qword_27CC0ADE8, type metadata accessor for FollowingNotificationsModifierFactory);
    v0 = type metadata accessor for FollowingNotificationsInteractor();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0ADE0);
    }
  }
}

char *sub_218943BF4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = type metadata accessor for FollowingNotificationsStyler();
  v28[3] = v10;
  v28[4] = &off_282A80198;
  v28[0] = a1;
  v11 = type metadata accessor for FollowingNotificationsViewController();
  v12 = objc_allocWithZone(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v28, v10);
  MEMORY[0x28223BE20](v13);
  v15 = (&v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v15;
  v27[3] = v10;
  v27[4] = &off_282A80198;
  v27[0] = v17;
  v18 = OBJC_IVAR____TtC7NewsUI236FollowingNotificationsViewController_blueprintReadableContentGuide;
  *&v12[v18] = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  *&v12[OBJC_IVAR____TtC7NewsUI236FollowingNotificationsViewController____lazy_storage___closeBarButtonItem] = 0;
  sub_218718690(v27, &v12[OBJC_IVAR____TtC7NewsUI236FollowingNotificationsViewController_styler]);
  v19 = &v12[OBJC_IVAR____TtC7NewsUI236FollowingNotificationsViewController_eventHandler];
  *v19 = a2;
  *(v19 + 1) = a3;
  *&v12[OBJC_IVAR____TtC7NewsUI236FollowingNotificationsViewController_blueprintViewController] = a4;
  sub_218944130(a5, &v12[OBJC_IVAR____TtC7NewsUI236FollowingNotificationsViewController_followingNotificationsPrewarm]);
  v26.receiver = v12;
  v26.super_class = v11;
  swift_unknownObjectRetain();
  v20 = a4;
  v21 = objc_msgSendSuper2(&v26, sel_initWithNibName_bundle_, 0, 0);
  *(*&v21[OBJC_IVAR____TtC7NewsUI236FollowingNotificationsViewController_eventHandler] + 24) = &off_282A34788;
  swift_unknownObjectWeakAssign();
  v22 = *&v21[OBJC_IVAR____TtC7NewsUI236FollowingNotificationsViewController_blueprintViewController];
  v23 = v21;
  v24 = v22;
  sub_219BE8744();

  sub_218944194(a5);
  __swift_destroy_boxed_opaque_existential_1(v27);
  __swift_destroy_boxed_opaque_existential_1(v28);
  return v23;
}

void *sub_218943E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v15[3] = type metadata accessor for FollowingNotificationsRouter();
  v15[4] = &off_282A5C798;
  v15[0] = a3;
  v14[3] = type metadata accessor for FollowingNotificationsTracker();
  v14[4] = &off_282A46F70;
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

  v11(v12, &off_282A57DF0, ObjectType, a2);
  __swift_destroy_boxed_opaque_existential_1(v14);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return a5;
}

void *sub_218943F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v24 = type metadata accessor for FollowingNotificationsRouter();
  v25 = &off_282A5C798;
  v23[0] = a3;
  v21 = v8;
  v22 = &off_282A46F70;
  v20[0] = a4;
  type metadata accessor for FollowingNotificationsEventHandler();
  v9 = swift_allocObject();
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
  MEMORY[0x28223BE20](v10);
  v12 = (v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
  MEMORY[0x28223BE20](v14);
  v16 = (v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = sub_218943E2C(a1, a2, *v12, *v16, v9);
  __swift_destroy_boxed_opaque_existential_1(v20);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return v18;
}

uint64_t sub_218944130(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FollowingNotificationsPrewarm();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218944194(uint64_t a1)
{
  v2 = type metadata accessor for FollowingNotificationsPrewarm();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2189441F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v17[0] = a1;
  v17[1] = a2;
  v6 = type metadata accessor for OfflineContentRequest(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v19 = MEMORY[0x277D84F90];
  sub_218C340E0(0, v10, 0);
  v11 = v19;
  for (i = (a3 + 40); ; i += 2)
  {
    v13 = *i;
    v18[0] = *(i - 1);
    v18[1] = v13;

    (v17[0])(v18);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v19 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_218C340E0(v14 > 1, v15 + 1, 1);
      v11 = v19;
    }

    *(v11 + 16) = v15 + 1;
    sub_21885F994(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, type metadata accessor for OfflineContentRequest);
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}