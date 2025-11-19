uint64_t sub_2189068B8()
{

  return swift_deallocObject();
}

uint64_t sub_2189068F0()
{
  v1 = (type metadata accessor for SportsTopicClusteringRequest() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = sub_219BF03B4();
  (*(*(v3 - 8) + 8))(v2, v3);
  swift_unknownObjectRelease();

  v4 = v1[14];
  v5 = sub_219BEFBD4();
  v6 = *(*(v5 - 8) + 8);
  v6(v2 + v4, v5);
  v6(v2 + v1[15], v5);

  v7 = v1[26];
  v8 = sub_219BF0354();
  (*(*(v8 - 8) + 8))(v2 + v7, v8);

  return swift_deallocObject();
}

uint64_t sub_218906AC4()
{

  return swift_deallocObject();
}

uint64_t sub_218906B00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 104);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_219BDCAF4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_218906BAC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 104) = (a2 - 1);
  }

  else
  {
    v7 = sub_219BDCAF4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_218906C50()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_218906C88(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_218906D34(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_218906DD8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_218906E10()
{

  return swift_deallocObject();
}

uint64_t sub_218906E50()
{

  return swift_deallocObject();
}

uint64_t sub_218906E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2186FA21C();
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

void sub_218906F50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2186FA21C();
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

uint64_t sub_218907010()
{

  return swift_deallocObject();
}

uint64_t sub_21890704C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_219BE5434();
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
    sub_2197D0D9C(0, &unk_280E91800, MEMORY[0x277D32348], MEMORY[0x277D83D88]);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[9];
      goto LABEL_3;
    }

    v15 = sub_219BEFD94();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[15];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_2189071F0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_219BE5434();
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

  sub_2197D0D9C(0, &unk_280E91800, MEMORY[0x277D32348], MEMORY[0x277D83D88]);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[9];
    goto LABEL_3;
  }

  v15 = sub_219BEFD94();
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[15];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_218907394()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2189073CC()
{
  sub_219512F74();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_2189074A0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for SearchMoreFeedGapLocation(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21890754C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SearchMoreFeedGapLocation(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2189075F0()
{

  return swift_deallocObject();
}

uint64_t sub_218907628()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_218907664()
{

  return swift_deallocObject();
}

uint64_t sub_2189076B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_218907724(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2189077A4()
{

  return swift_deallocObject();
}

uint64_t sub_2189077E4()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_218907824(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_2189078DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 20)) = a2 + 6;
  }

  return result;
}

uint64_t sub_218907994(uint64_t a1, uint64_t a2)
{
  sub_2197DEC14(0, &qword_280E90FF0, MEMORY[0x277D32BE0]);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_218907A1C(uint64_t a1, uint64_t a2)
{
  sub_2197DEC14(0, &qword_280E90FF0, MEMORY[0x277D32BE0]);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_218907AA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BF1934();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_218907B14(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BF1934();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_218907B84()
{

  return swift_deallocObject();
}

uint64_t sub_218907BC0()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_218907BF8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_218907C34()
{

  return swift_deallocObject();
}

uint64_t sub_218907C74()
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

uint64_t sub_218907DE0(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_218907E98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 20)) = a2 + 6;
  }

  return result;
}

uint64_t sub_218907F50()
{
  v1 = *(v0 + 32);
  if (v1 != 255)
  {
    sub_21896755C(*(v0 + 16), *(v0 + 24), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_218907F94()
{
  sub_21896FD44(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_218907FE8(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_218908094(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_218908150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 80);
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
    v10 = type metadata accessor for MastheadViewBackground();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 44);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2189081FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 80) = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for MastheadViewBackground();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2189082A0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2189082D8()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_218908324(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for MagazineCatalogSectionDescriptor.Categories(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2189083D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for MagazineCatalogSectionDescriptor.Categories(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_218908474()
{

  return swift_deallocObject();
}

uint64_t sub_2189084AC()
{

  return swift_deallocObject();
}

uint64_t sub_2189084F4()
{

  return swift_deallocObject();
}

uint64_t sub_21890852C()
{

  return swift_deallocObject();
}

uint64_t sub_218908574()
{
  v1 = sub_219BDBD34();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_218908668()
{

  return swift_deallocObject();
}

uint64_t sub_2189086A4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_2189086DC()
{

  return swift_deallocObject();
}

uint64_t sub_218908750()
{
  sub_2187480E4(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
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

uint64_t sub_2189088F0()
{
  sub_218DFB934(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_21890892C()
{

  return swift_deallocObject();
}

uint64_t sub_218908964()
{
  sub_21896FBB0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  v1 = *(v0 + 96);
  if (v1 != 255)
  {
    sub_21896FC30(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_2189089C8()
{
  sub_219815250(0, &qword_27CC1FC18, MEMORY[0x277D6DA48]);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_218908A84()
{
  v1 = (type metadata accessor for SearchResponse(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[8];
  sub_219219310();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_218908B90()
{

  return swift_deallocObject();
}

uint64_t sub_218908BC8()
{

  return swift_deallocObject();
}

uint64_t sub_218908C08()
{

  return swift_deallocObject();
}

uint64_t sub_218908C40()
{

  return swift_deallocObject();
}

uint64_t sub_218908C80()
{

  return swift_deallocObject();
}

uint64_t sub_218908CD0()
{

  return swift_deallocObject();
}

uint64_t sub_218908D10()
{

  return swift_deallocObject();
}

uint64_t sub_218908D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SearchResponse(0);
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

uint64_t sub_218908E14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SearchResponse(0);
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

uint64_t sub_218908EE8()
{
  if (*(v0 + 24) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_218908F2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SharedWithYouFeedContentConfig();
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_218908FF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SharedWithYouFeedContentConfig();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_2189090AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_218909118(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_218909188()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2189091C0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2189091F8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for SavedFeedContentConfig();
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

void *sub_21890931C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for SavedFeedContentConfig();
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

uint64_t sub_218909440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2186E3B14();
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
    sub_2186F64EC(0);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

void sub_218909564(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2186E3B14();
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
    sub_2186F64EC(0);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    v13(v14, a2, a2, v12);
  }
}

uint64_t sub_218909698(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for ChannelPickerHeaderViewLayoutAttributes(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_218909744(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ChannelPickerHeaderViewLayoutAttributes(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2189097E8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = sub_219BF1214();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2189098D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    v12 = sub_219BF1214();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2189099D4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_218909A0C()
{
  sub_218953A84();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_218909AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_219BF1934();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_2186DEBB4(0, &qword_280E90800, MEMORY[0x277D33478]);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_219BF1214();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_218909C2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_219BF1934();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  sub_2186DEBB4(0, &qword_280E90800, MEMORY[0x277D33478]);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_219BF1214();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_218909D94(uint64_t *a1, uint64_t a2, uint64_t a3)
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

void *sub_218909E40(void *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_218909EE4()
{

  return swift_deallocObject();
}

uint64_t sub_218909F1C()
{

  return swift_deallocObject();
}

uint64_t sub_218909F64()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_218909F9C()
{

  return swift_deallocObject();
}

uint64_t sub_218909FDC()
{

  return swift_deallocObject();
}

uint64_t sub_21890A014()
{

  return swift_deallocObject();
}

uint64_t sub_21890A054()
{
  sub_21982D304(0, &qword_280EE7F00, type metadata accessor for MyMagazinesState, MEMORY[0x277D6C9F8]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_21890A150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_219834194(0, &qword_280E921A0, type metadata accessor for SubscriptionTodayFeedGroupConfigData, sub_21982D620, sub_21982D654);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for SubscriptionTodayFeedGroupKnobs();
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

uint64_t sub_21890A2A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_219834194(0, &qword_280E921A0, type metadata accessor for SubscriptionTodayFeedGroupConfigData, sub_21982D620, sub_21982D654);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for SubscriptionTodayFeedGroupKnobs();
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

uint64_t sub_21890A3F4()
{
  v1 = (type metadata accessor for SubscriptionTodayFeedGroupEmitter() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  sub_219834194(0, &qword_280E921A0, type metadata accessor for SubscriptionTodayFeedGroupConfigData, sub_21982D620, sub_21982D654);
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = v3 + v1[7];
  sub_2189AE994(0);
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = *(type metadata accessor for SubscriptionTodayFeedGroupKnobs() + 20);
  sub_2198335AC(0, &qword_280E91860, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D32318]);
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  __swift_destroy_boxed_opaque_existential_1(v3 + v1[8]);

  __swift_destroy_boxed_opaque_existential_1(v3 + v1[10]);
  __swift_destroy_boxed_opaque_existential_1(v3 + v1[11]);
  __swift_destroy_boxed_opaque_existential_1(v3 + v1[12]);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21890A6BC(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_21890A768(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_21890A80C(uint64_t a1, uint64_t a2, uint64_t a3)
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

void sub_21890A8C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_21890AA1C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21890AA54()
{
  sub_2189519D8();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_21890AB18()
{
  if (*(v0 + 56) <= 4u)
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21890AB6C()
{
  sub_219841D6C(0, &qword_27CC1FF40, MEMORY[0x277D6DA48]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_21890AC4C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    if (v10 >= 0x2E)
    {
      return v10 - 45;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_21890AD04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 20)) = a2 + 45;
  }

  return result;
}

uint64_t sub_21890ADC4()
{
  sub_218748148(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
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

uint64_t sub_21890AF4C()
{
  sub_21896FD44(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_21890AFA0()
{
  if (*(v0 + 106))
  {
    if (*(v0 + 56) <= 4u)
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    }

    if (*(v0 + 72))
    {
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21890B014()
{
  sub_21896FBB0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  v1 = *(v0 + 96);
  if (v1 != 255)
  {
    sub_21896FC30(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_21890B06C()
{

  return swift_deallocObject();
}

uint64_t sub_21890B0A4()
{
  sub_218748148(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
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

uint64_t sub_21890B200(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_219BEF554();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[10];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for MyMagazinesMagazineFeedGroupKnobs();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[13];
    goto LABEL_11;
  }

  v13 = sub_219BEF8A4();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[16];
    goto LABEL_11;
  }

  sub_2186F97D4(0);
  v16 = v15;
  v17 = *(*(v15 - 8) + 48);
  v18 = a1 + a3[17];

  return v17(v18, a2, v16);
}

uint64_t sub_21890B3B4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_219BEF554();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[10];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for MyMagazinesMagazineFeedGroupKnobs();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[13];
    goto LABEL_9;
  }

  v13 = sub_219BEF8A4();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[16];
    goto LABEL_9;
  }

  sub_2186F97D4(0);
  v16 = v15;
  v17 = *(*(v15 - 8) + 56);
  v18 = v5 + a4[17];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_21890B568(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_2186E60B0();
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
      v13 = type metadata accessor for TopicMagazineFeedGroupKnobs();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_21890B68C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_2186E60B0();
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
      v13 = type metadata accessor for TopicMagazineFeedGroupKnobs();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21890B7B4()
{

  return swift_deallocObject();
}

uint64_t sub_21890B7F0()
{

  return swift_deallocObject();
}

void sub_21890B94C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_21985AB44(v4);
}

uint64_t sub_21890B9B4()
{

  return swift_deallocObject();
}

uint64_t sub_21890B9EC()
{

  return swift_deallocObject();
}

uint64_t sub_21890BA5C()
{

  return swift_deallocObject();
}

uint64_t sub_21890BA98()
{
  v1 = sub_219BE9944();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_21890BB40()
{
  v1 = sub_219BEE644();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 40) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_21890BBC8()
{
  v1 = sub_219BEE644();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_21890BC50()
{
  v1 = sub_219BEE644();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21890BD14()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21890BD54()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21890BD8C()
{
  v1 = sub_219BE9F74();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_21890BE38()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  sub_21896FDCC(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

  return swift_deallocObject();
}

uint64_t sub_21890BE84()
{
  sub_21898BF70();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for TagFeedGapLocation(0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v3 + 8))(v0 + v4, v2);
  sub_219866BF4(0, &qword_280E90A20, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D33098]);
  v9 = v8;
  v10 = *(v8 - 8);
  if (!(*(v10 + 48))(v0 + v7, 1, v8))
  {
    (*(v10 + 8))(v0 + v7, v9);
  }

  return swift_deallocObject();
}

uint64_t sub_21890C058()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_21890C0A0()
{
  sub_21898BF70();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for TagFeedGapLocation(0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  (*(v3 + 8))(v0 + v4, v2);
  sub_219866BF4(0, &qword_280E90A20, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D33098]);
  v9 = v8;
  v10 = *(v8 - 8);
  if (!(*(v10 + 48))(v0 + v7, 1, v8))
  {
    (*(v10 + 8))(v0 + v7, v9);
  }

  return swift_deallocObject();
}

uint64_t sub_21890C27C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21890C2B4()
{

  return swift_deallocObject();
}

uint64_t sub_21890C2EC()
{

  return swift_deallocObject();
}

uint64_t sub_21890C324()
{
  sub_21896FD44(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_21890C3BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2186E3B14();
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
    sub_2186F64EC(0);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 44);

    return v13(v14, a2, v12);
  }
}

void sub_21890C4E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2186E3B14();
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
    sub_2186F64EC(0);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 44);

    v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21890C614()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21890C64C()
{

  return swift_deallocObject();
}

uint64_t sub_21890C68C()
{

  return swift_deallocObject();
}

uint64_t sub_21890C6D0()
{

  return swift_deallocObject();
}

uint64_t sub_21890C894(uint64_t a1, uint64_t a2)
{
  sub_2186F083C();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 8)
  {
    return v5 - 7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21890C900(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 7);
  }

  else
  {
    v5 = 0;
  }

  sub_2186F083C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_21890C984(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21890CA40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21890CAF8(uint64_t a1, uint64_t a2, uint64_t a3)
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

void sub_21890CBB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_21890CC6C(uint64_t a1, uint64_t a2, uint64_t a3)
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

void sub_21890CD28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_21890CDE0()
{
  v1 = (type metadata accessor for WebEmbedResource() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = sub_219BDB954();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v1[7];
  v5 = sub_219BE76C4();
  (*(*(v5 - 8) + 8))(v2 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_21890CEF8()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21890CFAC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21890CFE4()
{
  sub_2187C5110();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_21890D0BC()
{
  sub_2187C5110();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_21890D188()
{

  return swift_deallocObject();
}

id sub_21890D1D4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 recipeCatalogFeedRules];
  *a2 = result;
  return result;
}

id sub_21890D210@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 foodHubFeedRules];
  *a2 = result;
  return result;
}

id sub_21890D24C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 puzzleTypeFeedRules];
  *a2 = result;
  return result;
}

id sub_21890D28C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 puzzleHubFeedRules];
  *a2 = result;
  return result;
}

id sub_21890D2C8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 sportsFeedRules];
  *a2 = result;
  return result;
}

uint64_t sub_21890D324()
{
  sub_2198A2504(0, &unk_27CC203F8, MEMORY[0x277D6DA48]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_21890D410()
{
  sub_2198A2504(0, &unk_27CC203F8, MEMORY[0x277D6DA48]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);

  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_21890D4F8()
{
  sub_2198A2504(0, &unk_27CC203F8, MEMORY[0x277D6DA48]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);

  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_21890D5E4()
{
  sub_2198A35CC(0, &qword_280EE5D00, type metadata accessor for SearchModel, sub_2198A22F0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_21890D6BC()
{

  return swift_deallocObject();
}

uint64_t sub_21890D704()
{

  return swift_deallocObject();
}

uint64_t sub_21890D744()
{
  sub_2198A35CC(0, &qword_280EE5B40, MEMORY[0x277D33320], sub_2191FD45C);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_21890D82C()
{
  sub_218B58D38(0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21890D8D8(uint64_t a1, uint64_t a2, uint64_t a3)
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

void sub_21890D994(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_21890DA64()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21890DA9C()
{
  v12 = sub_219BE0774();
  v1 = *(v12 - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v11 = sub_219BDF864();
  v4 = *(v11 - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = sub_219BDF874();
  v8 = *(v7 - 8);
  v9 = (v5 + v6 + *(v8 + 80)) & ~*(v8 + 80);

  (*(v1 + 8))(v0 + v2, v12);
  (*(v4 + 8))(v0 + v5, v11);
  (*(v8 + 8))(v0 + v9, v7);

  return swift_deallocObject();
}

uint64_t sub_21890DCBC()
{
  v1 = type metadata accessor for TagFeedAsyncConfig();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v2 + 72);
  if (v3 != 255)
  {
    sub_21896FC30(*(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), v3);
  }

  v4 = *(v1 + 36);
  v5 = sub_219BE5434();
  (*(*(v5 - 8) + 8))(v2 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_21890DDCC()
{

  sub_21896FBB0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_21890DE1C()
{

  return swift_deallocObject();
}

uint64_t sub_21890DE54()
{
  v1 = *(v0 + 56);
  if (v1 != 255)
  {
    sub_21896FC30(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_21890DE9C()
{

  return swift_deallocObject();
}

uint64_t sub_21890DEF4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21890DF2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2186E3B14();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_2186F64EC(0);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 32);

    return v13(v14, a2, v12);
  }
}

void sub_21890E05C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2186E3B14();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 28)) = a2 + 1;
  }

  else
  {
    sub_2186F64EC(0);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 32);

    v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21890E17C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    if (v10 >= 0x2E)
    {
      return v10 - 45;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_21890E234(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 20)) = a2 + 45;
  }

  return result;
}

uint64_t sub_21890E2EC()
{
  sub_218747EAC(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
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

uint64_t sub_21890E4AC(uint64_t a1, uint64_t a2, uint64_t a3)
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

void sub_21890E5B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2189AE994(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_2189AE9B4(0);
    v14 = *(v13 - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return;
    }

    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_21890E6C0()
{

  return swift_deallocObject();
}

uint64_t sub_21890E70C()
{

  return swift_deallocObject();
}

uint64_t sub_21890E744()
{

  return swift_deallocObject();
}

uint64_t sub_21890E780(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for ChannelSectionsGroupModel();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_21890E82C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ChannelSectionsGroupModel();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21890E8D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218B8773C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for MyMagazinesMagazineFeedGroupKnobs();
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

uint64_t sub_21890E9DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_218B8773C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for MyMagazinesMagazineFeedGroupKnobs();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_21890EAE8()
{
  v1 = (type metadata accessor for MyMagazinesMagazineFeedGroupEmitter() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  sub_218B8773C();
  v5 = v4;
  v20 = v4;
  v6 = *(v4 - 8);
  v22 = (v2 + v3 + *(v6 + 80)) & ~*(v6 + 80);
  v7 = *(v6 + 64);
  v8 = (type metadata accessor for MyMagazinesMagazineFeedGroupKnobs() - 8);
  v23 = (v22 + v7 + *(*v8 + 80)) & ~*(*v8 + 80);
  v21 = v0;

  v9 = v0 + v2;
  v19 = *(v6 + 8);
  v19(v9, v5);
  v10 = v9 + v1[7];
  sub_2186F9410(0, &qword_280E919C0, MEMORY[0x277D321A0]);
  v12 = v11;
  v18 = *(*(v11 - 8) + 8);
  v18(v10, v11);

  v13 = v8[8];
  sub_2186F9410(0, &qword_280E91830, MEMORY[0x277D32318]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 8);
  v16(v10 + v13, v14);

  __swift_destroy_boxed_opaque_existential_1(v9 + v1[10]);
  swift_unknownObjectRelease();

  v19(v21 + v22, v20);
  v18(v21 + v23, v12);

  v16(v21 + v23 + v8[8], v15);

  return swift_deallocObject();
}

uint64_t sub_21890EE24()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21890EE5C()
{
  v1 = sub_219BDB954();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21890EF28(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_2186EE208(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 28);

      return v12(v13, a2, v11);
    }

    else
    {
      sub_2186EE208(0, &qword_280EE5188, MEMORY[0x277D6D9E0], MEMORY[0x277D83D88]);
      v15 = v14;
      v16 = *(*(v14 - 8) + 48);
      v17 = a1 + *(a3 + 36);

      return v16(v17, a2, v15);
    }
  }
}

uint64_t sub_21890F0B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    sub_2186EE208(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
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
      sub_2186EE208(0, &qword_280EE5188, MEMORY[0x277D6D9E0], MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 36);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_21890F23C()
{

  return swift_deallocObject();
}

uint64_t sub_21890F274()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  return swift_deallocObject();
}

uint64_t sub_21890F2B4()
{
  if (*(v0 + 24) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21890F30C()
{
  v1 = sub_219BDF074();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21890F3D8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21890F428(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21890F480(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = _s5ModelOMa();
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
      v13 = sub_219BE3184();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_21890F5A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = _s5ModelOMa();
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
      v13 = sub_219BE3184();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21890F6C8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for HistoryFeedGapLocation(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21890F774(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for HistoryFeedGapLocation(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21890F818(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BF0334();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21890F884(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BF0334();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21890F93C()
{
  sub_218F40F48();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_21890F9C4()
{
  sub_2186EB308();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_21890FA88()
{
  sub_218985EAC();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_21890FB4C()
{

  return swift_deallocObject();
}

uint64_t sub_21890FB84()
{

  return swift_deallocObject();
}

uint64_t sub_21890FBBC()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21890FBF8()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_21890FC30()
{

  return swift_deallocObject();
}

uint64_t sub_21890FC70()
{

  return swift_deallocObject();
}

uint64_t sub_21890FCB0()
{
  v1 = *(type metadata accessor for OfflineContentRequest(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);

  v3 = v0 + v2;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_12;
    }

    v5 = &unk_280E8F880;
  }

  else
  {
    switch(EnumCaseMultiPayload)
    {
      case 2:

        v5 = &qword_280E8F8B0;
        break;
      case 3:

        v5 = &unk_280E8F8A0;
        break;
      case 4:

        v5 = &unk_280E8F890;
        break;
      default:
        goto LABEL_12;
    }
  }

  sub_218950608(0, v5);
  v7 = *(v6 + 64);
  v8 = sub_219BDBD34();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v3 + v7, v8);
  }

LABEL_12:

  return swift_deallocObject();
}

uint64_t sub_21890FE90()
{
  v1 = *(type metadata accessor for OfflineContentRequest(0) - 8);
  v2 = (*(v1 + 80) + 72) & ~*(v1 + 80);
  v3 = *(v1 + 64);

  if (*(v0 + 64))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 40);
  }

  v4 = v0 + v2;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_14;
    }

    v6 = &unk_280E8F880;
  }

  else
  {
    switch(EnumCaseMultiPayload)
    {
      case 2:

        v6 = &qword_280E8F8B0;
        break;
      case 3:

        v6 = &unk_280E8F8A0;
        break;
      case 4:

        v6 = &unk_280E8F890;
        break;
      default:
        goto LABEL_14;
    }
  }

  sub_218950608(0, v6);
  v8 = *(v7 + 64);
  v9 = sub_219BDBD34();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v4 + v8, 1, v9))
  {
    (*(v10 + 8))(v4 + v8, v9);
  }

LABEL_14:

  return swift_deallocObject();
}

uint64_t sub_21891009C()
{

  return swift_deallocObject();
}

uint64_t sub_2189100E4()
{

  return swift_deallocObject();
}

uint64_t sub_218910124()
{

  return swift_deallocObject();
}

uint64_t sub_2189101C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FeedGroupSectionTitle(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_2198F51F4(0, &unk_280EC20C0, type metadata accessor for FeedGroupSectionSubtitle);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_2198F51F4(0, &unk_280EE9D00, MEMORY[0x277CC9260]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

uint64_t sub_21891033C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for FeedGroupSectionTitle(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  sub_2198F51F4(0, &unk_280EC20C0, type metadata accessor for FeedGroupSectionSubtitle);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_2198F51F4(0, &unk_280EE9D00, MEMORY[0x277CC9260]);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_2189106A0(uint64_t a1, uint64_t a2, uint64_t a3)
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

void sub_21891075C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_21891086C()
{

  return swift_deallocObject();
}

uint64_t sub_2189108BC()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_2189108F8()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_218910930()
{
  sub_218950B84();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_2189109DC()
{

  return swift_deallocObject();
}

uint64_t sub_218910A40()
{
  v1 = sub_219BE51D4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_219BE5134();
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);

  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_218910BA8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for EmailSignupViewModel.Asset(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_218910C54(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for EmailSignupViewModel.Asset(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_218910CF8()
{

  return swift_deallocObject();
}

uint64_t sub_218910D40()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_218910D84()
{
  v1 = sub_219BEE544();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_218910E60()
{

  return swift_deallocObject();
}

uint64_t sub_218910E98()
{
  if (*(v0 + 24))
  {

    swift_unknownObjectRelease();
  }

  return swift_deallocObject();
}

uint64_t sub_218910EEC()
{

  sub_21990B56C(*(v0 + 64), *(v0 + 72));

  return swift_deallocObject();
}

uint64_t sub_218910FA0(uint64_t *a1, uint64_t a2, uint64_t a3)
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

void *sub_21891104C(void *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_2189110F0()
{
  if (*(v0 + 16) >= 2uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_218911130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_219914C48();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for PaywallTagFeedGroupKnobs();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

void sub_218911258(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_219914C48();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for PaywallTagFeedGroupKnobs();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    v12(v13, a2, a2, v11);
  }
}

uint64_t sub_218911380()
{
  v1 = (type metadata accessor for PaywallTagFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_219914C48();
  (*(*(v3 - 8) + 8))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[7]);
  v4 = v1[8];
  sub_219916CBC(0, &qword_280E91A80, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D321A0]);
  (*(*(v5 - 8) + 8))(v2 + v4, v5);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_218911524()
{

  return swift_deallocObject();
}

uint64_t sub_21891155C()
{
  v1 = (type metadata accessor for PaywallTagFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_219914C48();
  (*(*(v3 - 8) + 8))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[7]);
  v4 = v1[8];
  sub_219916CBC(0, &qword_280E91A80, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D321A0]);
  (*(*(v5 - 8) + 8))(v2 + v4, v5);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2189116F4()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_218911734()
{

  return swift_deallocObject();
}

uint64_t sub_21891176C()
{

  return swift_deallocObject();
}

uint64_t sub_218911814()
{

  return swift_deallocObject();
}

uint64_t sub_218911858()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_218911890()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2189118C8()
{

  return swift_deallocObject();
}

uint64_t sub_218911918()
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

uint64_t sub_218911AB8()
{

  return swift_deallocObject();
}

uint64_t sub_218911AF0()
{
  sub_21896FBB0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  v1 = *(v0 + 96);
  if (v1 != 255)
  {
    sub_21896FC30(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_218911B48()
{
  sub_21896FD44(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_218911B9C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  sub_21896FDCC(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

  return swift_deallocObject();
}

uint64_t sub_218911C1C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_218911C60()
{
  v1 = sub_219BEE544();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_218911D38()
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

uint64_t sub_218911EA4()
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

uint64_t sub_218912000(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_21873F65C(0);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_2189120AC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_21873F65C(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_218912150(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2189121FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2189122A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BDB954();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21891230C(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BDB954();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21891237C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_21873F65C(0);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_218912428(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_21873F65C(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2189124CC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_218912578(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_21891261C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_21873F65C(0);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_2189126C8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_21873F65C(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_21891276C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_218912818(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2189128BC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_21873F65C(0);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_218912968(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_21873F65C(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_218912A0C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_218912AB8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_218912B5C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_21873F65C(0);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_218912C08(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_21873F65C(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_218912CAC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_21873F65C(0);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_218912D58(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_21873F65C(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_218912DFC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_218912EA8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_218912F4C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = _s5ModelOMa();
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
      v13 = sub_219BE3184();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_218913070(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = _s5ModelOMa();
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
      v13 = sub_219BE3184();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_218913194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ShortcutCategory();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = _s13ResolvedModelOMa();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_2189132A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ShortcutCategory();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = _s13ResolvedModelOMa();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_2189133B0()
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

uint64_t sub_21891351C()
{
  v1 = sub_219BE4B84();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_218913620()
{

  return swift_deallocObject();
}

uint64_t sub_218913658()
{

  return swift_deallocObject();
}

uint64_t sub_218913700()
{

  return swift_deallocObject();
}

uint64_t sub_21891374C()
{

  return swift_deallocObject();
}

uint64_t sub_21891379C()
{
  v1 = sub_219BE49D4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_218913898()
{

  return swift_deallocObject();
}

uint64_t sub_2189138E0()
{
  v1 = sub_219BE4B14();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  sub_218932F9C(*(v0 + 24));

  (*(v2 + 8))(v0 + v3, v1);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2189139E4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_218913A2C()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_218913A90()
{

  return swift_deallocObject();
}

uint64_t sub_218913AD8()
{
  v1 = sub_219BE49D4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_218913C64()
{
  v1 = sub_219BF1934();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_218913D40()
{

  return swift_deallocObject();
}

uint64_t sub_218913D80()
{

  return swift_deallocObject();
}

uint64_t sub_218913DB8()
{

  return swift_deallocObject();
}

uint64_t sub_218913DF0()
{

  return swift_deallocObject();
}

uint64_t sub_218913E30(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for PuzzleSetting();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_218913EDC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for PuzzleSetting();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_218913F80()
{
  v1 = type metadata accessor for PuzzleFullArchiveTagFeedGroupEmitterCursor();
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = v0 + v2 + *(v1 + 24);
  v4 = type metadata accessor for PuzzleMonthArchive(0);
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {
    v5 = sub_219BDBD34();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v3, 1, v5))
    {
      (*(v6 + 8))(v3, v5);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_218914150()
{

  return swift_deallocObject();
}

uint64_t sub_218914190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21995AFFC(0, &qword_280E91960, MEMORY[0x277D32290]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for TodayExpandResult();
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

uint64_t sub_2189142BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_21995AFFC(0, &qword_280E91960, MEMORY[0x277D32290]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for TodayExpandResult();
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

uint64_t sub_2189143E4()
{

  return swift_deallocObject();
}

uint64_t sub_21891441C()
{
  v1 = *(type metadata accessor for HistoryFeedGapLocation(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_21995D08C(0, &qword_280E909F0, MEMORY[0x277D33098]);
  v4 = v3;
  v5 = *(v3 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v3))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_218914544()
{

  return swift_deallocObject();
}

uint64_t sub_21891457C()
{

  return swift_deallocObject();
}

uint64_t sub_2189145B4()
{

  return swift_deallocObject();
}

uint64_t sub_2189145F4()
{

  return swift_deallocObject();
}

uint64_t sub_21891463C()
{

  return swift_deallocObject();
}

uint64_t sub_218914680()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2189146CC()
{
  if (*(v0 + 24) >= 4uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_218914718()
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

uint64_t sub_218914884()
{

  return swift_deallocObject();
}

uint64_t sub_2189148C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioFeedContentConfig();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21891492C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioFeedContentConfig();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2189149E4(uint64_t a1, uint64_t a2, int *a3)
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
    v14 = *(a1 + a3[8]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    sub_2186E4FBC(0);
    v16 = v15;
    v17 = *(*(v15 - 8) + 48);
    v18 = a1 + a3[9];

    return v17(v18, a2, v16);
  }
}

void sub_218914B58(uint64_t a1, uint64_t a2, int a3, int *a4)
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
    *(a1 + a4[8]) = (a2 - 1);
  }

  else
  {
    sub_2186E4FBC(0);
    v16 = v15;
    v17 = *(*(v15 - 8) + 56);
    v18 = a1 + a4[9];

    v17(v18, a2, a2, v16);
  }
}

uint64_t sub_218914D04()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_218914D3C()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_218914D7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_218914DE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_218914E58()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_218914E90()
{
  v1 = type metadata accessor for AudioFeedTrack(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v18 = *(*(v1 - 1) + 64);

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

uint64_t sub_218915174()
{
  v1 = type metadata accessor for AudioFeedTrack(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v18 = *(*(v1 - 1) + 64);
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

uint64_t sub_21891544C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_218915484()
{
  v1 = type metadata accessor for AudioFeedTrack(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);

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

uint64_t sub_218915768()
{

  return swift_deallocObject();
}

uint64_t sub_2189157A0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2189157D8()
{

  return swift_deallocObject();
}

uint64_t sub_218915810()
{

  return swift_deallocObject();
}

uint64_t sub_218915848()
{

  return swift_deallocObject();
}

uint64_t sub_218915888()
{

  return swift_deallocObject();
}

uint64_t sub_2189158D0()
{
  v1 = type metadata accessor for MagazineCategoryConfig(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);

  v3 = v0 + v2;

  v4 = v1[6];
  v5 = sub_219BDB954();
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (!v7(v0 + v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  v8 = v1[7];
  if (!v7(v3 + v8, 1, v5))
  {
    (*(v6 + 8))(v3 + v8, v5);
  }

  v9 = v1[8];
  if (!v7(v3 + v9, 1, v5))
  {
    (*(v6 + 8))(v3 + v9, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_218915C24()
{

  return swift_deallocObject();
}

uint64_t sub_218915C5C()
{

  return swift_deallocObject();
}

uint64_t sub_218915C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2186E3B14();
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
    sub_2186F64EC(0);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 44);

    return v13(v14, a2, v12);
  }
}

void sub_218915DBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2186E3B14();
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
    sub_2186F64EC(0);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 44);

    v13(v14, a2, a2, v12);
  }
}

uint64_t sub_218915EE4()
{

  return swift_deallocObject();
}

uint64_t sub_218915F1C()
{

  return swift_deallocObject();
}

uint64_t sub_218915F68(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_218915FD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_218916044(uint64_t a1, uint64_t a2, int *a3)
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

  if (a2 == 254)
  {
    v14 = *(a1 + a3[10]);
    if (v14 >= 2)
    {
      return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_219791D24(0);
    v16 = v15;
    v17 = *(*(v15 - 8) + 48);
    v18 = a1 + a3[13];

    return v17(v18, a2, v16);
  }
}

void sub_2189161C4(uint64_t a1, uint64_t a2, int a3, int *a4)
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

  if (a3 == 254)
  {
    *(a1 + a4[10]) = a2 + 1;
  }

  else
  {
    sub_219791D24(0);
    v16 = v15;
    v17 = *(*(v15 - 8) + 56);
    v18 = a1 + a4[13];

    v17(v18, a2, a2, v16);
  }
}

uint64_t sub_2189163A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TodayBlueprintCollapsedSection(0);
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

uint64_t sub_21891640C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for TodayBlueprintCollapsedSection(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_21891648C()
{
  sub_218729F60(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
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

uint64_t sub_218916628()
{

  return swift_deallocObject();
}

uint64_t sub_218916660()
{

  return swift_deallocObject();
}

uint64_t sub_2189166A8(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_218916754(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_2189167F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218954350();
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

void sub_2189168B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_218954350();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }
}

uint64_t sub_218916974(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TagFeedBlueprintCollapsedSection(0);
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

uint64_t sub_2189169E0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for TagFeedBlueprintCollapsedSection(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_218916A60(uint64_t a1, uint64_t a2, uint64_t a3)
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

void sub_218916B6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2189AE994(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_2189AE9B4(0);
    v14 = *(v13 - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return;
    }

    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_218916C74(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_219BEFBD4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 68);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_218916D20(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_219BEFBD4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 68);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_218916DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2191EBE38(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for SportsConfiguringDataVisualizationRequest.EmbedKind(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_218916ED4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2191EBE38(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for SportsConfiguringDataVisualizationRequest.EmbedKind(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_218916FE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BF4F64();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 7)
  {
    return v5 - 6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21891704C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 6);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_219BF4F64();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_2189170D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2186E0CD8();
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

uint64_t sub_2189171C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2186E0CD8();
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

uint64_t sub_2189172C4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2189172FC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_218917334()
{

  return swift_deallocObject();
}

uint64_t sub_218917378()
{

  return swift_deallocObject();
}

uint64_t sub_2189173B0()
{

  return swift_deallocObject();
}

uint64_t sub_2189173F0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_218917438()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_218917470()
{
  sub_21896FBB0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  v1 = *(v0 + 96);
  if (v1 != 255)
  {
    sub_21896FC30(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_2189174D4()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_218917514()
{

  return swift_deallocObject();
}

uint64_t sub_218917568()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2189175EC()
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

uint64_t sub_218917758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2186DF784();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for TrendingTodayFeedGroupKnobs();
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

uint64_t sub_218917868(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2186DF784();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for TrendingTodayFeedGroupKnobs();
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

uint64_t sub_218917974()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_2189179AC()
{
  sub_219457FAC();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = (type metadata accessor for TrendingTodayFeedGroupEmitter() - 8);
  v7 = (v4 + v5 + *(*v6 + 80)) & ~*(*v6 + 80);
  (*(v3 + 8))(v0 + v4, v2);
  sub_2186DF784();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = v0 + v7 + v6[7];
  sub_2189AE994(0);
  (*(*(v10 - 8) + 8))(v9, v10);
  v11 = *(type metadata accessor for TrendingTodayFeedGroupKnobs() + 20);
  sub_2199B3874(0, &qword_280E91860, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D32318]);
  (*(*(v12 - 8) + 8))(v9 + v11, v12);

  __swift_destroy_boxed_opaque_existential_1(v0 + v7 + v6[8]);

  return swift_deallocObject();
}

uint64_t sub_218917C50()
{

  return swift_deallocObject();
}

uint64_t sub_218917C8C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = sub_219BF1214();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_218917D7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    v12 = sub_219BF1214();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_218917E78(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_219BF1934();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_218917F24(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_219BF1934();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_218917FC8()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_218918000()
{
  v1 = type metadata accessor for AudioFeedTrack(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);

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

uint64_t sub_2189182C8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_218918300()
{
  sub_218953870();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_2189183C4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2189183FC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_218918434()
{

  return swift_deallocObject();
}

uint64_t sub_21891846C()
{

  return swift_deallocObject();
}

uint64_t sub_2189184B4()
{

  return swift_deallocObject();
}

uint64_t sub_2189184F4()
{

  return swift_deallocObject();
}

uint64_t sub_21891852C()
{

  return swift_deallocObject();
}

uint64_t sub_218918570()
{

  return swift_deallocObject();
}

uint64_t sub_2189185AC()
{
  sub_21896FBB0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  v1 = *(v0 + 96);
  if (v1 != 255)
  {
    sub_21896FC30(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_218918608()
{
  sub_21896FD44(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_218918678()
{

  return swift_deallocObject();
}

uint64_t sub_2189186B0()
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

uint64_t sub_21891881C()
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

uint64_t sub_218918978()
{

  return swift_deallocObject();
}

uint64_t sub_2189189B8()
{
  v1 = sub_219BDBD34();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_218918A7C()
{

  return swift_deallocObject();
}

uint64_t sub_218918AC0()
{
  v1 = sub_219BF3E64();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (((((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  __swift_destroy_boxed_opaque_existential_1(v0 + v4);

  return swift_deallocObject();
}

uint64_t sub_218918BC0()
{
  v1 = sub_219BF3E64();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_218918C5C()
{
  sub_218DFB934(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_218918C98()
{
  sub_2199CFB64(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
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

uint64_t sub_218918E34()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_218918E74()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_218918EAC()
{

  return swift_deallocObject();
}

uint64_t sub_218918F14()
{

  return swift_deallocObject();
}

uint64_t sub_218918F64()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_218918F9C()
{

  return swift_deallocObject();
}

uint64_t sub_218919010()
{

  return swift_deallocObject();
}

uint64_t sub_218919050(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_2197B889C();
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
      v13 = type metadata accessor for SportsRecordTagFeedGroupKnobs();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_218919174(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_2197B889C();
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
      v13 = type metadata accessor for SportsRecordTagFeedGroupKnobs();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21891929C()
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

uint64_t sub_2189193F8()
{
  sub_2186DBB60(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = sub_219BF1614();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_218919504()
{
  v1 = (type metadata accessor for SportsRecordTagFeedGroupEmitter() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v1[7];
  sub_2197B889C();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);
  v5 = v1[8];
  sub_2189AD5C8();
  (*(*(v6 - 8) + 8))(v0 + v2 + v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v0 + v2 + v1[9]);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + v2 + v1[11]);
  __swift_destroy_boxed_opaque_existential_1(v0 + v2 + v1[12]);

  return swift_deallocObject();
}

uint64_t sub_218919668()
{

  return swift_deallocObject();
}

uint64_t sub_2189196A0()
{
  v1 = (type metadata accessor for SportsRecordTagFeedGroupEmitter() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = sub_219BF4674();
  v5 = *(v4 - 8);
  v6 = (v3 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = v0 + v2;

  v8 = v1[7];
  sub_2197B889C();
  (*(*(v9 - 8) + 8))(v7 + v8, v9);
  v10 = v1[8];
  sub_2189AD5C8();
  (*(*(v11 - 8) + 8))(v7 + v10, v11);
  __swift_destroy_boxed_opaque_existential_1(v7 + v1[9]);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v7 + v1[11]);
  __swift_destroy_boxed_opaque_existential_1(v7 + v1[12]);
  swift_unknownObjectRelease();

  (*(v5 + 8))(v0 + v6, v4);

  return swift_deallocObject();
}

uint64_t sub_2189198BC()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_218919920()
{

  return swift_deallocObject();
}

uint64_t sub_218919968()
{

  return swift_deallocObject();
}

uint64_t sub_2189199A0()
{

  return swift_deallocObject();
}

uint64_t sub_2189199F0()
{

  return swift_deallocObject();
}

uint64_t sub_218919A28(char a1)
{
  if (a1)
  {
    return 1635017060;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_218919A48()
{

  return swift_deallocObject();
}

uint64_t sub_218919A80()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_218919ABC()
{
  v1 = type metadata accessor for CampaignRouteModel();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v16 = *(*(v1 - 1) + 64);
  sub_2187C5110();
  v17 = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = v0 + v2;

  v7 = v1[5];
  v8 = sub_219BDE924();
  (*(*(v8 - 8) + 8))(v0 + v2 + v7, v8);

  v9 = v1[10];
  v10 = sub_219BE4394();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v2 + v9, 1, v10))
  {
    (*(v11 + 8))(v6 + v9, v10);
  }

  v12 = v1[12];
  v13 = sub_219BDD4D4();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v6 + v12, 1, v13))
  {
    (*(v14 + 8))(v6 + v12, v13);
  }

  MEMORY[0x21CECFA80](v6 + v1[14]);
  (*(v4 + 8))(v0 + ((v2 + v16 + v5) & ~v5), v17);

  return swift_deallocObject();
}

uint64_t sub_218919D9C()
{

  return swift_deallocObject();
}

uint64_t sub_218919DD4()
{
  v1 = type metadata accessor for CampaignRouteModel();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v17 = *(*(v1 - 1) + 64);
  sub_2187C5110();
  v18 = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v3;

  v8 = v1[5];
  v9 = sub_219BDE924();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  v10 = v1[10];
  v11 = sub_219BE4394();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v3 + v10, 1, v11))
  {
    (*(v12 + 8))(v7 + v10, v11);
  }

  v13 = v1[12];
  v14 = sub_219BDD4D4();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v7 + v13, 1, v14))
  {
    (*(v15 + 8))(v7 + v13, v14);
  }

  MEMORY[0x21CECFA80](v7 + v1[14]);

  (*(v5 + 8))(v0 + ((((v17 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6), v18);

  return swift_deallocObject();
}

uint64_t sub_21891A0B0()
{
  v1 = sub_219BE3CA4();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_21891A138(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_219BE7A24();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21891A1E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_219BE7A24();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21891A288()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21891A2C0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21891A304()
{
  v1 = sub_219BDF4B4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21891A3DC()
{
  swift_unownedRelease();

  return swift_deallocObject();
}

uint64_t sub_21891A418()
{
  sub_219A04B18(0, &qword_27CC225E8, MEMORY[0x277D6DA48]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_21891A50C(uint64_t a1, uint64_t a2, uint64_t a3)
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

void sub_21891A5C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_21891A680(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21891A6EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21891A76C()
{

  return swift_deallocObject();
}

uint64_t sub_21891A7A4()
{

  return swift_deallocObject();
}

uint64_t sub_21891A7DC(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_21891A888(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_21891A92C()
{

  return swift_deallocObject();
}

uint64_t sub_21891A974()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21891A9AC()
{
  v1 = sub_219BF1584();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21891AA70()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21891AAA8()
{

  return swift_deallocObject();
}

uint64_t sub_21891AAE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21891AB4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21891ABBC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21891AC78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21891AD30(uint64_t a1, uint64_t a2, uint64_t a3)
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

void sub_21891ADEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_21891AEA4()
{

  return swift_deallocObject();
}

uint64_t sub_21891AEE0()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21891AF18()
{
  v1 = sub_219BE8F74();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_21891AFA0()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21891AFD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  refreshed = type metadata accessor for SharedWithYouFeedRefreshResult();
  v7 = *(refreshed - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, refreshed);
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

uint64_t sub_21891B098(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SharedWithYouFeedRefreshResult();
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

uint64_t sub_21891B154(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchResults();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21891B1C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchResults();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21891B268()
{
  v1 = *(type metadata accessor for TodayPrewarmResult() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  v3 = type metadata accessor for TodayExpandResult();
  v4 = *(v3 + 28);
  v5 = sub_219BEC514();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v2 + v4, v5);
  }

  v7 = *(v3 + 32);
  v8 = sub_219BE6DF4();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v2 + v7, 1, v8))
  {
    (*(v9 + 8))(v2 + v7, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_21891B440()
{
  v22 = sub_219BDB184();
  v1 = *(v22 - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  sub_21880B928();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = (v2 + v3 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = sub_219BDBD34();
  v10 = *(v9 - 8);
  v11 = (v7 + v8 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v23 = *(*(type metadata accessor for TodayPrewarmResult() - 8) + 80);
  (*(v1 + 8))(v0 + v2, v22);
  (*(v6 + 8))(v0 + v7, v5);
  (*(v10 + 8))(v0 + v11, v9);
  v13 = v0 + ((v11 + v12 + v23) & ~v23);

  v14 = type metadata accessor for TodayExpandResult();
  v15 = *(v14 + 28);
  v16 = sub_219BEC514();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v13 + v15, 1, v16))
  {
    (*(v17 + 8))(v13 + v15, v16);
  }

  v18 = *(v14 + 32);
  v19 = sub_219BE6DF4();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v13 + v18, 1, v19))
  {
    (*(v20 + 8))(v13 + v18, v19);
  }

  return swift_deallocObject();
}

uint64_t sub_21891B7E0()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21891B818()
{
  v1 = sub_219BDB184();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  sub_21880B928();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = (v3 + v4 + *(v7 + 80)) & ~*(v7 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v7 + 8))(v0 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_21891B96C()
{
  sub_219A199D4(0, &qword_280E91DB0, MEMORY[0x277D31F08], MEMORY[0x277D83D88]);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = sub_219BEDFD4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_21891BAB0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21891BB18()
{

  return swift_deallocObject();
}

uint64_t sub_21891BB54(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BE8164();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21891BBC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BE8164();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21891BC30(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
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

_BYTE *sub_21891BCD4(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_21891BD74()
{

  return swift_deallocObject();
}

uint64_t sub_21891BDB0()
{
  sub_219476494();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_21891BE38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SharedWithYouFeedConfig();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for SharedWithYouFeedKnobsConfig();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21891BF28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for SharedWithYouFeedConfig();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for SharedWithYouFeedKnobsConfig();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21891C024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2186EC3A4();
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

uint64_t sub_21891C114(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2186EC3A4();
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

void sub_21891C234(void *a1)
{
  v1 = a1;
  sub_219A2D03C();
}

uint64_t sub_21891C27C()
{

  return swift_deallocObject();
}

uint64_t sub_21891C2BC()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21891C2FC()
{

  return swift_deallocObject();
}

uint64_t sub_21891C344()
{
  sub_218B08348(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 65));

  return swift_deallocObject();
}

uint64_t sub_21891C3A0(uint64_t a1, uint64_t a2, int *a3)
{
  sub_2186E3B14();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_2186F64EC(0);
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
    sub_2186E4FBC(0);
    v16 = v15;
    v17 = *(*(v15 - 8) + 48);
    v18 = a1 + a3[10];

    return v17(v18, a2, v16);
  }
}

void sub_21891C514(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_2186E3B14();
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

  sub_2186F64EC(0);
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
    sub_2186E4FBC(0);
    v16 = v15;
    v17 = *(*(v15 - 8) + 56);
    v18 = a1 + a4[10];

    v17(v18, a2, a2, v16);
  }
}

uint64_t sub_21891C688(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21891C734(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
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

uint64_t sub_21891C7E8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_219BDB954();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21891C894(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_219BDB954();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21891C938(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_2186DBB60(0);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_21891CA28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_219BED8D4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_2186DBB60(0);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_21891CB6C()
{

  return swift_deallocObject();
}

uint64_t sub_21891CBAC(uint64_t a1, uint64_t a2, uint64_t a3)
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

void sub_21891CCB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2189AE994(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_2189AE9B4(0);
    v14 = *(v13 - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return;
    }

    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_21891CDC0()
{

  return swift_deallocObject();
}

uint64_t sub_21891CE1C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21891CE54()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21891CE8C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21891CF48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21891D000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2197B8638();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for PuzzleContinuePlayingTagFeedGroupKnobs();
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

uint64_t sub_21891D110(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2197B8638();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for PuzzleContinuePlayingTagFeedGroupKnobs();
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

uint64_t sub_21891D21C()
{
  v1 = (type metadata accessor for PuzzleContinuePlayingTagFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_2197B8638();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];
  sub_2189AD5C8();
  (*(*(v5 - 8) + 8))(v4, v5);
  type metadata accessor for PuzzleContinuePlayingTagFeedGroupKnobs();

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21891D3A0()
{
  v1 = (type metadata accessor for PuzzleContinuePlayingTagFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_2197B8638();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];
  sub_2189AD5C8();
  (*(*(v5 - 8) + 8))(v4, v5);
  type metadata accessor for PuzzleContinuePlayingTagFeedGroupKnobs();

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21891D794()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21891D7CC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21891D84C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21891D89C()
{
  sub_2186FF3C0(0, &qword_27CC0E4F0, type metadata accessor for SearchFeedServiceConfig, sub_2186FF508, MEMORY[0x277D31C68]);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_21891D97C()
{
  sub_218951F54();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_21891DA04()
{

  return swift_deallocObject();
}

uint64_t sub_21891DA40(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_219BE35B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21891DAEC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_219BE35B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21891DB90(uint64_t a1, uint64_t a2)
{
  sub_218C42540();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21891DBFC(uint64_t a1, uint64_t a2)
{
  sub_218C42540();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21891DC6C()
{

  return swift_deallocObject();
}

uint64_t sub_21891DCA8()
{
  v1 = sub_219BE8F74();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_21891DD44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedWithYouFeedFailedData();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21891DDB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedWithYouFeedFailedData();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21891DE20()
{
  v1 = sub_219BE16D4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  sub_219A6BD5C(0, &qword_280EE45C0, MEMORY[0x277D6E3A0]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = (v4 + *(v7 + 80)) & ~*(v7 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v7 + 8))(v0 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_21891DF84()
{
  sub_219A6BD5C(0, &qword_280EE50E8, MEMORY[0x277D6DA48]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_21929BEC4();
  v7 = (v5 + *(*(v6 - 8) + 80) + 9) & ~*(*(v6 - 8) + 80);
  v8 = (*(*(v6 - 8) + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_218B59134(0);
  v10 = (v8 + *(*(v9 - 8) + 80) + 8) & ~*(*(v9 - 8) + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v2);

  sub_218953904();
  v12 = v11;
  v13 = *(v11 - 8);
  if (!(*(v13 + 48))(v0 + v7, 1, v11))
  {
    (*(v13 + 8))(v0 + v7, v12);
  }

  v14 = sub_219BDF4A4();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v0 + v10, 1, v14))
  {
    (*(v15 + 8))(v0 + v10, v14);
  }

  return swift_deallocObject();
}

uint64_t sub_21891E248()
{
  sub_219A6BD5C(0, &qword_280EE50E8, MEMORY[0x277D6DA48]);
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

uint64_t sub_21891E410()
{
  v20 = sub_219BF1DF4();
  v1 = *(v20 - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  sub_219A6BD5C(0, &qword_280EE50E8, MEMORY[0x277D6DA48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = (v3 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  sub_21929BEC4();
  v21 = *(*(v9 - 8) + 80);
  v10 = (v7 + v8 + v21) & ~v21;
  v11 = (*(*(v9 - 8) + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_218B59134(0);
  v13 = (v11 + *(*(v12 - 8) + 80) + 8) & ~*(*(v12 - 8) + 80);
  (*(v1 + 8))(v0 + v2, v20);
  (*(v6 + 8))(v0 + v7, v5);
  sub_218953904();
  v15 = v14;
  v16 = *(v14 - 8);
  if (!(*(v16 + 48))(v0 + v10, 1, v14))
  {
    (*(v16 + 8))(v0 + v10, v15);
  }

  v17 = sub_219BDF4A4();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v0 + v13, 1, v17))
  {
    (*(v18 + 8))(v0 + v13, v17);
  }

  return swift_deallocObject();
}

uint64_t sub_21891E744()
{
  sub_218B58D38(0);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (v4 + *(v3 + 64) + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_218B58F98(0);
  v7 = (v5 + *(*(v6 - 8) + 80) + 8) & ~*(*(v6 - 8) + 80);
  v8 = *(*(v6 - 8) + 64);
  sub_218B59134(0);
  v10 = (v7 + v8 + *(*(v9 - 8) + 80)) & ~*(*(v9 - 8) + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v2);

  sub_218B58FCC(0);
  v12 = v11;
  v13 = *(v11 - 8);
  if (!(*(v13 + 48))(v0 + v7, 1, v11))
  {
    (*(v13 + 8))(v0 + v7, v12);
  }

  v14 = sub_219BDF4A4();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v0 + v10, 1, v14))
  {
    (*(v15 + 8))(v0 + v10, v14);
  }

  return swift_deallocObject();
}

uint64_t sub_21891EA00()
{
  sub_21896FD44(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_21891EA54()
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

uint64_t sub_21891EB94()
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

uint64_t sub_21891ED00()
{

  sub_218A57F90(*(v0 + 32), *(v0 + 40));

  sub_218A57FB4(*(v0 + 80), *(v0 + 88));

  return swift_deallocObject();
}

uint64_t sub_21891ED70()
{
  v1 = type metadata accessor for ContinueReadingPromptExposureData();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = sub_219BDD2D4();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v1[5];
  v5 = sub_219BE1524();
  (*(*(v5 - 8) + 8))(v2 + v4, v5);
  v6 = v1[6];
  v7 = sub_219BDF0E4();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v2 + v6, 1, v7))
  {
    (*(v8 + 8))(v2 + v6, v7);
  }

  v9 = v1[7];
  v10 = sub_219BE1714();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v2 + v9, 1, v10))
  {
    (*(v11 + 8))(v2 + v9, v10);
  }

  v12 = v1[8];
  v13 = sub_219BE1444();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v2 + v12, 1, v13))
  {
    (*(v14 + 8))(v2 + v12, v13);
  }

  v15 = v1[9];
  v16 = sub_219BDF824();
  (*(*(v16 - 8) + 8))(v2 + v15, v16);
  v17 = v1[10];
  v18 = sub_219BE06D4();
  (*(*(v18 - 8) + 8))(v2 + v17, v18);

  return swift_deallocObject();
}

uint64_t sub_21891F0A4()
{
  sub_219A74800(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
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

uint64_t sub_21891F22C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2186E3594();
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

uint64_t sub_21891F31C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2186E3594();
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

uint64_t sub_21891F418()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21891F450(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BF1934();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21891F4BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BF1934();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21891F538(uint64_t *a1, uint64_t a2, uint64_t a3)
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

void *sub_21891F5E4(void *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_21891F688()
{

  return swift_deallocObject();
}

uint64_t sub_21891F6C8()
{

  return swift_deallocObject();
}

uint64_t sub_21891F700()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21891F738(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_21891F7F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_21891F8B8()
{

  return swift_deallocObject();
}

uint64_t sub_21891F8F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21891F960(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21891F9D0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21891FA08()
{
  v1 = *(type metadata accessor for SavedFeedGapLocation(0) - 8);
  v2 = (*(v1 + 80) + 72) & ~*(v1 + 80);
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  sub_218A75088();
  v4 = v3;
  v5 = *(v3 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v3))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_21891FB1C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21891FB5C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21891FB94()
{

  return swift_deallocObject();
}

uint64_t sub_21891FBCC()
{

  return swift_deallocObject();
}

uint64_t sub_21891FC04()
{

  return swift_deallocObject();
}

uint64_t sub_21891FC3C()
{

  return swift_deallocObject();
}

uint64_t sub_21891FC98()
{

  return swift_deallocObject();
}

uint64_t sub_21891FCDC()
{

  return swift_deallocObject();
}

uint64_t sub_21891FD1C()
{

  return swift_deallocObject();
}

uint64_t sub_21891FD64()
{
  v1 = (type metadata accessor for SavedFeedRefreshRequest() - 8);
  v2 = v0 + ((*(*v1 + 80) + 24) & ~*(*v1 + 80));

  v3 = v1[9];
  v4 = sub_219BF0BD4();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_21891FE5C()
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

uint64_t sub_218920010(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for SavedFeedGapLocation(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2189200BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SavedFeedGapLocation(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_218920184()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_2189201BC()
{
  v1 = sub_219BF0DE4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  swift_unownedRelease();

  if (*(v0 + 80))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  }

  if (*(v0 + 120))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  }

  if (*(v0 + 160))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 136);
  }

  sub_21896755C(*(v0 + 176), *(v0 + 184), *(v0 + 192));
  (*(v2 + 8))(v0 + ((v3 + 193) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t sub_2189202E0()
{

  return swift_deallocObject();
}

uint64_t sub_218920318()
{
  v1 = sub_219BF0DE4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (((((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unownedRelease();
  (*(v2 + 8))(v0 + v3, v1);

  v5 = v0 + v4;

  if (*(v0 + v4 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1(v5 + 32);
  }

  if (*(v5 + 96))
  {
    __swift_destroy_boxed_opaque_existential_1(v5 + 72);
  }

  if (*(v5 + 136))
  {
    __swift_destroy_boxed_opaque_existential_1(v5 + 112);
  }

  sub_21896755C(*(v5 + 152), *(v5 + 160), *(v5 + 168));

  return swift_deallocObject();
}

uint64_t sub_218920464(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

void *sub_218920510(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_219BEFBD4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2189205B4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
      v12 = a1 + *(a3 + 44);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_219BEF9C4();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_2189206D8(void *result, uint64_t a2, int a3, uint64_t a4)
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
      v12 = v5 + *(a4 + 44);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_219BEF9C4();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_218920804()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21892083C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2186DE1E0(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
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
    sub_2186DE1E0(0, &qword_280E91B80, MEMORY[0x277D32028], MEMORY[0x277D83D88]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

void sub_2189209C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2186DE1E0(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
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
    sub_2186DE1E0(0, &qword_280E91B80, MEMORY[0x277D32028], MEMORY[0x277D83D88]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    v13(v14, a2, a2, v12);
  }
}

uint64_t sub_218920B44()
{
  swift_unownedRelease();

  return swift_deallocObject();
}

uint64_t sub_218920B80()
{

  return swift_deallocObject();
}

uint64_t sub_218920BB8()
{
  v1 = sub_219BF2AB4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_218920C80()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_218920CB8()
{

  return swift_deallocObject();
}

uint64_t sub_218920CF0()
{
  v1 = type metadata accessor for SportsConfiguringDataVisualizationRequest(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  v4 = sub_219BF43B4();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v6 = *(v1 + 20);
  v7 = sub_219BF4F64();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v3 + v6, 6, v7))
  {
    (*(v8 + 8))(v3 + v6, v7);
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_218920EC4()
{
  v1 = type metadata accessor for SportsConfiguringDataVisualizationRequest(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v12 = *(*(v1 - 8) + 64);
  v13 = sub_219BF4264();
  v3 = *(v13 - 8);
  v4 = *(v3 + 80);
  v5 = v0 + v2;
  v6 = sub_219BF43B4();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v2, 1, v6))
  {
    (*(v7 + 8))(v0 + v2, v6);
  }

  v8 = *(v1 + 20);
  v9 = sub_219BF4F64();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v5 + v8, 6, v9))
  {
    (*(v10 + 8))(v5 + v8, v9);
  }

  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + ((v2 + v12 + v4) & ~v4), v13);

  return swift_deallocObject();
}

uint64_t sub_218921128()
{

  return swift_deallocObject();
}

uint64_t sub_218921160()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_218921198()
{

  return swift_deallocObject();
}

uint64_t sub_2189211D8()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  sub_218932F9C(*(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_2189212B0()
{

  return swift_deallocObject();
}

uint64_t sub_2189212E8()
{
  sub_219AA84A0(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
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

uint64_t sub_21892148C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2189214D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_219AB5D90(0, &qword_280E92260, type metadata accessor for MySportsTopicTagFeedGroupConfigData, sub_219AAA07C, sub_219AAA0B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for MySportsTopicTagFeedGroupKnobs();
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

uint64_t sub_218921628(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_219AB5D90(0, &qword_280E92260, type metadata accessor for MySportsTopicTagFeedGroupConfigData, sub_219AAA07C, sub_219AAA0B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for MySportsTopicTagFeedGroupKnobs();
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

uint64_t sub_21892177C()
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

uint64_t sub_218921AC8()
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

uint64_t sub_218921E48()
{

  return swift_deallocObject();
}

uint64_t sub_218921EAC()
{

  return swift_deallocObject();
}

uint64_t sub_218921EE4()
{
  v1 = (type metadata accessor for MySportsTopicTagFeedGroupEmitter() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v0 + v2;
  sub_219AB5D90(0, &qword_280E92260, type metadata accessor for MySportsTopicTagFeedGroupConfigData, sub_219AAA07C, sub_219AAA0B0);
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = v3 + v1[7];
  sub_2189AD5C8();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = type metadata accessor for MySportsTopicTagFeedGroupKnobs();

  v8 = *(v7 + 72);
  v9 = sub_219BEF244();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);

  __swift_destroy_boxed_opaque_existential_1(v3 + v1[8]);
  __swift_destroy_boxed_opaque_existential_1(v3 + v1[9]);

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v3 + v1[13]);

  __swift_destroy_boxed_opaque_existential_1(v3 + v1[15]);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21892225C()
{

  return swift_deallocObject();
}

uint64_t sub_218922294()
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

uint64_t sub_218922600()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_218922638()
{
  v1 = (type metadata accessor for MySportsTopicTagFeedGroupEmitter() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  sub_219AB5D90(0, &qword_280E92260, type metadata accessor for MySportsTopicTagFeedGroupConfigData, sub_219AAA07C, sub_219AAA0B0);
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = v3 + v1[7];
  sub_2189AD5C8();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = type metadata accessor for MySportsTopicTagFeedGroupKnobs();

  v8 = *(v7 + 72);
  v9 = sub_219BEF244();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);

  __swift_destroy_boxed_opaque_existential_1(v3 + v1[8]);
  __swift_destroy_boxed_opaque_existential_1(v3 + v1[9]);

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v3 + v1[13]);

  __swift_destroy_boxed_opaque_existential_1(v3 + v1[15]);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_218922A0C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_218A27A84();
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
      v13 = type metadata accessor for TagFeedCurationHeader(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_218922B30(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_218A27A84();
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
      v13 = type metadata accessor for TagFeedCurationHeader(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_218922C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2197B8704();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for HighlightsTagFeedGroupKnobs();
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

uint64_t sub_218922D64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2197B8704();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for HighlightsTagFeedGroupKnobs();
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

uint64_t sub_218922E74()
{

  return swift_deallocObject();
}

uint64_t sub_218922EAC()
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

uint64_t sub_218923028()
{

  return swift_deallocObject();
}

uint64_t sub_218923070(uint64_t a1, uint64_t a2, int *a3)
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

uint64_t sub_2189231A4(uint64_t a1, uint64_t a2, int a3, int *a4)
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

uint64_t sub_2189232C8()
{
  v1 = sub_219BE3EE4();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}