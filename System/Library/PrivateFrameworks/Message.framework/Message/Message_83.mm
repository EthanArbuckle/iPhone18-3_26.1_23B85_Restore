uint64_t sub_1B0CCE54C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 48);
    for (i = (a2 + 48); *(i - 4) == *(v3 - 4); i += 3)
    {
      v6 = *(v3 - 12);
      v7 = *v3;
      v8 = *(i - 12);
      v9 = *i;
      if (v6 == 2)
      {
        if (v8 != 2)
        {
          return 0;
        }
      }

      else
      {
        if (v8 == 2)
        {
          return 0;
        }

        result = 0;
        if (((v8 ^ v6) & 1) != 0 || ((v6 >> 8) & 1) == ((v8 & 0x100) == 0) || ((v6 >> 16) & 1) == ((v8 & 0x10000) == 0) || ((v6 >> 24) & 1) == ((v8 & 0x1000000) == 0))
        {
          return result;
        }

        v10 = *(v3 - 4);
        v11 = *(i - 4);
        if ((v6 & 0xFF00000000) == 0x200000000)
        {
          if (BYTE4(v8) != 2)
          {
            return 0;
          }
        }

        else
        {
          result = 0;
          if (BYTE4(v8) == 2 || ((((v6 & 0x100000000) == 0) ^ HIDWORD(v8)) & 1) == 0)
          {
            return result;
          }
        }

        if ((v6 & 0xFF0000000000) == 0x20000000000)
        {
          if (BYTE5(v8) != 2)
          {
            return 0;
          }
        }

        else
        {
          result = 0;
          if (BYTE5(v8) == 2 || ((((v6 & 0x10000000000) == 0) ^ (v8 >> 40)) & 1) == 0)
          {
            return result;
          }
        }

        if ((v6 & 0xFF000000000000) == 0x3000000000000)
        {
          if (BYTE6(v8) != 3)
          {
            return 0;
          }
        }

        else
        {
          result = 0;
          if (BYTE6(v8) == 3 || ((v8 ^ v6) & 0xFF000000000000) != 0)
          {
            return result;
          }
        }

        v12 = HIBYTE(v8);
        v13 = HIBYTE(v6);
        if (v13 == 8)
        {
          if (v12 != 8)
          {
            return 0;
          }
        }

        else
        {
          result = 0;
          if (v12 == 8 || v13 != v12)
          {
            return result;
          }
        }

        if (v10 == 2)
        {
          if (v11 != 2)
          {
            return 0;
          }
        }

        else if (v11 == 2 || ((v11 ^ v10) & 1) != 0)
        {
          return 0;
        }
      }

      if (v7)
      {
        if (!v9)
        {
          return 0;
        }

        v14 = *v3;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v15 = sub_1B0AFDF14(v7, v9);

        if ((v15 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v9)
      {
        return 0;
      }

      v3 += 3;
      result = 1;
      if (!--v2)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t static MailboxPriorityInfo.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_1B03DDD84(a1, a3) & 1) == 0)
  {
    return 0;
  }

  return sub_1B0CCDE80(a2, a4);
}

uint64_t MailboxPriorityInfo.userVisibleMailboxes.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t MailboxPriorityInfo.mailboxPriorityOrder.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t MailboxPriorityInfo.hash(into:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  sub_1B0CCEACC(a1, a2);
  v4 = *(a3 + 16);
  result = MEMORY[0x1B2728D70](v4);
  if (v4)
  {
    v6 = (a3 + 40);
    do
    {
      v7 = *v6;
      v6 += 2;
      result = MEMORY[0x1B2728D70](v7);
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t MailboxPriorityInfo.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1B0E46C28();
  sub_1B0CCEACC(v8, a1);
  v4 = *(a2 + 16);
  MEMORY[0x1B2728D70](v4);
  if (v4)
  {
    v5 = (a2 + 40);
    do
    {
      v6 = *v5;
      v5 += 2;
      MEMORY[0x1B2728D70](v6);
      --v4;
    }

    while (v4);
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0CCE9A0(__int128 *a1)
{
  v2 = v1[1];
  sub_1B0CCEACC(a1, *v1);
  v3 = *(v2 + 16);
  result = MEMORY[0x1B2728D70](v3);
  if (v3)
  {
    v5 = (v2 + 40);
    do
    {
      v6 = *v5;
      v5 += 2;
      result = MEMORY[0x1B2728D70](v6);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1B0CCE9F8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B0E46C28();
  sub_1B0CCEACC(v7, v1);
  v3 = *(v2 + 16);
  MEMORY[0x1B2728D70](v3);
  if (v3)
  {
    v4 = (v2 + 40);
    do
    {
      v5 = *v4;
      v4 += 2;
      MEMORY[0x1B2728D70](v5);
      --v3;
    }

    while (v3);
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0CCEA70(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1B03DDD84(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1B0CCDE80(v2, v3);
}

uint64_t sub_1B0CCEACC(__int128 *a1, uint64_t a2)
{
  v15 = a1[2];
  v16 = a1[3];
  v17 = *(a1 + 8);
  v13 = *a1;
  v14 = a1[1];
  result = sub_1B0E46CB8();
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  for (i = (v6 + 63) >> 6; v8; v4 ^= result)
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = *(*(a2 + 48) + ((v10 << 10) | (16 * v11)) + 8);
    sub_1B0E46C28();
    MEMORY[0x1B2728D70](v12);
    result = sub_1B0E46CB8();
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {
      return MEMORY[0x1B2728D70](v4);
    }

    v8 = *(a2 + 56 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B0CCEC04()
{
  result = qword_1EB6E61F0;
  if (!qword_1EB6E61F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E61F0);
  }

  return result;
}

uint64_t sub_1B0CCEC68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t MessageMetadata.flags.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t MessageMetadata.flags.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2;
  return result;
}

uint64_t MessageMetadata.gmailLabels.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

void *MessageMetadata.messageHeader.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MessageMetadata(0) + 32));

  return sub_1B08768B8(v3, a1);
}

uint64_t MessageMetadata.messageHeader.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MessageMetadata(0) + 32);

  return sub_1B0B60A74(a1, v3);
}

uint64_t MessageMetadata.messageSize.setter(uint64_t a1)
{
  result = type metadata accessor for MessageMetadata(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t MessageMetadata.indexingHint.setter(char a1)
{
  result = type metadata accessor for MessageMetadata(0);
  *(v1 + *(result + 40)) = a1 & 1;
  return result;
}

uint64_t MessageMetadata.init(uid:internalDate:flags:gmailLabels:messageHeader:messageSize:indexingHint:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v17 = type metadata accessor for MessageMetadata(0);
  v18 = v17[8];
  v19 = type metadata accessor for MessageMetadata.UnparsedHeader(0);
  (*(*(v19 - 8) + 56))(a9 + v18, 1, 1, v19);
  *a9 = a1;
  *(a9 + 8) = a2;
  result = sub_1B0B60A74(a6, a9 + v18);
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + v17[9]) = a7;
  *(a9 + v17[10]) = a8 & 1;
  return result;
}

uint64_t MessageMetadata.UnparsedHeader.underlying.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MessageData.BodyData();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0CCF7CC(v1, v6);
  v7 = sub_1B0E443C8();
  return (*(*(v7 - 8) + 32))(a1, v6, v7);
}

uint64_t MessageMetadata.UnparsedHeader.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B0E443C8();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t MessageMetadata.IndexingHint.hashValue.getter(char a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1 & 1);
  return sub_1B0E46CB8();
}

uint64_t MessageMetadata.UnparsedHeader.count.getter()
{
  v1 = type metadata accessor for MessageData.BodyData();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B0E443C8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0CCF7CC(v0, v4);
  (*(v6 + 32))(v9, v4, v5);
  v10 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  (*(v6 + 8))(v9, v5);
  return v10;
}

uint64_t _s16IMAP2Persistence15MessageMetadataV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageMetadata.UnparsedHeader(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E26A0, &qword_1B0EA2DF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E61F8, &qword_1B0EE39A0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v36 - v16;
  if (*a2 != *a1 || *(a1 + 8) != *(a2 + 8))
  {
    goto LABEL_36;
  }

  v18 = v15;
  v19 = (*(a1 + 17) & 1) != 0 ? 256 : 0;
  v20 = (*(a1 + 18) & 1) != 0 ? 0x10000 : 0;
  v21 = (*(a1 + 19) & 1) != 0 ? 0x1000000 : 0;
  v22 = (*(a1 + 20) << 32) | (*(a1 + 21) << 40) | (*(a1 + 22) << 48) | *(a1 + 16) & 1 | v19 | v20 | v21 | (*(a1 + 23) << 56);
  v23 = (*(a2 + 17) & 1) != 0 ? 256 : 0;
  v24 = (*(a2 + 18) & 1) != 0 ? 0x10000 : 0;
  v25 = (*(a2 + 19) & 1) != 0 ? 0x1000000 : 0;
  if ((sub_1B0CC9810(v22, *(a1 + 24), (*(a2 + 20) << 32) | (*(a2 + 21) << 40) | (*(a2 + 22) << 48) | *(a2 + 16) & 1 | v23 | v24 | v25 | (*(a2 + 23) << 56), *(a2 + 24)) & 1) == 0)
  {
    goto LABEL_36;
  }

  v26 = *(a1 + 32);
  v27 = *(a2 + 32);
  if (v26)
  {
    if (!v27)
    {
      goto LABEL_36;
    }

    v28 = *(a2 + 32);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v29 = sub_1B0AFDF14(v26, v27);

    if ((v29 & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  else if (v27)
  {
LABEL_36:
    v34 = 0;
    return v34 & 1;
  }

  v37 = type metadata accessor for MessageMetadata(0);
  v30 = v37[8];
  v31 = *(v18 + 48);
  sub_1B08768B8((a1 + v30), v17);
  sub_1B08768B8((a2 + v30), &v17[v31]);
  v32 = *(v5 + 48);
  if (v32(v17, 1, v4) == 1)
  {
    if (v32(&v17[v31], 1, v4) == 1)
    {
      sub_1B0398EFC(v17, &qword_1EB6E26A0, &qword_1B0EA2DF0);
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  sub_1B08768B8(v17, v12);
  if (v32(&v17[v31], 1, v4) == 1)
  {
    sub_1B075CD68(v12);
LABEL_32:
    sub_1B0398EFC(v17, &qword_1EB6E61F8, &qword_1B0EE39A0);
    goto LABEL_36;
  }

  sub_1B075CC98(&v17[v31], v8);
  v33 = static MessageData.BodyData.== infix(_:_:)(v12, v8);
  sub_1B075CD68(v8);
  sub_1B075CD68(v12);
  sub_1B0398EFC(v17, &qword_1EB6E26A0, &qword_1B0EA2DF0);
  if ((v33 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_34:
  if (*(a1 + v37[9]) != *(a2 + v37[9]))
  {
    goto LABEL_36;
  }

  v34 = *(a1 + v37[10]) ^ *(a2 + v37[10]) ^ 1;
  return v34 & 1;
}

uint64_t sub_1B0CCF7CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageData.BodyData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B0CCF834()
{
  result = qword_1EB6E6200;
  if (!qword_1EB6E6200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6200);
  }

  return result;
}

void sub_1B0CCF8B0()
{
  sub_1B0CCF974();
  if (v0 <= 0x3F)
  {
    sub_1B0CCF9D8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B0CCF974()
{
  if (!qword_1EB6DADC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E6208, &qword_1B0EE3A88);
    v0 = sub_1B0E45D88();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6DADC0);
    }
  }
}

void sub_1B0CCF9D8()
{
  if (!qword_1EB6DCC28)
  {
    type metadata accessor for MessageMetadata.UnparsedHeader(255);
    v0 = sub_1B0E45D88();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6DCC28);
    }
  }
}

uint64_t sub_1B0CCFA58()
{
  result = type metadata accessor for MessageData.BodyData();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B0CCFAD8()
{
  v28 = sub_1B0E442C8();
  v0 = *(v28 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v29 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6220, &unk_1B0EE3E70);
  v3 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v5 = &v22 - v4;
  v6 = sub_1B0E442D8();
  result = sub_1B0E442D8();
  v8 = result;
  v9 = *(result + 16);
  v26 = *(v6 + 16);
  if (v26 == v9)
  {
    v10 = 0;
    v27 = v0 + 16;
    v23 = (v0 + 32);
    v24 = v6;
    while (1)
    {
      if (v26 == v10)
      {

        return 1;
      }

      if (v10 >= *(v6 + 16))
      {
        break;
      }

      v11 = (*(v0 + 80) + 32) & ~*(v0 + 80);
      v12 = *(v0 + 72) * v10;
      v13 = *(v0 + 16);
      result = v13(v29, v6 + v11 + v12, v28);
      v14 = *(v8 + 16);
      if (v10 == v14)
      {

        (*(v0 + 8))(v29, v28);
        return 1;
      }

      if (v10++ >= v14)
      {
        goto LABEL_17;
      }

      v15 = v8 + v11;
      v16 = &v5[*(v25 + 48)];
      v17 = v28;
      (*v23)(v5, v29, v28);
      v13(v16, v15 + v12, v17);
      v18 = sub_1B0E44298();
      if (v18 != sub_1B0E44298() || (v19 = sub_1B0E442B8(), v20 = sub_1B0E442B8(), v19 != v20))
      {
        sub_1B0398EFC(v5, &qword_1EB6E6220, &unk_1B0EE3E70);

        goto LABEL_13;
      }

      MEMORY[0x1EEE9AC00](v20);
      *(&v22 - 2) = v16;
      sub_1B0E442A8();
      v21 = v30;
      result = sub_1B0398EFC(v5, &qword_1EB6E6220, &unk_1B0EE3E70);
      v6 = v24;
      if ((v21 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_10:

LABEL_13:

    return 0;
  }

  return result;
}

uint64_t MessageSectionData.mailbox.getter()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

uint64_t MessageSectionData.mailbox.setter(uint64_t a1, int a2)
{
  v5 = *v2;

  *v2 = a1;
  *(v2 + 2) = a2;
  return result;
}

uint64_t MessageSectionData.section.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t MessageSectionData.segment.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MessageSectionData(0) + 28);

  return sub_1B07AB12C(v3, a1);
}

uint64_t MessageSectionData.segment.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MessageSectionData(0) + 28);

  return sub_1B0CD0F34(a1, v3);
}

uint64_t MessageSectionData.init(mailbox:message:section:segment:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 12) = a3;
  *(a6 + 16) = a4;
  v7 = a6 + *(type metadata accessor for MessageSectionData(0) + 28);

  return sub_1B0CD0F98(a5, v7);
}

uint64_t MessageSectionData.Segment.data.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B0E443C8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MessageSectionData.Segment.data.setter(uint64_t a1)
{
  v3 = sub_1B0E443C8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t MessageSectionData.Segment.isFinal.setter(char a1)
{
  result = type metadata accessor for MessageSectionData.Segment(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t MessageSectionData.Segment.initial.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MessageSectionData.Segment(0) + 24);

  return sub_1B0CD0FFC(a1, v3);
}

__n128 MessageSectionData.Segment.Initial.bodyStructure.setter(uint64_t a1)
{
  v3 = *(v1 + 144);
  v14[8] = *(v1 + 128);
  v14[9] = v3;
  v14[10] = *(v1 + 160);
  v15 = *(v1 + 176);
  v4 = *(v1 + 80);
  v14[4] = *(v1 + 64);
  v14[5] = v4;
  v5 = *(v1 + 112);
  v14[6] = *(v1 + 96);
  v14[7] = v5;
  v6 = *(v1 + 16);
  v14[0] = *v1;
  v14[1] = v6;
  v7 = *(v1 + 48);
  v14[2] = *(v1 + 32);
  v14[3] = v7;
  sub_1B075E728(v14);
  v8 = *(a1 + 144);
  *(v1 + 128) = *(a1 + 128);
  *(v1 + 144) = v8;
  *(v1 + 160) = *(a1 + 160);
  *(v1 + 176) = *(a1 + 176);
  v9 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v9;
  v10 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v10;
  v11 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v11;
  result = *(a1 + 32);
  v13 = *(a1 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v13;
  return result;
}

__n128 MessageSectionData.Segment.Initial.init(bodyStructure:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 144);
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 144) = v2;
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 176) = *(a1 + 176);
  v3 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v3;
  v4 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v4;
  v5 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v7;
  return result;
}

uint64_t sub_1B0CD03EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 144);
  v13[8] = *(a1 + 128);
  v13[9] = v2;
  v13[10] = *(a1 + 160);
  v14 = *(a1 + 176);
  v3 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v3;
  v4 = *(a1 + 112);
  v13[6] = *(a1 + 96);
  v13[7] = v4;
  v5 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v5;
  v6 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v6;
  v7 = *(a2 + 144);
  v15[8] = *(a2 + 128);
  v15[9] = v7;
  v15[10] = *(a2 + 160);
  v16 = *(a2 + 176);
  v8 = *(a2 + 80);
  v15[4] = *(a2 + 64);
  v15[5] = v8;
  v9 = *(a2 + 112);
  v15[6] = *(a2 + 96);
  v15[7] = v9;
  v10 = *(a2 + 16);
  v15[0] = *a2;
  v15[1] = v10;
  v11 = *(a2 + 48);
  v15[2] = *(a2 + 32);
  v15[3] = v11;
  return _s16IMAP2Persistence18MessageSectionDataV7SegmentV7InitialV23__derived_struct_equalsySbAG_AGtFZ_0(v13, v15) & 1;
}

uint64_t MessageSectionData.Segment.init(data:isFinal:initial:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for MessageSectionData.Segment(0);
  v9 = a4 + *(v8 + 24);
  sub_1B04FAA88(v17);
  v10 = v17[9];
  *(v9 + 128) = v17[8];
  *(v9 + 144) = v10;
  *(v9 + 160) = v17[10];
  *(v9 + 176) = v18;
  v11 = v17[5];
  *(v9 + 64) = v17[4];
  *(v9 + 80) = v11;
  v12 = v17[7];
  *(v9 + 96) = v17[6];
  *(v9 + 112) = v12;
  v13 = v17[1];
  *v9 = v17[0];
  *(v9 + 16) = v13;
  v14 = v17[3];
  *(v9 + 32) = v17[2];
  *(v9 + 48) = v14;
  v15 = sub_1B0E443C8();
  (*(*(v15 - 8) + 32))(a4, a1, v15);
  *(a4 + *(v8 + 20)) = a2;
  return sub_1B0CD0FFC(a3, v9);
}

uint64_t == infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageSectionData.Segment(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    goto LABEL_2;
  }

  v6 = (a1 + *(v4 + 24));
  v8 = v6[1];
  v7 = v6[2];
  v9 = v7;
  v48[3] = v6[3];
  v48[2] = v7;
  v11 = v6[5];
  v10 = v6[6];
  v12 = v10;
  v48[7] = v6[7];
  v48[6] = v10;
  v13 = v6[4];
  v14 = v6[3];
  v48[5] = v6[5];
  v48[4] = v13;
  v49 = *(v6 + 176);
  v15 = v6[9];
  v48[10] = v6[10];
  v16 = v6[8];
  v17 = v6[7];
  v48[9] = v6[9];
  v48[8] = v16;
  v18 = *v6;
  v19 = *v6;
  v48[1] = v6[1];
  v48[0] = v18;
  v20 = (a2 + *(v4 + 24));
  v21 = v20[9];
  v22 = v20[7];
  v57 = v20[8];
  v58 = v21;
  v23 = v20[9];
  v59 = v20[10];
  v24 = v20[5];
  v25 = v20[3];
  v53 = v20[4];
  v54 = v24;
  v26 = v20[5];
  v27 = v20[7];
  v55 = v20[6];
  v56 = v27;
  v28 = v20[1];
  v50[0] = *v20;
  v50[1] = v28;
  v29 = v20[3];
  v31 = *v20;
  v30 = v20[1];
  v51 = v20[2];
  v52 = v29;
  v32 = v6[9];
  __src[8] = v6[8];
  __src[9] = v32;
  __src[10] = v6[10];
  v33 = v6[5];
  __src[4] = v6[4];
  __src[5] = v33;
  v34 = v6[7];
  __src[6] = v6[6];
  __src[7] = v34;
  v35 = v6[1];
  __src[0] = *v6;
  __src[1] = v35;
  v36 = v6[3];
  __src[2] = v6[2];
  __src[3] = v36;
  v37 = v20[10];
  *(&__src[20] + 8) = v23;
  *(&__src[21] + 8) = v37;
  *(&__src[16] + 8) = v26;
  *(&__src[17] + 8) = v55;
  *(&__src[18] + 8) = v22;
  *(&__src[19] + 8) = v57;
  *(&__src[15] + 8) = v53;
  *(&__src[11] + 8) = v31;
  *(&__src[12] + 8) = v30;
  *(&__src[13] + 8) = v51;
  *(&__src[14] + 8) = v25;
  v61[8] = v16;
  v61[9] = v15;
  v61[10] = v6[10];
  v61[4] = v13;
  v61[5] = v11;
  v61[6] = v12;
  v61[7] = v17;
  v61[0] = v19;
  v61[1] = v8;
  v60 = *(v20 + 176);
  LOBYTE(__src[11]) = *(v6 + 176);
  BYTE8(__src[22]) = *(v20 + 176);
  v62 = *(v6 + 176);
  v61[2] = v9;
  v61[3] = v14;
  if (sub_1B07AB810(v61) == 1)
  {
    __dst[8] = *(&__src[19] + 8);
    __dst[9] = *(&__src[20] + 8);
    __dst[10] = *(&__src[21] + 8);
    LOBYTE(__dst[11]) = BYTE8(__src[22]);
    __dst[4] = *(&__src[15] + 8);
    __dst[5] = *(&__src[16] + 8);
    __dst[6] = *(&__src[17] + 8);
    __dst[7] = *(&__src[18] + 8);
    __dst[0] = *(&__src[11] + 8);
    __dst[1] = *(&__src[12] + 8);
    __dst[2] = *(&__src[13] + 8);
    __dst[3] = *(&__src[14] + 8);
    if (sub_1B07AB810(__dst) == 1)
    {
      v71 = __src[8];
      v72 = __src[9];
      v73 = __src[10];
      v74 = __src[11];
      v67 = __src[4];
      v68 = __src[5];
      v69 = __src[6];
      v70 = __src[7];
      v63 = __src[0];
      v64 = __src[1];
      v65 = __src[2];
      v66 = __src[3];
      sub_1B03B5C80(v48, v44, &qword_1EB6E4190, &unk_1B0EC3C70);
      sub_1B03B5C80(v50, v44, &qword_1EB6E4190, &unk_1B0EC3C70);
      sub_1B0398EFC(&v63, &qword_1EB6E4190, &unk_1B0EC3C70);
LABEL_9:
      v5 = sub_1B0CCFAD8();
      return v5 & 1;
    }

LABEL_7:
    memcpy(__dst, __src, 0x169uLL);
    sub_1B03B5C80(v48, &v63, &qword_1EB6E4190, &unk_1B0EC3C70);
    sub_1B03B5C80(v50, &v63, &qword_1EB6E4190, &unk_1B0EC3C70);
    sub_1B0398EFC(__dst, &qword_1EB6E6210, &qword_1B0EE3AB0);
    v5 = 0;
    return v5 & 1;
  }

  v44[8] = *(&__src[19] + 8);
  v44[9] = *(&__src[20] + 8);
  v44[10] = *(&__src[21] + 8);
  v45 = BYTE8(__src[22]);
  v44[4] = *(&__src[15] + 8);
  v44[5] = *(&__src[16] + 8);
  v44[6] = *(&__src[17] + 8);
  v44[7] = *(&__src[18] + 8);
  v44[0] = *(&__src[11] + 8);
  v44[1] = *(&__src[12] + 8);
  v44[2] = *(&__src[13] + 8);
  v44[3] = *(&__src[14] + 8);
  if (sub_1B07AB810(v44) == 1)
  {
    goto LABEL_7;
  }

  v40[8] = *(&__src[19] + 8);
  v40[9] = *(&__src[20] + 8);
  v40[10] = *(&__src[21] + 8);
  v40[4] = *(&__src[15] + 8);
  v40[5] = *(&__src[16] + 8);
  v40[6] = *(&__src[17] + 8);
  v40[7] = *(&__src[18] + 8);
  v40[0] = *(&__src[11] + 8);
  v40[1] = *(&__src[12] + 8);
  v40[2] = *(&__src[13] + 8);
  v40[3] = *(&__src[14] + 8);
  __dst[8] = *(&__src[19] + 8);
  __dst[9] = *(&__src[20] + 8);
  __dst[10] = *(&__src[21] + 8);
  __dst[4] = *(&__src[15] + 8);
  __dst[5] = *(&__src[16] + 8);
  __dst[6] = *(&__src[17] + 8);
  __dst[7] = *(&__src[18] + 8);
  __dst[0] = *(&__src[11] + 8);
  __dst[1] = *(&__src[12] + 8);
  v41 = BYTE8(__src[22]);
  LOBYTE(__dst[11]) = BYTE8(__src[22]);
  __dst[2] = *(&__src[13] + 8);
  __dst[3] = *(&__src[14] + 8);
  v71 = __src[8];
  v72 = __src[9];
  v73 = __src[10];
  v74 = __src[11];
  v67 = __src[4];
  v68 = __src[5];
  v69 = __src[6];
  v70 = __src[7];
  v63 = __src[0];
  v64 = __src[1];
  v65 = __src[2];
  v66 = __src[3];
  sub_1B03B5C80(v48, v42, &qword_1EB6E4190, &unk_1B0EC3C70);
  sub_1B03B5C80(v50, v42, &qword_1EB6E4190, &unk_1B0EC3C70);
  v38 = _s16IMAP2Persistence18MessageSectionDataV7SegmentV7InitialV23__derived_struct_equalsySbAG_AGtFZ_0(&v63, __dst);
  sub_1B0398EFC(v40, &qword_1EB6E4190, &unk_1B0EC3C70);
  v42[8] = __src[8];
  v42[9] = __src[9];
  v42[10] = __src[10];
  v43 = __src[11];
  v42[4] = __src[4];
  v42[5] = __src[5];
  v42[6] = __src[6];
  v42[7] = __src[7];
  v42[0] = __src[0];
  v42[1] = __src[1];
  v42[2] = __src[2];
  v42[3] = __src[3];
  sub_1B0398EFC(v42, &qword_1EB6E4190, &unk_1B0EC3C70);
  if (v38)
  {
    goto LABEL_9;
  }

LABEL_2:
  v5 = 0;
  return v5 & 1;
}

uint64_t sub_1B0CD0A74@<X0>(uint64_t __s2@<X0>, void *__s1@<X2>, uint64_t a3@<X3>, BOOL *a4@<X8>)
{
  if (__s1)
  {
    if (__s2)
    {
      __s2 = memcmp(__s1, __s2, a3 - __s1);
      *a4 = __s2 == 0;
      return __s2;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return __s2;
}

uint64_t _s16IMAP2Persistence18MessageSectionDataV7SegmentV7InitialV23__derived_struct_equalsySbAG_AGtFZ_0(__int128 *a1, uint64_t a2)
{
  v4 = a1[9];
  v5 = a1[7];
  __src[8] = a1[8];
  __src[9] = v4;
  v6 = a1[9];
  __src[10] = a1[10];
  v7 = a1[5];
  v8 = a1[3];
  __src[4] = a1[4];
  __src[5] = v7;
  v9 = a1[5];
  v10 = a1[7];
  __src[6] = a1[6];
  __src[7] = v10;
  v11 = a1[1];
  __src[0] = *a1;
  __src[1] = v11;
  v12 = a1[3];
  v14 = *a1;
  v13 = a1[1];
  __src[2] = a1[2];
  __src[3] = v12;
  v15 = *(a2 + 128);
  v16 = *(a2 + 160);
  *(&__src[20] + 8) = *(a2 + 144);
  *(&__src[21] + 8) = v16;
  v17 = *(a2 + 96);
  v18 = *(a2 + 112);
  v19 = *(a2 + 64);
  *(&__src[16] + 8) = *(a2 + 80);
  *(&__src[17] + 8) = v17;
  *(&__src[18] + 8) = v18;
  *(&__src[19] + 8) = v15;
  *(&__src[15] + 8) = v19;
  v20 = *(a2 + 16);
  *(&__src[11] + 8) = *a2;
  *(&__src[12] + 8) = v20;
  v21 = *(a2 + 48);
  *(&__src[13] + 8) = *(a2 + 32);
  *(&__src[14] + 8) = v21;
  v44[8] = __src[8];
  v44[9] = v6;
  v44[10] = a1[10];
  v44[4] = __src[4];
  v44[5] = v9;
  v44[6] = __src[6];
  v44[7] = v5;
  v44[0] = v14;
  v44[1] = v13;
  LOBYTE(__src[11]) = *(a1 + 176);
  BYTE8(__src[22]) = *(a2 + 176);
  v45 = *(a1 + 176);
  v44[2] = __src[2];
  v44[3] = v8;
  if (sub_1B075FACC(v44) != 1)
  {
    v28[8] = *(&__src[19] + 8);
    v28[9] = *(&__src[20] + 8);
    v28[10] = *(&__src[21] + 8);
    v29 = BYTE8(__src[22]);
    v28[4] = *(&__src[15] + 8);
    v28[5] = *(&__src[16] + 8);
    v28[6] = *(&__src[17] + 8);
    v28[7] = *(&__src[18] + 8);
    v28[0] = *(&__src[11] + 8);
    v28[1] = *(&__src[12] + 8);
    v28[2] = *(&__src[13] + 8);
    v28[3] = *(&__src[14] + 8);
    if (sub_1B075FACC(v28) != 1)
    {
      v24[8] = *(&__src[19] + 8);
      v24[9] = *(&__src[20] + 8);
      v24[10] = *(&__src[21] + 8);
      v24[4] = *(&__src[15] + 8);
      v24[5] = *(&__src[16] + 8);
      v24[6] = *(&__src[17] + 8);
      v24[7] = *(&__src[18] + 8);
      v24[0] = *(&__src[11] + 8);
      v24[1] = *(&__src[12] + 8);
      v24[2] = *(&__src[13] + 8);
      v24[3] = *(&__src[14] + 8);
      __dst[8] = *(&__src[19] + 8);
      __dst[9] = *(&__src[20] + 8);
      __dst[10] = *(&__src[21] + 8);
      __dst[4] = *(&__src[15] + 8);
      __dst[5] = *(&__src[16] + 8);
      __dst[6] = *(&__src[17] + 8);
      __dst[7] = *(&__src[18] + 8);
      __dst[0] = *(&__src[11] + 8);
      __dst[1] = *(&__src[12] + 8);
      v25 = BYTE8(__src[22]);
      LOBYTE(__dst[11]) = BYTE8(__src[22]);
      __dst[2] = *(&__src[13] + 8);
      __dst[3] = *(&__src[14] + 8);
      v40 = __src[8];
      v41 = __src[9];
      v42 = __src[10];
      v43 = __src[11];
      v36 = __src[4];
      v37 = __src[5];
      v38 = __src[6];
      v39 = __src[7];
      v32 = __src[0];
      v33 = __src[1];
      v34 = __src[2];
      v35 = __src[3];
      sub_1B075DC38(a1, v26);
      sub_1B075DC38(a2, v26);
      v22 = static BodyStructure.__derived_enum_equals(_:_:)(&v32, __dst);
      sub_1B0398EFC(v24, &qword_1EB6E4170, &qword_1B0EC3C60);
      v26[8] = __src[8];
      v26[9] = __src[9];
      v26[10] = __src[10];
      v27 = __src[11];
      v26[4] = __src[4];
      v26[5] = __src[5];
      v26[6] = __src[6];
      v26[7] = __src[7];
      v26[0] = __src[0];
      v26[1] = __src[1];
      v26[2] = __src[2];
      v26[3] = __src[3];
      sub_1B0398EFC(v26, &qword_1EB6E4170, &qword_1B0EC3C60);
      return v22 & 1;
    }

    goto LABEL_5;
  }

  __dst[8] = *(&__src[19] + 8);
  __dst[9] = *(&__src[20] + 8);
  __dst[10] = *(&__src[21] + 8);
  LOBYTE(__dst[11]) = BYTE8(__src[22]);
  __dst[4] = *(&__src[15] + 8);
  __dst[5] = *(&__src[16] + 8);
  __dst[6] = *(&__src[17] + 8);
  __dst[7] = *(&__src[18] + 8);
  __dst[0] = *(&__src[11] + 8);
  __dst[1] = *(&__src[12] + 8);
  __dst[2] = *(&__src[13] + 8);
  __dst[3] = *(&__src[14] + 8);
  if (sub_1B075FACC(__dst) != 1)
  {
LABEL_5:
    memcpy(__dst, __src, 0x169uLL);
    sub_1B075DC38(a1, &v32);
    sub_1B075DC38(a2, &v32);
    sub_1B0398EFC(__dst, &qword_1EB6E6218, &qword_1B0EE3E68);
    v22 = 0;
    return v22 & 1;
  }

  v40 = __src[8];
  v41 = __src[9];
  v42 = __src[10];
  v43 = __src[11];
  v36 = __src[4];
  v37 = __src[5];
  v38 = __src[6];
  v39 = __src[7];
  v32 = __src[0];
  v33 = __src[1];
  v34 = __src[2];
  v35 = __src[3];
  sub_1B075DC38(a1, v28);
  sub_1B075DC38(a2, v28);
  sub_1B0398EFC(&v32, &qword_1EB6E4170, &qword_1B0EC3C60);
  v22 = 1;
  return v22 & 1;
}

uint64_t _s16IMAP2Persistence18MessageSectionDataV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 8) | (*(a1 + 8) << 32)) != (*(a2 + 8) | (*(a2 + 8) << 32)))
  {
    return 0;
  }

  if ((sub_1B04520BC(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (*(a2 + 12) != *(a1 + 12))
  {
    return 0;
  }

  v4 = *(a2 + 16);
  if ((static SectionSpecifier.Part.__derived_struct_equals(_:_:)(*(a1 + 16)) & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for MessageSectionData(0) + 28);

  return == infix(_:_:)(a1 + v5, a2 + v5);
}

uint64_t sub_1B0CD0F34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageSectionData.Segment(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0CD0F98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageSectionData.Segment(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0CD0FFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4190, &unk_1B0EC3C70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_12NIOIMAPCore213BodyStructureOSg(uint64_t a1)
{
  v1 = *(a1 + 176);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0CD10D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 177))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 176);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_1B0CD111C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 176) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 177) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 177) = 0;
    }

    if (a2)
    {
      *(result + 176) = ~a2;
    }
  }

  return result;
}

