uint64_t sub_2188E75A4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_2194BB554();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for PuzzleArchiveTagFeedGroupKnobs();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 24) = (a2 - 1);
  }

  else
  {
    v15 = sub_219BDC084();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_2188E7720()
{
  v1 = (type metadata accessor for PuzzleArchiveTagFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_2194BB554();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];
  sub_2189AD5C8();
  (*(*(v5 - 8) + 8))(v4, v5);
  type metadata accessor for PuzzleArchiveTagFeedGroupKnobs();

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);
  v6 = v1[9];
  v7 = sub_219BDC084();
  (*(*(v7 - 8) + 8))(v2 + v6, v7);

  return swift_deallocObject();
}

uint64_t sub_2188E78C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2194C0030();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for SportsFavoritesTagFeedGroupKnobs();
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

uint64_t sub_2188E79D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2194C0030();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for SportsFavoritesTagFeedGroupKnobs();
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

uint64_t sub_2188E7AE8()
{
  sub_21874801C(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
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

uint64_t sub_2188E7C84()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2188E7CBC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for OfflineFeedManifest(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2188E7D68(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for OfflineFeedManifest(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2188E7E0C()
{

  return swift_deallocObject();
}

uint64_t sub_2188E7E44()
{

  return swift_deallocObject();
}

uint64_t sub_2188E7E80()
{

  return swift_deallocObject();
}

uint64_t sub_2188E7EC8()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_2188E7F04()
{

  return swift_deallocObject();
}

uint64_t sub_2188E7F44()
{
  v1 = sub_219BF0BD4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2188E801C()
{

  return swift_deallocObject();
}

uint64_t sub_2188E8054()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188E8098()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2188E80D8()
{
  v1 = (type metadata accessor for TodayFeedServiceContext() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[11];
  v4 = sub_219BEE754();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_2188E81D8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188E8210(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BE8164();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2188E827C(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BE8164();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2188E82EC()
{

  return swift_deallocObject();
}

uint64_t sub_2188E8334()
{
  v1 = *(type metadata accessor for NewsActivity2.Article(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  sub_219BDD944();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload != 1)
  {
    sub_2187B3004();
    v5 = *(v4 + 48);
    v6 = sub_219BDE294();
    (*(*(v6 - 8) + 8))(v0 + v2 + v5, v6);
  }

  sub_2187B2DA0();

  return swift_deallocObject();
}

uint64_t sub_2188E847C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188E84B4()
{

  return swift_deallocObject();
}

uint64_t sub_2188E84F4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_2188E852C()
{

  return swift_deallocObject();
}

uint64_t sub_2188E8564()
{

  return swift_deallocObject();
}

uint64_t sub_2188E85A4()
{
  v1 = sub_219BEC404();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_2188E862C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleListHistoryFeedGroupKnobs();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2188E8698(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleListHistoryFeedGroupKnobs();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2188E8708()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_2188E8740()
{

  return swift_deallocObject();
}

uint64_t sub_2188E8778()
{

  return swift_deallocObject();
}

uint64_t sub_2188E87B0()
{

  return swift_deallocObject();
}

uint64_t sub_2188E87F0()
{

  return swift_deallocObject();
}

id sub_2188E8838@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contentOffset];
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_2188E8880()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188E88B8()
{

  return swift_deallocObject();
}

uint64_t sub_2188E8900()
{

  return swift_deallocObject();
}

uint64_t sub_2188E8940()
{
  sub_2186E5A28(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
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

uint64_t sub_2188E8B24()
{
  v1 = sub_219BEE544();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2188E8BFC()
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

uint64_t sub_2188E8C64()
{
  sub_21896FBB0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  v1 = *(v0 + 96);
  if (v1 != 255)
  {
    sub_21896FC30(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_2188E8CC0()
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

uint64_t sub_2188E8E04()
{
  sub_218932F9C(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_2188E8E44()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188E8E7C()
{
  v1 = sub_219BDEE04();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  sub_218A57FB4(*(v0 + v4), *(v0 + v4 + 8));

  return swift_deallocObject();
}

uint64_t sub_2188E8F5C()
{
  sub_218DFB934(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_2188E8FA0()
{

  return swift_deallocObject();
}

uint64_t sub_2188E8FD8()
{
  sub_21896FBB0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  v1 = *(v0 + 96);
  if (v1 != 255)
  {
    sub_21896FC30(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_2188E9030()
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

uint64_t sub_2188E90CC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
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

_BYTE *sub_2188E9170(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_2188E9210(uint64_t a1, uint64_t a2, uint64_t a3)
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
      v17 = a1 + *(a3 + 32);

      return v16(v17, a2, v15);
    }
  }
}

uint64_t sub_2188E9334(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_2188E9454(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_2188E950C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_2188E95C4()
{
  v1 = sub_219BE5434();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

id sub_2188E9698@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  return v2;
}

uint64_t sub_2188E96C8()
{
  v1 = *(type metadata accessor for OfflineFeedGroupProcessorResult() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = sub_219BDBD34();
  v4 = *(*(v3 - 8) + 8);
  v4(v2, v3);
  v5 = type metadata accessor for OfflineFeedManifest(0);
  v4(v2 + *(v5 + 20), v3);

  return swift_deallocObject();
}

uint64_t sub_2188E9848()
{

  return swift_deallocObject();
}

uint64_t sub_2188E9880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OfflineFeedManifest(0);
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

uint64_t sub_2188E993C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for OfflineFeedManifest(0);
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

uint64_t sub_2188E99F4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2188E9A74@<X0>(uint64_t *a1@<X8>)
{
  sub_2189534EC();
  result = sub_219BE5F84();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2188E9AA8(uint64_t a1, uint64_t a2, int *a3)
{
  sub_2189AE994(0);
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
    sub_2189AE9B4(0);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[9];
      goto LABEL_3;
    }

    sub_2186E4FBC(0);
    v16 = v15;
    v17 = *(*(v15 - 8) + 48);
    v18 = a1 + a3[10];

    return v17(v18, a2, v16);
  }
}

void sub_2188E9C1C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_2189AE994(0);
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

  sub_2189AE9B4(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[9];
    goto LABEL_3;
  }

  sub_2186E4FBC(0);
  v16 = v15;
  v17 = *(*(v15 - 8) + 56);
  v18 = a1 + a4[10];

  v17(v18, a2, a2, v16);
}

uint64_t sub_2188E9D90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleListAudioPlaylistFeedGroupKnobs();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2188E9DFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleListAudioPlaylistFeedGroupKnobs();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2188E9E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218DF04EC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for NewspaperMagazineFeedGroupKnobs();
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

uint64_t sub_2188E9F94(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_218DF04EC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for NewspaperMagazineFeedGroupKnobs();
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

uint64_t sub_2188EA0A0()
{
  v1 = (type metadata accessor for NewspaperMagazineFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_218DF04EC();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];
  sub_2186E3B14();
  (*(*(v5 - 8) + 8))(v4, v5);
  type metadata accessor for NewspaperMagazineFeedGroupKnobs();

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[9]);

  return swift_deallocObject();
}

uint64_t sub_2188EA224()
{

  return swift_deallocObject();
}

uint64_t sub_2188EA260()
{

  return swift_deallocObject();
}

uint64_t sub_2188EA2A0()
{
  v1 = (type metadata accessor for NewspaperMagazineFeedGroupEmitter() - 8);
  v2 = (*(*v1 + 80) + 48) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v2;
  sub_218DF04EC();
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = v4 + v1[7];
  sub_2186E3B14();
  (*(*(v7 - 8) + 8))(v6, v7);
  type metadata accessor for NewspaperMagazineFeedGroupKnobs();

  __swift_destroy_boxed_opaque_existential_1(v4 + v1[8]);
  __swift_destroy_boxed_opaque_existential_1(v4 + v1[9]);

  if (*(v0 + v3))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2188EA494()
{
  v1 = type metadata accessor for NewspaperGroupConfig();
  v34 = *(*(v1 - 1) + 80);
  v2 = (v34 + 16) & ~v34;
  v3 = (((*(*(v1 - 1) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v30 = sub_219BEFBD4();
  v4 = *(v30 - 8);
  v27 = v3;
  v5 = (v3 + *(v4 + 80) + 200) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v28 = v5;
  v29 = type metadata accessor for NewspaperGroupKnobs();
  v7 = v6 + *(*(v29 - 8) + 80);
  v8 = *(*(v29 - 8) + 80);
  v9 = v5 + v7;
  v32 = *(*(v29 - 8) + 64);
  v33 = sub_219BF2AB4();
  v10 = *(v33 - 8);
  v31 = *(v10 + 80);
  v11 = v0 + v2;

  v12 = v1[5];
  sub_21950D248(0, &qword_280E8FD60, MEMORY[0x277D33498], sub_218A42448, MEMORY[0x277D345E8]);
  v14 = v13;
  v15 = *(v13 - 8);
  if (!(*(v15 + 48))(v11 + v12, 1, v13))
  {
    (*(v15 + 8))(v11 + v12, v14);
  }

  v16 = v9 & ~v8;

  v17 = v1[8];
  v18 = sub_219BF26F4();
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v11 + v17, 1, v18))
  {
    (*(v19 + 8))(v11 + v17, v18);
  }

  v20 = v1[10];
  v21 = sub_219BEF554();
  v22 = *(*(v21 - 8) + 8);
  v22(v11 + v20, v21);
  v22(v11 + v1[11], v21);

  __swift_destroy_boxed_opaque_existential_1(v0 + v27);
  __swift_destroy_boxed_opaque_existential_1(v0 + v27 + 40);
  __swift_destroy_boxed_opaque_existential_1(v0 + v27 + 80);
  __swift_destroy_boxed_opaque_existential_1(v0 + v27 + 120);
  __swift_destroy_boxed_opaque_existential_1(v0 + v27 + 160);
  (*(v4 + 8))(v0 + v28, v30);

  v23 = *(v29 + 40);
  v24 = sub_219BEE5D4();
  v25 = *(v24 - 8);
  if (!(*(v25 + 48))(v0 + v16 + v23, 1, v24))
  {
    (*(v25 + 8))(v0 + v16 + v23, v24);
  }

  swift_unknownObjectRelease();
  (*(v10 + 8))(v0 + ((((v32 + v16 + 7) & 0xFFFFFFFFFFFFFFF8) + v31 + 8) & ~v31), v33);

  return swift_deallocObject();
}

uint64_t sub_2188EA9AC()
{
  v1 = type metadata accessor for NewspaperGroupConfig();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[5];
  sub_21950D248(0, &qword_280E8FD60, MEMORY[0x277D33498], sub_218A42448, MEMORY[0x277D345E8]);
  v5 = v4;
  v6 = *(v4 - 8);
  if (!(*(v6 + 48))(v2 + v3, 1, v4))
  {
    (*(v6 + 8))(v2 + v3, v5);
  }

  v7 = v1[8];
  v8 = sub_219BF26F4();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v2 + v7, 1, v8))
  {
    (*(v9 + 8))(v2 + v7, v8);
  }

  v10 = v1[10];
  v11 = sub_219BEF554();
  v12 = *(*(v11 - 8) + 8);
  v12(v2 + v10, v11);
  v12(v2 + v1[11], v11);

  return swift_deallocObject();
}

uint64_t sub_2188EAC54(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_2188EAD10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_2188EADC8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_2186FE720();
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_2188EAE74(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_2186FE720();
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2188EAF18()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_2188EAF50()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2188EAFA0()
{

  return swift_deallocObject();
}

uint64_t sub_2188EAFD8()
{
  sub_219512F74();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_2188EB060()
{

  return swift_deallocObject();
}

uint64_t sub_2188EB098()
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

uint64_t sub_2188EB208()
{
  v1 = sub_219BF0BD4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2188EB2D4()
{
  v1 = sub_219BEEA84();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2188EB398()
{
  v1 = sub_219BF0BD4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2188EB46C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2188EB4BC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2188EB4F8()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2188EB550()
{

  return swift_deallocObject();
}

uint64_t sub_2188EB588()
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

uint64_t sub_2188EB6F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_219519384();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for SportsLinksTagFeedGroupKnobs();
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

uint64_t sub_2188EB804(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_219519384();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for SportsLinksTagFeedGroupKnobs();
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

uint64_t sub_2188EB914()
{
  v1 = (type metadata accessor for SportsLinksTagFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_219519384();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];
  sub_2189AD5C8();
  (*(*(v5 - 8) + 8))(v4, v5);
  type metadata accessor for SportsLinksTagFeedGroupKnobs();

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[10]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[11]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[12]);

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2188EBABC()
{

  return swift_deallocObject();
}

uint64_t sub_2188EBAF4()
{
  v1 = (type metadata accessor for SportsLinksTagFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_219519384();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];
  sub_2189AD5C8();
  (*(*(v5 - 8) + 8))(v4, v5);
  type metadata accessor for SportsLinksTagFeedGroupKnobs();

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[10]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[11]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[12]);

  return swift_deallocObject();
}

uint64_t sub_2188EBC84()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2188EBCF4()
{

  return swift_deallocObject();
}

uint64_t sub_2188EBD3C()
{

  return swift_deallocObject();
}

uint64_t sub_2188EBD7C()
{

  return swift_deallocObject();
}

uint64_t sub_2188EBDB4()
{

  return swift_deallocObject();
}

uint64_t sub_2188EBDF4()
{

  return swift_deallocObject();
}

uint64_t sub_2188EBE38()
{

  return swift_deallocObject();
}

uint64_t sub_2188EBE78()
{
  v1 = (type metadata accessor for AudioFeedExpandRequest() - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);

  v3 = v1[7];
  sub_2186FB308();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_2188EBF7C()
{

  return swift_deallocObject();
}

uint64_t sub_2188EBFD4()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188EC010()
{
  swift_unownedRelease();

  return swift_deallocObject();
}

uint64_t sub_2188EC054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2186D868C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for SportsTopStoriesTagFeedGroupKnobs();
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

uint64_t sub_2188EC164(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2186D868C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for SportsTopStoriesTagFeedGroupKnobs();
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

uint64_t sub_2188EC274()
{
  v1 = (type metadata accessor for SportsTopStoriesTagFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_2186D868C();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];
  sub_2189AD5C8();
  (*(*(v5 - 8) + 8))(v4, v5);
  type metadata accessor for SportsTopStoriesTagFeedGroupKnobs();

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[10]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[11]);

  return swift_deallocObject();
}

uint64_t sub_2188EC41C()
{

  return swift_deallocObject();
}

uint64_t sub_2188EC454()
{

  return swift_deallocObject();
}

uint64_t sub_2188EC48C()
{

  return swift_deallocObject();
}

uint64_t sub_2188EC4D0()
{
  sub_219534800(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
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

uint64_t sub_2188EC65C()
{
  sub_219534800(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
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

uint64_t sub_2188EC7F8()
{
  sub_21896FBB0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  v1 = *(v0 + 96);
  if (v1 != 255)
  {
    sub_21896FC30(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_2188EC850()
{

  return swift_deallocObject();
}

uint64_t sub_2188EC890()
{

  return swift_deallocObject();
}

uint64_t sub_2188EC8C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SearchPrewarmResult();
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

uint64_t sub_2188EC988(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SearchPrewarmResult();
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

uint64_t sub_2188ECA44()
{

  return swift_deallocObject();
}

uint64_t sub_2188ECA80()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188ECABC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_2189AE994(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_2189AE9B4(0);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 32);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_2188ECBE0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    sub_2189AE994(0);
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
      sub_2189AE9B4(0);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 32);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_2188ECD04()
{

  return swift_deallocObject();
}

uint64_t sub_2188ECD3C()
{

  return swift_deallocObject();
}

uint64_t sub_2188ECD7C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
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

_BYTE *sub_2188ECE20(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_2188ECEC0()
{

  return swift_deallocObject();
}

uint64_t sub_2188ECEF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2188ECF64(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2188ECFD4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
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

_BYTE *sub_2188ED078(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_2188ED118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21953FF10();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for ForYouRecipesTagFeedGroupKnobs();
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

uint64_t sub_2188ED228(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_21953FF10();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for ForYouRecipesTagFeedGroupKnobs();
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

uint64_t sub_2188ED334()
{

  return swift_deallocObject();
}

uint64_t sub_2188ED36C()
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

uint64_t sub_2188ED4AC()
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

uint64_t sub_2188ED61C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2188ED65C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2188ED69C()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188ED6D4()
{

  return swift_deallocObject();
}

uint64_t sub_2188ED744()
{

  return swift_deallocObject();
}

uint64_t sub_2188ED7AC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2188ED7FC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188ED834()
{

  return swift_deallocObject();
}

uint64_t sub_2188ED874()
{

  return swift_deallocObject();
}

uint64_t sub_2188ED8B4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188ED8FC(uint64_t a1, uint64_t a2, uint64_t a3)
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

void sub_2188EDA20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_2188EDB44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_219561668();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for ChannelRecipesTagFeedGroupKnobs();
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

uint64_t sub_2188EDC54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_219561668();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for ChannelRecipesTagFeedGroupKnobs();
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

uint64_t sub_2188EDD60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2189AD5C8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_2186EDCB0(0, &qword_280E912E0, MEMORY[0x277D32720]);
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

void sub_2188EDE88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2189AD5C8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_2186EDCB0(0, &qword_280E912E0, MEMORY[0x277D32720]);
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

uint64_t sub_2188EDFAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2188EE018(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2188EE088(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
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

_BYTE *sub_2188EE12C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_2188EE1CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BF1934();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2188EE238(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BF1934();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2188EE2A8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188EE2E0()
{
  sub_218AB7640();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_2188EE3A4()
{

  return swift_deallocObject();
}

uint64_t sub_2188EE4A0()
{

  return swift_deallocObject();
}

uint64_t sub_2188EE4D8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_219BDC1D4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2188EE584(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_219BDC1D4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2188EE628(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_2188EE6E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_2188EE79C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2188EE848(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2188EE8F0()
{
  sub_21957F9CC(0, &qword_27CC1BF50, MEMORY[0x277D6DA48]);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_2188EE9A8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188EE9E4()
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

uint64_t sub_2188EECD4(uint64_t a1, uint64_t a2)
{
  sub_2189AD5C8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2188EED40(uint64_t a1, uint64_t a2)
{
  sub_2189AD5C8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2188EEDB0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188EEDE8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
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

_BYTE *sub_2188EEE8C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_2188EEF2C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188EEF64()
{

  return swift_deallocObject();
}

uint64_t sub_2188EEF9C()
{

  return swift_deallocObject();
}

uint64_t sub_2188EEFE4()
{
  v1 = *(v0 + 32);
  if (v1 != 255)
  {
    sub_21896755C(*(v0 + 16), *(v0 + 24), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_2188EF028()
{
  sub_218932F9C(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_2188EF060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21958F7F0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for DateRangeTagFeedGroupKnobs();
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

uint64_t sub_2188EF170(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_21958F7F0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for DateRangeTagFeedGroupKnobs();
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

uint64_t sub_2188EF280()
{

  return swift_deallocObject();
}

uint64_t sub_2188EF2B8()
{
  v1 = (type metadata accessor for DateRangeTagFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_21958F7F0();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];
  sub_2189AD5C8();
  (*(*(v5 - 8) + 8))(v4, v5);
  type metadata accessor for DateRangeTagFeedGroupKnobs();

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);

  return swift_deallocObject();
}

uint64_t sub_2188EF40C()
{
  v1 = (type metadata accessor for DateRangeTagFeedGroupEmitterBatch() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[10];
  v4 = v3 + *(type metadata accessor for DateRangeTagFeedGroupCursor() + 20);
  v5 = sub_219BDBD34();
  (*(*(v5 - 8) + 8))(v2 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_2188EF514()
{
  v1 = (type metadata accessor for DateRangeTagFeedGroupCursor() - 8);
  v2 = (*(*v1 + 80) + 144) & ~*(*v1 + 80);

  v3 = v0 + v1[7];
  v4 = sub_219BDBD34();
  (*(*(v4 - 8) + 8))(v3 + v2, v4);

  return swift_deallocObject();
}

uint64_t sub_2188EF68C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188EF6C4()
{

  return swift_deallocObject();
}

uint64_t sub_2188EF70C()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188EF744()
{

  return swift_deallocObject();
}

uint64_t sub_2188EF78C()
{
  sub_219596E94(v0[2]);

  return swift_deallocObject();
}

uint64_t sub_2188EF7E0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188EF818()
{

  return swift_deallocObject();
}

uint64_t sub_2188EF854()
{
  sub_2195985E8();
  swift_getTupleTypeMetadata2();
  sub_219BED134();
  swift_getWitnessTable();
  sub_219BED034();
  sub_219BEC724();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_2188EF93C(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2188EF9A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2188EFA18()
{

  return swift_deallocObject();
}

uint64_t sub_2188EFA50(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_2188EFB10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_2188EFBCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2195A2864();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for InlineCategoriesMagazineFeedGroupKnobs();
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

uint64_t sub_2188EFCDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2195A2864();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for InlineCategoriesMagazineFeedGroupKnobs();
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

uint64_t sub_2188EFDE8()
{
  v1 = (type metadata accessor for InlineCategoriesMagazineFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_2195A2864();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v1[7];
  sub_2186F911C(0, &qword_280E919C0, MEMORY[0x277D321A0]);
  (*(*(v5 - 8) + 8))(v2 + v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[9]);

  return swift_deallocObject();
}

uint64_t sub_2188F0AF4()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188F0B3C()
{

  return swift_deallocObject();
}

uint64_t sub_2188F0B74(uint64_t a1, uint64_t a2)
{
  sub_2195C6604(0, &qword_280E918A8, MEMORY[0x277D322C0], MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2188F0C10(uint64_t a1, uint64_t a2)
{
  sub_2195C6604(0, &qword_280E918A8, MEMORY[0x277D322C0], MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2188F0CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2186FE720();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28) + 8);
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

void sub_2188F0D80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2186FE720();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = a2;
  }
}

uint64_t sub_2188F0E40()
{

  return swift_deallocObject();
}

uint64_t sub_2188F0E78()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188F0EB0()
{

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2188F0F00()
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

uint64_t sub_2188F106C()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2188F10AC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
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

_BYTE *sub_2188F1150(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_2188F11F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2186E4FBC(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_2188F12AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2186E4FBC(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }
}

uint64_t sub_2188F1374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_219BF34F4();
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

uint64_t sub_2188F1430(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_219BF34F4();
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

uint64_t sub_2188F14E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SavedFeedContentConfig();
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

uint64_t sub_2188F15B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SavedFeedContentConfig();
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

uint64_t sub_2188F167C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_2188F16B4()
{

  return swift_deallocObject();
}

uint64_t sub_2188F16EC()
{

  return swift_deallocObject();
}

uint64_t sub_2188F1734()
{

  return swift_deallocObject();
}

uint64_t sub_2188F176C()
{

  return swift_deallocObject();
}

uint64_t sub_2188F17B4()
{

  return swift_deallocObject();
}

uint64_t sub_2188F17EC()
{
  sub_21896FBB0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  v1 = *(v0 + 96);
  if (v1 != 255)
  {
    sub_21896FC30(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_2188F1860()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188F1898()
{
  sub_218B7E48C();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_2188F195C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2195D92E4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for PuzzleFeaturedTagFeedGroupKnobs();
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

uint64_t sub_2188F1A6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2195D92E4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for PuzzleFeaturedTagFeedGroupKnobs();
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

uint64_t sub_2188F1B7C()
{
  v1 = (type metadata accessor for PuzzleFeaturedTagFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_2195D92E4();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];
  sub_2189AD5C8();
  (*(*(v5 - 8) + 8))(v4, v5);
  type metadata accessor for PuzzleFeaturedTagFeedGroupKnobs();

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[9]);

  return swift_deallocObject();
}

uint64_t sub_2188F1D04()
{
  v1 = (type metadata accessor for PuzzleFeaturedTagFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_2195D92E4();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];
  sub_2189AD5C8();
  (*(*(v5 - 8) + 8))(v4, v5);
  type metadata accessor for PuzzleFeaturedTagFeedGroupKnobs();

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[9]);

  return swift_deallocObject();
}

uint64_t sub_2188F1EB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2186E06DC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for NewFollowTodayFeedGroupKnobs();
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

uint64_t sub_2188F1FC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2186E06DC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for NewFollowTodayFeedGroupKnobs();
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

uint64_t sub_2188F20D4()
{
  v1 = (type metadata accessor for NewFollowTodayFeedGroupEmitter() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  sub_2186E06DC();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = v3 + v1[7];
  sub_2189AE994(0);
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = type metadata accessor for NewFollowTodayFeedGroupKnobs();
  v8 = *(v7 + 20);
  sub_21903485C(0, &qword_280E91860, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D32318]);
  (*(*(v9 - 8) + 8))(v5 + v8, v9);

  v10 = *(v7 + 40);
  v11 = sub_219BEF244();
  (*(*(v11 - 8) + 8))(v5 + v10, v11);
  __swift_destroy_boxed_opaque_existential_1(v3 + v1[8]);

  __swift_destroy_boxed_opaque_existential_1(v3 + v1[10]);
  __swift_destroy_boxed_opaque_existential_1(v3 + v1[11]);
  __swift_destroy_boxed_opaque_existential_1(v3 + v1[12]);

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2188F2390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  refreshed = type metadata accessor for SavedFeedRefreshResult();
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

uint64_t sub_2188F2450(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SavedFeedRefreshResult();
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

uint64_t sub_2188F2520()
{
  v1 = *(v0 + 32);
  if (v1 != 255)
  {
    sub_21896755C(*(v0 + 16), *(v0 + 24), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_2188F25B0()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188F25EC()
{

  return swift_deallocObject();
}

uint64_t sub_2188F262C()
{

  return swift_deallocObject();
}

uint64_t sub_2188F2664()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2188F26AC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188F26E4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2188F2748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218726800(0, qword_280ED83C0, type metadata accessor for MyMagazinesIssue, MEMORY[0x277D83D88]);
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

void sub_2188F2834(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_218726800(0, qword_280ED83C0, type metadata accessor for MyMagazinesIssue, MEMORY[0x277D83D88]);
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

uint64_t sub_2188F291C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_218726800(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_2188F29FC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_218726800(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2188F2AD4()
{

  return swift_deallocObject();
}

uint64_t sub_2188F2B20()
{

  return swift_deallocObject();
}

uint64_t sub_2188F2B60()
{

  return swift_deallocObject();
}

uint64_t sub_2188F2B98()
{

  return swift_deallocObject();
}

uint64_t sub_2188F2BD0()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188F2C08()
{

  return swift_deallocObject();
}

uint64_t sub_2188F2CA8(uint64_t a1, uint64_t a2, uint64_t a3)
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

void sub_2188F2D64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_2188F2E74(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_219607BB8(0, &qword_27CC0BA60, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

void *sub_2188F2F54(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_219607BB8(0, &qword_27CC0BA60, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 32);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2188F3028@<X0>(uint64_t a1@<X8>)
{
  result = sub_219BEC814();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_2188F3094()
{

  return swift_deallocObject();
}

uint64_t sub_2188F3124(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
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

_BYTE *sub_2188F31C8(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_2188F32C4()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2188F3304(uint64_t a1, uint64_t a2)
{
  sub_2186E3B14();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2188F3370(uint64_t a1, uint64_t a2)
{
  sub_2186E3B14();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2188F33E0()
{

  return swift_deallocObject();
}

uint64_t sub_2188F341C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2196200A8(0, &qword_27CC1D280, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
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

void sub_2188F3508(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2196200A8(0, &qword_27CC1D280, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
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

uint64_t sub_2188F35F4()
{

  return swift_deallocObject();
}

uint64_t sub_2188F3648@<X0>(_BYTE *a1@<X8>)
{
  result = sub_219BEC7F4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2188F36B8(uint64_t a1)
{
  sub_219620BF8(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2188F3714(uint64_t a1, uint64_t a2)
{
  sub_219620BF8(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2188F380C(uint64_t a1, uint64_t a2)
{
  sub_219623B94(0, &qword_280E918A8, MEMORY[0x277D322C0], MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2188F38A8(uint64_t a1, uint64_t a2)
{
  sub_219623B94(0, &qword_280E918A8, MEMORY[0x277D322C0], MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2188F3948()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188F3980()
{
  sub_2189522EC();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_2188F3A44(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    sub_2186F64EC(0);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 40);

    return v13(v14, a2, v12);
  }
}

void sub_2188F3B74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  else
  {
    sub_2186F64EC(0);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 40);

    v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2188F3C94()
{

  return swift_deallocObject();
}

uint64_t sub_2188F3CE4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188F3D1C()
{
  sub_218ADCCD0();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_2188F3DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21962D4F8(0, qword_280E93FD0, type metadata accessor for ChannelTodayFeedGroupClusteringKnobOverrides);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_21962D4F8(0, &qword_280E90FF0, MEMORY[0x277D32BE0]);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_21962D4F8(0, qword_280E949D0, type metadata accessor for TopicTodayFeedGroupClusteringKnobOverrides);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 28);

  return v16(v17, a2, v15);
}

uint64_t sub_2188F3F74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_21962D4F8(0, qword_280E93FD0, type metadata accessor for ChannelTodayFeedGroupClusteringKnobOverrides);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  sub_21962D4F8(0, &qword_280E90FF0, MEMORY[0x277D32BE0]);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_21962D4F8(0, qword_280E949D0, type metadata accessor for TopicTodayFeedGroupClusteringKnobOverrides);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 28);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_2188F412C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188F4188()
{
  v12 = sub_219BDEE04();
  v1 = *(v12 - 8);
  v10 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v9 = (((*(v1 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = sub_219BDD6C4();
  v2 = *(v11 - 8);
  v3 = (v9 + *(v2 + 80) + 8) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_219BDF074();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v1 + 8))(v0 + v10, v12);

  (*(v2 + 8))(v0 + v3, v11);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_2188F438C()
{
  v1 = sub_219BDEE04();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_219BDD6C4();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_2188F44E4()
{

  return swift_deallocObject();
}

uint64_t sub_2188F4524()
{
  v1 = sub_219BDBD34();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2188F45E8()
{
  v1 = sub_219BDBD34();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_2188F4670()
{
  v1 = sub_219BDDDC4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_219BDDB34();
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);

  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_2188F47CC()
{
  v1 = sub_219BDDDC4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_219BDDB34();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_2188F4914()
{
  v1 = sub_219BDD884();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_2188F49B0()
{
  v1 = sub_219BDE524();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_219BDDB34();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_2188F4B04()
{
  v12 = sub_219BDDAF4();
  v1 = *(v12 - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v11 = sub_219BDE524();
  v4 = *(v11 - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = sub_219BDEB34();
  v8 = *(v7 - 8);
  v9 = (v5 + v6 + *(v8 + 80)) & ~*(v8 + 80);

  (*(v1 + 8))(v0 + v2, v12);
  (*(v4 + 8))(v0 + v5, v11);
  (*(v8 + 8))(v0 + v9, v7);

  return swift_deallocObject();
}

uint64_t sub_2188F4CE0()
{
  v16 = sub_219BDDAF4();
  v1 = *(v16 - 8);
  v13 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v2 = *(v1 + 64);
  v15 = sub_219BDE524();
  v3 = *(v15 - 8);
  v11 = (v13 + v2 + *(v3 + 80)) & ~*(v3 + 80);
  v4 = *(v3 + 64);
  v14 = sub_219BDE374();
  v5 = *(v14 - 8);
  v6 = (v11 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v12 = sub_219BDDB34();
  v8 = *(v12 - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);

  (*(v1 + 8))(v0 + v13, v16);
  (*(v3 + 8))(v0 + v11, v15);
  (*(v5 + 8))(v0 + v6, v14);
  (*(v8 + 8))(v0 + v9, v12);

  return swift_deallocObject();
}

uint64_t sub_2188F4F48()
{
  v1 = sub_219BDDB34();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2188F5010()
{

  return swift_deallocObject();
}

uint64_t sub_2188F5050()
{
  v1 = sub_219BEEF54();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2188F5114()
{
  v1 = sub_219BEEF54();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2188F51EC()
{
  v1 = sub_219BEEF54();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2188F52CC()
{
  v1 = sub_219BEEF54();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2188F5398()
{

  return swift_deallocObject();
}

uint64_t sub_2188F53D0()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188F5408(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for AudioPlaylistFeedContentConfig();
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
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_2188F552C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for AudioPlaylistFeedContentConfig();
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
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_2188F5650(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_219BF0BD4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2188F56FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_219BF0BD4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2188F5804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2186EC3A4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroupKnobs();
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

uint64_t sub_2188F5914(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2186EC3A4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for FeaturedIssueArticleMagazineFeedGroupKnobs();
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

uint64_t sub_2188F5A24()
{
  v1 = (type metadata accessor for FeaturedIssueArticleMagazineFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_2186EC3A4();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];
  sub_2186E3B14();
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroupKnobs();

  v7 = *(v6 + 44);
  sub_2186F91B8(0, &qword_280E91830, MEMORY[0x277D32318]);
  (*(*(v8 - 8) + 8))(v4 + v7, v8);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);

  return swift_deallocObject();
}

uint64_t sub_2188F5BF8()
{

  return swift_deallocObject();
}

uint64_t sub_2188F5C34(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for WebLinkRouteModel.URLType(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2188F5CE0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for WebLinkRouteModel.URLType(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2188F5D84(uint64_t a1, uint64_t a2)
{
  sub_218C1A090();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2188F5DF0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  sub_218C1A090();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_2188F5E74(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_219BDBD34();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_2188F5F20(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_219BDBD34();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2188F5FC4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_2186DDF98(0, &qword_280EE9C40, MEMORY[0x277CC9578]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2188F6090(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_2186DDF98(0, &qword_280EE9C40, MEMORY[0x277CC9578]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 32);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2188F6150()
{

  return swift_deallocObject();
}

uint64_t sub_2188F61A0()
{

  return swift_deallocObject();
}

uint64_t sub_2188F61DC()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188F6214()
{

  return swift_deallocObject();
}

uint64_t sub_2188F6258()
{

  return swift_deallocObject();
}

uint64_t sub_2188F6290()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2188F62E0(uint64_t a1, uint64_t a2, int *a3)
{
  sub_2189AE994(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  sub_2189AE9B4(0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_13:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_14;
  }

  v14 = type metadata accessor for FoodTodayFeedGroupRecipeKnobs();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_13;
  }

  v15 = type metadata accessor for FoodTodayFeedGroupHeadlineKnobs();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[8];
    goto LABEL_13;
  }

  v16 = type metadata accessor for FoodTodayFeedGroupChannelRecipeKnobs();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[10];
    goto LABEL_13;
  }

  v17 = type metadata accessor for FoodTodayFeedGroupTopicRecipeKnobs();
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[11];
    goto LABEL_13;
  }

  v19 = *(a1 + a3[12]);
  if (v19 >= 0xFFFFFFFF)
  {
    LODWORD(v19) = -1;
  }

  return (v19 + 1);
}

uint64_t sub_2188F650C(uint64_t a1, uint64_t a2, int a3, int *a4)
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
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = type metadata accessor for FoodTodayFeedGroupRecipeKnobs();
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        v17 = type metadata accessor for FoodTodayFeedGroupHeadlineKnobs();
        if (*(*(v17 - 8) + 84) == a3)
        {
          v10 = v17;
          v14 = *(v17 - 8);
          v15 = a4[8];
        }

        else
        {
          v18 = type metadata accessor for FoodTodayFeedGroupChannelRecipeKnobs();
          if (*(*(v18 - 8) + 84) == a3)
          {
            v10 = v18;
            v14 = *(v18 - 8);
            v15 = a4[10];
          }

          else
          {
            result = type metadata accessor for FoodTodayFeedGroupTopicRecipeKnobs();
            if (*(*(result - 8) + 84) != a3)
            {
              *(a1 + a4[12]) = (a2 - 1);
              return result;
            }

            v10 = result;
            v14 = *(result - 8);
            v15 = a4[11];
          }
        }
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_2188F6734(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_2188F67F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2188F68B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2188F691C(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2188F698C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2186E16D0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for FoodTodayFeedGroupKnobs();
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

uint64_t sub_2188F6A9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2186E16D0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for FoodTodayFeedGroupKnobs();
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

uint64_t sub_2188F6BA8()
{
  v1 = type metadata accessor for FoodTodayFeedGroupEmitter();
  v25 = *(*(v1 - 1) + 80);
  v2 = v0 + ((v25 + 16) & ~v25);
  sub_2186E16D0();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[5];
  sub_2189AE994(0);
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = type metadata accessor for FoodTodayFeedGroupKnobs();
  v7 = v6[5];
  sub_21967AA64(0, &qword_280E91860, MEMORY[0x277D32318]);
  (*(*(v8 - 8) + 8))(v4 + v7, v8);
  v9 = v4 + v6[6];

  v10 = type metadata accessor for FoodTodayFeedGroupRecipeKnobs();
  v11 = *(v10 + 24);
  v12 = sub_219BEF244();
  v13 = *(*(v12 - 8) + 8);
  v13(v9 + v11, v12);

  v14 = v4 + v6[7];

  v13(v14 + *(v10 + 24), v12);

  v15 = v4 + v6[8];

  v16 = type metadata accessor for FoodTodayFeedGroupHeadlineKnobs();
  v13(v15 + *(v16 + 32), v12);

  v17 = v4 + v6[9];

  v13(v17 + *(v10 + 24), v12);

  v18 = v4 + v6[10];
  v19 = sub_219BEF814();
  v20 = *(v19 - 8);
  v21 = *(v20 + 48);
  if (!v21(v18, 1, v19))
  {
    (*(v20 + 8))(v18, v19);
  }

  type metadata accessor for FoodTodayFeedGroupChannelRecipeKnobs();

  v22 = v4 + v6[11];
  if (!v21(v22, 1, v19))
  {
    (*(v20 + 8))(v22, v19);
  }

  v23 = *(type metadata accessor for FoodTodayFeedGroupTopicRecipeKnobs() + 20);
  if (!v21(v22 + v23, 1, v19))
  {
    (*(v20 + 8))(v22 + v23, v19);
  }

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[6]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[7]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[10]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[11]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[12]);

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2188F70D8()
{
  v1 = type metadata accessor for FoodTodayFeedGroupEmitter();
  v29 = *(*(v1 - 8) + 80);
  v27 = *(*(v1 - 8) + 64);
  v2 = sub_219BED6B4();
  v30 = *(v2 - 8);
  v31 = v2;
  v26 = *(v30 + 80);
  v33 = v0;
  v28 = (v29 + 16) & ~v29;
  v3 = v0 + v28;
  sub_2186E16D0();
  (*(*(v4 - 8) + 8))(v0 + v28, v4);
  v32 = v1;
  v5 = v0 + v28 + *(v1 + 20);
  sub_2189AE994(0);
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = type metadata accessor for FoodTodayFeedGroupKnobs();
  v8 = v7[5];
  sub_21967AA64(0, &qword_280E91860, MEMORY[0x277D32318]);
  (*(*(v9 - 8) + 8))(v5 + v8, v9);
  v10 = v5 + v7[6];

  v11 = type metadata accessor for FoodTodayFeedGroupRecipeKnobs();
  v12 = *(v11 + 24);
  v13 = sub_219BEF244();
  v14 = *(*(v13 - 8) + 8);
  v14(v10 + v12, v13);

  v15 = v5 + v7[7];

  v14(v15 + *(v11 + 24), v13);

  v16 = v5 + v7[8];

  v17 = type metadata accessor for FoodTodayFeedGroupHeadlineKnobs();
  v14(v16 + *(v17 + 32), v13);

  v18 = v5 + v7[9];

  v14(v18 + *(v11 + 24), v13);

  v19 = v5 + v7[10];
  v20 = sub_219BEF814();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  if (!v22(v19, 1, v20))
  {
    (*(v21 + 8))(v19, v20);
  }

  type metadata accessor for FoodTodayFeedGroupChannelRecipeKnobs();

  v23 = v5 + v7[11];
  if (!v22(v23, 1, v20))
  {
    (*(v21 + 8))(v23, v20);
  }

  v24 = *(type metadata accessor for FoodTodayFeedGroupTopicRecipeKnobs() + 20);
  if (!v22(v23 + v24, 1, v20))
  {
    (*(v21 + 8))(v23 + v24, v20);
  }

  __swift_destroy_boxed_opaque_existential_1(v3 + v32[6]);
  __swift_destroy_boxed_opaque_existential_1(v3 + v32[7]);
  __swift_destroy_boxed_opaque_existential_1(v3 + v32[8]);

  __swift_destroy_boxed_opaque_existential_1(v3 + v32[10]);
  __swift_destroy_boxed_opaque_existential_1(v3 + v32[11]);
  __swift_destroy_boxed_opaque_existential_1(v3 + v32[12]);

  (*(v30 + 8))(v33 + ((v28 + v27 + v26) & ~v26), v31);

  return swift_deallocObject();
}

uint64_t sub_2188F766C()
{
  v1 = type metadata accessor for FoodTodayFeedGroupEmitter();
  v29 = *(*(v1 - 1) + 80);
  v27 = *(*(v1 - 1) + 64);
  v28 = (v29 + 16) & ~v29;
  v30 = v0;
  v2 = v0 + v28;
  sub_2186E16D0();
  (*(*(v3 - 8) + 8))(v0 + v28, v3);
  v4 = v0 + v28 + v1[5];
  sub_2189AE994(0);
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = type metadata accessor for FoodTodayFeedGroupKnobs();
  v7 = v6[5];
  sub_21967AA64(0, &qword_280E91860, MEMORY[0x277D32318]);
  (*(*(v8 - 8) + 8))(v4 + v7, v8);
  v9 = v4 + v6[6];

  v10 = type metadata accessor for FoodTodayFeedGroupRecipeKnobs();
  v11 = *(v10 + 24);
  v12 = sub_219BEF244();
  v13 = *(*(v12 - 8) + 8);
  v13(v9 + v11, v12);

  v14 = v4 + v6[7];

  v13(v14 + *(v10 + 24), v12);

  v15 = v4 + v6[8];

  v16 = type metadata accessor for FoodTodayFeedGroupHeadlineKnobs();
  v13(v15 + *(v16 + 32), v12);

  v17 = v4 + v6[9];

  v13(v17 + *(v10 + 24), v12);
  v18 = v6;

  v19 = v4 + v6[10];
  v20 = sub_219BEF814();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  if (!v22(v19, 1, v20))
  {
    (*(v21 + 8))(v19, v20);
  }

  type metadata accessor for FoodTodayFeedGroupChannelRecipeKnobs();

  v23 = v4 + v18[11];
  if (!v22(v23, 1, v20))
  {
    (*(v21 + 8))(v23, v20);
  }

  v24 = *(type metadata accessor for FoodTodayFeedGroupTopicRecipeKnobs() + 20);
  if (!v22(v23 + v24, 1, v20))
  {
    (*(v21 + 8))(v23 + v24, v20);
  }

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[6]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[7]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[10]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[11]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[12]);

  v25 = (v30 + ((v27 + v28 + 7) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_2188F7BA8()
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

uint64_t sub_2188F7D14()
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

uint64_t sub_2188F7E78()
{
  sub_21967AA64(0, &qword_280E92610, MEMORY[0x277D31C80]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for FoodTodayFeedGroupKnobs();
  v27 = *(*(v6 - 1) + 80);

  (*(v3 + 8))(v0 + v4, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + v5);
  v7 = v0 + ((v5 + v27 + 40) & ~v27);
  sub_2189AE994(0);
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = v6[5];
  sub_21967AA64(0, &qword_280E91860, MEMORY[0x277D32318]);
  (*(*(v10 - 8) + 8))(v7 + v9, v10);
  v11 = v7 + v6[6];

  v12 = type metadata accessor for FoodTodayFeedGroupRecipeKnobs();
  v13 = *(v12 + 24);
  v14 = sub_219BEF244();
  v15 = *(*(v14 - 8) + 8);
  v15(v11 + v13, v14);

  v16 = v7 + v6[7];

  v15(v16 + *(v12 + 24), v14);

  v17 = v7 + v6[8];

  v18 = type metadata accessor for FoodTodayFeedGroupHeadlineKnobs();
  v15(v17 + *(v18 + 32), v14);

  v19 = v7 + v6[9];

  v15(v19 + *(v12 + 24), v14);

  v20 = v7 + v6[10];
  v21 = sub_219BEF814();
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  if (!v23(v20, 1, v21))
  {
    (*(v22 + 8))(v20, v21);
  }

  type metadata accessor for FoodTodayFeedGroupChannelRecipeKnobs();

  v24 = v7 + v6[11];
  if (!v23(v24, 1, v21))
  {
    (*(v22 + 8))(v24, v21);
  }

  v25 = *(type metadata accessor for FoodTodayFeedGroupTopicRecipeKnobs() + 20);
  if (!v23(v24 + v25, 1, v21))
  {
    (*(v22 + 8))(v24 + v25, v21);
  }

  return swift_deallocObject();
}

uint64_t sub_2188F8370()
{

  return swift_deallocObject();
}

uint64_t sub_2188F83AC(uint64_t a1, uint64_t a2)
{
  sub_21898BF70();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2188F8418(uint64_t a1, uint64_t a2)
{
  sub_21898BF70();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2188F8488()
{
  v1 = *(type metadata accessor for TagFeedUncollapsedBlueprintModifier(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  sub_21967F10C(0, &qword_280EE36C0, MEMORY[0x277D6EC60]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = (v3 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(*(type metadata accessor for TagFeedBlueprintCollapsedSection(0) - 8) + 80);
  v10 = (v7 + v8 + v9) & ~v9;
  sub_21898BF70();
  (*(*(v11 - 8) + 8))(v0 + v2, v11);
  (*(v6 + 8))(v0 + v7, v5);
  sub_218954350();
  (*(*(v12 - 8) + 8))(v0 + v10, v12);

  return swift_deallocObject();
}

uint64_t sub_2188F86D4()
{

  return swift_deallocObject();
}

uint64_t sub_2188F870C(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BE9834();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2188F8778(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BE9834();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2188F87E8()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_2188F8820()
{

  return swift_deallocObject();
}

uint64_t sub_2188F8860()
{

  return swift_deallocObject();
}

uint64_t sub_2188F8898()
{
  sub_21896FBB0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  v1 = *(v0 + 96);
  if (v1 != 255)
  {
    sub_21896FC30(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_2188F88F0()
{

  return swift_deallocObject();
}

uint64_t sub_2188F8930()
{

  return swift_deallocObject();
}

uint64_t sub_2188F896C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2188F8A18(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2188F8ABC(uint64_t a1, uint64_t a2)
{
  sub_218C42540();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2188F8B28(uint64_t a1, uint64_t a2)
{
  sub_218C42540();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2188F8B98(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2188F8C04(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2188F8C74()
{
  sub_219686124(0, &unk_280EE8780, MEMORY[0x277D2DAD8], MEMORY[0x277D83D88]);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 33) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = sub_219BDB184();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);

  v8 = sub_219BDF4A4();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3, 1, v8))
  {
    (*(v9 + 8))(v0 + v3, v8);
  }

  swift_unknownObjectRelease();
  (*(v6 + 8))(v0 + ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7), v5);

  return swift_deallocObject();
}

uint64_t sub_2188F8E58(uint64_t a1, uint64_t a2)
{
  sub_2189AD5C8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2188F8EC4(uint64_t a1, uint64_t a2)
{
  sub_2189AD5C8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2188F8FA4()
{
  swift_unownedRelease();

  return swift_deallocObject();
}

uint64_t sub_2188F9170(uint64_t a1, uint64_t a2, uint64_t a3)
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

void sub_2188F922C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_2188F9320(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
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

_BYTE *sub_2188F93C4(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_2188F9464(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_2196937B0(0, &qword_280E918A8, MEMORY[0x277D322C0], MEMORY[0x277D83D88]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2188F9544(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_2196937B0(0, &qword_280E918A8, MEMORY[0x277D322C0], MEMORY[0x277D83D88]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2188F9618()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_2188F9650()
{

  return swift_deallocObject();
}

uint64_t sub_2188F968C()
{

  return swift_deallocObject();
}

uint64_t sub_2188F96C4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_2188F9700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_219694FFC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for SportsBoxScoresTagFeedGroupKnobs();
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

uint64_t sub_2188F9810(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_219694FFC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for SportsBoxScoresTagFeedGroupKnobs();
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

uint64_t sub_2188F9920()
{
  v1 = (type metadata accessor for SportsBoxScoresTagFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_219694FFC();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];
  sub_2189AD5C8();
  (*(*(v5 - 8) + 8))(v4, v5);
  type metadata accessor for SportsBoxScoresTagFeedGroupKnobs();

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[9]);

  return swift_deallocObject();
}

uint64_t sub_2188F9A90()
{

  return swift_deallocObject();
}

uint64_t sub_2188F9AC8()
{

  return swift_deallocObject();
}

uint64_t sub_2188F9B08()
{

  return swift_deallocObject();
}

uint64_t sub_2188F9B48()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188F9BC0()
{
  v1 = sub_219BE3514();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2188F9CA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BF1934();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2188F9D0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BF1934();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2188F9DC8()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188F9E00()
{

  return swift_deallocObject();
}

uint64_t sub_2188F9E40()
{

  return swift_deallocObject();
}

uint64_t sub_2188F9E80()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2188F9EC8()
{

  return swift_deallocObject();
}

uint64_t sub_2188F9F0C()
{

  return swift_deallocObject();
}

uint64_t sub_2188F9F44()
{

  return swift_deallocObject();
}

uint64_t sub_2188F9F7C()
{

  return swift_deallocObject();
}

uint64_t sub_2188F9FF8()
{

  return swift_deallocObject();
}

uint64_t sub_2188FA03C()
{

  return swift_deallocObject();
}

uint64_t sub_2188FA074()
{
  v1 = sub_219BEEAF4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2188FA138()
{
  v1 = type metadata accessor for TagFeedExpandRequest();
  v2 = (*(*(v1 - 8) + 80) + 56) & ~*(*(v1 - 8) + 80);

  v3 = v0 + v2;

  v4 = *(v1 + 20);
  sub_2186FAE74();
  v6 = v5;
  v7 = *(v5 - 8);
  if (!(*(v7 + 48))(v0 + v2 + v4, 1, v5))
  {
    (*(v7 + 8))(v3 + v4, v6);
  }

  v8 = (v3 + *(v1 + 24));

  return swift_deallocObject();
}

uint64_t sub_2188FA298()
{
  v1 = *(type metadata accessor for TagFeedGapLocation(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_2186FAE74();
  v4 = v3;
  v5 = *(v3 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v3))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_2188FA3FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BF1934();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2188FA468(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BF1934();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2188FA4D8()
{
  sub_2196B61C0(0, &qword_280EE37B0, MEMORY[0x277D6EC60]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  sub_2196B612C();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = (v4 + v5 + *(v8 + 80)) & ~*(v8 + 80);
  (*(v3 + 8))(v0 + v4, v2);
  (*(v8 + 8))(v0 + v9, v7);

  return swift_deallocObject();
}

uint64_t sub_2188FA650()
{
  v1 = sub_219BE16D4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  sub_2196B61C0(0, &qword_280EE45E8, MEMORY[0x277D6E3A0]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = (v4 + *(v7 + 80)) & ~*(v7 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v7 + 8))(v0 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_2188FA7B4()
{
  sub_2196B61C0(0, &unk_280EE5140, MEMORY[0x277D6DA48]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_2196B646C();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = (v5 + *(v8 + 80) + 8) & ~*(v8 + 80);
  (*(v3 + 8))(v0 + v4, v2);

  (*(v8 + 8))(v0 + v9, v7);

  return swift_deallocObject();
}

uint64_t sub_2188FA92C()
{
  sub_2196B61C0(0, &unk_280EE5140, MEMORY[0x277D6DA48]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_2196B6554();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = (((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + *(v8 + 80) + 8) & ~*(v8 + 80);
  (*(v3 + 8))(v0 + v4, v2);
  swift_unknownObjectRelease();

  (*(v8 + 8))(v0 + v9, v7);

  return swift_deallocObject();
}

uint64_t sub_2188FACFC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188FAD34()
{

  return swift_deallocObject();
}

uint64_t sub_2188FAD7C()
{

  sub_218DFB934(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_2188FADC8()
{
  sub_2187C5110();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_2188FAE6C()
{
  sub_2187C5110();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2188FAF08()
{
  sub_2187C5110();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 80);

  if (*(v0 + 32) >= 4uLL)
  {
  }

  (*(v3 + 8))(v0 + ((v4 + 40) & ~v4), v2);

  return swift_deallocObject();
}

uint64_t sub_2188FAFDC()
{
  v1 = *(type metadata accessor for NewsActivity2.Article(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  sub_2187C5110();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 80);
  sub_219BDD944();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload != 1)
  {
    sub_2187B3004();
    v10 = *(v9 + 48);
    v11 = sub_219BDE294();
    (*(*(v11 - 8) + 8))(v0 + v2 + v10, v11);
  }

  sub_2196C8470(0, &qword_280EE8E00, MEMORY[0x277D2FB40], sub_2187B2E10);

  (*(v6 + 8))(v0 + ((((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7), v5);

  return swift_deallocObject();
}

uint64_t sub_2188FB1E0()
{
  v1 = *(type metadata accessor for NewsActivity2.Article(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  sub_219BDD944();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload != 1)
  {
    sub_2187B3004();
    v5 = *(v4 + 48);
    v6 = sub_219BDE294();
    (*(*(v6 - 8) + 8))(v0 + v2 + v5, v6);
  }

  sub_2196C8470(0, &qword_280EE8E00, MEMORY[0x277D2FB40], sub_2187B2E10);

  return swift_deallocObject();
}

uint64_t sub_2188FB338()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188FB378()
{

  return swift_deallocObject();
}

uint64_t sub_2188FB3B8()
{
  sub_2187C5110();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_2188FB480(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_219BDCAF4();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_2188FB5C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

  v13 = sub_219BDCAA4();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_219BDCAF4();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_2188FB70C()
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

uint64_t sub_2188FB8FC()
{
  v1 = type metadata accessor for EmailSignupViewModel(0);
  v2 = (*(*(v1 - 8) + 80) + 34) & ~*(*(v1 - 8) + 80);

  v3 = v0 + v2 + *(v1 + 24);
  type metadata accessor for EmailSignupViewModel.Asset(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v4 = sub_219BDB954();
    (*(*(v4 - 8) + 8))(v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_2188FBA64()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2188FBAA4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 2)
    {
      return v12 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2188FBB60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_2188FBC1C()
{
  if (*(v0 + 24) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2188FBC5C()
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

uint64_t sub_2188FBDC8()
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

uint64_t sub_2188FBF08()
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

uint64_t sub_2188FC078()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188FC0B0()
{
  sub_2196D2A78(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_2188FC1A4()
{
  sub_2196D2A78(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
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

uint64_t sub_2188FC340(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 252)
  {
    v4 = *a1;
    if (v4 >= 4)
    {
      return v4 - 3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_219BDBD34();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_2188FC3E4(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 252)
  {
    *result = a2 + 3;
  }

  else
  {
    v7 = sub_219BDBD34();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2188FC484()
{
  sub_2196D5DA8(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
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

uint64_t sub_2188FC5E0()
{
  sub_21896FBB0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  v1 = *(v0 + 96);
  if (v1 != 255)
  {
    sub_21896FC30(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_2188FC638()
{
  sub_2196D5DA8(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
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

uint64_t sub_2188FC7C0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
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

_BYTE *sub_2188FC864(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_2188FC904()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_2188FC93C()
{

  return swift_deallocObject();
}

uint64_t sub_2188FC984()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188FC9BC()
{

  return swift_deallocObject();
}

uint64_t sub_2188FC9F8()
{
  sub_21896FD44(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_2188FCA4C()
{
  sub_218932F9C(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_2188FCA84(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2188FCAF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2188FCB60(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for MagazineFeedGapLocation(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2188FCC0C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for MagazineFeedGapLocation(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2188FCCC8()
{

  return swift_deallocObject();
}

uint64_t sub_2188FCD00()
{

  return swift_deallocObject();
}

uint64_t sub_2188FCD40(uint64_t a1, uint64_t a2)
{
  sub_2189AD5C8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2188FCDAC(uint64_t a1, uint64_t a2)
{
  sub_2189AD5C8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2188FCE1C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188FCE5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2186E60B0();
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

uint64_t sub_2188FCF4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2186E60B0();
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

uint64_t sub_2188FD068()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188FD0A0()
{

  return swift_deallocObject();
}

uint64_t sub_2188FD0D8()
{

  return swift_deallocObject();
}

uint64_t sub_2188FD128()
{

  return swift_deallocObject();
}

uint64_t sub_2188FD1B8()
{
  v1 = (type metadata accessor for TodayExpandContext() - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);

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

uint64_t sub_2188FD2E8()
{

  return swift_deallocObject();
}

uint64_t sub_2188FD320()
{

  return swift_deallocObject();
}

uint64_t sub_2188FD358()
{
  v1 = (type metadata accessor for TodayExpandContext() - 8);
  v2 = (*(*v1 + 80) + 48) & ~*(*v1 + 80);

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

uint64_t sub_2188FD488()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  sub_21896FDCC(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

  return swift_deallocObject();
}

uint64_t sub_2188FD4F0()
{

  return swift_deallocObject();
}

uint64_t sub_2188FD528()
{
  sub_218CD34B0();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_2188FD5C8()
{
  sub_218CD34B0();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = (type metadata accessor for TodayExpandContext() - 8);
  v7 = (v4 + v5 + *(*v6 + 80)) & ~*(*v6 + 80);
  (*(v3 + 8))(v0 + v4, v2);
  swift_unknownObjectRelease();
  v8 = v6[10];
  v9 = sub_219BE6DF4();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v7 + v8, 1, v9))
  {
    (*(v10 + 8))(v0 + v7 + v8, v9);
  }

  return swift_deallocObject();
}

uint64_t sub_2188FD774()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188FD7AC()
{
  sub_218853400();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for TodayGapLocation(0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = type metadata accessor for TodayExpandContext();
  v10 = (v8 + *(*(v9 - 8) + 80) + 40) & ~*(*(v9 - 8) + 80);
  (*(v3 + 8))(v0 + v4, v2);
  sub_219717384(0, &qword_280E90A00, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D33098]);
  v12 = v11;
  v13 = *(v11 - 8);
  if (!(*(v13 + 48))(v0 + v7, 1, v11))
  {
    (*(v13 + 8))(v0 + v7, v12);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + v8);
  swift_unknownObjectRelease();
  v14 = *(v9 + 32);
  v15 = sub_219BE6DF4();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v0 + v10 + v14, 1, v15))
  {
    (*(v16 + 8))(v0 + v10 + v14, v15);
  }

  return swift_deallocObject();
}

uint64_t sub_2188FDA94()
{
  sub_218853400();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for TodayGapLocation(0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  (*(v3 + 8))(v0 + v4, v2);
  sub_219717384(0, &qword_280E90A00, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D33098]);
  v9 = v8;
  v10 = *(v8 - 8);
  if (!(*(v10 + 48))(v0 + v7, 1, v8))
  {
    (*(v10 + 8))(v0 + v7, v9);
  }

  return swift_deallocObject();
}

uint64_t sub_2188FDC70()
{
  v1 = sub_219BE5384();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_2188FDD0C()
{
  v1 = type metadata accessor for TodayExpandResult();
  v2 = (*(*(v1 - 8) + 80) + 56) & ~*(*(v1 - 8) + 80);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v3 = v0 + v2;

  v4 = *(v1 + 28);
  v5 = sub_219BEC514();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  v7 = *(v1 + 32);
  v8 = sub_219BE6DF4();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v3 + v7, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_2188FDEEC()
{
  v1 = type metadata accessor for TodayExpandResult();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 28);
  v4 = sub_219BEC514();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  v6 = *(v1 + 32);
  v7 = sub_219BE6DF4();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v2 + v6, 1, v7))
  {
    (*(v8 + 8))(v2 + v6, v7);
  }

  return swift_deallocObject();
}

uint64_t sub_2188FE0C0()
{
  v1 = sub_219BE9F74();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (((((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  if (*(v0 + v4))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2188FE188()
{

  return swift_deallocObject();
}

uint64_t sub_2188FE1C0()
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

uint64_t sub_2188FE33C()
{

  return swift_deallocObject();
}

uint64_t sub_2188FE384()
{

  return swift_deallocObject();
}

uint64_t sub_2188FE3BC()
{
  sub_21896FD44(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_2188FE440()
{

  return swift_deallocObject();
}

uint64_t sub_2188FE480(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_2188FE52C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_2188FE5D0()
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

uint64_t sub_2188FE73C(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_2188FE7F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_2188FE8AC()
{

  return swift_deallocObject();
}

uint64_t sub_2188FE8EC()
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

uint64_t sub_2188FEA88()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188FEAC0(uint64_t a1, uint64_t a2, uint64_t a3)
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

void sub_2188FEB7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_2188FEC34()
{

  return swift_deallocObject();
}

uint64_t sub_2188FEC74()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2188FECB4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188FECEC()
{

  return swift_deallocObject();
}

uint64_t sub_2188FED24()
{

  return swift_deallocObject();
}

uint64_t sub_2188FED64(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_219BEDC04();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_2188FEE10(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_219BEDC04();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2188FEEB8()
{

  return swift_deallocObject();
}

uint64_t sub_2188FEEF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_219BDCAF4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_2188FEFBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_219BDCAF4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2188FF07C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_21972CF04();
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
      v13 = type metadata accessor for SportsStandingsTagFeedGroupKnobs();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_2188FF1A0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_21972CF04();
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
      v13 = type metadata accessor for SportsStandingsTagFeedGroupKnobs();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_2188FF2C8()
{
  v1 = (type metadata accessor for SportsStandingsTagFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  sub_21972CF04();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v2 + v1[8];
  sub_2189AD5C8();
  (*(*(v6 - 8) + 8))(v5, v6);
  type metadata accessor for SportsStandingsTagFeedGroupKnobs();

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[9]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[10]);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2188FF44C()
{

  return swift_deallocObject();
}

uint64_t sub_2188FF484()
{

  return swift_deallocObject();
}

uint64_t sub_2188FF4C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2188FF530(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2188FF5C4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188FF5FC()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188FF634()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2188FF684()
{
  swift_unownedRelease();

  return swift_deallocObject();
}

uint64_t sub_2188FF6BC()
{

  return swift_deallocObject();
}

uint64_t sub_2188FF6F8(uint64_t a1, uint64_t a2)
{
  sub_2189AD5C8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2188FF764(uint64_t a1, uint64_t a2)
{
  sub_2189AD5C8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2188FF7D4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_2188FF80C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2188FF844()
{

  return swift_deallocObject();
}

uint64_t sub_2188FF884()
{

  return swift_deallocObject();
}

uint64_t sub_2188FF8BC()
{

  return swift_deallocObject();
}

uint64_t sub_2188FF8F4()
{
  v1 = sub_219BE4D24();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2188FF9A0()
{
  v1 = sub_219BE4D24();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2188FFA84()
{
  v1 = sub_219BE4D24();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2188FFB20()
{

  return swift_deallocObject();
}

uint64_t sub_2188FFB90()
{

  sub_218932F9C(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_2188FFBE8()
{
  sub_218932F9C(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_2188FFC78()
{

  return swift_deallocObject();
}

uint64_t sub_2188FFCB0()
{

  return swift_deallocObject();
}

uint64_t sub_2188FFCF0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188FFD28()
{

  return swift_deallocObject();
}

uint64_t sub_2188FFD60()
{

  return swift_deallocObject();
}

uint64_t sub_2188FFDA0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188FFDD8()
{
  v1 = sub_219BDEE04();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  sub_218A57FB4(*(v0 + v4), *(v0 + v4 + 8));

  return swift_deallocObject();
}

uint64_t sub_2188FFEB8()
{

  return swift_deallocObject();
}

uint64_t sub_2188FFEF0()
{
  v1 = sub_219BDEE04();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_2188FFF90()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188FFFC8()
{

  return swift_deallocObject();
}

uint64_t sub_218900000()
{

  return swift_deallocObject();
}

uint64_t sub_218900038()
{
  v1 = *(type metadata accessor for SportsDetailModel() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    v4 = sub_219BF34F4();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
    type metadata accessor for SportsModel();
  }

  return swift_deallocObject();
}

uint64_t sub_21890018C()
{

  return swift_deallocObject();
}

uint64_t sub_2189001C4()
{

  return swift_deallocObject();
}

uint64_t sub_218900210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2186E3594();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for FeaturedArticleMagazineFeedGroupKnobs();
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

uint64_t sub_218900320(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2186E3594();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for FeaturedArticleMagazineFeedGroupKnobs();
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

uint64_t sub_218900430()
{
  v1 = (type metadata accessor for FeaturedArticleMagazineFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_2186E3594();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];
  sub_2186E3B14();
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = type metadata accessor for FeaturedArticleMagazineFeedGroupKnobs();

  v7 = *(v6 + 44);
  sub_2186F9254(0, &qword_280E91830, MEMORY[0x277D32318]);
  (*(*(v8 - 8) + 8))(v4 + v7, v8);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);

  return swift_deallocObject();
}

uint64_t sub_218900604()
{

  return swift_deallocObject();
}

uint64_t sub_218900648()
{

  return swift_deallocObject();
}

uint64_t sub_2189006A4()
{
  v1 = (type metadata accessor for SportsSyncSetting() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v0 + v1[8];
  v4 = sub_219BDBD34();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3 + v2, 1, v4))
  {
    (*(v5 + 8))(v3 + v2, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_2189007D0()
{

  return swift_deallocObject();
}

uint64_t sub_218900810()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_218900858()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_218900890()
{

  return swift_deallocObject();
}

uint64_t sub_218900904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21915A40C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for RecommendedIssuesMagazineFeedGroupKnobs();
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

uint64_t sub_218900A10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_21915A40C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for RecommendedIssuesMagazineFeedGroupKnobs();
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

uint64_t sub_218900B1C()
{
  v1 = (type metadata accessor for RecommendedIssuesMagazineFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_21915A40C();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v1[7];
  v5 = v4 + *(type metadata accessor for RecommendedIssuesMagazineFeedGroupKnobs() + 52);
  sub_21975EA48(0, &qword_280E91830, type metadata accessor for MagazineFeedServiceConfig, sub_2187EF390, MEMORY[0x277D32318]);
  (*(*(v6 - 8) + 8))(v2 + v5, v6);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[11]);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[13]);

  return swift_deallocObject();
}

uint64_t sub_218900CF8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_219BE5534();
  *a1 = result;
  return result;
}

uint64_t sub_218900D24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_219BE5534();
  *a1 = result;
  return result;
}

uint64_t sub_218900D50()
{

  return swift_deallocObject();
}

uint64_t sub_218900D88()
{

  return swift_deallocObject();
}

uint64_t sub_218900DCC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_218900E14()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_218900E68()
{

  return swift_deallocObject();
}

uint64_t sub_218900EA8()
{

  return swift_deallocObject();
}

uint64_t sub_218900F24()
{
  sub_21874E974(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = sub_219BDBD34();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_218901068()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2189010A8()
{

  return swift_deallocObject();
}

uint64_t sub_218901114(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 123)
  {
    v4 = ((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7));
    v5 = v4 ^ 0x7F;
    v6 = 128 - v4;
    if (v5 >= 0x7B)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    sub_218C42540();
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

unint64_t *sub_2189011D4(unint64_t *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 123)
  {
    v6 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
    *result = (v6 | (v6 << 57)) & 0xF000000000000007;
  }

  else
  {
    sub_218C42540();
    v9 = v8;
    v10 = *(*(v8 - 8) + 56);
    v11 = v5 + *(a4 + 20);

    return v10(v11, a2, a2, v9);
  }

  return result;
}

uint64_t sub_218901284()
{
  v1 = *(v0 + 32);
  if (v1 != 255)
  {
    sub_21896755C(*(v0 + 16), *(v0 + 24), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_2189012C8()
{
  v1 = sub_219BE8F74();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_218901350()
{
  sub_219779C80(0, &qword_27CC1ED70, MEMORY[0x277D6DA48]);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_218901408(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_219BF0BD4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2189014B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_219BF0BD4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_218901558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *(a1 + 8);
    if (v4 >= 3)
    {
      return v4 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_2186DCF58();
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2189015FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *(result + 8) = a2 + 2;
  }

  else
  {
    sub_2186DCF58();
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_21890169C()
{
  v1 = *(type metadata accessor for SearchFeedGapLocation(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = type metadata accessor for SearchExpandRequest();
  v5 = *(*(v4 - 8) + 80);
  v6 = v0 + v2;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_218ABE008();
    (*(*(v7 - 8) + 8))(v6, v7);
  }

  else
  {

    v8 = type metadata accessor for SearchResults();
    v9 = *(v8 + 24);
    v10 = sub_219BDF034();
    (*(*(v10 - 8) + 8))(v6 + v9, v10);

    v11 = *(v8 + 32);
    v12 = sub_219BE04F4();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v6 + v11, 1, v12))
    {
      (*(v13 + 8))(v6 + v11, v12);
    }
  }

  v14 = v0 + ((v3 + v5 + 8) & ~v5) + *(v4 + 20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_218ABE008();
    (*(*(v15 - 8) + 8))(v14, v15);
  }

  else
  {

    v16 = type metadata accessor for SearchResults();
    v17 = *(v16 + 24);
    v18 = sub_219BDF034();
    (*(*(v18 - 8) + 8))(v14 + v17, v18);

    v19 = *(v16 + 32);
    v20 = sub_219BE04F4();
    v21 = *(v20 - 8);
    if (!(*(v21 + 48))(v14 + v19, 1, v20))
    {
      (*(v21 + 8))(v14 + v19, v20);
    }
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_218901A64()
{
  v1 = *(type metadata accessor for SearchFeedGapLocation(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + v2;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_218ABE008();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {

    v5 = type metadata accessor for SearchResults();
    v6 = *(v5 + 24);
    v7 = sub_219BDF034();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);

    v8 = *(v5 + 32);
    v9 = sub_219BE04F4();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v3 + v8, 1, v9))
    {
      (*(v10 + 8))(v3 + v8, v9);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_218901C44()
{

  return swift_deallocObject();
}

uint64_t sub_218901C84()
{
  v1 = type metadata accessor for SearchResults();
  v20 = *(*(v1 - 8) + 80);
  v2 = (v20 + 16) & ~v20;
  v3 = *(*(v1 - 8) + 64);
  v4 = type metadata accessor for SearchExpandRequest();
  v18 = *(*(v4 - 8) + 64);
  v19 = *(*(v4 - 8) + 80);
  v5 = (v2 + v3 + v19) & ~v19;
  v6 = v0 + v2;

  v7 = *(v1 + 24);
  v8 = sub_219BDF034();
  v17 = *(*(v8 - 8) + 8);
  v17(v6 + v7, v8);

  v9 = *(v1 + 32);
  v10 = sub_219BE04F4();
  v11 = *(v10 - 8);
  v16 = *(v11 + 48);
  if (!v16(v6 + v9, 1, v10))
  {
    (*(v11 + 8))(v6 + v9, v10);
  }

  v12 = v0 + v5 + *(v4 + 20);
  type metadata accessor for SearchFeedGapLocation(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_218ABE008();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  else
  {

    v17(v12 + *(v1 + 24), v8);

    v14 = *(v1 + 32);
    if (!v16(v12 + v14, 1, v10))
    {
      (*(v11 + 8))(v12 + v14, v10);
    }
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_218901FA0()
{

  return swift_deallocObject();
}

uint64_t sub_218901FE0()
{

  return swift_deallocObject();
}

uint64_t sub_218902018()
{
  v1 = sub_219BEC2A4();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_2189020A0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC7NewsUI240PuzzleEmbedOpenLeaderboardMessageHandler_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_2189020FC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC7NewsUI240PuzzleEmbedOpenLeaderboardMessageHandler_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_218902160()
{
  v1 = (type metadata accessor for FeedPerformanceCommandContext() - 8);
  v2 = (*(*v1 + 80) + 48) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = sub_219BDB184();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = v1[7];
  sub_21880B928();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  v6 = (v0 + v2 + v1[8]);
  v7 = type metadata accessor for TodayFeedGroup();
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v16 = sub_219BED8D4();
        (*(*(v16 - 8) + 8))(v6, v16);
        v17 = type metadata accessor for CuratedTodayFeedGroup();

        v18 = *(v17 + 28);
LABEL_13:
        v19 = sub_219BEF8A4();
        goto LABEL_21;
      case 1u:
        v20 = sub_219BED8D4();
        (*(*(v20 - 8) + 8))(v6, v20);
        type metadata accessor for NewspaperTodayFeedGroup();
        swift_unknownObjectRelease();

        goto LABEL_15;
      case 2u:
        v11 = sub_219BED8D4();
        (*(*(v11 - 8) + 8))(v6, v11);
        v12 = type metadata accessor for LocalNewsTodayFeedGroup();
        swift_unknownObjectRelease();

        v13 = *(v12 + 28);
        v14 = sub_219BF0D34();
        v15 = *(v14 - 8);
        if (!(*(v15 + 48))(&v6[v13], 1, v14))
        {
          (*(v15 + 8))(&v6[v13], v14);
        }

LABEL_15:

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
LABEL_3:
        v8 = sub_219BED8D4();
        goto LABEL_4;
      case 9u:
        type metadata accessor for MagazineFeedGroup();
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:

            v21 = type metadata accessor for CategoriesMagazineFeedGroup();
            goto LABEL_36;
          case 1u:
            sub_2186E3594();
            (*(*(v38 - 8) + 8))(v6, v38);
            v23 = type metadata accessor for FeaturedArticleMagazineFeedGroup();
            goto LABEL_20;
          case 2u:
          case 0xAu:
          case 0xBu:
            goto LABEL_3;
          case 3u:
            sub_2186EC3A4();
            (*(*(v53 - 8) + 8))(v6, v53);
            v23 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup();
            goto LABEL_20;
          case 4u:

            v21 = type metadata accessor for InlineCategoriesMagazineFeedGroup();
LABEL_36:
            v18 = *(v21 + 40);
            v19 = sub_219BEF554();
            goto LABEL_21;
          case 5u:

            v39 = type metadata accessor for MyMagazinesMagazineFeedGroup();
            v40 = v39[10];
            v41 = sub_219BEF554();
            v42 = *(*(v41 - 8) + 8);
            v42(&v6[v40], v41);
            v42(&v6[v39[11]], v41);
            v43 = &v6[v39[13]];
            sub_2186F92F0(0, &qword_280E919C0, MEMORY[0x277D321A0]);
            (*(*(v44 - 8) + 8))(v43, v44);
            v45 = type metadata accessor for MyMagazinesMagazineFeedGroupKnobs();

            v46 = *(v45 + 24);
            sub_2186F92F0(0, &qword_280E91830, MEMORY[0x277D32318]);
            (*(*(v47 - 8) + 8))(&v43[v46], v47);
            swift_unknownObjectRelease();
            v48 = v39[16];
            v49 = sub_219BEF8A4();
            (*(*(v49 - 8) + 8))(&v6[v48], v49);
            v50 = v39[17];
            v51 = sub_219BEE5D4();
            v52 = *(v51 - 8);
            if (!(*(v52 + 48))(&v6[v50], 1, v51))
            {
              (*(v52 + 8))(&v6[v50], v51);
            }

            goto LABEL_15;
          case 6u:
            sub_2186ECD30();
            (*(*(v62 - 8) + 8))(v6, v62);
            v23 = type metadata accessor for NewIssueMagazineFeedGroup();
            goto LABEL_20;
          case 7u:

            v26 = type metadata accessor for PaywallMagazineFeedGroup();
            v27 = v26[5];
            v28 = sub_219BEF554();
            v29 = *(*(v28 - 8) + 8);
            v29(&v6[v27], v28);
            v29(&v6[v26[6]], v28);
            v30 = &v6[v26[9]];
            type metadata accessor for FeedPaywallModel(0);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v31 = type metadata accessor for FeedVideoPaywallModel(0);
              v32 = v31[5];
              v33 = sub_219BDB954();
              v34 = *(v33 - 8);
              if (!(*(v34 + 48))(v30 + v32, 1, v33))
              {
                (*(v34 + 8))(v30 + v32, v33);
              }

              v35 = v31[22];
              v36 = sub_219BE4584();
              (*(*(v36 - 8) + 8))(v30 + v35, v36);

              v37 = v31[24];
            }

            else
            {

              v63 = type metadata accessor for FeedRegularPaywallModel(0);
              v64 = *(v63 + 64);
              v65 = sub_219BE4584();
              (*(*(v65 - 8) + 8))(v30 + v64, v65);

              v37 = *(v63 + 72);
            }

            v66 = sub_219BE4314();
            v67 = *(v66 - 8);
            if (!(*(v67 + 48))(v30 + v37, 1, v66))
            {
              (*(v67 + 8))(v30 + v37, v66);
            }

            v98 = type metadata accessor for FeedPaywallConfig();
            v68 = (v30 + v98[5]);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v69 = type metadata accessor for FeedVideoPaywallModel(0);
              v70 = v69[5];
              v71 = sub_219BDB954();
              v72 = *(v71 - 8);
              if (!(*(v72 + 48))(v68 + v70, 1, v71))
              {
                (*(v72 + 8))(v68 + v70, v71);
              }

              v73 = v69[22];
              v74 = sub_219BE4584();
              (*(*(v74 - 8) + 8))(v68 + v73, v74);

              v75 = v69[24];
              v76 = sub_219BE4314();
              v77 = *(v76 - 8);
              if (!(*(v77 + 48))(v68 + v75, 1, v76))
              {
                (*(v77 + 8))(v68 + v75, v76);
              }
            }

            else
            {

              v78 = type metadata accessor for FeedRegularPaywallModel(0);
              v79 = *(v78 + 64);
              v80 = sub_219BE4584();
              (*(*(v80 - 8) + 8))(v68 + v79, v80);

              v81 = *(v78 + 72);
              v82 = sub_219BE4314();
              v83 = *(v82 - 8);
              if (!(*(v83 + 48))(v68 + v81, 1, v82))
              {
                (*(v83 + 8))(v68 + v81, v82);
              }
            }

            v84 = (v30 + v98[6]);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v85 = type metadata accessor for FeedVideoPaywallModel(0);
              v86 = v85[5];
              v87 = sub_219BDB954();
              v88 = *(v87 - 8);
              if (!(*(v88 + 48))(v84 + v86, 1, v87))
              {
                (*(v88 + 8))(v84 + v86, v87);
              }

              v89 = v85[22];
              v90 = sub_219BE4584();
              (*(*(v90 - 8) + 8))(v84 + v89, v90);

              v91 = v85[24];
            }

            else
            {

              v92 = type metadata accessor for FeedRegularPaywallModel(0);
              v93 = *(v92 + 64);
              v94 = sub_219BE4584();
              (*(*(v94 - 8) + 8))(v84 + v93, v94);

              v91 = *(v92 + 72);
            }

            v95 = sub_219BE4314();
            v96 = *(v95 - 8);
            if (!(*(v96 + 48))(v84 + v91, 1, v95))
            {
              (*(v96 + 8))(v84 + v91, v95);
            }

            v6 = v30 + v98[7];
            type metadata accessor for FeedPaywallType(0);
            if (swift_getEnumCaseMultiPayload())
            {
              goto LABEL_5;
            }

            sub_2186F6684();
            v18 = *(v97 + 48);
            v19 = sub_219BE4034();
            break;
          case 8u:

            v58 = type metadata accessor for RecommendedIssuesMagazineFeedGroup();
            v59 = *(v58 + 44);
            v60 = sub_219BEF554();
            v61 = *(*(v60 - 8) + 8);
            v61(&v6[v59], v60);
            v61(&v6[*(v58 + 48)], v60);
            goto LABEL_5;
          case 9u:
            sub_2186E60B0();
            (*(*(v24 - 8) + 8))(v6, v24);
            v23 = type metadata accessor for TopicMagazineFeedGroup();
            goto LABEL_20;
          case 0xCu:
            v25 = sub_219BED8D4();
            (*(*(v25 - 8) + 8))(v6, v25);
            type metadata accessor for NewspaperMagazineFeedGroup();
            swift_unknownObjectRelease();
            goto LABEL_15;
          case 0xDu:
            sub_2186ECF58();
            (*(*(v54 - 8) + 8))(v6, v54);
            v55 = type metadata accessor for CuratedMagazineFeedGroup();
            v56 = *(v55 + 20);
            v57 = sub_219BED8D4();
            (*(*(v57 - 8) + 8))(&v6[v56], v57);
            v18 = *(v55 + 24);
            goto LABEL_13;
          default:
            goto LABEL_5;
        }

        goto LABEL_21;
      case 0xCu:
        v8 = sub_219BED544();
        goto LABEL_4;
      case 0x10u:
        sub_2186E0CD8();
        (*(*(v22 - 8) + 8))(v6, v22);
        v23 = type metadata accessor for SharedWithYouTodayFeedGroup();
LABEL_20:
        v18 = *(v23 + 20);
        v19 = sub_219BED8D4();
LABEL_21:
        (*(*(v19 - 8) + 8))(&v6[v18], v19);
        break;
      case 0x11u:
        sub_2186F687C();
LABEL_4:
        (*(*(v8 - 8) + 8))(v6, v8);
        break;
      case 0x17u:
        v10 = sub_219BED8D4();
        (*(*(v10 - 8) + 8))(v6, v10);
        type metadata accessor for ChannelPickerTodayFeedGroup();

        break;
      default:
        break;
    }
  }

LABEL_5:

  return swift_deallocObject();
}

uint64_t sub_21890352C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_218903564(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for AudioHistoryFeedContentConfig();
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
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_218903688(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for AudioHistoryFeedContentConfig();
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
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_2189037AC()
{
  v1 = sub_219BF45B4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_219BF45F4();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_21890390C()
{
  v1 = sub_219BF3A44();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2189039E0()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_218903A28()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_218903A60()
{

  return swift_deallocObject();
}

uint64_t sub_218903A9C()
{

  return swift_deallocObject();
}

uint64_t sub_218903BD4()
{

  return swift_deallocObject();
}

uint64_t sub_218903C10(uint64_t a1, uint64_t a2, int *a3)
{
  sub_2189AE994(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  sub_2189AE9B4(0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  sub_219791D24(0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[12];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[13]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

void sub_218903D64(uint64_t a1, uint64_t a2, int a3, int *a4)
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
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      sub_219791D24(0);
      if (*(*(v16 - 8) + 84) != a3)
      {
        *(a1 + a4[13]) = (a2 - 1);
        return;
      }

      v10 = v16;
      v14 = *(v16 - 8);
      v15 = a4[12];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_218903EB4()
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

uint64_t sub_218903F1C()
{
  sub_218F05538(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
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

uint64_t sub_2189040B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SearchResults();
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

uint64_t sub_218904178(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SearchResults();
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

uint64_t sub_218904234()
{

  return swift_deallocObject();
}

uint64_t sub_21890426C()
{

  return swift_deallocObject();
}

uint64_t sub_2189042A4()
{
  v1 = sub_219BDD434();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_21890437C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = sub_219BEE6F4();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21890446C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    v12 = sub_219BEE6F4();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_218904594()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2189045CC()
{

  return swift_deallocObject();
}

uint64_t sub_218904604()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_218904644()
{

  return swift_deallocObject();
}

uint64_t sub_218904694()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2189046CC()
{
  if (v0[4] != 1)
  {
  }

  if (v0[10] != 1)
  {
  }

  if (v0[16] != 1)
  {
  }

  if (v0[22] != 1)
  {
  }

  if (v0[28] != 1)
  {
  }

  if (v0[34] != 1)
  {
  }

  if (v0[40] != 1)
  {
  }

  if (v0[46] != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21890484C()
{

  return swift_deallocObject();
}

uint64_t sub_218904884()
{

  return swift_deallocObject();
}

uint64_t sub_2189048BC()
{
  if (*(v0 + 40) != 1)
  {
  }

  if (*(v0 + 88) != 1)
  {
  }

  if (*(v0 + 136) != 1)
  {
  }

  if (*(v0 + 184) != 1)
  {
  }

  if (*(v0 + 232) != 1)
  {
  }

  if (*(v0 + 280) != 1)
  {
  }

  if (*(v0 + 328) != 1)
  {
  }

  if (*(v0 + 376) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_218904A4C()
{

  return swift_deallocObject();
}

uint64_t sub_218904AA0()
{
  v1 = (type metadata accessor for AudioFeedServiceContext() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = v1[9];
  v5 = sub_219BEE754();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_218904BBC()
{

  return swift_deallocObject();
}

uint64_t sub_218904BF4(uint64_t a1, uint64_t a2)
{
  sub_2186E3B14();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_218904C60(uint64_t a1, uint64_t a2)
{
  sub_2186E3B14();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_218905348()
{
  sub_21896FBB0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  v1 = *(v0 + 96);
  if (v1 != 255)
  {
    sub_21896FC30(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_2189053A0()
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

uint64_t sub_21890550C(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BDBD34();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_218905578(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BDBD34();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2189055E8()
{

  if (*(v0 + 32) >= 2uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_218905630(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioPlaylistFeedGroupKnobs();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21890569C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioPlaylistFeedGroupKnobs();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21890570C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_219BF1BC4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2189057B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_219BF1BC4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21890585C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2197C9A88(0, &qword_280E92160, type metadata accessor for IntroToSportsTodayFeedGroupConfigData, sub_2197C7AA0, sub_2197C7AD4);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for IntroToSportsTodayFeedGroupKnobs();
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

uint64_t sub_2189059B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2197C9A88(0, &qword_280E92160, type metadata accessor for IntroToSportsTodayFeedGroupConfigData, sub_2197C7AA0, sub_2197C7AD4);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for IntroToSportsTodayFeedGroupKnobs();
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

uint64_t sub_218905B00()
{
  v1 = (type metadata accessor for IntroToSportsTodayFeedGroupEmitter() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = sub_219BF1934();
  v4 = *(v16 - 8);
  v5 = (v3 + *(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = v0 + v2;
  sub_2197C9A88(0, &qword_280E92160, type metadata accessor for IntroToSportsTodayFeedGroupConfigData, sub_2197C7AA0, sub_2197C7AD4);
  (*(*(v7 - 8) + 8))(v0 + v2, v7);
  v8 = v0 + v2 + v1[7];
  sub_2189AE994(0);
  (*(*(v9 - 8) + 8))(v8, v9);
  v10 = type metadata accessor for IntroToSportsTodayFeedGroupKnobs();
  v11 = *(v10 + 20);
  sub_2197C9C7C(0, &qword_280E91860, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D32318]);
  (*(*(v12 - 8) + 8))(v8 + v11, v12);

  v13 = *(v10 + 112);
  v14 = sub_219BEF244();
  (*(*(v14 - 8) + 8))(v8 + v13, v14);

  __swift_destroy_boxed_opaque_existential_1(v6 + v1[8]);

  __swift_destroy_boxed_opaque_existential_1(v6 + v1[12]);

  swift_unknownObjectRelease();

  (*(v4 + 8))(v0 + v5, v16);

  return swift_deallocObject();
}

uint64_t sub_218905FBC()
{
  v1 = (type metadata accessor for IntroToSportsTodayFeedGroupEmitter() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v16 = sub_219BF1934();
  v4 = *(v16 - 8);
  v5 = (v3 + *(v4 + 80) + 8) & ~*(v4 + 80);
  v6 = v0 + v2;
  sub_2197C9A88(0, &qword_280E92160, type metadata accessor for IntroToSportsTodayFeedGroupConfigData, sub_2197C7AA0, sub_2197C7AD4);
  (*(*(v7 - 8) + 8))(v0 + v2, v7);
  v8 = v0 + v2 + v1[7];
  sub_2189AE994(0);
  (*(*(v9 - 8) + 8))(v8, v9);
  v10 = type metadata accessor for IntroToSportsTodayFeedGroupKnobs();
  v11 = *(v10 + 20);
  sub_2197C9C7C(0, &qword_280E91860, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D32318]);
  (*(*(v12 - 8) + 8))(v8 + v11, v12);

  v13 = *(v10 + 112);
  v14 = sub_219BEF244();
  (*(*(v14 - 8) + 8))(v8 + v13, v14);

  __swift_destroy_boxed_opaque_existential_1(v6 + v1[8]);

  __swift_destroy_boxed_opaque_existential_1(v6 + v1[12]);

  swift_unknownObjectRelease();

  (*(v4 + 8))(v0 + v5, v16);

  return swift_deallocObject();
}

uint64_t sub_218906478()
{
  v1 = (type metadata accessor for IntroToSportsTodayFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_2197C9A88(0, &qword_280E92160, type metadata accessor for IntroToSportsTodayFeedGroupConfigData, sub_2197C7AA0, sub_2197C7AD4);
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];
  sub_2189AE994(0);
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = type metadata accessor for IntroToSportsTodayFeedGroupKnobs();
  v7 = *(v6 + 20);
  sub_2197C9C7C(0, &qword_280E91860, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D32318]);
  (*(*(v8 - 8) + 8))(v4 + v7, v8);

  v9 = *(v6 + 112);
  v10 = sub_219BEF244();
  (*(*(v10 - 8) + 8))(v4 + v9, v10);

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[12]);

  swift_unknownObjectRelease();

  return swift_deallocObject();
}