uint64_t sub_1D6C7F758@<X0>(id a1@<X1>, _BYTE *a2@<X0>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  switch(*a2)
  {
    case 1:
      v26 = *(type metadata accessor for FormatJsonKeyValue() + 20);
      ObjectType = swift_getObjectType();
      *(a4 + v26) = FCTagProviding.isTopic.getter(ObjectType);
      type metadata accessor for FormatJson();
      result = swift_storeEnumTagMultiPayload();
      v9 = 0xE700000000000000;
      v10 = 0x6369706F547369;
      break;
    case 2:
      v21 = *(type metadata accessor for FormatJsonKeyValue() + 20);
      *(a4 + v21) = [a1 isLocal];
      type metadata accessor for FormatJson();
      result = swift_storeEnumTagMultiPayload();
      v9 = 0xE700000000000000;
      v10 = 0x6C61636F4C7369;
      break;
    case 3:
      v10 = 0x7374726F70537369;
      v24 = *(type metadata accessor for FormatJsonKeyValue() + 20);
      *(a4 + v24) = [a1 isSports];
      type metadata accessor for FormatJson();
      result = swift_storeEnumTagMultiPayload();
      v9 = 0xE800000000000000;
      break;
    case 4:
      v15 = *(type metadata accessor for FormatJsonKeyValue() + 20);
      v16 = swift_getObjectType();
      *(a4 + v15) = FCTagProviding.isSection.getter(v16);
      type metadata accessor for FormatJson();
      result = swift_storeEnumTagMultiPayload();
      v9 = 0xE90000000000006ELL;
      v10 = 0x6F69746365537369;
      break;
    case 5:
      v30 = *(type metadata accessor for FormatJsonKeyValue() + 20);
      *(a4 + v30) = [a1 isNewspaper];
      type metadata accessor for FormatJson();
      result = swift_storeEnumTagMultiPayload();
      v9 = 0xEB00000000726570;
      v10 = 0x61707377654E7369;
      break;
    case 6:
      v33 = *(type metadata accessor for FormatJsonKeyValue() + 20);
      *(a4 + v33) = [a1 isMagazine];
      type metadata accessor for FormatJson();
      result = swift_storeEnumTagMultiPayload();
      v10 = 0x697A6167614D7369;
      v9 = 0xEA0000000000656ELL;
      break;
    case 7:
      v25 = *(type metadata accessor for FormatJsonKeyValue() + 20);
      *(a4 + v25) = [a1 isPublic];
      type metadata accessor for FormatJson();
      result = swift_storeEnumTagMultiPayload();
      v9 = 0xE800000000000000;
      v10 = 0x63696C6275507369;
      break;
    case 8:
      v36 = *(type metadata accessor for FormatJsonKeyValue() + 20);
      *(a4 + v36) = [a1 isSubscribable];
      type metadata accessor for FormatJson();
      result = swift_storeEnumTagMultiPayload();
      v9 = 0xEE00656C62616269;
      v10 = 0x7263736275537369;
      break;
    case 9:
      v18 = *(type metadata accessor for FormatJsonKeyValue() + 20);
      *(a4 + v18) = [a1 isExplicitContent];
      type metadata accessor for FormatJson();
      result = swift_storeEnumTagMultiPayload();
      v9 = 0x80000001D73B97F0;
      v10 = 0xD000000000000011;
      break;
    case 0xA:
      v35 = *(type metadata accessor for FormatJsonKeyValue() + 20);
      *(a4 + v35) = [a1 isBlockedExplicitContent];
      type metadata accessor for FormatJson();
      result = swift_storeEnumTagMultiPayload();
      v9 = 0x80000001D73B9810;
      v10 = 0xD000000000000018;
      break;
    case 0xB:
      v14 = *(type metadata accessor for FormatJsonKeyValue() + 20);
      *(a4 + v14) = [a1 isHidden];
      type metadata accessor for FormatJson();
      result = swift_storeEnumTagMultiPayload();
      v9 = 0xE800000000000000;
      v10 = 0x6E65646469487369;
      break;
    case 0xC:
      v10 = 0xD000000000000010;
      v17 = *(type metadata accessor for FormatJsonKeyValue() + 20);
      *(a4 + v17) = [a1 isSensitiveTopic];
      type metadata accessor for FormatJson();
      result = swift_storeEnumTagMultiPayload();
      v9 = 0x80000001D73B9830;
      break;
    case 0xD:
      v32 = *(type metadata accessor for FormatJsonKeyValue() + 20);
      *(a4 + v32) = [a1 isSandbox];
      type metadata accessor for FormatJson();
      result = swift_storeEnumTagMultiPayload();
      v9 = 0xE900000000000078;
      v10 = 0x6F62646E61537369;
      break;
    case 0xE:
      v13 = *(type metadata accessor for FormatJsonKeyValue() + 20);
      *(a4 + v13) = [a1 isInternal];
      type metadata accessor for FormatJson();
      result = swift_storeEnumTagMultiPayload();
      v9 = 0xEA00000000006C61;
      v10 = 0x6E7265746E497369;
      break;
    case 0xF:
      v22 = [a1 superfeedConfigResourceID];
      v23 = v22;
      if (v22)
      {
      }

      *(a4 + *(type metadata accessor for FormatJsonKeyValue() + 20)) = v23 != 0;
      type metadata accessor for FormatJson();
      result = swift_storeEnumTagMultiPayload();
      v9 = 0xEB00000000646565;
      v10 = 0x6672657075537369;
      break;
    case 0x10:
      v10 = 0x7374726F70537369;
      v12 = *(type metadata accessor for FormatJsonKeyValue() + 20);
      *(a4 + v12) = [a1 isSportsEvent];
      type metadata accessor for FormatJson();
      result = swift_storeEnumTagMultiPayload();
      v9 = 0xED0000746E657645;
      break;
    case 0x11:
      v28 = *(type metadata accessor for FormatJsonKeyValue() + 20);
      *(a4 + v28) = [a1 isMySports];
      type metadata accessor for FormatJson();
      result = swift_storeEnumTagMultiPayload();
      v9 = 0xEA00000000007374;
      v10 = 0x726F7053794D7369;
      break;
    case 0x12:
      v34 = *(type metadata accessor for FormatJsonKeyValue() + 20);
      *(a4 + v34) = [a1 isPuzzleHub];
      type metadata accessor for FormatJson();
      result = swift_storeEnumTagMultiPayload();
      v9 = 0xEB00000000627548;
      v10 = 0x656C7A7A75507369;
      break;
    case 0x13:
      v40 = *(type metadata accessor for FormatJsonKeyValue() + 20);
      *(a4 + v40) = [a1 isFoodHub];
      type metadata accessor for FormatJson();
      result = swift_storeEnumTagMultiPayload();
      v10 = 0x7548646F6F467369;
      v9 = 0xE900000000000062;
      break;
    case 0x14:
      v29 = *(type metadata accessor for FormatJsonKeyValue() + 20);
      *(a4 + v29) = [a1 isFoodTopic];
      type metadata accessor for FormatJson();
      result = swift_storeEnumTagMultiPayload();
      v9 = 0xEB00000000636970;
      v10 = 0x6F54646F6F467369;
      break;
    case 0x15:
      v31 = *(type metadata accessor for FormatJsonKeyValue() + 20);
      *(a4 + v31) = [a1 isRecipeCatalog];
      type metadata accessor for FormatJson();
      result = swift_storeEnumTagMultiPayload();
      v9 = 0xEF676F6C61746143;
      v10 = 0x6570696365527369;
      break;
    case 0x16:
      v38 = *(type metadata accessor for FormatJsonKeyValue() + 20);
      v39 = swift_getObjectType();
      *(a4 + v38) = sub_1D6C809F8(a1, a3, 22, v39) & 1;
      type metadata accessor for FormatJson();
      result = swift_storeEnumTagMultiPayload();
      v9 = 0xE90000000000006DLL;
      v10 = 0x75696D6572507369;
      break;
    case 0x17:
      v41 = *(type metadata accessor for FormatJsonKeyValue() + 20);
      *(a4 + v41) = [a1 hasRecipes];
      type metadata accessor for FormatJson();
      result = swift_storeEnumTagMultiPayload();
      v9 = 0xEA00000000007365;
      v10 = 0x7069636552736168;
      break;
    case 0x18:
      v20 = *(type metadata accessor for FormatJsonKeyValue() + 20);
      *(a4 + v20) = [a1 allowsRecipes];
      type metadata accessor for FormatJson();
      result = swift_storeEnumTagMultiPayload();
      v9 = 0xED00007365706963;
      v10 = 0x655273776F6C6C61;
      break;
    case 0x19:
      v19 = *(type metadata accessor for FormatJsonKeyValue() + 20);
      *(a4 + v19) = [a1 disableBlock];
      type metadata accessor for FormatJson();
      result = swift_storeEnumTagMultiPayload();
      v9 = 0xEC0000006B636F6CLL;
      v10 = 0x42656C6261736964;
      break;
    case 0x1A:
      v42 = *(type metadata accessor for FormatJsonKeyValue() + 20);
      *(a4 + v42) = [a1 disableFollow];
      type metadata accessor for FormatJson();
      result = swift_storeEnumTagMultiPayload();
      v9 = 0xED0000776F6C6C6FLL;
      v10 = 0x46656C6261736964;
      break;
    case 0x1B:
      v11 = *(type metadata accessor for FormatJsonKeyValue() + 20);
      *(a4 + v11) = [a1 sponsoredFeedEligible];
      type metadata accessor for FormatJson();
      result = swift_storeEnumTagMultiPayload();
      v9 = 0x80000001D73B98F0;
      v10 = 0xD000000000000017;
      break;
    default:
      v6 = *(type metadata accessor for FormatJsonKeyValue() + 20);
      v7 = swift_getObjectType();
      *(a4 + v6) = FCTagProviding.isChannel.getter(v7);
      type metadata accessor for FormatJson();
      result = swift_storeEnumTagMultiPayload();
      v9 = 0xE90000000000006CLL;
      v10 = 0x656E6E6168437369;
      break;
  }

  *a4 = v10;
  a4[1] = v9;
  return result;
}

uint64_t sub_1D6C80168(id a1, uint64_t a2, char a3, uint64_t a4)
{
  switch(a3)
  {
    case 1:
      result = FCTagProviding.isTopic.getter(a4);
      break;
    case 2:
      result = [a1 isLocal];
      break;
    case 3:
      result = [a1 isSports];
      break;
    case 4:
      result = FCTagProviding.isSection.getter(a4);
      break;
    case 5:
      result = [a1 isNewspaper];
      break;
    case 6:
      result = [a1 isMagazine];
      break;
    case 7:
      result = [a1 isPublic];
      break;
    case 8:
      result = [a1 isSubscribable];
      break;
    case 9:
      result = [a1 isExplicitContent];
      break;
    case 10:
      result = [a1 isBlockedExplicitContent];
      break;
    case 11:
      result = [a1 isHidden];
      break;
    case 12:
      result = [a1 isSensitiveTopic];
      break;
    case 13:
      result = [a1 isSandbox];
      break;
    case 14:
      result = [a1 isInternal];
      break;
    case 15:
      result = [a1 superfeedConfigResourceID];
      if (result)
      {

        result = 1;
      }

      break;
    case 16:
      result = [a1 isSportsEvent];
      break;
    case 17:
      result = [a1 isMySports];
      break;
    case 18:
      result = [a1 isPuzzleHub];
      break;
    case 19:
      result = [a1 isFoodHub];
      break;
    case 20:
      result = [a1 isFoodTopic];
      break;
    case 21:
      result = [a1 isRecipeCatalog];
      break;
    case 22:
      if (*(a2 + 88))
      {
        v6 = *(a2 + 128);
        v7 = [a1 identifier];
        if (!v7)
        {
          sub_1D726207C();
          v7 = sub_1D726203C();
        }

        v8 = [v6 containsTagID_];

        result = v8;
      }

      else
      {
        result = 0;
      }

      break;
    case 23:
      result = [a1 hasRecipes];
      break;
    case 24:
      result = [a1 allowsRecipes];
      break;
    case 25:
      result = [a1 disableFollow];
      break;
    case 26:
      result = [a1 disableBlock];
      break;
    case 27:
      result = [a1 sponsoredFeedEligible];
      break;
    default:
      result = FCTagProviding.isChannel.getter(a4);
      break;
  }

  return result;
}

uint64_t sub_1D6C803A0(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = type metadata accessor for FormatOptionsNodeStatementContext();
  *&v10 = MEMORY[0x1EEE9AC00](v8, v9).n128_u64[0];
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v28 - v12;
  switch(a3)
  {
    case 1:
      result = FCTagProviding.isTopic.getter(a4);
      break;
    case 2:
      result = [a1 isLocal];
      break;
    case 3:
      result = [a1 isSports];
      break;
    case 4:
      result = FCTagProviding.isSection.getter(a4);
      break;
    case 5:
      result = [a1 isNewspaper];
      break;
    case 6:
      result = [a1 isMagazine];
      break;
    case 7:
      result = [a1 isPublic];
      break;
    case 8:
      result = [a1 isSubscribable];
      break;
    case 9:
      result = [a1 isExplicitContent];
      break;
    case 10:
      result = [a1 isBlockedExplicitContent];
      break;
    case 11:
      result = [a1 isHidden];
      break;
    case 12:
      result = [a1 isSensitiveTopic];
      break;
    case 13:
      result = [a1 isSandbox];
      break;
    case 14:
      result = [a1 isInternal];
      break;
    case 15:
      result = [a1 superfeedConfigResourceID];
      if (result)
      {

        result = 1;
      }

      break;
    case 16:
      result = [a1 isSportsEvent];
      break;
    case 17:
      result = [a1 isMySports];
      break;
    case 18:
      result = [a1 isPuzzleHub];
      break;
    case 19:
      result = [a1 isFoodHub];
      break;
    case 20:
      result = [a1 isFoodTopic];
      break;
    case 21:
      result = [a1 isRecipeCatalog];
      break;
    case 22:
      sub_1D606818C(a2, &v28 - v12);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v16 = *v13;
      if (EnumCaseMultiPayload == 1)
      {
        sub_1D5EB9920();
        v29 = *(v17 + 48);
        v18 = *(v16 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 40);
        v28 = *(v16 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 32);
        v19 = *(v16 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 48);
        v20 = *(v16 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 56);
        v21 = *(v16 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 64);
        v22 = *(v16 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 72);
        v23 = *(v16 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 80);

        sub_1D60B297C(v18, v19, v20, v21, v22, v23);

        sub_1D5EB9994();
        (*(*(v24 - 8) + 8))(&v13[v29], v24);
      }

      else
      {

        v18 = v16[11];
        v19 = v16[12];
        v20 = v16[13];
        v21 = v16[14];
        v22 = v16[15];
        v23 = v16[16];

        sub_1D60B297C(v18, v19, v20, v21, v22, v23);
      }

      sub_1D60B297C(v18, v19, v20, v21, v22, v23);

      sub_1D60B29F8(v18, v19, v20, v21, v22, v23);
      if (v18)
      {
        v25 = v23;
        sub_1D60B29F8(v18, v19, v20, v21, v22, v23);
        v26 = [a1 identifier];
        if (!v26)
        {
          sub_1D726207C();
          v26 = sub_1D726203C();
        }

        v27 = [v25 containsTagID_];

        result = v27;
      }

      else
      {
        result = 0;
      }

      break;
    case 23:
      result = [a1 hasRecipes];
      break;
    case 24:
      result = [a1 allowsRecipes];
      break;
    case 25:
      result = [a1 disableFollow];
      break;
    case 26:
      result = [a1 disableBlock];
      break;
    case 27:
      result = [a1 sponsoredFeedEligible];
      break;
    default:
      result = FCTagProviding.isChannel.getter(a4);
      break;
  }

  return result;
}

double sub_1D6C807D0@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D5EA74B8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(a1 + 96);
  v12 = *(a1 + 128);
  v26[7] = *(a1 + 112);
  v26[8] = v12;
  v13 = *(a1 + 48);
  v26[2] = *(a1 + 32);
  v26[3] = v13;
  v14 = *(a1 + 80);
  v26[4] = *(a1 + 64);
  v27 = *(a1 + 144);
  v26[5] = v14;
  v26[6] = v11;
  v15 = *(a1 + 16);
  v26[0] = *a1;
  v26[1] = v15;
  *&v24[0] = MEMORY[0x1E69E7CC0];
  sub_1D69972A4(0, 28, 0);
  v16 = 0;
  v17 = *&v24[0];
  do
  {
    v23 = byte_1F50F36B8[v16 + 32];
    sub_1D6C7F028(a2, &v23, v26, v10);
    *&v24[0] = v17;
    v19 = *(v17 + 16);
    v18 = *(v17 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_1D69972A4(v18 > 1, v19 + 1, 1);
      v17 = *&v24[0];
    }

    ++v16;
    *(v17 + 16) = v19 + 1;
    sub_1D6C80C40(v10, v17 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v19, sub_1D5EA74B8);
  }

  while (v16 != 28);
  sub_1D6795150(0x6E61656C6F6F42, 0xE700000000000000, 0, 0, v17, v24);

  result = *v24;
  v21 = v24[1];
  *a3 = v24[0];
  *(a3 + 16) = v21;
  *(a3 + 32) = v25;
  return result;
}

uint64_t sub_1D6C809F8(id a1, uint64_t a2, char a3, uint64_t a4)
{
  switch(a3)
  {
    case 1:
      result = FCTagProviding.isTopic.getter(a4);
      break;
    case 2:
      result = [a1 isLocal];
      break;
    case 3:
      result = [a1 isSports];
      break;
    case 4:
      result = FCTagProviding.isSection.getter(a4);
      break;
    case 5:
      result = [a1 isNewspaper];
      break;
    case 6:
      result = [a1 isMagazine];
      break;
    case 7:
      result = [a1 isPublic];
      break;
    case 8:
      result = [a1 isSubscribable];
      break;
    case 9:
      result = [a1 isExplicitContent];
      break;
    case 10:
      result = [a1 isBlockedExplicitContent];
      break;
    case 11:
      result = [a1 isHidden];
      break;
    case 12:
      result = [a1 isSensitiveTopic];
      break;
    case 13:
      result = [a1 isSandbox];
      break;
    case 14:
      result = [a1 isInternal];
      break;
    case 15:
      result = [a1 superfeedConfigResourceID];
      if (result)
      {

        result = 1;
      }

      break;
    case 16:
      result = [a1 isSportsEvent];
      break;
    case 17:
      result = [a1 isMySports];
      break;
    case 18:
      result = [a1 isPuzzleHub];
      break;
    case 19:
      result = [a1 isFoodHub];
      break;
    case 20:
      result = [a1 isFoodTopic];
      break;
    case 21:
      result = [a1 isRecipeCatalog];
      break;
    case 22:
      if (*(a2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 40))
      {
        v6 = *(a2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 80);
        v7 = [a1 identifier];
        if (!v7)
        {
          sub_1D726207C();
          v7 = sub_1D726203C();
        }

        v8 = [v6 containsTagID_];

        result = v8;
      }

      else
      {
        result = 0;
      }

      break;
    case 23:
      result = [a1 hasRecipes];
      break;
    case 24:
      result = [a1 allowsRecipes];
      break;
    case 25:
      result = [a1 disableFollow];
      break;
    case 26:
      result = [a1 disableBlock];
      break;
    case 27:
      result = [a1 sponsoredFeedEligible];
      break;
    default:
      result = FCTagProviding.isChannel.getter(a4);
      break;
  }

  return result;
}

uint64_t sub_1D6C80C40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t FormatDimensionSizing.height.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return sub_1D5D0A048(v2);
}

unint64_t FormatDimensionSizing.width.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  return sub_1D5D0A048(v2);
}

uint64_t sub_1D6C80CE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = v4[1];
  v28 = *v4;
  v10 = a3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_layoutContext;
  v11 = *(v10 + *(type metadata accessor for GroupLayoutContext() + 48));
  if (*(v11 + 16))
  {

    v12 = sub_1D5B69D90(a1, a2);
    if (v13)
    {
      v14 = (*(v11 + 56) + 16 * v12);
      v15 = *v14;
      v27 = v14[1];
    }

    else
    {
      v15 = 0.0;
      v27 = 0.0;
    }

    v16 = v13 ^ 1;
  }

  else
  {
    v15 = 0.0;
    v27 = 0.0;
    v16 = 1;
  }

  if ((v9 >> 61 != 5) | v16 & 1)
  {
    v15 = 0.0;
  }

  sub_1D5EF9444();
  v18 = v17;
  v29 = swift_allocBox();
  v20 = v19;
  sub_1D5D0A048(v9);
  sub_1D61F7D90(a3, v15, (v9 >> 61 != 5) | v16 & 1, v20);
  if (v5)
  {
    sub_1D5D09FB0(v9);
    return swift_deallocBox();
  }

  else
  {
    if ((v28 >> 61 != 5) | v16 & 1)
    {
      v21 = 0.0;
    }

    else
    {
      v21 = v27;
    }

    v22 = *(v18 + 48);
    sub_1D5D09FB0(v9);
    sub_1D5D0A048(v28);
    sub_1D61F7D90(a3, v21, (v28 >> 61 != 5) | v16 & 1, (v20 + v22));
    sub_1D5D09FB0(v28);
    *a4 = v29;
    v24 = *MEMORY[0x1E69D7468];
    sub_1D5EB51BC();
    return (*(*(v25 - 8) + 104))(a4, v24, v25);
  }
}