uint64_t MessageSectionData.Concatenator.init(expectedMessageSize:inMemoryThreshold:baseDirectory:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(_s12ConcatenatorV5StateO6NoDataVMa(0) + 24);
  v7 = sub_1B0E42E68();
  (*(*(v7 - 8) + 32))(&a4[v6], a3, v7);
  _s12ConcatenatorV5StateOMa(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1B0CD1300(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B0E443C8();
  v170 = *(v4 - 8);
  v171 = v4;
  v5 = *(v170 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v178 = &v160 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = _s12ConcatenatorV5StateO9ReceivingVMa(0);
  v7 = *(*(v162 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v162);
  v169 = &v160 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v177 = &v160 - v10;
  v11 = sub_1B0E42E68();
  v172 = *(v11 - 8);
  v173 = v11;
  v12 = v172[8];
  v13 = MEMORY[0x1EEE9AC00](v11);
  v161 = &v160 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v165 = &v160 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v167 = &v160 - v17;
  v168 = _s13TemporaryDataOMa();
  v18 = *(*(v168 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v168);
  v176 = &v160 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v160 = (&v160 - v22);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v163 = &v160 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v164 = &v160 - v25;
  v166 = _s12ConcatenatorV5StateO6NoDataVMa(0);
  v26 = *(*(v166 - 8) + 64);
  MEMORY[0x1EEE9AC00](v166);
  v174 = (&v160 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = _s12ConcatenatorV5StateOMa(0);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = &v160 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v30);
  v181 = &v160 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v179 = &v160 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6228, &unk_1B0EE3EB8);
  v37 = v36 - 8;
  v38 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v160 - v39;
  v41 = type metadata accessor for MessageSectionData.Segment(0);
  v42 = (a1 + *(v41 + 24));
  v43 = v42[3];
  v210 = v42[2];
  v211 = v43;
  v44 = v42[7];
  v214 = v42[6];
  v215 = v44;
  v45 = v42[5];
  v212 = v42[4];
  v213 = v45;
  v219 = *(v42 + 176);
  v46 = v42[10];
  v217 = v42[9];
  v218 = v46;
  v216 = v42[8];
  v47 = v42[1];
  v208 = *v42;
  v209 = v47;
  v48 = *(v41 + 20);
  v175 = a1;
  v49 = *(a1 + v48);
  v50 = &v40[*(v37 + 56)];
  v51 = *(v37 + 72);
  v232 = v2;
  v52 = v2;
  v53 = v49;
  sub_1B0CD2CE0(v52, v40, _s12ConcatenatorV5StateOMa);
  v54 = v215;
  *(v50 + 6) = v214;
  *(v50 + 7) = v54;
  v55 = v213;
  *(v50 + 4) = v212;
  *(v50 + 5) = v55;
  v50[176] = v219;
  v56 = v218;
  *(v50 + 9) = v217;
  *(v50 + 10) = v56;
  *(v50 + 8) = v216;
  v57 = v209;
  *v50 = v208;
  *(v50 + 1) = v57;
  v58 = v211;
  *(v50 + 2) = v210;
  *(v50 + 3) = v58;
  v40[v51] = v53;
  v59 = v40;
  v60 = *(v50 + 9);
  v228 = *(v50 + 8);
  v229 = v60;
  v230 = *(v50 + 10);
  v231 = v50[176];
  v61 = *(v50 + 5);
  v224 = *(v50 + 4);
  v225 = v61;
  v62 = *(v50 + 7);
  v226 = *(v50 + 6);
  v227 = v62;
  v63 = *(v50 + 1);
  v220 = *v50;
  v221 = v63;
  v64 = *(v50 + 3);
  v222 = *(v50 + 2);
  v223 = v64;
  v182 = v28;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v69 = v176;
    v70 = v177;
    v179 = v32;
    v71 = v178;
    sub_1B0CD2CE0(v59, v181, _s12ConcatenatorV5StateOMa);
    v204 = v228;
    v205 = v229;
    v206 = v230;
    v207 = v231;
    v200 = v224;
    v201 = v225;
    v202 = v226;
    v203 = v227;
    v196 = v220;
    v197 = v221;
    v198 = v222;
    v199 = v223;
    if (sub_1B07AB810(&v196) != 1)
    {
      sub_1B07AB440(&v208, &v184);
      sub_1B0CD2C18(v232, _s12ConcatenatorV5StateOMa);
      v67 = _s12ConcatenatorV5StateO9ReceivingVMa;
      v68 = v181;
      goto LABEL_13;
    }

    if (v53)
    {
      v72 = v169;
      sub_1B0CD2C78(v181, v169, _s12ConcatenatorV5StateO9ReceivingVMa);
      sub_1B07AB440(&v208, &v184);
      v73 = v180;
      sub_1B0CD2DFC();
      if (!v73)
      {
        v119 = v72;
        v120 = v69;
        sub_1B0CD2CE0(v119, v69, _s13TemporaryDataOMa);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1B0CD2C18(v232, _s12ConcatenatorV5StateOMa);
          v121 = v170;
          v122 = v71;
          (*(v170 + 32))(v71, v120, v171);
          v123 = v179;
        }

        else
        {
          v122 = v71;
          static DispatchData.makeMappedRead(fileDescriptor:count:)(*(*v69 + 16), *(*v69 + 24));
          v121 = v170;
          v123 = v179;

          sub_1B0CD2C18(v232, _s12ConcatenatorV5StateOMa);
        }

        v142 = v169;
        v143 = (v169 + *(v162 + 20));
        v144 = v143[9];
        v192 = v143[8];
        v193 = v144;
        v194 = v143[10];
        v195 = *(v143 + 176);
        v145 = v143[5];
        v188 = v143[4];
        v189 = v145;
        v146 = v143[7];
        v190 = v143[6];
        v191 = v146;
        v147 = v143[1];
        v184 = *v143;
        v185 = v147;
        v148 = v143[3];
        v186 = v143[2];
        v187 = v148;
        sub_1B075DC38(&v184, v183);
        sub_1B0CD2C18(v142, _s12ConcatenatorV5StateO9ReceivingVMa);
        (*(v121 + 32))(v123, v122, v171);
        v149 = v123 + *(type metadata accessor for MessageSectionData.Concatenator.Completed(0) + 20);
        v150 = v193;
        *(v149 + 128) = v192;
        *(v149 + 144) = v150;
        *(v149 + 160) = v194;
        *(v149 + 176) = v195;
        v151 = v189;
        *(v149 + 64) = v188;
        *(v149 + 80) = v151;
        v152 = v191;
        *(v149 + 96) = v190;
        *(v149 + 112) = v152;
        v153 = v185;
        *v149 = v184;
        *(v149 + 16) = v153;
        v154 = v187;
        *(v149 + 32) = v186;
        *(v149 + 48) = v154;
        swift_storeEnumTagMultiPayload();
        sub_1B0CD2C78(v123, v232, _s12ConcatenatorV5StateOMa);
        goto LABEL_31;
      }

      v74 = v72;
    }

    else
    {
      sub_1B0CD2C78(v181, v70, _s12ConcatenatorV5StateO9ReceivingVMa);
      sub_1B07AB440(&v208, &v184);
      v111 = v180;
      sub_1B0CD2DFC();
      if (!v111)
      {
        v124 = v232;
        sub_1B0CD2C18(v232, _s12ConcatenatorV5StateOMa);
        sub_1B0CD2C78(v70, v124, _s12ConcatenatorV5StateO9ReceivingVMa);
        swift_storeEnumTagMultiPayload();
        goto LABEL_31;
      }

      v74 = v70;
    }

    sub_1B0CD2C18(v74, _s12ConcatenatorV5StateO9ReceivingVMa);
    v112 = *(v50 + 9);
    v192 = *(v50 + 8);
    v193 = v112;
    v194 = *(v50 + 10);
    v195 = v50[176];
    v113 = *(v50 + 5);
    v188 = *(v50 + 4);
    v189 = v113;
    v114 = *(v50 + 7);
    v190 = *(v50 + 6);
    v191 = v114;
    v115 = *(v50 + 1);
    v184 = *v50;
    v185 = v115;
    v116 = *(v50 + 3);
    v186 = *(v50 + 2);
    v187 = v116;
    v117 = &v184;
LABEL_32:
    sub_1B0398EFC(v117, &qword_1EB6E4190, &unk_1B0EC3C70);
    v134 = v59;
    return sub_1B0CD2C18(v134, _s12ConcatenatorV5StateOMa);
  }

  if (EnumCaseMultiPayload)
  {
    sub_1B07AB440(&v208, &v196);
    v67 = _s12ConcatenatorV5StateOMa;
    v68 = v232;
    goto LABEL_13;
  }

  v66 = v179;
  sub_1B0CD2CE0(v40, v179, _s12ConcatenatorV5StateOMa);
  v204 = v228;
  v205 = v229;
  v206 = v230;
  v207 = v231;
  v200 = v224;
  v201 = v225;
  v202 = v226;
  v203 = v227;
  v196 = v220;
  v197 = v221;
  v198 = v222;
  v199 = v223;
  if (sub_1B07AB810(&v196) == 1)
  {
    sub_1B07AB440(&v208, &v184);
    sub_1B0CD2C18(v232, _s12ConcatenatorV5StateOMa);
    v67 = _s12ConcatenatorV5StateO6NoDataVMa;
    v68 = v66;
LABEL_13:
    sub_1B0CD2C18(v68, v67);
    swift_storeEnumTagMultiPayload();
    v82 = v42[9];
    v204 = v42[8];
    v205 = v82;
    v206 = v42[10];
    v207 = *(v42 + 176);
    v83 = v42[5];
    v200 = v42[4];
    v201 = v83;
    v84 = v42[7];
    v202 = v42[6];
    v203 = v84;
    v85 = v42[1];
    v196 = *v42;
    v197 = v85;
    v86 = v42[3];
    v198 = v42[2];
    v199 = v86;
    v87 = sub_1B07AB810(&v196) == 0;
    sub_1B0CD2BC4();
    swift_allocError();
    *v88 = v87;
    v88[1] = v53;
    swift_willThrow();
    return sub_1B0398EFC(v59, &qword_1EB6E6228, &unk_1B0EE3EB8);
  }

  if (v53)
  {
    sub_1B07AB440(&v208, &v184);
    v75 = v232;
    sub_1B0CD2C18(v232, _s12ConcatenatorV5StateOMa);
    (*(v170 + 16))(v75, v175, v171);
    v76 = v75 + *(type metadata accessor for MessageSectionData.Concatenator.Completed(0) + 20);
    v77 = v205;
    *(v76 + 128) = v204;
    *(v76 + 144) = v77;
    *(v76 + 160) = v206;
    *(v76 + 176) = v207;
    v78 = v201;
    *(v76 + 64) = v200;
    *(v76 + 80) = v78;
    v79 = v203;
    *(v76 + 96) = v202;
    *(v76 + 112) = v79;
    v80 = v197;
    *v76 = v196;
    *(v76 + 16) = v80;
    v81 = v199;
    *(v76 + 32) = v198;
    *(v76 + 48) = v81;
    swift_storeEnumTagMultiPayload();
    v192 = v228;
    v193 = v229;
    v194 = v230;
    v195 = v231;
    v188 = v224;
    v189 = v225;
    v190 = v226;
    v191 = v227;
    v184 = v220;
    v185 = v221;
    v186 = v222;
    v187 = v223;
    sub_1B075DC38(&v184, v183);
    sub_1B0CD2C18(v66, _s12ConcatenatorV5StateO6NoDataVMa);
LABEL_31:
    v155 = *(v50 + 9);
    v204 = *(v50 + 8);
    v205 = v155;
    v206 = *(v50 + 10);
    v207 = v50[176];
    v156 = *(v50 + 5);
    v200 = *(v50 + 4);
    v201 = v156;
    v157 = *(v50 + 7);
    v202 = *(v50 + 6);
    v203 = v157;
    v158 = *(v50 + 1);
    v196 = *v50;
    v197 = v158;
    v159 = *(v50 + 3);
    v198 = *(v50 + 2);
    v199 = v159;
    v117 = &v196;
    goto LABEL_32;
  }

  v181 = v40;
  v90 = v174;
  sub_1B0CD2C78(v66, v174, _s12ConcatenatorV5StateO6NoDataVMa);
  v91 = *v90;
  v92 = v90[1];
  v93 = *(v166 + 24);
  v94 = v172;
  v95 = v172[2];
  v96 = v167;
  v95();
  if (v92 >= v91)
  {
    sub_1B07AB440(&v208, &v184);
    sub_1B07AB440(&v220, &v184);
    v118 = v163;
    sub_1B0E44378();
    (v94[1])(v96, v173);
    swift_storeEnumTagMultiPayload();
    v103 = v180;
  }

  else
  {
    v97 = v96;
    v98 = v173;
    (v95)(v165, v96, v173);
    v179 = _s13TemporaryFileCMa();
    v99 = swift_allocObject();
    *(v99 + 24) = 0;
    sub_1B07AB440(&v208, &v184);
    sub_1B07AB440(&v220, &v184);
    v100 = v161;
    v101 = v180;
    v102 = static URL.makeTemporaryFile(baseDirectory:pathExtension:)(v161);
    v103 = v101;
    if (v101)
    {
      sub_1B0398EFC(&v220, &qword_1EB6E4190, &unk_1B0EC3C70);
      v104 = v97;
      v105 = v172[1];
      v105(v165, v98);
      v105(v104, v98);
      sub_1B0CD2C18(v174, _s12ConcatenatorV5StateO6NoDataVMa);
      swift_deallocPartialClassInstance();
      v106 = *(v50 + 9);
      v192 = *(v50 + 8);
      v193 = v106;
      v194 = *(v50 + 10);
      v195 = v50[176];
      v107 = *(v50 + 5);
      v188 = *(v50 + 4);
      v189 = v107;
      v108 = *(v50 + 7);
      v190 = *(v50 + 6);
      v191 = v108;
      v109 = *(v50 + 1);
      v184 = *v50;
      v185 = v109;
      v110 = *(v50 + 3);
      v186 = *(v50 + 2);
      v187 = v110;
      goto LABEL_27;
    }

    *(v99 + 16) = v102;
    MEMORY[0x1B2725C30]();
    sub_1B0CD315C();
    v125 = v100;
    v126 = v172[1];
    v126(v125, v98);
    v126(v165, v98);
    v126(v97, v98);
    v127 = v160;
    *v160 = v99;
    swift_storeEnumTagMultiPayload();
    v118 = v163;
    sub_1B0CD2C78(v127, v163, _s13TemporaryDataOMa);
  }

  v128 = v164;
  sub_1B0CD2C78(v118, v164, _s13TemporaryDataOMa);
  sub_1B0CD2DFC();
  if (!v103)
  {
    v135 = v232;
    sub_1B0CD2C18(v232, _s12ConcatenatorV5StateOMa);
    sub_1B0CD2C18(v174, _s12ConcatenatorV5StateO6NoDataVMa);
    sub_1B0CD2C78(v128, v135, _s13TemporaryDataOMa);
    v136 = v135 + *(v162 + 20);
    v137 = v205;
    *(v136 + 128) = v204;
    *(v136 + 144) = v137;
    *(v136 + 160) = v206;
    *(v136 + 176) = v207;
    v138 = v201;
    *(v136 + 64) = v200;
    *(v136 + 80) = v138;
    v139 = v203;
    *(v136 + 96) = v202;
    *(v136 + 112) = v139;
    v140 = v197;
    *v136 = v196;
    *(v136 + 16) = v140;
    v141 = v199;
    *(v136 + 32) = v198;
    *(v136 + 48) = v141;
    swift_storeEnumTagMultiPayload();
    v59 = v181;
    goto LABEL_31;
  }

  sub_1B0398EFC(&v220, &qword_1EB6E4190, &unk_1B0EC3C70);
  sub_1B0CD2C18(v128, _s13TemporaryDataOMa);
  sub_1B0CD2C18(v174, _s12ConcatenatorV5StateO6NoDataVMa);
  v129 = *(v50 + 9);
  v192 = *(v50 + 8);
  v193 = v129;
  v194 = *(v50 + 10);
  v195 = v50[176];
  v130 = *(v50 + 5);
  v188 = *(v50 + 4);
  v189 = v130;
  v131 = *(v50 + 7);
  v190 = *(v50 + 6);
  v191 = v131;
  v132 = *(v50 + 1);
  v184 = *v50;
  v185 = v132;
  v133 = *(v50 + 3);
  v186 = *(v50 + 2);
  v187 = v133;
LABEL_27:
  sub_1B0398EFC(&v184, &qword_1EB6E4190, &unk_1B0EC3C70);
  v134 = v181;
  return sub_1B0CD2C18(v134, _s12ConcatenatorV5StateOMa);
}

uint64_t MessageSectionData.Concatenator.completed.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = _s12ConcatenatorV5StateOMa(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0CD2CE0(v2, v7, _s12ConcatenatorV5StateOMa);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_1B0CD2C78(v7, a1, type metadata accessor for MessageSectionData.Concatenator.Completed);
    v8 = 0;
  }

  else
  {
    sub_1B0CD2C18(v7, _s12ConcatenatorV5StateOMa);
    v8 = 1;
  }

  v9 = type metadata accessor for MessageSectionData.Concatenator.Completed(0);
  return (*(*(v9 - 8) + 56))(a1, v8, 1, v9);
}

uint64_t MessageSectionData.Concatenator.Completed.data.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B0E443C8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MessageSectionData.Concatenator.Completed.data.setter(uint64_t a1)
{
  v3 = sub_1B0E443C8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t *MessageSectionData.Concatenator.Completed.initial.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MessageSectionData.Concatenator.Completed(0) + 20));

  return sub_1B075DC38(v3, a1);
}

