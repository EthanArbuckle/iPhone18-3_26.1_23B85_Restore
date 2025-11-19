uint64_t sub_1D6A3357C(uint64_t a1)
{
  v2 = sub_1D5C26FCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6A335B8(uint64_t a1)
{
  v2 = sub_1D5C26FCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6A335F4()
{
  v0 = sub_1D5B86020(&unk_1F5111388);
  result = swift_arrayDestroy();
  off_1EC890330 = v0;
  return result;
}

uint64_t sub_1D6A33640(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v30 = *(a1 + 16);
  if (!v30)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = 0;
  v7 = *(type metadata accessor for FormatContentSlotItem() - 8);
  v29 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v8 = MEMORY[0x1E69E7CC0];
  v28 = *(v7 + 72);
  while (1)
  {
    sub_1D703CB64(v29 + v28 * v6, a2, a3, &v35);
    if (v4)
    {

      return v8;
    }

    v10 = v35;
    v11 = v35 >> 62;
    if (v35 >> 62)
    {
      v12 = sub_1D7263BFC();
    }

    else
    {
      v12 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = v8 >> 62;
    if (v8 >> 62)
    {
      v27 = sub_1D7263BFC();
      v15 = v27 + v12;
      if (__OFADD__(v27, v12))
      {
LABEL_33:
        __break(1u);
        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v14 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v15 = v14 + v12;
      if (__OFADD__(v14, v12))
      {
        goto LABEL_33;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v13)
      {
        v16 = v8 & 0xFFFFFFFFFFFFFF8;
        if (v15 <= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

LABEL_15:
      sub_1D7263BFC();
      goto LABEL_16;
    }

    if (v13)
    {
      goto LABEL_15;
    }

LABEL_16:
    result = sub_1D7263DDC();
    v8 = result;
    v16 = result & 0xFFFFFFFFFFFFFF8;
LABEL_17:
    v33 = v12;
    v17 = *(v16 + 16);
    v18 = *(v16 + 24);
    if (v11)
    {
      break;
    }

    v19 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v19)
    {
      goto LABEL_3;
    }

LABEL_21:
    if (((v18 >> 1) - v17) < v33)
    {
      goto LABEL_38;
    }

    if (v11)
    {
      if (v19 < 1)
      {
        goto LABEL_40;
      }

      sub_1D5B5D1FC(0, &qword_1EDF1B4B0, type metadata accessor for FeedGroupDebugCandidateItem, MEMORY[0x1E69E62F8]);
      sub_1D6A34358(&qword_1EC890358);
      for (i = 0; i != v19; ++i)
      {
        v21 = sub_1D6D876E0(v34, i, v10);
        v23 = *v22;

        (v21)(v34, 0);
        *(v16 + 8 * v17 + 32 + 8 * i) = v23;
      }
    }

    else
    {
      type metadata accessor for FeedGroupDebugCandidateItem();
      swift_arrayInitWithCopy();
    }

    v4 = 0;
    if (v33 >= 1)
    {
      v24 = *(v16 + 16);
      v25 = __OFADD__(v24, v33);
      v26 = v24 + v33;
      if (v25)
      {
        goto LABEL_39;
      }

      *(v16 + 16) = v26;
    }

LABEL_4:
    if (++v6 == v30)
    {
      return v8;
    }
  }

  result = sub_1D7263BFC();
  v19 = result;
  if (result)
  {
    goto LABEL_21;
  }

LABEL_3:

  if (v33 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1D6A339A0(uint64_t a1, uint64_t a2)
{
  v28 = *(a1 + 16);
  if (!v28)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = 0;
  v27 = a1 + 32;
  v3 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v5 = (v27 + 48 * v2);
    v6 = v5[2];
    v33[1] = v5[1];
    v33[2] = v6;
    v33[0] = *v5;
    v7 = v6;
    v34 = v6;
    sub_1D6A343CC(v33, v32);

    sub_1D5CEB888(&v34, v32, sub_1D6A34428);
    v8 = sub_1D6A33640(v7, a2, v33);

    sub_1D5CED790(&v34, sub_1D6A34428);
    sub_1D6A34588(v33);
    v9 = v8 >> 62;
    if (v8 >> 62)
    {
      v10 = sub_1D7263BFC();
    }

    else
    {
      v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = v3 >> 62;
    if (v3 >> 62)
    {
      v26 = sub_1D7263BFC();
      v13 = v26 + v10;
      if (__OFADD__(v26, v10))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v12 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = v12 + v10;
      if (__OFADD__(v12, v10))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v31 = v10;
    if (result)
    {
      if (!v11)
      {
        v14 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v13 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_1D7263BFC();
      goto LABEL_15;
    }

    if (v11)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_1D7263DDC();
    v3 = result;
    v14 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v15 = *(v14 + 16);
    v16 = *(v14 + 24);
    if (v9)
    {
      break;
    }

    v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v17)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v16 >> 1) - v15) < v31)
    {
      goto LABEL_36;
    }

    v30 = v3;
    v18 = v14 + 8 * v15 + 32;
    if (v9)
    {
      if (v17 < 1)
      {
        goto LABEL_38;
      }

      sub_1D5B5D1FC(0, &qword_1EDF1B4B0, type metadata accessor for FeedGroupDebugCandidateItem, MEMORY[0x1E69E62F8]);
      sub_1D6A34358(&qword_1EC890358);
      for (i = 0; i != v17; ++i)
      {
        v20 = sub_1D6D876E0(v32, i, v8);
        v22 = *v21;

        (v20)(v32, 0);
        *(v18 + 8 * i) = v22;
      }
    }

    else
    {
      type metadata accessor for FeedGroupDebugCandidateItem();
      swift_arrayInitWithCopy();
    }

    v3 = v30;
    if (v31 >= 1)
    {
      v23 = *(v14 + 16);
      v24 = __OFADD__(v23, v31);
      v25 = v23 + v31;
      if (v24)
      {
        goto LABEL_37;
      }

      *(v14 + 16) = v25;
    }

LABEL_4:
    if (++v2 == v28)
    {
      return v3;
    }
  }

  result = sub_1D7263BFC();
  v17 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v31 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1D6A33D0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v32 = *(a1 + 16);
  if (!v32)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = type metadata accessor for FormatContentSubgroup();
  v6 = 0;
  v30 = a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80));
  v31 = v5;
  v7 = MEMORY[0x1E69E7CC0];
  v29 = *(*(v5 - 8) + 72);
  while (1)
  {
    v9 = *(v30 + v29 * v6 + *(v31 + 32));

    v10 = sub_1D6A339A0(v9, a2);

    v11 = v10 >> 62;
    if (v10 >> 62)
    {
      v12 = sub_1D7263BFC();
    }

    else
    {
      v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = v7 >> 62;
    if (v7 >> 62)
    {
      v28 = sub_1D7263BFC();
      v15 = v28 + v12;
      if (__OFADD__(v28, v12))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v14 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v15 = v14 + v12;
      if (__OFADD__(v14, v12))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v13)
      {
        v16 = v7 & 0xFFFFFFFFFFFFFF8;
        if (v15 <= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_1D7263BFC();
      goto LABEL_15;
    }

    if (v13)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_1D7263DDC();
    v7 = result;
    v16 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v36 = v12;
    v17 = *(v16 + 16);
    v18 = *(v16 + 24);
    if (v11)
    {
      break;
    }

    v19 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v19)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v18 >> 1) - v17) < v36)
    {
      goto LABEL_36;
    }

    v34 = v3;
    v20 = v16 + 8 * v17 + 32;
    if (v11)
    {
      if (v19 < 1)
      {
        goto LABEL_38;
      }

      sub_1D5B5D1FC(0, &qword_1EDF1B4B0, type metadata accessor for FeedGroupDebugCandidateItem, MEMORY[0x1E69E62F8]);
      sub_1D6A34358(&qword_1EC890358);
      for (i = 0; i != v19; ++i)
      {
        v22 = sub_1D6D876E0(v35, i, v10);
        v24 = *v23;

        (v22)(v35, 0);
        *(v20 + 8 * i) = v24;
      }
    }

    else
    {
      type metadata accessor for FeedGroupDebugCandidateItem();
      swift_arrayInitWithCopy();
    }

    v3 = v34;
    if (v36 >= 1)
    {
      v25 = *(v16 + 16);
      v26 = __OFADD__(v25, v36);
      v27 = v25 + v36;
      if (v26)
      {
        goto LABEL_37;
      }

      *(v16 + 16) = v27;
    }

LABEL_4:
    if (++v6 == v32)
    {
      return v7;
    }
  }

  result = sub_1D7263BFC();
  v19 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v36 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1D6A34080(uint64_t a1, uint64_t a2)
{
  sub_1D5B5D1FC(0, &qword_1EDF11E38, type metadata accessor for FormatContent.Resolved, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6A34114(uint64_t a1)
{
  sub_1D5B5D1FC(0, &qword_1EDF11E38, type metadata accessor for FormatContent.Resolved, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D6A341A0()
{
  result = qword_1EDF054F0;
  if (!qword_1EDF054F0)
  {
    sub_1D5B49CBC(255, &qword_1EDF43BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF054F0);
  }

  return result;
}

uint64_t sub_1D6A34220(uint64_t a1)
{
  *(a1 + 16) = sub_1D5C270D0(&qword_1EC890338, type metadata accessor for FormatFeedGroup);
  result = sub_1D5C270D0(&unk_1EC890340, type metadata accessor for FormatFeedGroup);
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_1D6A342B8()
{
  result = qword_1EC890350;
  if (!qword_1EC890350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890350);
  }

  return result;
}

uint64_t sub_1D6A3430C()
{
  v0 = sub_1D72641CC();

  if (v0 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D6A34358(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B5D1FC(255, &qword_1EDF1B4B0, type metadata accessor for FeedGroupDebugCandidateItem, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D6A34428()
{
  if (!qword_1EDF2CAA0)
  {
    sub_1D6A344BC();
    sub_1D5C270D0(&unk_1EDF20950, sub_1D6A344BC);
    v0 = type metadata accessor for FormatCodingDefault();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF2CAA0);
    }
  }
}

void sub_1D6A344BC()
{
  if (!qword_1EDF20948)
  {
    type metadata accessor for FormatContentSlotItem();
    sub_1D5C270D0(&qword_1EDF3FE90, type metadata accessor for FormatContentSlotItem);
    sub_1D5C270D0(qword_1EDF29A88, type metadata accessor for FormatContentSlotItem);
    v0 = type metadata accessor for FormatCodingEmptyArrayStrategy();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF20948);
    }
  }
}

uint64_t _s8NewsFeed16FormatStyleImageV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a2[1];
  v6 = a2[2];
  v8 = *a2;
  v9 = v3;

  LOBYTE(v3) = static FormatAsyncImageContent.== infix(_:_:)(&v9, &v8);

  if ((v3 & 1) == 0 || (_s8NewsFeed20FormatImageNodeStyleC2eeoiySbAC_ACtFZ_0(v2, v5) & 1) == 0)
  {
    return 0;
  }

  return sub_1D5BFC390(v4, v6);
}

unint64_t sub_1D6A346C4(uint64_t a1)
{
  result = sub_1D6A346EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6A346EC()
{
  result = qword_1EC890360;
  if (!qword_1EC890360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890360);
  }

  return result;
}

unint64_t sub_1D6A34740(void *a1)
{
  a1[1] = sub_1D5CCE4C8();
  a1[2] = sub_1D6701834();
  result = sub_1D6A34778();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6A34778()
{
  result = qword_1EC890368;
  if (!qword_1EC890368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890368);
  }

  return result;
}

uint64_t FeedItemFilterCustomMatcher.description.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FeedItemFilterCustomMatcher.description.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

void *FeedItemFilterCustomMatcher.__allocating_init(description:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

void *FeedItemFilterCustomMatcher.init(description:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

uint64_t FeedItemFilterCustomMatcher.createApplicator()@<X0>(void *a1@<X8>)
{
  sub_1D6ECA890(sub_1D6A349C4, v1, a1);
}

uint64_t FeedItemFilterCustomMatcher.deinit()
{

  return v0;
}

uint64_t FeedItemFilterCustomMatcher.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D6A34AEC(uint64_t a1)
{
  v2 = sub_1D725E84C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6A37A18();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6A37C90(0, &unk_1EDF16FC0, MEMORY[0x1E69D7FF0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v31 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v31 - v22;
  if (a1)
  {
    sub_1D725E35C();
    v24 = *(v3 + 56);
    v24(v23, 0, 1, v2);
  }

  else
  {
    v24 = *(v3 + 56);
    v24(&v31 - v22, 1, 1, v2);
  }

  (*(v3 + 104))(v19, *MEMORY[0x1E69D7FE8], v2);
  v24(v19, 0, 1, v2);
  v25 = *(v8 + 48);
  sub_1D6A37AAC(v23, v11);
  sub_1D6A37AAC(v19, &v11[v25]);
  v26 = *(v3 + 48);
  if (v26(v11, 1, v2) != 1)
  {
    sub_1D6A37AAC(v11, v15);
    if (v26(&v11[v25], 1, v2) != 1)
    {
      (*(v3 + 32))(v6, &v11[v25], v2);
      sub_1D6A37C28();
      v28 = sub_1D7261FBC();
      v29 = *(v3 + 8);
      v29(v6, v2);
      sub_1D6A37B40(v19);
      sub_1D6A37B40(v23);
      v29(v15, v2);
      sub_1D6A37B40(v11);
      v27 = v28 ^ 1;
      return v27 & 1;
    }

    sub_1D6A37B40(v19);
    sub_1D6A37B40(v23);
    (*(v3 + 8))(v15, v2);
    goto LABEL_9;
  }

  sub_1D6A37B40(v19);
  sub_1D6A37B40(v23);
  if (v26(&v11[v25], 1, v2) != 1)
  {
LABEL_9:
    sub_1D6A37BCC(v11);
    v27 = 1;
    return v27 & 1;
  }

  sub_1D6A37B40(v11);
  v27 = 0;
  return v27 & 1;
}

uint64_t sub_1D6A34EAC(uint64_t a1, id a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC8NewsFeed22BlockingCommandHandler_subscriptionController);
  v3 = [a2 identifier];
  if (!v3)
  {
    sub_1D726207C();
    v3 = sub_1D726203C();
  }

  [v2 addMutedSubscriptionForTagID_];

  swift_getObjectType();
  if (qword_1EDF3AB80 != -1)
  {
    swift_once();
  }

  sub_1D5B65AF4();
  swift_unknownObjectRetain();
  sub_1D725D97C();
  return swift_unknownObjectRelease();
}

uint64_t sub_1D6A350C0@<X0>(void **a1@<X3>, _BYTE *a2@<X8>)
{
  result = sub_1D6A36EB8(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_1D6A35218(void *a1, void *a2)
{
  v4 = [a1 identifier];
  v5 = sub_1D726207C();
  v7 = v6;

  v8 = [a2 shortcutsTagID];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1D726207C();
    v12 = v11;

    if (v5 == v10 && v7 == v12)
    {

      goto LABEL_11;
    }

    v14 = sub_1D72646CC();

    if (v14)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  [a1 isMySports];
LABEL_11:
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass_];
  sub_1D725811C();

  sub_1D6A37C90(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1D7273AE0;
  v18 = [a1 name];
  v19 = sub_1D726207C();
  v21 = v20;

  *(v17 + 56) = MEMORY[0x1E69E6158];
  *(v17 + 64) = sub_1D5B7E2C0();
  *(v17 + 32) = v19;
  *(v17 + 40) = v21;
  v22 = sub_1D72620BC();

  return v22;
}

uint64_t sub_1D6A35488(void *a1, void *a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v7 = [a1 identifier];
  v8 = sub_1D726207C();
  v10 = v9;

  v11 = [a2 featuredStoriesTagID];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1D726207C();
    v15 = v14;

    if (v8 == v13 && v10 == v15)
    {
      goto LABEL_12;
    }

    v17 = sub_1D72646CC();

    if (v17)
    {
      goto LABEL_49;
    }
  }

  else
  {
  }

  v18 = [a1 identifier];
  v19 = sub_1D726207C();
  v21 = v20;

  v22 = [a2 trendingTagID];
  if (v22)
  {
    v23 = v22;
    v24 = sub_1D726207C();
    v26 = v25;

    if (v19 == v24 && v21 == v26)
    {
      goto LABEL_12;
    }

    v27 = sub_1D72646CC();

    if (v27)
    {
      goto LABEL_49;
    }
  }

  else
  {
  }

  v28 = [a1 identifier];
  v29 = sub_1D726207C();
  v31 = v30;

  v32 = [a2 briefingsTagID];
  if (v32)
  {
    v33 = v32;
    v34 = sub_1D726207C();
    v36 = v35;

    if (v29 == v34 && v31 == v36)
    {
      goto LABEL_12;
    }

    v37 = sub_1D72646CC();

    if (v37)
    {
      goto LABEL_49;
    }
  }

  else
  {
  }

  v38 = [a1 identifier];
  v39 = sub_1D726207C();
  v41 = v40;

  v42 = &off_1E84D3000;
  if (([a2 respondsToSelector_] & 1) != 0 && (v43 = objc_msgSend(a2, sel_spotlightChannelID)) != 0)
  {
    v44 = v43;
    v45 = sub_1D726207C();
    v47 = v46;

    if (v39 == v45 && v41 == v47)
    {
      goto LABEL_12;
    }

    v77 = sub_1D72646CC();

    v42 = &off_1E84D3000;
    if (v77)
    {
      goto LABEL_49;
    }
  }

  else
  {
  }

  v48 = [a1 identifier];
  v49 = sub_1D726207C();
  v51 = v50;

  v52 = [a2 myMagazinesTagID];
  if (v52)
  {
    v112 = a3;
    v53 = ObjectType;
    v54 = v42;
    v55 = v52;
    v56 = sub_1D726207C();
    v58 = v57;

    if (v49 == v56 && v51 == v58)
    {
      goto LABEL_12;
    }

    v59 = sub_1D72646CC();

    v42 = v54;
    ObjectType = v53;
    a3 = v112;
    if (v59)
    {
      goto LABEL_49;
    }
  }

  else
  {
  }

  v60 = [a1 identifier];
  v61 = sub_1D726207C();
  v63 = v62;

  if ([a2 v42[226]])
  {
    v64 = [a2 sharedWithYouTagID];
    v65 = sub_1D726207C();
    v67 = v66;

    if (v61 == v65 && v63 == v67)
    {
      goto LABEL_12;
    }

    v78 = sub_1D72646CC();

    if (v78)
    {
      goto LABEL_49;
    }
  }

  else
  {
  }

  v68 = [a1 identifier];
  v69 = sub_1D726207C();
  v71 = v70;

  v72 = [a2 shortcutsTagID];
  if (v72)
  {
    v73 = v72;
    v74 = sub_1D726207C();
    v76 = v75;

    if (v69 == v74 && v71 == v76)
    {
LABEL_12:

LABEL_49:
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v81 = [objc_opt_self() bundleForClass_];
      v82 = sub_1D725811C();

      return v82;
    }

    v79 = sub_1D72646CC();

    if (v79)
    {
      goto LABEL_49;
    }
  }

  else
  {
  }

  v84 = [a1 identifier];
  v85 = sub_1D726207C();
  v87 = v86;

  v88 = [a2 sportsTopStoriesTagID];
  if (v88)
  {
    v89 = v88;
    v90 = sub_1D726207C();
    v92 = v91;

    if (v85 == v90 && v87 == v92)
    {

LABEL_57:
      type metadata accessor for Localized();
      v94 = swift_getObjCClassFromMetadata();
      v95 = [objc_opt_self() bundleForClass_];
      sub_1D725811C();

      sub_1D6A37C90(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
      v96 = swift_allocObject();
      *(v96 + 16) = xmmword_1D7273AE0;
      v97 = [a1 name];
      goto LABEL_60;
    }

    v93 = sub_1D72646CC();

    if (v93)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  if ([a1 isMySports])
  {
    type metadata accessor for Localized();
    v98 = swift_getObjCClassFromMetadata();
    v99 = [objc_opt_self() bundleForClass_];
    sub_1D725811C();

    sub_1D6A37C90(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v96 = swift_allocObject();
    *(v96 + 16) = xmmword_1D7273AE0;
    v97 = [a1 name];
  }

  else
  {
    if ([a1 isPuzzleHub])
    {
      goto LABEL_49;
    }

    if ([a1 isFoodHub])
    {
      v105 = a3[3];
      v106 = a3[4];
      __swift_project_boxed_opaque_existential_1(a3, v105);
      if ((*(v106 + 200))(v105, v106))
      {
        goto LABEL_49;
      }
    }

    v107 = [a1 asSports];
    if (v107)
    {
      v82 = sub_1D6A36404(v107);
      swift_unknownObjectRelease();
      return v82;
    }

    if (FCTagProviding.isTopic.getter(ObjectType) || [a1 isLocal])
    {
      type metadata accessor for Localized();
      v108 = swift_getObjCClassFromMetadata();
      v109 = [objc_opt_self() bundleForClass_];
      sub_1D725811C();

      sub_1D6A37C90(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
      v96 = swift_allocObject();
      *(v96 + 16) = xmmword_1D7273AE0;
      v97 = [a1 name];
    }

    else
    {
      type metadata accessor for Localized();
      v110 = swift_getObjCClassFromMetadata();
      v111 = [objc_opt_self() bundleForClass_];
      sub_1D725811C();

      sub_1D6A37C90(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
      v96 = swift_allocObject();
      *(v96 + 16) = xmmword_1D7273AE0;
      v97 = [a1 name];
    }
  }

LABEL_60:
  v100 = v97;
  v101 = sub_1D726207C();
  v103 = v102;

  *(v96 + 56) = MEMORY[0x1E69E6158];
  *(v96 + 64) = sub_1D5B7E2C0();
  *(v96 + 32) = v101;
  *(v96 + 40) = v103;
  v104 = sub_1D72620BC();

  return v104;
}

uint64_t sub_1D6A36404(void *a1)
{
  v2 = [a1 sportsType];
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  if (v2 > 5)
  {
    if (v2 <= 8)
    {
      if (v2 == 6)
      {
        v12 = 0x80000001D73E0C70;
        goto LABEL_25;
      }

LABEL_22:
      v12 = 0x80000001D73E0C70;
      goto LABEL_25;
    }

    if (v2 == 9)
    {
      v12 = 0x80000001D73E0C70;
      goto LABEL_25;
    }

    if (v2 != 10)
    {
      if (v2 == 11)
      {
        v12 = 0x80000001D73E0C70;
        goto LABEL_25;
      }

LABEL_17:
      v12 = 0x80000001D73E0BC0;
      goto LABEL_25;
    }

LABEL_24:
    v12 = 0x80000001D73E0C70;
    goto LABEL_25;
  }

  if (v2 > 2)
  {
    if (v2 != 3)
    {
      if (v2 == 4)
      {
        v12 = 0x80000001D73E0C70;
        goto LABEL_25;
      }

      goto LABEL_22;
    }

    goto LABEL_24;
  }

  if (!v2)
  {
    goto LABEL_17;
  }

  if (v2 == 1)
  {
    v12 = 0x80000001D73E0C70;
    goto LABEL_25;
  }

  if (v2 != 2)
  {
    goto LABEL_17;
  }

  v12 = 0x80000001D73E0C70;
LABEL_25:
  sub_1D725811C();

  sub_1D6A37C90(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D7273AE0;
  v6 = [a1 name];
  v7 = sub_1D726207C();
  v9 = v8;

  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1D5B7E2C0();
  *(v5 + 32) = v7;
  *(v5 + 40) = v9;
  v10 = sub_1D72620BC();

  return v10;
}

id sub_1D6A367D8(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_1D6A35218(a1, a2);
  sub_1D6A35488(a1, a2, a3);
  v10 = sub_1D726203C();

  v11 = sub_1D726203C();

  v12 = [objc_opt_self() alertControllerWithTitle:v10 message:v11 preferredStyle:1];

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = objc_opt_self();
  v15 = [v14 bundleForClass_];
  sub_1D725811C();

  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;

  v17 = sub_1D726203C();

  v30 = sub_1D5F39624;
  v31 = v16;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_1D5C38428;
  v29 = &block_descriptor_67;
  v18 = _Block_copy(&aBlock);

  v19 = objc_opt_self();
  v20 = [v19 actionWithTitle:v17 style:2 handler:{v18, 0x80000001D73E0300}];
  _Block_release(v18);

  v21 = [v14 bundleForClass_];
  sub_1D725811C();

  v22 = sub_1D726203C();

  v30 = nullsub_1;
  v31 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_1D5C38428;
  v29 = &block_descriptor_7;
  v23 = _Block_copy(&aBlock);

  v24 = [v19 actionWithTitle:v22 style:1 handler:{v23, 0x80000001D73E0330}];
  _Block_release(v23);

  [v12 addAction_];
  [v12 addAction_];

  return v12;
}

void sub_1D6A36B80(uint64_t a1, uint64_t a2, id a3, char a4, uint64_t a5)
{
  if (a4)
  {
    if (sub_1D6A34AEC(a5))
    {
      v10 = v5;
      __swift_project_boxed_opaque_existential_1(&v5[OBJC_IVAR____TtC8NewsFeed22BlockingCommandHandler_sceneProvider], *&v5[OBJC_IVAR____TtC8NewsFeed22BlockingCommandHandler_sceneProvider + 24]);
      v11 = sub_1D725DA4C();
      if (v11)
      {
        v12 = v11;
        v13 = [v11 rootViewController];

        if (v13)
        {
          v14 = sub_1D7262FCC();

          v15 = [*&v10[OBJC_IVAR____TtC8NewsFeed22BlockingCommandHandler_appConfigManager] appConfiguration];
          v16 = OBJC_IVAR____TtC8NewsFeed22BlockingCommandHandler_featureAvailability;
          v17 = swift_allocObject();
          v17[2] = v10;
          v17[3] = a3;
          v17[4] = a1;
          v17[5] = a2;
          v17[6] = a5;

          swift_unknownObjectRetain();
          v18 = v10;
          swift_unknownObjectRetain();
          v23 = sub_1D6A367D8(a3, v15, &v10[v16], sub_1D6A37C80, v17);
          swift_unknownObjectRelease();

          [v14 presentViewController:v23 animated:1 completion:0];

          return;
        }
      }

      v21 = *&v10[OBJC_IVAR____TtC8NewsFeed22BlockingCommandHandler_subscriptionController];
      v22 = [a3 identifier];
    }

    else
    {
      v21 = *&v5[OBJC_IVAR____TtC8NewsFeed22BlockingCommandHandler_subscriptionController];
      v22 = [a3 identifier];
    }

    v20 = v22;
    if (!v20)
    {
      sub_1D726207C();
      v20 = sub_1D726203C();
    }

    [v21 addMutedSubscriptionForTagID_];
  }

  else
  {
    v19 = *&v5[OBJC_IVAR____TtC8NewsFeed22BlockingCommandHandler_subscriptionController];
    v20 = [a3 identifier];
    if (!v20)
    {
      sub_1D726207C();
      v20 = sub_1D726203C();
    }

    [v19 removeSubscriptionForTagID:v20 type:2];
  }

  swift_getObjectType();
  if (qword_1EDF3AB80 != -1)
  {
    swift_once();
  }

  sub_1D5B65AF4();
  swift_unknownObjectRetain();
  sub_1D725D97C();
  swift_unknownObjectRelease();
}

uint64_t sub_1D6A36EB8(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8NewsFeed22BlockingCommandHandler_subscriptionController);
  v3 = [a1 identifier];
  if (!v3)
  {
    sub_1D726207C();
    v3 = sub_1D726203C();
  }

  v4 = [v2 hasMutedSubscriptionForTagID_];

  return v4 ^ 1;
}

uint64_t sub_1D6A36F3C(void *a1, uint64_t a2)
{
  v112 = a2;
  v113 = a1;
  v2 = sub_1D725E84C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6A37A18();
  v111 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v107 = &v101 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v109 = &v101 - v16;
  sub_1D6A37C90(0, &unk_1EDF16FC0, MEMORY[0x1E69D7FF0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v110 = &v101 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v105 = &v101 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v104 = &v101 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v114 = &v101 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v106 = &v101 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v101 - v38;
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v101 - v42;
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = &v101 - v46;
  v48 = [objc_opt_self() mainBundle];
  v49 = [v48 bundleIdentifier];

  if (!v49)
  {
    goto LABEL_46;
  }

  v101 = v20;
  v102 = v10;
  v103 = v6;
  v50 = v3;
  v51 = v2;
  v52 = sub_1D726207C();
  v54 = v53;

  if (v52 == 0x6C7070612E6D6F63 && v54 == 0xEE007377656E2E65)
  {

    v55 = v114;
  }

  else
  {
    v56 = sub_1D72646CC();

    v55 = v114;
    if ((v56 & 1) == 0)
    {
      goto LABEL_46;
    }
  }

  v57 = v113;
  ObjectType = swift_getObjectType();
  if ([v57 disableBlock] & 1) != 0 || (objc_msgSend(v57, sel_isPuzzleType) & 1) != 0 || FCTagProviding.isSection.getter(ObjectType) || (objc_msgSend(v57, sel_isSportsEvent) & 1) != 0 || (objc_msgSend(v57, sel_isRecipeCatalog))
  {
    goto LABEL_46;
  }

  v59 = [v57 isPuzzleHub];
  v60 = v51;
  v61 = v50;
  v62 = v112;
  v63 = v57;
  if (!v59)
  {
    goto LABEL_22;
  }

  if (v112)
  {
    sub_1D725E35C();
    v64 = *(v61 + 56);
    v64(v47, 0, 1, v60);
  }

  else
  {
    v64 = *(v61 + 56);
    v64(v47, 1, 1, v60);
  }

  (*(v61 + 104))(v43, *MEMORY[0x1E69D7FB8], v60);
  v64(v43, 0, 1, v60);
  v65 = *(v111 + 48);
  v66 = v109;
  sub_1D6A37AAC(v47, v109);
  sub_1D6A37AAC(v43, v66 + v65);
  v67 = *(v61 + 48);
  if (v67(v66, 1, v60) == 1)
  {
    sub_1D6A37B40(v43);
    sub_1D6A37B40(v47);
    if (v67(v66 + v65, 1, v60) == 1)
    {
      sub_1D6A37B40(v66);
      v63 = v113;
      v55 = v114;
      goto LABEL_22;
    }

LABEL_20:
    v68 = v66;
LABEL_45:
    sub_1D6A37BCC(v68);
    goto LABEL_46;
  }

  sub_1D6A37AAC(v66, v39);
  if (v67(v66 + v65, 1, v60) == 1)
  {
    sub_1D6A37B40(v43);
    sub_1D6A37B40(v47);
    (*(v61 + 8))(v39, v60);
    goto LABEL_20;
  }

  v69 = v103;
  (*(v61 + 32))(v103, v66 + v65, v60);
  sub_1D6A37C28();
  v70 = sub_1D7261FBC();
  v71 = *(v61 + 8);
  v72 = v69;
  v62 = v112;
  v71(v72, v60);
  sub_1D6A37B40(v43);
  sub_1D6A37B40(v47);
  v71(v39, v60);
  sub_1D6A37B40(v66);
  v63 = v113;
  v55 = v114;
  if ((v70 & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_22:
  v73 = [v63 isMySports];
  v74 = v110;
  if (v73)
  {
    if (v62)
    {
      v75 = v106;
      sub_1D725E35C();
      v76 = 0;
    }

    else
    {
      v76 = 1;
      v75 = v106;
    }

    v77 = v107;
    v78 = *(v61 + 56);
    v78(v75, v76, 1, v60);
    (*(v61 + 104))(v55, *MEMORY[0x1E69D7FB8], v60);
    v78(v55, 0, 1, v60);
    v79 = *(v111 + 48);
    sub_1D6A37AAC(v75, v77);
    sub_1D6A37AAC(v55, v77 + v79);
    v80 = *(v61 + 48);
    if (v80(v77, 1, v60) == 1)
    {
      sub_1D6A37B40(v55);
      sub_1D6A37B40(v75);
      if (v80(v77 + v79, 1, v60) == 1)
      {
        sub_1D6A37B40(v77);
        goto LABEL_33;
      }

      goto LABEL_31;
    }

    v81 = v104;
    sub_1D6A37AAC(v77, v104);
    if (v80(v77 + v79, 1, v60) == 1)
    {
      sub_1D6A37B40(v114);
      sub_1D6A37B40(v75);
      (*(v61 + 8))(v81, v60);
LABEL_31:
      v68 = v77;
      goto LABEL_45;
    }

    v82 = v75;
    v83 = v81;
    v84 = v103;
    (*(v61 + 32))(v103, v77 + v79, v60);
    sub_1D6A37C28();
    v85 = sub_1D7261FBC();
    v86 = *(v61 + 8);
    v87 = v84;
    v62 = v112;
    v86(v87, v60);
    sub_1D6A37B40(v114);
    sub_1D6A37B40(v82);
    v86(v83, v60);
    sub_1D6A37B40(v77);
    if (v85)
    {
      goto LABEL_33;
    }

LABEL_46:
    v96 = 0;
    return v96 & 1;
  }

LABEL_33:
  v88 = *(v108 + OBJC_IVAR____TtC8NewsFeed22BlockingCommandHandler_featureAvailability + 24);
  v89 = *(v108 + OBJC_IVAR____TtC8NewsFeed22BlockingCommandHandler_featureAvailability + 32);
  __swift_project_boxed_opaque_existential_1((v108 + OBJC_IVAR____TtC8NewsFeed22BlockingCommandHandler_featureAvailability), v88);
  if (((*(v89 + 200))(v88, v89) & 1) == 0 || ![v113 isFoodHub])
  {
    goto LABEL_41;
  }

  if (v62)
  {
    v90 = v105;
    sub_1D725E35C();
    v91 = 0;
  }

  else
  {
    v91 = 1;
    v90 = v105;
  }

  v92 = *(v61 + 56);
  v92(v90, v91, 1, v60);
  (*(v61 + 104))(v74, *MEMORY[0x1E69D7FB8], v60);
  v92(v74, 0, 1, v60);
  v93 = *(v111 + 48);
  v94 = v102;
  sub_1D6A37AAC(v90, v102);
  sub_1D6A37AAC(v74, v94 + v93);
  v95 = *(v61 + 48);
  if (v95(v94, 1, v60) != 1)
  {
    sub_1D6A37AAC(v94, v101);
    if (v95(v94 + v93, 1, v60) != 1)
    {
      v98 = v103;
      (*(v61 + 32))(v103, v94 + v93, v60);
      sub_1D6A37C28();
      v99 = v101;
      v96 = sub_1D7261FBC();
      v100 = *(v61 + 8);
      v100(v98, v60);
      sub_1D6A37B40(v74);
      sub_1D6A37B40(v105);
      v100(v99, v60);
      sub_1D6A37B40(v94);
      return v96 & 1;
    }

    sub_1D6A37B40(v74);
    sub_1D6A37B40(v105);
    (*(v61 + 8))(v101, v60);
    goto LABEL_44;
  }

  sub_1D6A37B40(v74);
  sub_1D6A37B40(v90);
  if (v95(v94 + v93, 1, v60) != 1)
  {
LABEL_44:
    v68 = v94;
    goto LABEL_45;
  }

  sub_1D6A37B40(v94);
LABEL_41:
  v96 = 1;
  return v96 & 1;
}

void sub_1D6A37A18()
{
  if (!qword_1EDF16FB8)
  {
    sub_1D6A37C90(255, &unk_1EDF16FC0, MEMORY[0x1E69D7FF0], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF16FB8);
    }
  }
}

uint64_t sub_1D6A37AAC(uint64_t a1, uint64_t a2)
{
  sub_1D6A37C90(0, &unk_1EDF16FC0, MEMORY[0x1E69D7FF0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6A37B40(uint64_t a1)
{
  sub_1D6A37C90(0, &unk_1EDF16FC0, MEMORY[0x1E69D7FF0], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D6A37BCC(uint64_t a1)
{
  sub_1D6A37A18();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D6A37C28()
{
  result = qword_1EC890408;
  if (!qword_1EC890408)
  {
    sub_1D725E84C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890408);
  }

  return result;
}

void sub_1D6A37C90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t FormatModel.hashValue.getter()
{
  sub_1D7264A0C();
  type metadata accessor for FormatModel();
  sub_1D6A3AEE8(&qword_1EDF128D8, type metadata accessor for FormatModel);
  sub_1D7261E8C();
  return sub_1D7264A5C();
}

uint64_t sub_1D6A37D84()
{
  v1 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6A3AD18(v0, v8, type metadata accessor for FormatModel);
  sub_1D683A158();
  v10 = *(v9 + 48);
  sub_1D5C21C24(v8, v4, type metadata accessor for FeedItem);
  v11 = FeedItem.identifier.getter();
  sub_1D5BCA8CC(v4, type metadata accessor for FeedItem);
  sub_1D683A1C4(&v8[v10]);
  return v11;
}

uint64_t FormatModel.identifier.getter()
{
  v1 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FormatModel();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6A3AD18(v0, v8, type metadata accessor for FormatModel);
  sub_1D683A158();
  v10 = *(v9 + 48);
  sub_1D5C21C24(v8, v4, type metadata accessor for FeedItem);
  v11 = FeedItem.identifier.getter();
  sub_1D5BCA8CC(v4, type metadata accessor for FeedItem);
  sub_1D683A1C4(&v8[v10]);
  return v11;
}

uint64_t sub_1D6A38000(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D6A3AEE8(&qword_1EDF128F0, type metadata accessor for FormatModel);

  return MEMORY[0x1EEE45140](a1, a2, v4);
}

uint64_t type metadata accessor for FormatModel()
{
  result = qword_1EDF128A0;
  if (!qword_1EDF128A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FormatModel.feedItem.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FormatModel();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6A3AD18(v1, v6, type metadata accessor for FormatModel);
  sub_1D683A158();
  v8 = *(v7 + 48);
  sub_1D5C21C24(v6, a1, type metadata accessor for FeedItem);
  return sub_1D683A1C4(&v6[v8]);
}

uint64_t FormatModel.feedContextIdentifier.getter()
{
  v1 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FormatModel();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6A3AD18(v0, v8, type metadata accessor for FormatModel);
  sub_1D683A158();
  v10 = *(v9 + 48);
  sub_1D5C21C24(v8, v4, type metadata accessor for FeedItem);
  v11 = FeedItem.externalContentCacheIdentifier.getter();
  sub_1D5BCA8CC(v4, type metadata accessor for FeedItem);
  sub_1D683A1C4(&v8[v10]);
  return v11;
}

uint64_t sub_1D6A382D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  MEMORY[0x1EEE9AC00](a1 - 8, a2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6A3AD18(v3, v6, type metadata accessor for FormatModel);
  sub_1D683A158();
  v8 = *(v7 + 48);
  sub_1D5C21C24(v6, a3, type metadata accessor for FeedItem);
  return sub_1D683A1C4(&v6[v8]);
}

uint64_t sub_1D6A38390()
{
  v1 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6A3AD18(v0, v8, type metadata accessor for FormatModel);
  sub_1D683A158();
  v10 = *(v9 + 48);
  sub_1D5C21C24(v8, v4, type metadata accessor for FeedItem);
  v11 = FeedItem.externalContentCacheIdentifier.getter();
  sub_1D5BCA8CC(v4, type metadata accessor for FeedItem);
  sub_1D683A1C4(&v8[v10]);
  return v11;
}

uint64_t FormatModel.isImpressionable.getter()
{
  v1 = type metadata accessor for FormatModel();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6A3AD18(v0, v4, type metadata accessor for FormatModel);
  sub_1D683A158();
  v6 = &v4[*(v5 + 48)];
  v7 = *(v6 + 1);
  v10[0] = *v6;
  v10[1] = v7;
  v8 = FormatModelContext.isImpressionable.getter();
  sub_1D683A1C4(v10);
  sub_1D5BCA8CC(v4, type metadata accessor for FeedItem);
  return v8 & 1;
}

uint64_t sub_1D6A3863C(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1 - 8, a2);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6A3AD18(v2, v4, type metadata accessor for FormatModel);
  sub_1D683A158();
  v6 = &v4[*(v5 + 48)];
  v7 = *(v6 + 1);
  v10[0] = *v6;
  v10[1] = v7;
  v8 = FormatModelContext.isImpressionable.getter();
  sub_1D683A1C4(v10);
  sub_1D5BCA8CC(v4, type metadata accessor for FeedItem);
  return v8 & 1;
}

uint64_t sub_1D6A38758(void (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = type metadata accessor for FormatModel();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6A3AD18(v1, v6, type metadata accessor for FormatModel);
  sub_1D683A158();
  v8 = &v6[*(v7 + 48)];
  v9 = *(v8 + 1);
  v14[0] = *v8;
  v14[1] = v9;
  a1(v7, v10, v11, v12);
  sub_1D683A1C4(v14);
  return sub_1D5BCA8CC(v6, type metadata accessor for FeedItem);
}

uint64_t sub_1D6A38854(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  MEMORY[0x1EEE9AC00](a1 - 8, a2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6A3AD18(v3, v6, type metadata accessor for FormatModel);
  sub_1D683A158();
  v8 = &v6[*(v7 + 48)];
  v9 = *(v8 + 1);
  v14[0] = *v8;
  v14[1] = v9;
  a3(v7, v10, v11, v12);
  sub_1D683A1C4(v14);
  return sub_1D5BCA8CC(v6, type metadata accessor for FeedItem);
}

uint64_t sub_1D6A38948(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = type metadata accessor for FormatModel();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6A3AD18(v1, v6, type metadata accessor for FormatModel);
  sub_1D683A158();
  v8 = &v6[*(v7 + 48)];
  v9 = *(v8 + 1);
  v15[0] = *v8;
  v15[1] = v9;
  v13 = a1(v7, v10, v11, v12);
  sub_1D683A1C4(v15);
  sub_1D5BCA8CC(v6, type metadata accessor for FeedItem);
  return v13;
}

uint64_t sub_1D6A38AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v26 = a7;
  v27 = a8;
  v17 = type metadata accessor for FormatModel();
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6A3AD18(v10, v20, type metadata accessor for FormatModel);
  sub_1D683A158();
  v22 = &v20[*(v21 + 48)];
  v23 = *(v22 + 1);
  v28[0] = *v22;
  v28[1] = v23;
  v24 = a10(a1, a2, a3, a4, a5, a6, v26, v27, a9);
  sub_1D683A1C4(v28);
  sub_1D5BCA8CC(v20, type metadata accessor for FeedItem);
  return v24;
}

uint64_t sub_1D6A38C00(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  MEMORY[0x1EEE9AC00](a1 - 8, a2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6A3AD18(v3, v6, type metadata accessor for FormatModel);
  sub_1D683A158();
  v8 = &v6[*(v7 + 48)];
  v9 = *(v8 + 1);
  v15[0] = *v8;
  v15[1] = v9;
  v13 = a3(v7, v10, v11, v12);
  sub_1D683A1C4(v15);
  sub_1D5BCA8CC(v6, type metadata accessor for FeedItem);
  return v13;
}

uint64_t FormatModel.appEntity.getter@<X0>(uint64_t *a1@<X8>)
{
  v75 = a1;
  sub_1D6A3ACC4(0, qword_1EDF157D8, type metadata accessor for NewsRecipeEntity);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v72 = &v68 - v3;
  v71 = type metadata accessor for NewsRecipeEntity();
  v70 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71, v4);
  v69 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FeedRecipe();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v73 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6A3ACC4(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v68 - v11;
  sub_1D6A3ACC4(0, qword_1EDF33350, type metadata accessor for ArticleEntity);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v68 - v15;
  v17 = type metadata accessor for ArticleEntity();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v68 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v68 - v32;
  v34 = type metadata accessor for FormatModel();
  MEMORY[0x1EEE9AC00](v34 - 8, v35);
  v37 = &v68 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6A3AD18(v74, v37, type metadata accessor for FormatModel);
  sub_1D5C21C24(v37, v33, type metadata accessor for FeedItem);
  sub_1D6A3AD18(v33, v29, type metadata accessor for FeedItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 6)
  {
    if (EnumCaseMultiPayload >= 3 && (EnumCaseMultiPayload - 4) >= 3)
    {
      v50 = v18;
      sub_1D5C21C24(v29, v25, type metadata accessor for FeedHeadline);
      v51 = *(v25 + 5);
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1D726316C();
      ArticleEntity.init(from:articleURL:)(v51, v12, v16);
      if ((*(v50 + 48))(v16, 1, v17))
      {
        sub_1D5C010D8(v16, qword_1EDF33350, type metadata accessor for ArticleEntity);
        v44 = type metadata accessor for FeedHeadline;
        v45 = v25;
        goto LABEL_15;
      }

      sub_1D5C21C24(v16, v21, type metadata accessor for ArticleEntity);
      v60 = v75;
      v75[3] = v17;
      v60[4] = sub_1D6A3AEE8(&unk_1EDF11ED0, type metadata accessor for ArticleEntity);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v60);
      sub_1D5C21C24(v21, boxed_opaque_existential_1, type metadata accessor for ArticleEntity);
      v62 = type metadata accessor for FeedHeadline;
      v63 = v25;
      goto LABEL_21;
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 0x12)
    {
      goto LABEL_18;
    }

    if (((1 << EnumCaseMultiPayload) & 0x3EF00) == 0)
    {
      if (EnumCaseMultiPayload == 12)
      {
        v39 = v29;
        v40 = v73;
        sub_1D5C21C24(v39, v73, type metadata accessor for FeedRecipe);
        v41 = *(v40 + 56);
        sub_1D6050928(v12);
        v42 = v72;
        sub_1D722CB50(v41, v12, v72);
        v43 = v71;
        if ((*(v70 + 48))(v42, 1, v71))
        {
          sub_1D5C010D8(v42, qword_1EDF157D8, type metadata accessor for NewsRecipeEntity);
          v44 = type metadata accessor for FeedRecipe;
          v45 = v40;
LABEL_15:
          sub_1D5BCA8CC(v45, v44);
          v46 = v33;
          goto LABEL_11;
        }

        v64 = v42;
        v65 = v69;
        sub_1D5C21C24(v64, v69, type metadata accessor for NewsRecipeEntity);
        v66 = v75;
        v75[3] = v43;
        v66[4] = sub_1D6A3AEE8(&qword_1EDF15860, type metadata accessor for NewsRecipeEntity);
        v67 = __swift_allocate_boxed_opaque_existential_1(v66);
        sub_1D5C21C24(v65, v67, type metadata accessor for NewsRecipeEntity);
        v62 = type metadata accessor for FeedRecipe;
        v63 = v40;
LABEL_21:
        sub_1D5BCA8CC(v63, v62);
        goto LABEL_22;
      }

      if (EnumCaseMultiPayload == 18)
      {
        v29 = v33;
        goto LABEL_10;
      }

LABEL_18:
      v52 = *(v29 + 7);
      v76[6] = *(v29 + 6);
      v76[7] = v52;
      v76[8] = *(v29 + 8);
      v77 = v29[144];
      v53 = *(v29 + 3);
      v76[2] = *(v29 + 2);
      v76[3] = v53;
      v54 = *(v29 + 5);
      v76[4] = *(v29 + 4);
      v76[5] = v54;
      v55 = *(v29 + 1);
      v76[0] = *v29;
      v76[1] = v55;
      v56 = type metadata accessor for FeedEntity();
      v57 = v75;
      v75[3] = v56;
      v57[4] = sub_1D6A3AEE8(&qword_1EDF12F50, type metadata accessor for FeedEntity);
      v58 = __swift_allocate_boxed_opaque_existential_1(v57);
      v59 = swift_unknownObjectRetain();
      FeedEntity.init(from:)(v59, v58);
      sub_1D5EE5B54(v76);
LABEL_22:
      sub_1D5BCA8CC(v33, type metadata accessor for FeedItem);
      goto LABEL_12;
    }
  }

  sub_1D5BCA8CC(v33, type metadata accessor for FeedItem);
LABEL_10:
  v46 = v29;
LABEL_11:
  sub_1D5BCA8CC(v46, type metadata accessor for FeedItem);
  v47 = v75;
  *v75 = 0u;
  *(v47 + 1) = 0u;
  v47[4] = 0;
LABEL_12:
  sub_1D683A158();
  return sub_1D683A1C4(&v37[*(v48 + 48)]);
}

uint64_t _s8NewsFeed11FormatModelO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v229 = a1;
  v230 = a2;
  v215 = type metadata accessor for FeedPuzzleStatistic();
  MEMORY[0x1EEE9AC00](v215, v2);
  v228 = (&v211 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4, v5);
  v227 = &v211 - v6;
  v7 = type metadata accessor for FeedRecipe();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v222 = (&v211 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10, v11);
  v221 = (&v211 - v12);
  v214 = type metadata accessor for FeedEngagementBanner();
  MEMORY[0x1EEE9AC00](v214, v13);
  v224 = &v211 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v223 = (&v211 - v17);
  v213 = type metadata accessor for FeedCustomItem();
  MEMORY[0x1EEE9AC00](v213, v18);
  v226 = (&v211 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20, v21);
  v225 = &v211 - v22;
  v23 = type metadata accessor for FeedWebEmbed();
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v218 = (&v211 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v26, v27);
  v217 = (&v211 - v28);
  v212 = type metadata accessor for FeedBannerAd();
  MEMORY[0x1EEE9AC00](v212, v29);
  v220 = (&v211 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v31, v32);
  v219 = (&v211 - v33);
  v34 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v34 - 8, v35);
  v216 = &v211 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v211 - v39;
  sub_1D6A3B0EC(0, &qword_1EDF13028, type metadata accessor for FeedItem);
  v42 = v41 - 8;
  MEMORY[0x1EEE9AC00](v41, v43);
  v45 = &v211 - v44;
  v46 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v46, v47);
  v49 = &v211 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50, v51);
  v53 = &v211 - v52;
  sub_1D6A3B0EC(0, qword_1EDF12828, type metadata accessor for FormatModel);
  MEMORY[0x1EEE9AC00](v54 - 8, v55);
  v57 = &v211 - v56;
  v59 = &v211 + *(v58 + 56) - v56;
  sub_1D6A3AD18(v229, &v211 - v56, type metadata accessor for FormatModel);
  sub_1D6A3AD18(v230, v59, type metadata accessor for FormatModel);
  v230 = v57;
  v60 = v57;
  v61 = v59;
  v62 = v53;
  sub_1D5C21C24(v60, v53, type metadata accessor for FeedItem);
  v63 = v49;
  sub_1D5C21C24(v61, v49, type metadata accessor for FeedItem);
  v64 = &v45[*(v42 + 56)];
  sub_1D6A3AD18(v62, v45, type metadata accessor for FeedItem);
  sub_1D6A3AD18(v49, v64, type metadata accessor for FeedItem);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v226 = v49;
      v229 = v61;
      v131 = *v45;
      v130 = *(v45 + 1);
      v132 = *(v45 + 6);
      v133 = *(v45 + 9);
      v134 = *(v45 + 10);
      if (swift_getEnumCaseMultiPayload() != 1)
      {

        sub_1D5BF6680(v133, v134);
        v61 = v229;
        v69 = v230;
        goto LABEL_88;
      }

      v225 = v132;
      v227 = v134;
      v228 = v62;
      v135 = *v64;
      v136 = *(v64 + 8);
      v137 = *(v64 + 72);
      v138 = *(v64 + 80);
      v223 = *(v64 + 48);
      v224 = v138;
      if (v131 == v135 && v130 == v136)
      {
        v96 = 1;
      }

      else
      {
        v96 = sub_1D72646CC();
      }

      sub_1D5BCA8CC(v226, type metadata accessor for FeedItem);
      sub_1D5BCA8CC(v228, type metadata accessor for FeedItem);

      sub_1D5BF6680(v137, v224);

      v207 = v133;
      v208 = v227;
      goto LABEL_124;
    case 2u:
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v194 = type metadata accessor for FeedBannerAd;
        goto LABEL_95;
      }

      v111 = v219;
      sub_1D5C21C24(v45, v219, type metadata accessor for FeedBannerAd);
      v112 = v220;
      sub_1D5C21C24(v64, v220, type metadata accessor for FeedBannerAd);
      if (*v111 == *v112 && v111[1] == v112[1] || (v96 = 0, (sub_1D72646CC() & 1) != 0))
      {
        v96 = sub_1D7260DAC();
      }

      sub_1D5BCA8CC(v49, type metadata accessor for FeedItem);
      sub_1D5BCA8CC(v62, type metadata accessor for FeedItem);
      v113 = type metadata accessor for FeedBannerAd;
      sub_1D5BCA8CC(v112, type metadata accessor for FeedBannerAd);
      v114 = v111;
      goto LABEL_58;
    case 3u:
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        sub_1D5C21C24(v45, v40, type metadata accessor for FeedHeadline);
        v121 = v216;
        sub_1D5C21C24(v64, v216, type metadata accessor for FeedHeadline);
        v96 = static FeedHeadline.== infix(_:_:)(v40, v121);
        sub_1D5BCA8CC(v121, type metadata accessor for FeedHeadline);
        v101 = v40;
        v102 = type metadata accessor for FeedHeadline;
        goto LABEL_36;
      }

      v194 = type metadata accessor for FeedHeadline;
      goto LABEL_95;
    case 4u:
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v97 = v217;
        sub_1D5C21C24(v45, v217, type metadata accessor for FeedWebEmbed);
        v98 = v218;
        sub_1D5C21C24(v64, v218, type metadata accessor for FeedWebEmbed);
        v96 = static FeedWebEmbed.== infix(_:_:)(v97, v98);
        v99 = type metadata accessor for FeedWebEmbed;
        goto LABEL_20;
      }

      v194 = type metadata accessor for FeedWebEmbed;
      goto LABEL_95;
    case 5u:
      v153 = *(v45 + 7);
      v236[6] = *(v45 + 6);
      v236[7] = v153;
      *(&v236[7] + 9) = *(v45 + 121);
      v154 = *(v45 + 3);
      v236[2] = *(v45 + 2);
      v236[3] = v154;
      v155 = *(v45 + 5);
      v236[4] = *(v45 + 4);
      v236[5] = v155;
      v156 = *(v45 + 1);
      v236[0] = *v45;
      v236[1] = v156;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v157 = *(v64 + 80);
        v158 = *(v64 + 112);
        v235[6] = *(v64 + 96);
        v235[7] = v158;
        *(&v235[7] + 9) = *(v64 + 121);
        v159 = *(v64 + 16);
        v160 = *(v64 + 48);
        v235[2] = *(v64 + 32);
        v235[3] = v160;
        v161 = *(v64 + 48);
        v162 = *(v64 + 80);
        v235[4] = *(v64 + 64);
        v235[5] = v162;
        v163 = *(v64 + 16);
        v235[0] = *v64;
        v235[1] = v163;
        v164 = *(v45 + 7);
        v233[6] = *(v45 + 6);
        v234[0] = v164;
        *(v234 + 9) = *(v45 + 121);
        v165 = *(v45 + 3);
        v233[2] = *(v45 + 2);
        v233[3] = v165;
        v166 = *(v45 + 5);
        v233[4] = *(v45 + 4);
        v233[5] = v166;
        v167 = *(v45 + 1);
        v233[0] = *v45;
        v233[1] = v167;
        v168 = *(v64 + 112);
        v231[6] = v235[6];
        v232[0] = v168;
        *(v232 + 9) = *(v64 + 121);
        v231[2] = v235[2];
        v231[3] = v161;
        v231[4] = v235[4];
        v231[5] = v157;
        v231[0] = v235[0];
        v231[1] = v159;
        v96 = _s8NewsFeed0B5IssueV2eeoiySbAC_ACtFZ_0(v233, v231);
        sub_1D5BCA8CC(v49, type metadata accessor for FeedItem);
        sub_1D5BCA8CC(v62, type metadata accessor for FeedItem);
        sub_1D5ECF320(v235);
        sub_1D5ECF320(v236);
        v69 = v230;
        goto LABEL_104;
      }

      sub_1D5ECF320(v236);
      goto LABEL_96;
    case 6u:
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        memcpy(v236, v45, 0x11AuLL);
        memcpy(v235, v64, 0x11AuLL);
        v96 = _s8NewsFeed0B11CatalogItemO2eeoiySbAC_ACtFZ_0(v236, v235);
        sub_1D5F76EF0(v235);
        sub_1D5F76EF0(v236);
        goto LABEL_57;
      }

      sub_1D5F76EF0(v45);
      goto LABEL_96;
    case 7u:
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v122 = *(v45 + 7);
        v236[6] = *(v45 + 6);
        v236[7] = v122;
        v236[8] = *(v45 + 8);
        LOBYTE(v236[9]) = v45[144];
        v123 = *(v45 + 3);
        v236[2] = *(v45 + 2);
        v236[3] = v123;
        v124 = *(v45 + 5);
        v236[4] = *(v45 + 4);
        v236[5] = v124;
        v125 = *(v45 + 1);
        v236[0] = *v45;
        v236[1] = v125;
        v126 = *(v64 + 112);
        v235[6] = *(v64 + 96);
        v235[7] = v126;
        v235[8] = *(v64 + 128);
        LOBYTE(v235[9]) = *(v64 + 144);
        v127 = *(v64 + 48);
        v235[2] = *(v64 + 32);
        v235[3] = v127;
        v128 = *(v64 + 80);
        v235[4] = *(v64 + 64);
        v235[5] = v128;
        v129 = *(v64 + 16);
        v235[0] = *v64;
        v235[1] = v129;
        v96 = _s8NewsFeed0B3TagV2eeoiySbAC_ACtFZ_0(v236, v235);
        sub_1D5EE5B54(v235);
        sub_1D5EE5B54(v236);
        goto LABEL_57;
      }

      sub_1D5EE5B54(v45);
      goto LABEL_96;
    case 8u:
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        v194 = type metadata accessor for FeedCustomItem;
        goto LABEL_95;
      }

      v186 = v225;
      sub_1D5C21C24(v45, v225, type metadata accessor for FeedCustomItem);
      v187 = v226;
      sub_1D5C21C24(v64, v226, type metadata accessor for FeedCustomItem);
      v69 = v230;
      if (*v186 == *v187 && v186[1] == v187[1] || (sub_1D72646CC()) && (v188 = v213, (static FormatCustomItem.Resolved.== infix(_:_:)((v186 + *(v213 + 20)), (v187 + *(v213 + 20)))))
      {
        v189 = *(v188 + 24);
        v190 = (v186 + v189);
        v191 = *(v186 + v189 + 8);
        v192 = (v187 + v189);
        v193 = v192[1];
        v96 = (v191 | v193) == 0;
        if (v191 && v193)
        {
          if (*v190 == *v192 && v191 == v193)
          {
            v96 = 1;
          }

          else
          {
            v96 = sub_1D72646CC();
          }
        }
      }

      else
      {
        v96 = 0;
      }

      sub_1D5BCA8CC(v187, type metadata accessor for FeedCustomItem);
      sub_1D5BCA8CC(v186, type metadata accessor for FeedCustomItem);
      goto LABEL_102;
    case 9u:
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        sub_1D5F76DEC(v45);
        goto LABEL_96;
      }

      v103 = *(v45 + 7);
      v236[6] = *(v45 + 6);
      v236[7] = v103;
      v236[8] = *(v45 + 8);
      *&v236[9] = *(v45 + 18);
      v104 = *(v45 + 3);
      v236[2] = *(v45 + 2);
      v236[3] = v104;
      v105 = *(v45 + 5);
      v236[4] = *(v45 + 4);
      v236[5] = v105;
      v106 = *(v45 + 1);
      v236[0] = *v45;
      v236[1] = v106;
      v107 = *(v64 + 112);
      v235[6] = *(v64 + 96);
      v235[7] = v107;
      v235[8] = *(v64 + 128);
      *&v235[9] = *(v64 + 144);
      v108 = *(v64 + 48);
      v235[2] = *(v64 + 32);
      v235[3] = v108;
      v109 = *(v64 + 80);
      v235[4] = *(v64 + 64);
      v235[5] = v109;
      v110 = *(v64 + 16);
      v235[0] = *v64;
      v235[1] = v110;
      v69 = v230;
      if (v236[0] == v235[0])
      {
        v96 = 1;
      }

      else
      {
        v96 = sub_1D72646CC();
      }

      sub_1D5BCA8CC(v49, type metadata accessor for FeedItem);
      sub_1D5BCA8CC(v62, type metadata accessor for FeedItem);
      sub_1D5F76DEC(v235);
      sub_1D5F76DEC(v236);
      goto LABEL_104;
    case 0xAu:
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        v194 = type metadata accessor for FeedEngagementBanner;
        goto LABEL_95;
      }

      v70 = v223;
      sub_1D5C21C24(v45, v223, type metadata accessor for FeedEngagementBanner);
      v71 = v224;
      sub_1D5C21C24(v64, v224, type metadata accessor for FeedEngagementBanner);
      v69 = v230;
      if (*v70 == *v71 && v70[1] == v71[1] || (v96 = 0, (sub_1D72646CC() & 1) != 0))
      {
        v96 = MEMORY[0x1DA6F36F0](v70 + *(v214 + 20), v71 + *(v214 + 20));
      }

      sub_1D5BCA8CC(v49, type metadata accessor for FeedItem);
      sub_1D5BCA8CC(v62, type metadata accessor for FeedItem);
      v185 = type metadata accessor for FeedEngagementBanner;
      goto LABEL_133;
    case 0xBu:
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        sub_1D725CC1C();
        v96 = sub_1D725CBFC();

        goto LABEL_57;
      }

      goto LABEL_96;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        v194 = type metadata accessor for FeedRecipe;
        goto LABEL_95;
      }

      v97 = v221;
      sub_1D5C21C24(v45, v221, type metadata accessor for FeedRecipe);
      v98 = v222;
      sub_1D5C21C24(v64, v222, type metadata accessor for FeedRecipe);
      v96 = _s8NewsFeed0B6RecipeV2eeoiySbAC_ACtFZ_0(v97, v98);
      v99 = type metadata accessor for FeedRecipe;
LABEL_20:
      v100 = v99;
      sub_1D5BCA8CC(v98, v99);
      v101 = v97;
      v102 = v100;
LABEL_36:
      sub_1D5BCA8CC(v101, v102);
LABEL_57:
      v113 = type metadata accessor for FeedItem;
      sub_1D5BCA8CC(v63, type metadata accessor for FeedItem);
      v114 = v62;
LABEL_58:
      sub_1D5BCA8CC(v114, v113);
      v69 = v230;
      goto LABEL_104;
    case 0xDu:
      v229 = v61;
      v170 = *v45;
      v169 = *(v45 + 1);
      v171 = *(v45 + 2);
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        swift_unknownObjectRelease();

        v61 = v229;
        v69 = v230;
        goto LABEL_97;
      }

      v172 = v64;
      v173 = *v64;
      v174 = *(v64 + 8);
      v175 = *(v172 + 16);
      if (v170 == v173 && v169 == v174 || (v96 = 0, (sub_1D72646CC() & 1) != 0))
      {
        v226 = v63;
        v228 = v62;
        v176 = [v171 identifier];
        v177 = sub_1D726207C();
        v179 = v178;

        v180 = [v175 identifier];
        v181 = sub_1D726207C();
        v183 = v182;

        if (v177 == v181 && v179 == v183)
        {
          v96 = 1;
        }

        else
        {
          v96 = sub_1D72646CC();
        }

        v62 = v228;
        v63 = v226;
      }

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();

      sub_1D5BCA8CC(v63, type metadata accessor for FeedItem);
      sub_1D5BCA8CC(v62, type metadata accessor for FeedItem);
      goto LABEL_128;
    case 0xEu:
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        sub_1D5F2DF58(v45);
        goto LABEL_96;
      }

      v84 = *(v45 + 11);
      v236[10] = *(v45 + 10);
      v236[11] = v84;
      v236[12] = *(v45 + 12);
      v85 = *(v45 + 7);
      v236[6] = *(v45 + 6);
      v236[7] = v85;
      v86 = *(v45 + 9);
      v236[8] = *(v45 + 8);
      v236[9] = v86;
      v87 = *(v45 + 3);
      v236[2] = *(v45 + 2);
      v236[3] = v87;
      v88 = *(v45 + 5);
      v236[4] = *(v45 + 4);
      v236[5] = v88;
      v89 = *(v45 + 1);
      v236[0] = *v45;
      v236[1] = v89;
      v90 = *(v64 + 176);
      v235[10] = *(v64 + 160);
      v235[11] = v90;
      v235[12] = *(v64 + 192);
      v91 = *(v64 + 112);
      v235[6] = *(v64 + 96);
      v235[7] = v91;
      v92 = *(v64 + 144);
      v235[8] = *(v64 + 128);
      v235[9] = v92;
      v93 = *(v64 + 48);
      v235[2] = *(v64 + 32);
      v235[3] = v93;
      v94 = *(v64 + 80);
      v235[4] = *(v64 + 64);
      v235[5] = v94;
      v95 = *(v64 + 16);
      v235[0] = *v64;
      v235[1] = v95;
      v69 = v230;
      if (*(&v236[2] + 8) == __PAIR128__(v93, *(&v235[2] + 1)))
      {
        v96 = 1;
      }

      else
      {
        v96 = sub_1D72646CC();
      }

      sub_1D5BCA8CC(v49, type metadata accessor for FeedItem);
      sub_1D5BCA8CC(v62, type metadata accessor for FeedItem);
      sub_1D5F2DF58(v235);
      sub_1D5F2DF58(v236);
      goto LABEL_104;
    case 0xFu:
      v226 = v49;
      v116 = *(v45 + 3);
      v115 = *(v45 + 4);
      v118 = *(v45 + 5);
      v117 = *(v45 + 6);
      v119 = *(v45 + 7);
      if (swift_getEnumCaseMultiPayload() == 15)
      {
        v227 = v115;
        v228 = v119;
        v229 = v61;
        v120 = *(v64 + 24);
        v225 = *(v64 + 32);
        if (v118 == *(v64 + 40) && v117 == *(v64 + 48))
        {
          v96 = 1;
        }

        else
        {
          v96 = sub_1D72646CC();
        }

        sub_1D5BCA8CC(v226, type metadata accessor for FeedItem);
        sub_1D5BCA8CC(v62, type metadata accessor for FeedItem);
        sub_1D5BF6680(v120, v225);
        swift_unknownObjectRelease();

        sub_1D5BF6680(v116, v227);
        swift_unknownObjectRelease();

        goto LABEL_128;
      }

      sub_1D5BF6680(v116, v115);
      swift_unknownObjectRelease();

      v69 = v230;
LABEL_88:
      v63 = v226;
      goto LABEL_97;
    case 0x10u:
      if (swift_getEnumCaseMultiPayload() == 16)
      {
        v70 = v227;
        sub_1D5C21C24(v45, v227, type metadata accessor for FeedPuzzleStatistic);
        v71 = v228;
        sub_1D5C21C24(v64, v228, type metadata accessor for FeedPuzzleStatistic);
        if ((v70[5] != v71[5] || v70[6] != v71[6]) && (sub_1D72646CC() & 1) == 0)
        {
          v96 = 0;
          v69 = v230;
          goto LABEL_132;
        }

        v226 = v49;
        v72 = v61;
        v73 = *(v215 + 32);
        v74 = (v70 + v73);
        v75 = (v71 + v73);
        v76 = [*v74 identifier];
        v77 = sub_1D726207C();
        v79 = v78;

        v80 = [*v75 identifier];
        v81 = sub_1D726207C();
        v83 = v82;

        if (v77 == v81 && v79 == v83)
        {

          v69 = v230;
          v61 = v72;
        }

        else
        {
          v209 = sub_1D72646CC();

          v69 = v230;
          v61 = v72;
          if ((v209 & 1) == 0)
          {
            v96 = 0;
            goto LABEL_131;
          }
        }

        v210 = type metadata accessor for PuzzleStatistic();
        v96 = static PuzzleStatisticCategory.== infix(_:_:)(v74 + *(v210 + 20), v75 + *(v210 + 20));
LABEL_131:
        v63 = v226;
        v70 = v227;
        v71 = v228;
LABEL_132:
        sub_1D5BCA8CC(v63, type metadata accessor for FeedItem);
        sub_1D5BCA8CC(v62, type metadata accessor for FeedItem);
        v185 = type metadata accessor for FeedPuzzleStatistic;
LABEL_133:
        v199 = v185;
        sub_1D5BCA8CC(v71, v185);
        v200 = v70;
        goto LABEL_103;
      }

      v194 = type metadata accessor for FeedPuzzleStatistic;
LABEL_95:
      sub_1D5BCA8CC(v45, v194);
LABEL_96:
      v69 = v230;
LABEL_97:
      sub_1D5BCA8CC(v64, type metadata accessor for FeedItem);
      v195 = FeedItem.identifier.getter();
      v197 = v196;
      if (v195 == FeedItem.identifier.getter() && v197 == v198)
      {
        v96 = 1;
      }

      else
      {
        v96 = sub_1D72646CC();
      }

LABEL_102:
      v199 = type metadata accessor for FeedItem;
      sub_1D5BCA8CC(v63, type metadata accessor for FeedItem);
      v200 = v62;
LABEL_103:
      sub_1D5BCA8CC(v200, v199);
LABEL_104:
      sub_1D683A158();
      v202 = *(v201 + 48);
      sub_1D683A1C4(v61 + v202);
      sub_1D683A1C4(v69 + v202);
      return v96 & 1;
    case 0x11u:
      v139 = *(v45 + 13);
      v236[12] = *(v45 + 12);
      v236[13] = v139;
      v236[14] = *(v45 + 14);
      *&v236[15] = *(v45 + 30);
      v140 = *(v45 + 9);
      v236[8] = *(v45 + 8);
      v236[9] = v140;
      v141 = *(v45 + 11);
      v236[10] = *(v45 + 10);
      v236[11] = v141;
      v142 = *(v45 + 5);
      v236[4] = *(v45 + 4);
      v236[5] = v142;
      v143 = *(v45 + 7);
      v236[6] = *(v45 + 6);
      v236[7] = v143;
      v144 = *(v45 + 1);
      v236[0] = *v45;
      v236[1] = v144;
      v145 = *(v45 + 3);
      v236[2] = *(v45 + 2);
      v236[3] = v145;
      if (swift_getEnumCaseMultiPayload() != 17)
      {
        sub_1D5F2DFAC(v236);
        goto LABEL_96;
      }

      v146 = *(v64 + 208);
      v235[12] = *(v64 + 192);
      v235[13] = v146;
      v235[14] = *(v64 + 224);
      *&v235[15] = *(v64 + 240);
      v147 = *(v64 + 144);
      v235[8] = *(v64 + 128);
      v235[9] = v147;
      v148 = *(v64 + 176);
      v235[10] = *(v64 + 160);
      v235[11] = v148;
      v149 = *(v64 + 80);
      v235[4] = *(v64 + 64);
      v235[5] = v149;
      v150 = *(v64 + 112);
      v235[6] = *(v64 + 96);
      v235[7] = v150;
      v151 = *(v64 + 16);
      v235[0] = *v64;
      v235[1] = v151;
      v152 = *(v64 + 48);
      v235[2] = *(v64 + 32);
      v235[3] = v152;
      v69 = v230;
      if (v236[0] == v235[0])
      {
        v96 = 1;
      }

      else
      {
        v96 = sub_1D72646CC();
      }

      sub_1D5BCA8CC(v49, type metadata accessor for FeedItem);
      sub_1D5BCA8CC(v62, type metadata accessor for FeedItem);
      sub_1D5F2DFAC(v235);
      sub_1D5F2DFAC(v236);
      goto LABEL_104;
    case 0x12u:
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v69 = v230;
      if (EnumCaseMultiPayload != 18)
      {
        goto LABEL_97;
      }

      sub_1D5BCA8CC(v49, type metadata accessor for FeedItem);
      sub_1D5BCA8CC(v62, type metadata accessor for FeedItem);
      v96 = 1;
      goto LABEL_104;
    default:
      v66 = *v45;
      v65 = *(v45 + 1);
      v67 = *(v45 + 5);
      v68 = *(v45 + 6);
      if (swift_getEnumCaseMultiPayload())
      {

        sub_1D5BF6680(v67, v68);
        v69 = v230;
        v63 = v49;
        goto LABEL_97;
      }

      v228 = v68;
      v229 = v61;
      v204 = *v64;
      v205 = *(v64 + 8);
      v206 = *(v64 + 48);
      v227 = *(v64 + 40);
      if (v66 == v204 && v65 == v205)
      {
        v96 = 1;
      }

      else
      {
        v96 = sub_1D72646CC();
      }

      sub_1D5BCA8CC(v49, type metadata accessor for FeedItem);
      sub_1D5BCA8CC(v62, type metadata accessor for FeedItem);

      sub_1D5BF6680(v227, v206);

      v207 = v67;
      v208 = v228;
LABEL_124:
      sub_1D5BF6680(v207, v208);
LABEL_128:
      v61 = v229;
      v69 = v230;
      goto LABEL_104;
  }
}

void sub_1D6A3ACC4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1D6A3AD18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6A3AEE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D6A3AF30(uint64_t a1, uint64_t a2)
{
  sub_1D683A158();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D6A3AF9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D683A158();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_1D6A3B018(uint64_t a1)
{
  sub_1D683A158();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v3 = type metadata accessor for FeedItem(319);
    if (v5 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      v3 = 0;
      *(*(a1 - 8) + 84) = v7;
    }
  }

  return v3;
}

void sub_1D6A3B0EC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t type metadata accessor for DebugFormatWorkspaceCanvasSelection()
{
  result = qword_1EC890410;
  if (!qword_1EC890410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6A3B1C0()
{
  type metadata accessor for DebugFormatWorkspace();
  if (v0 <= 0x3F)
  {
    sub_1D614A45C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D6A3B24C()
{
  v1 = type metadata accessor for FormatWorkspaceGroup();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = (&v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for DebugFormatWorkspaceGroup();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + *(type metadata accessor for DebugFormatWorkspace() + 36));
  v11 = *(v10 + 16);
  if (!v11)
  {
    return 0;
  }

  result = type metadata accessor for DebugFormatWorkspaceCanvasSelection();
  v13 = 0;
  v14 = *(v0 + *(result + 24));
  v15 = v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  while (v13 < *(v10 + 16))
  {
    sub_1D6A3BDC4(v15 + *(v6 + 72) * v13, v9, type metadata accessor for DebugFormatWorkspaceGroup);
    sub_1D6A3BDC4(v9, v4, type metadata accessor for FormatWorkspaceGroup);
    sub_1D6A3BE2C(v9, type metadata accessor for DebugFormatWorkspaceGroup);
    v17 = *v4;
    v16 = v4[1];

    sub_1D6A3BE2C(v4, type metadata accessor for FormatWorkspaceGroup);
    if (*(v14 + 16))
    {
      sub_1D5B69D90(v17, v16);
      v19 = v18;

      if (v19)
      {
        return 1;
      }
    }

    else
    {
    }

    if (v11 == ++v13)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D6A3B45C(uint64_t a1)
{
  v3 = *(v1 + *(type metadata accessor for DebugFormatWorkspaceCanvasSelection() + 24));
  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = sub_1D5B69D90(*(a1 + OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_group), *(a1 + OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_group + 8));
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(v3 + 56) + 16 * v4);
  if (*(a1 + OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_canvas + 24) == *v6 && *(a1 + OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_canvas + 32) == v6[1])
  {
    return 1;
  }

  return sub_1D72646CC();
}

uint64_t sub_1D6A3B508@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1D67724F0();
  v88 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v87 = (v76 - v16);
  v17 = type metadata accessor for DebugFormatWorkspaceCanvasSection();
  v83 = *(v17 - 8);
  v84 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v86 = v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DebugFormatEditorWorkspaceGroup();
  v85 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v82 = (v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = type metadata accessor for DebugFormatWorkspaceCanvasSelection();
  v24 = *(v23 + 24);
  v77 = a1;
  v78 = v24;
  *(a5 + v24) = MEMORY[0x1E69E7CC8];
  v25 = (a5 + *(v23 + 20));
  *v25 = a2;
  v25[1] = HIBYTE(a2) & 1;
  v79 = a5;
  sub_1D6A3BDC4(a1, a5, type metadata accessor for DebugFormatWorkspace);
  v76[1] = a3;

  sub_1D725B31C();

  v104[10] = v100;
  v104[11] = v101;
  v104[12] = v102;
  v104[6] = v96;
  v104[7] = v97;
  v104[8] = v98;
  v104[9] = v99;
  v104[2] = v92;
  v104[3] = v93;
  v104[4] = v94;
  v104[5] = v95;
  v104[0] = v90;
  v104[1] = v91;
  v116 = v100;
  v117 = v101;
  v118 = v102;
  v112 = v96;
  v113 = v97;
  v114 = v98;
  v115 = v99;
  v108 = v92;
  v109 = v93;
  v110 = v94;
  v111 = v95;
  v105 = v103;
  v119 = v103;
  v106 = v90;
  v107 = v91;
  if (sub_1D5DEA380(&v106) != 1)
  {
    v26 = v107;
    if (v26 == *(v77 + *(type metadata accessor for DebugFormatWorkspace() + 20)) || (sub_1D72646CC() & 1) != 0)
    {
      v27 = BYTE4(v118) ? 256 : 0;
      if (sub_1D67F7A4C(v27 | BYTE3(v118), a2 & 0x1FF))
      {

        v28 = v119;
        v88 = *(v119 + 16);
        if (!v88)
        {
          goto LABEL_48;
        }

        v87 = (v82 + *(v20 + 28));
        v86 = v119 + ((*(v85 + 80) + 32) & ~*(v85 + 80));

        v29 = 0;
        while (1)
        {
          if (v29 >= *(v28 + 16))
          {
            goto LABEL_52;
          }

          v33 = v82;
          sub_1D6A3BDC4(v86 + v85[9] * v29, v82, type metadata accessor for DebugFormatEditorWorkspaceGroup);
          v35 = *v33;
          v34 = v33[1];
          v36 = *v87;
          v37 = v87[1];

          sub_1D6A3BE2C(v33, type metadata accessor for DebugFormatEditorWorkspaceGroup);
          v39 = v78;
          v38 = v79;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v41 = *(v38 + v39);
          *&v90 = v41;
          v42 = sub_1D5B69D90(v35, v34);
          v44 = *(v41 + 16);
          v45 = (v43 & 1) == 0;
          v46 = __OFADD__(v44, v45);
          v47 = v44 + v45;
          if (v46)
          {
            goto LABEL_53;
          }

          v48 = v43;
          if (*(v41 + 24) < v47)
          {
            break;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_18;
          }

          v54 = v42;
          sub_1D6D7DE64();
          v42 = v54;
          if (v48)
          {
LABEL_10:
            v30 = v42;

            v31 = v90;
            v32 = (*(v90 + 56) + 16 * v30);
            *v32 = v36;
            v32[1] = v37;

            goto LABEL_11;
          }

LABEL_19:
          v31 = v90;
          *(v90 + 8 * (v42 >> 6) + 64) |= 1 << v42;
          v50 = (v31[6] + 16 * v42);
          *v50 = v35;
          v50[1] = v34;
          v51 = (v31[7] + 16 * v42);
          *v51 = v36;
          v51[1] = v37;
          v52 = v31[2];
          v46 = __OFADD__(v52, 1);
          v53 = v52 + 1;
          if (v46)
          {
            goto LABEL_54;
          }

          v31[2] = v53;
LABEL_11:
          ++v29;
          *(v79 + v78) = v31;
          if (v88 == v29)
          {
            goto LABEL_49;
          }
        }

        sub_1D6D666FC(v47, isUniquelyReferenced_nonNull_native);
        v42 = sub_1D5B69D90(v35, v34);
        if ((v48 & 1) != (v49 & 1))
        {
          goto LABEL_55;
        }

LABEL_18:
        if (v48)
        {
          goto LABEL_10;
        }

        goto LABEL_19;
      }
    }

    sub_1D6A3BE2C(v104, sub_1D61957D4);
  }

  v82 = *(a4 + 16);
  if (!v82)
  {
LABEL_45:

    return sub_1D6A3BE2C(v77, type metadata accessor for DebugFormatWorkspace);
  }

  v55 = 0;
  v56 = *(v83 + 80);
  v80 = a4;
  v81 = a4 + ((v56 + 32) & ~v56);
  while (1)
  {
    if (v55 >= *(a4 + 16))
    {
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      result = sub_1D726493C();
      __break(1u);
      return result;
    }

    v65 = v86;
    sub_1D6A3BDC4(v81 + *(v83 + 72) * v55, v86, type metadata accessor for DebugFormatWorkspaceCanvasSection);
    v66 = *(v65 + *(v84 + 40));
    v85 = v55;
    if (v66 >> 62)
    {
      break;
    }

    v67 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v67)
    {
      goto LABEL_31;
    }

LABEL_27:
    v55 = (v85 + 1);
    sub_1D6A3BE2C(v86, type metadata accessor for DebugFormatWorkspaceCanvasSection);
    a4 = v80;
    if (v55 == v82)
    {
      goto LABEL_45;
    }
  }

  v67 = sub_1D7263BFC();
  if (!v67)
  {
    goto LABEL_27;
  }

LABEL_31:
  v68 = 0;
  while ((v66 & 0xC000000000000001) != 0)
  {
    v69 = MEMORY[0x1DA6FB460](v68, v66);
    v70 = v68 + 1;
    if (__OFADD__(v68, 1))
    {
      goto LABEL_46;
    }

LABEL_37:
    v71 = OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_state;
    swift_beginAccess();
    v72 = v69 + v71;
    v73 = v87;
    sub_1D6A3BDC4(v72, v87, sub_1D67724F0);
    sub_1D6A3BD60(v73, v13);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {

      sub_1D6A3BE2C(v13, sub_1D67724F0);
    }

    else
    {
      if (EnumCaseMultiPayload != 2)
      {
        sub_1D6A3BE2C(v13, sub_1D67724F0);
        v57 = (v86 + *(v84 + 28));
        v59 = *v57;
        v58 = v57[1];
        v61 = *(v69 + OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_canvas + 24);
        v60 = *(v69 + OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_canvas + 32);

        v63 = v78;
        v62 = v79;
        v64 = swift_isUniquelyReferenced_nonNull_native();
        v89 = *(v62 + v63);
        sub_1D6D76D20(v61, v60, v59, v58, v64);

        *(v62 + v63) = v89;
        goto LABEL_27;
      }
    }

    ++v68;
    if (v70 == v67)
    {
      goto LABEL_27;
    }
  }

  if (v68 >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_47;
  }

  v69 = *(v66 + 8 * v68 + 32);

  v70 = v68 + 1;
  if (!__OFADD__(v68, 1))
  {
    goto LABEL_37;
  }

LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:

LABEL_49:
  sub_1D6A3BE2C(v104, sub_1D61957D4);

  return sub_1D6A3BE2C(v77, type metadata accessor for DebugFormatWorkspace);
}

uint64_t sub_1D6A3BD60(uint64_t a1, uint64_t a2)
{
  sub_1D67724F0();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6A3BDC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6A3BE2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6A3BEA0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  if (sub_1D6338CBC(*a1, *a2) & 1) != 0 && (sub_1D633A0F0(v2, v5))
  {
    v12 = v3;
    v13 = v4;
    v10 = v6;
    v11 = v7;
    sub_1D5CBA110(v3, v4);
    sub_1D5CBA110(v6, v7);
    v8 = _s8NewsFeed14FormatItemKindO2eeoiySbAC_ACtFZ_0(&v12, &v10);
    sub_1D5CBA0FC(v10, v11);
    sub_1D5CBA0FC(v12, v13);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t FeedPoolManager.__allocating_init(feed:service:)(uint64_t *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  FeedPoolManager.init(feed:service:)(a1, a2);
  return v4;
}

uint64_t sub_1D6A3BFA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v67 = a2;
  v71 = a4;
  v8 = *v5;
  v76 = *(*v5 + 88);
  v9 = *(v8 + 80);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v73 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, AssociatedTypeWitness);
  v64 = &v56 - v12;
  v74 = v13;
  v60 = sub_1D726393C();
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60, v14);
  v61 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v62 = &v56 - v18;
  v19 = *a3;
  v20 = *(AssociatedConformanceWitness + 80);
  v21 = a1;
  v22 = swift_checkMetadataState();
  v23 = v20(v22, AssociatedConformanceWitness);
  v25 = v24;
  v26 = v5[4];
  sub_1D5C384A0();
  v72 = v27;
  v28 = swift_allocObject();
  v68 = xmmword_1D7273AE0;
  *(v28 + 16) = xmmword_1D7273AE0;
  v75 = v19;
  v78[0] = v19;
  v77 = v23;
  v79 = v23;
  v80 = v25;
  v29 = v25;
  v66 = v9;
  v30 = v26;
  v69 = type metadata accessor for FeedPoolManager.Key();
  v31 = sub_1D6A3C5F8();
  v33 = v32;
  *(v28 + 56) = MEMORY[0x1E69E6158];
  v34 = sub_1D5B7E2C0();
  *(v28 + 64) = v34;
  *(v28 + 32) = v31;
  *(v28 + 40) = v33;
  sub_1D7262EDC();
  v70 = v30;
  sub_1D725C30C();

  v35 = *(AssociatedConformanceWitness + 88);
  v36 = v21;
  v63 = v22;
  v65 = AssociatedConformanceWitness;
  v37 = AssociatedConformanceWitness;
  v38 = v29;
  if (v35(v22, v37))
  {
    v58 = v34;
    v57 = v21;
    v56 = v5;
    v78[0] = v75;
    v79 = v77;
    v80 = v29;

    v39 = v62;
    sub_1D725B85C();

    v41 = v73;
    v40 = v74;
    if ((*(v73 + 48))(v39, 1, v74) != 1)
    {
      (*(v41 + 32))(v71, v39, v40);
      v52 = swift_allocObject();
      *(v52 + 16) = v68;
      v78[0] = v75;
      v79 = v77;
      v80 = v38;
      v53 = sub_1D6A3C5F8();
      v54 = v58;
      *(v52 + 56) = MEMORY[0x1E69E6158];
      *(v52 + 64) = v54;
      *(v52 + 32) = v53;
      *(v52 + 40) = v55;

      sub_1D7262EDC();
      sub_1D725C30C();
    }

    (*(v59 + 8))(v39, v60);
    v36 = v57;
    v34 = v58;
  }

  v42 = v75;
  v78[0] = v75;
  v43 = v64;
  (*(v76 + 24))(v36, v67, v78, v66);
  v44 = swift_allocObject();
  *(v44 + 16) = v68;
  v78[0] = v42;
  v79 = v77;
  v80 = v38;
  v45 = sub_1D6A3C5F8();
  *(v44 + 56) = MEMORY[0x1E69E6158];
  *(v44 + 64) = v34;
  *(v44 + 32) = v45;
  *(v44 + 40) = v46;
  sub_1D7262EDC();
  sub_1D725C30C();

  v47 = v43;
  if (v35(v63, v65))
  {
    v49 = v73;
    v48 = v74;
    v50 = v61;
    (*(v73 + 16))(v61, v47, v74);
    (*(v49 + 56))(v50, 0, 1, v48);
    v78[0] = v42;
    v79 = v77;
    v80 = v38;
    sub_1D725B87C();
  }

  else
  {

    v49 = v73;
    v48 = v74;
  }

  return (*(v49 + 32))(v71, v47, v48);
}

uint64_t sub_1D6A3C5F8()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  BYTE8(v4) = 0;
  *&v4 = *v0;
  sub_1D7263F9C();
  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  MEMORY[0x1DA6F9910](v1, v2);
  return *(&v4 + 1);
}

uint64_t sub_1D6A3C6F4(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = 0x6E4F646568636163;
  v8 = 0xEA0000000000796CLL;
  if (v2 != 1)
  {
    v7 = 0x6143726566657270;
    v8 = 0xEC00000064656863;
  }

  if (*a1)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x746C7561666564;
  }

  if (v2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  v11 = 0x6E4F646568636163;
  v12 = 0xEA0000000000796CLL;
  if (*a2 != 1)
  {
    v11 = 0x6143726566657270;
    v12 = 0xEC00000064656863;
  }

  if (*a2)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0x746C7561666564;
  }

  if (*a2)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0xE700000000000000;
  }

  if (v9 == v13 && v10 == v14)
  {
  }

  else
  {
    v15 = sub_1D72646CC();

    result = 0;
    if ((v15 & 1) == 0)
    {
      return result;
    }
  }

  if (v3 == v5 && v4 == v6)
  {
    return 1;
  }

  return sub_1D72646CC();
}

uint64_t sub_1D6A3C888()
{
  sub_1D72621EC();

  return sub_1D72621EC();
}

uint64_t sub_1D6A3C944()
{
  sub_1D7264A0C();
  sub_1D6A3C888();
  return sub_1D7264A5C();
}

uint64_t sub_1D6A3C9A8()
{
  sub_1D7264A0C();
  sub_1D6A3C888();
  return sub_1D7264A5C();
}

uint64_t *FeedPoolManager.deinit()
{
  v1 = *v0;
  v2 = v0[4];

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 104));

  return v0;
}

uint64_t FeedPoolManager.__deallocating_deinit()
{
  FeedPoolManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t FormatPuzzleTypeBinding.Image.image(from:context:imageContext:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = a1[1];
  v18[0] = *a1;
  v18[1] = v6;
  v7 = a1[3];
  v18[2] = a1[2];
  v18[3] = v7;
  v8 = swift_allocObject();
  v9 = *(a2 + 96);
  v19[2] = *(a2 + 80);
  v19[3] = v9;
  v19[4] = *(a2 + 112);
  v20 = *(a2 + 128);
  v10 = *(a2 + 64);
  v19[0] = *(a2 + 48);
  v19[1] = v10;
  v11 = swift_allocObject();
  v12 = a1[1];
  v11[1] = *a1;
  v11[2] = v12;
  v13 = a1[3];
  v11[3] = a1[2];
  v11[4] = v13;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  v14 = *(a2 + 96);
  *(v8 + 88) = *(a2 + 80);
  *(v8 + 104) = v14;
  *(v8 + 120) = *(a2 + 112);
  v15 = *(a2 + 64);
  *(v8 + 56) = *(a2 + 48);
  *(v8 + 48) = 1;
  *(v8 + 136) = *(a2 + 128);
  *(v8 + 72) = v15;
  *(v8 + 144) = sub_1D6A3CDCC;
  *(v8 + 152) = v11;
  *a3 = v8 | 0x2000000000000000;
  sub_1D673F334(v19, v17);
  return sub_1D63071F4(v18, v17);
}

id sub_1D6A3CD60@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  result = [*(a1 + 56) exploreTileImageAssetHandle];
  v4 = result;
  if (result)
  {
    v5 = sub_1D5C169F4();
    result = sub_1D5EECFF8();
  }

  else
  {
    v5 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  *a2 = v4;
  a2[3] = v5;
  a2[4] = result;
  return result;
}

uint64_t FormatPuzzleTypeBinding.Image.hashValue.getter()
{
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](0);
  return sub_1D7264A5C();
}

unint64_t sub_1D6A3CE4C()
{
  result = qword_1EC890420;
  if (!qword_1EC890420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890420);
  }

  return result;
}

unint64_t sub_1D6A3CEA0(uint64_t a1)
{
  result = sub_1D6A3CEC8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6A3CEC8()
{
  result = qword_1EC890428;
  if (!qword_1EC890428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890428);
  }

  return result;
}

unint64_t sub_1D6A3CF1C(void *a1)
{
  a1[1] = sub_1D6696768();
  a1[2] = sub_1D66FC980();
  result = sub_1D6A3CE4C();
  a1[3] = result;
  return result;
}

uint64_t FormatPuzzle.overrides.getter@<X0>(_OWORD *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[7];
  v4 = v1[9];
  v21 = v1[8];
  v22 = v4;
  v5 = v1[9];
  v23 = v1[10];
  v6 = v1[3];
  v7 = v1[5];
  v17 = v1[4];
  v8 = v17;
  v18 = v7;
  v9 = v1[5];
  v10 = v1[7];
  v19 = v1[6];
  v11 = v19;
  v20 = v10;
  v12 = v1[3];
  v16[0] = v1[2];
  v13 = v16[0];
  v16[1] = v12;
  a1[6] = v21;
  a1[7] = v5;
  a1[8] = v1[10];
  a1[2] = v8;
  a1[3] = v9;
  a1[4] = v11;
  a1[5] = v3;
  *a1 = v13;
  a1[1] = v6;
  return sub_1D5E9E6F8(v16, v15);
}

id FCPuzzleProviding.overridden(by:)(__int128 *a1)
{
  v2 = v1;
  v3 = a1[7];
  v24 = a1[6];
  v25 = v3;
  v26 = a1[8];
  v4 = a1[3];
  v20 = a1[2];
  v21 = v4;
  v5 = a1[5];
  v22 = a1[4];
  v23 = v5;
  v6 = a1[1];
  v18 = *a1;
  v19 = v6;
  if (get_enum_tag_for_layout_string_8NewsFeed0B5IssueV9OverridesVSg_0(&v18) != 1 && (*(&v18 + 1) || *(&v19 + 1) || *(&v20 + 1) || *(&v21 + 1) || *(&v22 + 1) || *(&v23 + 1) || *(&v24 + 1) || *(&v25 + 1) | *(&v26 + 1)))
  {
    v15 = v24;
    v16 = v25;
    v17 = v26;
    v11 = v20;
    v12 = v21;
    v13 = v22;
    v14 = v23;
    v9 = v18;
    v10 = v19;
    v7 = sub_1D6A3DF8C();
    v2 = [objc_allocWithZone(MEMORY[0x1E69B54F0]) initWithPuzzle:v2 overrides:{v7, v9, v10, v11, v12, v13, v14, v15, v16, v17}];
  }

  else
  {
    swift_unknownObjectRetain();
  }

  return v2;
}

void __swiftcall FormatPuzzle.Overrides.init(title:subtitle:description:author:teaserClue:teaserAnswer:teaserInfo:teaserDirection:teaserNumber:)(NewsFeed::FormatPuzzle::Overrides *__return_ptr retstr, Swift::String_optional title, Swift::String_optional subtitle, Swift::String_optional description, Swift::String_optional author, Swift::String_optional teaserClue, Swift::String_optional teaserAnswer, Swift::String_optional teaserInfo, Swift::String_optional teaserDirection, Swift::String_optional teaserNumber)
{
  retstr->title = title;
  retstr->subtitle = subtitle;
  retstr->description = description;
  retstr->author = author;
  retstr->teaserClue = teaserClue;
  retstr->teaserAnswer = teaserAnswer;
  retstr->teaserInfo = teaserInfo;
  retstr->teaserDirection = teaserDirection;
  retstr->teaserNumber = teaserNumber;
}

uint64_t sub_1D6A3D228(__int128 *a1)
{
  v2 = a1[6];
  v3 = a1[7];
  v4 = a1[4];
  v29 = a1[5];
  v30 = v2;
  v5 = a1[8];
  v31 = v3;
  v32 = v5;
  v6 = a1[2];
  v7 = a1[3];
  v8 = *a1;
  v25 = a1[1];
  v26 = v6;
  v27 = v7;
  v28 = v4;
  v23 = 0u;
  v24 = v8;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = _s8NewsFeed12FormatPuzzleC9OverridesV2eeoiySbAE_AEtFZ_0(&v24, &v15);
  v33[6] = v21;
  v33[7] = v22;
  v33[8] = v23;
  v33[2] = v17;
  v33[3] = v18;
  v33[4] = v19;
  v33[5] = v20;
  v33[0] = v15;
  v33[1] = v16;
  result = sub_1D6702788(v33);
  if ((v9 & 1) == 0)
  {
    v11 = a1[7];
    v30 = a1[6];
    v31 = v11;
    v32 = a1[8];
    v12 = a1[3];
    v26 = a1[2];
    v27 = v12;
    v13 = a1[5];
    v28 = a1[4];
    v29 = v13;
    v14 = a1[1];
    v24 = *a1;
    v25 = v14;
    sub_1D5E9E6F8(a1, &v15);
    sub_1D5D2D628(0, &qword_1EDF02828, sub_1D5E192B0, &type metadata for FormatPuzzle.CodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D2D690(&qword_1EDF02830, &qword_1EDF02828, sub_1D5E192B0, &type metadata for FormatPuzzle.CodingKeys);
    sub_1D683FBEC();
    sub_1D72647EC();
    v21 = v30;
    v22 = v31;
    v23 = v32;
    v17 = v26;
    v18 = v27;
    v19 = v28;
    v20 = v29;
    v15 = v24;
    v16 = v25;
    return sub_1D6702788(&v15);
  }

  return result;
}

uint64_t FormatPuzzle.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1D6A3D42C(_OWORD *a1, void *a2)
{
  v2 = a1[7];
  __src[6] = a1[6];
  __src[7] = v2;
  __src[8] = a1[8];
  v3 = a1[3];
  __src[2] = a1[2];
  __src[3] = v3;
  v4 = a1[5];
  __src[4] = a1[4];
  __src[5] = v4;
  v5 = a1[1];
  __src[0] = *a1;
  __src[1] = v5;
  v6 = *a2;
  swift_beginAccess();
  v7 = v6[8];
  v15[5] = v6[7];
  v15[6] = v7;
  v8 = v6[10];
  v15[7] = v6[9];
  v15[8] = v8;
  v9 = v6[3];
  v10 = v6[5];
  v11 = v6[6];
  v15[2] = v6[4];
  v15[3] = v10;
  v15[4] = v11;
  v15[0] = v6[2];
  v15[1] = v9;
  sub_1D5E9E6F8(__src, v13);
  memmove(v6 + 2, __src, 0x90uLL);
  return sub_1D6A3F9CC(v15);
}

uint64_t FormatPuzzle.overrides.setter(_OWORD *a1)
{
  swift_beginAccess();
  v3 = v1[8];
  v4 = v1[10];
  v13[7] = v1[9];
  v13[8] = v4;
  v5 = v1[5];
  v13[2] = v1[4];
  v13[3] = v5;
  v6 = v1[6];
  v13[5] = v1[7];
  v13[6] = v3;
  v13[4] = v6;
  v7 = v1[3];
  v13[0] = v1[2];
  v13[1] = v7;
  v8 = a1[5];
  v1[6] = a1[4];
  v1[7] = v8;
  v9 = a1[7];
  v1[8] = a1[6];
  v1[9] = v9;
  v1[10] = a1[8];
  v10 = a1[3];
  v1[4] = a1[2];
  v1[5] = v10;
  v11 = a1[1];
  v1[2] = *a1;
  v1[3] = v11;
  return sub_1D6A3F9CC(v13);
}

uint64_t FormatPuzzle.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 176) = a1;
}

uint64_t FormatPuzzle.properties.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 184) = a1;
}