uint64_t _s8NewsFeed21FormatDimensionSizingV2eeoiySbAC_ACtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2[1];
  v8 = *a2;
  v9 = v2;
  sub_1D5D0A048(v2);
  sub_1D5D0A048(v8);
  v5 = static FormatDimensionSizingValue.== infix(_:_:)(&v9, &v8);
  sub_1D5D09FB0(v8);
  sub_1D5D09FB0(v9);
  if (v5)
  {
    v8 = v4;
    v9 = v3;
    sub_1D5D0A048(v3);
    sub_1D5D0A048(v4);
    v6 = static FormatDimensionSizingValue.== infix(_:_:)(&v9, &v8);
    sub_1D5D09FB0(v8);
    sub_1D5D09FB0(v9);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

unint64_t sub_1D6C80FD8(uint64_t a1)
{
  result = sub_1D6C81000();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6C81000()
{
  result = qword_1EC894430;
  if (!qword_1EC894430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894430);
  }

  return result;
}

unint64_t sub_1D6C81054(void *a1)
{
  a1[1] = sub_1D5C9221C();
  a1[2] = sub_1D66F8B34();
  result = sub_1D6C8108C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6C8108C()
{
  result = qword_1EC894438;
  if (!qword_1EC894438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894438);
  }

  return result;
}

uint64_t sub_1D6C810F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v156 = v4;
  switch(*v2)
  {
    case 1:
      v88 = *(v4 + 16);
      v6 = MEMORY[0x1E69E7CC0];
      if (v88)
      {
        v165 = MEMORY[0x1E69E7CC0];

        result = sub_1D699754C(0, v88, 0);
        v6 = v165;
        v89 = *(v4 + 16);
        v90 = (v4 + 48);
        do
        {
          if (!v89)
          {
            goto LABEL_161;
          }

          v91 = *(v90 - 2);
          v92 = *(v90 - 1);
          v93 = *v90;
          v94 = *(v165 + 16);
          v95 = *(v165 + 24);

          if (v94 >= v95 >> 1)
          {
            result = sub_1D699754C((v95 > 1), v94 + 1, 1);
          }

          *(v165 + 16) = v94 + 1;
          v96 = v165 + 24 * v94;
          *(v96 + 32) = v91;
          *(v96 + 40) = v92;
          *(v96 + 48) = floor(v93);
          --v89;
          v90 += 3;
          --v88;
        }

        while (v88);
      }

      v58 = floor(v3);
      goto LABEL_148;
    case 2:
      v56 = floor(v3);
      v57 = ceil(v3);
      if (v3 >= 0.0)
      {
        v58 = v57;
      }

      else
      {
        v58 = v56;
      }

      v59 = *(v4 + 16);
      v6 = MEMORY[0x1E69E7CC0];
      if (!v59)
      {
        goto LABEL_148;
      }

      v162 = MEMORY[0x1E69E7CC0];

      result = sub_1D699754C(0, v59, 0);
      v6 = v162;
      v60 = *(v4 + 16);
      v61 = (v4 + 48);
      while (v60)
      {
        v62 = *(v61 - 2);
        v63 = *(v61 - 1);
        v64 = floor(*v61);
        v65 = ceil(*v61);
        if (*v61 >= 0)
        {
          v66 = v65;
        }

        else
        {
          v66 = v64;
        }

        v67 = *(v162 + 16);
        v68 = *(v162 + 24);

        if (v67 >= v68 >> 1)
        {
          result = sub_1D699754C((v68 > 1), v67 + 1, 1);
        }

        *(v162 + 16) = v67 + 1;
        v69 = v162 + 24 * v67;
        *(v69 + 32) = v62;
        *(v69 + 40) = v63;
        *(v69 + 48) = v66;
        --v60;
        v61 += 3;
        if (!--v59)
        {

          goto LABEL_148;
        }
      }

      goto LABEL_157;
    case 3:
      v70 = *(v4 + 16);
      v6 = MEMORY[0x1E69E7CC0];
      if (!v70)
      {
        goto LABEL_139;
      }

      v163 = MEMORY[0x1E69E7CC0];

      result = sub_1D699754C(0, v70, 0);
      v6 = v163;
      v71 = *(v4 + 16);
      v72 = (v4 + 48);
      while (v71)
      {
        v73 = *(v72 - 2);
        v74 = *(v72 - 1);
        v75 = *v72;
        v76 = *(v163 + 16);
        v77 = *(v163 + 24);

        if (v76 >= v77 >> 1)
        {
          result = sub_1D699754C((v77 > 1), v76 + 1, 1);
        }

        *(v163 + 16) = v76 + 1;
        v78 = v163 + 24 * v76;
        *(v78 + 32) = v73;
        *(v78 + 40) = v74;
        *(v78 + 48) = round(v75);
        --v71;
        v72 += 3;
        if (!--v70)
        {

LABEL_139:
          v58 = round(v3);
          goto LABEL_148;
        }
      }

      goto LABEL_158;
    case 4:
      v29 = *(v4 + 16);
      v6 = MEMORY[0x1E69E7CC0];
      if (!v29)
      {
        goto LABEL_137;
      }

      v159 = MEMORY[0x1E69E7CC0];

      result = sub_1D699754C(0, v29, 0);
      v6 = v159;
      v30 = *(v4 + 16);
      v31 = (v4 + 48);
      while (v30)
      {
        v32 = *(v31 - 2);
        v33 = *(v31 - 1);
        v34 = *v31;
        v35 = *(v159 + 16);
        v36 = *(v159 + 24);

        if (v35 >= v36 >> 1)
        {
          result = sub_1D699754C((v36 > 1), v35 + 1, 1);
        }

        *(v159 + 16) = v35 + 1;
        v37 = v159 + 24 * v35;
        *(v37 + 32) = v32;
        *(v37 + 40) = v33;
        *(v37 + 48) = rint(v34);
        --v30;
        v31 += 3;
        if (!--v29)
        {

LABEL_137:
          v58 = rint(v3);
          goto LABEL_148;
        }
      }

      goto LABEL_154;
    case 5:
      v97 = *(v4 + 16);
      v6 = MEMORY[0x1E69E7CC0];
      if (!v97)
      {
        goto LABEL_147;
      }

      v166 = MEMORY[0x1E69E7CC0];

      result = sub_1D699754C(0, v97, 0);
      v6 = v166;
      v98 = *(v4 + 16);
      v99 = (v4 + 48);
      while (v98)
      {
        v100 = *(v99 - 2);
        v101 = *(v99 - 1);
        v102 = *v99;
        v103 = *(v166 + 16);
        v104 = *(v166 + 24);

        if (v103 >= v104 >> 1)
        {
          result = sub_1D699754C((v104 > 1), v103 + 1, 1);
        }

        *(v166 + 16) = v103 + 1;
        v105 = v166 + 24 * v103;
        *(v105 + 32) = v100;
        *(v105 + 40) = v101;
        *(v105 + 48) = trunc(v102);
        --v98;
        v99 += 3;
        if (!--v97)
        {

LABEL_147:
          v58 = trunc(v3);
          goto LABEL_148;
        }
      }

      goto LABEL_162;
    case 6:
      v115 = sub_1D7262A9C();
      v117 = v116;
      v118 = *(v4 + 16);
      v119 = MEMORY[0x1E69E7CC0];
      if (!v118)
      {
        goto LABEL_149;
      }

      v168 = MEMORY[0x1E69E7CC0];

      result = sub_1D6997388(0, v118, 0);
      v119 = v168;
      v120 = *(v4 + 16);
      v121 = v4 + 48;
      while (v120)
      {
        v122 = *(v121 - 16);
        v123 = *(v121 - 8);

        v124 = sub_1D7262A9C();
        v127 = *(v168 + 16);
        v126 = *(v168 + 24);
        if (v127 >= v126 >> 1)
        {
          v152 = v115;
          v154 = v124;
          v129 = v125;
          sub_1D6997388((v126 > 1), v127 + 1, 1);
          v125 = v129;
          v115 = v152;
          v124 = v154;
        }

        *(v168 + 16) = v127 + 1;
        v128 = (v168 + 32 * v127);
        v128[4] = v122;
        v128[5] = v123;
        v128[6] = v124;
        v128[7] = v125;
        --v120;
        v121 += 24;
        --v118;
        result = v156;
        if (!v118)
        {

LABEL_149:
          v151 = swift_allocObject();
          *(v151 + 16) = v115;
          *(v151 + 24) = v117;
          *(v151 + 32) = v119;
          result = v151 | 0x5000000000000000;
          goto LABEL_152;
        }
      }

      goto LABEL_164;
    case 7:
      v79 = *(v4 + 16);
      v19 = MEMORY[0x1E69E7CC0];
      if (!v79)
      {
        goto LABEL_140;
      }

      v164 = MEMORY[0x1E69E7CC0];

      result = sub_1D699752C(0, v79, 0);
      v19 = v164;
      v80 = *(v4 + 16);
      v81 = (v4 + 48);
      while (v80)
      {
        v82 = *(v81 - 2);
        v83 = *(v81 - 1);
        v84 = (*v81 & 0x7FFFFFFFFFFFFFFFLL) == 0;
        v86 = *(v164 + 16);
        v85 = *(v164 + 24);

        if (v86 >= v85 >> 1)
        {
          result = sub_1D699752C((v85 > 1), v86 + 1, 1);
        }

        *(v164 + 16) = v86 + 1;
        v87 = v164 + 24 * v86;
        *(v87 + 32) = v82;
        *(v87 + 40) = v83;
        *(v87 + 48) = v84;
        --v80;
        v81 += 3;
        if (!--v79)
        {

LABEL_140:
          v148 = v3 == 0.0;
          goto LABEL_141;
        }
      }

      goto LABEL_159;
    case 8:
      v139 = *(v4 + 16);
      v19 = MEMORY[0x1E69E7CC0];
      if (!v139)
      {
        goto LABEL_150;
      }

      v170 = MEMORY[0x1E69E7CC0];

      result = sub_1D699752C(0, v139, 0);
      v19 = v170;
      v140 = *(v4 + 16);
      v141 = (v4 + 48);
      while (v140)
      {
        v142 = *(v141 - 2);
        v143 = *(v141 - 1);
        v144 = (~*v141 & 0x7FF0000000000000) != 0;
        v145 = *(v170 + 16);
        v146 = *(v170 + 24);

        if (v145 >= v146 >> 1)
        {
          result = sub_1D699752C((v146 > 1), v145 + 1, 1);
        }

        *(v170 + 16) = v145 + 1;
        v147 = v170 + 24 * v145;
        *(v147 + 32) = v142;
        *(v147 + 40) = v143;
        *(v147 + 48) = v144;
        --v140;
        v141 += 3;
        if (!--v139)
        {

LABEL_150:
          result = swift_allocObject();
          *(result + 16) = (*&v3 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
          goto LABEL_151;
        }
      }

      goto LABEL_166;
    case 9:
      v47 = *(v4 + 16);
      v19 = MEMORY[0x1E69E7CC0];
      if (!v47)
      {
        goto LABEL_138;
      }

      v161 = MEMORY[0x1E69E7CC0];

      result = sub_1D699752C(0, v47, 0);
      v19 = v161;
      v48 = *(v4 + 16);
      v49 = (v4 + 48);
      while (v48)
      {
        v50 = *(v49 - 2);
        v51 = *(v49 - 1);
        v52 = (*v49 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000;
        v53 = *(v161 + 16);
        v54 = *(v161 + 24);

        if (v53 >= v54 >> 1)
        {
          result = sub_1D699752C((v54 > 1), v53 + 1, 1);
        }

        *(v161 + 16) = v53 + 1;
        v55 = v161 + 24 * v53;
        *(v55 + 32) = v50;
        *(v55 + 40) = v51;
        *(v55 + 48) = v52;
        --v48;
        v49 += 3;
        if (!--v47)
        {

LABEL_138:
          v148 = fabs(v3) == INFINITY;
LABEL_141:
          v149 = v148;
          result = swift_allocObject();
          *(result + 16) = v149;
          goto LABEL_151;
        }
      }

      goto LABEL_156;
    case 0xA:
      v17 = (*&v3 & 0xFFFFFFFFFFFFFLL) != 0 && (~*&v3 & 0x7FF0000000000000) == 0;
      v130 = *(v4 + 16);
      v19 = MEMORY[0x1E69E7CC0];
      if (!v130)
      {
        goto LABEL_129;
      }

      v153 = v17;
      v169 = MEMORY[0x1E69E7CC0];

      result = sub_1D699752C(0, v130, 0);
      v19 = v169;
      v131 = *(v4 + 16);
      v132 = (v4 + 48);
      while (v131)
      {
        v133 = *(v132 - 2);
        v134 = *(v132 - 1);
        v135 = (*v132 & 0xFFFFFFFFFFFFFLL) != 0 && (~*v132 & 0x7FF0000000000000) == 0;
        v137 = *(v169 + 16);
        v136 = *(v169 + 24);

        if (v137 >= v136 >> 1)
        {
          result = sub_1D699752C((v136 > 1), v137 + 1, 1);
        }

        *(v169 + 16) = v137 + 1;
        v138 = v169 + 24 * v137;
        *(v138 + 32) = v133;
        *(v138 + 40) = v134;
        *(v138 + 48) = v135;
        --v131;
        v132 += 3;
        if (!--v130)
        {
          goto LABEL_128;
        }
      }

      goto LABEL_165;
    case 0xB:
      v17 = (~*&v3 & 0x7FF0000000000000) == 0 && (*&v3 & 0xFFFFFFFFFFFFFLL) != 0 && (*&v3 & 0x8000000000000) == 0;
      v18 = *(v4 + 16);
      v19 = MEMORY[0x1E69E7CC0];
      if (!v18)
      {
        goto LABEL_129;
      }

      v153 = v17;
      v158 = MEMORY[0x1E69E7CC0];

      result = sub_1D699752C(0, v18, 0);
      v19 = v158;
      v20 = *(v4 + 16);
      v21 = (v4 + 48);
      while (v20)
      {
        v22 = *(v21 - 2);
        v23 = *(v21 - 1);
        v25 = (~*v21 & 0x7FF0000000000000) == 0 && (*v21 & 0xFFFFFFFFFFFFFLL) != 0 && (*v21 & 0x8000000000000) == 0;
        v27 = *(v158 + 16);
        v26 = *(v158 + 24);

        if (v27 >= v26 >> 1)
        {
          result = sub_1D699752C((v26 > 1), v27 + 1, 1);
        }

        *(v158 + 16) = v27 + 1;
        v28 = v158 + 24 * v27;
        *(v28 + 32) = v22;
        *(v28 + 40) = v23;
        *(v28 + 48) = v25;
        --v20;
        v21 += 3;
        if (!--v18)
        {
          goto LABEL_128;
        }
      }

      __break(1u);
LABEL_154:
      __break(1u);
      goto LABEL_155;
    case 0xC:
      v17 = ((*&v3 >> 52) & 0x7FFLL) != 0x7FF && ((*&v3 >> 52) & 0x7FFLL) != 0;
      v38 = *(v4 + 16);
      v19 = MEMORY[0x1E69E7CC0];
      if (!v38)
      {
        goto LABEL_129;
      }

      v153 = v17;
      v160 = MEMORY[0x1E69E7CC0];

      result = sub_1D699752C(0, v38, 0);
      v19 = v160;
      v39 = *(v4 + 16);
      v40 = (v4 + 48);
      while (v39)
      {
        v41 = *(v40 - 2);
        v42 = *(v40 - 1);
        v43 = ((*v40 >> 52) & 0x7FFLL) != 0x7FF && ((*v40 >> 52) & 0x7FFLL) != 0;
        v45 = *(v160 + 16);
        v44 = *(v160 + 24);

        if (v45 >= v44 >> 1)
        {
          result = sub_1D699752C((v44 > 1), v45 + 1, 1);
        }

        *(v160 + 16) = v45 + 1;
        v46 = v160 + 24 * v45;
        *(v46 + 32) = v41;
        *(v46 + 40) = v42;
        *(v46 + 48) = v43;
        --v39;
        v40 += 3;
        if (!--v38)
        {
          goto LABEL_128;
        }
      }

LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
      goto LABEL_160;
    case 0xD:
      v17 = (*&v3 & 0xFFFFFFFFFFFFFLL) != 0 && (*&v3 & 0x7FF0000000000000) == 0;
      v106 = *(v4 + 16);
      v19 = MEMORY[0x1E69E7CC0];
      if (!v106)
      {
        goto LABEL_129;
      }

      v153 = v17;
      v167 = MEMORY[0x1E69E7CC0];

      result = sub_1D699752C(0, v106, 0);
      v19 = v167;
      v107 = *(v4 + 16);
      v108 = (v4 + 48);
      while (v107)
      {
        v109 = *(v108 - 2);
        v110 = *(v108 - 1);
        v111 = (*v108 & 0xFFFFFFFFFFFFFLL) != 0 && (*v108 & 0x7FF0000000000000) == 0;
        v112 = *(v167 + 16);
        v113 = *(v167 + 24);

        if (v112 >= v113 >> 1)
        {
          result = sub_1D699752C((v113 > 1), v112 + 1, 1);
        }

        *(v167 + 16) = v112 + 1;
        v114 = v167 + 24 * v112;
        *(v114 + 32) = v109;
        *(v114 + 40) = v110;
        *(v114 + 48) = v111;
        --v107;
        v108 += 3;
        if (!--v106)
        {
LABEL_128:

          v17 = v153;
LABEL_129:
          result = swift_allocObject();
          *(result + 16) = v17;
LABEL_151:
          *(result + 24) = v19;
          goto LABEL_152;
        }
      }

      goto LABEL_163;
    default:
      v5 = *(v4 + 16);
      v6 = MEMORY[0x1E69E7CC0];
      if (!v5)
      {
        goto LABEL_145;
      }

      v157 = MEMORY[0x1E69E7CC0];

      result = sub_1D699754C(0, v5, 0);
      v6 = v157;
      v8 = *(v4 + 16);
      v9 = (v4 + 48);
      break;
  }

  while (v8)
  {
    v10 = *(v9 - 2);
    v11 = *(v9 - 1);
    v12 = *v9;
    v13 = *(v157 + 16);
    v14 = *(v157 + 24);

    if (v13 >= v14 >> 1)
    {
      result = sub_1D699754C((v14 > 1), v13 + 1, 1);
    }

    *(v157 + 16) = v13 + 1;
    v15 = v157 + 24 * v13;
    *(v15 + 32) = v10;
    *(v15 + 40) = v11;
    *(v15 + 48) = ceil(v12);
    --v8;
    v9 += 3;
    if (!--v5)
    {

LABEL_145:
      v58 = ceil(v3);
LABEL_148:
      v150 = swift_allocObject();
      *(v150 + 16) = v58;
      *(v150 + 24) = v6;
      result = v150 | 0x3000000000000000;
LABEL_152:
      *a2 = result;
      return result;
    }
  }

LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
  return result;
}

uint64_t FormatOptionsNodeStatementModifier.Float.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D6C81E4C()
{
  result = qword_1EC894440;
  if (!qword_1EC894440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894440);
  }

  return result;
}

unint64_t sub_1D6C81EA0(uint64_t a1)
{
  result = sub_1D6C81EC8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6C81EC8()
{
  result = qword_1EC894448;
  if (!qword_1EC894448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894448);
  }

  return result;
}

unint64_t sub_1D6C81F1C(void *a1)
{
  a1[1] = sub_1D66590F8();
  a1[2] = sub_1D6706AE4();
  result = sub_1D6C81E4C();
  a1[3] = result;
  return result;
}

uint64_t FeedChannelCluster.init(tag:scoredItems:clusteringRules:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t SharingActivityItemFactoryWithTracker.__allocating_init(tracker:factory:)(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  sub_1D5B7DDE8(a2, v4 + 24);
  return v4;
}

uint64_t SharingActivityItemFactoryWithTracker.init(tracker:factory:)(uint64_t a1, __int128 *a2)
{
  *(v2 + 16) = a1;
  sub_1D5B7DDE8(a2, v2 + 24);
  return v2;
}

uint64_t SharingActivityItemFactoryWithTracker.createActivityItemSources(headline:selectedText:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[6];
  v8 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v7);
  return (*(v8 + 8))(a1, a2, a3, v7, v8);
}

void SharingActivityItemFactoryWithTracker.createLinkPresentationSource(headline:selectedText:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = v4[6];
  v10 = v4[7];
  __swift_project_boxed_opaque_existential_1(v4 + 3, v9);
  v11 = (*(v10 + 16))(a1, a2, a3, v9, v10);
  sub_1D673FC74();
  a4[3] = v12;
  *a4 = v11;
}

uint64_t SharingActivityItemFactoryWithTracker.createActivityItemSources(issue:)(uint64_t a1)
{
  v3 = v1[6];
  v4 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v3);
  return (*(v4 + 32))(a1, v3, v4);
}

uint64_t SharingActivityItemFactoryWithTracker.createActivityItemSources(channel:)(uint64_t a1)
{
  v3 = v1[6];
  v4 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v3);
  return (*(v4 + 64))(a1, v3, v4);
}

uint64_t SharingActivityItemFactoryWithTracker.createActivityItemSources(feedDescriptor:)(uint64_t a1)
{
  v3 = v1[6];
  v4 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v3);
  return (*(v4 + 72))(a1, v3, v4);
}

uint64_t SharingActivityItemFactoryWithTracker.createActivityItemSources(recipe:)(uint64_t a1)
{
  v3 = v1[6];
  v4 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v3);
  return (*(v4 + 40))(a1, v3, v4);
}

uint64_t SharingActivityItemFactoryWithTracker.createActivityItemSources(puzzle:shareData:)(uint64_t a1, _OWORD *a2)
{
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v9[0] = a2[2];
  *(v9 + 10) = *(a2 + 42);
  v5 = v2[6];
  v6 = v2[7];
  __swift_project_boxed_opaque_existential_1(v2 + 3, v5);
  return (*(v6 + 48))(a1, v8, v5, v6);
}

uint64_t SharingActivityItemFactoryWithTracker.createActivityItemSources(puzzleType:)(uint64_t a1)
{
  v3 = v1[6];
  v4 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v3);
  return (*(v4 + 56))(a1, v3, v4);
}

void SharingActivityItemFactoryWithTracker.createLinkPresentationSource(issue:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = v2[6];
  v6 = v2[7];
  __swift_project_boxed_opaque_existential_1(v2 + 3, v5);
  v7 = (*(v6 + 80))(a1, v5, v6);
  sub_1D673FC74();
  a2[3] = v8;
  *a2 = v7;
}

void SharingActivityItemFactoryWithTracker.createLinkPresentationSource(channel:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = v2[6];
  v6 = v2[7];
  __swift_project_boxed_opaque_existential_1(v2 + 3, v5);
  v7 = (*(v6 + 88))(a1, v5, v6);
  sub_1D673FC74();
  a2[3] = v8;
  *a2 = v7;
}

uint64_t SharingActivityItemFactoryWithTracker.createActivityItem(for:feedItemIdentifier:type:sourceView:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v10 = *a4;
  v11 = v5[6];
  v12 = v5[7];
  __swift_project_boxed_opaque_existential_1(v5 + 3, v11);
  v14 = v10;
  return sub_1D6BD2180(a1, a2, a3, &v14, v5[2], a5, v11, v12);
}

uint64_t SharingActivityItemFactoryWithTracker.createActivityItem(for:type:sourceView:sourceItem:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  v9 = v4[6];
  v10 = v4[7];
  __swift_project_boxed_opaque_existential_1(v4 + 3, v9);
  v12 = v8;
  return (*(v10 + 128))(a1, &v12, v4[2], a3, a4, v9, v10);
}

{
  v8 = *a2;
  v9 = v4[6];
  v10 = v4[7];
  __swift_project_boxed_opaque_existential_1(v4 + 3, v9);
  v12 = v8;
  return (*(v10 + 160))(a1, &v12, v4[2], a3, a4, v9, v10);
}

{
  v8 = *a2;
  v9 = v4[6];
  v10 = v4[7];
  __swift_project_boxed_opaque_existential_1(v4 + 3, v9);
  v12 = v8;
  return (*(v10 + 168))(a1, &v12, v4[2], a3, a4, v9, v10);
}

uint64_t SharingActivityItemFactoryWithTracker.createActivityItem(for:type:sourceView:)(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = v3[6];
  v8 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v7);
  v10 = v6;
  return (*(v8 + 136))(a1, &v10, v3[2], a3, v7, v8);
}

uint64_t SharingActivityItemFactoryWithTracker.createActivityItem(for:type:sourceView:sourceItem:)(uint64_t a1)
{
  v3 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
  return (*(v3 + 152))(a1);
}

uint64_t SharingActivityItemFactoryWithTracker.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  return v0;
}

uint64_t SharingActivityItemFactoryWithTracker.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocClassInstance();
}

id sub_1D6C828A8()
{
  v1 = OBJC_IVAR____TtC8NewsFeed38DebugFormatInventoryTreeViewController____lazy_storage___inventoryTreeViewController;
  v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatInventoryTreeViewController____lazy_storage___inventoryTreeViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatInventoryTreeViewController____lazy_storage___inventoryTreeViewController);
  }

  else
  {
    v4 = v0;
    sub_1D6C82984();
    type metadata accessor for DebugFormatInventoryTree();
    sub_1D6C84FCC(&qword_1EC894480, type metadata accessor for DebugFormatInventoryTree);
    sub_1D7260F8C();
    sub_1D6C84C8C();
    v6 = objc_allocWithZone(v5);
    v7 = sub_1D726126C();
    v8 = *(v0 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void *sub_1D6C82984()
{
  v1 = OBJC_IVAR____TtC8NewsFeed38DebugFormatInventoryTreeViewController____lazy_storage___model;
  if (*(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatInventoryTreeViewController____lazy_storage___model))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatInventoryTreeViewController____lazy_storage___model);
  }

  else
  {
    type metadata accessor for DebugFormatInventoryTree();
    swift_allocObject();

    v2 = sub_1D7177780(v3);

    *(v0 + v1) = v2;
  }

  return v2;
}

id sub_1D6C82A2C()
{
  v1 = OBJC_IVAR____TtC8NewsFeed38DebugFormatInventoryTreeViewController____lazy_storage___versionBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatInventoryTreeViewController____lazy_storage___versionBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatInventoryTreeViewController____lazy_storage___versionBarButtonItem);
  }

  else
  {
    v4 = sub_1D6C82A8C();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1D6C82A8C()
{
  v74 = type metadata accessor for FormatVersioningModeRelease(0);
  MEMORY[0x1EEE9AC00](v74, v1);
  v73 = &v67 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C84EA0(0, &unk_1EDF43AB0, MEMORY[0x1E69D6638], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v72 = &v67 - v5;
  v6 = sub_1D725ACBC();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v71 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1D725BD1C();
  v9 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77, v10);
  v76 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FormatVersioningModeSelection(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v78 = &v67 - v19;
  type metadata accessor for DebugFormatBarButtonItem();
  v20 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithTitle:0 style:0 target:v0 action:sel_doVersionsWithSender_];
  v21 = qword_1EC87D518;
  v68 = v20;
  if (v21 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v22 = off_1EC883688;
  v23 = *(off_1EC883688 + 2);
  v24 = MEMORY[0x1E69E7CC0];
  if (v23)
  {
    v80 = MEMORY[0x1E69E7CC0];

    sub_1D5BFC364(0, v23, 0);
    v24 = v80;
    v25 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v67 = v22;
    v26 = v22 + v25;
    v75 = (v9 + 8);
    v69 = (v9 + 32);
    v79 = *(v13 + 72);
    v27 = v78;
    v70 = v16;
    while (1)
    {
      sub_1D6C84F04(v26, v27);
      sub_1D6C84F04(v27, v16);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 2)
      {
        if (EnumCaseMultiPayload != 3)
        {
          if (EnumCaseMultiPayload == 4)
          {
            if (qword_1EDF3CA50 != -1)
            {
              swift_once();
            }

            __swift_project_value_buffer(v77, qword_1EDF3CA58);
            sub_1D6C84FCC(&unk_1EDF3B8D0, MEMORY[0x1E69D6B38]);
            v34 = sub_1D72644BC();
            v36 = v38;
          }

          else
          {
            if (qword_1EDF3CA50 != -1)
            {
              swift_once();
            }

            v45 = v77;
            __swift_project_value_buffer(v77, qword_1EDF3CA58);
            sub_1D725BCFC();
            v46 = sub_1D725B17C();
            (*(*(v46 - 8) + 56))(v72, 1, 1, v46);
            v47 = v76;
            sub_1D725BCEC();
            sub_1D6C84FCC(&unk_1EDF3B8D0, MEMORY[0x1E69D6B38]);
            v34 = sub_1D72644BC();
            v36 = v48;
            (*v75)(v47, v45);
          }

          goto LABEL_20;
        }

        v36 = 0xE600000000000000;
        v34 = 0x746365746544;
      }

      else
      {
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v29 = v73;
            sub_1D6C84F68(v16, v73);
            sub_1D725BCFC();
            v30 = sub_1D725B17C();
            (*(*(v30 - 8) + 56))(v72, 1, 1, v30);
            v31 = v12;
            v32 = v76;
            sub_1D725BCEC();
            sub_1D6C84FCC(&unk_1EDF3B8D0, MEMORY[0x1E69D6B38]);
            v33 = v77;
            v34 = sub_1D72644BC();
            v36 = v35;
            v37 = v32;
            v12 = v31;
            v16 = v70;
            (*v75)(v37, v33);
            sub_1D6C85014(v29, type metadata accessor for FormatVersioningModeRelease);
          }

          else
          {
            v42 = v76;
            v43 = v77;
            (*v69)(v76, v16, v77);
            sub_1D6C84FCC(&unk_1EDF3B8D0, MEMORY[0x1E69D6B38]);
            v34 = sub_1D72644BC();
            v36 = v44;
            (*v75)(v42, v43);
          }

LABEL_20:
          v27 = v78;
          goto LABEL_21;
        }

        v39 = v73;
        sub_1D6C84F68(v16, v73);
        sub_1D6C84FCC(&unk_1EDF3B8D0, MEMORY[0x1E69D6B38]);
        v40 = sub_1D72644BC();
        v27 = v78;
        v34 = v40;
        v36 = v41;
        sub_1D6C85014(v39, type metadata accessor for FormatVersioningModeRelease);
      }

LABEL_21:
      sub_1D6C85014(v27, type metadata accessor for FormatVersioningModeSelection);
      v80 = v24;
      v50 = *(v24 + 16);
      v49 = *(v24 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_1D5BFC364((v49 > 1), v50 + 1, 1);
        v27 = v78;
        v24 = v80;
      }

      *(v24 + 16) = v50 + 1;
      v51 = v24 + 16 * v50;
      *(v51 + 32) = v34;
      *(v51 + 40) = v36;
      v26 += v79;
      if (!--v23)
      {

        break;
      }
    }
  }

  sub_1D5B86020(v24);

  v52 = sub_1D7262AFC();

  v53 = v68;
  [v68 setPossibleTitles_];

  sub_1D6C84EA0(0, &qword_1EDF194E0, sub_1D5C09DD4, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7270C10;
  v55 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v56 = objc_opt_self();
  v57 = v55;
  v58 = [v56 systemFontOfSize_];
  v59 = sub_1D5B5A498(0, &qword_1EDF1A720);
  *(inited + 40) = v58;
  v60 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v59;
  *(inited + 72) = v60;
  v61 = objc_opt_self();
  v62 = v60;
  v63 = [v61 secondaryLabelColor];
  *(inited + 104) = sub_1D5B5A498(0, qword_1EDF1A6A0);
  *(inited + 80) = v63;
  sub_1D5C09CEC(inited);
  swift_setDeallocating();
  sub_1D5C09DD4();
  swift_arrayDestroy();
  type metadata accessor for Key(0);
  sub_1D6C84FCC(&qword_1EDF1A8E0, type metadata accessor for Key);
  v64 = sub_1D7261D2C();
  [v53 setTitleTextAttributes:v64 forState:0];

  v65 = sub_1D7261D2C();

  [v53 setTitleTextAttributes:v65 forState:1];

  return v53;
}

id sub_1D6C8354C(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC8NewsFeed38DebugFormatInventoryTreeViewController_styler;
  type metadata accessor for DebugFormatStyler();
  v6 = swift_allocObject();
  *&v2[v5] = v6;
  *&v2[OBJC_IVAR____TtC8NewsFeed38DebugFormatInventoryTreeViewController____lazy_storage___inventoryTreeViewController] = 0;
  *&v2[OBJC_IVAR____TtC8NewsFeed38DebugFormatInventoryTreeViewController____lazy_storage___model] = 0;
  *&v2[OBJC_IVAR____TtC8NewsFeed38DebugFormatInventoryTreeViewController____lazy_storage___versionBarButtonItem] = 0;
  *(v6 + 16) = 0;
  v7 = OBJC_IVAR____TtC8NewsFeed38DebugFormatInventoryTreeViewController__searchTerm;
  v10 = 0;
  v11 = 0xE000000000000000;
  sub_1D6C84D3C(0, &qword_1EC883498, MEMORY[0x1E69E6158], MEMORY[0x1E69D6748]);
  swift_allocObject();
  *&v2[v7] = sub_1D725B2FC();
  *&v2[OBJC_IVAR____TtC8NewsFeed38DebugFormatInventoryTreeViewController_editor] = a1;
  v9.receiver = v2;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, 0, 0);
}

id sub_1D6C83684()
{
  v1 = v0;
  v20.receiver = v0;
  v20.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v20, sel_viewDidLoad);
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = result;
  v4 = [objc_opt_self() systemBackgroundColor];
  [v3 setBackgroundColor_];

  v5 = [v1 navigationItem];
  v6 = sub_1D726203C();
  [v5 setTitle_];

  sub_1D6C84D3C(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D728AF30;
  v8 = objc_opt_self();
  *(v7 + 32) = [v8 flexibleSpaceItem];
  *(v7 + 40) = sub_1D6C82A2C();
  *(v7 + 48) = [v8 flexibleSpaceItem];
  sub_1D5B5A498(0, &qword_1EDF04590);
  v9 = sub_1D726265C();

  [v1 setToolbarItems_];

  v10 = sub_1D6C828A8();
  [v1 addChildViewController_];

  result = [v1 view];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v11 = result;
  v12 = OBJC_IVAR____TtC8NewsFeed38DebugFormatInventoryTreeViewController____lazy_storage___inventoryTreeViewController;
  result = [*&v1[OBJC_IVAR____TtC8NewsFeed38DebugFormatInventoryTreeViewController____lazy_storage___inventoryTreeViewController] view];
  if (result)
  {
    v13 = result;
    [v11 addSubview_];

    [*&v1[v12] didMoveToParentViewController_];
    swift_beginAccess();

    sub_1D725B33C();

    sub_1D725B2EC();

    sub_1D725B33C();

    sub_1D725B2EC();

    sub_1D725B33C();

    sub_1D725B2EC();

    sub_1D725B33C();

    sub_1D725B35C();

    v14 = sub_1D6C82984();
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = v14[3];
    v14[3] = sub_1D6C84D8C;
    v14[4] = v15;

    sub_1D5B74328(v16);

    v17 = *&v1[OBJC_IVAR____TtC8NewsFeed38DebugFormatInventoryTreeViewController____lazy_storage___model];
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = *(v17 + 40);
    *(v17 + 40) = sub_1D6C84D94;
    *(v17 + 48) = v18;

    sub_1D5B74328(v19);
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_1D6C83B6C()
{
  v0 = sub_1D6C82A2C();
  type metadata accessor for FormatDerivedDataCompilerSettings();
  sub_1D60DC07C();
  v1 = sub_1D726203C();

  [v0 setTitle_];
}

void sub_1D6C83C20()
{
  v1 = v0;
  sub_1D6C84EA0(0, &unk_1EC8858E0, type metadata accessor for DebugFormatFileDirectoryMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v24[-v4];
  v6 = objc_opt_self();
  v7 = [v6 secondaryLabelColor];

  sub_1D725B31C();

  v8 = type metadata accessor for DebugFormatFileDirectoryMetadata(0);
  v9 = (*(*(v8 - 8) + 48))(v5, 1, v8);
  sub_1D6C84E30(v5, &unk_1EC8858E0, type metadata accessor for DebugFormatFileDirectoryMetadata);
  if (v9 != 1)
  {

    sub_1D725B31C();

    if ((v24[15] & 1) == 0)
    {
      v10 = [v6 systemRedColor];

      v7 = v10;
    }
  }

  sub_1D6C84EA0(0, &qword_1EDF194E0, sub_1D5C09DD4, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7270C10;
  v12 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 systemFontOfSize_];
  v16 = sub_1D5B5A498(0, &qword_1EDF1A720);
  *(inited + 40) = v15;
  v17 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v16;
  *(inited + 72) = v17;
  *(inited + 104) = sub_1D5B5A498(0, qword_1EDF1A6A0);
  *(inited + 80) = v7;
  v18 = v17;
  v19 = v7;
  sub_1D5C09CEC(inited);
  swift_setDeallocating();
  sub_1D5C09DD4();
  swift_arrayDestroy();
  v20 = sub_1D6C82A2C();
  type metadata accessor for Key(0);
  sub_1D6C84FCC(&qword_1EDF1A8E0, type metadata accessor for Key);
  v21 = sub_1D7261D2C();
  [v20 setTitleTextAttributes:v21 forState:0];

  v22 = *(v1 + OBJC_IVAR____TtC8NewsFeed38DebugFormatInventoryTreeViewController____lazy_storage___versionBarButtonItem);
  v23 = sub_1D7261D2C();

  [v22 setTitleTextAttributes:v23 forState:1];
}

uint64_t sub_1D6C83FE0()
{
  sub_1D6C82984();

  sub_1D614F964();
  swift_getKeyPath();
  swift_getKeyPath();
  return sub_1D72600DC();
}

uint64_t sub_1D6C84068(uint64_t a1, uint64_t a2)
{
  sub_1D6C84EA0(0, &qword_1EC88DD10, type metadata accessor for DebugFormatEditorWorkspaceGroup, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v12 - v9;
  sub_1D6C82984();
  sub_1D6C84D9C(a2, v10);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D6C84D9C(v10, v6);
  sub_1D72600DC();
  return sub_1D6C84E30(v10, &qword_1EC88DD10, type metadata accessor for DebugFormatEditorWorkspaceGroup);
}

void sub_1D6C841A8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC8NewsFeed38DebugFormatInventoryTreeViewController_editor);
    objc_allocWithZone(type metadata accessor for DebugFormatPackageTreeViewController());

    v5 = sub_1D7142FA8(v4, a1);
    v6 = [v3 navigationController];
    if (v6)
    {
      v7 = v6;
      [v6 showViewController:v5 sender:0];
    }
  }
}

void sub_1D6C84280()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1D6C842D4();
  }
}