uint64_t *MessageSectionData.Concatenator.Completed.initial.setter(unsigned __int8 *a1)
{
  v3 = (v1 + *(type metadata accessor for MessageSectionData.Concatenator.Completed(0) + 20));

  return sub_1B075DEC8(a1, v3);
}

__n128 MessageSectionData.Concatenator.Completed.init(data:initial:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1B0E443C8();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = a3 + *(type metadata accessor for MessageSectionData.Concatenator.Completed(0) + 20);
  v8 = *(a2 + 144);
  *(v7 + 128) = *(a2 + 128);
  *(v7 + 144) = v8;
  *(v7 + 160) = *(a2 + 160);
  *(v7 + 176) = *(a2 + 176);
  v9 = *(a2 + 80);
  *(v7 + 64) = *(a2 + 64);
  *(v7 + 80) = v9;
  v10 = *(a2 + 112);
  *(v7 + 96) = *(a2 + 96);
  *(v7 + 112) = v10;
  v11 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v11;
  result = *(a2 + 32);
  v13 = *(a2 + 48);
  *(v7 + 32) = result;
  *(v7 + 48) = v13;
  return result;
}

uint64_t sub_1B0CD2794()
{
  result = _s12ConcatenatorV5StateOMa(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B0CD2840()
{
  result = _s12ConcatenatorV5StateO6NoDataVMa(319);
  if (v1 <= 0x3F)
  {
    result = _s12ConcatenatorV5StateO9ReceivingVMa(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for MessageSectionData.Concatenator.Completed(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_8Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20) + 176);
    if (v11 <= 1)
    {
      return 0;
    }

    else
    {
      return v11 ^ 0xFF;
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_9Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 176) = ~a2;
  }

  return result;
}

uint64_t sub_1B0CD2AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B0CD2B48()
{
  result = sub_1B0E42E68();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B0CD2BC4()
{
  result = qword_1EB6E6230;
  if (!qword_1EB6E6230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6230);
  }

  return result;
}

uint64_t sub_1B0CD2C18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0CD2C78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0CD2CE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s12ConcatenatorV5StateO25ReceivedOutOfOrderSegmentVwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1B0CD2DFC()
{
  v1 = sub_1B0E443C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s13TemporaryDataOMa();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0CD33A8(v0, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B0CD340C(v0);
    v10 = *(v2 + 32);
    v10(v5, v9, v1);
    sub_1B0E44388();
    v10(v0, v5, v1);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    v12 = *v9;
    sub_1B0CD2FAC();
  }
}

uint64_t sub_1B0CD2FAC()
{
  v1 = sub_1B0E442C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1B0E442D8();
  v7 = result;
  v8 = *(result + 16);
  if (!v8)
  {
  }

  v9 = 0;
  v11[1] = v2 + 16;
  v10 = (v2 + 8);
  while (v9 < *(v7 + 16))
  {
    (*(v2 + 16))(v5, v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v9, v1);
    sub_1B0E442A8();
    if (v0)
    {
      (*v10)(v5, v1);
    }

    ++v9;
    result = (*v10)(v5, v1);
    if (v8 == v9)
    {
    }
  }

  __break(1u);
  return result;
}

void sub_1B0CD315C()
{
  v9[1] = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_1B0E42D58();
  v9[0] = 0;
  v2 = [v0 removeItemAtURL:v1 error:v9];

  v3 = v9[0];
  if (v2)
  {
    v4 = *MEMORY[0x1E69E9840];

    v5 = v3;
  }

  else
  {
    v6 = v9[0];
    v7 = sub_1B0E42CD8();

    swift_willThrow();
    v8 = *MEMORY[0x1E69E9840];
  }
}

uint64_t sub_1B0CD327C()
{
  v1 = *(v0 + 16);
  if ((sub_1B0E43B38() & 0x100000000) != 0)
  {
    sub_1B09179C4();
    swift_willThrowTypedImpl();
  }

  return swift_deallocClassInstance();
}

uint64_t _s13TemporaryDataOMa()
{
  result = qword_1EB6DCAA8;
  if (!qword_1EB6DCAA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B0CD3340()
{
  _s13TemporaryFileCMa();
  result = sub_1B0E443C8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B0CD33A8(uint64_t a1, uint64_t a2)
{
  v4 = _s13TemporaryDataOMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0CD340C(uint64_t a1)
{
  v2 = _s13TemporaryDataOMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B0CD3468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  result = sub_1B0E43B48();
  if (v6)
  {
    v7 = result;
    sub_1B09179C4();
    swift_willThrowTypedImpl();
    result = swift_allocError();
    *v8 = v7;
  }

  else
  {
    v9 = *(a3 + 24);
    v10 = __OFADD__(v9, result);
    v11 = v9 + result;
    if (v10)
    {
      __break(1u);
    }

    else
    {
      *(a3 + 24) = v11;
    }
  }

  return result;
}

uint64_t sub_1B0CD3540()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1B0E46C28();
  sub_1B0E46C68();
  if (v2 != 1)
  {
    MEMORY[0x1B2728D70](v1);
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0CD35B0()
{
  if (*(v0 + 8) == 1)
  {
    return sub_1B0E46C68();
  }

  v2 = *v0;
  sub_1B0E46C68();
  return MEMORY[0x1B2728D70](v2);
}

uint64_t sub_1B0CD3600()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1B0E46C28();
  sub_1B0E46C68();
  if (v2 != 1)
  {
    MEMORY[0x1B2728D70](v1);
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0CD366C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *a2;
  }

  if (*(a1 + 8))
  {
    return *(a2 + 8);
  }

  else
  {
    return (*a1 == v3) & ~v2;
  }
}

uint64_t MessageSize.init(rawValue:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_1B0CD36AC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *(result + 8);
  if (v3)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void sub_1B0CD36CC(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *v1;
  }

  *a1 = v3;
  *(a1 + 8) = v2;
}

unint64_t sub_1B0CD3704()
{
  result = qword_1EB6E6238;
  if (!qword_1EB6E6238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6238);
  }

  return result;
}

uint64_t MessageToDownload.size.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t MessageToDownload.BodyStructure.hashValue.getter(char a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1 & 1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CD38D0(unsigned int *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 17))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  if (*(a2 + 17))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return sub_1B0CD3920(*a1, *(a1 + 1), v3 | *(a1 + 16), *a2, *(a2 + 8), v4 | *(a2 + 16));
}

uint64_t sub_1B0CD3920(int a1, uint64_t a2, __int16 a3, int a4, uint64_t a5, __int16 a6)
{
  if (a4 != a1)
  {
    return 0;
  }

  if (a3)
  {
    if ((a6 & 1) == 0)
    {
      return 0;
    }

    return ((a6 & 0x100) == 0) ^ ((a3 & 0x100) >> 8);
  }

  result = 0;
  if (a6)
  {
    v7 = 0;
  }

  else
  {
    v7 = a5;
  }

  if ((a6 & 1) == 0 && v7 == a2)
  {
    return ((a6 & 0x100) == 0) ^ ((a3 & 0x100) >> 8);
  }

  return result;
}

unint64_t sub_1B0CD3968()
{
  result = qword_1EB6E6240;
  if (!qword_1EB6E6240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6240);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MessageToDownload(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 18))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 17);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t MoveOrCopy.Operation.hashValue.getter(char a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1 & 1);
  return sub_1B0E46CB8();
}

uint64_t static MoveOrCopy.Result.__derived_enum_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, int a4)
{
  v4 = a4 & (a3 == 0);
  if (a1)
  {
    v4 = a4 & (a3 != 0);
  }

  if (a2)
  {
    return v4;
  }

  else
  {
    return (a3 == a1) & ~a4;
  }
}

uint64_t MoveOrCopy.Result.hash(into:)(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return MEMORY[0x1B2728D70](a2 != 0);
  }

  MEMORY[0x1B2728D70](2);
  sub_1B0E46C88();
  return sub_1B0E46C88();
}

uint64_t MoveOrCopy.Result.hashValue.getter(uint64_t a1, char a2)
{
  sub_1B0E46C28();
  if (a2)
  {
    MEMORY[0x1B2728D70](a1 != 0);
  }

  else
  {
    MEMORY[0x1B2728D70](2);
    sub_1B0E46C88();
    sub_1B0E46C88();
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0CD3BC8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1B0E46C28();
  if (v2 == 1)
  {
    MEMORY[0x1B2728D70](v1 != 0);
  }

  else
  {
    MEMORY[0x1B2728D70](2);
    sub_1B0E46C88();
    sub_1B0E46C88();
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0CD3C5C()
{
  if (*(v0 + 8) == 1)
  {
    return MEMORY[0x1B2728D70](*v0 != 0);
  }

  MEMORY[0x1B2728D70](2);
  sub_1B0E46C88();
  return sub_1B0E46C88();
}

uint64_t sub_1B0CD3CCC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1B0E46C28();
  if (v2 == 1)
  {
    MEMORY[0x1B2728D70](v1 != 0);
  }

  else
  {
    MEMORY[0x1B2728D70](2);
    sub_1B0E46C88();
    sub_1B0E46C88();
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0CD3D5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a2 == *a1) & ~v2;
  if (*a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a2 + 8);
  }

  if (!*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v2;
  }

  else
  {
    v5 = v4;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t MoveOrCopy.targetMailbox.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

uint64_t MoveOrCopy.targetMailbox.setter(uint64_t a1, int a2)
{
  v5 = *(v2 + 8);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t MoveOrCopy.targetMessage.getter()
{
  v1 = *(v0 + 24);
  sub_1B03B2000(v1, *(v0 + 32));
  return v1;
}

uint64_t MoveOrCopy.targetMessage.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B0391D50(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t MoveOrCopy.init(operation:sourceMessage:targetMailbox:targetMessage:)@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result & 1;
  *(a7 + 4) = a2;
  *(a7 + 8) = a3;
  *(a7 + 16) = a4;
  *(a7 + 24) = a5;
  *(a7 + 32) = a6;
  return result;
}

uint64_t MoveOrCopy.hash(into:)()
{
  MEMORY[0x1B2728D70](*v0);
  v1 = *(v0 + 1);
  sub_1B0E46C88();
  MEMORY[0x1B2728D70](*(v0 + 4) | (*(v0 + 4) << 32));
  v2 = *(v0 + 3);
  v3 = *(v0 + 4);

  return sub_1B0E42F48();
}

uint64_t MoveOrCopy.hashValue.getter()
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](*v0);
  v1 = *(v0 + 1);
  sub_1B0E46C88();
  MEMORY[0x1B2728D70](*(v0 + 4) | (*(v0 + 4) << 32));
  v2 = *(v0 + 3);
  v3 = *(v0 + 4);
  sub_1B0E42F48();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CD3FF8()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 4);
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v1);
  sub_1B0E46C88();
  MEMORY[0x1B2728D70](v3 | (v3 << 32));
  sub_1B0E42F48();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CD4084()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 4);
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  MEMORY[0x1B2728D70](*v0);
  sub_1B0E46C88();
  MEMORY[0x1B2728D70](v2 | (v2 << 32));

  return sub_1B0E42F48();
}

