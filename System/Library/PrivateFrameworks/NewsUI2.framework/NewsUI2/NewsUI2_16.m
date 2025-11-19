uint64_t sub_21888FB5C()
{
  v22 = sub_219BDEF94();
  v1 = *(v22 - 8);
  v23 = *(v1 + 80);
  v2 = *(v1 + 64);
  v20 = sub_219BDF8A4();
  v3 = *(v20 - 8);
  v17 = (((v23 + 16) & ~v23) + v2 + *(v3 + 80)) & ~*(v3 + 80);
  v4 = *(v3 + 64);
  v18 = sub_219BF0AC4();
  v5 = *(v18 - 8);
  v6 = (v17 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_218B59134(0);
  v9 = *(*(v8 - 8) + 80);
  v10 = (v7 + v9 + 8) & ~v9;
  v19 = *(*(v8 - 8) + 64);
  sub_218B5A30C(0);
  v21 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 80);
  (*(v1 + 8))(v0 + ((v23 + 16) & ~v23), v22);
  (*(v3 + 8))(v0 + v17, v20);
  (*(v5 + 8))(v0 + v6, v18);

  v14 = sub_219BDF4A4();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v0 + v10, 1, v14))
  {
    (*(v15 + 8))(v0 + v10, v14);
  }

  (*(v12 + 8))(v0 + ((v10 + v19 + v13) & ~v13), v21);

  return swift_deallocObject();
}

uint64_t sub_21888FED8()
{
  v1 = sub_219BE0C74();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_21888FF6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BDB954();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21888FFD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BDB954();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_218890048(uint64_t a1, uint64_t a2, uint64_t a3)
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

void sub_218890104(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_2188901BC()
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

uint64_t sub_218890338()
{

  return swift_deallocObject();
}

uint64_t sub_218890370()
{

  return swift_deallocObject();
}

uint64_t sub_2188903B8()
{

  return swift_deallocObject();
}

uint64_t sub_2188903F4()
{
  v1 = type metadata accessor for CuratedShortcut(0);
  v2 = (*(*(v1 - 1) + 80) + 48) & ~*(*(v1 - 1) + 80);

  v3 = v0 + v2;

  v4 = v0 + v2 + v1[5];
  _s5ModelOMa();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        if (EnumCaseMultiPayload != 2)
        {
          goto LABEL_17;
        }

        v6 = _s9IssueDataVMa(0);
        goto LABEL_15;
      }

LABEL_12:

      v6 = _s7TagDataVMa(0);
      goto LABEL_15;
    }

    v6 = _s12HeadlineDataVMa(0);
LABEL_15:
    v8 = *(v6 + 20);
    v9 = sub_219BDB954();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v4 + v8, 1, v9))
    {
      (*(v10 + 8))(v4 + v8, v9);
    }

    goto LABEL_17;
  }

  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload != 3)
    {

      v6 = _s14PuzzleFeedDataVMa(0);
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 5)
  {

    v6 = _s10PuzzleDataVMa(0);
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v7 = sub_219BDB954();
    (*(*(v7 - 8) + 8))(v4, v7);
  }

LABEL_17:

  v11 = v1[8];
  v12 = sub_219BE3184();
  v13 = *(*(v12 - 8) + 8);
  v13(v3 + v11, v12);
  v13(v3 + v1[9], v12);

  return swift_deallocObject();
}

uint64_t sub_2188906AC()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188906E4()
{
  v1 = type metadata accessor for CuratedShortcut(0);
  v2 = (*(*(v1 - 1) + 80) + 72) & ~*(*(v1 - 1) + 80);

  v3 = v0 + v2;

  v4 = v0 + v2 + v1[5];
  _s5ModelOMa();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        if (EnumCaseMultiPayload != 2)
        {
          goto LABEL_17;
        }

        v6 = _s9IssueDataVMa(0);
        goto LABEL_15;
      }

LABEL_12:

      v6 = _s7TagDataVMa(0);
      goto LABEL_15;
    }

    v6 = _s12HeadlineDataVMa(0);
LABEL_15:
    v8 = *(v6 + 20);
    v9 = sub_219BDB954();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v4 + v8, 1, v9))
    {
      (*(v10 + 8))(v4 + v8, v9);
    }

    goto LABEL_17;
  }

  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload != 3)
    {

      v6 = _s14PuzzleFeedDataVMa(0);
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 5)
  {

    v6 = _s10PuzzleDataVMa(0);
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v7 = sub_219BDB954();
    (*(*(v7 - 8) + 8))(v4, v7);
  }

LABEL_17:

  v11 = v1[8];
  v12 = sub_219BE3184();
  v13 = *(*(v12 - 8) + 8);
  v13(v3 + v11, v12);
  v13(v3 + v1[9], v12);

  return swift_deallocObject();
}

uint64_t sub_2188909C4()
{

  return swift_deallocObject();
}

uint64_t sub_218890A08()
{

  return swift_deallocObject();
}

uint64_t sub_218890A48()
{

  return swift_deallocObject();
}