void sub_1D6C842D4()
{
  v1 = objc_allocWithZone(type metadata accessor for DebugFormatWorkspaceViewController());

  v3 = sub_1D6C46574(v2);
  [v3 setPreferredDisplayMode_];
  [v3 setModalPresentationStyle_];
  [v3 setMinimumPrimaryColumnWidth_];
  [v3 setPreferredPrimaryColumnWidth_];
  [v3 setMaximumPrimaryColumnWidth_];
  [v0 presentViewController:v3 animated:1 completion:0];
}

void sub_1D6C845F0(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(type metadata accessor for DebugFormatVersioningModeViewController());

  v6 = sub_1D62EAD84(v5);

  v7 = [objc_allocWithZone(type metadata accessor for DebugFormatNavigationController()) initWithRootViewController_];

  v9 = v7;
  [v9 setModalPresentationStyle_];
  v8 = [v9 popoverPresentationController];

  if (v8)
  {
    [v8 setBarButtonItem_];
  }

  [v2 presentViewController:v9 animated:1 completion:0];
}

uint64_t sub_1D6C8484C(void *a1)
{
  v2 = sub_1D7257A4C();
  v3 = *(v2 - 8);
  *&v5 = MEMORY[0x1EEE9AC00](v2, v4).n128_u64[0];
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 searchBar];
  v9 = [v8 text];

  if (v9)
  {
    v10 = sub_1D726207C();
    v12 = v11;

    v16 = v10;
    v17 = v12;
    sub_1D725795C();
    sub_1D5BF4D9C();
    v9 = sub_1D7263A4C();
    v14 = v13;
    (*(v3 + 8))(v7, v2);
  }

  else
  {
    v14 = 0xE000000000000000;
  }

  v16 = v9;
  v17 = v14;

  sub_1D725B32C();
}

id sub_1D6C84A60()
{
  v0 = sub_1D726203C();
  v1 = [objc_opt_self() systemImageNamed_];

  return v1;
}

uint64_t sub_1D6C84ACC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();
}

uint64_t sub_1D6C84B48(uint64_t a1)
{
  sub_1D6C84EA0(0, &qword_1EC88DD10, type metadata accessor for DebugFormatEditorWorkspaceGroup, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v11 - v8;
  sub_1D6C84D9C(a1, &v11 - v8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D6C84D9C(v9, v5);

  sub_1D72600DC();
  return sub_1D6C84E30(v9, &qword_1EC88DD10, type metadata accessor for DebugFormatEditorWorkspaceGroup);
}

void sub_1D6C84C8C()
{
  if (!qword_1EC894488)
  {
    sub_1D6C84CE8();
    v0 = sub_1D726127C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC894488);
    }
  }
}

unint64_t sub_1D6C84CE8()
{
  result = qword_1EC894490;
  if (!qword_1EC894490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894490);
  }

  return result;
}