uint64_t FormatPuzzle.__allocating_init(identifier:overrides:selectors:properties:)(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  swift_beginAccess();
  *(v10 + 176) = a4;
  swift_beginAccess();
  *(v10 + 184) = a5;
  swift_beginAccess();
  v11 = a3[7];
  *(v10 + 128) = a3[6];
  *(v10 + 144) = v11;
  *(v10 + 160) = a3[8];
  v12 = a3[3];
  *(v10 + 64) = a3[2];
  *(v10 + 80) = v12;
  v13 = a3[5];
  *(v10 + 96) = a3[4];
  *(v10 + 112) = v13;
  v14 = a3[1];
  *(v10 + 32) = *a3;
  *(v10 + 48) = v14;
  return v10;
}

uint64_t FormatPuzzle.init(identifier:overrides:selectors:properties:)(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  swift_beginAccess();
  *(v5 + 176) = a4;
  swift_beginAccess();
  *(v5 + 184) = a5;
  swift_beginAccess();
  v9 = a3[7];
  *(v5 + 128) = a3[6];
  *(v5 + 144) = v9;
  *(v5 + 160) = a3[8];
  v10 = a3[3];
  *(v5 + 64) = a3[2];
  *(v5 + 80) = v10;
  v11 = a3[5];
  *(v5 + 96) = a3[4];
  *(v5 + 112) = v11;
  v12 = a3[1];
  *(v5 + 32) = *a3;
  *(v5 + 48) = v12;
  return v5;
}