uint64_t sub_218890AA8(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_218890B64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_218890C1C()
{

  return swift_deallocObject();
}

uint64_t sub_218890C54()
{
  sub_2186FF3C0(0, &qword_27CC0E4F0, type metadata accessor for SearchFeedServiceConfig, sub_2186FF508, MEMORY[0x277D31C68]);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_218890D20()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_218890D58()
{
  sub_218954350();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_218890E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2189AE994(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_2189AE9B4(0);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_218890F0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2189AE994(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_2189AE9B4(0);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_218891010(uint64_t *a1, uint64_t a2, uint64_t a3)
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

void *sub_2188910BC(void *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_218891160(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeListRecipeBoxFeedGroupKnobs();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2188911CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeListRecipeBoxFeedGroupKnobs();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21889123C(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_2188912E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_21889138C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188913C4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_219BF3034();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_218891470(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_219BF3034();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_218891514(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_219BF3034();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_2188915C0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_219BF3034();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_218891664()
{
  sub_218B7E0DC(0, &qword_27CC0E780, MEMORY[0x277D6DA48]);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_21889172C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218B7E48C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_219BDC104();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21889181C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_218B7E48C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_219BDC104();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_218891918()
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

uint64_t sub_218891AB4(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_218891B80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_218891C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2186E3B14();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_218891CF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2186E3B14();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }
}

uint64_t sub_218891DAC()
{

  return swift_deallocObject();
}

uint64_t sub_218891DE4()
{

  return swift_deallocObject();
}

uint64_t sub_218891E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2186DF3DC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for LegacyLocalNewsTodayFeedGroupKnobs();
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

uint64_t sub_218891F34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2186DF3DC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for LegacyLocalNewsTodayFeedGroupKnobs();
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

uint64_t sub_218892040()
{
  v1 = (type metadata accessor for LegacyLocalNewsTodayFeedGroupEmitter() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  sub_2186DF3DC();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = v0 + v2 + v1[7];
  sub_2189AE994(0);
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = *(type metadata accessor for LegacyLocalNewsTodayFeedGroupKnobs() + 20);
  sub_218B8B034(0, &qword_280E91860, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D32318]);
  (*(*(v7 - 8) + 8))(v4 + v6, v7);

  __swift_destroy_boxed_opaque_existential_1(v0 + v2 + v1[8]);
  __swift_destroy_boxed_opaque_existential_1(v0 + v2 + v1[9]);
  __swift_destroy_boxed_opaque_existential_1(v0 + v2 + v1[10]);

  return swift_deallocObject();
}

uint64_t sub_218892240()
{
  v1 = (type metadata accessor for LegacyLocalNewsTodayFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_2186DF3DC();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];
  sub_2189AE994(0);
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = *(type metadata accessor for LegacyLocalNewsTodayFeedGroupKnobs() + 20);
  sub_218B8B034(0, &qword_280E91860, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D32318]);
  (*(*(v7 - 8) + 8))(v4 + v6, v7);

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[9]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[10]);

  return swift_deallocObject();
}

uint64_t sub_218892460()
{

  return swift_deallocObject();
}

uint64_t sub_218892498()
{
  v1 = (type metadata accessor for LegacyLocalNewsTodayFeedGroupEmitter() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);

  v3 = v0 + v2;
  sub_2186DF3DC();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = v3 + v1[7];
  sub_2189AE994(0);
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = *(type metadata accessor for LegacyLocalNewsTodayFeedGroupKnobs() + 20);
  sub_218B8B034(0, &qword_280E91860, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D32318]);
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  __swift_destroy_boxed_opaque_existential_1(v3 + v1[8]);
  __swift_destroy_boxed_opaque_existential_1(v3 + v1[9]);
  __swift_destroy_boxed_opaque_existential_1(v3 + v1[10]);

  return swift_deallocObject();
}

uint64_t sub_2188926BC()
{
  v1 = (type metadata accessor for TodayFeedServiceContext() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = (type metadata accessor for LegacyLocalNewsTodayFeedGroupKnobs() - 8);
  v5 = (v2 + v3 + *(*v4 + 80)) & ~*(*v4 + 80);
  v6 = *(*v4 + 64);
  v7 = sub_219BF0BD4();
  v8 = *(v7 - 8);
  v9 = (v5 + v6 + *(v8 + 80)) & ~*(v8 + 80);

  v10 = v0 + v2;

  v11 = v1[11];
  v12 = sub_219BEE754();
  (*(*(v12 - 8) + 8))(v10 + v11, v12);
  v13 = v0 + v5;
  sub_2189AE994(0);
  (*(*(v14 - 8) + 8))(v0 + v5, v14);
  v15 = v4[7];
  sub_218B8B034(0, &qword_280E91860, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D32318]);
  (*(*(v16 - 8) + 8))(v13 + v15, v16);

  (*(v8 + 8))(v0 + v9, v7);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21889298C()
{
  sub_2186DF3DC();
  v15 = v1;
  v2 = *(v1 - 8);
  v14 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v12 = (((*(v2 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v3 = (type metadata accessor for LegacyLocalNewsTodayFeedGroupKnobs() - 8);
  v13 = (v12 + *(*v3 + 80) + 16) & ~*(*v3 + 80);
  v17 = (((*(*v3 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = sub_219BF2AB4();
  v4 = *(v19 - 8);
  v5 = (*(v4 + 80) + v17 + 8) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v18 = sub_219BF0BD4();
  v7 = *(v18 - 8);
  v16 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  (*(v2 + 8))(v0 + v14, v15);

  sub_2189AE994(0);
  (*(*(v8 - 8) + 8))(v0 + v13, v8);
  v9 = v3[7];
  sub_218B8B034(0, &qword_280E91860, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D32318]);
  (*(*(v10 - 8) + 8))(v0 + v13 + v9, v10);

  swift_unknownObjectRelease();
  (*(v4 + 8))(v0 + v5, v19);
  (*(v7 + 8))(v0 + v16, v18);

  return swift_deallocObject();
}

uint64_t sub_218892D0C()
{

  return swift_deallocObject();
}

uint64_t sub_218892D48()
{

  return swift_deallocObject();
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed37PuzzleImageShareAttributeProviderType_pSg_0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_218892DB8()
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

uint64_t sub_218892F54(uint64_t a1, uint64_t a2, uint64_t a3)
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

void sub_218893060(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_218893168()
{

  return swift_deallocObject();
}

uint64_t sub_2188931A0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2188931E8()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_218893244()
{

  return swift_deallocObject();
}

uint64_t sub_21889327C()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 48);
  __swift_destroy_boxed_opaque_existential_1(v0 + 88);

  return swift_deallocObject();
}

uint64_t sub_2188932DC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_218893314()
{
  v1 = sub_219BDBD34();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2188933FC()
{

  return swift_deallocObject();
}

uint64_t sub_218893434()
{
  v1 = sub_219BDBD34();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_2188934BC()
{

  return swift_deallocObject();
}

uint64_t sub_2188934FC()
{

  return swift_deallocObject();
}

uint64_t sub_218893544()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_218893584()
{

  return swift_deallocObject();
}

uint64_t sub_2188935C4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_218893604()
{

  return swift_deallocObject();
}

uint64_t sub_21889363C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_219BDB184();
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

uint64_t sub_2188936F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_219BDB184();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2188937B0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    MetricsVMa = _s20FeedItemFetchMetricsVMa(0);
    v9 = *(*(MetricsVMa - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, MetricsVMa);
  }
}

void *sub_21889385C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    MetricsVMa = _s20FeedItemFetchMetricsVMa(0);
    v8 = *(*(MetricsVMa - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, MetricsVMa);
  }

  return result;
}

uint64_t sub_218893910()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_218893948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_219BE2C14();
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

uint64_t sub_218893A04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_219BE2C14();
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

uint64_t sub_218893ABC()
{
  v1 = (type metadata accessor for FoodHubSetupStartupTask() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = sub_219BE2C14();
  (*(*(v3 - 8) + 8))(v2, v3);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_218893BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AudioPlaylistFeedConfig();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for AudioPlaylistFeedKnobsConfig();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_218893CC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for AudioPlaylistFeedConfig();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for AudioPlaylistFeedKnobsConfig();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_218893DF8()
{
  sub_218BB6E80();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_218893E80(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for AudioFeedServiceContext();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for AudioFeedContentConfig();
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
    v15 = sub_219BEEA84();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[9];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_218893FF4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for AudioFeedServiceContext();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for AudioFeedContentConfig();
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
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    v15 = sub_219BEEA84();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[9];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_218894178()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188941B0()
{
  v1 = sub_219BF0DE4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_219BE8B34();
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_21889431C()
{

  return swift_deallocObject();
}

uint64_t sub_218894354()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21889438C()
{
  v1 = sub_219BF0DE4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_218894480()
{
  v13 = sub_219BE16D4();
  v1 = *(v13 - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v12 = sub_219BDEFE4();
  v4 = *(v12 - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  sub_218BD30E4();
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = (v5 + v6 + *(v9 + 80)) & ~*(v9 + 80);
  (*(v1 + 8))(v0 + v2, v13);
  (*(v4 + 8))(v0 + v5, v12);
  (*(v9 + 8))(v0 + v10, v8);

  return swift_deallocObject();
}

uint64_t sub_218894654()
{
  sub_218BD3734();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
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

uint64_t sub_218894810()
{
  sub_218BD3734();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2188948D4()
{
  sub_218BD3734();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_2186EAB88();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = (((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + *(v8 + 80) + 8) & ~*(v8 + 80);
  (*(v3 + 8))(v0 + v4, v2);
  swift_unknownObjectRelease();

  (*(v8 + 8))(v0 + v9, v7);

  return swift_deallocObject();
}

uint64_t sub_218894A68()
{
  sub_218BD3284();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  sub_218BD3378();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = (v4 + v5 + *(v8 + 80)) & ~*(v8 + 80);
  (*(v3 + 8))(v0 + v4, v2);
  (*(v8 + 8))(v0 + v9, v7);

  return swift_deallocObject();
}

uint64_t sub_218894BC4()
{

  return swift_deallocObject();
}

uint64_t sub_218894BFC()
{
  v1 = sub_219BE16D4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  sub_218BD799C();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = (v3 + v4 + *(v7 + 80)) & ~*(v7 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v7 + 8))(v0 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_218894D44()
{
  sub_218B58D38(0);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = sub_219BF0B74();
  v7 = *(v6 - 8);
  v8 = (v4 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  (*(v3 + 8))(v0 + v4, v2);
  (*(v7 + 8))(v0 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_218894EB0()
{
  sub_218B58D38(0);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = sub_219BF04A4();
  v7 = *(v6 - 8);
  v8 = (v4 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  sub_218B59134(0);
  v11 = *(*(v10 - 8) + 80);
  v12 = (v8 + v9 + v11) & ~v11;
  (*(v3 + 8))(v0 + v4, v2);
  (*(v7 + 8))(v0 + v8, v6);
  v13 = sub_219BDF4A4();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v0 + v12, 1, v13))
  {
    (*(v14 + 8))(v0 + v12, v13);
  }

  return swift_deallocObject();
}

uint64_t sub_2188950F0()
{
  sub_218B58D38(0);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_218B59134(0);
  v7 = (v5 + *(*(v6 - 8) + 80) + 8) & ~*(*(v6 - 8) + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v2);

  v8 = sub_219BDF4A4();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v7, 1, v8))
  {
    (*(v9 + 8))(v0 + v7, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_2188952BC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for ArticlesSearchFeedGroupKnobs();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for ChannelsSearchFeedGroupKnobs();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  v14 = type metadata accessor for TopicsSearchFeedGroupKnobs();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  v15 = type metadata accessor for RecipesSearchFeedGroupKnobs();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  v16 = type metadata accessor for SavedRecipesSearchFeedGroupKnobs();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  v18 = type metadata accessor for SportsSearchFeedGroupKnobs();
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[9];

  return v19(v20, a2, v18);
}

uint64_t sub_2188954D4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for ArticlesSearchFeedGroupKnobs();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for ChannelsSearchFeedGroupKnobs();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = type metadata accessor for TopicsSearchFeedGroupKnobs();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_11;
  }

  v17 = type metadata accessor for RecipesSearchFeedGroupKnobs();
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_11;
  }

  v18 = type metadata accessor for SavedRecipesSearchFeedGroupKnobs();
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  v20 = type metadata accessor for SportsSearchFeedGroupKnobs();
  v21 = *(*(v20 - 8) + 56);
  v22 = a1 + a4[9];

  return v21(v22, a2, a2, v20);
}

uint64_t sub_2188956F8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_2186E548C(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2188957D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_2186E548C(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2188958AC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_2186E548C(0, qword_280EC7F40, type metadata accessor for MagazineCategoryConfig.Channel.Image, MEMORY[0x277D83D88]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_21889598C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_2186E548C(0, qword_280EC7F40, type metadata accessor for MagazineCategoryConfig.Channel.Image, MEMORY[0x277D83D88]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 28);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_218895A60(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BDB954();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_218895ACC(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BDB954();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_218895B3C()
{
  swift_unownedRelease();

  return swift_deallocObject();
}

uint64_t sub_218895BD0()
{
  sub_2189F3FBC(0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_218895C58()
{

  return swift_deallocObject();
}

uint64_t sub_218895C94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioHistoryFeedGroupKnobs();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_218895D00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioHistoryFeedGroupKnobs();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_218895D70(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_218895DDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_218895E4C(uint64_t a1, uint64_t a2, uint64_t a3)
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

void sub_218895F08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_218895FC0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_218895FF8()
{
  if (*(v0 + 24) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_218896038()
{
  v1 = *(v0 + 32);
  if (v1 != 255)
  {
    sub_21896755C(*(v0 + 16), *(v0 + 24), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_21889607C()
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

uint64_t sub_2188960E4()
{
  sub_21896FBB0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  v1 = *(v0 + 96);
  if (v1 != 255)
  {
    sub_21896FC30(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_21889613C()
{

  return swift_deallocObject();
}

uint64_t sub_218896174()
{
  if (*(v0 + 24) >= 4uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2188961B4()
{

  return swift_deallocObject();
}

uint64_t sub_2188961F0()
{

  return swift_deallocObject();
}

uint64_t sub_218896230()
{

  return swift_deallocObject();
}

uint64_t sub_2188962E0()
{

  return swift_deallocObject();
}

uint64_t sub_218896318()
{

  return swift_deallocObject();
}

uint64_t sub_218896374(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_218896440(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 28)) = a2 + 1;
  }

  return result;
}

uint64_t sub_2188964F8()
{

  return swift_deallocObject();
}

uint64_t sub_218896540(uint64_t a1, uint64_t a2, uint64_t a3)
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

void sub_21889664C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_218896754(uint64_t a1, uint64_t a2, uint64_t a3)
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

void sub_218896810(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_2188968C8()
{

  return swift_deallocObject();
}

uint64_t sub_218896900(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_2188969AC(void *result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_218896A50()
{

  return swift_deallocObject();
}

id sub_218896A88@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 preferredContentSize];
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_218896AD0()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_218896B0C()
{
  v1 = sub_219BE8F74();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_218896B94()
{

  return swift_deallocObject();
}

uint64_t sub_218896BCC()
{
  sub_21880B928();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_218896CA4(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_218896D50(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_218896DF4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_218896E2C()
{

  return swift_deallocObject();
}

uint64_t sub_218896E6C()
{

  return swift_deallocObject();
}

uint64_t sub_218896EA4()
{

  return swift_deallocObject();
}

uint64_t sub_218896EDC()
{

  return swift_deallocObject();
}

uint64_t sub_218896F48(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_218896FF4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_218897098()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_2188970D0()
{

  return swift_deallocObject();
}

uint64_t sub_21889710C()
{

  v1 = *(v0 + 72);
  if (v1 != 255)
  {
    sub_21896FC30(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_21889715C()
{

  return swift_deallocObject();
}

uint64_t sub_2188971CC()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 64);
  if (v1 != 255)
  {
    sub_21896FC30(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_218897254()
{
  v1 = sub_219BEC114();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_218897318()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_218897350()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_218897388()
{

  return swift_deallocObject();
}

uint64_t sub_2188973C0()
{

  return swift_deallocObject();
}

uint64_t sub_218897470()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188974A8()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21889755C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
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

_BYTE *sub_218897600(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_2188976A0(uint64_t a1, uint64_t a2)
{
  sub_218C42540();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21889770C(uint64_t a1, uint64_t a2)
{
  sub_218C42540();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21889777C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2188977C4()
{

  return swift_deallocObject();
}

uint64_t sub_218897808(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchFeedContentConfig();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_218897874(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchFeedContentConfig();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2188978E4()
{
  v1 = *(v0 + 32);
  if (v1 != 255)
  {
    sub_21896755C(*(v0 + 16), *(v0 + 24), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_218897928()
{
  sub_218932F9C(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_218897968(uint64_t a1, uint64_t a2, uint64_t a3)
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

void sub_218897A24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_218897ADC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_218897B14()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_218897B4C()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_218897BA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_218897C0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_218897C7C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_218897CD4(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_218897D90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_218897E48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedWithYouFeedGroupKnobs();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_218897EB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedWithYouFeedGroupKnobs();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_218897F24()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_218897F5C()
{

  return swift_deallocObject();
}

uint64_t sub_218897F9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_218898008(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_218898078(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v11 = type metadata accessor for CuratedMagazineFeedGroupKnobs();
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

uint64_t sub_218898188(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2186ECF58();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for CuratedMagazineFeedGroupKnobs();
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

uint64_t sub_218898298()
{
  v1 = type metadata accessor for CuratedMagazineFeedGroupEmitter();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  sub_2186ECF58();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + *(v1 + 20);
  sub_2186E3B14();
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = type metadata accessor for CuratedMagazineFeedGroupKnobs();
  v7 = *(v6 + 20);
  sub_2186F8BF4(0, &qword_280E91830, MEMORY[0x277D32318]);
  (*(*(v8 - 8) + 8))(v4 + v7, v8);

  v9 = *(v6 + 40);
  v10 = sub_219BEF814();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v4 + v9, 1, v10))
  {
    (*(v11 + 8))(v4 + v9, v10);
  }

  __swift_destroy_boxed_opaque_existential_1(v2 + *(v1 + 24));

  return swift_deallocObject();
}

uint64_t sub_2188984F8()
{

  return swift_deallocObject();
}

id sub_218898534@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7NewsUI229FollowingEngagementBannerView_engagementView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_21889859C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  FollowingEngagementBannerView.engagementView.setter(v1);
}

uint64_t sub_2188985CC()
{

  return swift_deallocObject();
}

uint64_t sub_218898604()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21889863C()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2188986B4()
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

uint64_t sub_21889871C()
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

uint64_t sub_218898888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2186DD2A0(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
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
    sub_2186DD2A0(0, &qword_280E91B80, MEMORY[0x277D32028], MEMORY[0x277D83D88]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

void sub_218898A0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2186DD2A0(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
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
    sub_2186DD2A0(0, &qword_280E91B80, MEMORY[0x277D32028], MEMORY[0x277D83D88]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    v13(v14, a2, a2, v12);
  }
}

uint64_t sub_218898B90(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_218898BFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_218898C70()
{

  return swift_deallocObject();
}

uint64_t sub_218898CAC(uint64_t a1, uint64_t a2, uint64_t a3)
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

void sub_218898D68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_218898E20(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_218898E8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_218898EFC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
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

_BYTE *sub_218898FA0(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_218899040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218C6CD50();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for TrendingRecipesTagFeedGroupKnobs();
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

uint64_t sub_218899150(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_218C6CD50();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for TrendingRecipesTagFeedGroupKnobs();
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

uint64_t sub_21889925C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeBoxFeedGroupKnobs();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2188992C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeBoxFeedGroupKnobs();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_218899338()
{
  sub_218747DF4(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
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

uint64_t sub_2188994D4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_218899590(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t sub_218899668()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188996D4()
{

  return swift_deallocObject();
}

uint64_t sub_21889970C()
{

  return swift_deallocObject();
}

uint64_t sub_218899760()
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

uint64_t sub_2188998A0()
{

  return swift_deallocObject();
}

uint64_t sub_2188998E0()
{

  return swift_deallocObject();
}

uint64_t sub_218899920()
{

  return swift_deallocObject();
}

uint64_t sub_218899958()
{

  return swift_deallocObject();
}

uint64_t sub_2188999D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BF02B4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_218899A40(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BF02B4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_218899AB0()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_218899AF0()
{
  swift_unownedRelease();

  return swift_deallocObject();
}

uint64_t sub_218899B28()
{

  return swift_deallocObject();
}

uint64_t sub_218899B60()
{

  return swift_deallocObject();
}

uint64_t sub_218899BB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyAudioFeedConfiguration();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_218899C24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyAudioFeedConfiguration();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_218899C94()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_218899CCC()
{

  return swift_deallocObject();
}

uint64_t sub_218899D14()
{

  return swift_deallocObject();
}

uint64_t sub_218899D54(uint64_t a1, uint64_t a2, uint64_t a3)
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

void sub_218899E10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_218899EC8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 249)
  {
    v4 = *a1;
    if (v4 >= 7)
    {
      return v4 - 6;
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

_BYTE *sub_218899F6C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 249)
  {
    *result = a2 + 6;
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

uint64_t sub_21889A00C(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_21889A0B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_21889A15C()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21889A1AC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_21889A208(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_21889A2A0()
{
  v1 = sub_219BE8F74();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_21889A328()
{
  v1 = *(v0 + 32);
  if (v1 != 255)
  {
    sub_21896755C(*(v0 + 16), *(v0 + 24), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_21889A36C()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21889A3A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21889A410(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21889A480(uint64_t a1, uint64_t a2, uint64_t a3)
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

void sub_21889A53C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_21889A5F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218CA1E04();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for SportsInjuryReportsTagFeedGroupKnobs();
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

uint64_t sub_21889A704(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_218CA1E04();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for SportsInjuryReportsTagFeedGroupKnobs();
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

uint64_t sub_21889A814()
{
  v1 = (type metadata accessor for SportsInjuryReportsTagFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_218CA1E04();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];
  sub_2189AD5C8();
  (*(*(v5 - 8) + 8))(v4, v5);
  type metadata accessor for SportsInjuryReportsTagFeedGroupKnobs();

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[9]);

  return swift_deallocObject();
}

uint64_t sub_21889A984()
{

  return swift_deallocObject();
}

uint64_t sub_21889A9BC()
{

  return swift_deallocObject();
}

uint64_t sub_21889A9FC()
{

  return swift_deallocObject();
}

uint64_t sub_21889AA3C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_21889AA74()
{

  return swift_deallocObject();
}

uint64_t sub_21889AAB0()
{

  return swift_deallocObject();
}

uint64_t sub_21889AAF0()
{

  return swift_deallocObject();
}

uint64_t sub_21889AB2C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
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

_BYTE *sub_21889ABD0(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_21889AC70(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_21873EF74();
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
      v13 = type metadata accessor for ShortcutIcon();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_21889AD94(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_21873EF74();
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
      v13 = type metadata accessor for ShortcutIcon();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21889AEB8(uint64_t a1, uint64_t a2, int *a3)
{
  sub_2186DEB60(0, &qword_280E90800, MEMORY[0x277D33478]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_2186DEB60(0, &unk_280E8FD50, sub_2186DEE0C);
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
    v14 = *(a1 + a3[7]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    sub_2186DEB60(0, &qword_280E903B0, MEMORY[0x277D339D0]);
    v16 = v15;
    v17 = *(*(v15 - 8) + 48);
    v18 = a1 + a3[10];

    return v17(v18, a2, v16);
  }
}

void sub_21889B080(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_2186DEB60(0, &qword_280E90800, MEMORY[0x277D33478]);
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

  sub_2186DEB60(0, &unk_280E8FD50, sub_2186DEE0C);
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
    *(a1 + a4[7]) = (a2 - 1);
  }

  else
  {
    sub_2186DEB60(0, &qword_280E903B0, MEMORY[0x277D339D0]);
    v16 = v15;
    v17 = *(*(v15 - 8) + 56);
    v18 = a1 + a4[10];

    v17(v18, a2, a2, v16);
  }
}

uint64_t sub_21889B298()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21889B2D8()
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

uint64_t sub_21889B444()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21889B48C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21889B4C4()
{

  return swift_deallocObject();
}

uint64_t sub_21889B500()
{

  return swift_deallocObject();
}

uint64_t sub_21889B538()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21889B570()
{

  return swift_deallocObject();
}

uint64_t sub_21889B5A8()
{

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21889B604()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21889B63C()
{

  sub_21895102C(*(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_21889B680()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21889B6B8()
{
  sub_218951594();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_21889B784()
{
  sub_218951594();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 143) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_21889B8A4()
{

  return swift_deallocObject();
}

uint64_t sub_21889B8E8()
{

  return swift_deallocObject();
}

uint64_t sub_21889B920()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21889B958()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21889B9A0(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_21889BA4C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_21889BAF0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21889BB28()
{

  return swift_deallocObject();
}

uint64_t sub_21889BB68()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21889BBA8()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21889BBE4(uint64_t a1, uint64_t a2, int *a3)
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

  sub_2186E4FBC(0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

void sub_21889BD38(uint64_t a1, uint64_t a2, int a3, int *a4)
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
      sub_2186E4FBC(0);
      if (*(*(v16 - 8) + 84) != a3)
      {
        *(a1 + a4[7]) = (a2 - 1);
        return;
      }

      v10 = v16;
      v14 = *(v16 - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_21889BE88()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21889BEC8()
{

  return swift_deallocObject();
}

uint64_t sub_21889BF00()
{

  return swift_deallocObject();
}

uint64_t sub_21889BF4C(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_21889C018(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_21889C450()
{
  v1 = sub_219BE5134();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_219BDB954();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_21889C5B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_219BF0D34();
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

uint64_t sub_21889C6A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_219BF0D34();
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

id sub_21889C7A0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 historyFeedRules];
  *a2 = result;
  return result;
}

uint64_t sub_21889C7E0(uint64_t a1, uint64_t a2, uint64_t a3)
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

  sub_218CE620C(0);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

uint64_t sub_21889C920(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2189AE994(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  sub_2189AE9B4(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_218CE620C(0);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_21889CA6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2186E3B14();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 253)
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

  else
  {
    sub_2186F64EC(0);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 32);

    return v13(v14, a2, v12);
  }
}

void sub_21889CB88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2186E3B14();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else if (a3 == 253)
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
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

uint64_t sub_21889CCA8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21889CCE0()
{

  return swift_deallocObject();
}

uint64_t sub_21889CD20(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = sub_219BDCAF4();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 28);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21889CE10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_219BE8164();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_219BDCAF4();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 28);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21889CF1C()
{
  v1 = *(type metadata accessor for AudioHistoryFeedRemovalRequest() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = sub_219BF0BD4();
  (*(*(v5 - 8) + 8))(v4, v5);

  return swift_deallocObject();
}

uint64_t sub_21889D05C()
{

  return swift_deallocObject();
}

uint64_t sub_21889D0A4()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21889D0DC()
{

  return swift_deallocObject();
}

uint64_t sub_21889D124()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_21889D15C()
{
  sub_218747E58(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
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

uint64_t sub_21889D2E4(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_21889D390(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_21889D434(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_21889D4E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_21889D584()
{
  sub_2186DF3DC();
  v20 = v0;
  v1 = *(v0 - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (type metadata accessor for LegacyLocalNewsTodayFeedGroupKnobs() - 8);
  v5 = (((v2 + 16) & ~v2) + v3 + *(*v4 + 80)) & ~*(*v4 + 80);
  v6 = *(*v4 + 64);
  v22 = sub_219BF0BD4();
  v7 = *(v22 - 8);
  v19 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v8 = *(v7 + 64);
  v9 = (type metadata accessor for ChannelSectionsGroupModel() - 8);
  v10 = (v19 + v8 + *(*v9 + 80)) & ~*(*v9 + 80);
  (*(v1 + 8))(v21 + ((v2 + 16) & ~v2), v20);
  v11 = v21 + v5;
  sub_218D066B8(0, &qword_280E91A20, MEMORY[0x277D321A0]);
  (*(*(v12 - 8) + 8))(v11, v12);
  v13 = v4[7];
  sub_218D066B8(0, &qword_280E91860, MEMORY[0x277D32318]);
  (*(*(v14 - 8) + 8))(v11 + v13, v14);

  (*(v7 + 8))(v21 + v19, v22);
  swift_unknownObjectRelease();
  v15 = v21 + v10 + v9[7];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v16 = *(type metadata accessor for ChannelSectionsGroupSectionModel() + 40);
  v17 = sub_219BDB954();
  (*(*(v17 - 8) + 8))(v15 + v16, v17);

  return swift_deallocObject();
}

uint64_t sub_21889D910()
{
  v1 = sub_219BED8D4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (type metadata accessor for ChannelSectionsGroupModel() - 8);
  v6 = (v3 + v4 + *(*v5 + 80)) & ~*(*v5 + 80);
  v14 = (*(*v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_2186DF3DC();
  v15 = v7;
  v8 = *(v7 - 8);
  v9 = (v14 + *(v8 + 80) + 8) & ~*(v8 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  swift_unknownObjectRelease();
  v10 = v0 + v6 + v5[7];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v11 = *(type metadata accessor for ChannelSectionsGroupSectionModel() + 40);
  v12 = sub_219BDB954();
  (*(*(v12 - 8) + 8))(v10 + v11, v12);

  (*(v8 + 8))(v0 + v9, v15);

  return swift_deallocObject();
}

uint64_t sub_21889DB84()
{
  v1 = (type metadata accessor for ChannelSectionsGroupModel() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  swift_unknownObjectRelease();
  v3 = v2 + v1[7];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v4 = *(type metadata accessor for ChannelSectionsGroupSectionModel() + 40);
  v5 = sub_219BDB954();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_21889DCB8()
{
  v1 = (type metadata accessor for ChannelSectionsGroupModel() - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  swift_unknownObjectRelease();
  v4 = v0 + v2 + v1[7];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v5 = *(type metadata accessor for ChannelSectionsGroupSectionModel() + 40);
  v6 = sub_219BDB954();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);

  return swift_deallocObject();
}

uint64_t sub_21889DE24()
{

  return swift_deallocObject();
}

uint64_t sub_21889DE5C()
{

  return swift_deallocObject();
}

uint64_t sub_21889DEAC()
{
  v1 = *(v0 + 32);
  if (v1 != 255)
  {
    sub_21896755C(*(v0 + 16), *(v0 + 24), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_21889DEF0()
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

uint64_t sub_21889E05C()
{

  return swift_deallocObject();
}

uint64_t sub_21889E094(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_2186EDCB0(0, &qword_280E912E0, MEMORY[0x277D32720]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 48);

    return v13(v14, a2, v12);
  }
}

void sub_21889E1D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    sub_2186EDCB0(0, &qword_280E912E0, MEMORY[0x277D32720]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 48);

    v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21889E314()
{
  sub_21896FBB0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  v1 = *(v0 + 96);
  if (v1 != 255)
  {
    sub_21896FC30(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_21889E36C()
{

  return swift_deallocObject();
}

uint64_t sub_21889E3BC(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_21889E468(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_21889E50C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218D10EB4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for PuzzleScoreboardTagFeedGroupKnobs();
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

uint64_t sub_21889E61C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_218D10EB4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for PuzzleScoreboardTagFeedGroupKnobs();
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

uint64_t sub_21889E72C()
{
  v1 = (type metadata accessor for PuzzleScoreboardTagFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_218D10EB4();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];
  sub_2189AD5C8();
  (*(*(v5 - 8) + 8))(v4, v5);
  type metadata accessor for PuzzleScoreboardTagFeedGroupKnobs();

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[9]);

  return swift_deallocObject();
}

uint64_t sub_21889E8AC(uint64_t a1, uint64_t a2, int *a3)
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

uint64_t sub_21889E9E0(uint64_t a1, uint64_t a2, int a3, int *a4)
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

uint64_t sub_21889EB04(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BF1584();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21889EB70(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BF1584();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21889EC80()
{
  sub_21896FBB0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  v1 = *(v0 + 96);
  if (v1 != 255)
  {
    sub_21896FC30(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_21889ECD8()
{

  return swift_deallocObject();
}

uint64_t sub_21889ED10()
{

  return swift_deallocObject();
}

uint64_t sub_21889ED50()
{

  return swift_deallocObject();
}

uint64_t sub_21889ED88()
{

  return swift_deallocObject();
}

uint64_t sub_21889EDC0()
{
  if (*(v0 + 24) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_21889EE10()
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

uint64_t sub_21889EE8C()
{
  v1 = *(v0 + 32);
  if (v1 != 255)
  {
    sub_21896755C(*(v0 + 16), *(v0 + 24), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_21889EED0()
{
  sub_21896FD44(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_21889EF24()
{

  return swift_deallocObject();
}

uint64_t sub_21889EF60(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_218D1B3EC(0, &qword_280EE5B08, MEMORY[0x277D6D478]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_21889F02C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_218D1B3EC(0, &qword_280EE5B08, MEMORY[0x277D6D478]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 28);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_21889F0EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2189525B0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_219BDC104();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21889F1DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2189525B0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_219BDC104();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21889F2D8(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

void sub_21889F400(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return;
    }

    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_21889F524()
{

  return swift_deallocObject();
}

uint64_t sub_21889F564()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_21889F59C()
{

  return swift_deallocObject();
}

uint64_t sub_21889F634(uint64_t *a1, uint64_t a2, uint64_t a3)
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

void *sub_21889F6E0(void *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_21889F784(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_219BDF0E4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_219BDF1A4();
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

  v14 = sub_219BDF104();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v16 = *(a1 + a3[7]);
    if (v16 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = sub_219BE09E4();
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[8];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_21889F940(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_219BDF0E4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_219BDF1A4();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  result = sub_219BDF104();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
  }

  else
  {
    v17 = sub_219BE09E4();
    v18 = *(*(v17 - 8) + 56);
    v19 = a1 + a4[8];

    return v18(v19, a2, a2, v17);
  }

  return result;
}

uint64_t sub_21889FAFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_219BE16D4();
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

uint64_t sub_21889FBB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_219BE16D4();
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

uint64_t sub_21889FC70()
{
  v1 = (type metadata accessor for SportsHeadlineExposureTracker.GroupSession(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v1[7];
  v4 = sub_219BDBD34();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_21889FD74()
{
  v0 = (type metadata accessor for SportsHeadlineExposureTracker.GroupSession(0) - 8);
  v16 = (*(*v0 + 80) + 16) & ~*(*v0 + 80);
  v1 = *(*v0 + 64);
  v2 = *(type metadata accessor for SportsHeadlineExposureTracker.FuzzedGroup(0) - 8);
  v18 = (v16 + v1 + *(v2 + 80)) & ~*(v2 + 80);
  v3 = *(v2 + 64);
  v21 = sub_219BDD2D4();
  v4 = *(v21 - 8);
  v17 = (v18 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v5 = *(v4 + 64);
  v19 = sub_219BDFCE4();
  v6 = *(v19 - 8);
  v15 = (v17 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v7 = *(v6 + 64);
  v14 = sub_219BE16D4();
  v8 = *(v14 - 8);
  v9 = (v15 + v7 + *(v8 + 80)) & ~*(v8 + 80);

  v10 = v0[7];
  v11 = sub_219BDBD34();
  (*(*(v11 - 8) + 8))(v20 + v16 + v10, v11);

  v12 = *(v8 + 8);
  v12(v20 + v18, v14);

  (*(v4 + 8))(v20 + v17, v21);
  (*(v6 + 8))(v20 + v15, v19);
  v12(v20 + v9, v14);

  return swift_deallocObject();
}

uint64_t sub_2188A00BC()
{
  v1 = sub_219BE16D4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2188A0188()
{

  if (*(v0 + 104) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2188A0210()
{

  return swift_deallocObject();
}

uint64_t sub_2188A0290()
{

  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  }

  if (v0[15])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 12));
  }

  if (v0[20])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 17));
  }

  return swift_deallocObject();
}

uint64_t sub_2188A0318()
{

  if (v0[9])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 6));
  }

  if (v0[14])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 11));
  }

  if (v0[19])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return swift_deallocObject();
}

uint64_t sub_2188A0398()
{

  return swift_deallocObject();
}

uint64_t sub_2188A03D0()
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

uint64_t sub_2188A05C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2186DD494(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
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
    sub_2186DD494(0, &qword_280E91B80, MEMORY[0x277D32028], MEMORY[0x277D83D88]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

void sub_2188A0748(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2186DD494(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
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
    sub_2186DD494(0, &qword_280E91B80, MEMORY[0x277D32028], MEMORY[0x277D83D88]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2188A08CC()
{
  if (*(v0 + 24) >= 4uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2188A090C()
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

uint64_t sub_2188A0A7C()
{

  return swift_deallocObject();
}

uint64_t sub_2188A0AB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_219BED8D4();
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
    sub_2186E2AFC(0);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_2188A0BD8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_219BED8D4();
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
    sub_2186E2AFC(0);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 28);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_2188A0CFC(uint64_t a1, uint64_t a2, int *a3)
{
  sub_2186DF3DC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for LocalNewsTodayFeedGroupSubtypeKnobs();
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
    v15 = sub_219BE5434();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[15];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_2188A0E74(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_2186DF3DC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for LocalNewsTodayFeedGroupSubtypeKnobs();
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
    v15 = sub_219BE5434();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[15];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_2188A0FEC()
{
  v1 = (type metadata accessor for LocalNewsTodayFeedGroupEmitter() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = (type metadata accessor for ChannelHeadlineServiceResult() - 8);
  v5 = (v2 + v3 + *(*v4 + 80)) & ~*(*v4 + 80);
  v6 = v0 + v2;
  sub_2186DF3DC();
  (*(*(v7 - 8) + 8))(v0 + v2, v7);
  v8 = v0 + v2 + v1[7];
  sub_2189AE994(0);
  (*(*(v9 - 8) + 8))(v8, v9);
  v10 = *(type metadata accessor for LocalNewsTodayFeedGroupSubtypeKnobs() + 20);
  sub_2189AE9B4(0);
  (*(*(v11 - 8) + 8))(v8 + v10, v11);

  __swift_destroy_boxed_opaque_existential_1(v6 + v1[8]);
  __swift_destroy_boxed_opaque_existential_1(v6 + v1[9]);
  __swift_destroy_boxed_opaque_existential_1(v6 + v1[10]);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v6 + v1[14]);
  __swift_destroy_boxed_opaque_existential_1(v6 + v1[15]);

  v12 = v1[17];
  v13 = sub_219BE5434();
  (*(*(v13 - 8) + 8))(v6 + v12, v13);

  v14 = v0 + v5 + v4[8];
  swift_unknownObjectRelease();
  v15 = v14 + *(type metadata accessor for ChannelSectionsGroupModel() + 20);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v16 = *(type metadata accessor for ChannelSectionsGroupSectionModel() + 40);
  v17 = sub_219BDB954();
  (*(*(v17 - 8) + 8))(v15 + v16, v17);

  return swift_deallocObject();
}

uint64_t sub_2188A13B8()
{
  v1 = (type metadata accessor for LocalNewsTodayFeedGroupEmitter() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = sub_219BF2034();
  v4 = *(v22 - 8);
  v5 = (v3 + *(v4 + 80) + 8) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = (type metadata accessor for ChannelHeadlineServiceResult() - 8);
  v21 = (v5 + v6 + *(*v7 + 80)) & ~*(*v7 + 80);
  v8 = v0 + v2;
  sub_2186DF3DC();
  (*(*(v9 - 8) + 8))(v0 + v2, v9);
  v10 = v0 + v2 + v1[7];
  sub_2189AE994(0);
  (*(*(v11 - 8) + 8))(v10, v11);
  v12 = *(type metadata accessor for LocalNewsTodayFeedGroupSubtypeKnobs() + 20);
  sub_2189AE9B4(0);
  (*(*(v13 - 8) + 8))(v10 + v12, v13);

  __swift_destroy_boxed_opaque_existential_1(v8 + v1[8]);
  __swift_destroy_boxed_opaque_existential_1(v8 + v1[9]);
  __swift_destroy_boxed_opaque_existential_1(v8 + v1[10]);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v8 + v1[14]);
  __swift_destroy_boxed_opaque_existential_1(v8 + v1[15]);

  v14 = v1[17];
  v15 = sub_219BE5434();
  (*(*(v15 - 8) + 8))(v8 + v14, v15);

  (*(v4 + 8))(v0 + v5, v22);

  v16 = v0 + v21 + v7[8];
  swift_unknownObjectRelease();
  v17 = v16 + *(type metadata accessor for ChannelSectionsGroupModel() + 20);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v18 = *(type metadata accessor for ChannelSectionsGroupSectionModel() + 40);
  v19 = sub_219BDB954();
  (*(*(v19 - 8) + 8))(v17 + v18, v19);

  return swift_deallocObject();
}

uint64_t sub_2188A1830()
{
  sub_218D45354();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = (type metadata accessor for LocalNewsTodayFeedGroupEmitter() - 8);
  v7 = (v4 + v5 + *(*v6 + 80)) & ~*(*v6 + 80);
  v8 = (((*(*v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v0 + v4, v2);
  sub_2186DF3DC();
  (*(*(v9 - 8) + 8))(v0 + v7, v9);
  v10 = v0 + v7 + v6[7];
  sub_2189AE994(0);
  (*(*(v11 - 8) + 8))(v10, v11);
  v12 = *(type metadata accessor for LocalNewsTodayFeedGroupSubtypeKnobs() + 20);
  sub_2189AE9B4(0);
  (*(*(v13 - 8) + 8))(v10 + v12, v13);

  __swift_destroy_boxed_opaque_existential_1(v0 + v7 + v6[8]);
  __swift_destroy_boxed_opaque_existential_1(v0 + v7 + v6[9]);
  __swift_destroy_boxed_opaque_existential_1(v0 + v7 + v6[10]);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + v7 + v6[14]);
  __swift_destroy_boxed_opaque_existential_1(v0 + v7 + v6[15]);

  v14 = v6[17];
  v15 = sub_219BE5434();
  (*(*(v15 - 8) + 8))(v0 + v7 + v14, v15);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2188A1B80()
{
  sub_218D45518();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2188A1C30()
{
  v1 = (type metadata accessor for LocalNewsTodayFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_2186DF3DC();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];
  sub_2189AE994(0);
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = *(type metadata accessor for LocalNewsTodayFeedGroupSubtypeKnobs() + 20);
  sub_2189AE9B4(0);
  (*(*(v7 - 8) + 8))(v4 + v6, v7);

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[9]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[10]);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[14]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[15]);

  v8 = v1[17];
  v9 = sub_219BE5434();
  (*(*(v9 - 8) + 8))(v2 + v8, v9);

  return swift_deallocObject();
}

uint64_t sub_2188A1EE0()
{

  return swift_deallocObject();
}

uint64_t sub_2188A1F20(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for TagFeedGapLocation(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2188A1FCC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for TagFeedGapLocation(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2188A2070()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188A20A8()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188A20E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BE8164();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2188A214C(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BE8164();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2188A21BC()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188A21F4()
{

  return swift_deallocObject();
}

uint64_t sub_2188A2230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_219BDBD34();
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
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2188A2300()
{
  sub_21896FBB0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  v1 = *(v0 + 96);
  if (v1 != 255)
  {
    sub_21896FC30(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_2188A2358()
{
  sub_21896FD44(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_2188A23AC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188A23E4()
{
  sub_218951DB0();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_2188A24A8()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188A24E0()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2188A2534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21897BFEC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 4)
    {
      return v10 - 3;
    }

    else
    {
      return 0;
    }
  }
}

void sub_2188A25EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_21897BFEC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 3;
  }
}

uint64_t sub_2188A26A4()
{

  return swift_deallocObject();
}

uint64_t sub_2188A26DC(uint64_t a1, uint64_t a2, int *a3)
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
    v17 = a1 + a3[28];

    return v16(v17, a2, v15);
  }
}

void sub_2188A2850(uint64_t a1, uint64_t a2, int a3, int *a4)
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
    v17 = a1 + a4[28];

    v16(v17, a2, a2, v15);
  }
}

uint64_t sub_2188A2A34(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_2188A2AE8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_2188A2B94()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188A2BCC()
{
  sub_218C40500();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_2188A2C90()
{
  swift_unownedRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2188A2CD8(uint64_t a1, uint64_t a2, uint64_t a3)
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

void sub_2188A2DFC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_2188A2F3C()
{
  v1 = sub_219BEF4C4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2188A3008()
{

  return swift_deallocObject();
}

uint64_t sub_2188A3040()
{

  return swift_deallocObject();
}

uint64_t sub_2188A307C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_2186DD55C(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
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
      v13 = sub_219BEF554();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_2188A31D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_2186DD55C(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
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
      v13 = sub_219BEF554();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_2188A3324()
{

  sub_218A57F90(*(v0 + 32), *(v0 + 40));

  sub_218A57FB4(*(v0 + 80), *(v0 + 88));

  return swift_deallocObject();
}

uint64_t sub_2188A33D0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  sub_21896FDCC(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

  return swift_deallocObject();
}

uint64_t sub_2188A341C()
{

  return swift_deallocObject();
}

uint64_t sub_2188A3454()
{
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2188A349C()
{
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2188A34E4()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188A351C()
{

  return swift_deallocObject();
}

uint64_t sub_2188A3560()
{

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2188A35B8()
{

  return swift_deallocObject();
}

uint64_t sub_2188A35F0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188A3628()
{
  v1 = *(type metadata accessor for MagazineFeedGapLocation(0) - 8);
  v2 = (*(v1 + 80) + 72) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  sub_218953870();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 80);
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  sub_2186EBE2C();
  v9 = v8;
  v10 = *(v8 - 8);
  if (!(*(v10 + 48))(v0 + v2, 1, v8))
  {
    (*(v10 + 8))(v0 + v2, v9);
  }

  (*(v6 + 8))(v0 + ((v2 + v3 + v7) & ~v7), v5);

  return swift_deallocObject();
}

uint64_t sub_2188A37C8()
{
  v1 = type metadata accessor for MagazineFeedExpandResult(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3 + *(v1 + 20);
  type metadata accessor for MagazineFeedExpandResult.Result(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for MagazineFeedGroup();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:

        v22 = type metadata accessor for CategoriesMagazineFeedGroup();
        goto LABEL_19;
      case 1u:
        sub_2186E3594();
        (*(*(v23 - 8) + 8))(v5, v23);
        v8 = type metadata accessor for FeaturedArticleMagazineFeedGroup();
        goto LABEL_22;
      case 2u:
      case 0xAu:
      case 0xBu:
        v6 = sub_219BED8D4();
        (*(*(v6 - 8) + 8))(v5, v6);
        goto LABEL_24;
      case 3u:
        sub_2186EC3A4();
        (*(*(v38 - 8) + 8))(v5, v38);
        v8 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup();
        goto LABEL_22;
      case 4u:

        v22 = type metadata accessor for InlineCategoriesMagazineFeedGroup();
LABEL_19:
        v43 = *(v22 + 40);
        v44 = sub_219BEF554();
        goto LABEL_23;
      case 5u:
        v94 = v4;

        v24 = type metadata accessor for MyMagazinesMagazineFeedGroup();
        v25 = v24[10];
        v26 = sub_219BEF554();
        v27 = *(*(v26 - 8) + 8);
        v27(v5 + v25, v26);
        v27(v5 + v24[11], v26);
        v28 = v5 + v24[13];
        sub_2186E3B14();
        (*(*(v29 - 8) + 8))(v28, v29);
        v30 = type metadata accessor for MyMagazinesMagazineFeedGroupKnobs();

        v31 = *(v30 + 24);
        sub_2186F64EC(0);
        (*(*(v32 - 8) + 8))(v28 + v31, v32);
        swift_unknownObjectRelease();
        v33 = v24[16];
        v34 = sub_219BEF8A4();
        (*(*(v34 - 8) + 8))(v5 + v33, v34);
        v35 = v24[17];
        v36 = sub_219BEE5D4();
        v37 = *(v36 - 8);
        if (!(*(v37 + 48))(v5 + v35, 1, v36))
        {
          (*(v37 + 8))(v5 + v35, v36);
        }

        v4 = v94;
        v3 = (v2 + 40) & ~v2;
        goto LABEL_24;
      case 6u:
        sub_2186ECD30();
        (*(*(v50 - 8) + 8))(v5, v50);
        v8 = type metadata accessor for NewIssueMagazineFeedGroup();
        goto LABEL_22;
      case 7u:
        v93 = v4;

        v10 = type metadata accessor for PaywallMagazineFeedGroup();
        v11 = v10[5];
        v12 = sub_219BEF554();
        v13 = *(*(v12 - 8) + 8);
        v13(v5 + v11, v12);
        v13(v5 + v10[6], v12);
        v14 = (v5 + v10[9]);
        type metadata accessor for FeedPaywallModel(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v15 = type metadata accessor for FeedVideoPaywallModel(0);
          v16 = v15[5];
          v17 = sub_219BDB954();
          v18 = *(v17 - 8);
          if (!(*(v18 + 48))(v14 + v16, 1, v17))
          {
            (*(v18 + 8))(v14 + v16, v17);
          }

          v19 = v15[22];
          v20 = sub_219BE4584();
          (*(*(v20 - 8) + 8))(v14 + v19, v20);

          v21 = v15[24];
        }

        else
        {

          v52 = type metadata accessor for FeedRegularPaywallModel(0);
          v53 = *(v52 + 64);
          v54 = sub_219BE4584();
          (*(*(v54 - 8) + 8))(v14 + v53, v54);

          v21 = *(v52 + 72);
        }

        v55 = sub_219BE4314();
        v56 = *(v55 - 8);
        if (!(*(v56 + 48))(v14 + v21, 1, v55))
        {
          (*(v56 + 8))(v14 + v21, v55);
        }

        v91 = v14;
        v92 = type metadata accessor for FeedPaywallConfig();
        v57 = (v14 + v92[5]);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v58 = type metadata accessor for FeedVideoPaywallModel(0);
          v59 = v58[5];
          v60 = sub_219BDB954();
          v61 = *(v60 - 8);
          if (!(*(v61 + 48))(v57 + v59, 1, v60))
          {
            (*(v61 + 8))(v57 + v59, v60);
          }

          v62 = v58[22];
          v63 = sub_219BE4584();
          (*(*(v63 - 8) + 8))(v57 + v62, v63);

          v64 = v58[24];
          v65 = sub_219BE4314();
          v66 = *(v65 - 8);
          if (!(*(v66 + 48))(v57 + v64, 1, v65))
          {
            (*(v66 + 8))(v57 + v64, v65);
          }
        }

        else
        {

          v67 = type metadata accessor for FeedRegularPaywallModel(0);
          v68 = *(v67 + 64);
          v69 = sub_219BE4584();
          (*(*(v69 - 8) + 8))(v57 + v68, v69);

          v70 = *(v67 + 72);
          v71 = sub_219BE4314();
          v72 = *(v71 - 8);
          if (!(*(v72 + 48))(v57 + v70, 1, v71))
          {
            (*(v72 + 8))(v57 + v70, v71);
          }
        }

        v73 = v91;
        v74 = (v91 + v92[6]);
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
          v73 = v91;
          if (!(*(v83 + 48))(v74 + v81, 1, v82))
          {
            goto LABEL_42;
          }
        }

        else
        {

          v88 = type metadata accessor for FeedRegularPaywallModel(0);
          v89 = *(v88 + 64);
          v90 = sub_219BE4584();
          (*(*(v90 - 8) + 8))(v74 + v89, v90);

          v81 = *(v88 + 72);
          v82 = sub_219BE4314();
          v83 = *(v82 - 8);
          if (!(*(v83 + 48))(v74 + v81, 1, v82))
          {
LABEL_42:
            (*(v83 + 8))(v74 + v81, v82);
          }
        }

        v84 = v73 + v92[7];
        type metadata accessor for FeedPaywallType(0);
        v4 = v93;
        v3 = (v2 + 40) & ~v2;
        if (!swift_getEnumCaseMultiPayload())
        {
          sub_2186F6684();
          v86 = *(v85 + 48);
          v87 = sub_219BE4034();
          (*(*(v87 - 8) + 8))(v84 + v86, v87);
        }

LABEL_24:
        sub_218D52054();
        break;
      case 8u:

        v45 = type metadata accessor for RecommendedIssuesMagazineFeedGroup();
        v46 = *(v45 + 44);
        v47 = sub_219BEF554();
        v95 = v4;
        v48 = *(*(v47 - 8) + 8);
        v49 = v5 + v46;
        v3 = (v2 + 40) & ~v2;
        v48(v49, v47);
        v48(v5 + *(v45 + 48), v47);
        v4 = v95;
        goto LABEL_24;
      case 9u:
        sub_2186E60B0();
        (*(*(v7 - 8) + 8))(v5, v7);
        v8 = type metadata accessor for TopicMagazineFeedGroup();
LABEL_22:
        v43 = *(v8 + 20);
        v44 = sub_219BED8D4();
        goto LABEL_23;
      case 0xCu:
        v9 = sub_219BED8D4();
        (*(*(v9 - 8) + 8))(v5, v9);
        type metadata accessor for NewspaperMagazineFeedGroup();
        swift_unknownObjectRelease();

        goto LABEL_24;
      case 0xDu:
        sub_2186ECF58();
        (*(*(v39 - 8) + 8))(v5, v39);
        v40 = type metadata accessor for CuratedMagazineFeedGroup();
        v41 = *(v40 + 20);
        v42 = sub_219BED8D4();
        (*(*(v42 - 8) + 8))(v5 + v41, v42);
        v43 = *(v40 + 24);
        v44 = sub_219BEF8A4();
LABEL_23:
        (*(*(v44 - 8) + 8))(v5 + v43, v44);
        goto LABEL_24;
      default:
        goto LABEL_24;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_2188A48BC()
{
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2188A4938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218D77C80();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for FeaturedIssueMagazineFeedGroupKnobs();
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

uint64_t sub_2188A4A48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_218D77C80();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for FeaturedIssueMagazineFeedGroupKnobs();
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

uint64_t sub_2188A4B58()
{
  v1 = (type metadata accessor for FeaturedIssueMagazineFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_218D77C80();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];
  sub_2186E3B14();
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = type metadata accessor for FeaturedIssueMagazineFeedGroupKnobs();

  v7 = *(v6 + 44);
  sub_2186F8D2C(0, &qword_280E91830, MEMORY[0x277D32318]);
  (*(*(v8 - 8) + 8))(v4 + v7, v8);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);

  return swift_deallocObject();
}

uint64_t sub_2188A4D2C()
{

  return swift_deallocObject();
}

uint64_t sub_2188A4D68(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2188A4DD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED8D4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2188A4E44()
{
  sub_21896FD44(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_2188A4E98()
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

uint64_t sub_2188A4FD8()
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

uint64_t sub_2188A5144(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_2188A5268(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_2188A5388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218D7EFE8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for TrendingMagazineFeedGroupKnobs();
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

uint64_t sub_2188A5498(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_218D7EFE8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for TrendingMagazineFeedGroupKnobs();
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

uint64_t sub_2188A55AC()
{

  return swift_deallocObject();
}

uint64_t sub_2188A55E4()
{

  return swift_deallocObject();
}

uint64_t sub_2188A5628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2186DE858();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for LegacyNewspaperTodayFeedGroupKnobs();
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

uint64_t sub_2188A5738(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2186DE858();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for LegacyNewspaperTodayFeedGroupKnobs();
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

uint64_t sub_2188A5844()
{
  v1 = (type metadata accessor for LegacyNewspaperTodayFeedGroupEmitter() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_2186DE858();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];

  v5 = type metadata accessor for LegacyNewspaperTodayFeedGroupKnobs();
  v6 = *(v5 + 28);
  sub_2189AE994(0);
  (*(*(v7 - 8) + 8))(v4 + v6, v7);
  v8 = *(v5 + 32);
  sub_218D8763C(0, &qword_280E91860, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D32318]);
  (*(*(v9 - 8) + 8))(v4 + v8, v9);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[9]);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[12]);

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[14]);

  return swift_deallocObject();
}

uint64_t sub_2188A5A78()
{

  return swift_deallocObject();
}

uint64_t sub_2188A5AB4()
{

  return swift_deallocObject();
}

uint64_t sub_2188A5AEC()
{
  v1 = (type metadata accessor for LegacyNewspaperTodayFeedGroupEmitter() - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);

  v3 = v0 + v2;
  sub_2186DE858();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = v3 + v1[7];

  v6 = type metadata accessor for LegacyNewspaperTodayFeedGroupKnobs();
  v7 = *(v6 + 28);
  sub_2189AE994(0);
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  v9 = *(v6 + 32);
  sub_218D8763C(0, &qword_280E91860, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D32318]);
  (*(*(v10 - 8) + 8))(v5 + v9, v10);
  __swift_destroy_boxed_opaque_existential_1(v3 + v1[8]);
  __swift_destroy_boxed_opaque_existential_1(v3 + v1[9]);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v3 + v1[12]);

  __swift_destroy_boxed_opaque_existential_1(v3 + v1[14]);

  return swift_deallocObject();
}

uint64_t sub_2188A5D48()
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
  sub_218D8763C(0, &qword_280E8FD60, MEMORY[0x277D33498], sub_218A42448, MEMORY[0x277D345E8]);
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

uint64_t sub_2188A6260()
{
  v1 = type metadata accessor for NewspaperGroupConfig();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[5];
  sub_218D8763C(0, &qword_280E8FD60, MEMORY[0x277D33498], sub_218A42448, MEMORY[0x277D345E8]);
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

uint64_t sub_2188A6500()
{
  v1 = (type metadata accessor for LegacyNewspaperTodayFeedGroupEmitter() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = v2 + *(*v1 + 64);
  sub_218D8763C(0, &qword_27CC11AB0, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D31C68]);
  v16 = v4;
  v5 = *(v4 - 8);
  v6 = (v3 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = v0 + v2;
  sub_2186DE858();
  (*(*(v8 - 8) + 8))(v0 + v2, v8);
  v9 = v0 + v2 + v1[7];

  v10 = type metadata accessor for LegacyNewspaperTodayFeedGroupKnobs();
  v11 = *(v10 + 28);
  sub_2189AE994(0);
  (*(*(v12 - 8) + 8))(v9 + v11, v12);
  v13 = *(v10 + 32);
  sub_218D8763C(0, &qword_280E91860, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D32318]);
  (*(*(v14 - 8) + 8))(v9 + v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v7 + v1[8]);
  __swift_destroy_boxed_opaque_existential_1(v7 + v1[9]);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v7 + v1[12]);

  __swift_destroy_boxed_opaque_existential_1(v7 + v1[14]);

  (*(v5 + 8))(v0 + v6, v16);

  return swift_deallocObject();
}

uint64_t sub_2188A67E0()
{

  return swift_deallocObject();
}

uint64_t sub_2188A6820()
{
  v1 = (type metadata accessor for LegacyNewspaperTodayFeedGroupEmitter() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v0 + v2;
  sub_2186DE858();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = v3 + v1[7];

  v6 = type metadata accessor for LegacyNewspaperTodayFeedGroupKnobs();
  v7 = *(v6 + 28);
  sub_2189AE994(0);
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  v9 = *(v6 + 32);
  sub_218D8763C(0, &qword_280E91860, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D32318]);
  (*(*(v10 - 8) + 8))(v5 + v9, v10);
  __swift_destroy_boxed_opaque_existential_1(v3 + v1[8]);
  __swift_destroy_boxed_opaque_existential_1(v3 + v1[9]);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v3 + v1[12]);

  __swift_destroy_boxed_opaque_existential_1(v3 + v1[14]);

  return swift_deallocObject();
}

uint64_t sub_2188A6A68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2186E14F4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for ChannelPickerTodayFeedGroupSubtypeKnobs();
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

uint64_t sub_2188A6B78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2186E14F4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for ChannelPickerTodayFeedGroupSubtypeKnobs();
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

uint64_t sub_2188A6C84()
{

  return swift_deallocObject();
}

uint64_t sub_2188A6CC0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188A6CF8()
{

  return swift_deallocObject();
}

uint64_t sub_2188A6D40()
{

  return swift_deallocObject();
}

uint64_t sub_2188A6D78()
{
  v1 = (type metadata accessor for AudioPlaylistFeedRefreshResult() - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);

  v3 = v1[7];
  v4 = sub_219BF0BD4();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_2188A6E7C()
{
  v1 = (type metadata accessor for AudioPlaylistFeedRefreshRequest() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v1[7];
  v4 = sub_219BF0BD4();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_2188A6F70()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188A6FA8()
{
  sub_218D9C5E0(0, &qword_27CC11C10, MEMORY[0x277D6DA48]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_2188A7088()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2188A70C0(uint64_t a1, uint64_t a2, int *a3)
{
  sub_218D9CF74();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for ChannelSectionTagFeedGroupKnobs();
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
    v15 = sub_219BE5434();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[9];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_2188A7238(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_218D9CF74();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for ChannelSectionTagFeedGroupKnobs();
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
    v15 = sub_219BE5434();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[9];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_2188A73B0()
{
  v1 = sub_219BE8F74();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_2188A7438()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188A7470()
{

  sub_218A57FB4(*(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_2188A74B4()
{

  return swift_deallocObject();
}

uint64_t sub_2188A74EC()
{
  sub_218A57FB4(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_2188A7528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218A27A84();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for CuratedTagFeedGroupKnobs();
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

uint64_t sub_2188A7638(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_218A27A84();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for CuratedTagFeedGroupKnobs();
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

uint64_t sub_2188A7744()
{
  v1 = type metadata accessor for CuratedTagFeedGroupEmitter();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  sub_218A27A84();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = v0 + v2 + *(v1 + 20);
  sub_2189AD5C8();
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = type metadata accessor for CuratedTagFeedGroupKnobs();

  v7 = *(v6 + 48);
  v8 = sub_219BEF814();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v4 + v7, 1, v8))
  {
    (*(v9 + 8))(v4 + v7, v8);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + v2 + *(v1 + 24));

  return swift_deallocObject();
}

uint64_t sub_2188A7978()
{
  v1 = type metadata accessor for CuratedTagFeedGroupEmitter();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  sub_218A27A84();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + *(v1 + 20);
  sub_2189AD5C8();
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = type metadata accessor for CuratedTagFeedGroupKnobs();

  v7 = *(v6 + 48);
  v8 = sub_219BEF814();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v4 + v7, 1, v8))
  {
    (*(v9 + 8))(v4 + v7, v8);
  }

  __swift_destroy_boxed_opaque_existential_1(v2 + *(v1 + 24));

  return swift_deallocObject();
}

uint64_t sub_2188A7B98()
{

  return swift_deallocObject();
}

uint64_t sub_2188A7BD0()
{

  return swift_deallocObject();
}

uint64_t sub_2188A7C08(uint64_t a1, uint64_t a2, uint64_t a3)
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

void sub_2188A7CC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_2188A7D7C(uint64_t a1, uint64_t a2)
{
  sub_2189AD5C8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2188A7DE8(uint64_t a1, uint64_t a2)
{
  sub_2189AD5C8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2188A7E58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SavedFeedGroupKnobs();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2188A7EC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SavedFeedGroupKnobs();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

id sub_2188A7F38@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 recipeBoxFeedRules];
  *a2 = result;
  return result;
}

id sub_2188A7F74@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 maxRecipeDownloads];
  *a2 = result;
  return result;
}

uint64_t sub_2188A7FA8()
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

uint64_t sub_2188A8130()
{
  sub_21896FBB0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  v1 = *(v0 + 96);
  if (v1 != 255)
  {
    sub_21896FC30(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_2188A8188()
{
  sub_21896FD44(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

void sub_2188A81F0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_2188A8510();
}

uint64_t sub_2188A8250()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2188A8290()
{
  v1 = sub_219BF1584();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2188A8354()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188A838C()
{
  if (*(v0 + 32))
  {
  }

  if (*(v0 + 88) >= 3uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2188A83FC()
{
  if (*(v0 + 16))
  {
  }

  if (*(v0 + 64) >= 3uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2188A8464()
{

  return swift_deallocObject();
}

uint64_t sub_2188A84A0()
{

  return swift_deallocObject();
}

uint64_t sub_2188A84D8()
{

  return swift_deallocObject();
}

uint64_t sub_2188A8524()
{

  return swift_deallocObject();
}

uint64_t sub_2188A8570()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188A85A8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188A85E8()
{

  return swift_deallocObject();
}

uint64_t sub_2188A8624()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_2188A8664()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188A86A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2186ECD30();
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

uint64_t sub_2188A8790(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2186ECD30();
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

uint64_t sub_2188A888C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2188A8944(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_2188A89FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for MagazineFeedGroupKnobs();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_2188A8A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for MagazineFeedGroupKnobs();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_2188A8B68(uint64_t *a1, uint64_t a2, uint64_t a3)
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

void *sub_2188A8C14(void *result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_2188A8CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2186E1164();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for ShortcutsTodayFeedGroupKnobs();
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

uint64_t sub_2188A8DC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2186E1164();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for ShortcutsTodayFeedGroupKnobs();
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

uint64_t sub_2188A8ED4()
{

  return swift_deallocObject();
}

uint64_t sub_2188A8F6C()
{

  return swift_deallocObject();
}

uint64_t sub_2188A8FA4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188A8FDC()
{

  return swift_deallocObject();
}

uint64_t sub_2188A9034()
{

  return swift_deallocObject();
}

uint64_t sub_2188A907C()
{

  return swift_deallocObject();
}

uint64_t sub_2188A90BC()
{

  return swift_deallocObject();
}

uint64_t sub_2188A9104(uint64_t a1, uint64_t a2, int *a3)
{
  sub_2186E55A8(0, &unk_280EE9D00, MEMORY[0x277CC9260]);
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
    v12 = *(a1 + a3[12]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_219BE4584();
    if (*(*(v13 - 8) + 84) == a2)
    {
      v7 = v13;
      v8 = *(v13 - 8);
      v9 = a3[22];
      goto LABEL_3;
    }

    sub_2186E55A8(0, &unk_280EE6360, MEMORY[0x277D35058]);
    v15 = v14;
    v16 = *(*(v14 - 8) + 48);
    v17 = a1 + a3[24];

    return v16(v17, a2, v15);
  }
}

void sub_2188A92AC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_2186E55A8(0, &unk_280EE9D00, MEMORY[0x277CC9260]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_3:
    v12 = *(v10 + 56);

    v12(a1 + v11, a2, a2, v9);
    return;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[12]) = (a2 - 1);
    return;
  }

  v13 = sub_219BE4584();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[22];
    goto LABEL_3;
  }

  sub_2186E55A8(0, &unk_280EE6360, MEMORY[0x277D35058]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = a1 + a4[24];

  v16(v17, a2, a2, v15);
}

uint64_t sub_2188A9454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 64);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_219BE4584();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 64);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_2186E55A8(0, &unk_280EE6360, MEMORY[0x277D35058]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 72);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_2188A9594(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 64) = (a2 - 1);
  }

  else
  {
    v8 = sub_219BE4584();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 64);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_2186E55A8(0, &unk_280EE6360, MEMORY[0x277D35058]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 72);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_2188A9714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218D61A68();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for MagazineTodayFeedGroupKnobs();
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

uint64_t sub_2188A9820(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_218D61A68();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for MagazineTodayFeedGroupKnobs();
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

uint64_t sub_2188A9958()
{
  v1 = v0;
  sub_218DEC39C();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = type metadata accessor for MagazineTodayFeedGroupEmitter();
  v8 = *(*(v7 - 1) + 80);
  (*(v4 + 8))(v1 + v5, v3);
  v9 = v1 + ((v5 + v6 + v8) & ~v8);
  sub_218D61A68();
  (*(*(v10 - 8) + 8))(v9, v10);
  v11 = v9 + v7[5];
  sub_2189AE994(0);
  (*(*(v12 - 8) + 8))(v11, v12);
  v13 = type metadata accessor for MagazineTodayFeedGroupKnobs();
  v14 = *(v13 + 20);
  sub_2189AE9B4(0);
  (*(*(v15 - 8) + 8))(v11 + v14, v15);
  v16 = v11 + *(v13 + 24);
  v17 = type metadata accessor for MagazineFeedGroupKnobs();
  if (!(*(*(v17 - 1) + 48))(v16, 1, v17))
  {

    v18 = v16 + v17[6];
    sub_2186E3B14();
    v20 = v19;
    v42 = *(*(v19 - 8) + 8);
    v42(v18, v19);
    v21 = type metadata accessor for FeaturedArticleMagazineFeedGroupKnobs();

    v22 = *(v21 + 44);
    sub_2186F64EC(0);
    v24 = v23;
    v43 = *(*(v23 - 8) + 8);
    v43(v18 + v22, v23);
    v25 = v16 + v17[7];
    v42(v25, v20);
    v26 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroupKnobs();

    v43(v25 + *(v26 + 44), v24);
    v27 = v16 + v17[8];
    v42(v27, v20);
    v28 = type metadata accessor for FeaturedIssueMagazineFeedGroupKnobs();

    v43(v27 + *(v28 + 44), v24);
    v42(v16 + v17[9], v20);
    v29 = v16 + v17[10];
    v42(v29, v20);
    v30 = type metadata accessor for MyMagazinesMagazineFeedGroupKnobs();

    v43(v29 + *(v30 + 24), v24);
    v31 = v16 + v17[11];
    v42(v31, v20);
    v32 = type metadata accessor for NewIssueMagazineFeedGroupKnobs();
    v43(v31 + *(v32 + 32), v24);
    v42(v16 + v17[12], v20);
    v33 = v17[13];
    v34 = type metadata accessor for RecommendedIssuesMagazineFeedGroupKnobs();
    v43(v16 + v33 + *(v34 + 52), v24);
    v35 = v16 + v17[14];
    v42(v35, v20);
    v36 = type metadata accessor for TopicMagazineFeedGroupKnobs();
    v43(v35 + *(v36 + 28), v24);
    v37 = v16 + v17[15];
    v42(v37, v20);
    v38 = type metadata accessor for TrendingMagazineFeedGroupKnobs();
    v43(v37 + *(v38 + 32), v24);
    v39 = v16 + v17[16];
    v42(v39, v20);
    v40 = v39 + *(type metadata accessor for BestOfBundleMagazineFeedGroupKnobs() + 40);
    v43(v40, v24);
    v42(v16 + v17[17], v20);
    type metadata accessor for NewspaperMagazineFeedGroupKnobs();
  }

  __swift_destroy_boxed_opaque_existential_1(v9 + v7[7]);

  __swift_destroy_boxed_opaque_existential_1(v9 + v7[9]);

  return swift_deallocObject();
}

uint64_t sub_2188A9FA4()
{
  v1 = v0;
  sub_218DEC39C();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = type metadata accessor for MagazineTodayFeedGroupEmitter();
  v8 = *(*(v7 - 1) + 80);
  swift_unknownObjectRelease();
  (*(v4 + 8))(v1 + v5, v3);
  v9 = v1 + ((v5 + v6 + v8) & ~v8);
  sub_218D61A68();
  (*(*(v10 - 8) + 8))(v9, v10);
  v11 = v9 + v7[5];
  sub_2189AE994(0);
  (*(*(v12 - 8) + 8))(v11, v12);
  v13 = type metadata accessor for MagazineTodayFeedGroupKnobs();
  v14 = *(v13 + 20);
  sub_2189AE9B4(0);
  (*(*(v15 - 8) + 8))(v11 + v14, v15);
  v16 = v11 + *(v13 + 24);
  v17 = type metadata accessor for MagazineFeedGroupKnobs();
  if (!(*(*(v17 - 1) + 48))(v16, 1, v17))
  {

    v18 = v16 + v17[6];
    sub_2186E3B14();
    v20 = v19;
    v43 = *(*(v19 - 8) + 8);
    v43(v18, v19);
    v21 = type metadata accessor for FeaturedArticleMagazineFeedGroupKnobs();

    v22 = *(v21 + 44);
    sub_2186F64EC(0);
    v24 = v23;
    v42 = *(*(v23 - 8) + 8);
    v42(v18 + v22, v23);
    v25 = v16 + v17[7];
    v43(v25, v20);
    v26 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroupKnobs();

    v42(v25 + *(v26 + 44), v24);
    v27 = v16 + v17[8];
    v43(v27, v20);
    v28 = type metadata accessor for FeaturedIssueMagazineFeedGroupKnobs();

    v42(v27 + *(v28 + 44), v24);
    v43(v16 + v17[9], v20);
    v29 = v16 + v17[10];
    v43(v29, v20);
    v30 = type metadata accessor for MyMagazinesMagazineFeedGroupKnobs();

    v42(v29 + *(v30 + 24), v24);
    v31 = v16 + v17[11];
    v43(v31, v20);
    v32 = type metadata accessor for NewIssueMagazineFeedGroupKnobs();
    v42(v31 + *(v32 + 32), v24);
    v43(v16 + v17[12], v20);
    v33 = v17[13];
    v34 = type metadata accessor for RecommendedIssuesMagazineFeedGroupKnobs();
    v42(v16 + v33 + *(v34 + 52), v24);
    v35 = v16 + v17[14];
    v43(v35, v20);
    v36 = type metadata accessor for TopicMagazineFeedGroupKnobs();
    v42(v35 + *(v36 + 28), v24);
    v37 = v16 + v17[15];
    v43(v37, v20);
    v38 = type metadata accessor for TrendingMagazineFeedGroupKnobs();
    v42(v37 + *(v38 + 32), v24);
    v39 = v16 + v17[16];
    v43(v39, v20);
    v40 = v39 + *(type metadata accessor for BestOfBundleMagazineFeedGroupKnobs() + 40);
    v42(v40, v24);
    v43(v16 + v17[17], v20);
    type metadata accessor for NewspaperMagazineFeedGroupKnobs();
  }

  __swift_destroy_boxed_opaque_existential_1(v9 + v7[7]);

  __swift_destroy_boxed_opaque_existential_1(v9 + v7[9]);

  return swift_deallocObject();
}

uint64_t sub_2188AA5F4()
{

  return swift_deallocObject();
}

uint64_t sub_2188AA62C(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_2188AA6D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_2188AA77C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2188AA7B4()
{

  return swift_deallocObject();
}

uint64_t sub_2188AA7F4()
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

uint64_t sub_2188AA960(uint64_t a1, uint64_t a2, int *a3)
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

  sub_218DF0498(0, &unk_280E8FD50, sub_2186DEE0C);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  sub_218DF0498(0, &qword_280E903B0, MEMORY[0x277D339D0]);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = sub_219BEF554();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[10];

  return v15(v16, a2, v14);
}

uint64_t sub_2188AAB04(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  sub_218DF0498(0, &unk_280E8FD50, sub_2186DEE0C);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  sub_218DF0498(0, &qword_280E903B0, MEMORY[0x277D339D0]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = sub_219BEF554();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[10];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_2188AACB0()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2188AACE8()
{

  return swift_deallocObject();
}

uint64_t sub_2188AAD20()
{
  if (*(v0 + 24) >= 2uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2188AAD68()
{

  return swift_deallocObject();
}

uint64_t sub_2188AADB4(uint64_t a1, uint64_t a2, uint64_t a3)
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

void sub_2188AAE70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_2188AAF28()
{
  v1 = sub_219BDD5D4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 33) & ~*(v2 + 80);
  sub_218CF5D78(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2188AAFF0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_218DFBC54();
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_2188AB09C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_218DFBC54();
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2188AB140()
{

  return swift_deallocObject();
}

uint64_t sub_2188AB180()
{
  v1 = (type metadata accessor for TodayFeedServiceContext() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[11];
  v4 = sub_219BEE754();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_2188AB290()
{
  v1 = (type metadata accessor for OfflineFeedManifest(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(type metadata accessor for TodayFeedGroup() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = v0 + v2;
  v7 = sub_219BDBD34();
  v8 = *(*(v7 - 8) + 8);
  v8(v6, v7);
  v8(v6 + v1[7], v7);

  v9 = (v0 + v5);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v18 = sub_219BED8D4();
      (*(*(v18 - 8) + 8))(v0 + v5, v18);
      v19 = type metadata accessor for CuratedTodayFeedGroup();

      v20 = *(v19 + 28);
LABEL_12:
      v21 = sub_219BEF8A4();
      goto LABEL_20;
    case 1u:
      v22 = sub_219BED8D4();
      (*(*(v22 - 8) + 8))(v0 + v5, v22);
      type metadata accessor for NewspaperTodayFeedGroup();
      swift_unknownObjectRelease();

      goto LABEL_14;
    case 2u:
      v13 = sub_219BED8D4();
      (*(*(v13 - 8) + 8))(v0 + v5, v13);
      v14 = type metadata accessor for LocalNewsTodayFeedGroup();
      swift_unknownObjectRelease();

      v15 = *(v14 + 28);
      v16 = sub_219BF0D34();
      v17 = *(v16 - 8);
      if (!(*(v17 + 48))(v9 + v15, 1, v16))
      {
        (*(v17 + 8))(v9 + v15, v16);
      }

LABEL_14:

      goto LABEL_4;
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
      v10 = sub_219BED8D4();
      goto LABEL_3;
    case 9u:
      type metadata accessor for MagazineFeedGroup();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:

          v23 = type metadata accessor for CategoriesMagazineFeedGroup();
          goto LABEL_41;
        case 1u:
          sub_2186E3594();
          (*(*(v52 - 8) + 8))(v0 + v5, v52);
          v25 = type metadata accessor for FeaturedArticleMagazineFeedGroup();
          goto LABEL_19;
        case 2u:
        case 0xAu:
        case 0xBu:
          goto LABEL_2;
        case 3u:
          sub_2186EC3A4();
          (*(*(v67 - 8) + 8))(v0 + v5, v67);
          v25 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup();
          goto LABEL_19;
        case 4u:

          v23 = type metadata accessor for InlineCategoriesMagazineFeedGroup();
LABEL_41:
          v20 = *(v23 + 40);
          v21 = sub_219BEF554();
          goto LABEL_20;
        case 5u:

          v53 = type metadata accessor for MyMagazinesMagazineFeedGroup();
          v54 = v53[10];
          v55 = sub_219BEF554();
          v56 = *(*(v55 - 8) + 8);
          v56(v9 + v54, v55);
          v56(v9 + v53[11], v55);
          v57 = v9 + v53[13];
          sub_2186E3B14();
          (*(*(v58 - 8) + 8))(v57, v58);
          v59 = type metadata accessor for MyMagazinesMagazineFeedGroupKnobs();

          v60 = *(v59 + 24);
          sub_2186F64EC(0);
          (*(*(v61 - 8) + 8))(&v57[v60], v61);
          swift_unknownObjectRelease();
          v62 = v53[16];
          v63 = sub_219BEF8A4();
          (*(*(v63 - 8) + 8))(v9 + v62, v63);
          v64 = v53[17];
          v65 = sub_219BEE5D4();
          v66 = *(v65 - 8);
          if (!(*(v66 + 48))(v9 + v64, 1, v65))
          {
            (*(v66 + 8))(v9 + v64, v65);
          }

          goto LABEL_14;
        case 6u:
          sub_2186ECD30();
          (*(*(v76 - 8) + 8))(v0 + v5, v76);
          v25 = type metadata accessor for NewIssueMagazineFeedGroup();
          goto LABEL_19;
        case 7u:

          v28 = type metadata accessor for PaywallMagazineFeedGroup();
          v29 = v28[5];
          v30 = sub_219BEF554();
          v31 = *(*(v30 - 8) + 8);
          v31(v9 + v29, v30);
          v31(v9 + v28[6], v30);
          v32 = (v9 + v28[9]);
          type metadata accessor for FeedPaywallModel(0);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v33 = type metadata accessor for FeedVideoPaywallModel(0);
            v34 = v33[5];
            v35 = sub_219BDB954();
            v36 = *(v35 - 8);
            if (!(*(v36 + 48))(v32 + v34, 1, v35))
            {
              (*(v36 + 8))(v32 + v34, v35);
            }

            v37 = v33[22];
            v38 = sub_219BE4584();
            (*(*(v38 - 8) + 8))(v32 + v37, v38);

            v39 = v33[24];
            v40 = sub_219BE4314();
            v41 = *(v40 - 8);
            if (!(*(v41 + 48))(v32 + v39, 1, v40))
            {
              goto LABEL_28;
            }
          }

          else
          {

            v77 = type metadata accessor for FeedRegularPaywallModel(0);
            v78 = *(v77 + 64);
            v79 = sub_219BE4584();
            (*(*(v79 - 8) + 8))(v32 + v78, v79);

            v39 = *(v77 + 72);
            v40 = sub_219BE4314();
            v41 = *(v40 - 8);
            if (!(*(v41 + 48))(v32 + v39, 1, v40))
            {
LABEL_28:
              (*(v41 + 8))(v32 + v39, v40);
            }
          }

          v101 = type metadata accessor for FeedPaywallConfig();
          v42 = (v32 + *(v101 + 20));
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v43 = type metadata accessor for FeedVideoPaywallModel(0);
            v44 = v43[5];
            v45 = sub_219BDB954();
            v46 = *(v45 - 8);
            if (!(*(v46 + 48))(v42 + v44, 1, v45))
            {
              (*(v46 + 8))(v42 + v44, v45);
            }

            v47 = v43[22];
            v48 = sub_219BE4584();
            (*(*(v48 - 8) + 8))(v42 + v47, v48);

            v49 = v43[24];
            v50 = sub_219BE4314();
            v51 = *(v50 - 8);
            if (!(*(v51 + 48))(v42 + v49, 1, v50))
            {
              (*(v51 + 8))(v42 + v49, v50);
            }
          }

          else
          {

            v80 = type metadata accessor for FeedRegularPaywallModel(0);
            v81 = *(v80 + 64);
            v82 = sub_219BE4584();
            (*(*(v82 - 8) + 8))(v42 + v81, v82);

            v83 = *(v80 + 72);
            v84 = sub_219BE4314();
            v85 = *(v84 - 8);
            if (!(*(v85 + 48))(v42 + v83, 1, v84))
            {
              (*(v85 + 8))(v42 + v83, v84);
            }
          }

          v86 = v101;
          v87 = (v32 + *(v101 + 24));
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v88 = type metadata accessor for FeedVideoPaywallModel(0);
            v89 = v88[5];
            v90 = sub_219BDB954();
            v91 = *(v90 - 8);
            if (!(*(v91 + 48))(v87 + v89, 1, v90))
            {
              (*(v91 + 8))(v87 + v89, v90);
            }

            v92 = v88[22];
            v93 = sub_219BE4584();
            (*(*(v93 - 8) + 8))(v87 + v92, v93);

            v94 = v88[24];
            v95 = sub_219BE4314();
            v96 = *(v95 - 8);
            v86 = v101;
            if (!(*(v96 + 48))(v87 + v94, 1, v95))
            {
              goto LABEL_52;
            }
          }

          else
          {

            v98 = type metadata accessor for FeedRegularPaywallModel(0);
            v99 = *(v98 + 64);
            v100 = sub_219BE4584();
            (*(*(v100 - 8) + 8))(v87 + v99, v100);

            v94 = *(v98 + 72);
            v95 = sub_219BE4314();
            v96 = *(v95 - 8);
            if (!(*(v96 + 48))(v87 + v94, 1, v95))
            {
LABEL_52:
              (*(v96 + 8))(v87 + v94, v95);
            }
          }

          v9 = (v32 + *(v86 + 28));
          type metadata accessor for FeedPaywallType(0);
          if (!swift_getEnumCaseMultiPayload())
          {
            sub_218E01E08(0, &qword_280E8E1E0, type metadata accessor for FCFeedPaywallSubtype, MEMORY[0x277D34EF8]);
            v20 = *(v97 + 48);
            v21 = sub_219BE4034();
LABEL_20:
            (*(*(v21 - 8) + 8))(v9 + v20, v21);
          }

LABEL_4:

          return swift_deallocObject();
        case 8u:

          v72 = type metadata accessor for RecommendedIssuesMagazineFeedGroup();
          v73 = *(v72 + 44);
          v74 = sub_219BEF554();
          v75 = *(*(v74 - 8) + 8);
          v75(v9 + v73, v74);
          v75(v9 + *(v72 + 48), v74);
          goto LABEL_4;
        case 9u:
          sub_2186E60B0();
          (*(*(v26 - 8) + 8))(v0 + v5, v26);
          v25 = type metadata accessor for TopicMagazineFeedGroup();
          goto LABEL_19;
        case 0xCu:
          v27 = sub_219BED8D4();
          (*(*(v27 - 8) + 8))(v0 + v5, v27);
          type metadata accessor for NewspaperMagazineFeedGroup();
          swift_unknownObjectRelease();
          goto LABEL_14;
        case 0xDu:
          sub_2186ECF58();
          (*(*(v68 - 8) + 8))(v0 + v5, v68);
          v69 = type metadata accessor for CuratedMagazineFeedGroup();
          v70 = *(v69 + 20);
          v71 = sub_219BED8D4();
          (*(*(v71 - 8) + 8))(v9 + v70, v71);
          v20 = *(v69 + 24);
          goto LABEL_12;
        default:
          goto LABEL_4;
      }

    case 0xCu:
      v10 = sub_219BED544();
      goto LABEL_3;
    case 0x10u:
      sub_2186E0CD8();
      (*(*(v24 - 8) + 8))(v0 + v5, v24);
      v25 = type metadata accessor for SharedWithYouTodayFeedGroup();
LABEL_19:
      v20 = *(v25 + 20);
      v21 = sub_219BED8D4();
      goto LABEL_20;
    case 0x11u:
      sub_2186F687C();
LABEL_3:
      (*(*(v10 - 8) + 8))(v0 + v5, v10);
      goto LABEL_4;
    case 0x17u:
      v12 = sub_219BED8D4();
      (*(*(v12 - 8) + 8))(v0 + v5, v12);
      type metadata accessor for ChannelPickerTodayFeedGroup();

      goto LABEL_4;
    default:
      goto LABEL_4;
  }
}

uint64_t sub_2188AC754()
{

  return swift_deallocObject();
}

uint64_t sub_2188AC78C()
{

  return swift_deallocObject();
}