void sub_1D6C84D3C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D6C84D9C(uint64_t a1, uint64_t a2)
{
  sub_1D6C84EA0(0, &qword_1EC88DD10, type metadata accessor for DebugFormatEditorWorkspaceGroup, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6C84E30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D6C84EA0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D6C84EA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6C84F04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatVersioningModeSelection(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6C84F68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatVersioningModeRelease(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6C84FCC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D6C85014(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D6C85074()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8NewsFeed38DebugFormatInventoryTreeViewController_styler;
  type metadata accessor for DebugFormatStyler();
  v3 = swift_allocObject();
  *(v1 + v2) = v3;
  *(v1 + OBJC_IVAR____TtC8NewsFeed38DebugFormatInventoryTreeViewController____lazy_storage___inventoryTreeViewController) = 0;
  *(v1 + OBJC_IVAR____TtC8NewsFeed38DebugFormatInventoryTreeViewController____lazy_storage___model) = 0;
  *(v1 + OBJC_IVAR____TtC8NewsFeed38DebugFormatInventoryTreeViewController____lazy_storage___versionBarButtonItem) = 0;
  *(v3 + 16) = 0;
  v4 = OBJC_IVAR____TtC8NewsFeed38DebugFormatInventoryTreeViewController__searchTerm;
  sub_1D6C84D3C(0, &qword_1EC883498, MEMORY[0x1E69E6158], MEMORY[0x1E69D6748]);
  swift_allocObject();
  *(v1 + v4) = sub_1D725B2FC();
  sub_1D726402C();
  __break(1u);
}

uint64_t GenericDataVisualization.init(responseItem:embedUrl:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1[1];
  v6 = a1[2];
  *a3 = *a1;
  *(a3 + 1) = v5;
  v7 = type metadata accessor for GenericDataVisualization();
  v8 = *(v7 + 20);
  v9 = sub_1D72585BC();
  result = (*(*(v9 - 8) + 32))(&a3[v8], a2, v9);
  *&a3[*(v7 + 24)] = v6;
  return result;
}

uint64_t GenericDataVisualization.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t GenericDataVisualization.embedUrl.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GenericDataVisualization() + 20);
  v4 = sub_1D72585BC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GenericDataVisualization.urlDataSources.getter()
{
  type metadata accessor for GenericDataVisualization();
}

uint64_t GenericDataVisualization.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v27 = sub_1D72585BC();
  v25 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C85A2C(0, &qword_1EC894498, MEMORY[0x1E69E6F48]);
  v28 = v6;
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for GenericDataVisualization();
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6C85700();
  v14 = v29;
  sub_1D7264B0C();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = a1;
  v23 = v10;
  v15 = v26;
  v16 = v27;
  v32 = 0;
  v17 = v28;
  *v13 = sub_1D72642BC();
  v13[1] = v18;
  v22 = v18;
  v31 = 1;
  sub_1D5B6ACD0(&unk_1EDF45B50, MEMORY[0x1E6968FB0]);
  sub_1D726431C();
  (*(v25 + 32))(v13 + *(v23 + 20), v5, v16);
  type metadata accessor for WebEmbedDataVisualizationURLDataSource();
  v30 = 2;
  sub_1D5B6ACD0(&unk_1EDF065B0, type metadata accessor for WebEmbedDataVisualizationURLDataSource);
  v19 = sub_1D726420C();
  (*(v15 + 8))(v9, v17);
  v20 = v24;
  *(v13 + *(v23 + 24)) = v19;
  sub_1D6C85754(v13, v20);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return sub_1D6C857B8(v13);
}

unint64_t sub_1D6C85700()
{
  result = qword_1EC8944A0;
  if (!qword_1EC8944A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8944A0);
  }

  return result;
}

uint64_t sub_1D6C85754(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenericDataVisualization();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6C857B8(uint64_t a1)
{
  v2 = type metadata accessor for GenericDataVisualization();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t GenericDataVisualization.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D6C85A2C(0, &qword_1EC8944A8, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6C85700();
  sub_1D7264B5C();
  v16 = 0;
  sub_1D72643FC();
  if (!v2)
  {
    v11 = type metadata accessor for GenericDataVisualization();
    v15 = 1;
    sub_1D72585BC();
    sub_1D5B6ACD0(&unk_1EDF45B70, MEMORY[0x1E6968FB0]);
    sub_1D726443C();
    v14 = *(v3 + *(v11 + 24));
    v13[15] = 2;
    sub_1D5B4DA90();
    sub_1D602797C();
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

void sub_1D6C85A2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6C85700();
    v7 = a3(a1, &type metadata for GenericDataVisualization.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D6C85A90(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x6C72556465626D65;
  if (v2 != 1)
  {
    v4 = 0x53617461446C7275;
    v3 = 0xEE0073656372756FLL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x696669746E656469;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEA00000000007265;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6C72556465626D65;
  if (*a2 != 1)
  {
    v8 = 0x53617461446C7275;
    v7 = 0xEE0073656372756FLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x696669746E656469;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEA00000000007265;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D6C85BAC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6C85C60()
{
  sub_1D72621EC();
}

uint64_t sub_1D6C85D00()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6C85DB0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6C86214();
  *a1 = result;
  return result;
}

void sub_1D6C85DE0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007265;
  v4 = 0xE800000000000000;
  v5 = 0x6C72556465626D65;
  if (v2 != 1)
  {
    v5 = 0x53617461446C7275;
    v4 = 0xEE0073656372756FLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x696669746E656469;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D6C85E50()
{
  v1 = 0x6C72556465626D65;
  if (*v0 != 1)
  {
    v1 = 0x53617461446C7275;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1D6C85EBC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6C86214();
  *a1 = result;
  return result;
}

uint64_t sub_1D6C85EE4(uint64_t a1)
{
  v2 = sub_1D6C85700();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6C85F20(uint64_t a1)
{
  v2 = sub_1D6C85700();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenericDataVisualization.hashValue.getter()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D6C85FD8()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D6C8601C()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t static GenericDataVisualization.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC();
  }
}

unint64_t sub_1D6C86110()
{
  result = qword_1EC8944B8;
  if (!qword_1EC8944B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8944B8);
  }

  return result;
}

unint64_t sub_1D6C86168()
{
  result = qword_1EC8944C0;
  if (!qword_1EC8944C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8944C0);
  }

  return result;
}

unint64_t sub_1D6C861C0()
{
  result = qword_1EC8944C8;
  if (!qword_1EC8944C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8944C8);
  }

  return result;
}

uint64_t sub_1D6C86214()
{
  v0 = sub_1D72641CC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t FormatContentResource.Resolved.init(identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D72585BC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FormatContentResource.Resolved();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = 0x7373612D7377656ELL;
  v28 = 0xEA00000000007465;
  MEMORY[0x1DA6F9910](3092282, 0xE300000000000000, v17);
  MEMORY[0x1DA6F9910](a1, a2);
  sub_1D725855C();

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {

    sub_1D5E3E404(v8);
    v20 = 1;
    v21 = v26;
  }

  else
  {
    v22 = *(v10 + 32);
    v22(v13, v8, v9);
    *v19 = a1;
    *(v19 + 1) = a2;
    v22(&v19[*(v14 + 20)], v13, v9);
    v23 = v26;
    sub_1D6C86544(v19, v26);
    v20 = 0;
    v21 = v23;
  }

  return (*(v15 + 56))(v21, v20, 1, v14);
}

uint64_t type metadata accessor for FormatContentResource.Resolved()
{
  result = qword_1EDF29B20;
  if (!qword_1EDF29B20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6C86544(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatContentResource.Resolved();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t FormatContentResource.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatContentResource.Resolved.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatContentResource.Resolved.assetURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FormatContentResource.Resolved() + 20);
  v4 = sub_1D72585BC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1D6C866BC()
{
  result = sub_1D72585BC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D6C8674C(uint64_t a1)
{
  result = sub_1D6C86774();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6C86774()
{
  result = qword_1EC8944D0;
  if (!qword_1EC8944D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8944D0);
  }

  return result;
}

unint64_t sub_1D6C867C8(void *a1)
{
  a1[1] = sub_1D6660384();
  a1[2] = sub_1D6705540();
  result = sub_1D6C86800();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6C86800()
{
  result = qword_1EC8944D8;
  if (!qword_1EC8944D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8944D8);
  }

  return result;
}

void sub_1D6C86894()
{
  v1 = sub_1D725A19C();
  v3 = [v0 view];
  if (v3)
  {
    v4 = v3;
    v5 = *&v0[OBJC_IVAR____TtC8NewsFeed31DebugFormatCanvasViewController_scrollView];
    v6 = sub_1D6A9E528();
    [v4 bounds];
    v8 = v7;
    v10 = v9;
    [v5 layoutMargins];
    sub_1D6F79CFC(v6);
    sub_1D7262E0C();
    sub_1D7262DFC();
    [v5 safeAreaInsets];
    v12 = v11;
    v14 = v13;
    if ((v6 - 33) >= 2u)
    {
      sub_1D7262DFC();
      sub_1D7262E0C();
      v12 = v15;
      v14 = v16;
    }

    sub_1D6E24200(v5, v8, v10, v12, v14);
    sub_1D725A64C();
    sub_1D726332C();
    v17 = [v4 window];
    if (!v17)
    {
      v17 = sub_1D726342C();
    }

    v18 = v17;
    [v17 bounds];
    v25 = v20;
    v26 = v19;

    v21 = [objc_opt_self() mainScreen];
    [v21 nativeBounds];

    v22 = [v4 traitCollection];
    [v4 effectiveUserInterfaceLayoutDirection];
    v23 = [v4 traitCollection];
    v24 = [v23 preferredContentSizeCategory];

    if (qword_1EDF386E8 != -1)
    {
      swift_once();
    }

    sub_1D725972C();

    sub_1D7259E5C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D6C86C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 1280) = v4;
  *(v5 + 1272) = a4;
  *(v5 + 1264) = a3;
  *(v5 + 1256) = a2;
  v7 = sub_1D7259D1C();
  *(v5 + 1288) = v7;
  *(v5 + 1296) = *(v7 - 8);
  *(v5 + 1304) = swift_task_alloc();
  v8 = sub_1D7259CFC();
  *(v5 + 1312) = v8;
  *(v5 + 1320) = *(v8 - 8);
  *(v5 + 1328) = swift_task_alloc();
  v9 = sub_1D7259F5C();
  *(v5 + 1336) = v9;
  *(v5 + 1344) = *(v9 - 8);
  *(v5 + 1352) = swift_task_alloc();
  *(v5 + 1360) = swift_task_alloc();
  *(v5 + 1368) = type metadata accessor for DebugFormatCanvasBindRequest();
  *(v5 + 1376) = swift_task_alloc();
  v10 = type metadata accessor for DebugFormatCanvasBindResult();
  *(v5 + 1384) = v10;
  v11 = *(v10 - 8);
  *(v5 + 1392) = v11;
  *(v5 + 1400) = *(v11 + 64);
  *(v5 + 1408) = swift_task_alloc();
  *(v5 + 1416) = swift_task_alloc();
  v12 = *(a1 + 176);
  *(v5 + 848) = *(a1 + 160);
  *(v5 + 864) = v12;
  *(v5 + 880) = *(a1 + 192);
  *(v5 + 896) = *(a1 + 208);
  v13 = *(a1 + 112);
  *(v5 + 784) = *(a1 + 96);
  *(v5 + 800) = v13;
  v14 = *(a1 + 144);
  *(v5 + 816) = *(a1 + 128);
  *(v5 + 832) = v14;
  v15 = *(a1 + 48);
  *(v5 + 720) = *(a1 + 32);
  *(v5 + 736) = v15;
  v16 = *(a1 + 80);
  *(v5 + 752) = *(a1 + 64);
  *(v5 + 768) = v16;
  v17 = *(a1 + 16);
  *(v5 + 688) = *a1;
  *(v5 + 704) = v17;
  sub_1D726290C();
  *(v5 + 1424) = sub_1D72628FC();
  v19 = sub_1D726285C();
  *(v5 + 1432) = v19;
  *(v5 + 1440) = v18;

  return MEMORY[0x1EEE6DFA0](sub_1D6C86F04, v19, v18);
}

uint64_t sub_1D6C86F04()
{
  v1 = *(v0 + 1280);
  v2 = *(v0 + 883);
  v3 = *(v0 + 884);
  v51 = OBJC_IVAR____TtC8NewsFeed31DebugFormatCanvasViewController_renderedDevice;
  v4 = *&v1[OBJC_IVAR____TtC8NewsFeed31DebugFormatCanvasViewController_renderedDevice];
  v5 = v1;
  if ((v4 & 0xFF00) != 0x200)
  {
    if (*(v0 + 884))
    {
      v6 = 256;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6 | v2;
    if (sub_1D67F7A4C(v6 | v2, v4 & 0x1FF))
    {
      v8 = 0;
      v9 = 0;
      goto LABEL_13;
    }

    v5 = *(v0 + 1280);
  }

  v49 = v2;
  v10 = *(v0 + 1264);
  v11 = objc_opt_self();
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 24) = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1D6C8B6A0;
  *(v12 + 24) = v9;
  *(v0 + 1152) = sub_1D5DF8E8C;
  *(v0 + 1160) = v12;
  *(v0 + 1120) = MEMORY[0x1E69E9820];
  *(v0 + 1128) = 1107296256;
  *(v0 + 1136) = sub_1D69C9704;
  *(v0 + 1144) = &block_descriptor_90;
  v13 = _Block_copy((v0 + 1120));
  v14 = v5;
  v15 = v10;

  [v11 performWithoutAnimation_];
  _Block_release(v13);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v16, v17, v18);
  }

  if (v3)
  {
    v19 = 256;
  }

  else
  {
    v19 = 0;
  }

  v7 = v19 | v49;
  v8 = sub_1D6C8B6A0;
LABEL_13:
  *(v0 + 1456) = v9;
  *(v0 + 1448) = v8;
  v20 = *(v0 + 1304);
  v21 = *(v0 + 1296);
  v22 = *(v0 + 1288);
  v23 = *(v0 + 1280);
  *&v1[v51] = v7;
  type metadata accessor for DebugFormatCanvasTracer();
  v24 = swift_allocObject();
  *(v0 + 1464) = v24;
  sub_1D61F55EC();
  v25 = swift_allocObject();
  *(v25 + 24) = 0;
  *(v25 + 16) = MEMORY[0x1E69E7CC0];
  *(v24 + 16) = v25;
  *(v0 + 1472) = *(v23 + OBJC_IVAR____TtC8NewsFeed31DebugFormatCanvasViewController_generator);
  sub_1D6C86894();
  v26 = OBJC_IVAR____TtC8NewsFeed31DebugFormatCanvasViewController_columnSystem;
  swift_beginAccess();
  (*(v21 + 16))(v20, v23 + v26, v22);
  sub_1D6C86894();
  sub_1D7259D0C();
  v27 = *(v0 + 1376);
  v28 = *(v0 + 1368);
  v29 = *(v0 + 1344);
  v30 = *(v0 + 1336);
  v52 = *(v0 + 1328);
  v31 = *(v0 + 1320);
  v48 = *(v0 + 1360);
  v50 = *(v0 + 1312);
  v32 = *(v0 + 1304);
  v33 = *(v0 + 1296);
  v34 = *(v0 + 1288);
  v35 = *(v0 + 1272);
  (*(v29 + 8))(*(v0 + 1352), v30);
  (*(v33 + 8))(v32, v34);
  *v27 = v35;
  (*(v29 + 32))(&v27[v28[5]], v48, v30);
  (*(v31 + 32))(&v27[v28[6]], v52, v50);
  v36 = &v27[v28[7]];
  v37 = *(v0 + 704);
  *v36 = *(v0 + 688);
  *(v36 + 1) = v37;
  v38 = *(v0 + 720);
  v39 = *(v0 + 736);
  v40 = *(v0 + 768);
  *(v36 + 4) = *(v0 + 752);
  *(v36 + 5) = v40;
  *(v36 + 2) = v38;
  *(v36 + 3) = v39;
  v41 = *(v0 + 784);
  v42 = *(v0 + 800);
  v43 = *(v0 + 832);
  *(v36 + 8) = *(v0 + 816);
  *(v36 + 9) = v43;
  *(v36 + 6) = v41;
  *(v36 + 7) = v42;
  v44 = *(v0 + 848);
  v45 = *(v0 + 864);
  v46 = *(v0 + 880);
  *(v36 + 26) = *(v0 + 896);
  *(v36 + 11) = v45;
  *(v36 + 12) = v46;
  *(v36 + 10) = v44;
  sub_1D5F2B0D8(v0 + 688, v0 + 904);

  v16 = sub_1D6C873B4;
  v17 = 0;
  v18 = 0;

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1D6C873B4()
{
  v1 = v0[184];
  v2 = v0[183];
  v3 = v0[172];
  v4 = swift_task_alloc();
  v0[185] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[186] = v5;
  *v5 = v0;
  v5[1] = sub_1D6C874BC;
  v6 = v0[177];
  v7 = v0[173];

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000017, 0x80000001D73CECD0, sub_1D61F5678, v4, v7);
}

uint64_t sub_1D6C874BC()
{
  v2 = *v1;
  *(*v1 + 1496) = v0;

  if (v0)
  {
    v3 = sub_1D6C87ABC;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v6 = v2[172];

    sub_1D6C8B2B0(v6, type metadata accessor for DebugFormatCanvasBindRequest);
    v5 = v2[180];
    v4 = v2[179];
    v3 = sub_1D6C87604;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1D6C87604()
{
  v43 = v0;
  Description = v0[91].Description;
  v1 = v0[88].Description;
  Kind = v0[88].Kind;
  v3 = v0[87].Description;
  v4 = v0[87].Kind;
  v5 = v0[80].Kind;
  v38 = v5;
  v6 = v0[79].Kind;
  v7 = v0[78].Description;

  v40 = objc_opt_self();
  sub_1D6C8B6A8(v1, Kind, type metadata accessor for DebugFormatCanvasBindResult);
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = (v3 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v6;
  sub_1D6C8B710(Kind, v10 + v8, type metadata accessor for DebugFormatCanvasBindResult);
  *(v10 + v9) = Description;
  *(v10 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)) = v7;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1D6C8B778;
  *(v11 + 24) = v10;
  v0[75].Kind = sub_1D677E6A4;
  v0[75].Description = v11;
  v0[73].Kind = MEMORY[0x1E69E9820];
  v0[73].Description = 1107296256;
  v0[74].Kind = sub_1D69C9704;
  v0[74].Description = &block_descriptor_19;
  v12 = _Block_copy(&v0[73]);
  v13 = v38;
  v14 = v6;

  v15 = v7;

  [v40 performWithoutAnimation_];
  _Block_release(v12);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  else
  {
    v16 = v0[93].Description;
    v17 = *(v0[91].Description + 2);
    *(swift_task_alloc() + 16) = v0 + 43;

    os_unfair_lock_lock((v17 + 24));
    sub_1D6C8B814((v17 + 16), v41);
    if (v16)
    {

      os_unfair_lock_unlock((v17 + 24));
    }

    else
    {
      os_unfair_lock_unlock((v17 + 24));

      v18 = v41[11];
      v0[25] = v41[10];
      v0[26] = v18;
      v19 = v41[13];
      v0[27] = v41[12];
      v0[28] = v19;
      v20 = v41[7];
      v0[21] = v41[6];
      v0[22] = v20;
      v21 = v41[9];
      v0[23] = v41[8];
      v0[24] = v21;
      v22 = v41[3];
      v0[17] = v41[2];
      v0[18] = v22;
      v23 = v41[5];
      v0[19] = v41[4];
      v0[20] = v23;
      v24 = v41[1];
      v0[15] = v41[0];
      v0[16] = v24;

      sub_1D725B31C();

      v25 = v0[77].Description;
      v26 = *(v25 + 2);
      sub_1D6C8B898(&v0[15], &v0[29]);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = v25;
      if (!isUniquelyReferenced_nonNull_native || v26 >= *(v25 + 3) >> 1)
      {
        v25 = sub_1D699561C(isUniquelyReferenced_nonNull_native, v26 + 1, 1, v25);
        v42 = v25;
      }

      v28 = v0[90].Description;
      v29 = v0[88].Description;
      v30 = v0[26];
      v0[11] = v0[25];
      v0[12] = v30;
      v31 = v0[28];
      v0[13] = v0[27];
      v0[14] = v31;
      v32 = v0[22];
      v0[7] = v0[21];
      v0[8] = v32;
      v33 = v0[24];
      v0[9] = v0[23];
      v0[10] = v33;
      v34 = v0[18];
      v0[3] = v0[17];
      v0[4] = v34;
      v35 = v0[20];
      v0[5] = v0[19];
      v0[6] = v35;
      v36 = v0[16];
      v0[1] = v0[15];
      v0[2] = v36;
      sub_1D5EC4134(0, 0, 1, v0 + 1);
      sub_1D6BF7EB4(&v0[15]);
      v0[78].Kind = v25;

      sub_1D725B32C();

      sub_1D6BF7EB4(&v0[15]);
      sub_1D6C8B2B0(v29, type metadata accessor for DebugFormatCanvasBindResult);
      sub_1D5B74328(v28);

      v37 = v0->Description;

      v37();
    }
  }
}

uint64_t sub_1D6C87ABC()
{
  v1 = v0[172];

  sub_1D6C8B2B0(v1, type metadata accessor for DebugFormatCanvasBindRequest);
  v2 = v0[180];
  v3 = v0[179];

  return MEMORY[0x1EEE6DFA0](sub_1D6C87B44, v3, v2);
}

uint64_t sub_1D6C87B44()
{
  v1 = *(v0 + 1448);

  sub_1D5B74328(v1);

  v2 = *(v0 + 8);

  return v2();
}

id sub_1D6C87C40()
{
  v1 = sub_1D7259D1C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC8NewsFeed31DebugFormatCanvasViewController____lazy_storage___columnView;
  v7 = *(v0 + OBJC_IVAR____TtC8NewsFeed31DebugFormatCanvasViewController____lazy_storage___columnView);
  if (v7)
  {
    v8 = *(v0 + OBJC_IVAR____TtC8NewsFeed31DebugFormatCanvasViewController____lazy_storage___columnView);
  }

  else
  {
    v9 = OBJC_IVAR____TtC8NewsFeed31DebugFormatCanvasViewController_columnSystem;
    swift_beginAccess();
    (*(v2 + 16))(v5, v0 + v9, v1);
    v10 = objc_allocWithZone(sub_1D725A03C());
    v11 = v0;
    v12 = sub_1D725A01C();
    v13 = *(v0 + v6);
    *(v11 + v6) = v12;
    v8 = v12;

    v7 = 0;
  }

  v14 = v7;
  return v8;
}

id sub_1D6C87D7C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *&v0[OBJC_IVAR____TtC8NewsFeed31DebugFormatCanvasViewController_viewportMonitor];
  sub_1D725E79C();

  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t type metadata accessor for DebugFormatCanvasViewController()
{
  result = qword_1EC894520;
  if (!qword_1EC894520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6C87FA0()
{
  v1 = v0;
  v25.receiver = v0;
  v25.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v25, sel_viewDidLoad);
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_13;
  }

  v3 = v2;
  [v2 setPreservesSuperviewLayoutMargins_];

  v4 = [v1 view];
  if (!v4)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = v4;
  v6 = [objc_opt_self() clearColor];
  [v5 setBackgroundColor_];

  v7 = [v1 view];
  if (!v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v7;
  [v7 setClipsToBounds_];

  v9 = *&v1[OBJC_IVAR____TtC8NewsFeed31DebugFormatCanvasViewController_contentView];
  v10 = [objc_opt_self() mainScreen];
  [v10 scale];
  v12 = v11;

  sub_1D6CA81F8(v12);
  v13 = [v1 view];
  if (!v13)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v14 = v13;
  [v13 addSubview_];

  v15 = [v1 view];
  if (!v15)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v16 = v15;
  v17 = sub_1D6C87C40();
  [v16 addSubview_];

  v18 = OBJC_IVAR____TtC8NewsFeed31DebugFormatCanvasViewController____lazy_storage___columnView;
  v19 = qword_1EC87D5E8;
  v20 = *&v1[OBJC_IVAR____TtC8NewsFeed31DebugFormatCanvasViewController____lazy_storage___columnView];
  if (v19 != -1)
  {
    swift_once();
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D6C8B140(&qword_1EC894530, type metadata accessor for DebugFormatCanvasViewController);
  sub_1D725965C();

  sub_1D7259FEC();

  v21 = qword_1EC87D5F0;
  v22 = *&v1[v18];
  if (v21 != -1)
  {
    swift_once();
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D725965C();

  sub_1D7259FFC();

  v23 = [v1 view];
  if (v23)
  {
    v24 = v23;
    sub_1D725E7AC();

    return;
  }

LABEL_17:
  __break(1u);
}

void sub_1D6C8836C(unsigned __int8 *a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_1D6C87C40();

    a3(v4);
  }
}

uint64_t sub_1D6C88430()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_1D6C8B188();
  v175 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v179 = &v162 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69E6720];
  sub_1D5BB6FB4(0, &qword_1EC88DD20, type metadata accessor for DebugFormatEditorLayoutContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v166 = &v162 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v167 = &v162 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v164 = &v162 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v177 = &v162 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v176 = &v162 - v21;
  v22 = sub_1D7259F5C();
  v181 = *(v22 - 8);
  v182 = v22;
  MEMORY[0x1EEE9AC00](v22, v23);
  v171 = &v162 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1D7259D1C();
  v172 = *(v25 - 8);
  v173 = v25;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v162 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1D7259CFC();
  v169 = *(v29 - 8);
  v170 = v29;
  MEMORY[0x1EEE9AC00](v29, v30);
  v168 = &v162 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = type metadata accessor for DebugFormatEditorLayoutContext();
  v174 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183, v32);
  v163 = &v162 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v180 = &v162 - v36;
  sub_1D5BB6FB4(0, &qword_1EC894548, MEMORY[0x1E69D7160], v6);
  *&v39 = MEMORY[0x1EEE9AC00](v37 - 8, v38).n128_u64[0];
  v41 = &v162 - v40;
  v205.receiver = v1;
  v205.super_class = ObjectType;
  v165 = ObjectType;
  objc_msgSendSuper2(&v205, sel_viewWillLayoutSubviews, v39);
  v42 = sub_1D6C87C40();
  v184 = v1;
  v43 = [v1 view];
  if (!v43)
  {
    __break(1u);
    goto LABEL_47;
  }

  v44 = v43;
  [v43 bounds];

  v45 = [v184 view];
  if (!v45)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v46 = v45;
  [v45 bounds];
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;

  v206.origin.x = v48;
  v206.origin.y = v50;
  v206.size.width = v52;
  v206.size.height = v54;
  CGRectGetHeight(v206);
  sub_1D72632EC();
  v55 = [v184 view];
  if (!v55)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v56 = v55;
  [v55 bounds];
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v64 = v63;

  v207.origin.x = v58;
  v207.origin.y = v60;
  v207.size.width = v62;
  v207.size.height = v64;
  CGRectGetHeight(v207);
  sub_1D726330C();
  [v42 setFrame_];

  v65 = v184;
  v66 = *&v184[OBJC_IVAR____TtC8NewsFeed31DebugFormatCanvasViewController____lazy_storage___columnView];
  sub_1D6C86894();
  (*(v181 + 56))(v41, 0, 1, v182);
  sub_1D725A02C();

  v67 = *&v65[OBJC_IVAR____TtC8NewsFeed31DebugFormatCanvasViewController_contentView];
  v68 = type metadata accessor for DebugFormatContentView();
  v178 = v67;
  v204.receiver = v67;
  v204.super_class = v68;
  objc_msgSendSuper2(&v204, sel_contentScaleFactor);
  v70 = v69;
  v71 = [v65 traitCollection];
  [v71 displayScale];
  v73 = v72;

  v1 = v28;
  if (v70 != v73)
  {
    goto LABEL_14;
  }

  v74 = [v184 view];
  if (!v74)
  {
    goto LABEL_49;
  }

  v75 = v74;
  [v74 bounds];
  v77 = v76;
  v79 = v78;
  v81 = v80;
  v83 = v82;

  v84 = v178;
  [v178 &selRef_isHiddenFromAutoFavorites];
  v85 = [v184 view];
  if (!v85)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v86 = v85;
  [v85 bounds];
  v88 = v87;
  v90 = v89;
  v92 = v91;
  v94 = v93;

  v208.origin.x = v88;
  v208.origin.y = v90;
  v208.size.width = v92;
  v208.size.height = v94;
  Width = CGRectGetWidth(v208);
  v96 = [v184 view];
  if (v96)
  {
    v97 = v96;
    [v96 bounds];
    v99 = v98;
    v101 = v100;
    v103 = v102;
    v105 = v104;

    v209.origin.x = v99;
    v209.origin.y = v101;
    v209.size.width = v103;
    v209.size.height = v105;
    Height = CGRectGetHeight(v209);
    v107 = &v84[OBJC_IVAR____TtC8NewsFeed22DebugFormatContentView_contentFrame];
    v108 = CGRectGetHeight(*&v84[OBJC_IVAR____TtC8NewsFeed22DebugFormatContentView_contentFrame]);
    if (Height > v108)
    {
      v109 = Height;
    }

    else
    {
      v109 = v108;
    }

    *v107 = 0;
    *(v107 + 1) = 0;
    *(v107 + 2) = Width;
    *(v107 + 3) = v109;
    v110 = 0;
    v111 = 0;
    v112 = Width;
    CGRectGetHeight(*(&v109 - 3));
    v113 = [v84 superview];
    if (v113)
    {
      v114 = v113;
      [v113 bounds];
      v116 = v115;
      v118 = v117;
      v120 = v119;
      v122 = v121;

      v210.origin.x = v116;
      v210.origin.y = v118;
      v210.size.width = v120;
      v210.size.height = v122;
      CGRectGetHeight(v210);
    }

    v123 = *&v84[OBJC_IVAR____TtC8NewsFeed22DebugFormatContentView_bezelView];
    sub_1D726329C();
    sub_1D72632BC();
    [v123 &selRef_isHiddenFromAutoFavorites];
LABEL_14:
    v124 = OBJC_IVAR____TtC8NewsFeed31DebugFormatCanvasViewController_columnSystem;
    v125 = v184;
    swift_beginAccess();
    v127 = v172;
    v126 = v173;
    (*(v172 + 16))(v1, &v125[v124], v173);
    v128 = v171;
    sub_1D6C86894();
    v129 = v168;
    sub_1D7259D0C();
    v130 = v174;
    (*(v181 + 8))(v128, v182);
    (*(v127 + 8))(v1, v126);
    v132 = v183;
    v131 = v184;
    v133 = v180;
    sub_1D6C86894();
    (*(v169 + 32))(v133, v129, v170);
    v134 = *&v131[OBJC_IVAR____TtC8NewsFeed31DebugFormatCanvasViewController_editor];
    v181 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__layoutContext;
    v182 = v134;

    v135 = v176;
    sub_1D725B31C();

    v136 = v177;
    sub_1D6C8B6A8(v133, v177, type metadata accessor for DebugFormatEditorLayoutContext);
    v172 = *(v130 + 56);
    (v172)(v136, 0, 1, v132);
    v137 = *(v175 + 48);
    v138 = v179;
    sub_1D6C8B21C(v135, v179);
    sub_1D6C8B21C(v136, v138 + v137);
    v139 = *(v130 + 48);
    v140 = v139(v138, 1, v132);
    v173 = v130 + 56;
    if (v140 == 1)
    {
      v141 = v135;
      v142 = MEMORY[0x1E69E6720];
      sub_1D6C8B310(v136, &qword_1EC88DD20, type metadata accessor for DebugFormatEditorLayoutContext, MEMORY[0x1E69E6720], sub_1D5BB6FB4);
      v143 = v141;
      v144 = v179;
      sub_1D6C8B310(v143, &qword_1EC88DD20, type metadata accessor for DebugFormatEditorLayoutContext, v142, sub_1D5BB6FB4);
      if (v139(v144 + v137, 1, v183) == 1)
      {
        v145 = v180;
LABEL_22:
        sub_1D6C8B310(v144, &qword_1EC88DD20, type metadata accessor for DebugFormatEditorLayoutContext, MEMORY[0x1E69E6720], sub_1D5BB6FB4);
        goto LABEL_23;
      }
    }

    else
    {
      v146 = v164;
      sub_1D6C8B21C(v138, v164);
      if (v139(v138 + v137, 1, v132) != 1)
      {
        v157 = v163;
        sub_1D6C8B710(v138 + v137, v163, type metadata accessor for DebugFormatEditorLayoutContext);
        v158 = sub_1D7259C6C();
        v159 = v177;
        if (v158)
        {
          LODWORD(v175) = sub_1D7259F0C();
          sub_1D6C8B2B0(v157, type metadata accessor for DebugFormatEditorLayoutContext);
          v160 = MEMORY[0x1E69E6720];
          sub_1D6C8B310(v159, &qword_1EC88DD20, type metadata accessor for DebugFormatEditorLayoutContext, MEMORY[0x1E69E6720], sub_1D5BB6FB4);
          sub_1D6C8B310(v176, &qword_1EC88DD20, type metadata accessor for DebugFormatEditorLayoutContext, v160, sub_1D5BB6FB4);
          sub_1D6C8B2B0(v146, type metadata accessor for DebugFormatEditorLayoutContext);
          sub_1D6C8B310(v138, &qword_1EC88DD20, type metadata accessor for DebugFormatEditorLayoutContext, v160, sub_1D5BB6FB4);
          v145 = v180;
          if (v175)
          {
LABEL_23:

            sub_1D725B31C();

            v202[10] = v198;
            v202[11] = v199;
            v202[12] = v200;
            v203 = v201;
            v202[6] = v194;
            v202[7] = v195;
            v202[8] = v196;
            v202[9] = v197;
            v202[2] = v190;
            v202[3] = v191;
            v202[4] = v192;
            v202[5] = v193;
            v202[0] = v188;
            v202[1] = v189;
            v150 = sub_1D5DEA380(v202);
            if (BYTE4(v200))
            {
              v151 = 256;
            }

            else
            {
              v151 = 0;
            }

            if (v150 == 1)
            {
              v152 = 512;
            }

            else
            {
              v152 = v151 | BYTE3(v200);
            }

            v186[10] = v198;
            v186[11] = v199;
            v186[12] = v200;
            v187 = v201;
            v186[6] = v194;
            v186[7] = v195;
            v186[8] = v196;
            v186[9] = v197;
            v186[2] = v190;
            v186[3] = v191;
            v186[4] = v192;
            v186[5] = v193;
            v186[0] = v188;
            v186[1] = v189;
            sub_1D6C8B310(v186, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace, MEMORY[0x1E69E6720], sub_1D5B49DA8);
            v153 = *&v184[OBJC_IVAR____TtC8NewsFeed31DebugFormatCanvasViewController_renderedDevice];
            v154 = v153 & 0xFF00;
            if ((v152 & 0x300) == 0x200)
            {
              if (v154 == 512)
              {
                return sub_1D6C8B2B0(v145, type metadata accessor for DebugFormatEditorLayoutContext);
              }
            }

            else if (v154 != 512 && (sub_1D67F7A4C(v152, v153 & 0x1FF) & 1) != 0)
            {
              return sub_1D6C8B2B0(v145, type metadata accessor for DebugFormatEditorLayoutContext);
            }

            sub_1D6CA8338();
            if (qword_1EC87D618 != -1)
            {
              swift_once();
            }

            sub_1D6C8B140(&qword_1EC894530, type metadata accessor for DebugFormatCanvasViewController);
            sub_1D725964C();
            if (v185 == 1)
            {
              v155 = [objc_opt_self() defaultCenter];
              if (qword_1EDF1A9C8 != -1)
              {
                swift_once();
              }

              [v155 postNotificationName:qword_1EDFFC808 object:0];
            }

            return sub_1D6C8B2B0(v145, type metadata accessor for DebugFormatEditorLayoutContext);
          }

          goto LABEL_21;
        }

        sub_1D6C8B2B0(v157, type metadata accessor for DebugFormatEditorLayoutContext);
        v161 = MEMORY[0x1E69E6720];
        sub_1D6C8B310(v159, &qword_1EC88DD20, type metadata accessor for DebugFormatEditorLayoutContext, MEMORY[0x1E69E6720], sub_1D5BB6FB4);
        sub_1D6C8B310(v176, &qword_1EC88DD20, type metadata accessor for DebugFormatEditorLayoutContext, v161, sub_1D5BB6FB4);
        sub_1D6C8B2B0(v146, type metadata accessor for DebugFormatEditorLayoutContext);
        sub_1D6C8B310(v138, &qword_1EC88DD20, type metadata accessor for DebugFormatEditorLayoutContext, v161, sub_1D5BB6FB4);
LABEL_20:
        v145 = v180;
LABEL_21:
        v149 = v167;
        sub_1D6C8B6A8(v145, v167, type metadata accessor for DebugFormatEditorLayoutContext);
        (v172)(v149, 0, 1, v183);
        sub_1D6C8B21C(v149, v166);

        sub_1D725B32C();

        v144 = v149;
        goto LABEL_22;
      }

      v147 = v135;
      v148 = MEMORY[0x1E69E6720];
      sub_1D6C8B310(v177, &qword_1EC88DD20, type metadata accessor for DebugFormatEditorLayoutContext, MEMORY[0x1E69E6720], sub_1D5BB6FB4);
      v144 = v179;
      sub_1D6C8B310(v147, &qword_1EC88DD20, type metadata accessor for DebugFormatEditorLayoutContext, v148, sub_1D5BB6FB4);
      sub_1D6C8B2B0(v146, type metadata accessor for DebugFormatEditorLayoutContext);
    }

    sub_1D6C8B2B0(v144, sub_1D6C8B188);
    goto LABEL_20;
  }

LABEL_51:
  __break(1u);
  (*(v181 + 8))(&off_1E84D3000, v182);
  (*(&v202[0] + 1))(v1, v28);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_1D6C895B4()
{
  sub_1D6CA8338();
  if (qword_1EC87D618 != -1)
  {
    swift_once();
  }

  type metadata accessor for DebugFormatCanvasViewController();
  sub_1D6C8B140(&qword_1EC894530, type metadata accessor for DebugFormatCanvasViewController);
  sub_1D725964C();
  if (v1 == 1)
  {
    v0 = [objc_opt_self() defaultCenter];
    if (qword_1EDF1A9C8 != -1)
    {
      swift_once();
    }

    [v0 postNotificationName:qword_1EDFFC808 object:0];
  }

  sub_1D6B5F0B4();
}

uint64_t sub_1D6C89710(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v136 = a5;
  v134 = a4;
  v142 = a3;
  v133 = sub_1D7261ABC();
  v7 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133, v8);
  v130 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_1D7261B2C();
  v129 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131, v10);
  v128 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C8B188();
  v126 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v141 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1E69E6720];
  sub_1D5BB6FB4(0, &qword_1EC88DD20, type metadata accessor for DebugFormatEditorLayoutContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v117 = &v113 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v118 = &v113 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v127 = &v113 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v137 = &v113 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v138 = &v113 - v30;
  v125 = sub_1D7259F5C();
  v124 = *(v125 - 1);
  MEMORY[0x1EEE9AC00](v125, v31);
  v121 = &v113 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_1D7259CFC();
  v122 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123, v33);
  v120 = &v113 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for DebugFormatEditorLayoutContext();
  v139 = *(v35 - 8);
  v140 = v35;
  MEMORY[0x1EEE9AC00](v35, v36);
  v115 = &v113 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38, v39);
  v143 = &v113 - v40;
  sub_1D5BB6FB4(0, &unk_1EDF3C080, MEMORY[0x1E69D7138], v15);
  MEMORY[0x1EEE9AC00](v41 - 8, v42);
  v44 = &v113 - v43;
  v45 = sub_1D7259D1C();
  v46 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45, v47);
  v119 = &v113 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49, v50);
  v116 = &v113 - v51;
  MEMORY[0x1EEE9AC00](v52, v53);
  v55 = &v113 - v54;
  MEMORY[0x1EEE9AC00](v56, v57);
  v59 = &v113 - v58;
  v144 = a1;
  sub_1D6CA8338();
  if (qword_1EC87D618 != -1)
  {
    swift_once();
  }

  type metadata accessor for DebugFormatCanvasViewController();
  sub_1D6C8B140(&qword_1EC894530, type metadata accessor for DebugFormatCanvasViewController);
  sub_1D725964C();
  if (LOBYTE(aBlock[0]) != 1)
  {
    goto LABEL_6;
  }

  v60 = [objc_opt_self() defaultCenter];
  if (qword_1EDF1A9C8 != -1)
  {
    goto LABEL_36;
  }

  while (1)
  {
    [v60 postNotificationName:qword_1EDFFC808 object:0];

LABEL_6:
    sub_1D6B5F0B4();
    v60 = *(v142 + *(type metadata accessor for DebugFormatCanvasBindResult() + 20));
    if (v60 >> 62)
    {
      v61 = sub_1D7263BFC();
    }

    else
    {
      v61 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v62 = v139;
    v132 = v7;
    v135 = a2;
    if (!v61)
    {
      (*(v46 + 56))(v44, 1, 1, v45);
      sub_1D6C8B310(v44, &unk_1EDF3C080, MEMORY[0x1E69D7138], MEMORY[0x1E69E6720], sub_1D5BB6FB4);
      goto LABEL_21;
    }

    if ((v60 & 0xC000000000000001) != 0)
    {
      v65 = MEMORY[0x1DA6FB460](0, v60) + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_boundLayoutFactory;
      LODWORD(v65) = *(v65 + *(type metadata accessor for FormatGroupLayoutFactory.Bound() + 52));
      swift_unknownObjectRelease();
      if (v65 == 1)
      {
        goto LABEL_12;
      }

      goto LABEL_16;
    }

    if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    __break(1u);
LABEL_36:
    swift_once();
  }

  v63 = *(v60 + 32) + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_boundLayoutFactory;
  if (*(v63 + *(type metadata accessor for FormatGroupLayoutFactory.Bound() + 52)))
  {
LABEL_12:
    v64 = MEMORY[0x1E69D7130];
    goto LABEL_17;
  }

LABEL_16:
  v64 = MEMORY[0x1E69D7110];
LABEL_17:
  (*(v46 + 104))(v44, *v64, v45);
  (*(v46 + 56))(v44, 0, 1, v45);
  (*(v46 + 32))(v59, v44, v45);
  v66 = OBJC_IVAR____TtC8NewsFeed31DebugFormatCanvasViewController_columnSystem;
  v67 = v144;
  swift_beginAccess();
  v68 = *(v46 + 16);
  v68(v55, &v67[v66], v45);
  sub_1D6C8B140(&unk_1EDF3C090, MEMORY[0x1E69D7138]);
  LOBYTE(v67) = sub_1D7261FBC();
  v69 = *(v46 + 8);
  v69(v55, v45);
  if (v67)
  {
    v70 = v59;
  }

  else
  {
    v113 = v59;
    v68(v55, v59, v45);
    v71 = v144;
    swift_beginAccess();
    (*(v46 + 24))(&v71[v66], v55, v45);
    swift_endAccess();
    v72 = sub_1D6C87C40();
    v114 = v46;
    v73 = v72;
    v68(v116, &v71[v66], v45);
    sub_1D725A00C();

    v46 = v114;
    v69(v55, v45);
    v70 = v113;
  }

  v69(v70, v45);
  v62 = v139;
LABEL_21:
  v74 = OBJC_IVAR____TtC8NewsFeed31DebugFormatCanvasViewController_columnSystem;
  v75 = v144;
  swift_beginAccess();
  v76 = v119;
  (*(v46 + 16))(v119, &v75[v74], v45);
  v77 = v121;
  sub_1D6C86894();
  v78 = v120;
  sub_1D7259D0C();
  v79 = v127;
  (*(v124 + 8))(v77, v125);
  (*(v46 + 8))(v76, v45);
  v80 = v140;
  v81 = v143;
  v82 = v144;
  sub_1D6C86894();
  (*(v122 + 32))(v81, v78, v123);
  v83 = *&v82[OBJC_IVAR____TtC8NewsFeed31DebugFormatCanvasViewController_editor];

  v84 = v138;
  sub_1D725B31C();

  v85 = v137;
  sub_1D6C8B6A8(v81, v137, type metadata accessor for DebugFormatEditorLayoutContext);
  v86 = *(v62 + 56);
  v139 = v62 + 56;
  v125 = v86;
  (v86)(v85, 0, 1, v80);
  v87 = *(v126 + 48);
  v88 = v141;
  sub_1D6C8B21C(v84, v141);
  sub_1D6C8B21C(v85, v88 + v87);
  v89 = *(v62 + 48);
  if (v89(v88, 1, v80) != 1)
  {
    sub_1D6C8B21C(v88, v79);
    if (v89(v88 + v87, 1, v80) != 1)
    {
      v108 = v115;
      sub_1D6C8B710(v88 + v87, v115, type metadata accessor for DebugFormatEditorLayoutContext);
      v109 = v88;
      if (sub_1D7259C6C())
      {
        v110 = sub_1D7259F0C();
        sub_1D6C8B2B0(v108, type metadata accessor for DebugFormatEditorLayoutContext);
        v111 = MEMORY[0x1E69E6720];
        sub_1D6C8B310(v137, &qword_1EC88DD20, type metadata accessor for DebugFormatEditorLayoutContext, MEMORY[0x1E69E6720], sub_1D5BB6FB4);
        sub_1D6C8B310(v138, &qword_1EC88DD20, type metadata accessor for DebugFormatEditorLayoutContext, v111, sub_1D5BB6FB4);
        sub_1D6C8B2B0(v79, type metadata accessor for DebugFormatEditorLayoutContext);
        sub_1D6C8B310(v109, &qword_1EC88DD20, type metadata accessor for DebugFormatEditorLayoutContext, v111, sub_1D5BB6FB4);
        v93 = v136;
        v94 = v134;
        if (v110)
        {
          goto LABEL_30;
        }

        goto LABEL_28;
      }

      sub_1D6C8B2B0(v108, type metadata accessor for DebugFormatEditorLayoutContext);
      v112 = MEMORY[0x1E69E6720];
      sub_1D6C8B310(v137, &qword_1EC88DD20, type metadata accessor for DebugFormatEditorLayoutContext, MEMORY[0x1E69E6720], sub_1D5BB6FB4);
      sub_1D6C8B310(v138, &qword_1EC88DD20, type metadata accessor for DebugFormatEditorLayoutContext, v112, sub_1D5BB6FB4);
      sub_1D6C8B2B0(v79, type metadata accessor for DebugFormatEditorLayoutContext);
      sub_1D6C8B310(v88, &qword_1EC88DD20, type metadata accessor for DebugFormatEditorLayoutContext, v112, sub_1D5BB6FB4);
LABEL_27:
      v93 = v136;
      v94 = v134;
LABEL_28:
      v92 = v118;
      sub_1D6C8B6A8(v143, v118, type metadata accessor for DebugFormatEditorLayoutContext);
      (v125)(v92, 0, 1, v140);
      sub_1D6C8B21C(v92, v117);

      sub_1D725B32C();

      goto LABEL_29;
    }

    v95 = MEMORY[0x1E69E6720];
    sub_1D6C8B310(v85, &qword_1EC88DD20, type metadata accessor for DebugFormatEditorLayoutContext, MEMORY[0x1E69E6720], sub_1D5BB6FB4);
    v92 = v141;
    sub_1D6C8B310(v84, &qword_1EC88DD20, type metadata accessor for DebugFormatEditorLayoutContext, v95, sub_1D5BB6FB4);
    sub_1D6C8B2B0(v79, type metadata accessor for DebugFormatEditorLayoutContext);
LABEL_26:
    sub_1D6C8B2B0(v92, sub_1D6C8B188);
    goto LABEL_27;
  }

  v127 = v83;
  v90 = v80;
  v91 = MEMORY[0x1E69E6720];
  sub_1D6C8B310(v85, &qword_1EC88DD20, type metadata accessor for DebugFormatEditorLayoutContext, MEMORY[0x1E69E6720], sub_1D5BB6FB4);
  v92 = v141;
  sub_1D6C8B310(v84, &qword_1EC88DD20, type metadata accessor for DebugFormatEditorLayoutContext, v91, sub_1D5BB6FB4);
  if (v89(v92 + v87, 1, v90) != 1)
  {
    goto LABEL_26;
  }

  v93 = v136;
  v94 = v134;
LABEL_29:
  sub_1D6C8B310(v92, &qword_1EC88DD20, type metadata accessor for DebugFormatEditorLayoutContext, MEMORY[0x1E69E6720], sub_1D5BB6FB4);
LABEL_30:
  v96 = v144;
  v97 = sub_1D5F2882C(v142, v94);
  sub_1D6C8AA8C(v97, v93);
  aBlock[0] = v97;

  sub_1D725B32C();

  sub_1D5B5A498(0, &qword_1EDF1AA30);
  v98 = sub_1D726308C();
  v99 = swift_allocObject();
  v99[2] = v96;
  v99[3] = v97;
  v99[4] = v93;
  aBlock[4] = sub_1D6C8B8F4;
  aBlock[5] = v99;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D5B6B06C;
  aBlock[3] = &block_descriptor_26_1;
  v100 = _Block_copy(aBlock);

  v101 = v96;
  v102 = v93;

  v103 = v128;
  sub_1D7261AEC();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D6C8B140(&qword_1EDF3A8F0, MEMORY[0x1E69E7F60]);
  v104 = MEMORY[0x1E69E7F60];
  sub_1D5BB6FB4(0, &qword_1EDF1B570, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D5B63398(&qword_1EDF1B560, &qword_1EDF1B570, v104);
  v105 = v130;
  v106 = v133;
  sub_1D7263B6C();
  MEMORY[0x1DA6FA730](0, v103, v105, v100);
  _Block_release(v100);

  (*(v132 + 8))(v105, v106);
  (*(v129 + 8))(v103, v131);
  return sub_1D6C8B2B0(v143, type metadata accessor for DebugFormatEditorLayoutContext);
}

uint64_t sub_1D6C8AA8C(uint64_t a1, void *a2)
{
  v5 = *(a1 + OBJC_IVAR____TtC8NewsFeed27DebugFormatCanvasViewResult_debugView);
  v6 = OBJC_IVAR____TtC8NewsFeed20DebugGroupLayoutView_contentView;
  [*(v5 + OBJC_IVAR____TtC8NewsFeed20DebugGroupLayoutView_contentView) setClipsToBounds_];
  v7 = *(v2 + OBJC_IVAR____TtC8NewsFeed31DebugFormatCanvasViewController_contentView);
  sub_1D6CA8558(a1);
  sub_1D6B5F948(a1);
  [a2 contentSize];
  v9 = v8;
  v10 = (v7 + OBJC_IVAR____TtC8NewsFeed22DebugFormatContentView_contentFrame);
  Width = CGRectGetWidth(*(v7 + OBJC_IVAR____TtC8NewsFeed22DebugFormatContentView_contentFrame));
  [a2 frame];
  v12 = CGRectGetWidth(v23);
  if (Width > v12)
  {
    v12 = Width;
  }

  if (v9 <= v12)
  {
    v9 = v12;
  }

  [a2 contentSize];
  v14 = v13;
  Height = CGRectGetHeight(*v10);
  [a2 frame];
  v16 = CGRectGetHeight(v24);
  if (Height > v16)
  {
    v16 = Height;
  }

  if (v14 > v16)
  {
    v17 = v14;
  }

  else
  {
    v17 = v16;
  }

  [a2 setContentSize_];

  sub_1D725B31C();

  v18 = *(v22 + 16);

  if (v18)
  {

    sub_1D725B31C();

    v20 = *(v5 + v6);

    v21 = v20;
    sub_1D6C8B984(v21, v22);

    return swift_bridgeObjectRelease_n();
  }

  return result;
}

uint64_t sub_1D6C8ACA4()
{
  result = sub_1D7259D1C();
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

id sub_1D6C8AE18(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1D725E7EC();
  MEMORY[0x1EEE9AC00](v5, v6);
  v7 = OBJC_IVAR____TtC8NewsFeed31DebugFormatCanvasViewController_contentView;
  *&v2[v7] = [objc_allocWithZone(type metadata accessor for DebugFormatContentView()) initWithFrame_];
  v8 = OBJC_IVAR____TtC8NewsFeed31DebugFormatCanvasViewController_columnSystem;
  v9 = *MEMORY[0x1E69D7110];
  v10 = sub_1D7259D1C();
  (*(*(v10 - 8) + 104))(&v2[v8], v9, v10);
  *&v2[OBJC_IVAR____TtC8NewsFeed31DebugFormatCanvasViewController____lazy_storage___columnView] = 0;
  v11 = OBJC_IVAR____TtC8NewsFeed31DebugFormatCanvasViewController_viewportMonitor;
  v12 = MEMORY[0x1E69D7F80];
  sub_1D5BB6FB4(0, &qword_1EDF02368, MEMORY[0x1E69D7F80], MEMORY[0x1E69E6F90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D7273AE0;
  sub_1D725E7DC();
  v19 = v13;
  sub_1D6C8B140(&unk_1EDF16FD0, MEMORY[0x1E69D7F80]);
  sub_1D5BB6FB4(0, &qword_1EDF05308, v12, MEMORY[0x1E69E62F8]);
  sub_1D5B63398(&qword_1EDF05300, &qword_1EDF05308, v12);
  sub_1D7263B6C();
  v14 = objc_allocWithZone(sub_1D725E80C());
  *&v2[v11] = sub_1D725E7FC();
  *&v2[OBJC_IVAR____TtC8NewsFeed31DebugFormatCanvasViewController_renderedDevice] = 512;
  *&v2[OBJC_IVAR____TtC8NewsFeed31DebugFormatCanvasViewController_editor] = a1;
  *&v2[OBJC_IVAR____TtC8NewsFeed31DebugFormatCanvasViewController_scrollView] = a2;
  type metadata accessor for DebugFormatCanvasGenerator();
  swift_allocObject();
  swift_retain_n();
  v15 = a2;
  *&v2[OBJC_IVAR____TtC8NewsFeed31DebugFormatCanvasViewController_generator] = sub_1D5F26CE8(a1);
  v18.receiver = v2;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, sel_initWithNibName_bundle_, 0, 0);
}

uint64_t sub_1D6C8B140(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D6C8B188()
{
  if (!qword_1EC894538)
  {
    sub_1D5BB6FB4(255, &qword_1EC88DD20, type metadata accessor for DebugFormatEditorLayoutContext, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC894538);
    }
  }
}

uint64_t sub_1D6C8B21C(uint64_t a1, uint64_t a2)
{
  sub_1D5BB6FB4(0, &qword_1EC88DD20, type metadata accessor for DebugFormatEditorLayoutContext, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6C8B2B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6C8B310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1D6C8B3D0()
{
  v1 = sub_1D725E7EC();
  MEMORY[0x1EEE9AC00](v1, v2);
  v3 = OBJC_IVAR____TtC8NewsFeed31DebugFormatCanvasViewController_contentView;
  *(v0 + v3) = [objc_allocWithZone(type metadata accessor for DebugFormatContentView()) initWithFrame_];
  v4 = OBJC_IVAR____TtC8NewsFeed31DebugFormatCanvasViewController_columnSystem;
  v5 = *MEMORY[0x1E69D7110];
  v6 = sub_1D7259D1C();
  (*(*(v6 - 8) + 104))(v0 + v4, v5, v6);
  *(v0 + OBJC_IVAR____TtC8NewsFeed31DebugFormatCanvasViewController____lazy_storage___columnView) = 0;
  v7 = OBJC_IVAR____TtC8NewsFeed31DebugFormatCanvasViewController_viewportMonitor;
  v8 = MEMORY[0x1E69D7F80];
  sub_1D5BB6FB4(0, &qword_1EDF02368, MEMORY[0x1E69D7F80], MEMORY[0x1E69E6F90]);
  *(swift_allocObject() + 16) = xmmword_1D7273AE0;
  sub_1D725E7DC();
  sub_1D6C8B140(&unk_1EDF16FD0, MEMORY[0x1E69D7F80]);
  sub_1D5BB6FB4(0, &qword_1EDF05308, v8, MEMORY[0x1E69E62F8]);
  sub_1D5B63398(&qword_1EDF05300, &qword_1EDF05308, v8);
  sub_1D7263B6C();
  v9 = objc_allocWithZone(sub_1D725E80C());
  *(v0 + v7) = sub_1D725E7FC();
  *(v0 + OBJC_IVAR____TtC8NewsFeed31DebugFormatCanvasViewController_renderedDevice) = 512;
  sub_1D726402C();
  __break(1u);
}

uint64_t sub_1D6C8B6A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6C8B710(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6C8B778()
{
  v1 = *(type metadata accessor for DebugFormatCanvasBindResult() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);

  return sub_1D6C89710(v6, v7, v0 + v2, v4, v5);
}

uint64_t sub_1D6C8B814@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  v5 = *(v3 + 176);
  *(a2 + 160) = *(v3 + 160);
  *(a2 + 176) = v5;
  *(a2 + 192) = *(v3 + 192);
  v6 = *(v3 + 208);
  v7 = *(v3 + 112);
  *(a2 + 96) = *(v3 + 96);
  *(a2 + 112) = v7;
  v8 = *(v3 + 144);
  *(a2 + 128) = *(v3 + 128);
  *(a2 + 144) = v8;
  v9 = *(v3 + 48);
  *(a2 + 32) = *(v3 + 32);
  *(a2 + 48) = v9;
  v10 = *(v3 + 80);
  *(a2 + 64) = *(v3 + 64);
  *(a2 + 80) = v10;
  v11 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v11;
  *(a2 + 208) = v6;
  *(a2 + 216) = v4;

  return sub_1D5F2B0D8(v3, v13);
}

void sub_1D6C8B984(void *a1, uint64_t a2)
{
  type metadata accessor for FormatButton();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    v6 = OBJC_IVAR____TtC8NewsFeed12FormatButton_overriddenStateMask;
    *(v4 + OBJC_IVAR____TtC8NewsFeed12FormatButton_overriddenStateMask) = a2;
    swift_bridgeObjectRetain_n();
    v7 = a1;

    if (*(v5 + v6))
    {
      sub_1D70CF634();
    }
  }

  else
  {
  }

  v8 = [a1 subviews];
  sub_1D5B5A498(0, &qword_1EDF1A710);
  v9 = sub_1D726267C();

  if (v9 >> 62)
  {
    v10 = sub_1D7263BFC();
    if (!v10)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      goto LABEL_15;
    }
  }

  if (v10 < 1)
  {
    __break(1u);
    return;
  }

  v11 = 0;
  do
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1DA6FB460](v11, v9);
    }

    else
    {
      v12 = *(v9 + 8 * v11 + 32);
    }

    v13 = v12;
    ++v11;

    sub_1D6C8B984(v13, a2);
  }

  while (v10 != v11);
LABEL_15:
}

unint64_t sub_1D6C8BB3C(char a1)
{
  result = 0x654E6E496E65706FLL;
  switch(a1)
  {
    case 2:
      result = 0x6572616873;
      break;
    case 3:
      result = 0x6974724179706F63;
      break;
    case 4:
      result = 1702257011;
      break;
    case 5:
      result = 1701538156;
      break;
    case 6:
      result = 0x656B696C736964;
      break;
    case 7:
      result = 0x6E6168436E65706FLL;
      break;
    case 8:
      result = 0x776F6C6C6F66;
      break;
    case 9:
      result = 0x6B636F6C62;
      break;
    case 10:
      result = 0x61536E496E65706FLL;
      break;
    case 11:
      result = 0x74726F706572;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    case 14:
      result = 0x6B63616279616C70;
      break;
    case 15:
      result = 2036427888;
      break;
    case 16:
      result = 0x616C506B63617274;
      break;
    case 17:
      result = 0x6F72506B63617274;
      break;
    case 18:
      result = 0x696365526E65706FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D6C8BD44(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1D6C8BB3C(*a1);
  v5 = v4;
  if (v3 == sub_1D6C8BB3C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D6C8BDCC()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D6C8BB3C(v1);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6C8BE30()
{
  sub_1D6C8BB3C(*v0);
  sub_1D72621EC();
}

uint64_t sub_1D6C8BE84()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D6C8BB3C(v1);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D6C8BEE4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D6C8BB3C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t FormatHeadlineBinding.Command.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D6C8BFE8()
{
  result = qword_1EC894560;
  if (!qword_1EC894560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894560);
  }

  return result;
}

unint64_t sub_1D6C8C03C(uint64_t a1)
{
  result = sub_1D6C8C064();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6C8C064()
{
  result = qword_1EC894568;
  if (!qword_1EC894568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894568);
  }

  return result;
}

unint64_t sub_1D6C8C0B8(void *a1)
{
  a1[1] = sub_1D5CCDEA0();
  a1[2] = sub_1D66FFBC8();
  result = sub_1D6C8BFE8();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6C8C12C()
{
  result = qword_1EC894570;
  if (!qword_1EC894570)
  {
    sub_1D6C8C184();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894570);
  }

  return result;
}

void sub_1D6C8C184()
{
  if (!qword_1EC894578)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC894578);
    }
  }
}

unint64_t sub_1D6C8C1D8()
{
  result = qword_1EC894580;
  if (!qword_1EC894580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894580);
  }

  return result;
}

uint64_t sub_1D6C8C22C@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = (&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  LOBYTE(a1) = *a1;
  sub_1D5C0C74C(a2, v11);
  v12 = *(a3 + 112);
  v20[6] = *(a3 + 96);
  v20[7] = v12;
  v20[8] = *(a3 + 128);
  v21 = *(a3 + 144);
  v13 = *(a3 + 48);
  v20[2] = *(a3 + 32);
  v20[3] = v13;
  v14 = *(a3 + 80);
  v20[4] = *(a3 + 64);
  v20[5] = v14;
  v15 = *(a3 + 16);
  v20[0] = *a3;
  v20[1] = v15;
  sub_1D5FBAE1C(a3, &v19);
  sub_1D6C8C390(a1, v11, v20, a4);
  sub_1D6C8CFEC(0, &qword_1EC880AB0, type metadata accessor for FormatInspectionItem);
  return (*(*(v16 - 8) + 56))(a4, 0, 1, v16);
}

uint64_t sub_1D6C8C390@<X0>(char a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v97 = a4;
  sub_1D6C8CFEC(0, qword_1EDF42030, type metadata accessor for FeedHeadline);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v93 = &v92 - v9;
  sub_1D6C8CFEC(0, &unk_1EDF35458, type metadata accessor for FeedHeadlineAudioCommandContext);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v92 - v12;
  v14 = type metadata accessor for FormatInspectionItem(0);
  v95 = *(v14 - 8);
  v96 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v94 = (&v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(a3 + 112);
  v108[6] = *(a3 + 96);
  v108[7] = v17;
  v108[8] = *(a3 + 128);
  v109 = *(a3 + 144);
  v18 = *(a3 + 48);
  v108[2] = *(a3 + 32);
  v108[3] = v18;
  v19 = *(a3 + 80);
  v108[4] = *(a3 + 64);
  v108[5] = v19;
  v20 = *(a3 + 16);
  v108[0] = *a3;
  v108[1] = v20;
  sub_1D6202060(v108);
  v21 = sub_1D6C8BB3C(a1);
  v23 = v22;
  v24 = sub_1D5C73AB0(v21, v22);
  if (v25)
  {
    v100 = v24;
    v101 = v25;
    sub_1D5BF4D9C();
    v26 = sub_1D7263A0C();
    v28 = v27;

    v29 = sub_1D5FD24A4(1uLL, v21, v23);
    v31 = v30;
    v33 = v32;
    v35 = v34;

    v36 = MEMORY[0x1DA6F97E0](v29, v31, v33, v35);
    v38 = v37;

    v98 = v26;
    v99 = v28;

    MEMORY[0x1DA6F9910](v36, v38);

    v21 = v98;
    v23 = v99;
  }

  v39 = a2;
  switch(a1)
  {
    case 1:
      if (qword_1EDF3AFB0 != -1)
      {
        swift_once();
      }

      v71 = qword_1EDF3AFB8;
      goto LABEL_35;
    case 2:
      if (qword_1EDF3ACA8 != -1)
      {
        swift_once();
      }

      v66 = qword_1EDF3ACB0;
      v67 = *a2;
      v68 = a2[1];
      v100 = a2[5];
      v101 = sub_1D5B4AA6C;
      v102 = 0;
      v103 = 0;
      v104 = v67;
      v105 = v68;
      v107 = 0;
      v106 = 0;
      type metadata accessor for FormatCommandAction();
      swift_allocObject();

      swift_unknownObjectRetain();

      v62 = sub_1D62037BC(v66, &v100);
      goto LABEL_60;
    case 3:
      if (qword_1EDF3B028 != -1)
      {
        swift_once();
      }

      v53 = qword_1EDF3B030;
      goto LABEL_54;
    case 4:
      if (qword_1EDF3AE18 != -1)
      {
        swift_once();
      }

      v54 = qword_1EDF3AE20;
      v55 = v39[5];
      type metadata accessor for FormatCommandAction();
      swift_allocObject();

      swift_unknownObjectRetain();
      v52 = sub_1D68A9450(v54, v55, 1024);
      goto LABEL_49;
    case 5:
      if (qword_1EDF3AE68 != -1)
      {
        swift_once();
      }

      v78 = qword_1EDF3AE70;
      goto LABEL_48;
    case 6:
      if (qword_1EDF3AE50 != -1)
      {
        swift_once();
      }

      v78 = qword_1EDF3AE58;
LABEL_48:
      v80 = v39[5];
      v81 = *v39;
      v82 = v39[1];
      type metadata accessor for FormatCommandAction();
      swift_allocObject();

      swift_unknownObjectRetain();

      v52 = sub_1D68A96A8(v78, v80, v81, v82);
      goto LABEL_49;
    case 7:
      v69 = a2;
      v70 = 7;
      goto LABEL_56;
    case 8:
      v69 = a2;
      v70 = 8;
LABEL_56:
      v62 = sub_1D6898200(v69, v70);
      goto LABEL_60;
    case 9:
      if (qword_1EDF3AB68 != -1)
      {
        swift_once();
      }

      v63 = qword_1EDF3AB70;
      v64 = v39[5];

      v65 = [v64 sourceChannel];
      type metadata accessor for FormatCommandAction();
      swift_allocObject();
      v52 = sub_1D68A8EEC(v63, v65);
      goto LABEL_49;
    case 10:
      if (qword_1EDF3AFD8 != -1)
      {
        swift_once();
      }

      v53 = qword_1EDF3AFE0;
      goto LABEL_54;
    case 11:
      if (qword_1EDF3AC48 != -1)
      {
        swift_once();
      }

      v53 = qword_1EDF3AC58;
LABEL_54:
      v84 = a2[5];
      type metadata accessor for FormatCommandAction();
      swift_allocObject();

      swift_unknownObjectRetain();
      v62 = sub_1D6203604(v53, v84);
      goto LABEL_60;
    case 12:
      if (qword_1EDF3AC28 != -1)
      {
        swift_once();
      }

      v56 = qword_1EDF3AC38;
      v57 = a2[5];

      v58 = [v57 identifier];
      v59 = sub_1D726207C();
      v61 = v60;

      type metadata accessor for FormatCommandAction();
      swift_allocObject();
      v62 = sub_1D62031B0(v56, v59, v61);
      goto LABEL_60;
    case 13:
      if (qword_1EDF16A20 != -1)
      {
        swift_once();
      }

      type metadata accessor for FormatCommandAction();
      swift_allocObject();

      v62 = sub_1D6202F80(v79, 1);
      goto LABEL_60;
    case 14:
    case 15:
      v100 = v21;
      v101 = v23;
      MEMORY[0x1DA6F9910](0x6365727065442820, 0xED00002964657461);
      v40 = v100;
      v23 = v101;
      if (qword_1EDF3B088 != -1)
      {
        swift_once();
      }

      v41 = a2;
      v42 = v93;
      sub_1D5C0C74C(v41, v93);
      v43 = type metadata accessor for FeedHeadline(0);
      (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
      type metadata accessor for FormatCommandAction();
      swift_allocObject();

      v45 = sub_1D68A9928(v44, v42);

      v46 = v96;
      v47 = *(v96 + 24);
      v48 = v94;
      *(v94 + v47) = v45;
      v49 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v49 - 8) + 56))(v48 + v47, 0, 1, v49);
      *v48 = v40;
      goto LABEL_62;
    case 16:
      if (qword_1EDF3B0A0 != -1)
      {
        swift_once();
      }

      sub_1D5C0C74C(a2, v13);
      v50 = type metadata accessor for FeedHeadlineAudioCommandContext();
      (*(*(v50 - 8) + 56))(v13, 0, 1, v50);
      type metadata accessor for FormatCommandAction();
      swift_allocObject();

      v52 = sub_1D68A9DE8(v51, v13);
LABEL_49:
      v77 = v52;
      goto LABEL_50;
    case 17:
      if (qword_1EDF3B088 != -1)
      {
        swift_once();
      }

      v73 = a2;
      v74 = v93;
      sub_1D5C0C74C(v73, v93);
      v75 = type metadata accessor for FeedHeadline(0);
      (*(*(v75 - 8) + 56))(v74, 0, 1, v75);
      type metadata accessor for FormatCommandAction();
      swift_allocObject();

      v77 = sub_1D68A9928(v76, v74);
LABEL_50:

      v46 = v96;
      v83 = *(v96 + 24);
      v48 = v94;
      *(v94 + v83) = v77;
      goto LABEL_61;
    case 18:
      if (qword_1EDF3ACD0 != -1)
      {
        swift_once();
      }

      v85 = qword_1EDF3ACE0;
      v86 = a2[5];
      type metadata accessor for FormatCommandAction();
      swift_allocObject();

      swift_unknownObjectRetain();
      v62 = sub_1D6202DC8(v85, v86);
      goto LABEL_60;
    default:
      if (qword_1EDF3AFE8 != -1)
      {
        swift_once();
      }

      v71 = qword_1EDF3AFF0;
LABEL_35:
      v72 = a2[5];
      type metadata accessor for FormatCommandAction();
      swift_allocObject();

      swift_unknownObjectRetain();
      v62 = sub_1D6203B70(v71, v72, 0, 1u);
LABEL_60:
      v46 = v96;
      v83 = *(v96 + 24);
      v48 = v94;
      *(v94 + v83) = v62;
LABEL_61:
      v87 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v87 - 8) + 56))(v48 + v83, 0, 1, v87);
      *v48 = v21;
LABEL_62:
      v88 = v97;
      v89 = v95;
      v48[2] = 0;
      v48[3] = 0;
      v48[1] = v23;
      v90 = v48 + *(v46 + 28);
      *v90 = 0;
      *(v90 + 1) = 0;
      v90[16] = -1;
      sub_1D5C10040(v39);
      sub_1D613ADAC(v48, v88);
      return (*(v89 + 56))(v88, 0, 1, v46);
  }
}

void sub_1D6C8CFEC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t FormatSponsoredBannerNodeStyle.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1D6C8D0C4(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1[2];
  v5 = v1[3];
  v6 = v2[4];
  v7 = v2[5];
  swift_beginAccess();
  v133 = v2;
  v8 = v2[6];
  swift_beginAccess();
  v134 = a1;
  v9 = *(a1 + 48);
  v158 = MEMORY[0x1E69E7CC8];
  v10 = *(v8 + 16);
  if (!__OFADD__(v10, *(v9 + 16)))
  {
    v143 = *(v9 + 16);
    v130 = v6;
    v132 = v4;
    sub_1D6C8ED78();
    v131 = v5;

    v129 = v7;

    v146 = v9;

    sub_1D7261DAC();
    v11 = sub_1D698F4BC(0, v10, 0, MEMORY[0x1E69E7CC0]);
    v152 = *(v8 + 16);
    v145 = v8;
    if (v152)
    {
      v12 = 0;
      v13 = (v8 + 72);
      while (1)
      {
        if (v12 >= *(v145 + 16))
        {
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
          goto LABEL_86;
        }

        v157 = v11;
        v14 = *(v13 - 5);
        v15 = *(v13 - 4);
        v17 = *(v13 - 3);
        v16 = *(v13 - 2);
        v154 = *(v13 - 8);
        v18 = *v13;

        sub_1D5CFCFAC(v17);
        sub_1D5CFCFAC(v16);
        sub_1D62B8658(v18);

        sub_1D5CFCFAC(v17);
        sub_1D5CFCFAC(v16);
        sub_1D62B8658(v18);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v20 = sub_1D6D8CB60(v14, v15);
        v22 = v158[2];
        v23 = (v21 & 1) == 0;
        v24 = __OFADD__(v22, v23);
        v25 = v22 + v23;
        if (v24)
        {
          goto LABEL_84;
        }

        v26 = v21;
        if (v158[3] < v25)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_10;
        }

        v32 = v20;
        sub_1D6D850FC();
        v20 = v32;
        v28 = v158;
        if ((v26 & 1) == 0)
        {
LABEL_13:
          v28[(v20 >> 6) + 8] |= 1 << v20;
          v33 = (v28[6] + 16 * v20);
          *v33 = v14;
          v33[1] = v15;
          v34 = v28[7] + 48 * v20;
          *v34 = v14;
          *(v34 + 8) = v15;
          *(v34 + 16) = v17;
          *(v34 + 24) = v16;
          *(v34 + 32) = v154;
          *(v34 + 40) = v18;
          v35 = v28[2];
          v24 = __OFADD__(v35, 1);
          v36 = v35 + 1;
          if (v24)
          {
            goto LABEL_89;
          }

          v28[2] = v36;

          goto LABEL_15;
        }

LABEL_11:
        v29 = v28[7] + 48 * v20;
        v30 = *(v29 + 16);
        v31 = *(v29 + 24);
        v148 = *(v29 + 40);
        *v29 = v14;
        *(v29 + 8) = v15;
        *(v29 + 16) = v17;
        *(v29 + 24) = v16;
        *(v29 + 32) = v154;
        *(v29 + 40) = v18;

        sub_1D5C84FF4(v30);
        sub_1D5C84FF4(v31);
        sub_1D62B865C(v148);
LABEL_15:
        v158 = v28;
        sub_1D5C84FF4(v17);
        sub_1D5C84FF4(v16);
        sub_1D62B865C(v18);
        v11 = v157;
        v38 = *(v157 + 2);
        v37 = *(v157 + 3);
        if (v38 >= v37 >> 1)
        {
          v11 = sub_1D698F4BC((v37 > 1), v38 + 1, 1, v157);
        }

        ++v12;
        *(v11 + 2) = v38 + 1;
        v39 = &v11[16 * v38];
        *(v39 + 4) = v14;
        *(v39 + 5) = v15;
        v13 += 6;
        if (v152 == v12)
        {
          goto LABEL_18;
        }
      }

      sub_1D6D73148(v25, isUniquelyReferenced_nonNull_native);
      v20 = sub_1D6D8CB60(v14, v15);
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_94;
      }

LABEL_10:
      v28 = v158;
      if ((v26 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }

LABEL_18:
    v153 = sub_1D698F4BC(0, v143, 0, MEMORY[0x1E69E7CC0]);
    v142 = *(v146 + 16);
    if (v142)
    {
      v40 = 0;
      v41 = (v146 + 72);
      do
      {
        if (v40 >= *(v146 + 16))
        {
          goto LABEL_85;
        }

        v46 = *(v41 - 5);
        v45 = *(v41 - 4);
        v48 = *(v41 - 3);
        v47 = *(v41 - 2);
        v155 = *(v41 - 8);
        v49 = *v41;
        v50 = v158[2];

        sub_1D5CFCFAC(v48);
        sub_1D5CFCFAC(v47);
        sub_1D62B8658(v49);
        if (!v50 || (v51 = sub_1D6D8CB60(v46, v45), (v52 & 1) == 0))
        {
          v150 = v40;

          v72 = v48;
          sub_1D5CFCFAC(v48);
          v73 = v47;
          sub_1D5CFCFAC(v47);
          v74 = v49;
          sub_1D62B8658(v49);
          v75 = swift_isUniquelyReferenced_nonNull_native();
          v76 = sub_1D6D8CB60(v46, v45);
          v78 = v158[2];
          v79 = (v77 & 1) == 0;
          v24 = __OFADD__(v78, v79);
          v80 = v78 + v79;
          if (v24)
          {
            goto LABEL_88;
          }

          v81 = v77;
          if (v158[3] >= v80)
          {
            if (v75)
            {
              goto LABEL_44;
            }

            v92 = v76;
            sub_1D6D850FC();
            v76 = v92;
            v83 = v158;
            if ((v81 & 1) == 0)
            {
              goto LABEL_51;
            }

LABEL_45:
            v84 = v83[7] + 48 * v76;
            v85 = *(v84 + 16);
            v86 = *(v84 + 24);
            v87 = *(v84 + 40);
            *v84 = v46;
            *(v84 + 8) = v45;
            *(v84 + 16) = v72;
            *(v84 + 24) = v73;
            *(v84 + 32) = v155;
            *(v84 + 40) = v74;

            sub_1D5C84FF4(v85);
            sub_1D5C84FF4(v86);
            sub_1D62B865C(v87);
          }

          else
          {
            sub_1D6D73148(v80, v75);
            v76 = sub_1D6D8CB60(v46, v45);
            if ((v81 & 1) != (v82 & 1))
            {
              goto LABEL_94;
            }

LABEL_44:
            v83 = v158;
            if (v81)
            {
              goto LABEL_45;
            }

LABEL_51:
            v83[(v76 >> 6) + 8] |= 1 << v76;
            v93 = (v83[6] + 16 * v76);
            *v93 = v46;
            v93[1] = v45;
            v94 = v83[7] + 48 * v76;
            *v94 = v46;
            *(v94 + 8) = v45;
            *(v94 + 16) = v72;
            *(v94 + 24) = v73;
            *(v94 + 32) = v155;
            *(v94 + 40) = v74;
            v95 = v83[2];
            v24 = __OFADD__(v95, 1);
            v96 = v95 + 1;
            if (v24)
            {
              goto LABEL_90;
            }

            v83[2] = v96;
          }

          v158 = v83;
          v97 = *(v153 + 2);
          v98 = *(v153 + 3);

          if (v97 >= v98 >> 1)
          {
            v153 = sub_1D698F4BC((v98 > 1), v97 + 1, 1, v153);
          }

          sub_1D5C84FF4(v72);
          sub_1D5C84FF4(v73);
          sub_1D62B865C(v74);
          v40 = v150;
          *(v153 + 2) = v97 + 1;
          v99 = &v153[16 * v97];
          *(v99 + 4) = v46;
          *(v99 + 5) = v45;
          goto LABEL_22;
        }

        v53 = v158[7] + 48 * v51;
        v144 = *v53;
        v149 = *(v53 + 8);
        v54 = *(v53 + 24);
        v55 = *(v53 + 32);
        v56 = *(v53 + 40);
        v57 = *(v53 + 16);
        v141 = v57;
        if ((~v57 & 0xF000000000000007) == 0)
        {
          sub_1D5CFCFAC(v48);
          v57 = v48;
        }

        v140 = v57;
        v58 = v54;
        if ((~v54 & 0xF000000000000007) == 0)
        {
          sub_1D5CFCFAC(v47);
          v58 = v47;
        }

        v139 = v58;
        v59 = v155;
        if (v55 != 2)
        {
          v59 = v55;
        }

        v156 = v59;
        v60 = v56;
        if (v56 == 2)
        {
          sub_1D62B8658(v49);
          v60 = v49;
        }

        v137 = v49;
        v138 = v60;

        sub_1D5CFCFAC(v141);
        sub_1D5CFCFAC(v54);
        sub_1D62B8658(v56);

        sub_1D5CFCFAC(v141);
        v136 = v54;
        sub_1D5CFCFAC(v54);
        v61 = v56;
        sub_1D62B8658(v56);
        v62 = swift_isUniquelyReferenced_nonNull_native();
        v64 = sub_1D6D8CB60(v144, v149);
        v65 = v158[2];
        v66 = (v63 & 1) == 0;
        v67 = v65 + v66;
        if (__OFADD__(v65, v66))
        {
          goto LABEL_91;
        }

        v68 = v63;
        if (v158[3] >= v67)
        {
          if (v62)
          {
            v71 = v158;
            if ((v63 & 1) == 0)
            {
              goto LABEL_48;
            }
          }

          else
          {
            sub_1D6D850FC();
            v71 = v158;
            if ((v68 & 1) == 0)
            {
              goto LABEL_48;
            }
          }
        }

        else
        {
          sub_1D6D73148(v67, v62);
          v69 = sub_1D6D8CB60(v144, v149);
          if ((v68 & 1) != (v70 & 1))
          {
            goto LABEL_94;
          }

          v64 = v69;
          v71 = v158;
          if ((v68 & 1) == 0)
          {
LABEL_48:
            v71[(v64 >> 6) + 8] |= 1 << v64;
            v88 = (v71[6] + 16 * v64);
            *v88 = v144;
            v88[1] = v149;
            v89 = v71[7] + 48 * v64;
            *v89 = v144;
            *(v89 + 8) = v149;
            *(v89 + 16) = v140;
            *(v89 + 24) = v139;
            *(v89 + 32) = v156;
            *(v89 + 40) = v138;
            v90 = v71[2];
            v24 = __OFADD__(v90, 1);
            v91 = v90 + 1;
            if (v24)
            {
              goto LABEL_92;
            }

            v71[2] = v91;
            goto LABEL_21;
          }
        }

        v42 = v71[7] + 48 * v64;
        v43 = *(v42 + 16);
        v44 = *(v42 + 24);
        v135 = *(v42 + 40);
        *v42 = v144;
        *(v42 + 8) = v149;
        *(v42 + 16) = v140;
        *(v42 + 24) = v139;
        *(v42 + 32) = v156;
        *(v42 + 40) = v138;

        sub_1D5C84FF4(v43);
        sub_1D5C84FF4(v44);
        sub_1D62B865C(v135);

LABEL_21:
        sub_1D5C84FF4(v141);
        sub_1D5C84FF4(v136);
        sub_1D62B865C(v61);

        sub_1D5C84FF4(v48);
        sub_1D5C84FF4(v47);
        sub_1D62B865C(v137);
        v158 = v71;
LABEL_22:
        ++v40;
        v41 += 6;
      }

      while (v142 != v40);
    }

    sub_1D6985DAC(v100);
    v101 = *(v153 + 2);
    if (!v101)
    {
      v104 = MEMORY[0x1E69E7CC0];
LABEL_74:

      v119 = v133;
      v120 = v133[7];
      v121 = v120;
      if ((~v120 & 0xF000000000000007) == 0)
      {
        v121 = *(v134 + 56);
        sub_1D5CFCFAC(v121);
        v119 = v133;
      }

      v122 = v119[8];
      v123 = v122;
      if ((~v122 & 0xF000000000000007) == 0)
      {
        v123 = *(v134 + 64);
        sub_1D5CFCFAC(v123);
        v119 = v133;
      }

      v124 = *(v119 + 72);
      if (v124 == 2)
      {
        LOBYTE(v124) = *(v134 + 72);
      }

      v125 = v119[10];
      v126 = v125;
      if (v125 == 2)
      {
        v126 = *(v134 + 80);
        sub_1D62B8658(v126);
      }

      v127 = swift_allocObject();
      swift_beginAccess();
      *(v127 + 16) = v132;
      *(v127 + 24) = v131;
      *(v127 + 32) = v130;
      *(v127 + 40) = v129;
      swift_beginAccess();
      *(v127 + 48) = v104;
      *(v127 + 56) = v121;
      *(v127 + 64) = v123;
      *(v127 + 72) = v124;
      *(v127 + 80) = v126;
      sub_1D5CFCFAC(v120);
      sub_1D5CFCFAC(v122);
      sub_1D62B8658(v125);
      return v127;
    }

    v102 = 0;
    v103 = v153 + 40;
    v104 = MEMORY[0x1E69E7CC0];
LABEL_60:
    v105 = &v103[16 * v102];
    v106 = v102;
    while (v106 < v101)
    {
      v102 = v106 + 1;
      if (__OFADD__(v106, 1))
      {
        goto LABEL_87;
      }

      if (v158[2])
      {
        v107 = *(v105 - 1);
        v108 = *v105;

        v109 = sub_1D6D8CB60(v107, v108);
        if (v110)
        {
          v111 = v158[7] + 48 * v109;
          v112 = *(v111 + 8);
          v151 = *v111;
          v113 = *(v111 + 16);
          v114 = *(v111 + 24);
          v147 = *(v111 + 32);
          v115 = *(v111 + 40);

          sub_1D5CFCFAC(v113);
          sub_1D5CFCFAC(v114);
          sub_1D62B8658(v115);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v104 = sub_1D698F2A0(0, *(v104 + 2) + 1, 1, v104);
          }

          v117 = *(v104 + 2);
          v116 = *(v104 + 3);
          if (v117 >= v116 >> 1)
          {
            v104 = sub_1D698F2A0((v116 > 1), v117 + 1, 1, v104);
          }

          *(v104 + 2) = v117 + 1;
          v118 = &v104[48 * v117];
          *(v118 + 4) = v151;
          *(v118 + 5) = v112;
          *(v118 + 6) = v113;
          *(v118 + 7) = v114;
          v118[64] = v147;
          *(v118 + 9) = v115;
          v103 = v153 + 40;
          if (v102 != v101)
          {
            goto LABEL_60;
          }

          goto LABEL_74;
        }
      }

      ++v106;
      v105 += 16;
      if (v102 == v101)
      {
        goto LABEL_74;
      }
    }

LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
  }

  __break(1u);
LABEL_94:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

unint64_t sub_1D6C8DC84(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  v4 = *(v3 + 16);

  v5 = MEMORY[0x1E69E7CC0];
  v6 = sub_1D698F2A0(0, v4, 0, MEMORY[0x1E69E7CC0]);
  result = sub_1D698F130(0, v4, 0, v5);
  v58 = result;
  v61 = *(v3 + 16);
  if (v61)
  {
    v8 = 0;
    v59 = v3;
    v60 = v3 + 32;
    do
    {
      if (v8 >= *(v3 + 16))
      {
        goto LABEL_43;
      }

      v66 = v6;
      v9 = v60 + 48 * v8;
      v11 = *v9;
      v10 = *(v9 + 8);
      v13 = *(v9 + 16);
      v12 = *(v9 + 24);
      v63 = *(v9 + 32);
      v14 = *(v9 + 40);

      v68 = v13;
      sub_1D5CFCFAC(v13);
      v64 = v12;
      sub_1D5CFCFAC(v12);
      sub_1D62B8658(v14);
      if (qword_1EDF2AB18 != -1)
      {
        swift_once();
      }

      v62 = v11;
      v70[0] = v11;
      v70[1] = v10;

      v15 = sub_1D6844380(v70);

      v16 = *(v15 + 16);
      if (v16)
      {
        v17 = 0;
        v18 = 32;
        while (1)
        {
          if (v17 >= *(v15 + 16))
          {
            __break(1u);
            goto LABEL_42;
          }

          v20 = *(v15 + v18 + 16);
          v19 = *(v15 + v18 + 32);
          v21 = *(v15 + v18);
          v72 = *(v15 + v18 + 48);
          v71[1] = v20;
          v71[2] = v19;
          v71[0] = v21;
          v22 = v20;
          sub_1D5E3B610(v71, v70);
          if (sub_1D68444DC(a1))
          {
            break;
          }

          ++v17;
          result = sub_1D5E3B66C(v71);
          v18 += 56;
          if (v16 == v17)
          {
            goto LABEL_3;
          }
        }

        result = sub_1D5E3B66C(v71);
        if (v22 <= 1)
        {
          v6 = v66;
          v27 = *(v66 + 2);
          v26 = *(v66 + 3);
          if (v27 >= v26 >> 1)
          {
            result = sub_1D698F2A0((v26 > 1), v27 + 1, 1, v66);
            v6 = result;
          }

          v3 = v59;
          *(v6 + 2) = v27 + 1;
          v28 = &v6[48 * v27];
          *(v28 + 4) = v62;
          *(v28 + 5) = v10;
          *(v28 + 6) = v68;
          *(v28 + 7) = v64;
          v28[64] = v63;
          *(v28 + 9) = v14;
          goto LABEL_5;
        }

        sub_1D5CFCFAC(v68);
        sub_1D5CFCFAC(v64);
        sub_1D62B8658(v14);
        v24 = v58[2];
        v23 = v58[3];
        v6 = v66;
        if (v24 >= v23 >> 1)
        {
          v58 = sub_1D698F130((v23 > 1), v24 + 1, 1, v58);
        }

        sub_1D5C84FF4(v68);
        sub_1D5C84FF4(v64);
        result = sub_1D62B865C(v14);
        v58[2] = v24 + 1;
        v25 = &v58[7 * v24];
        v25[4] = v62;
        v25[5] = v10;
        v25[6] = v68;
        v25[7] = v64;
        *(v25 + 64) = v63;
        v25[9] = v14;
        v25[10] = v22;
      }

      else
      {
LABEL_3:

        sub_1D5C84FF4(v68);
        sub_1D5C84FF4(v64);
        sub_1D62B865C(v14);

        v6 = v66;
      }

      v3 = v59;
LABEL_5:
      ++v8;
    }

    while (v8 != v61);
  }

  sub_1D6C8EDDC();
  v29 = sub_1D72626AC();

  v30 = *(v29 + 16);
  if (v30)
  {
    v31 = (v29 + 72);
    do
    {
      v33 = *(v31 - 5);
      v32 = *(v31 - 4);
      v34 = *(v31 - 3);
      v35 = *(v31 - 2);
      v36 = *(v31 - 8);
      v37 = *v31;

      sub_1D5CFCFAC(v34);
      sub_1D5CFCFAC(v35);
      sub_1D62B8658(v37);
      v39 = *(v6 + 2);
      v38 = *(v6 + 3);
      v40 = v6;
      if (v39 >= v38 >> 1)
      {
        v40 = sub_1D698F2A0((v38 > 1), v39 + 1, 1, v6);
      }

      v31 += 7;
      *(v40 + 2) = v39 + 1;
      v6 = v40;
      v41 = &v40[48 * v39];
      *(v41 + 4) = v33;
      *(v41 + 5) = v32;
      *(v41 + 6) = v34;
      *(v41 + 7) = v35;
      v41[64] = v36;
      *(v41 + 9) = v37;
      --v30;
    }

    while (v30);
  }

  v42 = *(v6 + 2);

  v65 = v42;
  if (v42)
  {
    v43 = 0;
    v44 = (v6 + 72);
    v67 = v6;
    while (v43 < *(v6 + 2))
    {
      v46 = *(v44 - 3);
      v45 = *(v44 - 2);
      v47 = result;
      v48 = *(v44 - 8);
      v69 = *v44;
      v49 = swift_allocObject();
      swift_beginAccess();
      v51 = v47[2];
      v50 = v47[3];
      swift_beginAccess();
      *(v49 + 16) = v51;
      *(v49 + 24) = v50;
      v52 = v47[5];
      *(v49 + 32) = v47[4];
      *(v49 + 40) = v52;
      swift_beginAccess();
      v53 = v47;
      v54 = v47[6];
      swift_beginAccess();
      *(v49 + 48) = v54;
      v55 = v46;
      if ((~v46 & 0xF000000000000007) == 0)
      {
        v55 = v53[7];
        sub_1D5CFCFAC(v55);
      }

      *(v49 + 56) = v55;
      v56 = v45;
      if ((~v45 & 0xF000000000000007) == 0)
      {
        v56 = v53[8];
        sub_1D5CFCFAC(v56);
      }

      *(v49 + 64) = v56;
      if (v48 == 2)
      {
        LOBYTE(v48) = *(v53 + 72);
      }

      *(v49 + 72) = v48;
      v57 = v69;
      if (v69 == 2)
      {
        v57 = v53[10];
        sub_1D62B8658(v57);
      }

      ++v43;

      sub_1D5CFCFAC(v46);
      sub_1D5CFCFAC(v45);
      sub_1D62B8658(v69);

      *(v49 + 80) = v57;
      v44 += 6;
      result = v49;
      v6 = v67;
      if (v65 == v43)
      {
        goto LABEL_40;
      }
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  else
  {
    v49 = result;
LABEL_40:

    return v49;
  }

  return result;
}

uint64_t FormatSponsoredBannerNodeStyle.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t FormatSponsoredBannerNodeStyle.class.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FormatSponsoredBannerNodeStyle.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

uint64_t FormatSponsoredBannerNodeStyle.filledColor.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = v2;
  return sub_1D5CFCFAC(v2);
}

uint64_t FormatSponsoredBannerNodeStyle.unfilledColor.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = v2;
  return sub_1D5CFCFAC(v2);
}

uint64_t FormatSponsoredBannerNodeStyle.__allocating_init(identifier:class:selectors:filledColor:unfilledColor:ignoresSmartInvertColors:userInterfaceStyle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, char a8, uint64_t *a9)
{
  v17 = swift_allocObject();
  v18 = *a6;
  v19 = *a7;
  v20 = *a9;
  swift_beginAccess();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;
  swift_beginAccess();
  *(v17 + 48) = a5;
  *(v17 + 56) = v18;
  *(v17 + 64) = v19;
  *(v17 + 72) = a8;
  *(v17 + 80) = v20;
  return v17;
}

uint64_t FormatSponsoredBannerNodeStyle.init(identifier:class:selectors:filledColor:unfilledColor:ignoresSmartInvertColors:userInterfaceStyle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, char a8, uint64_t *a9)
{
  v16 = *a6;
  v17 = *a7;
  v18 = *a9;
  swift_beginAccess();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  swift_beginAccess();
  *(v9 + 48) = a5;
  *(v9 + 56) = v16;
  *(v9 + 64) = v17;
  *(v9 + 72) = a8;
  *(v9 + 80) = v18;
  return v9;
}

uint64_t FormatSponsoredBannerNodeStyle.deinit()
{

  sub_1D5C84FF4(*(v0 + 56));
  sub_1D5C84FF4(*(v0 + 64));
  sub_1D62B865C(*(v0 + 80));
  return v0;
}

uint64_t FormatSponsoredBannerNodeStyle.__deallocating_deinit()
{

  sub_1D5C84FF4(*(v0 + 56));
  sub_1D5C84FF4(*(v0 + 64));
  sub_1D62B865C(*(v0 + 80));

  return swift_deallocClassInstance();
}

uint64_t sub_1D6C8E674@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D66BCB84(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t FormatSponsoredBannerNodeStyle.Selector.selector.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t FormatSponsoredBannerNodeStyle.Selector.filledColor.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return sub_1D5CFCFAC(v2);
}

uint64_t FormatSponsoredBannerNodeStyle.Selector.unfilledColor.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = v2;
  return sub_1D5CFCFAC(v2);
}

BOOL _s8NewsFeed30FormatSponsoredBannerNodeStyleC8SelectorV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  if ((~v2 & 0xF000000000000007) == 0)
  {
    sub_1D5CFCFAC(v2);
    sub_1D5CFCFAC(v7);
    if ((~v7 & 0xF000000000000007) == 0)
    {
      sub_1D5C84FF4(v2);
      goto LABEL_11;
    }

LABEL_9:
    sub_1D5C84FF4(v2);
    v10 = v7;
LABEL_17:
    sub_1D5C84FF4(v10);
    return 0;
  }

  v16 = v2;
  if ((~v7 & 0xF000000000000007) == 0)
  {
    sub_1D5CFCFAC(v2);
    sub_1D5CFCFAC(v7);
    sub_1D5CFCFAC(v2);

    goto LABEL_9;
  }

  v15 = v7;
  sub_1D5CFCFAC(v2);
  sub_1D5CFCFAC(v7);
  sub_1D5CFCFAC(v2);
  v11 = static FormatColor.== infix(_:_:)(&v16, &v15);

  sub_1D5C84FF4(v2);
  if ((v11 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  if ((~v3 & 0xF000000000000007) == 0)
  {
    sub_1D5CFCFAC(v3);
    sub_1D5CFCFAC(v6);
    if ((~v6 & 0xF000000000000007) == 0)
    {
      sub_1D5C84FF4(v3);
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  v16 = v3;
  if ((~v6 & 0xF000000000000007) == 0)
  {
    sub_1D5CFCFAC(v3);
    sub_1D5CFCFAC(v6);
    sub_1D5CFCFAC(v3);

LABEL_16:
    sub_1D5C84FF4(v3);
    v10 = v6;
    goto LABEL_17;
  }

  v15 = v6;
  sub_1D5CFCFAC(v3);
  sub_1D5CFCFAC(v6);
  sub_1D5CFCFAC(v3);
  v13 = static FormatColor.== infix(_:_:)(&v16, &v15);

  sub_1D5C84FF4(v3);
  if ((v13 & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  if (v4 == 2)
  {
    if (v8 != 2)
    {
      return 0;
    }

    goto LABEL_26;
  }

  result = 0;
  if (v8 != 2 && ((v8 ^ v4) & 1) == 0)
  {
LABEL_26:
    if (v5 == 2)
    {
      sub_1D62B8658(2);
      if (v9 == 2)
      {
        sub_1D62B8658(2);
        sub_1D62B865C(2uLL);
        return 1;
      }

      sub_1D62B8658(v9);
    }

    else
    {
      v16 = v5;
      if (v9 != 2)
      {
        v15 = v9;
        sub_1D62B8658(v5);
        sub_1D62B8658(v9);
        sub_1D62B8658(v5);
        v14 = _s8NewsFeed39FormatSponsoredBannerUserInterfaceStyleO2eeoiySbAC_ACtFZ_0(&v16, &v15);
        sub_1D5D0A58C(v15);
        sub_1D5D0A58C(v16);
        sub_1D62B865C(v5);
        return (v14 & 1) != 0;
      }

      sub_1D62B8658(v5);
      sub_1D62B8658(2);
      sub_1D62B8658(v5);
      sub_1D5D0A58C(v5);
    }

    sub_1D62B865C(v5);
    sub_1D62B865C(v9);
    return 0;
  }

  return result;
}

uint64_t sub_1D6C8EA3C(uint64_t a1)
{
  result = sub_1D6C8EB98(&qword_1EC894588);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6C8EAA4(uint64_t a1)
{
  *(a1 + 16) = sub_1D6C8EB98(&qword_1EDF206C0);
  result = sub_1D6C8EB98(&unk_1EDF09B38);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1D6C8EB0C(void *a1)
{
  a1[1] = sub_1D6C8EB98(&qword_1EDF206C0);
  a1[2] = sub_1D6C8EB98(&unk_1EDF09B38);
  result = sub_1D6C8EB98(&qword_1EC894590);
  a1[3] = result;
  return result;
}

uint64_t sub_1D6C8EB98(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatSponsoredBannerNodeStyle();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6C8EBD8(uint64_t a1)
{
  result = sub_1D6C8EC00();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6C8EC00()
{
  result = qword_1EC894598;
  if (!qword_1EC894598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894598);
  }

  return result;
}

unint64_t sub_1D6C8EC54(uint64_t a1)
{
  *(a1 + 8) = sub_1D66F7A68();
  result = sub_1D66BD6A8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6C8EC84(void *a1)
{
  a1[1] = sub_1D66F7A68();
  a1[2] = sub_1D66BD6A8();
  result = sub_1D6C8ECBC();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6C8ECBC()
{
  result = qword_1EC8945A0[0];
  if (!qword_1EC8945A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC8945A0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed39FormatSponsoredBannerUserInterfaceStyleOSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 2;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void sub_1D6C8ED78()
{
  if (!qword_1EDF05818)
  {
    sub_1D601014C();
    v0 = sub_1D7261E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF05818);
    }
  }
}

void sub_1D6C8EDDC()
{
  if (!qword_1EDF0A960)
  {
    sub_1D69A6BD4();
    v0 = type metadata accessor for FormatNodeStyleSelectorOrder();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF0A960);
    }
  }
}

uint64_t sub_1D6C8EE38()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D6C8EEC0(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_1D6C8F00C(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (((&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v20 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v20 = a2 - 1;
        }

        *v19 = v20;
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t sub_1D6C8F1F4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a4;
  v29 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v34 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DebugFormatServiceResult.CodingKeys();
  swift_getWitnessTable();
  v35 = sub_1D726435C();
  v33 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v8);
  v10 = &v25 - v9;
  v31 = a2;
  v32 = a3;
  v11 = type metadata accessor for DebugFormatServiceResult();
  v28 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v25 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = v36;
  sub_1D7264B0C();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v33;
  v17 = v14;
  v39 = 0;
  sub_1D5F1449C();
  sub_1D726431C();
  v19 = v37;
  v18 = v38;
  v20 = &v14[*(v11 + 44)];
  *v20 = v37;
  *(v20 + 1) = v18;
  v39 = 1;
  v27 = v19;
  v36 = v18;
  sub_1D5E3E824(v19, v18);
  sub_1D61EF7F0();
  sub_1D726431C();
  v26 = v10;
  *&v14[*(v11 + 48)] = v37;
  type metadata accessor for FormatJSONDecoder();
  swift_allocObject();

  sub_1D5B7BACC(v21);
  v22 = v31;
  sub_1D725A69C();
  sub_1D5B952F8(v27, v36);

  (*(v16 + 8))(v26, v35);
  (*(v29 + 32))(v17, v34, v22);
  v23 = v28;
  (*(v28 + 16))(v30, v17, v11);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v23 + 8))(v17, v11);
}

uint64_t sub_1D6C8F680(void *a1, uint64_t a2)
{
  type metadata accessor for DebugFormatServiceResult.CodingKeys();
  swift_getWitnessTable();
  v4 = sub_1D726446C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = v14[0];
  sub_1D7264B5C();
  v10 = (v9 + *(a2 + 44));
  v11 = v10[1];
  v15 = *v10;
  v16 = v11;
  v17 = 0;
  sub_1D5E3E824(v15, v11);
  sub_1D5F13DF8();
  v12 = v14[1];
  sub_1D726443C();
  sub_1D5B952F8(v15, v16);
  if (!v12)
  {
    v15 = *(v9 + *(a2 + 48));
    v17 = 1;
    sub_1D61EF9AC();
    sub_1D726443C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D6C8F86C()
{
  v0 = sub_1D72641CC();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D6C8F8C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D6C8F934(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1D6C8F9A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D6C8FA10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D6C8FA80@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6C8F86C();
  *a1 = result;
  return result;
}

uint64_t sub_1D6C8FABC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D5DBE960(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D6C8FB08@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6C8F86C();
  *a1 = result;
  return result;
}

uint64_t sub_1D6C8FB3C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D6C8FB90(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1D6C8FC9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v41 = a1;
  v6 = sub_1D725895C();
  v42 = *(v6 - 8);
  v43 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v38[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for GroupLayoutContext();
  v48 = *(v10 - 8);
  v49 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v61 = &v38[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for GroupLayoutBindingContext();
  v46 = *(v13 - 8);
  v47 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v38[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v40 = v16;
  v17 = *v3;
  v39 = *v3;
  v18 = *(v3 + 1);
  v19 = v3[16];
  v20 = type metadata accessor for M6_V1.Bound();
  a3[3] = v20;
  v21 = v20;
  v45 = v20;
  a3[4] = sub_1D6C92A0C(&qword_1EDF05DE8, type metadata accessor for M6_V1.Bound);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  boxed_opaque_existential_1[3] = &type metadata for M6_V1;
  v23 = sub_1D5ECDD8C();
  boxed_opaque_existential_1[4] = v23;
  *boxed_opaque_existential_1 = v17;
  boxed_opaque_existential_1[1] = v18;
  *(boxed_opaque_existential_1 + 16) = v19;
  sub_1D5BF03F4(a2, boxed_opaque_existential_1 + *(v21 + 20), type metadata accessor for GroupLayoutContext);
  sub_1D5BEE8A0(v18, v19);
  v24 = v41;
  v44 = sub_1D6C559CC(0, 0, 0, 0, 0);
  sub_1D5BF03F4(v24, v16, type metadata accessor for GroupLayoutBindingContext);
  sub_1D5BF03F4(a2, v61, type metadata accessor for GroupLayoutContext);
  sub_1D725894C();
  v25 = sub_1D725893C();
  v27 = v26;
  (*(v42 + 8))(v9, v43);
  v59 = &type metadata for M6_V1;
  v60 = v23;
  v56[0] = v39;
  v57 = v18;
  v58 = v19;
  type metadata accessor for GroupLayoutKey();
  v28 = swift_allocObject();
  sub_1D5BEE8A0(v18, v19);
  v54 = sub_1D7264C5C();
  v55 = v29;
  v52 = 95;
  v53 = 0xE100000000000000;
  v50 = 45;
  v51 = 0xE100000000000000;
  sub_1D5BF4D9C();
  v30 = sub_1D7263A6C();
  v32 = v31;

  *(v28 + 16) = v30;
  *(v28 + 24) = v32;
  v33 = (v28 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
  *v33 = v25;
  v33[1] = v27;
  sub_1D5B68374(v56, v28 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
  v34 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
  sub_1D5BDA89C(v40, v28 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, type metadata accessor for GroupLayoutBindingContext);
  (*(v46 + 56))(v28 + v34, 0, 1, v47);
  v35 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
  sub_1D5BDA89C(v61, v28 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
  (*(v48 + 56))(v28 + v35, 0, 1, v49);
  result = __swift_destroy_boxed_opaque_existential_1(v56);
  v37 = v45;
  *(boxed_opaque_existential_1 + *(v45 + 24)) = v44;
  *(boxed_opaque_existential_1 + *(v37 + 28)) = v28;
  return result;
}

uint64_t sub_1D6C90138@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1D725A36C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for M6_V1.Bound();
  v10 = *(v2 + *(v9 + 24));
  v34 = v2;
  v11 = sub_1D5ECCA18(sub_1D6C92A54, v33, v10);
  v12 = v2 + *(v9 + 20);
  v13 = v12 + *(type metadata accessor for GroupLayoutContext() + 24);
  if (*(v13 + 21) == 1)
  {
    v14 = sub_1D6C90634(v11, v12);
  }

  else
  {
    v15 = *(v13 + 20);
    v16 = *MEMORY[0x1E69D7130];
    v17 = sub_1D7259D1C();
    (*(*(v17 - 8) + 104))(v8, v16, v17);
    v18 = (*(v5 + 104))(v8, *MEMORY[0x1E69D7370], v4);
    MEMORY[0x1EEE9AC00](v18, v19);
    *(&v30 - 4) = v11;
    *(&v30 - 3) = v12;
    LOWORD(v28) = v15;
    sub_1D6C563C8(0, &qword_1EDF17FD0, MEMORY[0x1E69D73B8]);
    swift_allocObject();
    v14 = sub_1D725A4CC();
  }

  v32 = v14;
  sub_1D725A4DC();
  v20 = v38;
  sub_1D5B49714(0, &unk_1EDF04F70);
  sub_1D5B49714(0, &qword_1EDF04BD8);
  sub_1D6C6DA98();
  v21 = sub_1D6C6DB00();
  v30 = v37;
  v31 = v36;
  v35 = v20;
  *&v36 = v11;
  MEMORY[0x1EEE9AC00](v21, v22);
  v29 = v11;

  v28 = v21;
  v23 = sub_1D725C00C();

  *a1 = 0;
  v24 = v31;
  *(a1 + 24) = v30;
  *(a1 + 8) = v24;
  *&v36 = v23;
  sub_1D5B49714(0, &qword_1EDF1B4C8);
  sub_1D5C184C4();
  sub_1D5BDEFF8();
  v25 = sub_1D72623BC();

  v27 = MEMORY[0x1E69E7CC0];
  *(a1 + 40) = v25;
  *(a1 + 48) = v27;
  return result;
}

uint64_t sub_1D6C9050C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for M6_V1.Bound();
  v7 = *(a2 + *(v6 + 28));
  sub_1D5F76D3C(a1, (a3 + 1));
  v8 = a2 + *(v6 + 20);
  v9 = *(*(v8 + *(type metadata accessor for GroupLayoutContext() + 40)) + 16);
  sub_1D5B68374(v9 + 16, v17);
  sub_1D5B68374(v9 + 56, v16);
  sub_1D5B63F14(v17, v14);
  sub_1D5B63F14(v16, v15);
  sub_1D5B68374(v15, v13);
  v10 = type metadata accessor for CategoryViewStyler();
  v11 = swift_allocObject();
  *(v11 + 16) = 0x4030000000000000;
  sub_1D5B63F14(v13, v11 + 24);
  a3[23] = v10;
  a3[24] = &off_1F5138158;

  __swift_destroy_boxed_opaque_existential_1(v14);
  result = __swift_destroy_boxed_opaque_existential_1(v15);
  a3[20] = v11;
  *a3 = v7;
  return result;
}

uint64_t sub_1D6C90634(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725A36C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for GroupLayoutContext();
  v10 = a2 + *(v9 + 24);
  v11 = *(v10 + 20);
  v12 = *(v10 + 21);
  v13 = *(*(*(a2 + *(v9 + 40)) + 24) + 16);
  v24 = a1;
  sub_1D5B49714(0, &unk_1EDF04F70);
  sub_1D6C6DBC0();

  v14 = sub_1D7262C1C();
  v15 = *MEMORY[0x1E69D7130];
  v16 = sub_1D7259D1C();
  (*(*(v16 - 8) + 104))(v8, v15, v16);
  (*(v5 + 104))(v8, *MEMORY[0x1E69D7370], v4);
  v20 = v14;
  v21 = v13;
  v22 = v11;
  v23 = v12;
  sub_1D6C563C8(0, &qword_1EDF17FD0, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  v17 = sub_1D725A4CC();

  return v17;
}

uint64_t sub_1D6C90854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t *a6@<X8>)
{
  v52 = a5;
  v55 = a6;
  v10 = sub_1D7259F5C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a3 + 96);
  v16 = *(a3 + 104);
  v18 = *(a3 + 112);
  v17 = *(a3 + 120);
  v19 = *(a3 + 136);
  v56 = *(a3 + 128);
  v20 = *(a3 + 144);
  v21 = *(a3 + 152);
  v22 = *(a3 + 160);
  v23 = swift_allocObject();
  v24 = swift_allocObject();
  sub_1D6C561EC(a2, v24 + 16);
  v25 = *(a3 + 48);
  *(v24 + 248) = *(a3 + 32);
  v26 = *(a3 + 64);
  v27 = *(a3 + 80);
  *(v24 + 264) = v25;
  *(v24 + 280) = v26;
  *(v24 + 296) = v27;
  v28 = *(a3 + 16);
  *(v24 + 216) = *a3;
  *(v24 + 232) = v28;
  v53 = v15;
  v54 = v17;
  *(v24 + 312) = v15;
  *(v24 + 320) = v16;
  *(v24 + 328) = v18;
  *(v24 + 336) = v17;
  *(v24 + 344) = v56;
  *(v24 + 352) = v19;
  *(v24 + 360) = v20;
  *(v24 + 368) = v21;
  *(v24 + 376) = v22;
  v29 = a4 + *(type metadata accessor for M6_V1.Bound() + 20);
  result = type metadata accessor for GroupLayoutContext();
  v31 = *(v29 + *(result + 28));
  v32 = __OFADD__(v31, a1);
  v33 = v31 + a1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    v34 = result;
    *(v24 + 384) = v33;
    *(v23 + 16) = v24 | 0x8000000000000000;
    (*(v11 + 16))(v14, v29, v10);
    v35 = -2;
    if (!*(v29 + *(v34 + 24) + 21))
    {
      v35 = -1;
    }

    if (*(v52 + 16) + v35 <= a1)
    {
      v47 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v57.origin.x = v53;
      v57.size.height = v54;
      v57.origin.y = v16;
      v50 = v18;
      v51 = v16;
      v57.size.width = v18;
      MinX = CGRectGetMinX(v57);
      MEMORY[0x1DA6FA970](v19 + MinX, v19, v20, v21, v22);
      v58.origin.x = v19;
      v58.origin.y = v20;
      v58.size.width = v21;
      v58.size.height = v22;
      CGRectGetMaxY(v58);
      sub_1D72632EC();
      v59.origin.x = v19;
      v59.origin.y = v20;
      v59.size.width = v21;
      v59.size.height = v22;
      CGRectGetWidth(v59);
      v60.origin.x = v53;
      v60.size.height = v54;
      v60.size.width = v50;
      v60.origin.y = v51;
      CGRectGetMinX(v60);
      sub_1D72632FC();
      sub_1D7259F1C();
      sub_1D726330C();
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v44 = v43;
      sub_1D6C6DB68();
      v45 = *(type metadata accessor for FeedItemSupplementaryAttributes() - 8);
      v46 = (*(v45 + 80) + 32) & ~*(v45 + 80);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_1D7273AE0;
      v48 = (v47 + v46);
      *v48 = v38;
      v48[1] = v40;
      v48[2] = v42;
      v48[3] = v44;
      swift_storeEnumTagMultiPayload();
    }

    result = (*(v11 + 8))(v14, v10);
    *(v23 + 24) = v47;
    *v55 = v23 | 0xB000000000000000;
  }

  return result;
}

uint64_t sub_1D6C90C44(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  sub_1D6C56678(0, &qword_1EDF17F90, sub_1D6C562C4, &type metadata for CategoryViewLayout, MEMORY[0x1E69D74B0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v16[-v12];
  v20 = a1;
  v14 = swift_allocObject();
  *(v14 + 16) = 6;
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x1E69D7490], v9);
  v17 = a2;
  v18 = a3;
  v19 = a4 & 0x101;
  sub_1D6C563C8(0, &qword_1EDF18080, MEMORY[0x1E69D7150]);
  sub_1D6C6DC58();
  sub_1D7259A2C();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1D6C90E24(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v50) = a4;
  sub_1D6C56678(0, &qword_1EDF17F90, sub_1D6C562C4, &type metadata for CategoryViewLayout, MEMORY[0x1E69D74B0]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = (&v40 - v11);
  v52[0] = a1;
  v13 = sub_1D725994C();
  v14 = swift_allocBox();
  (*(*(v13 - 8) + 104))(v15, *MEMORY[0x1E69D6F50], v13);
  *v12 = v14;
  v16 = v9 + 104;
  v17 = *(v9 + 104);
  v17(v12, *MEMORY[0x1E69D73C0], v8);
  sub_1D6C563C8(0, &qword_1EDF18158, MEMORY[0x1E69D6F38]);
  v19 = v18;
  v49 = sub_1D6C6DCCC();
  sub_1D7259A9C();
  v22 = *(v9 + 8);
  v21 = v9 + 8;
  v20 = v22;
  result = (v22)(v12, v8);
  v24 = *(a2 + 16);
  if (v24)
  {
    v25 = a2 + 32;
    v44 = *MEMORY[0x1E69D74A8];
    v43 = *MEMORY[0x1E69D7098];
    v42 = v50 & 1;
    v41 = (v50 >> 8) & 1;
    v40 = xmmword_1D7273AE0;
    v48 = v21;
    v47 = a1;
    v46 = v8;
    v45 = v20;
    do
    {
      v50 = v24;
      sub_1D6C561EC(v25, v52);
      v51 = a1;
      v17(v12, v44, v8);
      sub_1D6C5644C();
      sub_1D6C56678(0, &qword_1EDF180D0, sub_1D6C562C4, &type metadata for CategoryViewLayout, MEMORY[0x1E69D70D8]);
      v27 = v26;
      v28 = v19;
      v29 = v17;
      v30 = a3;
      v31 = *(v26 - 8);
      v32 = v16;
      v33 = (*(v31 + 80) + 32) & ~*(v31 + 80);
      v34 = swift_allocObject();
      *(v34 + 16) = v40;
      v35 = v34 + v33;
      v16 = v32;
      v36 = (*(v31 + 104))(v35, v43, v27);
      a3 = v30;
      v17 = v29;
      v19 = v28;
      MEMORY[0x1EEE9AC00](v36, v37);
      *(&v40 - 4) = a3;
      *(&v40 - 3) = v52;
      v39 = v49;
      sub_1D72599EC();
      v38 = v45;
      v8 = v46;

      a1 = v47;
      v38(v12, v8);
      result = sub_1D6C92B8C(v52);
      v25 += 200;
      v24 = v50 - 1;
    }

    while (v50 != 1);
  }

  return result;
}

uint64_t sub_1D6C912B4(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  sub_1D6C56678(0, &qword_1EDF17F90, sub_1D6C562C4, &type metadata for CategoryViewLayout, MEMORY[0x1E69D74B0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v16[-v12];
  v20 = a1;
  v14 = swift_allocObject();
  *(v14 + 16) = 6;
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x1E69D7490], v9);
  v17 = a2;
  v18 = a3;
  v19 = a4 & 0x101;
  sub_1D6C563C8(0, &qword_1EDF18158, MEMORY[0x1E69D6F38]);
  sub_1D6C6DCCC();
  sub_1D7259A2C();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1D6C91494(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  sub_1D6C56564();
  v21 = v8;
  v20 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C56678(0, &qword_1EDF17F90, sub_1D6C562C4, &type metadata for CategoryViewLayout, MEMORY[0x1E69D74B0]);
  v13 = v12;
  v19 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v19 - v16;
  v25 = a1;
  swift_getKeyPath();
  (*(v14 + 104))(v17, *MEMORY[0x1E69D7460], v13);
  v24 = *(*(*(a2 + *(type metadata accessor for GroupLayoutContext() + 40)) + 24) + 16);
  sub_1D5F76D3C(a3 + 8, v23);
  v22 = a4 & 0x101;
  sub_1D6C56678(0, &qword_1EDF18010, sub_1D6C566E0, &type metadata for CategoryViewLayoutAttributes, MEMORY[0x1E69D7198]);
  type metadata accessor for CategoryViewLayoutAttributesFactory();
  sub_1D6C562C4();
  sub_1D6C56734();
  sub_1D6C92A0C(&qword_1EDF07200, type metadata accessor for CategoryViewLayoutAttributesFactory);

  sub_1D7259D2C();
  sub_1D6C563C8(0, &qword_1EDF18158, MEMORY[0x1E69D6F38]);
  sub_1D6C6DCCC();
  sub_1D7259A5C();

  (*(v20 + 8))(v11, v21);
  return (*(v14 + 8))(v17, v19);
}

uint64_t sub_1D6C91828(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  sub_1D6C56678(0, &qword_1EDF17F90, sub_1D6C562C4, &type metadata for CategoryViewLayout, MEMORY[0x1E69D74B0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v16[-v12];
  v20 = a1;
  v14 = swift_allocObject();
  *(v14 + 16) = 6;
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x1E69D7490], v9);
  v17 = a2;
  v18 = a3;
  v19 = a4 & 0x101;
  sub_1D6C563C8(0, &qword_1EDF18080, MEMORY[0x1E69D7150]);
  sub_1D6C6DC58();
  sub_1D7259A2C();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1D6C91A08(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  sub_1D6C56678(0, &qword_1EDF17F90, sub_1D6C562C4, &type metadata for CategoryViewLayout, MEMORY[0x1E69D74B0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = (&v42 - v12);
  v55 = a1;
  v14 = sub_1D725994C();
  v15 = swift_allocBox();
  (*(*(v14 - 8) + 104))(v16, *MEMORY[0x1E69D6F50], v14);
  *v13 = v15;
  v17 = *MEMORY[0x1E69D73C0];
  v52 = *(v10 + 104);
  v53 = v10 + 104;
  v52(v13, v17, v9);
  sub_1D6C563C8(0, &qword_1EDF18158, MEMORY[0x1E69D6F38]);
  v19 = v18;
  v50 = sub_1D6C6DCCC();
  v51 = v19;
  sub_1D7259A9C();
  v22 = *(v10 + 8);
  v21 = v10 + 8;
  v20 = v22;
  result = v22(v13, v9);
  v24 = *(a2 + 16);
  if (v24)
  {
    v25 = (a2 + 32);
    v46 = *MEMORY[0x1E69D74A8];
    v26 = *MEMORY[0x1E69D7098];
    v44 = a4 & 1;
    v45 = v26;
    v43 = (a4 >> 8) & 1;
    v42 = xmmword_1D7273AE0;
    v48 = v9;
    v49 = a1;
    v47 = v20;
    do
    {
      v27 = *v25++;
      v54 = v27;
      v55 = a1;
      v52(v13, v46, v9);
      sub_1D6C5644C();
      sub_1D6C56678(0, &qword_1EDF180D0, sub_1D6C562C4, &type metadata for CategoryViewLayout, MEMORY[0x1E69D70D8]);
      v29 = v28;
      v30 = *(v28 - 8);
      v31 = v13;
      v32 = v21;
      v33 = a3;
      v34 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v35 = swift_allocObject();
      *(v35 + 16) = v42;
      v36 = v35 + v34;
      a3 = v33;
      v21 = v32;
      v13 = v31;
      v37 = (*(v30 + 104))(v36, v45, v29);
      MEMORY[0x1EEE9AC00](v37, v38);
      v39 = v54;
      *(&v42 - 4) = a3;
      *(&v42 - 3) = v39;

      v41 = v50;
      a1 = v49;
      sub_1D72599EC();
      v40 = v47;
      v9 = v48;

      result = v40(v13, v9);
      --v24;
    }

    while (v24);
  }

  return result;
}

uint64_t sub_1D6C91E0C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  sub_1D6C56678(0, &qword_1EDF17F90, sub_1D6C562C4, &type metadata for CategoryViewLayout, MEMORY[0x1E69D74B0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = (v27 - v12);
  v29 = a1;
  v34 = a1;
  v14 = swift_allocObject();
  *(v14 + 16) = 3;
  *v13 = v14;
  v15 = *MEMORY[0x1E69D7490];
  v16 = *(v10 + 104);
  v16(v13, v15, v9);
  v30 = a2;
  v31 = a2;
  v32 = a3;
  v27[1] = a4 & 1;
  v33 = a4 & 0x101;
  v27[0] = (a4 >> 8) & 1;
  sub_1D6C563C8(0, &qword_1EDF18158, MEMORY[0x1E69D6F38]);
  v18 = v17;
  v19 = sub_1D6C6DCCC();
  v26 = v19;
  v28 = v18;
  sub_1D7259A2C();
  v20 = a3;
  v21 = *(v10 + 8);
  result = v21(v13, v9);
  if (*(v20 + 16) >= 2uLL)
  {
    v34 = v29;
    v23 = swift_allocObject();
    *(v23 + 16) = 3;
    *v13 = v23;
    v24 = (v16)(v13, v15, v9);
    MEMORY[0x1EEE9AC00](v24, v25);
    *&v27[-8] = v30;
    *&v27[-6] = v20;
    v26 = v19;
    sub_1D7259A2C();
    return v21(v13, v9);
  }

  return result;
}

uint64_t sub_1D6C920F0(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  sub_1D6C56564();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v26 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C56678(0, &qword_1EDF17F90, sub_1D6C562C4, &type metadata for CategoryViewLayout, MEMORY[0x1E69D74B0]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v23 - v17;
  v31 = a1;
  swift_getKeyPath();
  v19 = *MEMORY[0x1E69D7460];
  v25 = v15;
  v20 = *(v15 + 104);
  v27 = v14;
  result = v20(v18, v19, v14);
  v30 = a2;
  if (*(a3 + 16))
  {
    sub_1D5F76D3C(a3 + 40, v29);
    v28 = a4 & 0x101;
    sub_1D6C56678(0, &qword_1EDF18010, sub_1D6C566E0, &type metadata for CategoryViewLayoutAttributes, MEMORY[0x1E69D7198]);
    type metadata accessor for CategoryViewLayoutAttributesFactory();
    sub_1D6C562C4();
    v24 = v9;
    sub_1D6C56734();
    sub_1D6C92A0C(&qword_1EDF07200, type metadata accessor for CategoryViewLayoutAttributesFactory);

    v22 = v26;
    sub_1D7259D2C();
    sub_1D6C563C8(0, &qword_1EDF18158, MEMORY[0x1E69D6F38]);
    sub_1D6C6DCCC();
    sub_1D7259A5C();

    (*(v10 + 8))(v22, v24);
    return (*(v25 + 8))(v18, v27);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6C92494(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  sub_1D6C56564();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v26 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C56678(0, &qword_1EDF17F90, sub_1D6C562C4, &type metadata for CategoryViewLayout, MEMORY[0x1E69D74B0]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v23 - v17;
  v31 = a1;
  swift_getKeyPath();
  v19 = *MEMORY[0x1E69D7460];
  v25 = v15;
  v20 = *(v15 + 104);
  v27 = v14;
  result = v20(v18, v19, v14);
  v30 = a2;
  if (*(a3 + 16) < 2uLL)
  {
    __break(1u);
  }

  else
  {
    sub_1D5F76D3C(a3 + 240, v29);
    v28 = a4 & 0x101;
    sub_1D6C56678(0, &qword_1EDF18010, sub_1D6C566E0, &type metadata for CategoryViewLayoutAttributes, MEMORY[0x1E69D7198]);
    type metadata accessor for CategoryViewLayoutAttributesFactory();
    sub_1D6C562C4();
    v24 = v9;
    sub_1D6C56734();
    sub_1D6C92A0C(&qword_1EDF07200, type metadata accessor for CategoryViewLayoutAttributesFactory);

    v22 = v26;
    sub_1D7259D2C();
    sub_1D6C563C8(0, &qword_1EDF18158, MEMORY[0x1E69D6F38]);
    sub_1D6C6DCCC();
    sub_1D7259A5C();

    (*(v10 + 8))(v22, v24);
    return (*(v25 + 8))(v18, v27);
  }

  return result;
}

unint64_t sub_1D6C92868(uint64_t a1)
{
  *(a1 + 8) = sub_1D6C92898();
  result = sub_1D6C928EC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6C92898()
{
  result = qword_1EDF05D40;
  if (!qword_1EDF05D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05D40);
  }

  return result;
}

unint64_t sub_1D6C928EC()
{
  result = qword_1EDF05D48[0];
  if (!qword_1EDF05D48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF05D48);
  }

  return result;
}

uint64_t type metadata accessor for M6_V1.Bound()
{
  result = qword_1EDF05DD8;
  if (!qword_1EDF05DD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6C929B4(uint64_t a1)
{
  result = sub_1D6C92A0C(&qword_1EDF05DF0, type metadata accessor for M6_V1.Bound);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6C92A0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D6C92B0C(uint64_t a1, uint64_t (*a2)(uint64_t, void, void, void))
{
  if (*(v2 + 33))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return a2(a1, *(v2 + 16), *(v2 + 24), v3 | *(v2 + 32));
}

uint64_t sub_1D6C92B4C(uint64_t a1, uint64_t (*a2)(uint64_t, void, void, void))
{
  if (*(v2 + 33))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return a2(a1, *(v2 + 16), *(v2 + 24), v3 | *(v2 + 32));
}

uint64_t sub_1D6C92BF8(uint64_t a1, uint64_t (*a2)(uint64_t, void, void, void))
{
  if (*(v2 + 33))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return a2(a1, *(v2 + 16), *(v2 + 24), v3 | *(v2 + 32));
}

uint64_t sub_1D6C92C20()
{
  sub_1D5CED7F0(v0 + OBJC_IVAR____TtC8NewsFeed24DebugFormatBindingResult_content, type metadata accessor for FormatContent.Resolved);
  sub_1D5CED7F0(v0 + OBJC_IVAR____TtC8NewsFeed24DebugFormatBindingResult_bindings, type metadata accessor for GroupLayoutBindingContext);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DebugFormatBindingResult()
{
  result = qword_1EC8946A8;
  if (!qword_1EC8946A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6C92D10()
{
  result = type metadata accessor for FormatContent.Resolved();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for GroupLayoutBindingContext();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1D6C92DDC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1D72585BC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FormatCustomItem.Action();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C94748(v3, v14, type metadata accessor for FormatCustomItem.Action);
  v15 = *(v7 + 32);
  v15(v10, v14, v6);
  v16 = a1[14];
  if (!v16)
  {
    return (v15)(a2, v10, v6);
  }

  v18 = a1[15];
  v17 = a1[16];
  v19 = a1[13];

  sub_1D69F65B4(v10, v19, v16, v18, v17, a2);
  (*(v7 + 8))(v10, v6);
}

uint64_t FormatCustomItem.selectors.getter()
{
  type metadata accessor for FormatCustomItem();
}

uint64_t type metadata accessor for FormatCustomItem()
{
  result = qword_1EDF40AB0;
  if (!qword_1EDF40AB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FormatCustomItem.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatCustomItem.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatCustomItem.properties.getter()
{
  type metadata accessor for FormatCustomItem();
}

uint64_t sub_1D6C93108(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for FormatCustomItem() + 32);

  *(a2 + v4) = v3;
  return result;
}

uint64_t FormatCustomItem.selectors.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FormatCustomItem() + 32);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1D6C931E0()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x6E6F69746361;
  v4 = 0x69747265706F7270;
  if (v1 != 3)
  {
    v4 = 0x726F7463656C6573;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701667182;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D6C93278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6C94448(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6C932A0(uint64_t a1)
{
  v2 = sub_1D5E19160();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6C932DC(uint64_t a1)
{
  v2 = sub_1D5E19160();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatCustomItem.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D6C94038(0, &qword_1EDF02750, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v14[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E19160();
  sub_1D7264B5C();
  v18 = 0;
  sub_1D72643FC();
  if (!v2)
  {
    v17 = 1;
    sub_1D72643FC();
    v11 = type metadata accessor for FormatCustomItem();
    v16 = 2;
    type metadata accessor for FormatCustomItem.Action();
    sub_1D6C942E8(&qword_1EDF114F0, type metadata accessor for FormatCustomItem.Action);
    sub_1D72643BC();
    v15 = *(v3 + *(v11 + 28));
    v14[15] = 3;
    sub_1D5E4C584();
    sub_1D6C9409C(&qword_1EDF05030, sub_1D5B59D2C);
    sub_1D726443C();
    v12 = *(v3 + *(v11 + 32));
    if (*(v12 + 16))
    {
      sub_1D5E08760(v12, v10, 4);
    }
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t FormatCustomItem.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  sub_1D5C8CD38();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v36 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D631F8C0(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C94038(0, &qword_1EDF19C48, MEMORY[0x1E69E6F48]);
  v11 = v10;
  v37 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v32 - v13;
  v15 = type metadata accessor for FormatCustomItem();
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = (&v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E19160();
  v19 = v38;
  sub_1D7264B0C();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v37;
  v45 = 0;
  v21 = sub_1D72642BC();
  v23 = v22;
  v24 = v11;
  v26 = v14;
  v27 = v24;
  *v18 = v21;
  v18[1] = v23;
  v38 = v23;
  v44 = 1;
  v18[2] = sub_1D72642BC();
  v18[3] = v28;
  type metadata accessor for FormatCustomItem.Action();
  v43 = 2;
  sub_1D6C942E8(&qword_1EDF30730, type metadata accessor for FormatCustomItem.Action);
  v32 = 0;
  sub_1D726427C();
  sub_1D6C946E0(v9, v18 + v15[6], sub_1D631F8C0);
  sub_1D5E4C584();
  v42 = 3;
  sub_1D6C9409C(&qword_1EDF3C910, sub_1D5B59CD8);
  sub_1D726431C();
  *(v18 + v15[7]) = v39;
  v41 = 4;
  if (sub_1D726434C())
  {
    v40 = 4;
    sub_1D6C942E8(&qword_1EDF3BE00, sub_1D5C8CD38);
    v29 = v34;
    sub_1D726431C();
    v30 = sub_1D725A74C();
    (*(v33 + 8))(v36, v29);
  }

  else
  {
    v30 = MEMORY[0x1E69E7CD0];
  }

  v31 = v35;
  (*(v20 + 8))(v26, v27);
  *(v18 + v15[8]) = v30;
  sub_1D6C94748(v18, v31, type metadata accessor for FormatCustomItem);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D6C94108(v18, type metadata accessor for FormatCustomItem);
}

uint64_t _s8NewsFeed16FormatCustomItemV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  sub_1D6C94608(0, &qword_1EDF114E0, type metadata accessor for FormatCustomItem.Action);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v33 - v7;
  v9 = type metadata accessor for FormatCustomItem.Action();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D631F8C0(0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C94608(0, &qword_1EDF114E8, sub_1D631F8C0);
  v19 = v18;
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v33 - v21;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1D72646CC() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_16;
  }

  v34 = v5;
  v35 = v8;
  v36 = type metadata accessor for FormatCustomItem();
  v23 = *(v36 + 24);
  v24 = *(v19 + 48);
  sub_1D6C94748(a1 + v23, v22, sub_1D631F8C0);
  sub_1D6C94748(a2 + v23, &v22[v24], sub_1D631F8C0);
  v25 = *(v10 + 48);
  if (v25(v22, 1, v9) == 1)
  {
    if (v25(&v22[v24], 1, v9) == 1)
    {
      sub_1D6C94108(v22, sub_1D631F8C0);
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  sub_1D6C94748(v22, v17, sub_1D631F8C0);
  if (v25(&v22[v24], 1, v9) == 1)
  {
    sub_1D6C94108(v17, type metadata accessor for FormatCustomItem.Action);
LABEL_12:
    sub_1D6C94668(v22);
LABEL_16:
    v31 = 0;
    return v31 & 1;
  }

  sub_1D6C946E0(&v22[v24], v13, type metadata accessor for FormatCustomItem.Action);
  v26 = v35;
  v27 = *(v34 + 48);
  sub_1D6C94748(v17, v35, type metadata accessor for FormatCustomItem.Action);
  sub_1D6C94748(v13, v26 + v27, type metadata accessor for FormatCustomItem.Action);
  LODWORD(v34) = sub_1D72584CC();
  sub_1D6C94108(v13, type metadata accessor for FormatCustomItem.Action);
  v28 = sub_1D72585BC();
  v29 = *(*(v28 - 8) + 8);
  v29(v26 + v27, v28);
  v29(v26, v28);
  sub_1D6C94108(v17, type metadata accessor for FormatCustomItem.Action);
  sub_1D6C94108(v22, sub_1D631F8C0);
  if ((v34 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_14:
  v30 = v36;
  if ((sub_1D6339F3C(*(a1 + *(v36 + 28)), *(a2 + *(v36 + 28))) & 1) == 0)
  {
    goto LABEL_16;
  }

  v31 = sub_1D5BFC390(*(a1 + *(v30 + 32)), *(a2 + *(v30 + 32)));
  return v31 & 1;
}

void sub_1D6C94038(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5E19160();
    v7 = a3(a1, &type metadata for FormatCustomItem.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D6C9409C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D5E4C584();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D6C94108(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6C94168(void *a1)
{
  a1[1] = sub_1D6C942E8(qword_1EDF30680, type metadata accessor for FormatCustomItem);
  a1[2] = sub_1D6C942E8(&qword_1EDF114B0, type metadata accessor for FormatCustomItem);
  result = sub_1D6C942E8(&qword_1EC8946B8, type metadata accessor for FormatCustomItem);
  a1[3] = result;
  return result;
}

void sub_1D6C9423C()
{
  sub_1D631F8C0(319);
  if (v0 <= 0x3F)
  {
    sub_1D5E4C584();
    if (v1 <= 0x3F)
    {
      sub_1D5B559F8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D6C942E8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D6C94344()
{
  result = qword_1EC8946C0;
  if (!qword_1EC8946C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8946C0);
  }

  return result;
}

unint64_t sub_1D6C9439C()
{
  result = qword_1EDF30750;
  if (!qword_1EDF30750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF30750);
  }

  return result;
}

unint64_t sub_1D6C943F4()
{
  result = qword_1EDF30758;
  if (!qword_1EDF30758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF30758);
  }

  return result;
}

uint64_t sub_1D6C94448(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726F7463656C6573 && a2 == 0xE900000000000073)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

void sub_1D6C94608(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1D6C94668(uint64_t a1)
{
  sub_1D6C94608(0, &qword_1EDF114E8, sub_1D631F8C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D6C946E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6C94748(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6C947C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  sub_1D6C94D60(0, &qword_1EC8946D8, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6C94D0C();
  sub_1D7264B5C();
  v16 = 0;
  sub_1D72643FC();
  if (!v5)
  {
    v15 = 1;
    sub_1D72643FC();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1D6C94940()
{
  if (*v0)
  {
    return 0x73746E65746E6F63;
  }

  else
  {
    return 0x656D616E656C6966;
  }
}

uint64_t sub_1D6C94974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D616E656C6966 && a2 == 0xE800000000000000;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73746E65746E6F63 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D72646CC();

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

uint64_t sub_1D6C94A50(uint64_t a1)
{
  v2 = sub_1D6C94D0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6C94A8C(uint64_t a1)
{
  v2 = sub_1D6C94D0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6C94AC8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D6C94B18(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1D6C94B18(void *a1)
{
  sub_1D6C94D60(0, &qword_1EC8946C8, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6C94D0C();
  sub_1D7264B0C();
  if (!v1)
  {
    v13 = 0;
    v9 = sub_1D72642BC();
    v12 = 1;
    sub_1D72642BC();
    (*(v5 + 8))(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_1D6C94D0C()
{
  result = qword_1EC8946D0;
  if (!qword_1EC8946D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8946D0);
  }

  return result;
}

void sub_1D6C94D60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6C94D0C();
    v7 = a3(a1, &type metadata for DebugFormatWorkspaceSnapshotBundleFile.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6C94DD8()
{
  result = qword_1EC8946E0;
  if (!qword_1EC8946E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8946E0);
  }

  return result;
}

unint64_t sub_1D6C94E30()
{
  result = qword_1EC8946E8;
  if (!qword_1EC8946E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8946E8);
  }

  return result;
}

unint64_t sub_1D6C94E88()
{
  result = qword_1EC8946F0;
  if (!qword_1EC8946F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8946F0);
  }

  return result;
}

uint64_t type metadata accessor for DebugGroupLayoutKey()
{
  result = qword_1EDF2CF28;
  if (!qword_1EDF2CF28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D6C94F50()
{
  result = sub_1D5C10AB0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for GroupLayoutBindingContext();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for GroupLayoutContext();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1D6C95024()
{
  if (!qword_1EDF05400)
  {
    sub_1D72585BC();
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF05400);
    }
  }
}

uint64_t sub_1D6C9507C()
{
  v0 = sub_1D72585BC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  WebEmbedDataVisualization.identifier.getter();
  sub_1D72621EC();

  v5 = sub_1D6D28818();
  MEMORY[0x1DA6FC0B0](*(v5 + 16));
  v6 = *(v5 + 16);
  if (v6)
  {
    v9 = *(v1 + 16);
    v7 = v1 + 16;
    v8 = v9;
    v10 = (*(v7 + 64) + 32) & ~*(v7 + 64);
    v14[1] = v5;
    v11 = v5 + v10;
    v12 = *(v7 + 56);
    do
    {
      v8(v4, v11, v0);
      sub_1D5B6D0FC(&qword_1EDF3C3E0, MEMORY[0x1E6968FB0]);
      sub_1D7261E8C();
      (*(v7 - 8))(v4, v0);
      v11 += v12;
      --v6;
    }

    while (v6);
  }
}

uint64_t sub_1D6C9525C()
{
  v0 = sub_1D72585BC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7264A0C();
  WebEmbedDataVisualization.identifier.getter();
  sub_1D72621EC();

  v5 = sub_1D6D28818();
  MEMORY[0x1DA6FC0B0](*(v5 + 16));
  v6 = *(v5 + 16);
  if (v6)
  {
    v9 = *(v1 + 16);
    v7 = v1 + 16;
    v8 = v9;
    v10 = (*(v7 + 64) + 32) & ~*(v7 + 64);
    v14 = v5;
    v11 = v5 + v10;
    v12 = *(v7 + 56);
    do
    {
      v8(v4, v11, v0);
      sub_1D5B6D0FC(&qword_1EDF3C3E0, MEMORY[0x1E6968FB0]);
      sub_1D7261E8C();
      (*(v7 - 8))(v4, v0);
      v11 += v12;
      --v6;
    }

    while (v6);
  }

  return sub_1D7264A5C();
}

uint64_t sub_1D6C95424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = WebEmbedDataVisualization.identifier.getter();
  v8 = v7;
  if (v6 == WebEmbedDataVisualization.identifier.getter() && v8 == v9)
  {
  }

  else
  {
    v10 = sub_1D72646CC();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = *(a3 + 20);
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);

  return sub_1D5D61944(v12, v13);
}

uint64_t sub_1D6C95508()
{
  v0 = sub_1D72585BC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7264A0C();
  WebEmbedDataVisualization.identifier.getter();
  sub_1D72621EC();

  v5 = sub_1D6D28818();
  MEMORY[0x1DA6FC0B0](*(v5 + 16));
  v6 = *(v5 + 16);
  if (v6)
  {
    v9 = *(v1 + 16);
    v7 = v1 + 16;
    v8 = v9;
    v10 = (*(v7 + 64) + 32) & ~*(v7 + 64);
    v14 = v5;
    v11 = v5 + v10;
    v12 = *(v7 + 56);
    do
    {
      v8(v4, v11, v0);
      sub_1D5B6D0FC(&qword_1EDF3C3E0, MEMORY[0x1E6968FB0]);
      sub_1D7261E8C();
      (*(v7 - 8))(v4, v0);
      v11 += v12;
      --v6;
    }

    while (v6);
  }

  return sub_1D7264A5C();
}

uint64_t sub_1D6C956D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D6C9C9F4(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v54 = &v50[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9, v10);
  v53 = &v50[-v11];
  sub_1D6C9C9F4(0, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v50[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v50[-v18];
  v20 = type metadata accessor for FormatSlotDefinitionItemSet();
  MEMORY[0x1EEE9AC00](v20, v21);
  v55 = &v50[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v50[-v25];
  v28 = v27;
  sub_1D5CDE454(a1, v19, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
  v29 = *(v28 + 48);
  if (v29(v19, 1, v20) == 1)
  {
    sub_1D6C9C930(v19, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
    return sub_1D5CDE454(a2, a3, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
  }

  sub_1D6C9C76C(v19, v26, type metadata accessor for FormatSlotDefinitionItemSet);
  sub_1D5CDE454(a2, v15, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
  if (v29(v15, 1, v20) == 1)
  {
    sub_1D6C9C930(v15, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
    sub_1D6C9C76C(v26, a3, type metadata accessor for FormatSlotDefinitionItemSet);
    return (*(v28 + 56))(a3, 0, 1, v20);
  }

  v31 = v55;
  sub_1D6C9C76C(v15, v55, type metadata accessor for FormatSlotDefinitionItemSet);
  v32 = *(v26 + 1);
  if ((sub_1D5E1EFE4(v32, *(v31 + 1)) & 1) == 0)
  {
    goto LABEL_16;
  }

  result = sub_1D5EECE54(v33, v32);
  v34 = *v26;
  v35 = *v31;
  v36 = 0x7FFFFFFF;
  v37 = *v26 == 0x7FFFFFFF || v35 == 0x7FFFFFFF;
  v38 = 0x7FFFFFFF;
  if (!v37)
  {
    v38 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      __break(1u);
      return result;
    }
  }

  v39 = *(v26 + 1);
  if (v39 == 0x7FFFFFFF)
  {
    v41 = v54;
    goto LABEL_18;
  }

  v40 = *(v31 + 1);
  v41 = v54;
  if (v40 != 0x7FFFFFFF)
  {
    v36 = v39 + v40;
    if (__OFADD__(v39, v40))
    {
      __break(1u);
LABEL_16:
      type metadata accessor for FormatDerivedDataError();
      sub_1D6C50C08(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
      swift_allocError();
      *v42 = 0xD000000000000028;
      v42[1] = 0x80000001D73B7940;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_1D6C9C70C(v31, type metadata accessor for FormatSlotDefinitionItemSet);
      return sub_1D6C9C70C(v26, type metadata accessor for FormatSlotDefinitionItemSet);
    }
  }

LABEL_18:
  v51 = v38;
  v52 = result;
  v54 = v28;
  sub_1D5CDE454(&v26[*(v20 + 36)], v41, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  v43 = sub_1D725B76C();
  v44 = *(v43 - 8);
  v45 = *(v44 + 48);
  if (v45(v41, 1, v43) == 1)
  {
    v46 = v53;
    sub_1D5CDE454(&v55[*(v20 + 36)], v53, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    v47 = v45(v41, 1, v43);
    v48 = v46;
    if (v47 != 1)
    {
      sub_1D6C9C930(v41, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    }
  }

  else
  {
    v48 = v53;
    (*(v44 + 32))(v53, v41, v43);
    (*(v44 + 56))(v48, 0, 1, v43);
  }

  sub_1D6C9C70C(v55, type metadata accessor for FormatSlotDefinitionItemSet);
  sub_1D6C9C70C(v26, type metadata accessor for FormatSlotDefinitionItemSet);
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *a3 = v51;
  *(a3 + 4) = v36;
  v49 = MEMORY[0x1E69E7CC0];
  *(a3 + 8) = v52;
  *(a3 + 16) = v49;
  sub_1D5CDE22C(0);
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  sub_1D5FC55FC(v48, a3 + *(v20 + 36));
  return (*(v54 + 7))(a3, 0, 1, v20);
}

uint64_t sub_1D6C95D8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for FormatDerivedDataBindingSlotResult();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v85 - v15;
  v17 = type metadata accessor for FormatCompilingSlotDefinition(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17 - 8, v19);
  v99 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for FormatSlotDefinition();
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v98 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v100 = &v85 - v26;
  sub_1D6C9C9F4(0, &qword_1EC8946F8, type metadata accessor for FormatDerivedDataBindingSlotResult);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v101 = &v85 - v29;
  v109 = *(a2 + 40);
  v30 = sub_1D6C9BDF8(v109);
  if (!v30)
  {
    goto LABEL_20;
  }

  v97 = v18;
  v31 = *(v30 + 30);
  if (v31 >> 13 || (v32 = v30[4], (v30[4] & 0xC0) != 0x80) || *(v30 + 1) != 0 || v30[4] != 128)
  {
LABEL_19:

LABEL_20:
    type metadata accessor for FormatDerivedDataError();
    sub_1D6C50C08(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
    swift_allocError();
    *v37 = 0xD000000000000027;
    v37[1] = 0x80000001D73EF800;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v92 = v9;
  v95 = v8;
  v88 = a1;
  v33 = v30[5];
  v93 = v30[6];
  v94 = v33;
  v34 = *(v30 + 14) | (v31 << 32);
  v104 = MEMORY[0x1E69E7CC8];
  v96 = v30;
  swift_beginAccess();
  v35 = v96[8];
  if (v35 >> 62)
  {
    goto LABEL_54;
  }

  v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:
  v87 = v16;
  v90 = v12;
  v91 = a2;
  v89 = a3;
  sub_1D67084A4(0, 0, v32, v94, v93, v34);

  if (v36)
  {
    v34 = 0;
    a3 = v35 & 0xC000000000000001;
    v16 = v35 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (a3)
      {
        a2 = MEMORY[0x1DA6FB460](v34, v35);
        v12 = (v34 + 1);
        if (__OFADD__(v34, 1))
        {
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }
      }

      else
      {
        if (v34 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_53:
          __break(1u);
LABEL_54:
          v36 = sub_1D7263BFC();
          goto LABEL_8;
        }

        a2 = *(v35 + 8 * v34 + 32);

        v12 = (v34 + 1);
        if (__OFADD__(v34, 1))
        {
          goto LABEL_18;
        }
      }

      LOBYTE(v32) = v102;
      sub_1D6C9683C(a2, &v104);
      if (v4)
      {
      }

      ++v34;
    }

    while (v12 != v36);
  }

  v12 = v91[1];
  v39 = v12 + 56;
  v40 = 1 << v12[32];
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  a3 = v41 & *(v12 + 7);
  v34 = (v40 + 63) >> 6;
  v93 = (v92 + 56);

  a2 = 0;
  while (a3)
  {
LABEL_30:
    v45 = __clz(__rbit64(a3));
    a3 &= a3 - 1;
    v16 = v12;
    v46 = (*(v12 + 6) + ((a2 << 10) | (16 * v45)));
    v47 = *v46;
    v35 = v46[1];
    v48 = v104;
    v49 = *(v104 + 16);

    if (v49 && (v50 = sub_1D5B69D90(v47, v35), (v51 & 1) != 0))
    {
      v42 = *(v48 + 56);
      v32 = v92;
      v43 = v101;
      sub_1D6C9C6A4(v42 + *(v92 + 72) * v50, v101, type metadata accessor for FormatDerivedDataBindingSlotResult);
      (*(v32 + 56))(v43, 0, 1, v95);

      sub_1D6C9C930(v43, &qword_1EC8946F8, type metadata accessor for FormatDerivedDataBindingSlotResult);
      v12 = v16;
    }

    else
    {
      v94 = v47;
      v52 = v101;
      (*v93)(v101, 1, 1, v95);
      sub_1D6C9C930(v52, &qword_1EC8946F8, type metadata accessor for FormatDerivedDataBindingSlotResult);
      v32 = *(v102 + 16);
      if (*(v32 + 16))
      {
        v53 = sub_1D5B69D90(v94, v35);
        v12 = v16;
        if (v54)
        {
          v85 = v16;
          v55 = v99;
          sub_1D6C9C6A4(*(v32 + 56) + *(v97 + 72) * v53, v99, type metadata accessor for FormatCompilingSlotDefinition);
          v56 = v98;
          sub_1D6C9C6A4(v55, v98, type metadata accessor for FormatSlotDefinition);
          sub_1D6C9C70C(v55, type metadata accessor for FormatCompilingSlotDefinition);
          v57 = v100;
          sub_1D6C9C76C(v56, v100, type metadata accessor for FormatSlotDefinition);
          v58 = v57;
          v59 = v87;
          sub_1D6C9C6A4(v58, v87, type metadata accessor for FormatSlotDefinition);
          sub_1D6C9C76C(v59, v90, type metadata accessor for FormatDerivedDataBindingSlotResult);
          v60 = v104;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v103 = v60;
          v61 = v94;
          v62 = sub_1D5B69D90(v94, v35);
          v64 = *(v60 + 16);
          v65 = (v63 & 1) == 0;
          v66 = __OFADD__(v64, v65);
          v67 = v64 + v65;
          if (v66)
          {
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            result = sub_1D726493C();
            __break(1u);
            return result;
          }

          v16 = v63;
          if (*(v60 + 24) < v67)
          {
            sub_1D6D6CFD0(v67, isUniquelyReferenced_nonNull_native);
            v62 = sub_1D5B69D90(v61, v35);
            if ((v16 & 1) != (v68 & 1))
            {
              goto LABEL_57;
            }

LABEL_41:
            if (v16)
            {
              goto LABEL_42;
            }

            goto LABEL_44;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_41;
          }

          v70 = v62;
          sub_1D6D81FDC();
          v62 = v70;
          v61 = v94;
          if (v16)
          {
LABEL_42:
            v69 = v62;

            v32 = v103;
            sub_1D6C9C98C(v90, *(v103 + 56) + *(v92 + 72) * v69, type metadata accessor for FormatDerivedDataBindingSlotResult);
            sub_1D6C9C70C(v100, type metadata accessor for FormatSlotDefinition);
            goto LABEL_46;
          }

LABEL_44:
          v32 = v103;
          *(v103 + 8 * (v62 >> 6) + 64) |= 1 << v62;
          v71 = (*(v32 + 48) + 16 * v62);
          *v71 = v61;
          v71[1] = v35;
          sub_1D6C9C76C(v90, *(v32 + 56) + *(v92 + 72) * v62, type metadata accessor for FormatDerivedDataBindingSlotResult);
          sub_1D6C9C70C(v100, type metadata accessor for FormatSlotDefinition);
          v72 = *(v32 + 16);
          v66 = __OFADD__(v72, 1);
          v73 = v72 + 1;
          if (v66)
          {
            goto LABEL_56;
          }

          *(v32 + 16) = v73;
LABEL_46:
          v12 = v85;
          v104 = v32;
        }

        else
        {
        }
      }

      else
      {

        v12 = v16;
      }
    }
  }

  while (1)
  {
    v44 = a2 + 1;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
      goto LABEL_53;
    }

    if (v44 >= v34)
    {
      break;
    }

    a3 = *&v39[8 * v44];
    ++a2;
    if (a3)
    {
      a2 = v44;
      goto LABEL_30;
    }
  }

  v75 = sub_1D5C44E90(v74);
  if (*(v12 + 2) <= *(v75 + 16) >> 3)
  {
    v103 = v75;
    sub_1D6836478(v12);

    v76 = v103;
  }

  else
  {
    v76 = sub_1D6E14F70(v12, v75);
  }

  v77 = v89;
  v78 = v91;
  sub_1D6C9C7D4(v88, v89, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatObject);
  v79 = *v78;
  v80 = v78[3];
  v107 = v78[2];
  v108 = v79;
  v105 = v78[4];
  v106 = v80;
  v81 = v104;
  v82 = type metadata accessor for FormatDerivedDataBinderResult();
  v83 = (v77 + v82[5]);
  v84 = *(v78 + 1);
  *v83 = *v78;
  v83[1] = v84;
  v83[2] = *(v78 + 2);
  *(v77 + v82[6]) = v81;
  *(v77 + v82[7]) = v76;

  sub_1D6C9C6A4(&v108, &v104, sub_1D5B81B04);
  sub_1D6C9C7D4(&v107, &v104, &qword_1EC883D60, sub_1D6007784, &type metadata for FormatDerivedDataFileReference, MEMORY[0x1E69E64E8]);
  sub_1D6C9C8B0(&v106, &v104, &qword_1EC883D68, &type metadata for FormatDerivedDataResultBlockReference);
  sub_1D6C9C6A4(&v105, &v104, sub_1D6107594);
  return sub_1D6C9C8B0(&v109, &v104, &qword_1EC883D78, &type metadata for FormatDerivedDataResultItemReference);
}

uint64_t sub_1D6C9683C(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v87 = a2;
  sub_1D6C9C9F4(0, &qword_1EC8946F8, type metadata accessor for FormatDerivedDataBindingSlotResult);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v72 - v7;
  v9 = type metadata accessor for FormatDerivedDataBindingSlotResult();
  v86 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v72 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v72 - v19;
  v21 = type metadata accessor for FormatCompilingSlotDefinition(0);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21 - 8, v23);
  v25 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = *(a1 + 60);
  if ((v29 >> 13) - 1 < 3)
  {
    goto LABEL_2;
  }

  if (!(v29 >> 13))
  {
    v32 = *(a1 + 32);
    if (v32 > 0x3Fu)
    {
LABEL_2:
      type metadata accessor for FormatDerivedDataError();
      sub_1D6C50C08(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
      swift_allocError();
      *v30 = 0xD00000000000004DLL;
      v30[1] = 0x80000001D73EF830;
LABEL_3:
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }

    v74 = v9;
    v75 = v8;
    v34 = *(a1 + 16);
    v33 = *(a1 + 24);
    v35 = *(v89 + 16);
    v36 = *(v35 + 16);
    v84 = v33;
    v85 = v20;
    v82 = &v72 - v28;
    v83 = v34;
    if (v36)
    {
      v37 = *(a1 + 40);
      v80 = *(a1 + 48);
      v81 = v37;
      v38 = *(a1 + 56) | (v29 << 32);
      v78 = v32;
      v79 = v38;
      v77 = v35;
      v39 = v32;
      v40 = v33;
      sub_1D67084A4(v34, v33, v32, v37, v80, v38);
      sub_1D6007830(v34, v40, v39);
      v35 = v77;
      v73 = sub_1D5B69D90(v34, v40);
      v76 = v41;
      sub_1D67084F4(v34, v40, v78, v81, v80, v79);
      if (v76)
      {
        sub_1D6C9C6A4(*(v35 + 56) + *(v22 + 72) * v73, v25, type metadata accessor for FormatCompilingSlotDefinition);
        v42 = v25;
        v43 = v82;
        sub_1D6C9C76C(v42, v82, type metadata accessor for FormatCompilingSlotDefinition);
        v44 = *v87;
        if (*(*v87 + 16))
        {
          v45 = v84;

          v46 = v83;
          v47 = sub_1D5B69D90(v83, v45);
          if (v48)
          {
            sub_1D6C9C6A4(*(v44 + 56) + *(v86 + 72) * v47, v12, type metadata accessor for FormatDerivedDataBindingSlotResult);
            sub_1D6C9C76C(v12, v16, type metadata accessor for FormatDerivedDataBindingSlotResult);
            if ((v78 & 1) == 0)
            {
              v68 = v78;
              type metadata accessor for FormatDerivedDataError();
              sub_1D6C50C08(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
              swift_allocError();
              v70 = v83;
              v69 = v84;
              *v71 = v83;
              v71[1] = v69;
              swift_storeEnumTagMultiPayload();
              swift_willThrow();
              sub_1D6C9C70C(v16, type metadata accessor for FormatDerivedDataBindingSlotResult);
              sub_1D6C9C70C(v43, type metadata accessor for FormatCompilingSlotDefinition);
              return sub_1D67084F4(v70, v69, v68, v81, v80, v79);
            }

            sub_1D67084F4(v83, v84, v78, v81, v80, v79);
            sub_1D6C9C76C(v16, v85, type metadata accessor for FormatDerivedDataBindingSlotResult);
LABEL_34:
            swift_beginAccess();
            v49 = *(a1 + 64);
            if (!(v49 >> 62))
            {
              v61 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_36:

              if (v61)
              {
                v62 = 0;
                while (1)
                {
                  if ((v49 & 0xC000000000000001) != 0)
                  {
                    v63 = MEMORY[0x1DA6FB460](v62, v49);
                    v64 = v62 + 1;
                    if (__OFADD__(v62, 1))
                    {
                      goto LABEL_46;
                    }
                  }

                  else
                  {
                    if (v62 >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_52;
                    }

                    v63 = *(v49 + 8 * v62 + 32);

                    v64 = v62 + 1;
                    if (__OFADD__(v62, 1))
                    {
LABEL_46:
                      __break(1u);
                      goto LABEL_47;
                    }
                  }

                  sub_1D6C97118(v63, v85);

                  if (v3)
                  {
                    break;
                  }

                  ++v62;
                  if (v64 == v61)
                  {
                    goto LABEL_47;
                  }
                }

                sub_1D67084F4(v83, v84, v78, v81, v80, v79);
                v67 = v85;
              }

              else
              {
LABEL_47:

                v65 = v85;
                v66 = v75;
                sub_1D6C9C6A4(v85, v75, type metadata accessor for FormatDerivedDataBindingSlotResult);
                (*(v86 + 56))(v66, 0, 1, v74);
                sub_1D6D6104C(v66, v83, v84);
                v67 = v65;
              }

              sub_1D6C9C70C(v67, type metadata accessor for FormatDerivedDataBindingSlotResult);
              return sub_1D6C9C70C(v82, type metadata accessor for FormatCompilingSlotDefinition);
            }

LABEL_55:
            v61 = sub_1D7263BFC();
            goto LABEL_36;
          }

          sub_1D67084F4(v46, v45, v78, v81, v80, v79);
        }

        sub_1D6C9C6A4(v43, v85, type metadata accessor for FormatSlotDefinition);
        goto LABEL_34;
      }
    }

    else
    {
      sub_1D6007830(v34, v33, v32);
    }

    v54 = type metadata accessor for FormatDerivedDataError();
    sub_1D6C50C08(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
    v3 = swift_allocError();
    v56 = v55;
    v57 = *(v35 + 16);
    if (v57)
    {
      v89 = v54;
      v49 = sub_1D5B9A6D8(v57, 0);
      v58 = sub_1D5E2A8BC(&v88, v49 + 32, v57, v35);

      sub_1D5B87E38();
      if (v58 != v57)
      {
        __break(1u);
        goto LABEL_55;
      }

      v60 = v83;
      v59 = v84;
    }

    else
    {
      v49 = MEMORY[0x1E69E7CC0];
      v60 = v83;
      v59 = v84;
    }

    *v56 = 0;
    v56[1] = 0xE000000000000000;
    v56[2] = v60;
    v56[3] = v59;
    v56[4] = v49;
    goto LABEL_3;
  }

  swift_beginAccess();
  v49 = *(a1 + 64);
  if (v49 >> 62)
  {
    goto LABEL_53;
  }

  v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_14:

  if (v50)
  {
    v51 = 0;
    while (1)
    {
      if ((v49 & 0xC000000000000001) != 0)
      {
        v52 = MEMORY[0x1DA6FB460](v51, v49);
        v53 = v51 + 1;
        if (__OFADD__(v51, 1))
        {
LABEL_24:
          __break(1u);
        }
      }

      else
      {
        if (v51 >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          v50 = sub_1D7263BFC();
          goto LABEL_14;
        }

        v52 = *(v49 + 8 * v51 + 32);

        v53 = v51 + 1;
        if (__OFADD__(v51, 1))
        {
          goto LABEL_24;
        }
      }

      sub_1D6C9683C(v52, v87);

      if (!v3)
      {
        ++v51;
        if (v53 != v50)
        {
          continue;
        }
      }
    }
  }
}

uint64_t sub_1D6C97118(uint64_t a1, uint64_t a2)
{
  v96 = a2;
  v4 = type metadata accessor for FormatDerivedDataBindingRepeatResult();
  MEMORY[0x1EEE9AC00](v4, v5);
  v97 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FormatSlotDefinition();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C9C9F4(0, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v83 - v13;
  v15 = type metadata accessor for FormatSlotDefinitionItemSet();
  v89 = *(v15 - 8);
  v90 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for FormatDerivedDataBindingSwitchResult();
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for FormatDerivedDataBindingItemResult();
  v26 = MEMORY[0x1EEE9AC00](v23, v24);
  v28 = (&v83 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v91 = a1;
  v30 = *(a1 + 16);
  v29 = *(a1 + 24);
  v31 = a1 + 16;
  v92 = v29;
  v93 = v30;
  v33 = *(v31 + 16);
  v32 = *(v31 + 24);
  v34 = *(v31 + 32);
  v35 = *(v31 + 40) | (*(v31 + 44) << 32);
  v36 = *(v31 + 44) >> 13;
  if (v36 <= 1)
  {
LABEL_17:
    v95 = v18;
    v97 = v22;
    v86 = v14;
    if (v36)
    {
LABEL_46:
      v87 = v35;
      v88 = v34;
      v58 = v32;
      v94 = v10;
      v59 = *(v89 + 56);
      v22 = v97;
      v85 = *(v19 + 20);
      v60 = v33;
      v61 = v90;
      v59(v97 + v85, 1, 1, v90);
      v84 = *(v19 + 24);
      v59(&v22[v84], 1, 1, v61);
      v62 = v92;
      *v22 = v93;
      *(v22 + 1) = v62;
      v63 = v60;
      v22[16] = v60 & 1;
      v64 = v91;
      swift_beginAccess();
      v65 = *(v64 + 64);
      if (v65 >> 62)
      {
        v66 = sub_1D7263BFC();
      }

      else
      {
        v66 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v67 = v95;
      sub_1D67084A4(v93, v92, v63, v58, v88, v87);

      v10 = v94;
      if (v66)
      {
        v68 = 0;
        v31 = v65 & 0xC000000000000001;
        LOBYTE(v28) = v65 & 0xF8;
        while (1)
        {
          if (v31)
          {
            v69 = MEMORY[0x1DA6FB460](v68, v65);
            v70 = v68 + 1;
            if (__OFADD__(v68, 1))
            {
              goto LABEL_59;
            }
          }

          else
          {
            if (v68 >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_76;
            }

            v69 = *(v65 + 8 * v68 + 32);

            v70 = v68 + 1;
            if (__OFADD__(v68, 1))
            {
LABEL_59:
              __break(1u);
              goto LABEL_60;
            }
          }

          v22 = v102;
          sub_1D6C98774(v69, v97);
          if (v2)
          {
            break;
          }

          ++v68;
          v71 = v70 == v66;
          v10 = v94;
          v67 = v95;
          if (v71)
          {
            goto LABEL_61;
          }
        }

        sub_1D6C9C70C(v97, type metadata accessor for FormatDerivedDataBindingSwitchResult);
      }

      else
      {
LABEL_61:

        v75 = v97;
        v76 = v86;
        sub_1D5CDE454(v97 + v85, v86, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
        if ((*(v89 + 48))(v76, 1, v90) == 1)
        {
          sub_1D6C9C70C(v75, type metadata accessor for FormatDerivedDataBindingSwitchResult);
          return sub_1D6C9C930(v76, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
        }

        else
        {
          sub_1D6C9C76C(v76, v67, type metadata accessor for FormatSlotDefinitionItemSet);
          v82 = v96;
          sub_1D6F13C80(v67, v75 + v84, v10);
          sub_1D6C9C70C(v67, type metadata accessor for FormatSlotDefinitionItemSet);
          sub_1D6C9C70C(v75, type metadata accessor for FormatDerivedDataBindingSwitchResult);
          return sub_1D6C9C98C(v10, v82, type metadata accessor for FormatSlotDefinition);
        }
      }
    }

    if ((v33 & 0xC0) == 0x40)
    {
      v45 = v34;
      v87 = v35;
      v94 = v33;
      v95 = v32;
      (*(v89 + 56))(v28 + *(v25 + 20), 1, 1, v90);
      v46 = v92;
      *v28 = v93;
      v28[1] = v46;
      v47 = v91;
      swift_beginAccess();
      v48 = *(v47 + 64);
      if (v48 >> 62)
      {
        v91 = sub_1D7263BFC();
      }

      else
      {
        v91 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v49 = v93;
      v10 = v94;
      v22 = v95;
      v50 = v87;
      sub_1D67084A4(v93, v46, v94, v95, v45, v87);
      v88 = v45;
      sub_1D67084A4(v49, v46, v10, v22, v45, v50);

      v51 = v48;
      v31 = v91;
      if (v91)
      {
        v52 = 0;
        v97 = v51 & 0xC000000000000001;
        while (1)
        {
          if (v97)
          {
            v53 = MEMORY[0x1DA6FB460](v52, v51);
            v10 = v52 + 1;
            if (__OFADD__(v52, 1))
            {
              goto LABEL_31;
            }
          }

          else
          {
            if (v52 >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_77;
            }

            v53 = *(v51 + 8 * v52 + 32);

            v10 = v52 + 1;
            if (__OFADD__(v52, 1))
            {
LABEL_31:
              __break(1u);
              goto LABEL_32;
            }
          }

          v22 = v102;
          sub_1D6C97C78(v53, v28);

          if (v2)
          {
            break;
          }

          ++v52;
          if (v10 == v31)
          {
            goto LABEL_65;
          }
        }
      }

      else
      {
LABEL_65:

        sub_1D6A90E90(v28);
      }

      sub_1D67084F4(v93, v92, v94, v95, v88, v87);
      v73 = type metadata accessor for FormatDerivedDataBindingItemResult;
      v74 = v28;
      return sub_1D6C9C70C(v74, v73);
    }

    type metadata accessor for FormatDerivedDataError();
    sub_1D6C50C08(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
    swift_allocError();
    v79 = v78;
    v98 = 0;
    v99 = 0xE000000000000000;
    sub_1D7263D4C();
    MEMORY[0x1DA6F9910](0xD000000000000023, 0x80000001D73EF8B0);
    v80 = *(v31 + 16);
    v100 = *v31;
    v101[0] = v80;
    *(v101 + 14) = *(v31 + 30);
    sub_1D609CE14(&v100);
    v81 = v99;
    *v79 = v98;
    v79[1] = v81;
LABEL_64:
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  if (v36 == 2)
  {
LABEL_32:
    type metadata accessor for FormatDerivedDataError();
    sub_1D6C50C08(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
    swift_allocError();
    *v54 = 0xD000000000000024;
    v54[1] = 0x80000001D73EF880;
    goto LABEL_64;
  }

  if (v36 == 3)
  {
    v37 = *(v4 + 20);
    v38 = v97;
    v39 = *(v31 + 24);
    v40 = *(v31 + 16);
    v41 = *(v31 + 40) | (*(v31 + 44) << 32);
    v42 = *(v31 + 32);
    (*(v89 + 56))(v97 + v37, 1, 1, v90, v26);
    v31 = v92;
    *v38 = v93;
    *(v38 + 8) = v31;
    LOBYTE(v28) = v40;
    *(v38 + 16) = v40;
    *(v38 + 24) = v39;
    v95 = v39;
    v88 = v42;
    *(v38 + 32) = v42;
    *(v38 + 44) = BYTE4(v41);
    *(v38 + 40) = v41;
    v22 = v41;
    *(v38 + 45) = BYTE5(v41) & 1;
    v43 = v91;
    swift_beginAccess();
    v10 = *(v43 + 64);
    if (v10 >> 62)
    {
      goto LABEL_78;
    }

    v19 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_6;
  }

  v55 = v91;
  swift_beginAccess();
  v10 = *(v55 + 64);
  if (v10 >> 62)
  {
    v56 = sub_1D7263BFC();
  }

  else
  {
    v56 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v56)
  {
  }

  v57 = 0;
  LOBYTE(v28) = v10 & 0xF8;
  while ((v10 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x1DA6FB460](v57, v10);
    v31 = v57 + 1;
    if (__OFADD__(v57, 1))
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

LABEL_40:
    v22 = v102;
    sub_1D6C97118(v19, v96);
    if (v2)
    {
    }

    ++v57;
    if (v31 == v56)
    {
    }
  }

  if (v57 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v19 = *(v10 + 8 * v57 + 32);

    v31 = v57 + 1;
    if (__OFADD__(v57, 1))
    {
      goto LABEL_45;
    }

    goto LABEL_40;
  }

LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  v19 = sub_1D7263BFC();
LABEL_6:
  sub_1D67084A4(v93, v31, v28, v95, v88, v22);

  if (v19)
  {
    v18 = 0;
    v28 = (v10 & 0xC000000000000001);
    v31 = v10 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v28)
      {
        v25 = MEMORY[0x1DA6FB460](v18, v10);
        v44 = v25;
        v14 = (v18 + 1);
        if (__OFADD__(v18, 1))
        {
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }
      }

      else
      {
        if (v18 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_75;
        }

        v44 = *(v10 + 8 * v18 + 32);

        v14 = (v18 + 1);
        if (__OFADD__(v18, 1))
        {
          goto LABEL_16;
        }
      }

      v22 = v102;
      sub_1D6C98BF4(v44, v97);
      if (v2)
      {
        sub_1D6C9C70C(v97, type metadata accessor for FormatDerivedDataBindingRepeatResult);
      }

      ++v18;
    }

    while (v14 != v19);
  }

LABEL_60:

  v72 = v97;
  sub_1D6A9106C();
  v73 = type metadata accessor for FormatDerivedDataBindingRepeatResult;
  v74 = v72;
  return sub_1D6C9C70C(v74, v73);
}