uint64_t FormatPuzzle.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FormatPuzzle.init(from:)(a1);
  return v2;
}

int8x16_t *FormatPuzzle.init(from:)(void *a1)
{
  v3 = v1;
  v38 = v3->i64[0];
  sub_1D5D2D628(0, &qword_1EDF19C70, sub_1D5E192B0, &type metadata for FormatPuzzle.CodingKeys, MEMORY[0x1E69E6F48]);
  v37 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v29.i8[-v8];
  v10 = a1[3];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1D5E192B0();
  sub_1D7264B0C();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v11 = v6;
    v46.i8[0] = 0;
    v3[1].i64[0] = sub_1D72642BC();
    v3[1].i64[1] = v12;
    v45 = 1;
    sub_1D683FB98();
    sub_1D726427C();
    v13 = v54;
    v14 = v55;
    v43 = v54;
    v44 = v55;
    v35 = v46;
    v36 = v47;
    v42[0] = v46;
    v42[1] = v47;
    v33 = v48;
    v34 = v49;
    v42[2] = v48;
    v42[3] = v49;
    v30 = v50;
    v31 = v51;
    v42[4] = v50;
    v42[5] = v51;
    v29 = v53;
    v32 = v52;
    v42[6] = v52;
    v42[7] = v53;
    enum_tag_for_layout_string_8NewsFeed0B5IssueV9OverridesVSg_0 = get_enum_tag_for_layout_string_8NewsFeed0B5IssueV9OverridesVSg_0(v42);
    v16 = vdup_n_s32(enum_tag_for_layout_string_8NewsFeed0B5IssueV9OverridesVSg_0 == 1);
    v17.i64[0] = v16.u32[0];
    v17.i64[1] = v16.u32[1];
    v18 = vcgezq_s64(vshlq_n_s64(v17, 0x3FuLL));
    v19 = vandq_s8(v32, v18);
    if (enum_tag_for_layout_string_8NewsFeed0B5IssueV9OverridesVSg_0 == 1)
    {
      v14 = 0;
    }

    v20 = vandq_s8(v29, v18);
    if (enum_tag_for_layout_string_8NewsFeed0B5IssueV9OverridesVSg_0 == 1)
    {
      v13 = 0;
    }

    v29 = v20;
    v30 = vandq_s8(v30, v18);
    v31 = vandq_s8(v31, v18);
    v32 = v19;
    v33 = vandq_s8(v33, v18);
    v34 = vandq_s8(v34, v18);
    v35 = vandq_s8(v35, v18);
    v36 = vandq_s8(v36, v18);
    swift_beginAccess();
    v21 = v36;
    v3[2] = v35;
    v3[3] = v21;
    v22 = v34;
    v3[4] = v33;
    v3[5] = v22;
    v23 = v31;
    v3[6] = v30;
    v3[7] = v23;
    v24 = v29;
    v3[8] = v32;
    v3[9] = v24;
    v3[10].i64[0] = v13;
    v3[10].i64[1] = v14;
    v25 = v37;
    sub_1D5B81B04();
    LOBYTE(v39) = 2;
    sub_1D5C4EA9C();
    sub_1D726427C();
    if (v41)
    {
      v26 = v41;
    }

    else
    {
      v26 = MEMORY[0x1E69E7CD0];
    }

    swift_beginAccess();
    v3[11].i64[0] = v26;
    sub_1D5E4C584();
    v40 = 3;
    sub_1D69E3D00(&qword_1EDF3C910, sub_1D5B59CD8);
    sub_1D726427C();
    if (v39)
    {
      v28 = v39;
    }

    else
    {
      v28 = MEMORY[0x1E69E7CC0];
    }

    (*(v11 + 8))(v9, v25);
    swift_beginAccess();
    v3[11].i64[1] = v28;
  }

  __swift_destroy_boxed_opaque_existential_1(v56);
  return v3;
}