uint64_t sub_1B0CD40F8()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 4);
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v1);
  sub_1B0E46C88();
  MEMORY[0x1B2728D70](v3 | (v3 << 32));
  sub_1B0E42F48();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CD4180(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s16IMAP2Persistence10MoveOrCopyV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v7) & 1;
}

uint64_t _s16IMAP2Persistence10MoveOrCopyV23__derived_struct_equalsySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || *(a2 + 1) != *(a1 + 1) || (*(a1 + 4) | (*(a1 + 4) << 32)) != (*(a2 + 4) | (*(a2 + 4) << 32)) || (sub_1B04520BC(*(a1 + 1), *(a2 + 1)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 3);
  v5 = *(a1 + 4);
  v6 = *(a2 + 3);
  v7 = *(a2 + 4);

  return sub_1B0AB8858(v4, v5, v6, v7);
}

unint64_t sub_1B0CD426C()
{
  result = qword_1EB6E6248;
  if (!qword_1EB6E6248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6248);
  }

  return result;
}

unint64_t sub_1B0CD42C4()
{
  result = qword_1EB6E6250;
  if (!qword_1EB6E6250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E6250);
  }

  return result;
}

unint64_t sub_1B0CD431C()
{
  result = qword_1EB6DCCF0;
  if (!qword_1EB6DCCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCCF0);
  }

  return result;
}

uint64_t static OpaqueMailboxID.== infix(_:_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a4)
  {
    return 0;
  }

  v4 = *(result + 16);
  if (v4 != *(a3 + 16))
  {
    return 0;
  }

  if (!v4 || result == a3)
  {
    return 1;
  }

  v5 = (result + 32);
  v6 = (a3 + 32);
  while (v4)
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v6++;
    result = v7 == v9;
    if (v7 != v9 || v4-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t OpaqueMailboxID.init(rawValue:)(uint64_t a1)
{
  sub_1B0E46CC8();
  v2 = *(a1 + 16);
  sub_1B0E46C38();
  sub_1B0E46CA8();
  return a1;
}

uint64_t sub_1B0CD4464@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_1B0E46CC8();
  v4 = *(v3 + 16);
  sub_1B0E46C38();
  result = sub_1B0E46CA8();
  *a2 = v3;
  a2[1] = result;
  return result;
}

uint64_t OpaqueMailboxID.description.getter(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    MEMORY[0x1B2726D20](2 * v1);
    if (v1)
    {
      v3 = (v2 + 32);
      sub_1B0BA1E94();
      do
      {
        v4 = *v3++;
        v5 = sub_1B0E44E98();
        MEMORY[0x1B2726E80](v5);

        --v1;
      }

      while (v1);
    }

    return 0;
  }

  return result;
}

uint64_t OpaquePersistedMessageIdentifier.rawValue.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B0391D50(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_1B0CD467C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B0E46C28();
  sub_1B0E42F48();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CD46C8()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1B0E42F48();
}

uint64_t sub_1B0CD46D0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B0E46C28();
  sub_1B0E42F48();
  return sub_1B0E46CB8();
}

uint64_t OpaquePersistedMessageIdentifier.description.getter(uint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v5 = 0;
    if (v4 != 2)
    {
LABEL_11:
      MEMORY[0x1B2726D20](2 * v5);
      sub_1B0CD4870(v3, a2);
      return 0;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v8 = __OFSUB__(v6, v7);
    v5 = v6 - v7;
    if (!v8)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v5 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v5) = HIDWORD(result) - result;
  if (__OFSUB__(HIDWORD(result), result))
  {
    goto LABEL_13;
  }

  v5 = v5;
LABEL_10:
  if (v5 + 0x4000000000000000 >= 0)
  {
    goto LABEL_11;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1B0CD47D0(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    v3 = a2 - result;
    if (a2 != result)
    {
      sub_1B0BA1E94();
      do
      {
        v4 = *v2++;
        v5 = sub_1B0E44E98();
        MEMORY[0x1B2726E80](v5);

        --v3;
      }

      while (v3);
    }
  }

  return result;
}

uint64_t sub_1B0CD4870(uint64_t result, unint64_t a2)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      memset(v10, 0, 14);
      result = sub_1B0CD47D0(v10, v10);
      goto LABEL_12;
    }

    v7 = *(result + 16);
    v8 = *(result + 24);
    goto LABEL_10;
  }

  if (v2)
  {
    v7 = result;
    v8 = result >> 32;
    if (result >> 32 < result)
    {
      __break(1u);
    }

LABEL_10:
    result = sub_1B0CD4A70(v7, v8);
    goto LABEL_12;
  }

  v10[0] = result;
  LOWORD(v10[1]) = a2;
  BYTE2(v10[1]) = BYTE2(a2);
  BYTE3(v10[1]) = BYTE3(a2);
  BYTE4(v10[1]) = BYTE4(a2);
  v3 = BYTE6(a2);
  BYTE5(v10[1]) = BYTE5(a2);
  if (BYTE6(a2))
  {
    v4 = v10;
    sub_1B0BA1E94();
    do
    {
      v5 = *v4++;
      v6 = sub_1B0E44E98();
      MEMORY[0x1B2726E80](v6);

      --v3;
    }

    while (v3);
  }

LABEL_12:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1B0CD4A0C()
{
  result = qword_1EB6DCA10;
  if (!qword_1EB6DCA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DCA10);
  }

  return result;
}

uint64_t sub_1B0CD4A70(uint64_t a1, uint64_t a2)
{
  result = sub_1B0E42A98();
  v5 = result;
  if (result)
  {
    result = sub_1B0E42AC8();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v5 += a1 - result;
  }

  v6 = __OFSUB__(a2, a1);
  v7 = a2 - a1;
  if (v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = sub_1B0E42AB8();
  if (v8 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = v9 + v5;
  if (v5)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return sub_1B0CD47D0(v5, v11);
}

uint64_t sub_1B0CD4B14(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v29 = MEMORY[0x1E69E7CC0];
    sub_1B041D32C(0, v2, 0);
    v4 = v29;
    v5 = v1 + 56;
    v6 = -1 << *(v1 + 32);
    result = sub_1B0E460B8();
    v7 = result;
    v8 = 0;
    v24 = v1 + 64;
    v25 = v2;
    v26 = v1 + 56;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v1 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_22;
      }

      v27 = v8;
      v28 = *(v1 + 36);
      v11 = *(*(v1 + 48) + 8 * v7);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      MEMORY[0x1B2726E80](39, 0xE100000000000000);
      sub_1B0E46508();
      MEMORY[0x1B2726E80](39, 0xE100000000000000);

      v12 = v4;
      v30 = v4;
      v13 = v1;
      v15 = *(v12 + 16);
      v14 = *(v12 + 24);
      if (v15 >= v14 >> 1)
      {
        result = sub_1B041D32C((v14 > 1), v15 + 1, 1);
        v12 = v30;
      }

      *(v12 + 16) = v15 + 1;
      v16 = v12 + 16 * v15;
      *(v16 + 32) = 0;
      *(v16 + 40) = 0xE000000000000000;
      v9 = 1 << *(v13 + 32);
      if (v7 >= v9)
      {
        goto LABEL_23;
      }

      v5 = v26;
      v17 = *(v26 + 8 * v10);
      if ((v17 & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      v1 = v13;
      v4 = v12;
      if (v28 != *(v1 + 36))
      {
        goto LABEL_25;
      }

      v18 = v17 & (-2 << (v7 & 0x3F));
      if (v18)
      {
        v9 = __clz(__rbit64(v18)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v10 << 6;
        v20 = v10 + 1;
        v21 = (v24 + 8 * v10);
        while (v20 < (v9 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            result = sub_1B0425168(v7, v28, 0);
            v9 = __clz(__rbit64(v22)) + v19;
            goto LABEL_4;
          }
        }

        result = sub_1B0425168(v7, v28, 0);
      }

LABEL_4:
      v8 = v27 + 1;
      v7 = v9;
      if (v27 + 1 == v25)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

void MessageAttribute.BodyStructure.partsForHTMLBody(missingParts:additionalParts:)(uint64_t a1, uint64_t a2)
{
  v5 = v2[9];
  v27 = v2[8];
  v28 = v5;
  v29 = v2[10];
  v30 = *(v2 + 176);
  v6 = v2[5];
  v23 = v2[4];
  v24 = v6;
  v7 = v2[7];
  v25 = v2[6];
  v26 = v7;
  v8 = v2[1];
  v19 = *v2;
  v20 = v8;
  v9 = v2[3];
  v21 = v2[2];
  v22 = v9;
  if (sub_1B075FACC(&v19) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4520, &unk_1B0EC52B0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1B0EC1E70;
    *(v10 + 32) = MEMORY[0x1E69E7CC0];
    sub_1B0CD5FF0(v10);
  }

  else
  {
    v39 = v27;
    v40 = v28;
    v41 = v29;
    v42 = v30;
    v35 = v23;
    v36 = v24;
    v37 = v25;
    v38 = v26;
    v31 = v19;
    v32 = v20;
    v33 = v21;
    v34 = v22;
    v11 = sub_1B0CD5358();
    v13 = v12;
    v15 = v14;
    v18 = MEMORY[0x1E69E7CD0];

    sub_1B0CDC414(v11, v13, v15, &v18, v11, v13, v15);

    v16 = v18;
    if (a1)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v16 = sub_1B0CDC9DC(v16, a1);

      v18 = v16;
    }

    if (*(a2 + 16))
    {
      v17 = sub_1B0CDCCA8(a2, v15);
      sub_1B0CD59FC(v17);
      v16 = v18;
    }

    sub_1B0CD58A0(v16, 65000, 15000, 30, v11, v13, v15);
  }
}

uint64_t BodyStructure.partsForHTMLBody(missingParts:additionalParts:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B0CD5358();
  v6 = v5;
  v8 = v7;
  v14 = MEMORY[0x1E69E7CD0];

  sub_1B0CDC414(v4, v6, v8, &v14, v4, v6, v8);

  v9 = v14;
  if (a1)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v9 = sub_1B0CDC9DC(v9, a1);

    v14 = v9;
  }

  if (*(a2 + 16))
  {
    v10 = sub_1B0CDCCA8(a2, v8);
    sub_1B0CD59FC(v10);
    v9 = v14;
  }

  sub_1B0CD58A0(v9, 65000, 15000, 30, v4, v6, v8);
  v12 = v11;

  return v12;
}

void MessageAttribute.BodyStructure.partsForWatch()()
{
  v1 = v0[9];
  v23 = v0[8];
  v24 = v1;
  v25 = v0[10];
  v26 = *(v0 + 176);
  v2 = v0[5];
  v19 = v0[4];
  v20 = v2;
  v3 = v0[7];
  v21 = v0[6];
  v22 = v3;
  v4 = v0[1];
  v15 = *v0;
  v16 = v4;
  v5 = v0[3];
  v17 = v0[2];
  v18 = v5;
  if (sub_1B075FACC(&v15) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4520, &unk_1B0EC52B0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1B0EC1E70;
    *(v6 + 32) = MEMORY[0x1E69E7CC0];
    sub_1B0CD5FF0(v6);
  }

  else
  {
    v35 = v23;
    v36 = v24;
    v37 = v25;
    v38 = v26;
    v31 = v19;
    v32 = v20;
    v33 = v21;
    v34 = v22;
    v27 = v15;
    v28 = v16;
    v29 = v17;
    v30 = v18;
    v7 = sub_1B0CD5358();
    v9 = v8;
    v11 = v10;
    v14 = MEMORY[0x1E69E7CD0];
    sub_1B0CD6504(v7, v8, v10);
    v12 = sub_1B0CD5AF8(v7, v9, v11);
    v13 = sub_1B0CBF394(v12, v14);
    sub_1B0CD58A0(v13, 65000, 15000, 30, v7, v9, v11);
  }
}

uint64_t BodyStructure.partsForWatch()()
{
  v0 = sub_1B0CD5358();
  v2 = v1;
  v4 = v3;
  v10 = MEMORY[0x1E69E7CD0];
  sub_1B0CD6504(v0, v1, v3);
  v5 = sub_1B0CD5AF8(v0, v2, v4);
  v6 = sub_1B0CBF394(v5, v10);
  sub_1B0CD58A0(v6, 65000, 15000, 30, v0, v2, v4);
  v8 = v7;

  return v8;
}

uint64_t sub_1B0CD5358()
{
  v0 = swift_allocObject();
  v0[2] = sub_1B0CDBDE4(MEMORY[0x1E69E7CC0]);
  v0[3] = v1;
  v0[4] = v2;
  v9[2] = v0 + 2;
  BodyStructure.enumerateParts(_:)(sub_1B0CDD168, v9);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];

  v6 = sub_1B0CDC00C(v4, v5, sub_1B0CDD184);

  v7 = sub_1B0CDC1E4(v6);

  return v7;
}

uint64_t BodyStructure.singlePartsWithSizes.getter()
{
  v2 = MEMORY[0x1E69E7CC0];
  v1[2] = &v2;
  BodyStructure.enumerateParts(_:)(sub_1B0CDCE74, v1);
  return v2;
}

void sub_1B0CD54CC(uint64_t a1, uint64_t a2, char **a3)
{
  v6 = *(a2 + 144);
  v26[8] = *(a2 + 128);
  v26[9] = v6;
  v26[10] = *(a2 + 160);
  v27 = *(a2 + 176);
  v7 = *(a2 + 80);
  v26[4] = *(a2 + 64);
  v26[5] = v7;
  v8 = *(a2 + 112);
  v26[6] = *(a2 + 96);
  v26[7] = v8;
  v9 = *(a2 + 16);
  v26[0] = *a2;
  v26[1] = v9;
  v10 = *(a2 + 48);
  v26[2] = *(a2 + 32);
  v26[3] = v10;
  if (sub_1B0717014(v26) == 1)
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v26);
  }

  else
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v26);
    v11 = *(a2 + 144);
    v24[8] = *(a2 + 128);
    v24[9] = v11;
    v24[10] = *(a2 + 160);
    v25 = *(a2 + 176);
    v12 = *(a2 + 80);
    v24[4] = *(a2 + 64);
    v24[5] = v12;
    v13 = *(a2 + 112);
    v24[6] = *(a2 + 96);
    v24[7] = v13;
    v14 = *(a2 + 16);
    v24[0] = *a2;
    v24[1] = v14;
    v15 = *(a2 + 48);
    v24[2] = *(a2 + 32);
    v24[3] = v15;
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v24);
    v17 = *(v16 + 80);
    v18 = BodyStructure.isAttachment.getter();
    v19 = *a3;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v19 = sub_1B0CC96F4(0, *(v19 + 2) + 1, 1, v19);
      *a3 = v19;
    }

    v22 = *(v19 + 2);
    v21 = *(v19 + 3);
    if (v22 >= v21 >> 1)
    {
      v19 = sub_1B0CC96F4((v21 > 1), v22 + 1, 1, v19);
      *a3 = v19;
    }

    *(v19 + 2) = v22 + 1;
    v23 = &v19[24 * v22];
    *(v23 + 4) = a1;
    *(v23 + 5) = v17;
    v23[48] = v18 & 1;
  }
}

uint64_t BodyStructure.SinglePartWithSize.part.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_1B0CD5764(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  return static SectionSpecifier.Part.__derived_struct_equals(_:_:)(*a1, *a2) & (v2 == v4) & (v3 ^ v5 ^ 1);
}

void sub_1B0CD58A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (sub_1B0CDCEB0(a6, a7))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4520, &unk_1B0EC52B0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1B0EC1E70;
    *(v13 + 32) = MEMORY[0x1E69E7CC0];

    sub_1B0CD5FF0(v13);
  }

  else
  {

    v14 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v15 = sub_1B0CDB900(v14, a5, a6, a7);
    if (v16 / 9 <= a3)
    {
      v17 = a3;
    }

    else
    {
      v17 = v16 / 9;
    }

    if (__OFADD__(v16, v17))
    {
      __break(1u);
    }

    else
    {
      if (v16 + v17 <= a2)
      {
        v18 = a2;
      }

      else
      {
        v18 = v16 + v17;
      }

      if (*(v15 + 16) <= a4)
      {
        v19 = a4;
      }

      else
      {
        v19 = *(v15 + 16);
      }

      sub_1B0CD5C10(v15, v16, v18, v17, v19, a5, a6, a7);
    }
  }
}

uint64_t sub_1B0CD59FC(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = *(*(v1 + 48) + ((v8 << 9) | (8 * v9)));
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0CC91C4(&v11, v10);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1B0CD5AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = MEMORY[0x1E69E7CC0];
  sub_1B0CD6278(a1, a2, a3, 2500000, &v14);
  result = sub_1B0CD6824(&v14);
  v4 = 0;
  v5 = 0;
  v6 = v14;
  v13 = MEMORY[0x1E69E7CD0];
  v7 = v14[2];
  v8 = v14 + 5;
LABEL_2:
  v9 = &v8[2 * v4];
  while (1)
  {
    if (v7 == v4)
    {

      return v13;
    }

    if (v4 >= v6[2])
    {
      break;
    }

    v10 = v5 + *v9;
    if (__OFADD__(v5, *v9))
    {
      goto LABEL_10;
    }

    ++v4;
    v9 += 2;
    if (v10 <= 3999999)
    {
      v11 = *(v9 - 3);
      swift_bridgeObjectRetain_n();
      sub_1B0CC91C4(&v12, v11);

      v5 = v10;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

void sub_1B0CD5C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_bridgeObjectRetain_n();
  v14 = sub_1B0CD5DB8(a1, a2, a6, a7, a8);
  v16 = v15;
  v17 = a1;

  if (v14)
  {
    v18 = a1;
    do
    {
      if (v16 > a3)
      {
        goto LABEL_8;
      }

      v17 = v14;

      v19 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v20 = sub_1B0CD5DB8(v19, v16, a6, a7, a8);
      v16 = v21;

      v14 = v20;
      v18 = v17;
    }

    while (v20);
  }

  v22 = *(v17 + 16);
  if (v22)
  {
    while (1)
    {
      v23 = sub_1B0CE237C(v22, 0);
      v24 = sub_1B0CE3FF4(&v26, v23 + 4, v22, v17);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v18 = sub_1B03D91F8();
      if (v24 == v22)
      {
        break;
      }

      __break(1u);
LABEL_8:
      v17 = v18;

      v22 = *(v17 + 16);
      if (!v22)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v23 = MEMORY[0x1E69E7CC0];
  }

  v26 = v23;
  sub_1B0CD67B8(&v26);

  v25 = v26;

  sub_1B0CD5FF0(v25);
}

uint64_t sub_1B0CD5DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = MEMORY[0x1E69E7CD0];
  v9 = a1 + 56;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 56);
  v13 = (v10 + 63) >> 6;
  result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v15 = 0;
  while (v12)
  {
LABEL_9:
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v18 = *(*(a1 + 48) + ((v15 << 9) | (8 * v17)));
    if (*(v18 + 16))
    {
      swift_bridgeObjectRetain_n();
      v19 = sub_1B0CD82C4(1, v18);
      sub_1B0CC91C4(&v31, v19);
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

    if (v16 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v16);
    ++v15;
    if (v12)
    {
      v15 = v16;
      goto LABEL_9;
    }
  }

  v20 = v32;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v21 = sub_1B0CDBB04(v20, a1, a2, a3, a4, a5);

  v22 = v21[2];
  if (v22)
  {
    v23 = v21[5];
    v24 = v21[4];
    result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v25 = 1;
LABEL_13:
    v26 = &v21[2 * v25 + 5];
    while (v22 != v25)
    {
      if (v25 >= v21[2])
      {
        goto LABEL_22;
      }

      ++v25;
      v27 = v26 + 2;
      v28 = *v26;
      v26 += 2;
      if (v28 < v23)
      {
        v29 = *(v27 - 3);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

        v23 = v28;
        v24 = v29;
        goto LABEL_13;
      }
    }
  }

  else
  {

    return 0;
  }

  return v24;
}

void sub_1B0CD5FF0(uint64_t a1)
{
  v2 = sub_1B03CD508();
  v3 = sub_1B0CD96D4(&v16, a1, 0, 1, v2);
  v4 = *(a1 + 16);
  v5 = v16;
  if (v16 != v4)
  {
    if ((v16 & 0x8000000000000000) != 0)
    {
      goto LABEL_19;
    }

    if (v4 < v16)
    {
LABEL_20:
      __break(1u);
    }

    else
    {
      sub_1B0CE2484(a1, a1 + 32, 0, (2 * v16) | 1);
      v17 = v3;
      v18 = v6;
      if (*(a1 + 16) >= v4)
      {

        while (1)
        {
          if (v5 >= v4)
          {
            __break(1u);
LABEL_19:
            __break(1u);
            goto LABEL_20;
          }

          v7 = *(a1 + 32 + 8 * v5);
          v8 = v17;
          v9 = (v18 + 32);
          v10 = *(v18 + 16);
          if (v17)
          {
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

            sub_1B0CD9CEC(v7, v9, v10, (v8 + 16), v8 + 32);
            v12 = v11;

            if ((v12 & 1) == 0)
            {
              goto LABEL_7;
            }
          }

          else
          {
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            if (v10)
            {
              do
              {
                v13 = *v9;
                v14 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                v15 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v14, v7);

                if (v15)
                {
                  goto LABEL_7;
                }

                ++v9;
              }

              while (--v10);
            }
          }

          sub_1B0CD98E4(v7);
LABEL_7:
          ++v5;

          if (v5 == v4)
          {

            return;
          }
        }
      }
    }

    __break(1u);
  }
}

uint64_t sub_1B0CD619C(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = *a1;
  v5 = a2 + 32;
  while (1)
  {
    v6 = *(v5 + 8 * v3);
    v7 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if (static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v7, v4))
    {

      return 1;
    }

    v8 = *(v6 + 16);
    if (v8 < *(v4 + 16))
    {
      break;
    }

LABEL_10:
    if (++v3 == v2)
    {
      return 0;
    }
  }

  v9 = 32;
  while (v8)
  {
    v10 = *(v6 + v9);
    v11 = *(v4 + v9);
    --v8;
    v9 += 8;
    if (v11 != v10)
    {
      swift_unknownObjectRelease();
      goto LABEL_10;
    }
  }

  swift_unknownObjectRelease();
  return 1;
}

uint64_t sub_1B0CD6278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v28 = a3 + 32;

    v7 = 0;
    v8 = 0;
    v25 = v5;
    v26 = a4;
    while (1)
    {
      v10 = (v28 + 48 * v8);
      v11 = *v10;
      v12 = v10[1];
      v13 = v10[2];
      v14 = *(v10 + 24);
      v15 = v10[5];
      v29 = v10[4];
      if (v7)
      {
        v16 = *(v7 + 16);
        if (v16 < *(v11 + 16))
        {
          v17 = 32;
          while (v16)
          {
            v18 = *(v7 + v17);
            v19 = *(v11 + v17);
            --v16;
            v17 += 8;
            if (v19 != v18)
            {
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              sub_1B0CDD108(v12, v13, v14);
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              swift_unknownObjectRelease();
              if (v14 != 2)
              {
                goto LABEL_16;
              }

              goto LABEL_4;
            }
          }

          goto LABEL_5;
        }

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0CDD108(v12, v13, v14);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

        if (v14 == 2)
        {
          goto LABEL_4;
        }
      }

      else
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0CDD108(v12, v13, v14);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        if (v14 == 2)
        {
          goto LABEL_4;
        }
      }

LABEL_16:
      if (v14 == 5 && !(v13 | v12))
      {

        v7 = v11;
        goto LABEL_5;
      }

      if (v29 < a4)
      {
        v20 = *a5;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a5 = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v20 = sub_1B0CC95C0(0, v20[2] + 1, 1, v20);
          *a5 = v20;
        }

        v23 = v20[2];
        v22 = v20[3];
        if (v23 >= v22 >> 1)
        {
          v20 = sub_1B0CC95C0((v22 > 1), v23 + 1, 1, v20);
          *a5 = v20;
        }

        v20[2] = v23 + 1;
        v9 = &v20[2 * v23];
        v9[4] = v11;
        v9[5] = v29;
        v5 = v25;
        a4 = v26;
      }

LABEL_4:

      sub_1B0CDD120(v12, v13, v14);

      v7 = 0;
LABEL_5:
      if (++v8 == v5)
      {
      }
    }
  }

  return result;
}

uint64_t sub_1B0CD6504(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v24 = a3 + 32;

    v4 = 0;
    v5 = 0;
    while (1)
    {
      v9 = v24 + 48 * v5;
      v10 = *v9;
      v11 = *(v9 + 8);
      v12 = *(v9 + 16);
      v13 = *(v9 + 24);
      v14 = *(v9 + 40);
      if (v4)
      {
        v15 = *(v4 + 16);
        if (v15 < *(v10 + 16))
        {
          v16 = 32;
          while (v15)
          {
            v17 = *(v4 + v16);
            v18 = *(v10 + v16);
            --v15;
            v16 += 8;
            if (v18 != v17)
            {
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              sub_1B0CDD108(v11, v12, v13);
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              swift_unknownObjectRelease();
              if (v13 != 2)
              {
                goto LABEL_14;
              }

              goto LABEL_18;
            }
          }

          goto LABEL_5;
        }

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0CDD108(v11, v12, v13);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

        if (v13 == 2)
        {
LABEL_18:
          if (sub_1B0E44B98() == v11 && v12 == v20)
          {
LABEL_20:

            goto LABEL_22;
          }

          v21 = sub_1B0E46A78();

          if (v21)
          {
            goto LABEL_22;
          }

          if (sub_1B0E44B98() == v11 && v12 == v22)
          {
            goto LABEL_20;
          }

          v23 = sub_1B0E46A78();

          if (v23)
          {
LABEL_22:
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B0CC91C4(&v25, v10);
          }

          v6 = v11;
          v7 = v12;
          v8 = 2;
          goto LABEL_4;
        }
      }

      else
      {
        v19 = *v9;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0CDD108(v11, v12, v13);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        if (v13 == 2)
        {
          goto LABEL_18;
        }
      }

LABEL_14:
      if (v13 == 5 && !(v12 | v11))
      {

        v4 = v10;
        goto LABEL_5;
      }

      v6 = v11;
      v7 = v12;
      v8 = v13;
LABEL_4:
      sub_1B0CDD120(v6, v7, v8);

      v4 = 0;
LABEL_5:
      if (++v5 == v3)
      {
      }
    }
  }

  return result;
}

uint64_t sub_1B0CD67B8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0CE3590(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1B0CD84B4(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1B0CD6824(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0CDB2E0(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  result = sub_1B0E469A8();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 6;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v2[2 * i + 5];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 - 1))
          {
            break;
          }

          v14 = *v13;
          *v13 = *(v13 - 1);
          *(v13 - 1) = v11;
          *(v13 - 2) = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 2;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E61D8, &qword_1B0EE4750);
      v7 = sub_1B0E45278();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1B0CD8CAC(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1B0CD6984@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = result;
  v8 = a3 + 32;
  v9 = *(a3 + 16);
  if (!a2)
  {
    if (v9)
    {
      v11 = 0;
      do
      {
        v22 = *(v8 + 8 * v11);
        v23 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v24 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v23, v6);

        if (v24)
        {
          goto LABEL_4;
        }
      }

      while (v9 != ++v11);
    }

LABEL_10:
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v21 = 0;
    v19 = 0;
    v18 = 0;
    goto LABEL_11;
  }

  v11 = sub_1B0CD9CEC(v6, v8, v9, (a2 + 16), a2 + 32);
  v13 = v12;

  if (v13)
  {
    goto LABEL_10;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

LABEL_4:
  if (v11 < *(a4 + 16))
  {
    v14 = a4 + 48 * v11;
    v15 = *(v14 + 32);
    v16 = *(v14 + 40);
    v17 = *(v14 + 48);
    v19 = *(v14 + 64);
    v18 = *(v14 + 72);
    v20 = *(v14 + 56);
    v21 = v20;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0CDD108(v16, v17, v20);
    result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
LABEL_11:
    *a5 = v15;
    a5[1] = v16;
    a5[2] = v17;
    a5[3] = v21;
    a5[4] = v19;
    a5[5] = v18;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1B0CD6ABC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = result;
  v8 = a3 + 32;
  v9 = *(a3 + 16);
  if (!a2)
  {
    if (v9)
    {
      v11 = 0;
      while (1)
      {
        v20 = *(v8 + 8 * v11);
        v21 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v22 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v21, v6);

        if (v22)
        {
          goto LABEL_4;
        }

        if (v9 == ++v11)
        {
          goto LABEL_10;
        }
      }
    }

    v15 = 0;
    v16 = 0;
    v19 = 0;
    v17 = 0;
LABEL_12:
    v18 = 0;
    goto LABEL_13;
  }

  v11 = sub_1B0CD9CEC(v6, v8, v9, (a2 + 16), a2 + 32);
  v13 = v12;

  if (v13)
  {
LABEL_10:
    v15 = 0;
    v16 = 0;
    v19 = 0;
    v17 = 0;
    v9 = 0;
    goto LABEL_12;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

LABEL_4:
  if (v11 < *(a4 + 16))
  {
    v14 = a4 + 48 * v11;
    v15 = *(v14 + 32);
    v16 = *(v14 + 40);
    v17 = *(v14 + 56);
    v9 = *(v14 + 64);
    v18 = *(v14 + 72);
    v19 = *(v14 + 48);
    sub_1B0CDD108(v15, v16, *(v14 + 48));
    result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
LABEL_13:
    *a5 = v15;
    a5[1] = v16;
    a5[2] = v19;
    a5[3] = v17;
    a5[4] = v9;
    a5[5] = v18;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1B0CD6C00(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  return sub_1B0CCACB0(*a1, *a2) & (v2 == v3);
}

uint64_t sub_1B0CD6C3C(uint64_t a1)
{
  sub_1B0CD4B14(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B03B11C4();
  v1 = sub_1B0E448E8();

  MEMORY[0x1B2726E80](10272, 0xE200000000000000);
  v2 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v2);

  MEMORY[0x1B2726E80](10537, 0xE200000000000000);
  return v1;
}

uint64_t sub_1B0CD6D20(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_1B0CDB2F4(v7, v8) & 1;
}

BOOL sub_1B0CD6D68(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  return (sub_1B0CDA61C(*(a1 + 8), *(a2 + 8)) & 1) != 0 && (sub_1B0CDA474(v2, v3) & 1) != 0;
}

uint64_t sub_1B0CD6DC0()
{
  v1 = v0[5];
  if (*(v1 + 16))
  {
    sub_1B0E46298();

    v10 = *v0;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v2 = sub_1B0E44BA8();
    MEMORY[0x1B2726E80](v2);

    MEMORY[0x1B2726E80](2112039, 0xE300000000000000);
    v3 = sub_1B0CD74B4(v0[1], v0[2], *(v0 + 24));
    MEMORY[0x1B2726E80](v3);

    MEMORY[0x1B2726E80](8236, 0xE200000000000000);
    v11 = v0[4];
    v4 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v4);

    MEMORY[0x1B2726E80](0x202C736574796220, 0xEC0000002E2E2E31);
    v12 = *(v1 + 16);
    v5 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v5);
  }

  else
  {
    sub_1B0E46298();

    v13 = *v0;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v6 = sub_1B0E44BA8();
    MEMORY[0x1B2726E80](v6);

    MEMORY[0x1B2726E80](2112039, 0xE300000000000000);
    v7 = sub_1B0CD74B4(v0[1], v0[2], *(v0 + 24));
    MEMORY[0x1B2726E80](v7);

    MEMORY[0x1B2726E80](8236, 0xE200000000000000);
    v14 = v0[4];
    v8 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v8);

    MEMORY[0x1B2726E80](0x736574796220, 0xE600000000000000);
  }

  return 39;
}

uint64_t *sub_1B0CD7020(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (result[2])
  {
    v9 = result;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v10 = sub_1B0CD82C4(1, v9);
    sub_1B0CD6984(v10, a2, a3, a4, &v45);

    if (v45)
    {
      v40 = a5;
      v11 = v48;
      v49 = v45;
      v50 = v46;
      v51 = v47;
      sub_1B0CDD138(&v50);
      v52 = v11;
      sub_1B039E440(&v52);
      v12 = *(a4 + 16);
      if (!v12)
      {
        return sub_1B039E440(&v49);
      }

      v13 = 0;
      v41 = a4 + 32;
      v14 = a4 + 40;
      v43 = v9;
      while (1)
      {
        v15 = *(v14 - 8);
        v16 = *v14;
        v17 = *(v14 + 8);
        v18 = *(v14 + 32);
        v19 = *(v14 + 16);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0CDD108(v16, v17, v19);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v20 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v15, v9);

        sub_1B0CDD120(v16, v17, v19);

        if (v20)
        {
          break;
        }

        ++v13;
        v14 += 48;
        v9 = v43;
        if (v12 == v13)
        {
          return sub_1B039E440(&v49);
        }
      }

      v21 = v49;

      v22 = 0;
      v23 = v12;
      v24 = 0;
      while (1)
      {
        while (1)
        {
          v25 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            __break(1u);
            return result;
          }

          if (v13 < v24)
          {
            break;
          }

LABEL_10:
          v24 = v25;
          if (v25 == v23)
          {
            goto LABEL_45;
          }

          if (v25 >= v23)
          {
LABEL_40:
            __break(1u);
LABEL_41:
            sub_1B074E7A8(&v49, &v44);

            sub_1B039E440(&v49);

            swift_unknownObjectRelease();
LABEL_42:
            sub_1B0CDD120(v17, v42, v16);
          }
        }

        v26 = v41 + 48 * v24;
        v27 = *v26;
        v17 = *(v26 + 8);
        v28 = *(v26 + 16);
        LODWORD(v16) = *(v26 + 24);
        v29 = *(v26 + 40);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v42 = v28;
        sub_1B0CDD108(v17, v28, v16);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        if (static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v27, v43))
        {
          goto LABEL_9;
        }

        v30 = *(v21 + 16);
        if (v30 >= *(v27 + 16))
        {

          sub_1B039E440(&v49);

          goto LABEL_42;
        }

        v31 = 32;
        while (v30)
        {
          v32 = *(v21 + v31);
          v33 = *(v27 + v31);
          --v30;
          v31 += 8;
          if (v33 != v32)
          {
            goto LABEL_41;
          }
        }

        sub_1B074E7A8(&v49, &v44);
        swift_unknownObjectRelease();
        if (v22)
        {
          v34 = *(v22 + 16);
          if (v34 < *(v27 + 16))
          {
            v35 = 32;
            while (v34)
            {
              v36 = *(v22 + v35);
              v37 = *(v27 + v35);
              --v34;
              v35 += 8;
              if (v37 != v36)
              {
                swift_unknownObjectRelease();
                goto LABEL_26;
              }
            }

LABEL_9:

            sub_1B0CDD120(v17, v28, v16);

            v23 = v12;
            goto LABEL_10;
          }

          if (v16 == 2)
          {
LABEL_31:
            if (sub_1B0E44B98() == v17 && v28 == v38)
            {

              goto LABEL_35;
            }

            v39 = sub_1B0E46A78();

            if (v39)
            {
LABEL_35:
              *v40 = 1;
            }

            LOBYTE(v16) = 2;
            goto LABEL_37;
          }
        }

        else
        {
LABEL_26:
          if (v16 == 2)
          {
            goto LABEL_31;
          }
        }

        if (v16 == 5 && !(v28 | v17))
        {

          v22 = v27;
          goto LABEL_38;
        }

LABEL_37:

        sub_1B0CDD120(v17, v28, v16);

        v22 = 0;
LABEL_38:
        v23 = v12;
        if (v25 == v12)
        {
LABEL_45:

          sub_1B039E440(&v49);
        }

        v24 = v25;
        if (v25 >= v12)
        {
          goto LABEL_40;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B0CD74B4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        v3 = 0x2F74786574;
        v4 = 0xE500000000000000;
        goto LABEL_13;
      }

      v3 = 0x2F6567616D69;
      goto LABEL_11;
    }

    v5 = 1768191329;
LABEL_10:
    v3 = v5 & 0xFFFF0000FFFFFFFFLL | 0x2F6F00000000;
LABEL_11:
    v4 = 0xE600000000000000;
    goto LABEL_13;
  }

  if (a3 == 3)
  {
    v5 = 1701079414;
    goto LABEL_10;
  }

  if (a3 == 4)
  {
    v3 = 0x72617069746C756DLL;
    v4 = 0xEA00000000002F74;
LABEL_13:
    MEMORY[0x1B2726E80](v3, v4);
    sub_1B0E46508();
    return 0;
  }

  if (a1 | a2)
  {
    return 0x726568746FLL;
  }

  else
  {
    return 0x6567617373656DLL;
  }
}

uint64_t sub_1B0CD7614(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B0CD77A0();
  v6 = v5;
  v8 = v7;
  v9 = *(a2 + 144);
  v23[8] = *(a2 + 128);
  v23[9] = v9;
  v23[10] = *(a2 + 160);
  v24 = *(a2 + 176);
  v10 = *(a2 + 80);
  v23[4] = *(a2 + 64);
  v23[5] = v10;
  v11 = *(a2 + 112);
  v23[6] = *(a2 + 96);
  v23[7] = v11;
  v12 = *(a2 + 16);
  v23[0] = *a2;
  v23[1] = v12;
  v13 = *(a2 + 48);
  v23[2] = *(a2 + 32);
  v23[3] = v13;
  v14 = sub_1B0717014(v23);
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v23);
  if (v14 == 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = *(v15 + 80);
  }

  v25[0] = v4;
  v25[1] = v6;
  v25[2] = v8;
  v25[3] = v16;
  v25[4] = v14 == 1;
  v25[5] = MEMORY[0x1E69E7CD0];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = sub_1B0CD79FC(v25, a1);
  if (*(a1 + 16))
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v18 = sub_1B0CD82C4(1, a1);
    v19 = sub_1B0CD7CA0(v21, v18);
    if (*(v20 + 40))
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0CC91C4(&v22, a1);
    }

    v19(v21, 0);
  }

  return result;
}

uint64_t sub_1B0CD77A0()
{
  v0 = BodyStructure.mediaType.getter();
  v2 = v1;

  v3 = Media.TopLevelType.text.unsafeMutableAddressor();
  if (*v3 == v0 && v3[1] == v2)
  {
    goto LABEL_6;
  }

  if (sub_1B0E46A78())
  {
    goto LABEL_6;
  }

  v8 = Media.TopLevelType.audio.unsafeMutableAddressor();
  if (*v8 == v0 && v8[1] == v2)
  {
    goto LABEL_6;
  }

  if (sub_1B0E46A78())
  {
    goto LABEL_6;
  }

  v9 = Media.TopLevelType.image.unsafeMutableAddressor();
  if (*v9 == v0 && v9[1] == v2)
  {
    goto LABEL_6;
  }

  if (sub_1B0E46A78())
  {
    goto LABEL_6;
  }

  v10 = Media.TopLevelType.message.unsafeMutableAddressor();
  if (*v10 == v0 && v10[1] == v2 || (sub_1B0E46A78() & 1) != 0)
  {

    return 0;
  }

  if (v11 = Media.TopLevelType.video.unsafeMutableAddressor(), *v11 == v0) && v11[1] == v2 || (sub_1B0E46A78())
  {
LABEL_6:

    BodyStructure.mediaType.getter();
    v6 = v5;
  }

  else
  {
    v12 = Media.TopLevelType.multipart.unsafeMutableAddressor();
    if (*v12 == v0 && v12[1] == v2)
    {
    }

    else
    {
      v13 = sub_1B0E46A78();

      if ((v13 & 1) == 0)
      {
        return 1;
      }
    }

    BodyStructure.mediaType.getter();
    v6 = v14;
  }

  return v6;
}

uint64_t sub_1B0CD79FC(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v4 = a1[1];
  v35 = a1[3];
  v36 = a1[2];
  v6 = a1[4];
  v7 = a1[5];
  v9 = *v2;
  v8 = v2[1];
  v10 = v8 + 32;
  v11 = *(v8 + 16);
  if (!*v2)
  {
    if (v11)
    {
      v34 = a1[4];
      v13 = 0;
      while (1)
      {
        v18 = *(v10 + 8 * v13);
        v19 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v20 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v19, a2);

        if (v20)
        {
          break;
        }

        if (v11 == ++v13)
        {
          LOBYTE(v6) = v34;
          goto LABEL_10;
        }
      }

      if (!v7)
      {
        v17 = 0;
LABEL_28:
        sub_1B0CDA6A0(v13, v17);

        sub_1B0CDA800(v13, &v37);
        v41 = v37;
        v42 = v38;
        sub_1B0CDD138(&v41);
        v40 = v39;
        return sub_1B039E440(&v40);
      }

      LOBYTE(v6) = v34;
      goto LABEL_22;
    }

    if (v7)
    {
LABEL_11:
      sub_1B0CD98E4(a2);

      v23 = v2[2];
      v22 = v2 + 2;
      v21 = v23;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v22 = v23;
      if ((result & 1) == 0)
      {
        result = sub_1B0CDEAD0(0, *(v21 + 16) + 1, 1);
        v21 = *v22;
      }

      v26 = *(v21 + 16);
      v25 = *(v21 + 24);
      if (v26 >= v25 >> 1)
      {
        result = sub_1B0CDEAD0((v25 > 1), v26 + 1, 1);
        v21 = *v22;
      }

      *(v21 + 16) = v26 + 1;
      v27 = v21 + 48 * v26;
      *(v27 + 32) = v5;
      *(v27 + 40) = v4;
      *(v27 + 48) = v36;
      *(v27 + 56) = v35;
      *(v27 + 64) = v6 & 1;
      *(v27 + 72) = v7;
      *v22 = v21;
      return result;
    }

LABEL_17:
  }

  v12 = *v2;

  v13 = sub_1B0CD9CEC(a2, v10, v11, (v9 + 16), v9 + 32);
  v15 = v14;
  v17 = v16;

  if (v15)
  {
LABEL_10:
    if (v7)
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

  if (!v7)
  {
    goto LABEL_28;
  }

LABEL_22:
  v28 = v2[2];
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B0CE35A4(v28);
    v28 = result;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v13 < *(v28 + 16))
  {
    v29 = v28 + 48 * v13;
    v30 = *(v29 + 32);
    v31 = *(v29 + 40);
    v32 = *(v29 + 72);
    *(v29 + 32) = v5;
    *(v29 + 40) = v4;
    v33 = *(v29 + 48);
    *(v29 + 48) = v36;
    *(v29 + 56) = v35;
    *(v29 + 64) = v6 & 1;
    *(v29 + 72) = v7;
    sub_1B0CDD120(v30, v31, v33);

    v2[2] = v28;
    return result;
  }

  __break(1u);
  return result;
}