uint64_t FormatPuzzle.Overrides.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatPuzzle.Overrides.subtitle.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatPuzzle.Overrides.description.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FormatPuzzle.Overrides.author.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t FormatPuzzle.Overrides.teaserClue.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t FormatPuzzle.Overrides.teaserAnswer.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t FormatPuzzle.Overrides.teaserInfo.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t FormatPuzzle.Overrides.teaserDirection.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t FormatPuzzle.Overrides.teaserNumber.getter()
{
  v1 = *(v0 + 128);

  return v1;
}

id sub_1D6A3DF8C()
{
  v1 = v0[3];
  v2 = v0[5];
  v3 = v0[7];
  v4 = v0[9];
  v5 = v0[11];
  v6 = v0[13];
  v16 = v0[15];
  v17 = v0[17];
  if (v0[1])
  {
    v18 = sub_1D726203C();
    if (v1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = 0;
    if (v1)
    {
LABEL_3:
      v7 = sub_1D726203C();
      if (v2)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  v7 = 0;
  if (v2)
  {
LABEL_4:
    v8 = sub_1D726203C();
    if (v3)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v8 = 0;
  if (v3)
  {
LABEL_5:
    v9 = sub_1D726203C();
    if (v4)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v9 = 0;
  if (v4)
  {
LABEL_6:
    v10 = sub_1D726203C();
    if (v5)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v10 = 0;
  if (v5)
  {
LABEL_7:
    v11 = sub_1D726203C();
    if (!v6)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  v11 = 0;
  if (v6)
  {
LABEL_8:
    v6 = sub_1D726203C();
  }

LABEL_9:
  if (!v16)
  {
    v12 = 0;
    if (v17)
    {
      goto LABEL_11;
    }

LABEL_20:
    v13 = 0;
    goto LABEL_21;
  }

  v12 = sub_1D726203C();
  if (!v17)
  {
    goto LABEL_20;
  }

LABEL_11:
  v13 = sub_1D726203C();
LABEL_21:
  v14 = [objc_allocWithZone(MEMORY[0x1E69B5518]) initWithTitle:v18 subtitle:v7 description:v8 author:v9 teaserClue:v10 teaserAnswer:v11 teaserInfo:v6 teaserDirection:v12 teaserNumber:v13];

  return v14;
}

uint64_t sub_1D6A3E164@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 title];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1D726207C();
    v51 = v7;
    v52 = v6;
  }

  else
  {
    v51 = 0;
    v52 = 0;
  }

  v8 = [a1 subtitle];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1D726207C();
    v49 = v11;
    v50 = v10;
  }

  else
  {
    v49 = 0;
    v50 = 0;
  }

  v12 = [a1 description];
  v13 = sub_1D726207C();
  v47 = v14;
  v48 = v13;

  v15 = [a1 authors];
  if (v15)
  {
    v16 = v15;
    v17 = sub_1D726267C();

    if (v17[2])
    {
      v45 = v17[5];
      v46 = v17[4];

      goto LABEL_12;
    }
  }

  v45 = 0;
  v46 = 0;
LABEL_12:
  v18 = [a1 teaserClue];
  if (v18)
  {
    v19 = v18;
    v20 = sub_1D726207C();
    v43 = v21;
    v44 = v20;
  }

  else
  {
    v43 = 0;
    v44 = 0;
  }

  v22 = [a1 teaserAnswer];
  if (v22)
  {
    v23 = v22;
    v42 = sub_1D726207C();
    v25 = v24;
  }

  else
  {
    v42 = 0;
    v25 = 0;
  }

  v26 = [a1 teaserInfo];
  if (v26)
  {
    v27 = v26;
    v28 = sub_1D726207C();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  v31 = [a1 teaserDirection];
  if (v31)
  {
    v32 = v31;
    v33 = sub_1D726207C();
    v35 = v34;
  }

  else
  {
    v33 = 0;
    v35 = 0;
  }

  v36 = [a1 teaserNumber];
  if (v36)
  {
    v37 = v36;
    v38 = sub_1D726207C();
    v40 = v39;

    result = swift_unknownObjectRelease();
  }

  else
  {
    result = swift_unknownObjectRelease();
    v38 = 0;
    v40 = 0;
  }

  *a2 = v52;
  a2[1] = v51;
  a2[2] = v50;
  a2[3] = v49;
  a2[4] = v48;
  a2[5] = v47;
  a2[6] = v46;
  a2[7] = v45;
  a2[8] = v44;
  a2[9] = v43;
  a2[10] = v42;
  a2[11] = v25;
  a2[12] = v28;
  a2[13] = v30;
  a2[14] = v33;
  a2[15] = v35;
  a2[16] = v38;
  a2[17] = v40;
  return result;
}

uint64_t sub_1D6A3E40C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x656C746974;
    v6 = 0x7470697263736564;
    if (a1 != 2)
    {
      v6 = 0x726F68747561;
    }

    if (a1)
    {
      v5 = 0x656C746974627573;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6E49726573616574;
    v2 = 0x6944726573616574;
    if (a1 != 7)
    {
      v2 = 0x754E726573616574;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6C43726573616574;
    if (a1 != 4)
    {
      v3 = 0x6E41726573616574;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D6A3E558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6A40034(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6A3E580(uint64_t a1)
{
  v2 = sub_1D6A3FA60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6A3E5BC(uint64_t a1)
{
  v2 = sub_1D6A3FA60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatPuzzle.Overrides.encode(to:)(void *a1)
{
  sub_1D5D2D628(0, &qword_1EDF02820, sub_1D6A3FA60, &type metadata for FormatPuzzle.Overrides.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v19 - v7;
  v9 = v1[2];
  v19[14] = v1[3];
  v19[15] = v9;
  v10 = v1[4];
  v19[12] = v1[5];
  v19[13] = v10;
  v11 = v1[6];
  v19[10] = v1[7];
  v19[11] = v11;
  v12 = v1[8];
  v19[8] = v1[9];
  v19[9] = v12;
  v13 = v1[11];
  v19[6] = v1[10];
  v19[7] = v13;
  v14 = v1[13];
  v19[4] = v1[12];
  v19[5] = v14;
  v15 = v1[15];
  v19[2] = v1[14];
  v19[3] = v15;
  v16 = v1[17];
  v19[0] = v1[16];
  v19[1] = v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6A3FA60();
  sub_1D7264B5C();
  v28 = 0;
  v17 = v19[16];
  sub_1D726437C();
  if (!v17)
  {
    v27 = 1;
    sub_1D726437C();
    v26 = 2;
    sub_1D726437C();
    v25 = 3;
    sub_1D726437C();
    v24 = 4;
    sub_1D726437C();
    v23 = 5;
    sub_1D726437C();
    v22 = 6;
    sub_1D726437C();
    v21 = 7;
    sub_1D726437C();
    v20 = 8;
    sub_1D726437C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t FormatPuzzle.Overrides.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v57 = a2;
  sub_1D5D2D628(0, &qword_1EDF03B28, sub_1D6A3FA60, &type metadata for FormatPuzzle.Overrides.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v39 - v8;
  v10 = a1[3];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1D6A3FA60();
  v58 = v9;
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v59);
  }

  LOBYTE(v69[0]) = 0;
  v11 = v57;
  v12 = sub_1D726422C();
  v14 = v13;
  LOBYTE(v69[0]) = 1;
  v15 = sub_1D726422C();
  v56 = v16;
  v53 = v15;
  LOBYTE(v69[0]) = 2;
  v52 = sub_1D726422C();
  v54 = v17;
  LOBYTE(v69[0]) = 3;
  v51 = sub_1D726422C();
  v55 = v18;
  LOBYTE(v69[0]) = 4;
  v47 = sub_1D726422C();
  v49 = v19;
  LOBYTE(v69[0]) = 5;
  v20 = sub_1D726422C();
  v48 = v21;
  v43 = v20;
  LOBYTE(v69[0]) = 6;
  v46 = 0;
  v22 = sub_1D726422C();
  v45 = v23;
  v24 = v56;
  v42 = v22;
  LOBYTE(v69[0]) = 7;
  v25 = sub_1D726422C();
  v44 = v26;
  v40 = v25;
  v70 = 8;
  v41 = sub_1D726422C();
  v50 = 0;
  v28 = v27;
  (*(v6 + 8))(v58, v5);
  *&v60 = v12;
  *(&v60 + 1) = v14;
  *&v61 = v53;
  *(&v61 + 1) = v24;
  v29 = v24;
  *&v62 = v52;
  *(&v62 + 1) = v54;
  *&v63 = v51;
  *(&v63 + 1) = v55;
  v30 = v49;
  *&v64 = v47;
  *(&v64 + 1) = v49;
  v31 = v42;
  *&v65 = v43;
  *(&v65 + 1) = v48;
  v32 = v45;
  *&v66 = v42;
  *(&v66 + 1) = v45;
  *&v67 = v40;
  *(&v67 + 1) = v44;
  *&v68 = v41;
  *(&v68 + 1) = v28;
  v33 = v61;
  *v11 = v60;
  v11[1] = v33;
  v34 = v68;
  v35 = v66;
  v11[7] = v67;
  v11[8] = v34;
  v36 = v64;
  v11[5] = v65;
  v11[6] = v35;
  v37 = v62;
  v11[3] = v63;
  v11[4] = v36;
  v11[2] = v37;
  sub_1D5E9E6F8(&v60, v69);
  __swift_destroy_boxed_opaque_existential_1(v59);
  v69[0] = v12;
  v69[1] = v14;
  v69[2] = v53;
  v69[3] = v29;
  v69[4] = v52;
  v69[5] = v54;
  v69[6] = v51;
  v69[7] = v55;
  v69[8] = v47;
  v69[9] = v30;
  v69[10] = v43;
  v69[11] = v48;
  v69[12] = v31;
  v69[13] = v32;
  v69[14] = v40;
  v69[15] = v44;
  v69[16] = v41;
  v69[17] = v28;
  return sub_1D6702788(v69);
}

uint64_t sub_1D6A3EF00(uint64_t a1)
{
  v2 = sub_1D5E192B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6A3EF3C(uint64_t a1)
{
  v2 = sub_1D5E192B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

_OWORD *FormatPuzzle.deinit()
{

  v1 = v0[9];
  v6[6] = v0[8];
  v6[7] = v1;
  v6[8] = v0[10];
  v2 = v0[5];
  v6[2] = v0[4];
  v6[3] = v2;
  v3 = v0[7];
  v6[4] = v0[6];
  v6[5] = v3;
  v4 = v0[3];
  v6[0] = v0[2];
  v6[1] = v4;
  sub_1D6A3F9CC(v6);

  return v0;
}

uint64_t FormatPuzzle.__deallocating_deinit()
{

  v1 = v0[9];
  v6[6] = v0[8];
  v6[7] = v1;
  v6[8] = v0[10];
  v2 = v0[5];
  v6[2] = v0[4];
  v6[3] = v2;
  v3 = v0[7];
  v6[4] = v0[6];
  v6[5] = v3;
  v4 = v0[3];
  v6[0] = v0[2];
  v6[1] = v4;
  sub_1D6A3F9CC(v6);

  return swift_deallocClassInstance();
}

uint64_t FormatPuzzle.encode(to:)(void *a1)
{
  v2 = v1;
  sub_1D5D2D628(0, &qword_1EDF02828, sub_1D5E192B0, &type metadata for FormatPuzzle.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v22 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E192B0();
  sub_1D7264B5C();
  v34 = 0;
  v10 = v22[0];
  sub_1D72643FC();
  if (v10)
  {
    return (*(v6 + 8))(v9, v5);
  }

  swift_beginAccess();
  v12 = *(v2 + 112);
  v13 = *(v2 + 144);
  v29 = *(v2 + 128);
  v30 = v13;
  v14 = *(v2 + 144);
  v31 = *(v2 + 160);
  v15 = *(v2 + 48);
  v16 = *(v2 + 80);
  v25 = *(v2 + 64);
  v26 = v16;
  v17 = *(v2 + 80);
  v18 = *(v2 + 112);
  v27 = *(v2 + 96);
  v28 = v18;
  v19 = *(v2 + 48);
  v24[0] = *(v2 + 32);
  v24[1] = v19;
  v32[6] = v29;
  v32[7] = v14;
  v32[8] = *(v2 + 160);
  v32[2] = v25;
  v32[3] = v17;
  v32[4] = v27;
  v32[5] = v12;
  v32[0] = v24[0];
  v32[1] = v15;
  sub_1D6A3FAB4(v24, &v23);
  sub_1D6A3D228(v32);
  sub_1D6A3F9CC(v24);
  swift_beginAccess();
  if (*(*(v2 + 176) + 16))
  {

    sub_1D5E08F34(v20, v9, 2);
  }

  swift_beginAccess();
  v21 = *(v2 + 184);
  if (*(v21 + 16))
  {
    v33 = 3;
    v22[1] = v21;
    sub_1D5D2D690(&qword_1EDF02830, &qword_1EDF02828, sub_1D5E192B0, &type metadata for FormatPuzzle.CodingKeys);
    sub_1D5E4C584();
    sub_1D69E3D00(&qword_1EDF05030, sub_1D5B59D2C);

    sub_1D72647EC();
  }

  else
  {
  }

  (*(v6 + 8))(v9, v5);
}

int8x16_t *sub_1D6A3F3F4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = FormatPuzzle.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t _s8NewsFeed12FormatPuzzleC9OverridesV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v5 = a1[3];
  v4 = a1[4];
  v7 = a1[5];
  v6 = a1[6];
  v9 = a1[7];
  v8 = a1[8];
  v10 = a1[9];
  v11 = a1[10];
  v13 = a1[11];
  v12 = a1[12];
  v14 = a1[13];
  v126 = a1[14];
  v130 = a1[15];
  v15 = a1[16];
  v129 = a1[17];
  v16 = a2[1];
  v132 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v20 = a2[5];
  v19 = a2[6];
  v22 = a2[7];
  v21 = a2[8];
  v24 = a2[9];
  v23 = a2[10];
  v26 = a2[11];
  v25 = a2[12];
  v27 = a2[13];
  v127 = a2[14];
  v131 = a2[15];
  v125 = a2[16];
  v128 = a2[17];
  if (v3)
  {
    if (!v16)
    {
      return 0;
    }

    v124 = a1[2];
    if (*a1 != *a2 || v3 != v16)
    {
      v120 = a2[10];
      v104 = a2[7];
      v91 = a1[16];
      v92 = a2[12];
      v93 = a2[4];
      v95 = a2[5];
      v28 = a1[12];
      v99 = a1[5];
      v101 = a2[6];
      v29 = a1[13];
      v30 = a2[13];
      v31 = a1[10];
      v97 = a1[4];
      v32 = a1[11];
      v109 = a1[6];
      v112 = a2[8];
      v33 = a2[11];
      v34 = a1[8];
      v35 = a1[9];
      v116 = a2[9];
      v36 = sub_1D72646CC();
      v24 = v116;
      v23 = v120;
      v10 = v35;
      v8 = v34;
      v26 = v33;
      v6 = v109;
      v21 = v112;
      v13 = v32;
      v20 = v95;
      v4 = v97;
      v11 = v31;
      v27 = v30;
      v19 = v101;
      v22 = v104;
      v14 = v29;
      v7 = v99;
      v12 = v28;
      v25 = v92;
      v18 = v93;
      v15 = v91;
      if ((v36 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v124 = a1[2];
    if (v16)
    {
      return 0;
    }
  }

  if (v5)
  {
    if (!v17)
    {
      return 0;
    }

    if (v124 != v132 || v5 != v17)
    {
      v121 = v23;
      v110 = v6;
      v113 = v21;
      v37 = v15;
      v38 = v12;
      v96 = v20;
      v98 = v4;
      v39 = v14;
      v105 = v22;
      v107 = v9;
      v40 = v27;
      v41 = v25;
      v100 = v7;
      v102 = v19;
      v42 = v11;
      v43 = v13;
      v44 = v26;
      v94 = v18;
      v45 = v8;
      v46 = v10;
      v117 = v24;
      v47 = sub_1D72646CC();
      v24 = v117;
      v23 = v121;
      v10 = v46;
      v8 = v45;
      v26 = v44;
      v13 = v43;
      v4 = v98;
      v7 = v100;
      v11 = v42;
      v19 = v102;
      v22 = v105;
      v25 = v41;
      v27 = v40;
      v9 = v107;
      v6 = v110;
      v14 = v39;
      v18 = v94;
      v20 = v96;
      v12 = v38;
      v15 = v37;
      v21 = v113;
      if ((v47 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  if (v7)
  {
    if (!v20)
    {
      return 0;
    }

    if (v4 != v18 || v7 != v20)
    {
      v118 = v24;
      v122 = v23;
      v111 = v6;
      v114 = v21;
      v48 = v15;
      v49 = v12;
      v50 = v14;
      v106 = v22;
      v108 = v9;
      v51 = v27;
      v52 = v25;
      v103 = v19;
      v53 = v11;
      v54 = v13;
      v55 = v26;
      v56 = v8;
      v57 = v10;
      v58 = sub_1D72646CC();
      v24 = v118;
      v23 = v122;
      v10 = v57;
      v8 = v56;
      v26 = v55;
      v13 = v54;
      v11 = v53;
      v19 = v103;
      v22 = v106;
      v25 = v52;
      v27 = v51;
      v9 = v108;
      v6 = v111;
      v14 = v50;
      v12 = v49;
      v15 = v48;
      v21 = v114;
      if ((v58 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v20)
  {
    return 0;
  }

  if (v9)
  {
    if (!v22)
    {
      return 0;
    }

    if (v6 != v19 || v9 != v22)
    {
      v119 = v24;
      v123 = v23;
      v115 = v21;
      v59 = v15;
      v60 = v12;
      v61 = v14;
      v62 = v27;
      v63 = v25;
      v64 = v11;
      v65 = v13;
      v66 = v26;
      v67 = v8;
      v68 = v10;
      v69 = sub_1D72646CC();
      v24 = v119;
      v23 = v123;
      v10 = v68;
      v8 = v67;
      v26 = v66;
      v13 = v65;
      v11 = v64;
      v25 = v63;
      v27 = v62;
      v14 = v61;
      v12 = v60;
      v15 = v59;
      v21 = v115;
      if ((v69 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v22)
  {
    return 0;
  }

  if (v10)
  {
    if (!v24)
    {
      return 0;
    }

    if (v8 != v21 || v10 != v24)
    {
      v70 = v23;
      v71 = v15;
      v72 = v12;
      v73 = v14;
      v74 = v27;
      v75 = v25;
      v76 = v11;
      v77 = v13;
      v78 = v26;
      v79 = sub_1D72646CC();
      v23 = v70;
      v26 = v78;
      v13 = v77;
      v11 = v76;
      v25 = v75;
      v27 = v74;
      v14 = v73;
      v12 = v72;
      v15 = v71;
      if ((v79 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v24)
  {
    return 0;
  }

  if (v13)
  {
    if (!v26)
    {
      return 0;
    }

    if (v11 != v23 || v13 != v26)
    {
      v80 = v15;
      v81 = v12;
      v82 = v14;
      v83 = v27;
      v84 = v25;
      v85 = sub_1D72646CC();
      v25 = v84;
      v27 = v83;
      v14 = v82;
      v12 = v81;
      v15 = v80;
      if ((v85 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v26)
  {
    return 0;
  }

  if (v14)
  {
    if (!v27)
    {
      return 0;
    }

    if (v12 != v25 || v14 != v27)
    {
      v86 = v15;
      v87 = sub_1D72646CC();
      v15 = v86;
      if ((v87 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v27)
  {
    return 0;
  }

  if (v130)
  {
    if (!v131)
    {
      return 0;
    }

    if (v126 != v127 || v130 != v131)
    {
      v88 = v15;
      v89 = sub_1D72646CC();
      v15 = v88;
      if ((v89 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v131)
  {
    return 0;
  }

  if (v129)
  {
    if (v128 && (v15 == v125 && v129 == v128 || (sub_1D72646CC() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v128)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1D6A3F9CC(uint64_t a1)
{
  sub_1D5D2D628(0, &unk_1EDF0FC40, sub_1D683FB44, &type metadata for FormatCodingPuzzleOverridesStrategy, type metadata accessor for FormatCodingDefault);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D6A3FA60()
{
  result = qword_1EDF123D8;
  if (!qword_1EDF123D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF123D8);
  }

  return result;
}

uint64_t sub_1D6A3FAB4(uint64_t a1, uint64_t a2)
{
  sub_1D5D2D628(0, &unk_1EDF0FC40, sub_1D683FB44, &type metadata for FormatCodingPuzzleOverridesStrategy, type metadata accessor for FormatCodingDefault);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D6A3FB50(void *a1)
{
  a1[1] = sub_1D683FB98();
  a1[2] = sub_1D683FBEC();
  result = sub_1D6A3FB88();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6A3FB88()
{
  result = qword_1EC890430;
  if (!qword_1EC890430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890430);
  }

  return result;
}

uint64_t sub_1D6A3FBDC(void *a1)
{
  a1[1] = sub_1D6A3FC68(&qword_1EDF337C0);
  a1[2] = sub_1D6A3FC68(&unk_1EDF123A0);
  result = sub_1D6A3FC68(&qword_1EC890438);
  a1[3] = result;
  return result;
}

uint64_t sub_1D6A3FC68(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatPuzzle();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D6A3FD20(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 144))
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

uint64_t sub_1D6A3FD7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 144) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 144) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1D6A3FE28()
{
  result = qword_1EC890440;
  if (!qword_1EC890440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890440);
  }

  return result;
}

unint64_t sub_1D6A3FE80()
{
  result = qword_1EC890448;
  if (!qword_1EC890448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890448);
  }

  return result;
}

unint64_t sub_1D6A3FED8()
{
  result = qword_1EDF123C8;
  if (!qword_1EDF123C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF123C8);
  }

  return result;
}

unint64_t sub_1D6A3FF30()
{
  result = qword_1EDF123D0;
  if (!qword_1EDF123D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF123D0);
  }

  return result;
}

unint64_t sub_1D6A3FF88()
{
  result = qword_1EDF337D0;
  if (!qword_1EDF337D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF337D0);
  }

  return result;
}

unint64_t sub_1D6A3FFE0()
{
  result = qword_1EDF337D8;
  if (!qword_1EDF337D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF337D8);
  }

  return result;
}

uint64_t sub_1D6A40034(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F68747561 && a2 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C43726573616574 && a2 == 0xEA00000000006575 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E41726573616574 && a2 == 0xEC00000072657773 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E49726573616574 && a2 == 0xEA00000000006F66 || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6944726573616574 && a2 == 0xEF6E6F6974636572 || (sub_1D72646CC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x754E726573616574 && a2 == 0xEC0000007265626DLL)
  {

    return 8;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

unint64_t sub_1D6A4032C()
{
  result = qword_1EDF218C8;
  if (!qword_1EDF218C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF218C8);
  }

  return result;
}

unint64_t sub_1D6A40380()
{
  result = qword_1EDF2A8F0[0];
  if (!qword_1EDF2A8F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF2A8F0);
  }

  return result;
}

unint64_t sub_1D6A403D4()
{
  result = qword_1EDF20708;
  if (!qword_1EDF20708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF20708);
  }

  return result;
}

unint64_t sub_1D6A40428()
{
  result = qword_1EDF20FE8[0];
  if (!qword_1EDF20FE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF20FE8);
  }

  return result;
}

unint64_t sub_1D6A4047C()
{
  result = qword_1EDF27068;
  if (!qword_1EDF27068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27068);
  }

  return result;
}

unint64_t sub_1D6A404D0()
{
  result = qword_1EDF2AFE0;
  if (!qword_1EDF2AFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2AFE0);
  }

  return result;
}

unint64_t sub_1D6A40524()
{
  result = qword_1EDF29850;
  if (!qword_1EDF29850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29850);
  }

  return result;
}

uint64_t FormatSplitView.model.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8NewsFeed15FormatSplitView_model;
  swift_beginAccess();
  return sub_1D6A405D0(v1 + v3, a1);
}

uint64_t sub_1D6A405D0(uint64_t a1, uint64_t a2)
{
  sub_1D6A40634();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D6A40634()
{
  if (!qword_1EDF3B6D0)
  {
    sub_1D725D25C();
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3B6D0);
    }
  }
}

uint64_t sub_1D6A4068C(uint64_t a1, uint64_t *a2)
{
  sub_1D6A40634();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v15 - v10;
  sub_1D6A405D0(a1, &v15 - v10);
  v12 = *a2;
  v13 = OBJC_IVAR____TtC8NewsFeed15FormatSplitView_model;
  swift_beginAccess();
  sub_1D6A4086C(v11, v12 + v13);
  swift_endAccess();
  sub_1D6A405D0(v12 + v13, v7);
  sub_1D725FC4C();
  return sub_1D6A408D0(v11);
}

uint64_t FormatSplitView.model.setter(uint64_t a1)
{
  sub_1D6A40634();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC8NewsFeed15FormatSplitView_model;
  swift_beginAccess();
  sub_1D6A4086C(a1, v1 + v7);
  swift_endAccess();
  sub_1D6A405D0(v1 + v7, v6);
  sub_1D725FC4C();
  return sub_1D6A408D0(a1);
}

uint64_t sub_1D6A4086C(uint64_t a1, uint64_t a2)
{
  sub_1D6A40634();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6A408D0(uint64_t a1)
{
  sub_1D6A40634();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*FormatSplitView.model.modify(uint64_t *a1))(void **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  sub_1D6A40634();
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC8NewsFeed15FormatSplitView_model;
  *(v5 + 32) = v8;
  *(v5 + 40) = v9;
  swift_beginAccess();
  return sub_1D6A409EC;
}

void sub_1D6A409EC(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  v4 = v3[4];
  if ((a2 & 1) == 0)
  {
    sub_1D6A405D0(v3[3] + v3[5], v3[4]);
    sub_1D725FC4C();
  }

  free(v4);

  free(v3);
}

id FormatSplitView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *FormatSplitView.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC8NewsFeed15FormatSplitView_splitView;
  *&v4[v10] = [objc_allocWithZone(sub_1D725FC5C()) initWithFrame_];
  v11 = OBJC_IVAR____TtC8NewsFeed15FormatSplitView_model;
  v12 = sub_1D725D25C();
  (*(*(v12 - 8) + 56))(&v4[v11], 1, 1, v12);
  v17.receiver = v4;
  v17.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = *&v13[OBJC_IVAR____TtC8NewsFeed15FormatSplitView_splitView];
  v15 = v13;
  [v15 addSubview_];
  [v15 setClipsToBounds_];

  return v15;
}

Swift::Void __swiftcall FormatSplitView.layoutSubviews()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC8NewsFeed15FormatSplitView_splitView];
  [v0 bounds];
  [v1 setFrame_];
}

id FormatSplitView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for FormatSplitView()
{
  result = qword_1EDF31118;
  if (!qword_1EDF31118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6A4106C()
{
  sub_1D6A4116C(&qword_1EC890460);

  JUMPOUT(0x1DA6F6FC0);
}

void sub_1D6A410CC()
{
  sub_1D6A40634();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1D6A4116C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatSplitView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t UIUserInterfaceIdiom.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return 30324;
    }

    if (a1 != 3)
    {
      if (a1 == 5)
      {
        return 6513005;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x79616C50726163;
  }

  else
  {
    if (a1 == -1)
    {
      return 0x6669636570736E75;
    }

    if (a1)
    {
      if (a1 == 1)
      {
        return 6578544;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x656E6F6870;
  }
}

uint64_t sub_1D6A4129C()
{
  v1 = *v0;
  if (*v0 > 1)
  {
    if (v1 == 2)
    {
      return 30324;
    }

    if (v1 != 3)
    {
      if (v1 == 5)
      {
        return 6513005;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x79616C50726163;
  }

  else
  {
    if (v1 == -1)
    {
      return 0x6669636570736E75;
    }

    if (v1)
    {
      if (v1 == 1)
      {
        return 6578544;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x656E6F6870;
  }
}

unint64_t sub_1D6A413F4()
{
  result = qword_1EDF04350;
  if (!qword_1EDF04350)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDF04350);
  }

  return result;
}

uint64_t sub_1D6A41440()
{
  v42 = sub_1D725DD0C();
  v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v0);
  v38 = &v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1D725CA7C();
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v2);
  v37 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D725D21C();
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D725D22C();
  v34 = *(v8 - 8);
  v35 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v31 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D725CA8C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1D725CA9C();
  v16 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v17);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = "ardViewLayoutAttributesFactory";
  sub_1D6A41BD0(0, &qword_1EDF3B800, MEMORY[0x1E69D75A8]);
  v20 = *(v12 + 104);
  v20(v15, *MEMORY[0x1E69D7598], v11);
  sub_1D725DF4C();
  v21 = *(v12 + 8);
  v21(v15, v11);
  v20(v15, *MEMORY[0x1E69D75A0], v11);
  sub_1D725DF4C();
  v21(v15, v11);
  (*(v16 + 104))(v19, *MEMORY[0x1E69D75B0], v30);
  sub_1D6A41BD0(0, &qword_1EDF3B6D8, MEMORY[0x1E69D7820]);
  v23 = v32;
  v22 = v33;
  v24 = *(v32 + 104);
  v24(v7, *MEMORY[0x1E69D7810], v33);
  v25 = v31;
  sub_1D725DF3C();
  v26 = *(v23 + 8);
  v26(v7, v22);
  v24(v7, *MEMORY[0x1E69D7818], v22);
  sub_1D725DF3C();
  v26(v7, v22);
  (*(v34 + 104))(v25, *MEMORY[0x1E69D7828], v35);
  sub_1D6A41C3C();
  sub_1D725CA6C();
  *(swift_allocObject() + 16) = xmmword_1D7273AE0;
  sub_1D5E42B34();
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1D7298B00;
  *(v27 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:1.0 alpha:0.0];
  *(v27 + 40) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:1.0 alpha:0.67];
  *(v27 + 48) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:1.0 alpha:0.67];
  *(v27 + 56) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:1.0 alpha:0.0];
  (*(v40 + 104))(v38, *MEMORY[0x1E69D7B60], v42);
  v28 = v37;
  sub_1D725DCCC();
  (*(v39 + 104))(v28, *MEMORY[0x1E69D7590], v41);
  v43 = 0;
  sub_1D725CA5C();
  sub_1D725CDAC();
  swift_allocObject();
  result = sub_1D725CD9C();
  qword_1EDF172F8 = result;
  return result;
}

uint64_t static ShineOptions.titleShine.getter()
{
  if (qword_1EDF172F0 != -1)
  {
    swift_once();
  }
}

void sub_1D6A41BD0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1D6A41C3C()
{
  if (!qword_1EDF19B10)
  {
    sub_1D725CA6C();
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19B10);
    }
  }
}

uint64_t sub_1D6A41C94(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6574614474726F73;
  }

  else
  {
    v3 = 0x746163696C627570;
  }

  if (v2)
  {
    v4 = 0xEF657461446E6F69;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x6574614474726F73;
  }

  else
  {
    v5 = 0x746163696C627570;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xEF657461446E6F69;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D6A41D48()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6A41DD8()
{
  sub_1D72621EC();
}

uint64_t sub_1D6A41E54()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6A41EE0@<X0>(char *a1@<X8>)
{
  v2 = sub_1D72641CC();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1D6A41F40(uint64_t *a1@<X8>)
{
  v2 = 0x746163696C627570;
  if (*v1)
  {
    v2 = 0x6574614474726F73;
  }

  v3 = 0xEF657461446E6F69;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FormatIssueBinding.DateTime.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D6A420DC()
{
  result = qword_1EC890468;
  if (!qword_1EC890468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890468);
  }

  return result;
}

unint64_t sub_1D6A42130(uint64_t a1)
{
  result = sub_1D6A42158();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6A42158()
{
  result = qword_1EC890470;
  if (!qword_1EC890470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890470);
  }

  return result;
}

unint64_t sub_1D6A421AC(void *a1)
{
  a1[1] = sub_1D6685E54();
  a1[2] = sub_1D66FE080();
  result = sub_1D6A420DC();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6A42238()
{
  result = qword_1EC890478;
  if (!qword_1EC890478)
  {
    sub_1D6A42290();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890478);
  }

  return result;
}

void sub_1D6A42290()
{
  if (!qword_1EC890480)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC890480);
    }
  }
}

unint64_t sub_1D6A422E4()
{
  result = qword_1EC890488;
  if (!qword_1EC890488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890488);
  }

  return result;
}

unint64_t sub_1D6A42338()
{
  result = qword_1EC890490;
  if (!qword_1EC890490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890490);
  }

  return result;
}

size_t sub_1D6A4238C@<X0>(void **a1@<X1>, _OWORD *a2@<X8>)
{
  v82 = a2;
  sub_1D5B7B268(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v92 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v89 = &v82 - v8;
  v9 = sub_1D725891C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v88 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for FormatInspectionItem(0);
  v13 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98, v14);
  v16 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v87 = &v82 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v82 - v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v86 = &v82 - v26;
  v27 = *a1;
  v91 = 0x80000001D73E12C0;
  v93 = (v10 + 8);
  v85 = (v10 + 56);
  v84 = (v10 + 48);
  sub_1D5B7B268(0, &qword_1EC896750, type metadata accessor for FormatInspectionItem, MEMORY[0x1E69E6F90]);
  v29 = v28;
  v30 = 0;
  v31 = 0;
  v97 = *(v13 + 72);
  v95 = *(v13 + 80);
  v32 = (v95 + 32) & ~v95;
  v33 = MEMORY[0x1E69E7CC0];
  v94 = xmmword_1D7273AE0;
  v90 = xmmword_1D73148E0;
  v96 = v9;
  v83 = v16;
  while (1)
  {
    v99 = v30;
    v34 = *(&unk_1F50F7300 + v31 + 32);
    v35 = swift_allocObject();
    *(v35 + 16) = v94;
    if (v34)
    {
      v36 = [v27 sortDate];
      if (v36)
      {
        v37 = v92;
        v38 = v36;
        sub_1D72588BC();

        v39 = 0;
      }

      else
      {
        v39 = 1;
        v37 = v92;
      }

      (*v85)(v37, v39, 1, v9);
      v52 = v89;
      sub_1D5DF42F8(v37, v89);
      if ((*v84)(v52, 1, v9) == 1)
      {
        _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v52);
      }

      else
      {
        v53 = v52;
        v54 = sub_1D72587AC();
        v56 = v55;
        (*v93)(v53, v96);
        if (v56)
        {
          v57 = HIBYTE(v56) & 0xF;
          if ((v56 & 0x2000000000000000) == 0)
          {
            v57 = v54 & 0xFFFFFFFFFFFFLL;
          }

          if (v57)
          {
            *&v100 = v54;
            *(&v100 + 1) = v56;
            *&v101 = 0;
            *(&v101 + 1) = MEMORY[0x1E69E6158];
            v58 = v98;
            v59 = *(v98 + 24);
            sub_1D5EA7510(&v100, &v16[v59]);
            v60 = type metadata accessor for FormatInspectionItem.Value(0);
            swift_storeEnumTagMultiPayload();
            (*(*(v60 - 8) + 56))(&v16[v59], 0, 1, v60);
            *v16 = v90;
            *(v16 + 2) = 0;
            *(v16 + 3) = 0;
            v61 = &v16[*(v58 + 28)];
            *v61 = 0;
            *(v61 + 1) = 0;
            v61[16] = -1;
            sub_1D5EA756C(&v100);
LABEL_23:
            v66 = v87;
            sub_1D613ADAC(v16, v87);
            goto LABEL_24;
          }
        }
      }

      v100 = 0u;
      v101 = 0u;
      v67 = v98;
      v68 = *(v98 + 24);
      v69 = type metadata accessor for FormatInspectionItem.Value(0);
      (*(*(v69 - 8) + 56))(&v16[v68], 1, 1, v69);
      *v16 = v90;
      *(v16 + 2) = 0;
      *(v16 + 3) = 0;
      v70 = &v16[*(v67 + 28)];
      *v70 = 0;
      *(v70 + 1) = 0;
      v70[16] = -1;
      goto LABEL_23;
    }

    v40 = v29;
    v41 = v27;
    v42 = [v27 publicationDate];
    v43 = v88;
    sub_1D72588BC();

    v44 = sub_1D72587AC();
    v46 = v45;
    (*v93)(v43, v9);
    v47 = HIBYTE(v46) & 0xF;
    if ((v46 & 0x2000000000000000) == 0)
    {
      v47 = v44 & 0xFFFFFFFFFFFFLL;
    }

    if (v47)
    {
      *&v100 = v44;
      *(&v100 + 1) = v46;
      *&v101 = 0;
      *(&v101 + 1) = MEMORY[0x1E69E6158];
      v48 = v98;
      v49 = *(v98 + 24);
      sub_1D5EA7510(&v100, &v23[v49]);
      v50 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v50 - 8) + 56))(&v23[v49], 0, 1, v50);
      *v23 = 0xD000000000000010;
      *(v23 + 1) = v91;
      *(v23 + 2) = 0;
      *(v23 + 3) = 0;
      v51 = &v23[*(v48 + 28)];
      *v51 = 0;
      *(v51 + 1) = 0;
      v51[16] = -1;
      sub_1D5EA756C(&v100);
    }

    else
    {

      v100 = 0u;
      v101 = 0u;
      v62 = v98;
      v63 = *(v98 + 24);
      v64 = type metadata accessor for FormatInspectionItem.Value(0);
      (*(*(v64 - 8) + 56))(&v23[v63], 1, 1, v64);
      *v23 = 0xD000000000000010;
      *(v23 + 1) = v91;
      *(v23 + 2) = 0;
      *(v23 + 3) = 0;
      v65 = &v23[*(v62 + 28)];
      *v65 = 0;
      *(v65 + 1) = 0;
      v65[16] = -1;
    }

    v66 = v86;
    sub_1D613ADAC(v23, v86);
    v27 = v41;
    v29 = v40;
    v16 = v83;
LABEL_24:
    result = sub_1D613ADAC(v66, v35 + v32);
    v72 = *(v35 + 16);
    v73 = v33[2];
    v74 = v73 + v72;
    if (__OFADD__(v73, v72))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v74 <= v33[3] >> 1)
    {
      v9 = v96;
      if (!v72)
      {
        goto LABEL_2;
      }
    }

    else
    {
      if (v73 <= v74)
      {
        v75 = v73 + v72;
      }

      else
      {
        v75 = v73;
      }

      result = sub_1D698BAE0(result, v75, 1, v33);
      v33 = result;
      v9 = v96;
      if (!v72)
      {
LABEL_2:

        goto LABEL_3;
      }
    }

    if ((v33[3] >> 1) - v33[2] < v72)
    {
      goto LABEL_38;
    }

    swift_arrayInitWithCopy();

    v76 = v33[2];
    v77 = __OFADD__(v76, v72);
    v78 = v76 + v72;
    if (v77)
    {
      goto LABEL_39;
    }

    v33[2] = v78;
LABEL_3:
    v30 = 1;
    v31 = 1u;
    if (v99)
    {
      v79 = sub_1D5F62998(v33);

      sub_1D6795150(0x6D69542065746144, 0xE900000000000065, 0, 0, v79, &v100);

      v80 = v101;
      v81 = v82;
      *v82 = v100;
      v81[1] = v80;
      *(v81 + 4) = v102;
      return result;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t FeedDateRange.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D725891C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for FeedDateRange()
{
  result = qword_1EDF12B60;
  if (!qword_1EDF12B60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FeedDateRange.init(startDate:endDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1D725891C();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = a3 + *(type metadata accessor for FeedDateRange() + 20);

  return sub_1D5DF42F8(a2, v7);
}

id FeedDateRange.init(dateRange:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5B5B2A0();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D725891C();
  v9 = *(v8 - 8);
  *&v11 = MEMORY[0x1EEE9AC00](v8, v10).n128_u64[0];
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 startDate];
  if (result)
  {
    v15 = result;
    sub_1D72588BC();

    (*(v9 + 32))(a2, v13, v8);
    v16 = [a1 endDate];
    if (v16)
    {
      v17 = v16;
      sub_1D72588BC();

      v18 = 0;
      a1 = v17;
    }

    else
    {
      v18 = 1;
    }

    (*(v9 + 56))(v7, v18, 1, v8);
    v19 = type metadata accessor for FeedDateRange();
    return sub_1D5DF42F8(v7, a2 + *(v19 + 20));
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6A42F60()
{
  if (*v0)
  {
    return 0x65746144646E65;
  }

  else
  {
    return 0x7461447472617473;
  }
}

uint64_t sub_1D6A42FA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000)
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

uint64_t sub_1D6A43084(uint64_t a1)
{
  v2 = sub_1D6A432BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6A430C0(uint64_t a1)
{
  v2 = sub_1D6A432BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeedDateRange.encode(to:)(void *a1)
{
  sub_1D6A436CC(0, &qword_1EDF02868, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6A432BC();
  sub_1D7264B5C();
  v10[15] = 0;
  sub_1D725891C();
  sub_1D5CE4528(&qword_1EDF45B18);
  sub_1D726443C();
  if (!v1)
  {
    type metadata accessor for FeedDateRange();
    v10[14] = 1;
    sub_1D72643BC();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D6A432BC()
{
  result = qword_1EDF12B80;
  if (!qword_1EDF12B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12B80);
  }

  return result;
}

uint64_t FeedDateRange.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  sub_1D5B5B2A0();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1D725891C();
  v30 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v8);
  v31 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6A436CC(0, &qword_1EDF03B58, MEMORY[0x1E69E6F48]);
  v11 = *(v10 - 8);
  v32 = v10;
  v33 = v11;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v25 - v13;
  v15 = type metadata accessor for FeedDateRange();
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6A432BC();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v15;
  v27 = v7;
  v28 = v18;
  v36 = 0;
  sub_1D5CE4528(&qword_1EDF45B08);
  v19 = v31;
  v20 = v32;
  v21 = v34;
  sub_1D726431C();
  (*(v30 + 32))(v28, v19, v21);
  v35 = 1;
  v22 = v27;
  sub_1D726427C();
  (*(v33 + 8))(v14, v20);
  v23 = v28;
  sub_1D5DF42F8(v22, &v28[*(v26 + 20)]);
  sub_1D5B757A8(v23, v29, type metadata accessor for FeedDateRange);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D6A43730(v23);
}

void sub_1D6A436CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6A432BC();
    v7 = a3(a1, &type metadata for FeedDateRange.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D6A43730(uint64_t a1)
{
  v2 = type metadata accessor for FeedDateRange();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void FCDateRange.init(dateRange:)(uint64_t a1)
{
  sub_1D5B5B2A0();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D725881C();
  v7 = type metadata accessor for FeedDateRange();
  sub_1D5B757A8(a1 + *(v7 + 20), v5, sub_1D5B5B2A0);
  v8 = sub_1D725891C();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v5, 1, v8) != 1)
  {
    v10 = sub_1D725881C();
    (*(v9 + 8))(v5, v8);
  }

  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithStartDate:v6 endDate:v10];

  if (v11)
  {
    sub_1D6A43730(a1);
  }

  else
  {
    __break(1u);
  }
}

void sub_1D6A43964()
{
  sub_1D725891C();
  if (v0 <= 0x3F)
  {
    sub_1D5B5B2A0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1D6A439FC()
{
  result = qword_1EC890498;
  if (!qword_1EC890498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890498);
  }

  return result;
}

unint64_t sub_1D6A43A54()
{
  result = qword_1EDF12B70;
  if (!qword_1EDF12B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12B70);
  }

  return result;
}

unint64_t sub_1D6A43AAC()
{
  result = qword_1EDF12B78;
  if (!qword_1EDF12B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12B78);
  }

  return result;
}

NewsFeed::NewslettersCommandState_optional __swiftcall NewslettersCommandState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t NewslettersCommandState.rawValue.getter()
{
  if (*v0)
  {
    return 0x6269726373627573;
  }

  else
  {
    return 0x7263736275736E75;
  }
}

uint64_t sub_1D6A43BB0()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6A43C40()
{
  sub_1D72621EC();
}

uint64_t sub_1D6A43CBC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6A43D48@<X0>(char *a1@<X8>)
{
  v2 = sub_1D72641CC();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1D6A43DA8(uint64_t *a1@<X8>)
{
  v2 = 0x7263736275736E75;
  if (*v1)
  {
    v2 = 0x6269726373627573;
  }

  v3 = 0xEC00000064656269;
  if (*v1)
  {
    v3 = 0xEA00000000006465;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D6A43DF4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6269726373627573;
  }

  else
  {
    v3 = 0x7263736275736E75;
  }

  if (v2)
  {
    v4 = 0xEC00000064656269;
  }

  else
  {
    v4 = 0xEA00000000006465;
  }

  if (*a2)
  {
    v5 = 0x6269726373627573;
  }

  else
  {
    v5 = 0x7263736275736E75;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006465;
  }

  else
  {
    v6 = 0xEC00000064656269;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D6A43EAC(uint64_t a1)
{
  v2 = sub_1D6A43F08();

  return MEMORY[0x1EEE48380](a1, v2);
}

unint64_t sub_1D6A43F08()
{
  result = qword_1EC8904A0;
  if (!qword_1EC8904A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8904A0);
  }

  return result;
}

uint64_t SportsEmbedConfigResourceRecord.rank.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v4 = v1[2];
  v3 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;
}

uint64_t sub_1D6A43FB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1802396018 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D6A44038(uint64_t a1)
{
  v2 = sub_1D6A4424C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6A44074(uint64_t a1)
{
  v2 = sub_1D6A4424C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SportsEmbedConfigResourceRecord.encode(to:)(void *a1)
{
  sub_1D6A44498(0, &qword_1EC8904A8, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v13 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[3];
  v12[0] = v1[2];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6A4424C();

  sub_1D7264B5C();
  v12[2] = v8;
  v12[3] = v9;
  v12[4] = v12[0];
  v12[5] = v10;
  sub_1D6A442A0();
  sub_1D726443C();

  return (*(v13 + 8))(v7, v4);
}

unint64_t sub_1D6A4424C()
{
  result = qword_1EDF09170[0];
  if (!qword_1EDF09170[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF09170);
  }

  return result;
}

unint64_t sub_1D6A442A0()
{
  result = qword_1EC8904B0;
  if (!qword_1EC8904B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8904B0);
  }

  return result;
}

uint64_t SportsEmbedConfigResourceRecord.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D6A44498(0, &qword_1EDF03900, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6A4424C();
  sub_1D7264B0C();
  if (!v2)
  {
    sub_1D6A444FC();
    sub_1D726431C();
    (*(v7 + 8))(v10, v6);
    v11 = v14[1];
    v12 = v15;
    *a2 = v14[0];
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D6A44498(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6A4424C();
    v7 = a3(a1, &type metadata for SportsEmbedConfigResourceRecord.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6A444FC()
{
  result = qword_1EDF0A140;
  if (!qword_1EDF0A140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A140);
  }

  return result;
}

unint64_t sub_1D6A445A4()
{
  result = qword_1EC8904B8;
  if (!qword_1EC8904B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8904B8);
  }

  return result;
}

unint64_t sub_1D6A445FC()
{
  result = qword_1EDF09160;
  if (!qword_1EDF09160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09160);
  }

  return result;
}

unint64_t sub_1D6A44654()
{
  result = qword_1EDF09168;
  if (!qword_1EDF09168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09168);
  }

  return result;
}

uint64_t sub_1D6A446B8(void *a1)
{
  sub_1D6A452AC(0, &qword_1EC890510, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v13 - v7;
  v9 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6A45138();
  sub_1D7264B5C();
  LOBYTE(v16) = 0;
  v10 = v15;
  sub_1D72643FC();
  if (!v10)
  {
    v12 = v13;
    if (*(v14 + 16))
    {
      v17 = 1;
      v16 = v14;
      sub_1D6A45310();
      sub_1D5B49714(0, &qword_1EC890520);
      sub_1D6A45384(&qword_1EC890528, &qword_1EC890520, &type metadata for SportsStandingRecordStatistic, sub_1D6A450E4);
      sub_1D72647EC();
    }

    if (*(v12 + 16))
    {
      v17 = 2;
      v16 = v12;
      sub_1D6A45310();
      sub_1D5B49714(0, &qword_1EC890530);
      sub_1D6A45384(&qword_1EC890538, &qword_1EC890530, &type metadata for SportsStandingRecordLeague, sub_1D6A44FC0);
      sub_1D72647EC();
    }
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D6A4494C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v40 = a2;
  sub_1D6A45014(0, &qword_1EC8904C0, sub_1D6A44F6C, sub_1D6A44FC0);
  v38 = v3;
  v41 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v39 = &v33 - v5;
  sub_1D6A45014(0, &qword_1EC8904D8, sub_1D6A45090, sub_1D6A450E4);
  v7 = v6;
  v37 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v33 - v9;
  sub_1D6A452AC(0, &qword_1EC8904F0, MEMORY[0x1E69E6F48]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v33 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6A45138();
  v17 = v42;
  sub_1D7264B0C();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v42 = a1;
  v47 = 0;
  v18 = sub_1D72642BC();
  v21 = v20;
  v36 = v18;
  v46 = 1;
  v22 = sub_1D726434C();
  if (v22)
  {
    v43 = 1;
    sub_1D6A4521C();
    v23 = v7;
    sub_1D726431C();
    v24 = v16;
    v35 = v21;
    v34 = sub_1D725A74C();
    (*(v37 + 8))(v10, v23);
  }

  else
  {
    v24 = v16;
    v35 = v21;
    v34 = MEMORY[0x1E69E7CC0];
  }

  v45 = 2;
  v25 = sub_1D726434C();
  v26 = v40;
  v27 = v41;
  if (v25)
  {
    v44 = 2;
    sub_1D6A4518C();
    v28 = v38;
    v29 = v39;
    sub_1D726431C();
    v30 = sub_1D725A74C();
    (*(v27 + 8))(v29, v28);
    (*(v13 + 8))(v24, v12);
  }

  else
  {
    (*(v13 + 8))(v24, v12);
    v30 = MEMORY[0x1E69E7CC0];
  }

  v31 = v42;
  v32 = v35;
  *v26 = v36;
  v26[1] = v32;
  v26[2] = v34;
  v26[3] = v30;

  __swift_destroy_boxed_opaque_existential_1(v31);
}

uint64_t sub_1D6A44E28()
{
  v1 = 0x6974736974617473;
  if (*v0 != 1)
  {
    v1 = 0x4C676E6979616C70;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6163696E6F6E6163;
  }
}

uint64_t sub_1D6A44E9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6A45514(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6A44EC4(uint64_t a1)
{
  v2 = sub_1D6A45138();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6A44F00(uint64_t a1)
{
  v2 = sub_1D6A45138();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D6A44F6C()
{
  result = qword_1EC8904C8;
  if (!qword_1EC8904C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8904C8);
  }

  return result;
}

unint64_t sub_1D6A44FC0()
{
  result = qword_1EC8904D0;
  if (!qword_1EC8904D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8904D0);
  }

  return result;
}

void sub_1D6A45014(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_1D725AAEC();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1D6A45090()
{
  result = qword_1EC8904E0;
  if (!qword_1EC8904E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8904E0);
  }

  return result;
}

unint64_t sub_1D6A450E4()
{
  result = qword_1EC8904E8;
  if (!qword_1EC8904E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8904E8);
  }

  return result;
}

unint64_t sub_1D6A45138()
{
  result = qword_1EC8904F8;
  if (!qword_1EC8904F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8904F8);
  }

  return result;
}

unint64_t sub_1D6A4518C()
{
  result = qword_1EC890500;
  if (!qword_1EC890500)
  {
    sub_1D6A45014(255, &qword_1EC8904C0, sub_1D6A44F6C, sub_1D6A44FC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890500);
  }

  return result;
}

unint64_t sub_1D6A4521C()
{
  result = qword_1EC890508;
  if (!qword_1EC890508)
  {
    sub_1D6A45014(255, &qword_1EC8904D8, sub_1D6A45090, sub_1D6A450E4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890508);
  }

  return result;
}

void sub_1D6A452AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6A45138();
    v7 = a3(a1, &type metadata for SportsStandingRecordCompetitor.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6A45310()
{
  result = qword_1EC890518;
  if (!qword_1EC890518)
  {
    sub_1D6A452AC(255, &qword_1EC890510, MEMORY[0x1E69E6F58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890518);
  }

  return result;
}

uint64_t sub_1D6A45384(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D5B49714(255, a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6A45410()
{
  result = qword_1EC890540;
  if (!qword_1EC890540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890540);
  }

  return result;
}

unint64_t sub_1D6A45468()
{
  result = qword_1EC890548;
  if (!qword_1EC890548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890548);
  }

  return result;
}

unint64_t sub_1D6A454C0()
{
  result = qword_1EC890550;
  if (!qword_1EC890550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890550);
  }

  return result;
}

uint64_t sub_1D6A45514(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6163696E6F6E6163 && a2 == 0xEB0000000064496CLL;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974736974617473 && a2 == 0xEA00000000007363 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4C676E6979616C70 && a2 == 0xEE00736575676165)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

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

uint64_t sub_1D6A45640(id (*a1)(void *a1))
{
  v3 = v2;
  swift_beginAccess();
  v5 = *(v1 + 72);
  if (!v5)
  {
    return 0;
  }

  v6 = *(v5 + 16);
  if (!v6)
  {
    return 0;
  }

  v7 = *(v1 + 48);
  v8 = *(v1 + 64);
  if (v8)
  {
    v7 = 0;
  }

  v16 = v7;
  if (*(v1 + 64))
  {
    v9 = 0;
  }

  else
  {
    v9 = *(v1 + 56);
  }

  v15 = v9;
  v17 = MEMORY[0x1E69E7CC0];

  result = sub_1D7263ECC();
  v11 = 0;
  while (v11 < *(v5 + 16))
  {
    v12 = *(v5 + 8 * v11 + 32) >> 62;
    if (v12)
    {
      if (v12 == 1)
      {

        v13 = v3;
        sub_1D694B308(a1);
      }

      else
      {

        v13 = v3;
        sub_1D6047F98(a1);
      }

      v3 = v13;

      if (v13)
      {
LABEL_17:
      }
    }

    else
    {

      sub_1D6AACBAC(a1);

      if (v3)
      {
        goto LABEL_17;
      }
    }

    ++v11;

    sub_1D7263E9C();
    sub_1D7263EDC();
    sub_1D7263EEC();
    result = sub_1D7263EAC();
    if (v6 == v11)
    {

      type metadata accessor for FormatAnimationData();
      v14 = swift_allocObject();
      *(v14 + 16) = v1;
      *(v14 + 24) = v16;
      *(v14 + 32) = v15;
      *(v14 + 40) = v8;
      *(v14 + 48) = v17;

      return v14;
    }
  }

  __break(1u);
  return result;
}

uint64_t FormatAnimationNodeStyle.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1D6A4591C(uint64_t a1)
{
  swift_beginAccess();
  if (*(v1 + 64) == 1)
  {
    v3 = *(a1 + 64);
    v4 = a1;
  }

  else
  {
    v3 = 0;
    v4 = v1;
  }

  v5 = *(v1 + 16);
  v128 = *(v1 + 40);
  v129 = *(v1 + 24);
  v6 = *(v4 + 56);
  v123 = *(v4 + 48);
  v124 = *(v1 + 32);
  swift_beginAccess();
  v127 = *(v1 + 72);
  if (!v127)
  {
    swift_beginAccess();
    v127 = *(a1 + 72);
  }

  v125 = v5;
  v126 = v6;
  if (*(v1 + 84) == 255)
  {
    v122 = *(a1 + 80) | (*(a1 + 84) << 32);
  }

  else
  {
    v122 = *(v1 + 80) | (*(v1 + 84) << 32);
  }

  swift_beginAccess();
  v7 = *(v1 + 88);
  swift_beginAccess();
  v8 = *(a1 + 88);
  v152 = MEMORY[0x1E69E7CC8];
  v9 = *(v7 + 16);
  if (!__OFADD__(v9, *(v8 + 16)))
  {
    v134 = *(v8 + 16);
    v121 = v3;
    sub_1D6A47738();

    v139 = v8;

    sub_1D7261DAC();
    v148 = sub_1D698F4BC(0, v9, 0, MEMORY[0x1E69E7CC0]);
    v10 = v7;
    v141 = v7;
    v136 = *(v7 + 16);
    if (v136)
    {
      v11 = 0;
      v12 = (v7 + 80);
      while (v11 < *(v10 + 16))
      {
        v13 = *(v12 - 6);
        v14 = *(v12 - 5);
        v15 = *(v12 - 3);
        v149 = *(v12 - 4);
        v16 = *(v12 - 16);
        v143 = v11;
        v145 = *(v12 + 4);
        v17 = *v12;
        v18 = *(v12 - 1);
        swift_bridgeObjectRetain_n();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v20 = v13;
        v21 = sub_1D6D8CB60(v13, v14);
        v23 = v152[2];
        v24 = (v22 & 1) == 0;
        v25 = __OFADD__(v23, v24);
        v26 = v23 + v24;
        if (v25)
        {
          goto LABEL_85;
        }

        v27 = v22;
        if (v152[3] >= v26)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v39 = v21;
            sub_1D6D84AFC();
            v21 = v39;
          }

          v28 = v20;
        }

        else
        {
          sub_1D6D72630(v26, isUniquelyReferenced_nonNull_native);
          v28 = v20;
          v21 = sub_1D6D8CB60(v20, v14);
          if ((v27 & 1) != (v29 & 1))
          {
            goto LABEL_95;
          }
        }

        v30 = v17 | (v145 << 32);
        if (v27)
        {
          v31 = v152[7] + 56 * v21;
          *v31 = v28;
          *(v31 + 8) = v14;
          *(v31 + 16) = v149;
          *(v31 + 24) = v15;
          *(v31 + 32) = v16;
          *(v31 + 40) = v18;
          *(v31 + 52) = BYTE4(v30);
          *(v31 + 48) = v17;
        }

        else
        {
          v152[(v21 >> 6) + 8] |= 1 << v21;
          v32 = (v152[6] + 16 * v21);
          *v32 = v28;
          v32[1] = v14;
          v33 = v152[7] + 56 * v21;
          *v33 = v28;
          *(v33 + 8) = v14;
          *(v33 + 16) = v149;
          *(v33 + 24) = v15;
          *(v33 + 32) = v16;
          *(v33 + 40) = v18;
          *(v33 + 52) = BYTE4(v30);
          *(v33 + 48) = v17;
          v34 = v152[2];
          v25 = __OFADD__(v34, 1);
          v35 = v34 + 1;
          if (v25)
          {
            goto LABEL_90;
          }

          v152[2] = v35;
        }

        v37 = *(v148 + 2);
        v36 = *(v148 + 3);
        if (v37 >= v36 >> 1)
        {
          v148 = sub_1D698F4BC((v36 > 1), v37 + 1, 1, v148);
        }

        v11 = v143 + 1;
        *(v148 + 2) = v37 + 1;
        v38 = &v148[16 * v37];
        *(v38 + 4) = v28;
        *(v38 + 5) = v14;
        v12 += 14;
        v10 = v141;
        if (v136 == v143 + 1)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_85:
      __break(1u);
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
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

LABEL_27:
    v144 = sub_1D698F4BC(0, v134, 0, MEMORY[0x1E69E7CC0]);
    v40 = v139;
    v137 = *(v139 + 16);
    if (!v137)
    {
LABEL_67:

      sub_1D6985DAC(v99);
      v100 = *(v144 + 2);
      if (!v100)
      {
        v103 = MEMORY[0x1E69E7CC0];
LABEL_83:

        v119 = swift_allocObject();
        *(v119 + 72) = 0;
        swift_beginAccess();
        *(v119 + 16) = v125;
        *(v119 + 24) = v129;
        *(v119 + 32) = v124;
        *(v119 + 40) = v128;
        *(v119 + 48) = v123;
        *(v119 + 56) = v126;
        *(v119 + 64) = v121;
        swift_beginAccess();
        *(v119 + 72) = v127;

        *(v119 + 84) = BYTE4(v122);
        *(v119 + 80) = v122;
        swift_beginAccess();
        *(v119 + 88) = v103;
        return v119;
      }

      v101 = 0;
      v102 = v144 + 40;
      v103 = MEMORY[0x1E69E7CC0];
LABEL_69:
      v104 = &v102[16 * v101];
      v105 = v101;
      while (v105 < v100)
      {
        v101 = v105 + 1;
        if (__OFADD__(v105, 1))
        {
          goto LABEL_88;
        }

        if (v152[2])
        {
          v106 = *(v104 - 1);
          v107 = *v104;

          v108 = sub_1D6D8CB60(v106, v107);
          if (v109)
          {
            v151 = v102;
            v110 = v152[7] + 56 * v108;
            v112 = *v110;
            v111 = *(v110 + 8);
            v113 = *(v110 + 16);
            v114 = *(v110 + 24);
            v142 = *(v110 + 32);
            v115 = *(v110 + 40);
            v138 = *(v110 + 48);
            v140 = *(v110 + 52);

            v147 = v114;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v103 = sub_1D698E784(0, *(v103 + 2) + 1, 1, v103);
            }

            v117 = *(v103 + 2);
            v116 = *(v103 + 3);
            if (v117 >= v116 >> 1)
            {
              v103 = sub_1D698E784((v116 > 1), v117 + 1, 1, v103);
            }

            *(v103 + 2) = v117 + 1;
            v118 = &v103[56 * v117];
            *(v118 + 4) = v112;
            *(v118 + 5) = v111;
            *(v118 + 6) = v113;
            *(v118 + 7) = v147;
            v118[64] = v142;
            *(v118 + 9) = v115;
            v118[84] = (v138 | (v140 << 32)) >> 32;
            *(v118 + 20) = v138;
            v102 = v151;
            if (v101 != v100)
            {
              goto LABEL_69;
            }

            goto LABEL_83;
          }
        }

        ++v105;
        v104 += 16;
        if (v101 == v100)
        {
          goto LABEL_83;
        }
      }

      goto LABEL_87;
    }

    v41 = 0;
    v42 = (v139 + 80);
    while (1)
    {
      if (v41 >= *(v40 + 16))
      {
        goto LABEL_86;
      }

      v44 = *(v42 - 6);
      v45 = *(v42 - 5);
      v46 = *(v42 - 4);
      v47 = *(v42 - 3);
      v146 = *(v42 - 16);
      v48 = *v42 | (*(v42 + 4) << 32);
      v49 = v152[2];
      v150 = *(v42 - 1);

      if (!v49)
      {
        break;
      }

      v50 = sub_1D6D8CB60(v44, v45);
      if ((v51 & 1) == 0)
      {
        break;
      }

      v52 = v152[7] + 56 * v50;
      v53 = v46;
      v55 = *v52;
      v54 = *(v52 + 8);
      v56 = *(v52 + 24);
      v57 = *(v52 + 32);
      v58 = *(v52 + 40);
      v59 = *(v52 + 52);
      v60 = v47;
      v61 = *(v52 + 48);
      v130 = *(v52 + 32);
      if (v130)
      {
        v62 = v53;
      }

      else
      {
        v62 = *(v52 + 16);
      }

      v133 = v62;
      if (v57)
      {
        v63 = v60;
      }

      else
      {
        v63 = v56;
      }

      v135 = v63;
      v64 = v58;
      if (!v58)
      {
      }

      v65 = v61 | (v59 << 32);
      if (HIDWORD(v65) > 0xFE)
      {
        v65 = v48;
      }

      v131 = v65;
      v132 = v64;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v66 = swift_isUniquelyReferenced_nonNull_native();
      v67 = v55;
      v69 = sub_1D6D8CB60(v55, v54);
      v70 = v152[2];
      v71 = (v68 & 1) == 0;
      v72 = v70 + v71;
      if (__OFADD__(v70, v71))
      {
        goto LABEL_92;
      }

      v73 = v68;
      if (v152[3] >= v72)
      {
        if ((v66 & 1) == 0)
        {
          sub_1D6D84AFC();
        }
      }

      else
      {
        sub_1D6D72630(v72, v66);
        v74 = sub_1D6D8CB60(v67, v54);
        if ((v73 & 1) != (v75 & 1))
        {
          goto LABEL_95;
        }

        v69 = v74;
      }

      v86 = v130 & v146;
      if (v73)
      {
        v43 = v152[7] + 56 * v69;
        *v43 = v67;
        *(v43 + 8) = v54;
        *(v43 + 16) = v133;
        *(v43 + 24) = v135;
        *(v43 + 32) = v86;
        *(v43 + 40) = v132;
        *(v43 + 52) = BYTE4(v131);
        *(v43 + 48) = v131;
      }

      else
      {
        v152[(v69 >> 6) + 8] |= 1 << v69;
        v87 = (v152[6] + 16 * v69);
        *v87 = v67;
        v87[1] = v54;
        v88 = v152[7] + 56 * v69;
        *v88 = v67;
        *(v88 + 8) = v54;
        *(v88 + 16) = v133;
        *(v88 + 24) = v135;
        *(v88 + 32) = v86;
        *(v88 + 40) = v132;
        *(v88 + 52) = BYTE4(v131);
        *(v88 + 48) = v131;
        v89 = v152[2];
        v25 = __OFADD__(v89, 1);
        v90 = v89 + 1;
        if (v25)
        {
          goto LABEL_93;
        }

        v152[2] = v90;
      }

      v40 = v139;
LABEL_31:
      ++v41;
      v42 += 14;
      if (v137 == v41)
      {
        goto LABEL_67;
      }
    }

    v76 = swift_isUniquelyReferenced_nonNull_native();
    v77 = sub_1D6D8CB60(v44, v45);
    v79 = v152[2];
    v80 = (v78 & 1) == 0;
    v25 = __OFADD__(v79, v80);
    v81 = v79 + v80;
    if (v25)
    {
      goto LABEL_89;
    }

    v82 = v78;
    if (v152[3] >= v81)
    {
      if ((v76 & 1) == 0)
      {
        v91 = v77;
        sub_1D6D84AFC();
        v77 = v91;
        v84 = v152;
        if (v82)
        {
          goto LABEL_55;
        }

        goto LABEL_62;
      }
    }

    else
    {
      sub_1D6D72630(v81, v76);
      v77 = sub_1D6D8CB60(v44, v45);
      if ((v82 & 1) != (v83 & 1))
      {
        goto LABEL_95;
      }
    }

    v84 = v152;
    if (v82)
    {
LABEL_55:
      v85 = v84[7] + 56 * v77;
      *v85 = v44;
      *(v85 + 8) = v45;
      *(v85 + 16) = v46;
      *(v85 + 24) = v47;
      *(v85 + 32) = v146;
      *(v85 + 40) = v150;
      *(v85 + 52) = BYTE4(v48);
      *(v85 + 48) = v48;

LABEL_64:
      v152 = v84;
      v96 = *(v144 + 2);
      v97 = *(v144 + 3);

      v40 = v139;
      if (v96 >= v97 >> 1)
      {
        v144 = sub_1D698F4BC((v97 > 1), v96 + 1, 1, v144);
      }

      *(v144 + 2) = v96 + 1;
      v98 = &v144[16 * v96];
      *(v98 + 4) = v44;
      *(v98 + 5) = v45;
      goto LABEL_31;
    }

LABEL_62:
    v84[(v77 >> 6) + 8] |= 1 << v77;
    v92 = (v84[6] + 16 * v77);
    *v92 = v44;
    v92[1] = v45;
    v93 = v84[7] + 56 * v77;
    *v93 = v44;
    *(v93 + 8) = v45;
    *(v93 + 16) = v46;
    *(v93 + 24) = v47;
    *(v93 + 32) = v146;
    *(v93 + 40) = v150;
    *(v93 + 52) = BYTE4(v48);
    *(v93 + 48) = v48;
    v94 = v84[2];
    v25 = __OFADD__(v94, 1);
    v95 = v94 + 1;
    if (v25)
    {
      goto LABEL_91;
    }

    v84[2] = v95;

    goto LABEL_64;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

uint64_t sub_1D6A46458(uint64_t a1)
{
  swift_beginAccess();
  v75 = v1;
  v3 = *(v1 + 88);
  v4 = *(v3 + 16);

  v5 = MEMORY[0x1E69E7CC0];
  v6 = sub_1D698E784(0, v4, 0, MEMORY[0x1E69E7CC0]);
  result = sub_1D698E630(0, v4, 0, v5);
  v62 = result;
  v65 = *(v3 + 16);
  if (v65)
  {
    v8 = 0;
    v63 = v3;
    v64 = v3 + 32;
    while (v8 < *(v3 + 16))
    {
      v76 = v6;
      v9 = (v64 + 56 * v8);
      v10 = *v9;
      v11 = v9[1];
      v70 = v9[2];
      v72 = v9[3];
      v74 = *(v9 + 32);
      v12 = v9[5];
      v13 = *(v9 + 52);
      v14 = *(v9 + 12);
      v15 = qword_1EDF2AB18;

      if (v15 != -1)
      {
        swift_once();
      }

      v69 = v10;
      *&v80 = v10;
      *(&v80 + 1) = v11;

      v16 = sub_1D6844380(&v80);

      v17 = *(v16 + 16);
      if (v17)
      {
        v18 = 0;
        v67 = v14 | (v13 << 32);
        v19 = 32;
        while (1)
        {
          if (v18 >= *(v16 + 16))
          {
            __break(1u);
            goto LABEL_41;
          }

          v21 = *(v16 + v19 + 16);
          v20 = *(v16 + v19 + 32);
          v22 = *(v16 + v19);
          v85 = *(v16 + v19 + 48);
          v84[1] = v21;
          v84[2] = v20;
          v84[0] = v22;
          v23 = v21;
          sub_1D5E3B610(v84, &v80);
          if (sub_1D68444DC(a1))
          {
            break;
          }

          ++v18;
          result = sub_1D5E3B66C(v84);
          v19 += 56;
          if (v17 == v18)
          {
            goto LABEL_3;
          }
        }

        result = sub_1D5E3B66C(v84);
        if (v23 <= 1)
        {
          v6 = v76;
          v29 = *(v76 + 2);
          v28 = *(v76 + 3);
          if (v29 >= v28 >> 1)
          {
            result = sub_1D698E784((v28 > 1), v29 + 1, 1, v76);
            v6 = result;
          }

          v3 = v63;
          *(v6 + 2) = v29 + 1;
          v30 = &v6[56 * v29];
          *(v30 + 4) = v69;
          *(v30 + 5) = v11;
          *(v30 + 6) = v70;
          *(v30 + 7) = v72;
          v30[64] = v74;
          *(v30 + 9) = v12;
          v30[84] = BYTE4(v67);
          *(v30 + 20) = v67;
        }

        else
        {
          v24 = v62[2];
          v25 = v62[3];

          v6 = v76;
          if (v24 >= v25 >> 1)
          {
            v62 = sub_1D698E630((v25 > 1), v24 + 1, 1, v62);
          }

          v3 = v63;

          v62[2] = v24 + 1;
          v26 = &v62[8 * v24];
          v26[4] = v69;
          v26[5] = v11;
          v26[6] = v70;
          v26[7] = v72;
          *(v26 + 64) = v74;
          v27 = *(&v80 + 3);
          *(v26 + 65) = v80;
          *(v26 + 17) = v27;
          v26[9] = v12;
          *(v26 + 84) = BYTE4(v67);
          *(v26 + 20) = v67;
          LOBYTE(v27) = v79;
          *(v26 + 85) = v78;
          *(v26 + 87) = v27;
          v26[11] = v23;
        }
      }

      else
      {
LABEL_3:

        v6 = v76;
        v3 = v63;
      }

      if (++v8 == v65)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_42;
  }

LABEL_21:

  sub_1D6A4779C();
  v31 = sub_1D72626AC();

  v32 = *(v31 + 16);
  if (v32)
  {
    v33 = v32 - 1;
    for (i = 32; ; i += 64)
    {
      v35 = *(v31 + i);
      v36 = *(v31 + i + 16);
      v37 = *(v31 + i + 48);
      v82 = *(v31 + i + 32);
      v83 = v37;
      v80 = v35;
      v81 = v36;
      sub_1D6A477F8(&v80, &v78);
      v39 = *(v6 + 2);
      v38 = *(v6 + 3);
      if (v39 >= v38 >> 1)
      {
        v6 = sub_1D698E784((v38 > 1), v39 + 1, 1, v6);
      }

      v40 = v80;
      v41 = v82;
      v42 = *(&v82 + 1);
      v43 = BYTE4(v83);
      v44 = v83;
      v45 = &v6[56 * v39];
      v46 = v81;
      *(v6 + 2) = v39 + 1;
      *(v45 + 2) = v40;
      *(v45 + 3) = v46;
      v45[64] = v41;
      *(v45 + 9) = v42;
      *(v45 + 20) = v44;
      v45[84] = v43;
      if (!v33)
      {
        break;
      }

      --v33;
    }
  }

  v47 = *(v6 + 2);
  v48 = v75;

  v66 = v47;
  if (v47)
  {
    v49 = 0;
    v50 = (v6 + 80);
    v77 = v6;
    while (v49 < *(v6 + 2))
    {
      v68 = *(v50 - 1);
      v73 = *(v50 + 4);
      v71 = *v50;
      v52 = *(v50 - 16);
      v53 = *(v50 - 4);
      v54 = *(v50 - 3);
      v55 = swift_allocObject();
      *(v55 + 72) = 0;
      swift_beginAccess();
      v57 = *(v48 + 16);
      v56 = *(v48 + 24);
      swift_beginAccess();
      *(v55 + 16) = v57;
      *(v55 + 24) = v56;
      v58 = *(v48 + 40);
      *(v55 + 32) = *(v48 + 32);
      *(v55 + 40) = v58;
      if (v52 == 1)
      {
        v53 = *(v48 + 48);
        v54 = *(v48 + 56);
        v59 = *(v48 + 64);
      }

      else
      {
        v59 = 0;
      }

      *(v55 + 48) = v53;
      *(v55 + 56) = v54;
      v60 = v68;
      *(v55 + 64) = v59;
      if (!v68)
      {
        swift_beginAccess();
        v60 = *(v48 + 72);
      }

      v61 = v71 | (v73 << 32);
      swift_beginAccess();
      *(v55 + 72) = v60;

      if (BYTE4(v61) == 255)
      {
        v61 = *(v48 + 80) | (*(v48 + 84) << 32);
      }

      ++v49;
      *(v55 + 80) = v61;
      *(v55 + 84) = BYTE4(v61);
      swift_beginAccess();
      v51 = *(v48 + 88);

      result = swift_beginAccess();
      *(v55 + 88) = v51;
      v50 += 14;
      v48 = v55;
      v6 = v77;
      if (v66 == v49)
      {
        goto LABEL_39;
      }
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    return result;
  }

  v55 = v75;
LABEL_39:

  return v55;
}

uint64_t sub_1D6A46AF4()
{
  v1 = v0;
  swift_beginAccess();
  v3 = v0[2];
  v2 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v1[6];
  v7 = v1[7];
  v12 = *(v1 + 64);
  swift_beginAccess();
  v8 = v1[9];
  v14 = *(v1 + 20);
  v13 = *(v1 + 84);
  swift_beginAccess();
  v9 = v1[11];
  v10 = swift_allocObject();
  *(v10 + 72) = 0;
  swift_beginAccess();
  *(v10 + 16) = v3;
  *(v10 + 24) = v2;
  *(v10 + 32) = v5;
  *(v10 + 40) = v4;
  *(v10 + 48) = v6;
  *(v10 + 56) = v7;
  *(v10 + 64) = v12;
  swift_beginAccess();
  *(v10 + 72) = v8;

  *(v10 + 84) = v13;
  *(v10 + 80) = v14;
  swift_beginAccess();
  *(v10 + 88) = v9;
  return v10;
}

uint64_t FormatAnimationNodeStyle.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t FormatAnimationNodeStyle.class.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

__n128 FormatAnimationNodeStyle.anchorPoint.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[4].n128_u8[0];
  result = v1[3];
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

uint64_t FormatAnimationNodeStyle.animations.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 72) = a1;
}

void FormatAnimationNodeStyle.runMode.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  *(a1 + 4) = *(v1 + 84);
  *a1 = v2;
}

uint64_t FormatAnimationNodeStyle.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 88) = a1;
}

uint64_t FormatAnimationNodeStyle.__allocating_init(identifier:class:anchorPoint:animations:runMode:selectors:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, int *a7, uint64_t a8)
{
  v14 = swift_allocObject();
  v16 = *a5;
  v15 = a5[1];
  LOBYTE(a5) = *(a5 + 16);
  v19 = *a7;
  v17 = *(a7 + 4);
  *(v14 + 72) = 0;
  swift_beginAccess();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(v14 + 48) = v16;
  *(v14 + 56) = v15;
  *(v14 + 64) = a5;
  swift_beginAccess();
  *(v14 + 72) = a6;

  *(v14 + 84) = v17;
  *(v14 + 80) = v19;
  swift_beginAccess();
  *(v14 + 88) = a8;
  return v14;
}

uint64_t FormatAnimationNodeStyle.init(identifier:class:anchorPoint:animations:runMode:selectors:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, int *a7, uint64_t a8)
{
  v13 = *a5;
  v14 = a5[1];
  v15 = *(a5 + 16);
  v18 = *a7;
  v16 = *(a7 + 4);
  *(v8 + 72) = 0;
  swift_beginAccess();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 48) = v13;
  *(v8 + 56) = v14;
  *(v8 + 64) = v15;
  swift_beginAccess();
  *(v8 + 72) = a6;

  *(v8 + 84) = v16;
  *(v8 + 80) = v18;
  swift_beginAccess();
  *(v8 + 88) = a8;
  return v8;
}

uint64_t FormatAnimationNodeStyle.deinit()
{

  return v0;
}

uint64_t FormatAnimationNodeStyle.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D6A4711C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D667363C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t FormatAnimationNodeStyle.Selector.selector.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

__n128 FormatAnimationNodeStyle.Selector.anchorPoint.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[2].n128_u8[0];
  result = v1[1];
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

void FormatAnimationNodeStyle.Selector.runMode.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *(a1 + 4) = *(v1 + 52);
  *a1 = v2;
}

uint64_t _s8NewsFeed24FormatAnimationNodeStyleC8SelectorV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 52);
  v7 = *(a1 + 48);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  v12 = *(a2 + 52);
  v13 = *(a2 + 48);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v10)
    {
      return 0;
    }

LABEL_13:
    if (v5)
    {
      if (!v11)
      {
        return 0;
      }

      v16 = sub_1D633DB70(v5, v11);

      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v11)
    {
      return 0;
    }

    v17 = v7 | (v6 << 32);
    v18 = v13 | (v12 << 32);
    if (BYTE4(v17) == 255)
    {
      return BYTE4(v18) == 255;
    }

    if (BYTE4(v18) == 255)
    {
      return 0;
    }

    if (BYTE4(v17))
    {
      if (BYTE4(v17) != 1)
      {
        if (v7)
        {
          if (v7 == 1)
          {
            if (BYTE4(v18) != 2 || v13 != 1)
            {
              return 0;
            }
          }

          else if (BYTE4(v18) != 2 || v13 != 2)
          {
            return 0;
          }
        }

        else if (BYTE4(v18) != 2 || v13)
        {
          return 0;
        }

        return 1;
      }

      if (BYTE4(v18) != 1)
      {
        return 0;
      }
    }

    else if (BYTE4(v18))
    {
      return 0;
    }

    return *&v7 == *&v13;
  }

  result = 0;
  if ((v10 & 1) == 0 && v2 == v8 && v3 == v9)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1D6A47394(uint64_t a1)
{
  result = sub_1D6A474CC(&qword_1EC890558);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6A473D8(uint64_t a1)
{
  *(a1 + 16) = sub_1D6A474CC(&qword_1EDF26768);
  result = sub_1D6A474CC(&unk_1EDF0D098);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1D6A47440(void *a1)
{
  a1[1] = sub_1D6A474CC(&qword_1EDF26768);
  a1[2] = sub_1D6A474CC(&unk_1EDF0D098);
  result = sub_1D6A474CC(&qword_1EC890560);
  a1[3] = result;
  return result;
}

uint64_t sub_1D6A474CC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatAnimationNodeStyle();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6A4750C(uint64_t a1)
{
  result = sub_1D6A47534();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6A47534()
{
  result = qword_1EC890568;
  if (!qword_1EC890568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890568);
  }

  return result;
}

unint64_t sub_1D6A47588(uint64_t a1)
{
  *(a1 + 8) = sub_1D6701918();
  result = sub_1D6674084();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6A475B8(void *a1)
{
  a1[1] = sub_1D6701918();
  a1[2] = sub_1D6674084();
  result = sub_1D6A475F0();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6A475F0()
{
  result = qword_1EC890570;
  if (!qword_1EC890570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890570);
  }

  return result;
}

__n128 __swift_memcpy53_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1D6A4768C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 53))
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

uint64_t sub_1D6A476D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 52) = 0;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 53) = 1;
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

    *(result + 53) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D6A47738()
{
  if (!qword_1EDF05840)
  {
    sub_1D601014C();
    v0 = sub_1D7261E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF05840);
    }
  }
}

void sub_1D6A4779C()
{
  if (!qword_1EDF0A920)
  {
    sub_1D69A5E80();
    v0 = type metadata accessor for FormatNodeStyleSelectorOrder();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF0A920);
    }
  }
}

uint64_t sub_1D6A477F8(uint64_t a1, uint64_t a2)
{
  sub_1D6A4779C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_1D6A4785C(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = 0xEF7373616C43206ELL;
  v6 = 0x6F6974616D696E41;
  v7 = *(a1 + 128);
  v81 = *(a1 + 112);
  v82 = v7;
  v83 = *(a1 + 144);
  v8 = *(a1 + 64);
  v77 = *(a1 + 48);
  v78 = v8;
  v9 = *(a1 + 96);
  v79 = *(a1 + 80);
  v80 = v9;
  v10 = *(a1 + 32);
  v75 = *(a1 + 16);
  v76 = v10;
  sub_1D5B560EC(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1D7279970;
  v58 = v4;
  if (v4)
  {
    *&v61 = v3;
    *(&v61 + 1) = v4;

    MEMORY[0x1DA6F9910](32, 0xE100000000000000);
    MEMORY[0x1DA6F9910](0x6F6974616D696E41, 0xEF7373616C43206ELL);
    v5 = v4;
    v6 = v3;
  }

  v54 = v6;
  v55 = v5;
  v59 = v3;
  sub_1D5B560EC(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
  sub_1D5EA74B8();
  v12 = (*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80);
  v56 = *(*(v11 - 8) + 72);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D7273AE0;
  v53 = v12;
  v14 = (v13 + v12);
  if (a2)
  {
    v15 = *(a2 + 32);
    v16 = *(a2 + 40);

    v17 = sub_1D6A46AF4();
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 64) = 0x6800000000000000;
    v19 = sub_1D601118C;
  }

  else
  {
    v19 = sub_1D70DD9D8;
    v18 = 0;
    v15 = 0;
    v16 = 0xE000000000000000;
  }

  v20 = type metadata accessor for FormatInspectionItem(0);
  v21 = (v14 + *(v20 + 24));
  *v21 = v19;
  v21[1] = v18;
  v22 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
  *v14 = v15;
  v14[1] = v16;
  v14[2] = 0;
  v14[3] = 0;
  v23 = v14 + *(v20 + 28);
  *v23 = 0;
  *(v23 + 1) = 0;
  v23[16] = -1;
  v24 = *(*(v20 - 8) + 56);
  v24(v14, 0, 1, v20);
  sub_1D6795150(v54, v55, 0, 0, v13, v71);
  swift_setDeallocating();
  sub_1D6180C78(v14);
  swift_deallocClassInstance();
  v25 = v57;
  *(v57 + 56) = &type metadata for FormatInspectionGroup;
  *(v57 + 64) = &off_1F518B2C0;
  v26 = swift_allocObject();
  *(v57 + 32) = v26;
  v27 = v71[1];
  *(v26 + 16) = v71[0];
  *(v26 + 32) = v27;
  *(v26 + 48) = v72;
  v28 = v59;
  *&v61 = v59;
  *(&v61 + 1) = v58;
  v68 = v81;
  v69 = v82;
  v70 = v83;
  v64 = v77;
  v65 = v78;
  v67 = v80;
  v66 = v79;
  v63 = v76;
  v62 = v75;
  if (a2)
  {
    v29 = *(a2 + 80) | (*(a2 + 84) << 32);
  }

  else
  {
    v29 = 0xFF00000000;
  }

  LODWORD(v73[0]) = v29;
  BYTE4(v73[0]) = BYTE4(v29);
  v30 = sub_1D6C2F6C4(&v61, v73);
  *(v57 + 96) = &type metadata for FormatInspection;
  *(v57 + 104) = &off_1F51E3FD0;
  *(v57 + 72) = v30;
  v31 = swift_allocObject();
  v32 = v31;
  *(v31 + 16) = xmmword_1D7270C10;
  v33 = (v31 + v53);
  if (a2)
  {
    if (*(a2 + 64))
    {
      v34 = 0;
    }

    else
    {
      v34 = *(a2 + 48);
    }

    sub_1D711A80C(88, 0xE100000000000000, v34, *(a2 + 64), (v31 + v53));
    v35 = 1;
    v24(v33, 0, 1, v20);
    if (*(a2 + 64))
    {
      v36 = 0;
    }

    else
    {
      v35 = 0;
      v36 = *(a2 + 56);
    }
  }

  else
  {
    v35 = 1;
    sub_1D711A80C(88, 0xE100000000000000, 0, 1, v33);
    v24(v33, 0, 1, v20);
    v36 = 0;
  }

  sub_1D711A80C(89, 0xE100000000000000, v36, v35, (v33 + v56));
  v24((v33 + v56), 0, 1, v20);
  sub_1D6795150(0x5020726F68636E41, 0xEC000000746E696FLL, 0, 0, v32, v73);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v57 + 136) = &type metadata for FormatInspectionGroup;
  *(v57 + 144) = &off_1F518B2C0;
  v37 = swift_allocObject();
  *(v57 + 112) = v37;
  v38 = v73[1];
  *(v37 + 16) = v73[0];
  *(v37 + 32) = v38;
  *(v37 + 48) = v74;
  if (a2 && (swift_beginAccess(), (v39 = *(a2 + 72)) != 0))
  {

    v40 = *(v39 + 16);
    if (!v40)
    {
LABEL_20:

      v41 = MEMORY[0x1E69E7CC0];
      goto LABEL_32;
    }
  }

  else
  {

    v39 = MEMORY[0x1E69E7CC0];
    v40 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v40)
    {
      goto LABEL_20;
    }
  }

  v60 = MEMORY[0x1E69E7CC0];
  sub_1D6997338(0, v40, 0);
  v41 = v60;
  v42 = 32;
  do
  {
    v43 = *(v39 + v42);
    if (v43 >> 62)
    {
      v44 = *((v43 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      *&v61 = v28;
      *(&v61 + 1) = v58;
      v68 = v81;
      v69 = v82;
      v70 = v83;
      v64 = v77;
      v65 = v78;
      v66 = v79;
      v67 = v80;
      v62 = v75;
      v63 = v76;
      if (v43 >> 62 == 1)
      {

        v45 = sub_1D694C4CC(&v61, v44);
      }

      else
      {

        v45 = sub_1D60486D0(&v61, v44);
      }
    }

    else
    {
      v46 = *(v43 + 16);
      *&v61 = v28;
      *(&v61 + 1) = v58;
      v68 = v81;
      v69 = v82;
      v70 = v83;
      v64 = v77;
      v65 = v78;
      v66 = v79;
      v67 = v80;
      v62 = v75;
      v63 = v76;

      v45 = sub_1D6AAD820(&v61, v46);
    }

    v47 = v45;

    v49 = *(v60 + 16);
    v48 = *(v60 + 24);
    if (v49 >= v48 >> 1)
    {
      sub_1D6997338((v48 > 1), v49 + 1, 1);
    }

    *(v60 + 16) = v49 + 1;
    v50 = v60 + 40 * v49;
    *(v50 + 32) = v47;
    *(v50 + 40) = v61;
    *(v50 + 56) = &type metadata for FormatInspection;
    *(v50 + 64) = &off_1F51E3FD0;
    v42 += 8;
    --v40;
    v28 = v59;
  }

  while (v40);

  v25 = v57;
LABEL_32:
  *&v61 = v25;
  sub_1D6986168(v41);
  v51 = sub_1D7073500(v61);

  return v51;
}

id sub_1D6A480A4()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
  [v0 setUnitsStyle_];
  [v0 setZeroFormattingBehavior_];
  result = [v0 setAllowedUnits_];
  qword_1EDF0D720 = v0;
  return result;
}

uint64_t _s8NewsFeed23AudioCountdownFormatterC14stringFromTime8intervalSSSd_tFZ_0(double a1)
{
  if (qword_1EDF0D718 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDF0D720;
  [qword_1EDF0D720 setAllowedUnits_];
  if (qword_1EDF0D718 != -1)
  {
    swift_once();
  }

  result = [v2 stringFromTimeInterval_];
  if (result)
  {
    v4 = result;
    v5 = sub_1D726207C();
    v7 = v6;

    MEMORY[0x1DA6F9910](v5, v7);

    return 45;
  }

  return result;
}

char *sub_1D6A482A8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorSplitView_left;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v11 = OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorSplitView_right;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v16.receiver = v4;
  v16.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = *&v12[OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorSplitView_right];
  v14 = v12;
  [v14 addSubview_];
  [v14 addSubview_];

  return v14;
}

void sub_1D6A484B8()
{
  v1 = v0;
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, sel_layoutSubviews);
  v2 = *&v0[OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorSplitView_left];
  [v0 bounds];
  [v2 setFrame_];
  v3 = *&v0[OBJC_IVAR____TtC8NewsFeed29DebugFormatInspectorSplitView_right];
  [v0 bounds];
  [v3 setFrame_];
  v4 = [objc_allocWithZone(MEMORY[0x1E69DC728]) init];
  [v4 moveToPoint_];
  [v1 bounds];
  [v4 addLineToPoint_];
  [v1 bounds];
  [v4 addLineToPoint_];
  [v4 addLineToPoint_];
  v5 = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  v6 = [v4 CGPath];
  [v5 setPath_];

  v7 = [v2 layer];
  [v7 setMask_];

  v8 = [objc_allocWithZone(MEMORY[0x1E69DC728]) init];
  [v1 bounds];
  [v8 moveToPoint_];
  [v1 bounds];
  [v8 addLineToPoint_];
  [v1 bounds];
  MaxX = CGRectGetMaxX(v18);
  [v1 bounds];
  [v8 addLineToPoint_];
  [v1 bounds];
  [v8 addLineToPoint_];
  v10 = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  v11 = [v8 CGPath];
  [v10 setPath_];

  v12 = [v3 layer];
  [v12 setMask_];
}

uint64_t sub_1D6A48888(void *a1)
{
  v3 = v1;
  sub_1D6A4908C(0, &qword_1EC8905B0, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6A48F94();
  sub_1D7264B5C();
  v17 = 0;
  sub_1D72643FC();
  if (!v2)
  {
    v16 = 1;
    sub_1D72643FC();
    v15 = 2;
    sub_1D726440C();
    v14 = 3;
    sub_1D726440C();
    v13 = *(v3 + 40);
    v12[15] = 4;
    sub_1D6A48FE8();
    sub_1D6A490F0(&qword_1EC8905B8, sub_1D6A4915C);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1D6A48AB0()
{
  v1 = *v0;
  v2 = 0x74786554646C6F62;
  if (v1 != 3)
  {
    v2 = 0x746F687370616E73;
  }

  if (v1 == 2)
  {
    v2 = 0xD000000000000010;
  }

  v3 = 0xD000000000000018;
  if (!*v0)
  {
    v3 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}