void (*sub_1B0CD7CA0(uint64_t *a1, uint64_t a2))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0xB8uLL);
  }

  *a1 = v5;
  *(v5 + 96) = 0u;
  v6 = v5 + 96;
  *(v5 + 144) = a2;
  *(v5 + 152) = v2;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0u;
  v7 = sub_1B0CDA954(a2, (v5 + 96));
  *(v6 + 80) = v8;
  *(v6 + 64) = v7;
  *(v6 + 72) = v9;
  return sub_1B0CD7D34;
}

void sub_1B0CD7D34(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  v5 = *(*a1 + 104);
  v4 = *(*a1 + 112);
  v7 = *(*a1 + 120);
  v6 = *(*a1 + 128);
  v8 = *(*a1 + 136);
  if (a2)
  {
    if ((*(*a1 + 176) & 1) == 0)
    {
      v9 = v2[19];
      v12 = *(v9 + 16);
      v10 = (v9 + 16);
      v11 = v12;
      if (!v8)
      {
        v13 = v2[20];
        if (v13 < *(v11 + 16))
        {
          sub_1B0CDA800(v13, v2);
          v14 = *v10;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v10 = v14;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1B0CDEAD0(0, *(v14 + 16) + 1, 1);
            v14 = *v10;
          }

          v17 = *(v14 + 16);
          v16 = *(v14 + 24);
          if (v17 >= v16 >> 1)
          {
            sub_1B0CDEAD0((v16 > 1), v17 + 1, 1);
            v14 = *v10;
          }

          *(v14 + 16) = v17 + 1;
          v18 = (v14 + 48 * v17);
          v19 = *v2;
          v20 = *(v2 + 1);
          v21 = *(v2 + 2);
LABEL_29:
          v18[3] = v20;
          v18[4] = v21;
          v18[2] = v19;
          *v10 = v14;
          v44 = v2[19];
          v13 = v2[20];
          goto LABEL_30;
        }

        goto LABEL_30;
      }

LABEL_18:
      sub_1B0CDD108(*(*a1 + 96), v5, v4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v35 = swift_isUniquelyReferenced_nonNull_native();
      *v10 = v11;
      if ((v35 & 1) == 0)
      {
        sub_1B0CDEAD0(0, *(v11 + 16) + 1, 1);
        v11 = *v10;
      }

      v36 = *(v11 + 16);
      v37 = *(v11 + 24);
      v38 = v36 + 1;
      if (v36 >= v37 >> 1)
      {
        v45 = *(v11 + 16);
        v46 = v36 + 1;
        sub_1B0CDEAD0((v37 > 1), v36 + 1, 1);
        v38 = v46;
        v36 = v45;
        v11 = *v10;
      }

      v39 = v2[20];
      *(v11 + 16) = v38;
      v40 = v11 + 48 * v36;
      *(v40 + 32) = v3;
      *(v40 + 40) = v5;
      *(v40 + 48) = v4;
      *(v40 + 56) = v7;
      *(v40 + 64) = v6 & 1;
      *(v40 + 72) = v8;
      *v10 = v11;
      sub_1B0CDAAD4(v39, v36);
      goto LABEL_31;
    }
  }

  else if ((*(*a1 + 176) & 1) == 0)
  {
    v33 = v2[19];
    v34 = *(v33 + 16);
    v10 = (v33 + 16);
    v11 = v34;
    if (!v8)
    {
      v13 = v2[20];
      if (v13 < *(v11 + 16))
      {
        sub_1B0CDA800(v13, (v2 + 6));
        v14 = *v10;
        v41 = swift_isUniquelyReferenced_nonNull_native();
        *v10 = v14;
        if ((v41 & 1) == 0)
        {
          sub_1B0CDEAD0(0, *(v14 + 16) + 1, 1);
          v14 = *v10;
        }

        v43 = *(v14 + 16);
        v42 = *(v14 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_1B0CDEAD0((v42 > 1), v43 + 1, 1);
          v14 = *v10;
        }

        *(v14 + 16) = v43 + 1;
        v18 = (v14 + 48 * v43);
        v19 = *(v2 + 3);
        v20 = *(v2 + 4);
        v21 = *(v2 + 5);
        goto LABEL_29;
      }

LABEL_30:
      sub_1B0CDA6A0(v13, v2[21]);

      goto LABEL_31;
    }

    goto LABEL_18;
  }

  if (v8)
  {
    v22 = v2[21];
    v24 = v2[18];
    v23 = v2[19];
    sub_1B0CDD108(*(*a1 + 96), v5, v4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0CD98E4(v24);
    v27 = *(v23 + 16);
    v25 = (v23 + 16);
    v26 = v27;
    v28 = swift_isUniquelyReferenced_nonNull_native();
    *v25 = v27;
    if ((v28 & 1) == 0)
    {
      sub_1B0CDEAD0(0, *(v26 + 16) + 1, 1);
      v26 = *v25;
    }

    v30 = *(v26 + 16);
    v29 = *(v26 + 24);
    v31 = v30 + 1;
    if (v30 >= v29 >> 1)
    {
      sub_1B0CDEAD0((v29 > 1), v30 + 1, 1);
      v31 = v30 + 1;
      v26 = *v25;
    }

    *(v26 + 16) = v31;
    v32 = v26 + 48 * v30;
    *(v32 + 32) = v3;
    *(v32 + 40) = v5;
    *(v32 + 48) = v4;
    *(v32 + 56) = v7;
    *(v32 + 64) = v6 & 1;
    *(v32 + 72) = v8;
    *v25 = v26;
  }

LABEL_31:
  sub_1B0CDD18C(v2[12], v2[13], v2[14], v2[15], v2[16], v2[17]);

  free(v2);
}

uint64_t sub_1B0CD8074(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  sub_1B0CD6ABC(a1, a2[2], a2[3], a2[4], &v21);
  v4 = v25;
  if (!v25)
  {
LABEL_15:
    swift_endAccess();
    return 0;
  }

  v5 = v23;
  v6 = v24;
  swift_endAccess();
  if ((v6 & 1) == 0)
  {
    v19 = v21;
    v20 = v22;
    sub_1B0CDD138(&v19);
    v26 = v4;
LABEL_18:
    sub_1B039E440(&v26);
    return v5;
  }

  v26 = v4;
  v7 = 1 << *(v4 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v12 = 0;
  v5 = 0;
  while (v9)
  {
    v13 = v12;
LABEL_12:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = *(*(v4 + 48) + ((v13 << 9) | (8 * v14)));
    v16 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v17 = sub_1B0CD8074(v16, a2);

    v18 = __OFADD__(v5, v17);
    v5 += v17;
    if (v18)
    {
      __break(1u);
      goto LABEL_15;
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      v19 = v21;
      v20 = v22;
      sub_1B0CDD138(&v19);
      sub_1B039E440(&v26);

      goto LABEL_18;
    }

    v9 = *(v4 + 56 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0CD8228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0CDD108(v8, v9, v10);
  v11 = sub_1B0CD8074(a1, a3);
  v12 = *(a2 + 40);
  *a4 = a1;
  *(a4 + 8) = a1;
  *(a4 + 16) = v8;
  *(a4 + 24) = v9;
  *(a4 + 32) = v10;
  *(a4 + 40) = v11;
  *(a4 + 48) = v12;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

uint64_t sub_1B0CD82C4(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    goto LABEL_30;
  }

  v2 = result;
  if (!result)
  {
    return a2;
  }

  v3 = *(a2 + 16);
  if (!v3)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_26:

    return v7;
  }

  v4 = 0;
  v5 = (a2 + 32);
  v6 = v3 - 1;
  v7 = MEMORY[0x1E69E7CC0];
  v8 = MEMORY[0x1E69E7CC0];
  v17 = result;
  while (1)
  {
    v10 = *v5++;
    v9 = v10;
    v11 = *(v8 + 16);
    if (v11 < v2)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1B0452620(0, v11 + 1, 1);
      }

      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v13 >= v12 >> 1)
      {
        result = sub_1B0452620((v12 > 1), v13 + 1, 1);
      }

      *(v8 + 16) = v13 + 1;
      *(v8 + 8 * v13 + 32) = v9;
      if (!v6)
      {
        goto LABEL_26;
      }

      goto LABEL_6;
    }

    if (v4 >= v11)
    {
      break;
    }

    v14 = *(v8 + 8 * v4 + 32);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B0452620(0, *(v7 + 16) + 1, 1);
    }

    v16 = *(v7 + 16);
    v15 = *(v7 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_1B0452620((v15 > 1), v16 + 1, 1);
    }

    *(v7 + 16) = v16 + 1;
    *(v7 + 8 * v16 + 32) = v14;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B0CE357C(v8);
      v8 = result;
    }

    v2 = v17;
    if (v4 >= *(v8 + 16))
    {
      goto LABEL_29;
    }

    *(v8 + 8 * v4++ + 32) = v9;
    if (v4 < v17)
    {
      if (!v6)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (!v6)
      {
        goto LABEL_26;
      }

      v4 = 0;
    }

LABEL_6:
    --v6;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1B0CD84B4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B0E469A8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1B0E45278();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1B0CD868C(v7, v8, a1, v4);
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
    return sub_1B0CD85AC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1B0CD85AC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = result - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v10 = v6;
    while (1)
    {
      v11 = *v10;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v12 = static SectionSpecifier.Part.< infix(_:_:)(v8, v11);

      if (!v12)
      {
LABEL_4:
        ++v4;
        v6 += 8;
        --v7;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v13 = *v10;
      v8 = v10[1];
      *v10 = v8;
      v10[1] = v13;
      --v10;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B0CD868C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v91 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v6 = *v91;
    if (!*v91)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_1B0B9443C(v8);
      v8 = result;
    }

    v82 = *(v8 + 2);
    if (v82 >= 2)
    {
      while (*a3)
      {
        v83 = *&v8[16 * v82];
        v84 = *&v8[16 * v82 + 24];
        sub_1B0CD9238((*a3 + 8 * v83), (*a3 + 8 * *&v8[16 * v82 + 16]), (*a3 + 8 * v84), v6);
        if (v5)
        {
        }

        if (v84 < v83)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1B0B9443C(v8);
        }

        if (v82 - 2 >= *(v8 + 2))
        {
          goto LABEL_114;
        }

        v85 = &v8[16 * v82];
        *v85 = v83;
        *(v85 + 1) = v84;
        result = sub_1B0B943B0(v82 - 1);
        v82 = *(v8 + 2);
        if (v82 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v87 = v5;
      v11 = *(*a3 + 8 * v10);
      v5 = 8 * v7;
      v12 = (*a3 + 8 * v7);
      v14 = *v12;
      v13 = v12 + 2;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v15 = static SectionSpecifier.Part.< infix(_:_:)(v11, v14);

      v89 = v7;
      v16 = (v7 + 2);
      while (v6 != v16)
      {
        v18 = *(v13 - 1);
        v17 = *v13;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v19 = static SectionSpecifier.Part.< infix(_:_:)(v17, v18);

        v16 = (v16 + 1);
        ++v13;
        if (v15 != v19)
        {
          v6 = v16 - 1;
          break;
        }
      }

      if (v15)
      {
        v9 = v89;
        if (v6 < v89)
        {
          goto LABEL_117;
        }

        if (v89 < v6)
        {
          v20 = 8 * v6 - 8;
          v21 = v6;
          v22 = v89;
          do
          {
            v21 = (v21 - 1);
            if (v22 != v21)
            {
              v24 = *a3;
              if (!*a3)
              {
                goto LABEL_123;
              }

              v23 = *(v24 + v5);
              *(v24 + v5) = *(v24 + v20);
              *(v24 + v20) = v23;
            }

            v22 = (v22 + 1);
            v20 -= 8;
            v5 += 8;
          }

          while (v22 < v21);
        }

        v10 = v6;
        v5 = v87;
      }

      else
      {
        v10 = v6;
        v5 = v87;
        v9 = v89;
      }
    }

    v25 = a3[1];
    if (v10 < v25)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_116;
      }

      if (v10 - v9 < a4)
      {
        v26 = (v9 + a4);
        if (__OFADD__(v9, a4))
        {
          goto LABEL_118;
        }

        if (v26 >= v25)
        {
          v26 = a3[1];
        }

        if (v26 < v9)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v10 != v26)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v10 < v9)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B0AFF300(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v37 = *(v8 + 2);
    v36 = *(v8 + 3);
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      result = sub_1B0AFF300((v36 > 1), v37 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v38;
    v39 = &v8[16 * v37];
    *(v39 + 4) = v9;
    *(v39 + 5) = v10;
    v40 = *v91;
    if (!*v91)
    {
      goto LABEL_125;
    }

    v7 = v10;
    if (v37)
    {
      while (1)
      {
        v41 = v38 - 1;
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v42 = *(v8 + 4);
          v43 = *(v8 + 5);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_57:
          if (v45)
          {
            goto LABEL_104;
          }

          v58 = &v8[16 * v38];
          v60 = *v58;
          v59 = *(v58 + 1);
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_107;
          }

          v64 = &v8[16 * v41 + 32];
          v66 = *v64;
          v65 = *(v64 + 1);
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_111;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v38 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v68 = &v8[16 * v38];
        v70 = *v68;
        v69 = *(v68 + 1);
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_71:
        if (v63)
        {
          goto LABEL_106;
        }

        v71 = &v8[16 * v41];
        v73 = *(v71 + 4);
        v72 = *(v71 + 5);
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_109;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_78:
        v79 = v41 - 1;
        if (v41 - 1 >= v38)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v80 = *&v8[16 * v79 + 32];
        v6 = *&v8[16 * v41 + 40];
        sub_1B0CD9238((*a3 + 8 * v80), (*a3 + 8 * *&v8[16 * v41 + 32]), (*a3 + 8 * v6), v40);
        if (v5)
        {
        }

        if (v6 < v80)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1B0B9443C(v8);
        }

        if (v79 >= *(v8 + 2))
        {
          goto LABEL_101;
        }

        v81 = &v8[16 * v79];
        *(v81 + 4) = v80;
        *(v81 + 5) = v6;
        result = sub_1B0B943B0(v41);
        v38 = *(v8 + 2);
        if (v38 <= 1)
        {
          goto LABEL_3;
        }
      }

      v46 = &v8[16 * v38 + 32];
      v47 = *(v46 - 64);
      v48 = *(v46 - 56);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_102;
      }

      v51 = *(v46 - 48);
      v50 = *(v46 - 40);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_103;
      }

      v53 = &v8[16 * v38];
      v55 = *v53;
      v54 = *(v53 + 1);
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_105;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_108;
      }

      if (v57 >= v49)
      {
        v75 = &v8[16 * v41 + 32];
        v77 = *v75;
        v76 = *(v75 + 1);
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_112;
        }

        if (v44 < v78)
        {
          v41 = v38 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v88 = v5;
  v90 = v9;
  v27 = *a3;
  v28 = *a3 + 8 * v10 - 8;
  v29 = (v9 - v10);
  v92 = v26;
LABEL_30:
  v93 = v10;
  v30 = *(v27 + 8 * v10);
  v6 = v29;
  v31 = v28;
  while (1)
  {
    v32 = *v31;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v33 = static SectionSpecifier.Part.< infix(_:_:)(v30, v32);

    if (!v33)
    {
LABEL_29:
      v10 = v93 + 1;
      v28 += 8;
      v29 = (v29 - 1);
      if ((v93 + 1) != v92)
      {
        goto LABEL_30;
      }

      v10 = v92;
      v5 = v88;
      v9 = v90;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v34 = *v31;
    v30 = v31[1];
    *v31 = v30;
    v31[1] = v34;
    --v31;
    if (__CFADD__(v6++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1B0CD8CAC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v89 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v89;
    if (!*v89)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1B0B9443C(v8);
      v8 = result;
    }

    v81 = (v8 + 16);
    v82 = *(v8 + 16);
    if (v82 >= 2)
    {
      while (*a3)
      {
        v83 = (v8 + 16 * v82);
        v84 = *v83;
        v85 = &v81[2 * v82];
        v86 = v85[1];
        sub_1B0CD94D0((*a3 + 16 * *v83), (*a3 + 16 * *v85), (*a3 + 16 * v86), v5);
        if (v4)
        {
        }

        if (v86 < v84)
        {
          goto LABEL_114;
        }

        if (v82 - 2 >= *v81)
        {
          goto LABEL_115;
        }

        *v83 = v84;
        v83[1] = v86;
        v87 = *v81 - v82;
        if (*v81 < v82)
        {
          goto LABEL_116;
        }

        v82 = *v81 - 1;
        result = memmove(v85, v85 + 2, 16 * v87);
        *v81 = v82;
        if (v82 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v88 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7 + 8);
      v11 = 16 * v9;
      v12 = *a3 + 16 * v9;
      v13 = *(v12 + 8);
      v14 = v9 + 2;
      v15 = (v12 + 40);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 2;
        v18 = (v10 < v13) ^ (v17 >= v16);
        ++v14;
        v16 = v17;
        if ((v18 & 1) == 0)
        {
          v7 = v14 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 0;
        v20 = 16 * v7;
        v21 = v9;
        do
        {
          if (v21 != v7 + v19 - 1)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v26 + v11);
            v23 = v26 + v20;
            v24 = *v22;
            v25 = v22[1];
            *v22 = *(v23 - 16);
            *(v23 - 16) = v24;
            *(v23 - 8) = v25;
          }

          ++v21;
          --v19;
          v20 -= 16;
          v11 += 16;
        }

        while (v21 < v7 + v19);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B0AFF300(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v35 = *(v8 + 24);
    v36 = v5 + 1;
    if (v5 >= v35 >> 1)
    {
      result = sub_1B0AFF300((v35 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v36;
    v37 = v8 + 32;
    v38 = (v8 + 32 + 16 * v5);
    *v38 = v9;
    v38[1] = v7;
    v90 = *v89;
    if (!*v89)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v39 = *(v8 + 32);
          v40 = *(v8 + 40);
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_57:
          if (v42)
          {
            goto LABEL_104;
          }

          v55 = (v8 + 16 * v36);
          v57 = *v55;
          v56 = v55[1];
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_106;
          }

          v61 = (v37 + 16 * v5);
          v63 = *v61;
          v62 = v61[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_111;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v5 = v36 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v36 < 2)
        {
          goto LABEL_112;
        }

        v65 = (v8 + 16 * v36);
        v67 = *v65;
        v66 = v65[1];
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_72:
        if (v60)
        {
          goto LABEL_108;
        }

        v68 = (v37 + 16 * v5);
        v70 = *v68;
        v69 = v68[1];
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_110;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v36)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v76 = (v37 + 16 * (v5 - 1));
        v77 = *v76;
        v78 = (v37 + 16 * v5);
        v79 = v78[1];
        sub_1B0CD94D0((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
        if (v4)
        {
        }

        if (v79 < v77)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v76 = v77;
        v76[1] = v79;
        v80 = *(v8 + 16);
        if (v5 >= v80)
        {
          goto LABEL_101;
        }

        v36 = v80 - 1;
        result = memmove((v37 + 16 * v5), v78 + 2, 16 * (v80 - 1 - v5));
        *(v8 + 16) = v80 - 1;
        if (v80 <= 2)
        {
          goto LABEL_3;
        }
      }

      v43 = v37 + 16 * v36;
      v44 = *(v43 - 64);
      v45 = *(v43 - 56);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_102;
      }

      v48 = *(v43 - 48);
      v47 = *(v43 - 40);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_103;
      }

      v50 = (v8 + 16 * v36);
      v52 = *v50;
      v51 = v50[1];
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_105;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_107;
      }

      if (v54 >= v46)
      {
        v72 = (v37 + 16 * v5);
        v74 = *v72;
        v73 = v72[1];
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_113;
        }

        if (v41 < v75)
        {
          v5 = v36 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v88;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 16 * v7;
  v29 = v9 - v7;
LABEL_30:
  v30 = *(v27 + 16 * v7 + 8);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (v30 >= *(v32 - 1))
    {
LABEL_29:
      ++v7;
      v28 += 16;
      --v29;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v33 = *v32;
    *v32 = *(v32 - 1);
    *(v32 - 1) = v30;
    *(v32 - 2) = v33;
    v32 -= 2;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1B0CD9238(uint64_t *__src, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = a4;
  v5 = a3;
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
  if (v9 < v11 >> 3)
  {
    v13 = a2;
    if (a4 != __src || &__src[v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v14 = &v4[v9];
    if (v7 < 8)
    {
LABEL_10:
      v15 = v6;
      goto LABEL_36;
    }

    while (1)
    {
      if (v13 >= v5)
      {
        goto LABEL_10;
      }

      v18 = *v13;
      v19 = *v4;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v20 = static SectionSpecifier.Part.< infix(_:_:)(v18, v19);

      if (v20)
      {
        break;
      }

      v16 = v4;
      v17 = v6 == v4++;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v6;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v13;
    v17 = v6 == v13++;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v6 = *v16;
    goto LABEL_13;
  }

  if (a4 != a2 || &a2[v12] <= a4)
  {
    v21 = a2;
    memmove(a4, a2, 8 * v12);
    a2 = v21;
  }

  v15 = a2;
  v14 = &v4[v12];
  if (v10 >= 8 && a2 > v6)
  {
    v32 = v4;
LABEL_25:
    v31 = v15;
    v22 = v15 - 1;
    --v5;
    v23 = v14;
    do
    {
      v24 = v5 + 1;
      v25 = *--v23;
      v26 = v22;
      v27 = *v22;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v28 = static SectionSpecifier.Part.< infix(_:_:)(v25, v27);

      if (v28)
      {
        v29 = v26;
        if (v24 != v31)
        {
          *v5 = *v26;
        }

        v4 = v32;
        if (v14 <= v32 || (v15 = v29, v29 <= v6))
        {
          v15 = v29;
          goto LABEL_36;
        }

        goto LABEL_25;
      }

      if (v24 != v14)
      {
        *v5 = *v23;
      }

      --v5;
      v14 = v23;
      v22 = v26;
    }

    while (v23 > v32);
    v14 = v23;
    v15 = v31;
    v4 = v32;
  }

LABEL_36:
  if (v15 != v4 || v15 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v15, v4, 8 * (v14 - v4));
  }

  return 1;
}

uint64_t sub_1B0CD94D0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*(v6 + 1) < *(v4 + 1))
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v5 -= 16;
    do
    {
      v17 = v5 + 16;
      if (*(v14 - 1) < *(v6 - 1))
      {
        v19 = v6 - 16;
        if (v17 != v6)
        {
          *v5 = *v19;
        }

        if (v14 <= v4 || (v6 -= 16, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v18 = v14 - 16;
      if (v17 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 -= 16;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v20 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v20 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v20 >> 4));
  }

  return 1;
}

uint64_t sub_1B0CD96D4(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = *(a2 + 16);
  if (a4)
  {
    v9 = 0;
  }

  else
  {
    v9 = a3;
  }

  v10 = MEMORY[0x1B27256A0](*(a2 + 16));
  if (v10 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (v11 <= a5)
  {
    v12 = a5;
  }

  else
  {
    v12 = v11;
  }

  if (v12 > 4)
  {
    v14 = MEMORY[0x1B27256B0]();
    sub_1B0CD9E14(a2 + 32, v8, (v14 + 16), v14 + 32);
    *a1 = v15;
    return v14;
  }

  else if (v8 >= 2)
  {
    v16 = sub_1B0CD97B8(a2 + 32, v8);
    result = 0;
    *a1 = v16;
  }

  else
  {
    result = 0;
    *a1 = v8;
  }

  return result;
}

char *sub_1B0CD97B8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v13 = MEMORY[0x1E69E7CC0];
  result = sub_1B0CDEA90(0, a2 & ~(a2 >> 63), 0);
  if (v2)
  {
    if (v2 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = 0;
    v6 = *(v13 + 16);
    do
    {
      v7 = v5++;
      v8 = *(a1 + 8 * v7);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v9 = 32;
      while (v6)
      {
        v10 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v8, *(v13 + v9));
        v9 += 8;
        --v6;
        if (v10)
        {

          return v7;
        }
      }

      v12 = *(v13 + 16);
      v11 = *(v13 + 24);
      v6 = v12 + 1;
      if (v12 >= v11 >> 1)
      {
        sub_1B0CDEA90((v11 > 1), v12 + 1, 1);
      }

      *(v13 + 16) = v6;
      *(v13 + 8 * v12 + 32) = v8;
    }

    while (v5 != v2);
  }

  return v2;
}

uint64_t sub_1B0CD98E4(uint64_t a1)
{
  v2 = v1;
  v6 = v1[1];
  v4 = v1 + 1;
  v5 = v6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if ((result & 1) == 0)
  {
    result = sub_1B0CDEA90(0, *(v5 + 16) + 1, 1);
    v5 = *v4;
  }

  v9 = *(v5 + 16);
  v8 = *(v5 + 24);
  if (v9 >= v8 >> 1)
  {
    result = sub_1B0CDEA90((v8 > 1), v9 + 1, 1);
    v5 = *v4;
  }

  *(v5 + 16) = v9 + 1;
  *(v5 + 8 * v9 + 32) = a1;
  v2[1] = v5;
  v10 = *v2;
  if (*v2)
  {
    swift_beginAccess();
    if (MEMORY[0x1B2725670](*(v10 + 16) & 0x3FLL) > v9)
    {
      v11 = *v2;
      result = swift_isUniquelyReferenced_native();
      v12 = *v2;
      if ((result & 1) == 0)
      {
        if (!v12)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v13 = *v2;
        v14 = sub_1B0E43578();

        *v2 = v14;
        v12 = v14;
      }

      if (v12)
      {
        v15 = *(v12 + 16);
        v16 = *(*v4 + 16) + ~(*(v12 + 24) >> 6);
        return sub_1B0E43518();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v9 < 0xF)
  {
    return result;
  }

  return sub_1B0CD9A54();
}

uint64_t sub_1B0CD9A54()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24) & 0x3FLL;
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];
  v4 = *(v3 + 16);
  if (v2 || v4 >= 0x10)
  {
    v6 = MEMORY[0x1B27256A0](v4);
    if (v2 <= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v2;
    }

    v5 = sub_1B0CD9AF4(v3, v7, 0, v2);
  }

  else
  {
    v5 = 0;
  }

  *v0 = v5;
  return result;
}

uint64_t sub_1B0CD9AF4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = MEMORY[0x1B27256A0](v6);
  result = 0;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  if (v8 <= a4)
  {
    v8 = a4;
  }

  if (v8 >= 5)
  {
    v10 = MEMORY[0x1B27256B0](v8, a4);
    sub_1B0CD9B74(a1, (v10 + 16), v10 + 32);
    return v10;
  }

  return result;
}

uint64_t sub_1B0CD9BC4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v24 = result;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v7 = 0;
      while (1)
      {
        v8 = *(v24 + 8 * v7);
        v9 = *a3;
        sub_1B0E46C28();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        SectionSpecifier.Part.hash(into:)(v19, v8);
        result = sub_1B0E46CB8();
        v10 = 1 << *a3;
        v11 = __OFSUB__(v10, 1);
        v12 = v10 - 1;
        if (v11)
        {
          break;
        }

        v13 = v12 & result;
        v14 = sub_1B0E434F8();
        v16 = v15;
        v18 = v17;

        v19[0] = a3;
        v19[1] = a4;
        v19[2] = v13;
        v20 = v14;
        v21 = v16;
        v22 = v18;
        v23 = 0;
        while (v20)
        {
          sub_1B0E43548();
        }

        result = sub_1B0E43538();
        if (++v7 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B0CD9CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v9 = *a4;
  sub_1B0E46C28();
  SectionSpecifier.Part.hash(into:)(v24, a1);
  result = sub_1B0E46CB8();
  v11 = 1 << *a4;
  v12 = __OFSUB__(v11, 1);
  v13 = v11 - 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    v14 = v13 & result;
    v15 = sub_1B0E434F8();
    *&v26 = a4;
    *(&v26 + 1) = a5;
    *&v27 = v14;
    *(&v27 + 1) = v15;
    *&v28 = v16;
    *(&v28 + 1) = v17;
    v29 = 0;
    v18 = sub_1B0E43528();
    if ((v19 & 1) == 0)
    {
      do
      {
        v20 = *(a2 + 8 * v18);
        v21 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v22 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v21, a1);

        if (v22)
        {
          break;
        }

        sub_1B0E43548();
        v24[0] = v26;
        v24[1] = v27;
        v24[2] = v28;
        v25 = v29;
        v18 = sub_1B0E43528();
      }

      while ((v23 & 1) == 0);
    }

    return v18;
  }

  return result;
}

uint64_t sub_1B0CD9E14(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (!a2)
  {
    return 1;
  }

  if (a2 < 0)
  {
    goto LABEL_16;
  }

  v4 = a3;
  v5 = result;
  v6 = 0;
  while (2)
  {
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_15;
    }

    v35 = v6 + 1;
    v7 = *(v5 + 8 * v6);
    v8 = *v4;
    sub_1B0E46C28();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    SectionSpecifier.Part.hash(into:)(v26, v7);
    result = sub_1B0E46CB8();
    v9 = 1 << *v4;
    v10 = __OFSUB__(v9, 1);
    v11 = v9 - 1;
    if (v10)
    {
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }

    v12 = v11 & result;
    v13 = sub_1B0E434F8();
    v15 = v14;
    v17 = v16;

    *&v27 = v4;
    *(&v27 + 1) = a4;
    *&v28 = v12;
    *(&v28 + 1) = v13;
    *&v29 = v15;
    *(&v29 + 1) = v17;
    v30 = 0;
    v34 = 0;
    v31 = v27;
    v32 = v28;
    v33 = v29;
    while (1)
    {
      v18 = sub_1B0E43528();
      if (v19)
      {
        break;
      }

      v20 = *(v5 + 8 * v18);
      v21 = *(v5 + 8 * v6);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v22 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v20, v21);

      if (v22)
      {
        return 0;
      }

      sub_1B0E43548();
      v31 = v27;
      v32 = v28;
      v33 = v29;
      v34 = v30;
    }

    result = sub_1B0E43538();
    v6 = v35;
    v4 = a3;
    if (v35 != a2)
    {
      continue;
    }

    return 1;
  }
}

uint64_t sub_1B0CD9FE0(uint64_t result, char a2)
{
  if (result < 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v3 = v2;
  v5 = result;
  v8 = v2[1];
  v6 = v2 + 1;
  v7 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v7 + 24) >> 1)
  {
    v10 = *v3;
    if (*v3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (*(v7 + 16) <= v5)
    {
      v14 = v5;
    }

    else
    {
      v14 = *(v7 + 16);
    }

    sub_1B0CDEA90(isUniquelyReferenced_nonNull_native, v14, 0);
    v7 = *v6;
    v10 = *v3;
    if (*v3)
    {
LABEL_5:
      swift_beginAccess();
      v11 = *(v10 + 16) & 0x3FLL;
      v12 = MEMORY[0x1B27256A0](v5);
      if (a2)
      {
        v13 = v12;
        if (v11 >= v12)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v16 = v12;
        swift_beginAccess();
        v12 = v16;
        v13 = *(v10 + 24) & 0x3FLL;
        if (v11 >= v12)
        {
          goto LABEL_20;
        }
      }

LABEL_16:
      if (v13 <= v12)
      {
        v15 = v12;
      }

      else
      {
        v15 = v13;
      }

      goto LABEL_30;
    }
  }

  v12 = MEMORY[0x1B27256A0](v5);
  v11 = 0;
  if (a2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v12 > 0)
  {
    goto LABEL_16;
  }

LABEL_20:
  v17 = *(v7 + 16);
  if (v13 <= v12)
  {
    v18 = v12;
  }

  else
  {
    v18 = v13;
  }

  result = MEMORY[0x1B27256A0](*(v7 + 16));
  if (result <= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = result;
  }

  if (v19 < v11)
  {
    if (v13 <= v19)
    {
      v15 = v19;
    }

    else
    {
      v15 = v13;
    }

LABEL_30:
    v20 = sub_1B0CD9AF4(v7, v15, 0, v13);

    *v3 = v20;
    return result;
  }

  if (!v10 || (v21 = *v3, result = swift_isUniquelyReferenced_native(), (result & 1) != 0))
  {
    v22 = *v3;
    if (*v3)
    {
      goto LABEL_35;
    }

LABEL_39:
    if (!v13)
    {
      return result;
    }

    __break(1u);
    goto LABEL_41;
  }

  if (!*v3)
  {
LABEL_42:
    __break(1u);
    return result;
  }

  v23 = *v3;
  v22 = sub_1B0E43578();

  *v3 = v22;
  if (!v22)
  {
    goto LABEL_39;
  }

LABEL_35:
  result = swift_beginAccess();
  if ((*(v22 + 24) & 0x3FLL) != v13)
  {
    *(v22 + 24) = *(v22 + 24) & 0xFFFFFFFFFFFFFFC0 | v13 & 0x3F;
  }

  return result;
}

void *sub_1B0CDA1C0(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v10 = a5(v9, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

uint64_t sub_1B0CDA264(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E61C8, &qword_1B0EE36E8);
  result = sub_1B0E46228();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    v17 = *(v9 + 40);
    sub_1B0E46C28();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    SectionSpecifier.Part.hash(into:)(v27, v16);
    result = sub_1B0E46CB8();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 8 * v21) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1B0CDA474(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 72);
    v4 = (a2 + 40);
    do
    {
      v5 = *(v3 - 4);
      v6 = *(v3 - 3);
      v7 = *(v3 - 16);
      v16 = *v3;
      v17 = *(v3 - 1);
      v8 = *(v4 - 1);
      v9 = *v4;
      v10 = v4[1];
      v11 = *(v4 + 16);
      v12 = v4[3];
      v15 = v4[4];
      if ((static SectionSpecifier.Part.__derived_struct_equals(_:_:)(*(v3 - 5)) & 1) == 0)
      {
        return 0;
      }

      if (v7 > 2)
      {
        if (v7 == 3)
        {
          if (v11 != 3)
          {
            return 0;
          }
        }

        else
        {
          if (v7 != 4)
          {
            result = 0;
            if (v5 | v6)
            {
              if (v11 != 5 || v9 != 1 || v10)
              {
                return result;
              }
            }

            else if (v11 != 5 || v10 | v9)
            {
              return result;
            }

            goto LABEL_25;
          }

          if (v11 != 4)
          {
            return 0;
          }
        }
      }

      else if (v7)
      {
        if (v7 == 1)
        {
          if (v11 != 1)
          {
            return 0;
          }
        }

        else if (v11 != 2)
        {
          return 0;
        }
      }

      else if (v11)
      {
        return 0;
      }

      if (v5 != v9 || v6 != v10)
      {
        v13 = sub_1B0E46A78();
        result = 0;
        if ((v13 & 1) == 0)
        {
          return result;
        }

LABEL_25:
        if (v17 != v12)
        {
          return result;
        }

        goto LABEL_26;
      }

      if (v17 != v12)
      {
        return 0;
      }

LABEL_26:
      if ((sub_1B0CCACB0(v16, v15) & 1) == 0)
      {
        return 0;
      }

      v3 += 6;
      v4 += 6;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1B0CDA61C(uint64_t a1, uint64_t a2)
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
        v8 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v5, v7);
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

unint64_t sub_1B0CDA6A0(int64_t a1, uint64_t a2)
{
  v4 = v2[1];
  v5 = *(v4 + 16);
  v6 = *v2;
  if (!*v2)
  {
    if (!v5)
    {
      goto LABEL_16;
    }

    return sub_1B0CDA8D0(a1);
  }

  swift_beginAccess();
  if ((*(v6 + 16) & 0x3FLL) == (*(v6 + 24) & 0x3FLL))
  {
    if (!v5)
    {
      goto LABEL_16;
    }
  }

  else if (v5 <= MEMORY[0x1B2725680]())
  {
LABEL_16:
    v13 = sub_1B0CDA8D0(a1);
    sub_1B0CD9A54();
    return v13;
  }

  v8 = *v2;
  result = swift_isUniquelyReferenced_native();
  v10 = *v2;
  if ((result & 1) == 0)
  {
    if (!v10)
    {
      goto LABEL_20;
    }

    v11 = *v2;
    v12 = sub_1B0E43578();

    *v2 = v12;
    v10 = v12;
  }

  if (v10)
  {

    result = sub_1B0CDAC90(a2, (v10 + 16), v10 + 32, v2);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {

      sub_1B0CDAE84(a1, a1 + 1, v4, (v10 + 16), v10 + 32);

      return sub_1B0CDA8D0(a1);
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1B0CDA800@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B0CE35A4(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 48 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 16);
    v12 = *(v9 + 24);
    v13 = *(v9 + 32);
    v14 = *(v9 + 40);
    result = memmove(v9, (v9 + 48), 48 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
    *a2 = v10;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
    *(a2 + 32) = v13;
    *(a2 + 40) = v14;
  }

  return result;
}

uint64_t sub_1B0CDA8D0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B0CE3590(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 8 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 40), 8 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

unint64_t sub_1B0CDA954(uint64_t a1, uint64_t *a2)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = v5 + 32;
  v8 = *(v5 + 16);
  if (*v2)
  {
    v9 = *v2;

    v10 = sub_1B0CD9CEC(a1, v7, v8, (v6 + 16), v6 + 32);
    v12 = v11;

    if (v12)
    {
      return v10;
    }
  }

  else
  {
    if (!v8)
    {
      return 0;
    }

    v10 = 0;
    while (1)
    {
      v13 = *(v7 + 8 * v10);
      v14 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v15 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v14, a1);

      if (v15)
      {
        break;
      }

      if (v8 == ++v10)
      {
        return 0;
      }
    }
  }

  sub_1B0CDD18C(*a2, a2[1], a2[2], a2[3], a2[4], a2[5]);
  v17 = v2[2];
  v16 = v2 + 2;
  result = sub_1B0CDAAD4(v10, *(v17 + 16) - 1);
  v19 = *v16;
  if (*(*v16 + 16))
  {
    v20 = *v16;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B0CE35A4(v19);
      v19 = result;
    }

    v21 = *(v19 + 16);
    if (v21)
    {
      v22 = v19 + 48 * v21;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      v26 = *(v22 - 16);
      v27 = *(v22 + 24);
      *(v19 + 16) = v21 - 1;
      *v16 = v19;
      *a2 = v26;
      *(a2 + 16) = v23;
      a2[3] = v24;
      *(a2 + 32) = v25;
      a2[5] = v27;
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

unint64_t sub_1B0CDAAD4(unint64_t result, unint64_t a2)
{
  if (result != a2)
  {
    v3 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v4 = *v2;
      v5 = *(*v2 + 16);
      if (v5 > result)
      {
        if (v5 > a2)
        {
          v7 = v4 + 32 + 48 * result;
          v8 = *(v7 + 16);
          v28 = *(v7 + 24);
          v27 = *(v7 + 32);
          v9 = *(v7 + 40);
          v10 = v4 + 32 + 48 * a2;
          v11 = *v10;
          v12 = *(v10 + 8);
          v13 = *(v10 + 16);
          v30 = *(v10 + 24);
          v29 = *(v10 + 32);
          v14 = *(v10 + 40);
          v25 = *(v7 + 8);
          v26 = *v7;
          sub_1B0CDD108(*v7, v25, v8);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0CDD108(v11, v12, v13);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1B0CE35A4(v4);
            v4 = result;
          }

          if (*(v4 + 16) > v3)
          {
            v15 = v4 + 32 + 48 * v3;
            v16 = *v15;
            v17 = *(v15 + 8);
            v18 = *(v15 + 40);
            *v15 = v11;
            *(v15 + 8) = v12;
            v19 = *(v15 + 16);
            *(v15 + 16) = v13;
            *(v15 + 24) = v30;
            *(v15 + 32) = v29;
            *(v15 + 40) = v14;
            sub_1B0CDD120(v16, v17, v19);

            if (*(v4 + 16) > a2)
            {
              v20 = v4 + 32 + 48 * a2;
              v21 = *v20;
              v22 = *(v20 + 8);
              v23 = *(v20 + 40);
              *v20 = v26;
              *(v20 + 8) = v25;
              v24 = *(v20 + 16);
              *(v20 + 16) = v8;
              *(v20 + 24) = v28;
              *(v20 + 32) = v27;
              *(v20 + 40) = v9;
              sub_1B0CDD120(v21, v22, v24);

              *v2 = v4;
              return result;
            }

LABEL_15:
            __break(1u);
            return result;
          }

LABEL_14:
          __break(1u);
          goto LABEL_15;
        }

LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  return result;
}

unint64_t sub_1B0CDAC90(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  *&v23 = a2;
  *(&v23 + 1) = a3;
  *&v24 = a1;
  *(&v24 + 1) = sub_1B0E434F8();
  *&v25 = v7;
  *(&v25 + 1) = v8;
  v26 = 0;
  sub_1B0E43548();
  if (*(&v24 + 1))
  {
    v9 = sub_1B0E43508();
    do
    {
      v31 = v23;
      v32 = v24;
      v33 = v25;
      v34 = v26;
      result = sub_1B0E43528();
      if (v12)
      {
LABEL_23:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v13 = *(a4 + 8);
      if (result >= *(v13 + 16))
      {
        goto LABEL_21;
      }

      v14 = *a2;
      v15 = *(v13 + 8 * result + 32);
      sub_1B0E46C28();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      SectionSpecifier.Part.hash(into:)(&v22, v15);
      v16 = sub_1B0E46CB8();

      v17 = 1 << *a2;
      v18 = v17 - 1;
      if (__OFSUB__(v17, 1))
      {
        goto LABEL_22;
      }

      v19 = v18 & v16;
      if (v6 >= v9)
      {
        if (v19 < v9)
        {
          goto LABEL_5;
        }
      }

      else if (v19 >= v9)
      {
        goto LABEL_15;
      }

      if (v6 >= v19)
      {
LABEL_15:
        v27 = v23;
        v28 = v24;
        v29 = v25;
        v30 = v26;
        v20 = sub_1B0E43528();
        if ((v21 & 1) == 0)
        {
          v10 = ((v18 & ((v20 - (a2[1] >> 6)) >> 63)) + v20 - (a2[1] >> 6)) ^ v18;
        }

        v6 = v28;
        sub_1B0E43518();
      }

LABEL_5:
      sub_1B0E43548();
    }

    while (*(&v24 + 1));
  }

  return sub_1B0E43518();
}

uint64_t sub_1B0CDAE84(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_58;
  }

  if (v6 >= 1)
  {
    v10 = result;
    v11 = *(a3 + 16);
    if (result < (v11 - v6) / 2)
    {
      result = MEMORY[0x1B2725670](*a4 & 0x3F);
      if (result / 3 > v10)
      {
        if (v10 < 0)
        {
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        if (v11 < v10)
        {
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        v12 = a3;

        if (v10)
        {
          v13 = 0;
          while (1)
          {
            v14 = *(v12 + 32 + 8 * v13);
            v15 = *a4;
            sub_1B0E46C28();
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            SectionSpecifier.Part.hash(into:)(&v48, v14);
            result = sub_1B0E46CB8();
            v16 = 1 << *a4;
            v17 = __OFSUB__(v16, 1);
            v18 = v16 - 1;
            if (v17)
            {
              break;
            }

            v19 = v18 & result;
            v20 = sub_1B0E434F8();
            *&v48 = a4;
            *(&v48 + 1) = a5;
            *&v49 = v19;
            *(&v49 + 1) = v20;
            *&v50 = v21;
            *(&v50 + 1) = v22;
            v51 = 0;
            while (*(&v49 + 1))
            {
              v52 = v48;
              v53 = v49;
              v54 = v50;
              v55 = v51;
              v23 = sub_1B0E43528();
              if ((v24 & 1) == 0 && v23 == v13)
              {
                break;
              }

              sub_1B0E43548();
            }

            result = v13 + v6;
            if (__OFADD__(v13, v6))
            {
              goto LABEL_55;
            }

            ++v13;
            sub_1B0E43538();

            if (v13 == v10)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

LABEL_17:

        goto LABEL_18;
      }

      *&v52 = a4;
      *(&v52 + 1) = a5;
      *&v53 = 0;
      *(&v53 + 1) = sub_1B0E434F8();
      *&v54 = v30;
      *(&v54 + 1) = v31;
      v55 = 0;
      v48 = v52;
      v49 = v53;
      v50 = v54;
      v51 = v55;
      v32 = sub_1B0E43528();
      if ((v33 & 1) != 0 || v32 >= v10)
      {
LABEL_33:
        result = sub_1B0E43548();
LABEL_18:
        v25 = a4[1];
        if (__OFSUB__(v25 >> 6, v6))
        {
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v26 = 1 << *a4;
        v17 = __OFSUB__(v26, 1);
        v27 = v26 - 1;
        if (v17)
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        v28 = (v27 & (((v25 >> 6) - v6) >> 63)) + (v25 >> 6) - v6;
        if (v28 < v27)
        {
          v27 = 0;
        }

        a4[1] = a4[1] & 0x3F | ((v28 - v27) << 6);
        return result;
      }

      if (!__OFADD__(v32, v6))
      {
        sub_1B0E43538();
        goto LABEL_33;
      }

      __break(1u);
LABEL_39:
      *&v52 = a4;
      *(&v52 + 1) = a5;
      *&v53 = 0;
      *(&v53 + 1) = sub_1B0E434F8();
      *&v54 = v34;
      *(&v54 + 1) = v35;
      v55 = 0;
      v48 = v52;
      v49 = v53;
      v50 = v54;
      v51 = v55;
      v36 = sub_1B0E43528();
      if ((v37 & 1) == 0 && v36 >= v5)
      {
        v17 = __OFSUB__(v36, v6);
        result = v36 - v6;
        if (v17)
        {
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        sub_1B0E43538();
      }

      return sub_1B0E43548();
    }

    v5 = a2;
    v29 = v11 - a2;
    if (__OFSUB__(v11, a2))
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    result = MEMORY[0x1B2725670](*a4 & 0x3F);
    if (v29 >= result / 3)
    {
      goto LABEL_39;
    }

    if (v11 < v5)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v5 < 0)
    {
LABEL_65:
      __break(1u);
      return result;
    }

    if (v11 != v5)
    {
      do
      {
        v38 = *(a3 + 32 + 8 * v5);
        v39 = *a4;
        sub_1B0E46C28();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        SectionSpecifier.Part.hash(into:)(&v48, v38);
        result = sub_1B0E46CB8();
        v40 = 1 << *a4;
        v17 = __OFSUB__(v40, 1);
        v41 = v40 - 1;
        if (v17)
        {
          goto LABEL_57;
        }

        v42 = v41 & result;
        v43 = sub_1B0E434F8();
        *&v48 = a4;
        *(&v48 + 1) = a5;
        *&v49 = v42;
        *(&v49 + 1) = v43;
        *&v50 = v44;
        *(&v50 + 1) = v45;
        v51 = 0;
        while (*(&v49 + 1))
        {
          v52 = v48;
          v53 = v49;
          v54 = v50;
          v55 = v51;
          v46 = sub_1B0E43528();
          if ((v47 & 1) == 0 && v46 == v5)
          {
            break;
          }

          sub_1B0E43548();
        }

        sub_1B0E43538();
      }

      while (++v5 != v11);
    }
  }

  return result;
}

uint64_t sub_1B0CDB2F4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  if ((static SectionSpecifier.Part.__derived_struct_equals(_:_:)(*a1) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = a2[1];
  v9 = a2[2];
  v10 = *(a2 + 24);
  if (v7 <= 2)
  {
    if (*(a1 + 24))
    {
      if (v7 == 1)
      {
        if (v10 != 1)
        {
          return 0;
        }

        goto LABEL_16;
      }

      if (v10 == 2)
      {
LABEL_16:
        if ((v5 != v8 || v6 != v9) && (sub_1B0E46A78() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_27;
      }
    }

    else if (!*(a2 + 24))
    {
      goto LABEL_16;
    }

    return 0;
  }

  if (v7 == 3)
  {
    if (v10 != 3)
    {
      return 0;
    }

    goto LABEL_16;
  }

  if (v7 == 4)
  {
    if (v10 != 4)
    {
      return 0;
    }

    goto LABEL_16;
  }

  if (v5 | v6)
  {
    if (v10 != 5 || v8 != 1 || v9)
    {
      return 0;
    }
  }

  else if (v10 != 5 || v9 | v8)
  {
    return 0;
  }

LABEL_27:
  if (*(a1 + 32) != a2[4])
  {
    return 0;
  }

  v11 = *(a1 + 40);
  v12 = a2[5];

  return sub_1B0CCACB0(v11, v12);
}

uint64_t sub_1B0CDB414(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 2u)
  {
    if (a3 == 3)
    {
      if (a6 == 3)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        return sub_1B0E46A78();
      }
    }

    else if (a3 == 4)
    {
      if (a6 == 4)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        return sub_1B0E46A78();
      }
    }

    else if (a1 | a2)
    {
      if (a6 == 5 && a4 == 1 && !a5)
      {
        return 1;
      }
    }

    else if (a6 == 5 && !(a5 | a4))
    {
      return 1;
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      if (a6 == 1)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        return sub_1B0E46A78();
      }
    }

    else if (a6 == 2)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      return sub_1B0E46A78();
    }
  }

  else if (!a6)
  {
    if (a1 == a4 && a2 == a5)
    {
      return 1;
    }

    return sub_1B0E46A78();
  }

  return 0;
}

uint64_t sub_1B0CDB548(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = result;
  v7 = 0;
  v8 = 0;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  while (v11)
  {
    v12 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v13 = v12 | (v8 << 6);
LABEL_11:
    v16 = *(*(a3 + 48) + 8 * v13);
    v17 = *(a4 + 16);
    if (v17 >= *(v16 + 16))
    {
LABEL_15:
      *(v6 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
LABEL_18:

        return sub_1B0CDA264(v6, a2, v7, a3);
      }
    }

    else
    {
      v18 = (v16 + 32);
      v19 = (a4 + 32);
      while (v17)
      {
        v20 = *v19++;
        result = v20;
        v21 = *v18++;
        --v17;
        if (v21 != result)
        {
          goto LABEL_15;
        }
      }
    }
  }

  v14 = v8;
  while (1)
  {
    v8 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v8 >= ((v9 + 63) >> 6))
    {
      goto LABEL_18;
    }

    v15 = *(a3 + 56 + 8 * v8);
    ++v14;
    if (v15)
    {
      v11 = (v15 - 1) & v15;
      v13 = __clz(__rbit64(v15)) | (v8 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0CDB688(uint64_t a1, uint64_t a2)
{
  v30[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;
  v8 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v5 > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    MEMORY[0x1EEE9AC00](v8);
    bzero(v30 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = 0;
    v10 = 0;
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 56);
    while (v13)
    {
      v14 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v15 = v14 | (v10 << 6);
LABEL_12:
      v18 = *(*(a1 + 48) + 8 * v15);
      v19 = *(a2 + 16);
      if (v19 >= *(v18 + 16))
      {
LABEL_16:
        *(v30 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)) |= 1 << v15;
        if (__OFADD__(v9++, 1))
        {
          __break(1u);
LABEL_19:
          v26 = sub_1B0CDA264((v30 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, v9, a1);
          goto LABEL_20;
        }
      }

      else
      {
        v20 = (v18 + 32);
        v21 = (a2 + 32);
        while (v19)
        {
          v23 = *v21++;
          v22 = v23;
          v24 = *v20++;
          --v19;
          if (v24 != v22)
          {
            goto LABEL_16;
          }
        }
      }
    }

    v16 = v10;
    while (1)
    {
      v10 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v10 >= ((v11 + 63) >> 6))
      {
        goto LABEL_19;
      }

      v17 = *(a1 + 56 + 8 * v10);
      ++v16;
      if (v17)
      {
        v13 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v10 << 6);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v29 = swift_slowAlloc();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v26 = sub_1B0CDA1C0(v29, v6, a1, a2, sub_1B0CDB548);

  MEMORY[0x1B272C230](v29, -1, -1);
LABEL_20:

  v27 = *MEMORY[0x1E69E9840];
  return v26;
}

uint64_t sub_1B0CDB900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v6 = a1 + 56;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 56);
  v10 = (v7 + 63) >> 6;
  v30 = a3 + 32;
  v27 = a4 + 32;
  result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v12 = 0;
  v13 = 0;
  v25 = a2;
  v26 = result;
  while (v9)
  {
LABEL_11:
    v17 = *(*(v5 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v9)))));
    v18 = *(a3 + 16);
    if (a2)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      v19 = sub_1B0CD9CEC(v17, v30, v18, (a2 + 16), a2 + 32);
      v21 = v20;

      if ((v21 & 1) == 0)
      {
        if ((v19 & 0x8000000000000000) != 0)
        {
          goto LABEL_26;
        }

        goto LABEL_21;
      }

      v14 = 0;
    }

    else
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if (v18)
      {
        v19 = 0;
        while (1)
        {
          v22 = *(v30 + 8 * v19);
          v23 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v24 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v23, v17);

          if (v24)
          {
            break;
          }

          if (v18 == ++v19)
          {
            goto LABEL_19;
          }
        }

        a2 = v25;
        v5 = v26;
LABEL_21:
        if (v19 >= *(a4 + 16))
        {
          goto LABEL_27;
        }

        v14 = *(v27 + 48 * v19 + 32);
        goto LABEL_5;
      }

LABEL_19:

      v14 = 0;
      a2 = v25;
      v5 = v26;
    }

LABEL_5:
    v9 &= v9 - 1;
    v15 = __OFADD__(v13, v14);
    v13 += v14;
    if (v15)
    {
      goto LABEL_25;
    }
  }

  while (1)
  {
    v16 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v16 >= v10)
    {

      return v5;
    }

    v9 = *(v6 + 8 * v16);
    ++v12;
    if (v9)
    {
      v12 = v16;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1B0CDBB04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v8 = a1;
  v9 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v48 = MEMORY[0x1E69E7CC0];
    sub_1B0CDEAF0(0, v9, 0);
    v11 = v48;
    v12 = v8 + 56;
    v13 = -1 << *(v8 + 32);
    result = sub_1B0E460B8();
    v14 = result;
    v15 = 0;
    v37 = v8 + 64;
    v38 = v9;
    v39 = v8 + 56;
    while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(v8 + 32))
    {
      v17 = v14 >> 6;
      if ((*(v12 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
      {
        goto LABEL_22;
      }

      v43 = v15;
      v45 = *(v8 + 36);
      v18 = *(*(v8 + 48) + 8 * v14);
      swift_bridgeObjectRetain_n();
      v19 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v20 = sub_1B0CDB688(v19, v18);
      v44 = v7;

      v47 = v20;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0CC91C4(&v46, v18);

      v21 = v47;
      v22 = v8;

      v23 = sub_1B0CDB900(v21, a4, a5, a6);
      v25 = v24;

      v26 = v11;
      v48 = v11;
      v27 = *(v11 + 16);
      v28 = *(v26 + 24);
      if (v27 >= v28 >> 1)
      {
        result = sub_1B0CDEAF0((v28 > 1), v27 + 1, 1);
        v26 = v48;
      }

      *(v26 + 16) = v27 + 1;
      v29 = v26 + 16 * v27;
      *(v29 + 32) = v23;
      *(v29 + 40) = v25;
      v16 = 1 << *(v22 + 32);
      if (v14 >= v16)
      {
        goto LABEL_23;
      }

      v8 = v22;
      v12 = v39;
      v30 = *(v39 + 8 * v17);
      if ((v30 & (1 << v14)) == 0)
      {
        goto LABEL_24;
      }

      v11 = v26;
      if (v45 != *(v8 + 36))
      {
        goto LABEL_25;
      }

      v31 = v30 & (-2 << (v14 & 0x3F));
      if (v31)
      {
        v16 = __clz(__rbit64(v31)) | v14 & 0x7FFFFFFFFFFFFFC0;
        v7 = v44;
      }

      else
      {
        v32 = v17 << 6;
        v33 = v17 + 1;
        v34 = (v37 + 8 * v17);
        v7 = v44;
        while (v33 < (v16 + 63) >> 6)
        {
          v36 = *v34++;
          v35 = v36;
          v32 += 64;
          ++v33;
          if (v36)
          {
            result = sub_1B0425168(v14, v45, 0);
            v16 = __clz(__rbit64(v35)) + v32;
            goto LABEL_4;
          }
        }

        result = sub_1B0425168(v14, v45, 0);
      }

LABEL_4:
      v15 = v43 + 1;
      v14 = v16;
      if (v43 + 1 == v38)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0CDBDE4(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v25 = MEMORY[0x1E69E7CC0];
  v3 = *(a1 + 16);
  sub_1B0CD9FE0(v3, 0);
  sub_1B0CDEAD0(0, v3, 0);
  v21 = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  v20 = a1 + 32;
  while (1)
  {
    v5 = v20 + 56 * v4;
    v7 = *v5;
    v6 = *(v5 + 8);
    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
    v10 = *(v5 + 32);
    v23 = v10;
    v22 = *(v5 + 40);
    v11 = (v25 + 32);
    v12 = *(v25 + 16);
    v24 = *(v5 + 48);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0CDD108(v6, v8, v9);
    if (v12)
    {
      break;
    }

LABEL_6:
    sub_1B0CD98E4(v7);
    v18 = *(v2 + 16);
    v17 = *(v2 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_1B0CDEAD0((v17 > 1), v18 + 1, 1);
    }

    ++v4;
    *(v2 + 16) = v18 + 1;
    v19 = v2 + 48 * v18;
    *(v19 + 32) = v6;
    *(v19 + 40) = v8;
    *(v19 + 48) = v9;
    *(v19 + 56) = v23;
    *(v19 + 64) = v22;
    *(v19 + 72) = v24;
    if (v4 == v21)
    {
      return 0;
    }
  }

  while (1)
  {
    v13 = *v11;
    v14 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v15 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v14, v7);

    if (v15)
    {
      break;
    }

    ++v11;
    if (!--v12)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0CDC00C(uint64_t a1, uint64_t a2, void (*a3)(__int128 *__return_ptr, uint64_t, __int128 *))
{
  v5 = *(a2 + 16);
  v34 = MEMORY[0x1E69E7CC0];
  sub_1B0CDEAB0(0, v5, 0);
  v6 = v34;
  if (v5)
  {
    v7 = (a1 + 32);
    v8 = *(a1 + 16);

    v10 = (a2 + 72);
    while (v8)
    {
      v11 = *v7;
      v12 = *(v10 - 4);
      v14 = *(v10 - 2);
      v15 = *(v10 - 8);
      v16 = *v10;
      v17 = *(v10 - 24);
      *&v35 = *(v10 - 5);
      v13 = v35;
      *(&v35 + 1) = v12;
      v36 = v17;
      v37 = v14;
      v38 = v15;
      v39 = v16;
      v41 = v17;
      v40 = v35;
      v42 = v16;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0CDD108(v13, v12, v17);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      a3(&v28, v11, &v35);
      v27 = v28;
      v18 = v29;
      v19 = v30;
      v26 = v31;
      v24 = v33;
      v25 = v32;

      sub_1B0CDD138(&v40);
      result = sub_1B039E440(&v42);
      v34 = v6;
      v21 = *(v6 + 16);
      v20 = *(v6 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_1B0CDEAB0((v20 > 1), v21 + 1, 1);
        v6 = v34;
      }

      *(v6 + 16) = v21 + 1;
      v22 = v6 + 56 * v21;
      *(v22 + 32) = v27;
      *(v22 + 48) = v18;
      *(v22 + 56) = v19;
      *(v22 + 64) = v26;
      *(v22 + 72) = v25;
      *(v22 + 80) = v24;
      --v8;
      ++v7;
      v10 += 6;
      if (!--v5)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_9:

    return v6;
  }

  return result;
}

uint64_t sub_1B0CDC1E4(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v27 = MEMORY[0x1E69E7CC0];
  v3 = *(a1 + 16);
  sub_1B0CD9FE0(v3, 0);
  sub_1B0CDEA70(0, v3, 0);
  v4 = v2;
  v22 = v3;
  if (!v3)
  {
    return 0;
  }

  v5 = 0;
  v21 = a1 + 32;
  while (1)
  {
    v23 = v4;
    v6 = v21 + 56 * v5;
    v7 = *v6;
    v9 = *(v6 + 16);
    v8 = *(v6 + 24);
    v10 = *(v6 + 32);
    v11 = *(v6 + 40);
    v25 = v11;
    v12 = (v27 + 32);
    v13 = *(v27 + 16);
    v26 = *(v6 + 8);
    v24 = *(v6 + 48);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0CDD108(v9, v8, v10);
    if (v13)
    {
      break;
    }

LABEL_6:
    sub_1B0CD98E4(v7);
    v4 = v23;
    v19 = *(v23 + 16);
    v18 = *(v23 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_1B0CDEA70((v18 > 1), v19 + 1, 1);

      v4 = v23;
    }

    else
    {
    }

    ++v5;
    *(v4 + 16) = v19 + 1;
    v20 = v4 + 48 * v19;
    *(v20 + 32) = v26;
    *(v20 + 40) = v9;
    *(v20 + 48) = v8;
    *(v20 + 56) = v10;
    *(v20 + 64) = v25;
    *(v20 + 72) = v24;
    if (v5 == v22)
    {
      return 0;
    }
  }

  while (1)
  {
    v14 = *v12;
    v15 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v16 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v15, v7);

    if (v16)
    {
      break;
    }

    ++v12;
    if (!--v13)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}