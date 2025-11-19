unint64_t sub_1B0DC7A9C()
{
  result = qword_1EB6E7678;
  if (!qword_1EB6E7678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7678);
  }

  return result;
}

uint64_t sub_1B0DC7B00(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0DC7B20(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 56) = v3;
  return result;
}

uint64_t static InternetMessageDate.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1B0E46A78();
  }
}

uint64_t InternetMessageDate.hashValue.getter()
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1B0E46CB8();
}

unint64_t sub_1B0DC7BE4()
{
  result = qword_1EB6E7680;
  if (!qword_1EB6E7680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7680);
  }

  return result;
}

unint64_t sub_1B0DC7C3C()
{
  result = qword_1EB6E7688;
  if (!qword_1EB6E7688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7688);
  }

  return result;
}

unint64_t sub_1B0DC7C94()
{
  result = qword_1EB6E7690;
  if (!qword_1EB6E7690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7690);
  }

  return result;
}

uint64_t IUID.hashValue.getter()
{
  sub_1B0E46C28();
  sub_1B0E46C88();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DC7DC0()
{
  v1 = v0;
  MEMORY[0x1B2726E80](0x3D4449553B2FLL, 0xE600000000000000);
  sub_1B0E46508();
  v2 = *(v0 + 20);
  v3 = sub_1B0CFC1B0(0, 0xE000000000000000, (v1 + 8), *(v1 + 20));
  if (v4)
  {
    v5._countAndFlagsBits = 0;
    v5._object = 0xE000000000000000;
    v3 = ByteBuffer._setStringSlowpath(_:at:)(v5, v2);
  }

  v6 = v3;

  v8 = *(v1 + 20);
  v9 = __CFADD__(v8, v6);
  v10 = v8 + v6;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 20) = v10;
    return v6;
  }

  return result;
}

unint64_t sub_1B0DC7EA4()
{
  result = qword_1EB6E7698;
  if (!qword_1EB6E7698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7698);
  }

  return result;
}

uint64_t KeyValue.init(key:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for KeyValue();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

uint64_t static KeyValue.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a5 + 8);
  if (sub_1B0E44A28())
  {
    v8 = *(type metadata accessor for KeyValue() + 52);
    v9 = *(a6 + 8);
    v10 = sub_1B0E44A28();
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

double (*KeyValue.value.modify(uint64_t a1, uint64_t a2))(void)
{
  result = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
  v4 = v2 + *(a2 + 52);
  return result;
}

uint64_t KeyValue.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  sub_1B0E447C8();
  v6 = *(a2 + 24);
  v7 = *(a2 + 40);
  v8 = v2 + *(a2 + 52);
  return sub_1B0E447C8();
}

uint64_t KeyValue.hashValue.getter(uint64_t a1)
{
  sub_1B0E46C28();
  KeyValue.hash(into:)(v3, a1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DC8238(uint64_t a1, uint64_t a2)
{
  sub_1B0E46C28();
  KeyValue.hash(into:)(v4, a2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DC82A8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_1B0DC8484(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

uint64_t BodyStructure.LanguageLocation.languages.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t BodyStructure.LanguageLocation.location.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B075E548(v3[1], v3[2], v3[3]);
  v3[1] = a1;
  v3[2] = a2;
  v3[3] = a3;
  return result;
}

uint64_t BodyStructure.LanguageLocation.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a2 + 16);
  MEMORY[0x1B2728D70](v8);
  if (v8)
  {
    v9 = (a2 + 40);
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      v9 += 2;
      --v8;
    }

    while (v8);
  }

  if (!a5)
  {
    return sub_1B0E46C68();
  }

  sub_1B0E46C68();
  sub_1B0E46C68();
  if (a4)
  {
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  v13 = *(a5 + 16);
  result = MEMORY[0x1B2728D70](v13);
  if (v13)
  {
    v14 = (a5 + 55);
    do
    {
      v15 = *(v14 - 23);
      if (*v14)
      {
        MEMORY[0x1B2728D70](1);
        result = MEMORY[0x1B2728D70](v15);
      }

      else
      {
        v16 = *(v14 - 15);
        v17 = *(v14 - 1);
        v18 = *(v14 - 3);
        v19 = *(v14 - 7);
        MEMORY[0x1B2728D70](0);
        if (v15)
        {
          v20 = v19 | ((v18 | (v17 << 16)) << 32);
          sub_1B0E46C68();
          swift_beginAccess();
          v21 = *(v15 + 24) + ((v20 >> 24) & 0xFFFF00 | BYTE6(v20));
          result = sub_1B0E46C38();
        }

        else
        {
          result = sub_1B0E46C68();
        }
      }

      v14 += 24;
      --v13;
    }

    while (v13);
  }

  return result;
}

uint64_t BodyStructure.LanguageLocation.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B0E46C28();
  v7 = *(a1 + 16);
  MEMORY[0x1B2728D70](v7);
  if (v7)
  {
    v8 = (a1 + 40);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      v8 += 2;
      --v7;
    }

    while (v7);
  }

  if (a4)
  {
    sub_1B0E46C68();
    sub_1B0E46C68();
    if (a3)
    {
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    v11 = *(a4 + 16);
    MEMORY[0x1B2728D70](v11);
    if (v11)
    {
      v12 = (a4 + 55);
      do
      {
        v13 = *(v12 - 23);
        if (*v12)
        {
          MEMORY[0x1B2728D70](1);
          MEMORY[0x1B2728D70](v13);
        }

        else
        {
          v14 = *(v12 - 15);
          v15 = *(v12 - 1);
          v16 = *(v12 - 3);
          v17 = *(v12 - 7);
          MEMORY[0x1B2728D70](0);
          if (v13)
          {
            v18 = v17 | ((v16 | (v15 << 16)) << 32);
            sub_1B0E46C68();
            swift_beginAccess();
            v19 = *(v13 + 24) + ((v18 >> 24) & 0xFFFF00 | BYTE6(v18));
            sub_1B0E46C38();
          }

          else
          {
            sub_1B0E46C68();
          }
        }

        v12 += 24;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    sub_1B0E46C68();
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0DC8BA0()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1B0E46C28();
  BodyStructure.LanguageLocation.hash(into:)(v6, v1, v2, v4, v3);
  return sub_1B0E46CB8();
}

BOOL _s12NIOIMAPCore213BodyStructureO16LanguageLocationV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((sub_1B045202C(a1, a5) & 1) == 0)
  {
    return 0;
  }

  if (a4)
  {
    if (a8)
    {
      if (!a3)
      {
        if (!a7)
        {
          goto LABEL_9;
        }

LABEL_14:
        sub_1B0716F14(a6, a7, a8);

        return 0;
      }

      if (a7)
      {
        if (a2 == a6 && a3 == a7 || (sub_1B0E46A78() & 1) != 0)
        {
LABEL_9:
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v14 = sub_1B0D38528(a4, a8);

          return (v14 & 1) != 0;
        }

        goto LABEL_14;
      }
    }
  }

  else if (!a8)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1B0DC8D14()
{
  result = qword_1EB6E76A0[0];
  if (!qword_1EB6E76A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB6E76A0);
  }

  return result;
}

uint64_t static LastCommandMessageID.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a1;
  v5 = *(a3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v31 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v8;
  CommandMessageID = type metadata accessor for LastCommandMessageID();
  v10 = *(CommandMessageID - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](CommandMessageID);
  v35 = &v30 - v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = *(TupleTypeMetadata2 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v18 = &v30 - v17;
  v20 = *(v19 + 48);
  v33 = v10;
  v21 = *(v10 + 16);
  v21(&v30 - v17, v34, CommandMessageID, v16);
  (v21)(&v18[v20], a2, CommandMessageID);
  v34 = v5;
  v22 = *(v5 + 48);
  if (v22(v18, 1, a3) == 1)
  {
    v23 = 1;
    if (v22(&v18[v20], 1, a3) == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    (v21)(v35, v18, CommandMessageID);
    if (v22(&v18[v20], 1, a3) != 1)
    {
      v24 = v34;
      v25 = v31;
      (*(v34 + 32))(v31, &v18[v20], a3);
      v26 = *(*(v32 + 40) + 8);
      v27 = v35;
      v23 = sub_1B0E44A28();
      v28 = *(v24 + 8);
      v28(v25, a3);
      v28(v27, a3);
LABEL_8:
      v14 = v33;
      goto LABEL_9;
    }

    (*(v34 + 8))(v35, a3);
  }

  v23 = 0;
  CommandMessageID = TupleTypeMetadata2;
LABEL_9:
  (*(v14 + 8))(v18, CommandMessageID);
  return v23 & 1;
}

uint64_t LastCommandMessageID.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v15, a2, v11);
  if ((*(v4 + 48))(v13, 1, v3) == 1)
  {
    return MEMORY[0x1B2728D70](1);
  }

  (*(v4 + 32))(v7, v13, v3);
  MEMORY[0x1B2728D70](0);
  v17 = *(*(a2 + 24) + 40);
  sub_1B0E447C8();
  return (*(v4 + 8))(v7, v3);
}

uint64_t LastCommandMessageID.hashValue.getter(uint64_t a1)
{
  sub_1B0E46C28();
  LastCommandMessageID.hash(into:)(v3, a1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DC92E4(uint64_t a1, uint64_t a2)
{
  sub_1B0E46C28();
  LastCommandMessageID.hash(into:)(v4, a2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DC9350(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_1B0DC93AC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_1B0DC952C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
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

  else if (v5)
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
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

uint64_t static LastCommandSet.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a1;
  v7 = type metadata accessor for MessageIdentifierSetNonEmpty();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v32 = &v32 - v10;
  v33 = a3;
  v34 = a4;
  CommandSet = type metadata accessor for LastCommandSet();
  v12 = *(CommandSet - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](CommandSet);
  v37 = &v32 - v14;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = *(TupleTypeMetadata2 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v20 = &v32 - v19;
  v22 = *(v21 + 48);
  v35 = v12;
  v23 = *(v12 + 16);
  v23(&v32 - v19, v36, CommandSet, v18);
  (v23)(&v20[v22], a2, CommandSet);
  v36 = v8;
  v24 = *(v8 + 48);
  if (v24(v20, 1, v7) == 1)
  {
    v25 = 1;
    if (v24(&v20[v22], 1, v7) == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    (v23)(v37, v20, CommandSet);
    if (v24(&v20[v22], 1, v7) != 1)
    {
      v26 = v36;
      v27 = &v20[v22];
      v28 = v32;
      (*(v36 + 32))(v32, v27, v7);
      v29 = v37;
      v25 = static MessageIdentifierSetNonEmpty.__derived_struct_equals(_:_:)(v37, v28, v33, v34);
      v30 = *(v26 + 8);
      v30(v28, v7);
      v30(v29, v7);
LABEL_8:
      v16 = v35;
      goto LABEL_9;
    }

    (*(v36 + 8))(v37, v7);
  }

  v25 = 0;
  CommandSet = TupleTypeMetadata2;
LABEL_9:
  (*(v16 + 8))(v20, CommandSet);
  return v25 & 1;
}

uint64_t LastCommandSet.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = type metadata accessor for MessageIdentifierSetNonEmpty();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v20 - v11;
  v13 = *(*(a2 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v3, a2, v15);
  if ((*(v9 + 48))(v17, 1, v8) == 1)
  {
    return MEMORY[0x1B2728D70](1);
  }

  (*(v9 + 32))(v12, v17, v8);
  MEMORY[0x1B2728D70](0);
  MessageIdentifierSetNonEmpty.hash(into:)(a1, v8);
  return (*(v9 + 8))(v12, v8);
}

uint64_t LastCommandSet.hashValue.getter(uint64_t a1)
{
  sub_1B0E46C28();
  LastCommandSet.hash(into:)(v3, a1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DC9CC4(uint64_t a1, uint64_t a2)
{
  sub_1B0E46C28();
  LastCommandSet.hash(into:)(v4, a2);
  return sub_1B0E46CB8();
}

uint64_t static LastCommandSet.range(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for MessageIdentifierRange();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - v11;
  (*(v13 + 16))(&v16 - v11, a1, v10);
  MessageIdentifierSetNonEmpty.init(range:)(v12, a2, a3);
  v14 = type metadata accessor for MessageIdentifierSetNonEmpty();
  return (*(*(v14 - 8) + 56))(a4, 0, 1, v14);
}

uint64_t sub_1B0DC9E80(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 20);
  result = sub_1B0CFC1B0(0x204E5255544552, 0xE700000000000000, (v1 + 8), *(v1 + 20));
  if (v6)
  {
    v7._countAndFlagsBits = 0x204E5255544552;
    v7._object = 0xE700000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v1 + 20);
  v10 = (v9 + result);
  if (__CFADD__(v9, result))
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  *(v1 + 20) = v10;
  result = sub_1B0CFC1B0(40, 0xE100000000000000, (v1 + 8), v10);
  if (v11)
  {
    v12._countAndFlagsBits = 40;
    v12._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v12, v10);
  }

  v13 = *(v1 + 20);
  v14 = (v13 + result);
  if (__CFADD__(v13, result))
  {
    goto LABEL_24;
  }

  *(v1 + 20) = v14;
  v15 = __OFADD__(v8, result);
  v16 = v8 + result;
  if (v15)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v17 = *(a1 + 16);
  if (v17)
  {
    v35 = a1;
    result = sub_1B0CFC1B0(0, 0xE000000000000000, (v1 + 8), v14);
    if (v18)
    {
      v19._countAndFlagsBits = 0;
      v19._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v19, v14);
    }

    v20 = result;
    v21 = *(v2 + 20);
    v22 = __CFADD__(v21, result);
    v23 = v21 + result;
    if (v22)
    {
      goto LABEL_29;
    }

    *(v2 + 20) = v23;
    MEMORY[0x1EEE9AC00](result);
    v34[2] = sub_1B0DCA0E4;
    v34[3] = 0;
    v34[4] = v2;
    v34[5] = &v35;
    v34[6] = 32;
    v34[7] = 0xE100000000000000;
    result = sub_1B0DE69B4(0, sub_1B0DCA17C, v34, a1);
    v24 = v20 + result;
    if (__OFADD__(v20, result))
    {
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v25 = *(v2 + 20);
    result = sub_1B0CFC1B0(0, 0xE000000000000000, (v2 + 8), *(v2 + 20));
    if (v26)
    {
      v27._countAndFlagsBits = 0;
      v27._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v27, v25);
    }

    v28 = *(v2 + 20);
    LODWORD(v14) = v28 + result;
    if (__CFADD__(v28, result))
    {
      goto LABEL_31;
    }

    *(v2 + 20) = v14;
    v17 = v24 + result;
    if (__OFADD__(v24, result))
    {
LABEL_32:
      __break(1u);
      return result;
    }
  }

  v15 = __OFADD__(v16, v17);
  v29 = v16 + v17;
  if (v15)
  {
    goto LABEL_26;
  }

  result = sub_1B0CFC1B0(41, 0xE100000000000000, (v2 + 8), v14);
  if (v30)
  {
    v31._countAndFlagsBits = 41;
    v31._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v31, v14);
  }

  v32 = *(v2 + 20);
  v22 = __CFADD__(v32, result);
  v33 = v32 + result;
  if (v22)
  {
    goto LABEL_27;
  }

  *(v2 + 20) = v33;
  v15 = __OFADD__(v29, result);
  result += v29;
  if (v15)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  return result;
}

uint64_t sub_1B0DCA0E4(_OWORD *a1)
{
  v1 = a1[1];
  v4[0] = *a1;
  v4[1] = v1;
  v2 = a1[3];
  v4[2] = a1[2];
  v4[3] = v2;
  return sub_1B0E18638(v4);
}

uint64_t sub_1B0DCA124@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(__int128 *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>)
{
  v11 = *a1;
  v12 = *(a2 + 64);
  v13 = *a6;
  v14 = *(a2 + 16);
  v17[0] = *a2;
  v17[1] = v14;
  v15 = *(a2 + 48);
  v17[2] = *(a2 + 32);
  v17[3] = v15;
  v18 = v12;
  result = sub_1B0E23A88(v11, v17, a3, a4, a5, v13, a7, a8);
  if (!v9)
  {
    *a9 = result;
  }

  return result;
}

BOOL sub_1B0DCA1A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = *(a2 + 32);
  if (a1[4])
  {
    if ((a2[4] & 1) == 0)
    {
      return 0;
    }

    v7 = a1[2];
    v8 = a1[3];
    v9 = a2[2];
    v10 = a2[3];
    if (v2 != v4 || v3 != v5)
    {
      v12 = a1;
      v13 = *a1;
      v14 = a2;
      v15 = sub_1B0E46A78();
      a2 = v14;
      v16 = v15;
      a1 = v12;
      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }

    if (v7 != v9 || v8 != v10)
    {
      v18 = a1;
      v19 = a2;
      v20 = sub_1B0E46A78();
      a2 = v19;
      v21 = v20;
      a1 = v18;
      if ((v21 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    if (a2[4])
    {
      return 0;
    }

    if (v2 != v4 || v3 != v5)
    {
      v23 = a1;
      v24 = *a1;
      v25 = a2;
      v26 = sub_1B0E46A78();
      a2 = v25;
      v27 = v26;
      a1 = v23;
      if ((v27 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v29 = a1[5];
  v28 = a1[6];
  v30 = a1[7];
  v32 = a2[5];
  v31 = a2[6];
  v33 = a2[7];
  if (HIBYTE(v30) == 255)
  {
    if (HIBYTE(v33) == 255)
    {
      return 1;
    }

    goto LABEL_24;
  }

  if (HIBYTE(v33) == 255)
  {
LABEL_24:
    sub_1B0D3CB80(a1[5], v28, v30);
    sub_1B0D3CB80(v32, v31, v33);
    sub_1B0D3CB98(v29, v28, v30);
    sub_1B0D3CB98(v32, v31, v33);
    return 0;
  }

  if ((v30 & 0x100000000000000) != 0)
  {
    if ((v33 & 0x100000000000000) == 0)
    {
      return 0;
    }

    sub_1B0D3CB80(a1[5], v28, v30);
    sub_1B0D3CB80(v32, v31, v33);
    v35 = sub_1B0D312C0(v29, v32);
  }

  else
  {
    if ((v33 & 0x100000000000000) != 0)
    {
      return 0;
    }

    sub_1B0D3CB80(a1[5], v28, v30);
    sub_1B0D3CB80(v32, v31, v33);
    v35 = sub_1B0C2DB54(v29, v28, v30 & 0xFFFFFFFFFFFFFFLL, v32, v31, v33 & 0xFFFFFFFFFFFFFFLL);
  }

  v36 = v35;
  sub_1B0D3CB98(v32, v31, v33);
  sub_1B0D3CB98(v29, v28, v30);
  return (v36 & 1) != 0;
}

BOOL sub_1B0DCA3C4(void *a1, void *a2)
{
  v4 = type metadata accessor for ParameterValue();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6440, &unk_1B0EF3530);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F20, &unk_1B0EF5F80);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - v15;
  if (*a1 == *a2 && a1[1] == a2[1] || (v17 = sub_1B0E46A78(), result = 0, (v17 & 1) != 0))
  {
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F58, &unk_1B0EF5150) + 52);
    v20 = *(v13 + 48);
    sub_1B0D78ED0(a1 + v19, v16);
    sub_1B0D78ED0(a2 + v19, &v16[v20]);
    v21 = *(v5 + 48);
    if (v21(v16, 1, v4) == 1)
    {
      if (v21(&v16[v20], 1, v4) == 1)
      {
        sub_1B0398EFC(v16, &qword_1EB6E6440, &unk_1B0EF3530);
        return 1;
      }
    }

    else
    {
      sub_1B0D78ED0(v16, v12);
      if (v21(&v16[v20], 1, v4) != 1)
      {
        sub_1B0D06280(&v16[v20], v8);
        v22 = _s12NIOIMAPCore214ParameterValueO21__derived_enum_equalsySbAC_ACtFZ_0(v12, v8);
        sub_1B0D06348(v8);
        sub_1B0D06348(v12);
        sub_1B0398EFC(v16, &qword_1EB6E6440, &unk_1B0EF3530);
        return (v22 & 1) != 0;
      }

      sub_1B0D06348(v12);
    }

    sub_1B0398EFC(v16, &qword_1EB6E6F20, &unk_1B0EF5F80);
    return 0;
  }

  return result;
}

BOOL static ListSelectBaseOption.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (*(a1 + 32) == 0xFF)
  {
    v5 = ~*(a2 + 32);
    return *(a2 + 32) == 0xFF;
  }

  else
  {
    v19 = v2;
    v20 = v3;
    v7 = *(a1 + 16);
    v15[0] = *a1;
    v15[1] = v7;
    v16 = v4;
    v17 = *(a1 + 40);
    v18 = *(a1 + 56);
    v8 = *(a2 + 32);
    if (*(a2 + 32) == 0xFF)
    {
      return 0;
    }

    else
    {
      v10 = *(a2 + 16);
      v11[0] = *a2;
      v11[1] = v10;
      v12 = v8;
      v13 = *(a2 + 40);
      v14 = *(a2 + 56);
      return sub_1B0DCA1A0(v15, v11);
    }
  }
}

uint64_t ListSelectBaseOption.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 32);
  if (v3 == 255)
  {
    return MEMORY[0x1B2728D70](0);
  }

  v5 = *v1;
  v6 = v1[1];
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  MEMORY[0x1B2728D70](1);
  if (v3)
  {
    MEMORY[0x1B2728D70](1);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1B2728D70](0);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0D498DC(a1, v9, v10, v11);
}

uint64_t ListSelectBaseOption.hashValue.getter()
{
  sub_1B0E46C28();
  v1 = *(v0 + 32);
  if (v1 == 255)
  {
    MEMORY[0x1B2728D70](0);
  }

  else
  {
    v2 = *v0;
    v3 = v0[1];
    v4 = v0[2];
    v5 = v0[3];
    v6 = v0[5];
    v7 = v0[6];
    v8 = v0[7];
    MEMORY[0x1B2728D70](1);
    if (v1)
    {
      MEMORY[0x1B2728D70](1);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      MEMORY[0x1B2728D70](0);
    }

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    sub_1B0D498DC(v10, v6, v7, v8);
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0DCA918(uint64_t a1)
{
  v3 = *(v1 + 32);
  if (v3 == 255)
  {
    return MEMORY[0x1B2728D70](0);
  }

  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = *v1;
  v10 = v1[1];
  MEMORY[0x1B2728D70](1);
  if (v3)
  {
    MEMORY[0x1B2728D70](1);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1B2728D70](0);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0D498DC(a1, v6, v7, v8);
}

uint64_t sub_1B0DCAA14()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  sub_1B0E46C28();
  if (v5 == 255)
  {
    MEMORY[0x1B2728D70](0);
  }

  else
  {
    MEMORY[0x1B2728D70](1);
    if (v5)
    {
      MEMORY[0x1B2728D70](1);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      MEMORY[0x1B2728D70](0);
    }

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    sub_1B0D498DC(v10, v6, v7, v8);
  }

  return sub_1B0E46CB8();
}

BOOL sub_1B0DCAAF8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  if (*(a1 + 32) == 0xFF)
  {
    return ~*(a2 + 32) == 0;
  }

  v18 = v2;
  v19 = v3;
  v7 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v7;
  v11 = v4;
  v12 = *(a1 + 40);
  v13 = *(a1 + 56);
  if (v5 == 0xFF)
  {
    return 0;
  }

  else
  {
    v9 = *(a2 + 16);
    v14[0] = *a2;
    v14[1] = v9;
    v15 = v5;
    v16 = *(a2 + 40);
    v17 = *(a2 + 56);
    return sub_1B0DCA1A0(v10, v14);
  }
}

unint64_t sub_1B0DCABA0()
{
  result = qword_1EB6E7728;
  if (!qword_1EB6E7728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7728);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12NIOIMAPCore215OptionValueCompOSg(uint64_t a1)
{
  v1 = *(a1 + 23);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_12NIOIMAPCore220ListSelectBaseOptionO(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0DCAC34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 64))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  if (v4 + 1 >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0DCAC7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 32) = ~a2;
    }
  }

  return result;
}

double sub_1B0DCACC8(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *(a1 + 56) = 0;
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 - 255;
  }

  else if (a2)
  {
    *(a1 + 32) = -a2;
  }

  return result;
}

BOOL static ListSelectIndependentOption.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2 != 254)
  {
    if (v2 == 255)
    {
      v3 = ~*(a2 + 32);
      if (*(a2 + 32) == 0xFF)
      {
        return 1;
      }
    }

    else
    {
      v5 = *(a1 + 16);
      v13[0] = *a1;
      v13[1] = v5;
      v14 = v2;
      v15 = *(a1 + 40);
      v16 = *(a1 + 56);
      v6 = *(a2 + 32);
      if ((~*(a2 + 32) & 0xFELL) != 0)
      {
        v7 = *(a2 + 16);
        v9[0] = *a2;
        v9[1] = v7;
        v10 = v6;
        v11 = *(a2 + 40);
        v12 = *(a2 + 56);
        return sub_1B0DCA1A0(v13, v9);
      }
    }

    return 0;
  }

  return *(a2 + 32) == 254;
}

uint64_t ListSelectIndependentOption.hash(into:)(uint64_t a1)
{
  v3 = v1[4];
  if (v3 == 254)
  {
    v4 = 2;
    return MEMORY[0x1B2728D70](v4);
  }

  if (v3 == 255)
  {
    v4 = 0;
    return MEMORY[0x1B2728D70](v4);
  }

  v6 = *v1;
  v7 = v1[1];
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[5];
  v11 = v1[6];
  v12 = v1[7];
  MEMORY[0x1B2728D70](1);
  if (v3)
  {
    MEMORY[0x1B2728D70](1);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1B2728D70](0);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0D498DC(a1, v10, v11, v12);
}

uint64_t ListSelectIndependentOption.hashValue.getter()
{
  sub_1B0E46C28();
  v1 = v0[4];
  if (v1 == 254)
  {
    v2 = 2;
    goto LABEL_5;
  }

  if (v1 == 255)
  {
    v2 = 0;
LABEL_5:
    MEMORY[0x1B2728D70](v2);
    return sub_1B0E46CB8();
  }

  v3 = *v0;
  v4 = v0[1];
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[7];
  MEMORY[0x1B2728D70](1);
  if (v1)
  {
    MEMORY[0x1B2728D70](1);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1B2728D70](0);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  sub_1B0D498DC(v11, v7, v8, v9);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DCAFE4(uint64_t a1)
{
  v3 = *(v1 + 32);
  if (v3 == 254)
  {
    v4 = 2;
    return MEMORY[0x1B2728D70](v4);
  }

  if (v3 == 255)
  {
    v4 = 0;
    return MEMORY[0x1B2728D70](v4);
  }

  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v11 = *v1;
  v12 = v1[1];
  MEMORY[0x1B2728D70](1);
  if (v3)
  {
    MEMORY[0x1B2728D70](1);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1B2728D70](0);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0D498DC(a1, v8, v9, v10);
}

uint64_t sub_1B0DCB0F0()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  sub_1B0E46C28();
  if (v5 == 254)
  {
    v9 = 2;
    goto LABEL_5;
  }

  if (v5 == 255)
  {
    v9 = 0;
LABEL_5:
    MEMORY[0x1B2728D70](v9);
    return sub_1B0E46CB8();
  }

  MEMORY[0x1B2728D70](1);
  if (v5)
  {
    MEMORY[0x1B2728D70](1);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1B2728D70](0);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  sub_1B0D498DC(v11, v6, v7, v8);
  return sub_1B0E46CB8();
}

BOOL sub_1B0DCB1E4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  if (v4 == 254)
  {
    v6 = *(a2 + 32) == 254;
    goto LABEL_5;
  }

  if (v4 == 255)
  {
    v6 = ~*(a2 + 32) == 0;
LABEL_5:
    v7 = v6;
    return v7 & 1;
  }

  v20 = v2;
  v21 = v3;
  v9 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v9;
  v13 = v4;
  v14 = *(a1 + 40);
  v15 = *(a1 + 56);
  if ((~v5 & 0xFE) != 0)
  {
    v11 = *(a2 + 16);
    v16[0] = *a2;
    v16[1] = v11;
    v17 = v5;
    v18 = *(a2 + 40);
    v19 = *(a2 + 56);
    return sub_1B0DCA1A0(v12, v16);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1B0DCB2A0()
{
  result = qword_1EB6E7730;
  if (!qword_1EB6E7730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7730);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12NIOIMAPCore227ListSelectIndependentOptionO(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0DCB308(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 64))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 32);
  if (v3 > 1)
  {
    v4 = (v3 ^ 0xFF) + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 3)
  {
    return v4 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0DCB350(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 32) = -2 - a2;
    }
  }

  return result;
}

__n128 ListSelectOptions.init(baseOption:options:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v3;
  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a3 + 32) = result;
  *(a3 + 48) = v5;
  *(a3 + 64) = a2;
  return result;
}

BOOL static ListSelectOption.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2 > 0xFDu)
  {
    if (v2 == 254)
    {
      if (*(a2 + 32) != 254)
      {
        return 0;
      }
    }

    else
    {
      if (v2 != 255)
      {
        goto LABEL_10;
      }

      v3 = ~*(a2 + 32);
      if (*(a2 + 32) != 0xFF)
      {
        return 0;
      }
    }

    return 1;
  }

  if (v2 == 252)
  {
    return *(a2 + 32) == 252;
  }

  if (v2 == 253)
  {
    return *(a2 + 32) == 253;
  }

LABEL_10:
  v4 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v4;
  v14 = v2;
  v15 = *(a1 + 40);
  v16 = *(a1 + 56);
  v5 = *(a2 + 32);
  if ((v5 & 0xFC | 2) == 0xFE)
  {
    return 0;
  }

  v6 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v6;
  v10 = v5;
  v11 = *(a2 + 40);
  v12 = *(a2 + 56);
  return sub_1B0DCA1A0(v13, v9);
}

uint64_t ListSelectOption.hash(into:)(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v8 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  if (v8 > 0xFDu)
  {
    if (v8 == 254)
    {
      v11 = 1;
      return MEMORY[0x1B2728D70](v11);
    }

    if (v8 == 255)
    {
      v11 = 0;
      return MEMORY[0x1B2728D70](v11);
    }
  }

  else
  {
    if (v8 == 252)
    {
      v11 = 3;
      return MEMORY[0x1B2728D70](v11);
    }

    if (v8 == 253)
    {
      v11 = 2;
      return MEMORY[0x1B2728D70](v11);
    }
  }

  MEMORY[0x1B2728D70](4);
  if (v8)
  {
    MEMORY[0x1B2728D70](1);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1B2728D70](0);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0D498DC(a1, v7, v9, v10);
}

uint64_t ListSelectOption.hashValue.getter()
{
  sub_1B0E46C28();
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  if (v6 > 0xFDu)
  {
    if (v6 == 254)
    {
      v9 = 1;
      goto LABEL_12;
    }

    if (v6 == 255)
    {
      v9 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    if (v6 == 252)
    {
      v9 = 3;
      goto LABEL_12;
    }

    if (v6 == 253)
    {
      v9 = 2;
LABEL_12:
      MEMORY[0x1B2728D70](v9);
      return sub_1B0E46CB8();
    }
  }

  MEMORY[0x1B2728D70](4);
  if (v6)
  {
    MEMORY[0x1B2728D70](1);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x1B2728D70](0);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  sub_1B0D498DC(v11, v5, v7, v8);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DCB728()
{
  sub_1B0E46C28();
  ListSelectOption.hash(into:)(v1);
  return sub_1B0E46CB8();
}

BOOL sub_1B0DCB764(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  if (v4 > 0xFDu)
  {
    if (v4 == 254)
    {
      v6 = *(a2 + 32) == 254;
      goto LABEL_12;
    }

    if (v4 == 255)
    {
      v6 = ~*(a2 + 32) == 0;
      goto LABEL_12;
    }
  }

  else
  {
    if (v4 == 252)
    {
      v6 = *(a2 + 32) == 252;
      goto LABEL_12;
    }

    if (v4 == 253)
    {
      v6 = *(a2 + 32) == 253;
LABEL_12:
      v9 = v6;
      return v9 & 1;
    }
  }

  v20 = v2;
  v21 = v3;
  v7 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v7;
  v13 = v4;
  v14 = *(a1 + 40);
  v15 = *(a1 + 56);
  if ((v5 & 0xFC | 2) == 0xFE)
  {
    return 0;
  }

  else
  {
    v11 = *(a2 + 16);
    v16[0] = *a2;
    v16[1] = v11;
    v17 = v5;
    v18 = *(a2 + 40);
    v19 = *(a2 + 56);
    return sub_1B0DCA1A0(v12, v16);
  }
}

uint64_t ListSelectOptions.options.setter(uint64_t a1)
{
  v3 = *(v1 + 64);

  *(v1 + 64) = a1;
  return result;
}

uint64_t static ListSelectOptions.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 32);
  if (*(a1 + 32) == 0xFF)
  {
    if (v3 != 0xFF)
    {
      return 0;
    }
  }

  else
  {
    v4 = *(a1 + 16);
    v13[0] = *a1;
    v13[1] = v4;
    v15 = *(a1 + 40);
    v16 = *(a1 + 56);
    v14 = v2;
    if (v3 == 0xFF)
    {
      return 0;
    }

    v5 = *(a2 + 16);
    v17[0] = *a2;
    v17[1] = v5;
    v19 = *(a2 + 40);
    v20 = *(a2 + 56);
    v18 = v3;
    v6 = a1;
    v7 = a2;
    v8 = sub_1B0DCA1A0(v13, v17);
    a2 = v7;
    v9 = v8;
    a1 = v6;
    if (!v9)
    {
      return 0;
    }
  }

  v10 = *(a1 + 64);
  v11 = *(a2 + 64);

  return sub_1B0D320D8(v10, v11);
}

uint64_t ListSelectOptions.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 32);
  if (v4 == 255)
  {
    MEMORY[0x1B2728D70](0);
  }

  else
  {
    v5 = *v2;
    v6 = v2[1];
    v7 = v2[2];
    v8 = v2[3];
    v9 = v2[5];
    v10 = v2[6];
    v11 = v2[7];
    MEMORY[0x1B2728D70](1);
    if (v4)
    {
      MEMORY[0x1B2728D70](1);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      MEMORY[0x1B2728D70](0);
    }

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    sub_1B0D498DC(a1, v9, v10, v11);
  }

  v12 = v2[8];

  return sub_1B0D4704C(a1, v12);
}

uint64_t ListSelectOptions.hashValue.getter()
{
  sub_1B0E46C28();
  v1 = *(v0 + 32);
  if (v1 == 255)
  {
    MEMORY[0x1B2728D70](0);
  }

  else
  {
    v2 = *v0;
    v3 = v0[1];
    v4 = v0[2];
    v5 = v0[3];
    v6 = v0[5];
    v7 = v0[6];
    v8 = v0[7];
    MEMORY[0x1B2728D70](1);
    if (v1)
    {
      MEMORY[0x1B2728D70](1);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      MEMORY[0x1B2728D70](0);
    }

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    sub_1B0D498DC(v10, v6, v7, v8);
  }

  sub_1B0D4704C(v10, v0[8]);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DCBB98(uint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = v1[8];
  if (v3 == 255)
  {
    MEMORY[0x1B2728D70](0);
  }

  else
  {
    v5 = v1[3];
    v12 = v1[2];
    v6 = v1[5];
    v7 = v1[6];
    v8 = v1[7];
    v9 = *v1;
    v10 = v1[1];
    MEMORY[0x1B2728D70](1);
    if (v3)
    {
      MEMORY[0x1B2728D70](1);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      MEMORY[0x1B2728D70](0);
    }

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    sub_1B0D498DC(a1, v6, v7, v8);
  }

  return sub_1B0D4704C(a1, v4);
}

uint64_t sub_1B0DCBC98()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = v0[5];
  v7 = v0[6];
  v9 = v0[7];
  v8 = v0[8];
  sub_1B0E46C28();
  if (v5 == 255)
  {
    MEMORY[0x1B2728D70](0);
  }

  else
  {
    MEMORY[0x1B2728D70](1);
    if (v5)
    {
      MEMORY[0x1B2728D70](1);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      MEMORY[0x1B2728D70](0);
    }

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    sub_1B0D498DC(v11, v6, v7, v9);
  }

  sub_1B0D4704C(v11, v8);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DCBD88(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 64);
  v4 = *(a2 + 32);
  v5 = *(a2 + 64);
  if (*(a1 + 32) == 0xFF)
  {
    if (v4 != 0xFF)
    {
      return 0;
    }
  }

  else
  {
    v6 = *(a1 + 16);
    v9[0] = *a1;
    v9[1] = v6;
    v10 = v2;
    v11 = *(a1 + 40);
    v12 = *(a1 + 56);
    if (v4 == 0xFF)
    {
      return 0;
    }

    v7 = *(a2 + 16);
    v13[0] = *a2;
    v13[1] = v7;
    v14 = v4;
    v15 = *(a2 + 40);
    v16 = *(a2 + 56);
    if (!sub_1B0DCA1A0(v9, v13))
    {
      return 0;
    }
  }

  return sub_1B0D320D8(v3, v5);
}

uint64_t sub_1B0DCBE58(uint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  v11 = v7;
  if (v7 <= 0xFDu)
  {
    if (v7 == 252)
    {
      v2 = (v1 + 20);
      v19 = *(v1 + 5);
      result = sub_1B0CFC1B0(0x5649535255434552, 0xEE00484354414D45, v1 + 1, *(v1 + 5));
      if (v20)
      {
        v21._countAndFlagsBits = 0x5649535255434552;
        v21._object = 0xEE00484354414D45;
        result = ByteBuffer._setStringSlowpath(_:at:)(v21, v19);
      }

      LODWORD(v7) = *v2 + result;
      if (!__CFADD__(*v2, result))
      {
        goto LABEL_26;
      }

      __break(1u);
LABEL_23:
      v23 = *(v2 + 5);
      v2 = (v2 + 20);
      v22 = v23;
      result = sub_1B0CFC1B0(0x45544F4D4552, 0xE600000000000000, (v2 - 12), v23);
      if (v24)
      {
        v25._countAndFlagsBits = 0x45544F4D4552;
        v25._object = 0xE600000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v25, v22);
      }

      LODWORD(v7) = *v2 + result;
      if (!__CFADD__(*v2, result))
      {
        goto LABEL_26;
      }

      goto LABEL_40;
    }

    if (v7 != 253)
    {
      goto LABEL_16;
    }

    v9 = 0x2D4C414943455053;
    v2 = (v1 + 20);
    v8 = *(v1 + 5);
    v10 = (v1 + 1);
    result = sub_1B0CFC1B0(0x2D4C414943455053, 0xEB00000000455355, v1 + 1, *(v1 + 5));
    if (v13)
    {
      v14._countAndFlagsBits = 0x2D4C414943455053;
      v14._object = 0xEB00000000455355;
      result = ByteBuffer._setStringSlowpath(_:at:)(v14, v8);
    }

    LODWORD(v7) = *v2 + result;
    if (!__CFADD__(*v2, result))
    {
      goto LABEL_26;
    }

    __break(1u);
  }

  if (v11 == 254)
  {
    goto LABEL_23;
  }

  if (v11 == 255)
  {
    v8 = 0x4249524353425553;
    v16 = *(v2 + 5);
    v2 = (v2 + 20);
    v15 = v16;
    v9 = v2 - 12;
    result = sub_1B0CFC1B0(0x4249524353425553, 0xEA00000000004445, (v2 - 12), v16);
    if (v17)
    {
      v18._countAndFlagsBits = 0x4249524353425553;
      v18._object = 0xEA00000000004445;
      result = ByteBuffer._setStringSlowpath(_:at:)(v18, v15);
    }

    LODWORD(v7) = *v2 + result;
    if (!__CFADD__(*v2, result))
    {
LABEL_26:
      *v2 = v7;
      return result;
    }

    __break(1u);
  }

LABEL_16:
  if (v7)
  {
    result = sub_1B0DF6F58(v4, v3, v5, v6);
  }

  else
  {
    v26 = *(v2 + 5);
    result = sub_1B0CFC1B0(v4, v3, v2 + 1, *(v2 + 5));
    if (v27)
    {
      v28._countAndFlagsBits = v4;
      v28._object = v3;
      result = ByteBuffer._setStringSlowpath(_:at:)(v28, v26);
    }

    v29 = *(v2 + 5);
    v30 = __CFADD__(v29, result);
    v31 = v29 + result;
    if (v30)
    {
      goto LABEL_41;
    }

    *(v2 + 5) = v31;
  }

  if (HIBYTE(v10) == 255)
  {
    return result;
  }

  v32 = result;
  v33 = *(v2 + 5);
  sub_1B0D3C8F0(v8, v9, v10, HIBYTE(v10) & 1);
  result = sub_1B0CFC1B0(32, 0xE100000000000000, v2 + 1, v33);
  if (v34)
  {
    v35._countAndFlagsBits = 32;
    v35._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v35, v33);
  }

  v36 = *(v2 + 5);
  v30 = __CFADD__(v36, result);
  v37 = v36 + result;
  if (v30)
  {
    goto LABEL_42;
  }

  *(v2 + 5) = v37;
  v38 = v32 + result;
  if (__OFADD__(v32, result))
  {
LABEL_43:
    __break(1u);
    return result;
  }

  v39 = sub_1B0DF7268(v8, v9, v10 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(v10) & 1) << 56));
  sub_1B0D3CB98(v8, v9, v10);
  result = v38 + v39;
  if (__OFADD__(v38, v39))
  {
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  return result;
}

uint64_t sub_1B0DCC160(uint64_t *a1, uint64_t a2)
{
  v3 = sub_1B0DCBE58(a1);
  v4 = *(a2 + 20);
  result = sub_1B0CFC1B0(32, 0xE100000000000000, (a2 + 8), *(a2 + 20));
  if (v6)
  {
    v7._countAndFlagsBits = 32;
    v7._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = *(a2 + 20);
  v9 = __CFADD__(v8, result);
  v10 = v8 + result;
  if (v9)
  {
    __break(1u);
    goto LABEL_7;
  }

  *(a2 + 20) = v10;
  v11 = __OFADD__(v3, result);
  result += v3;
  if (v11)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

unint64_t sub_1B0DCC2B4()
{
  result = qword_1EB6E7738;
  if (!qword_1EB6E7738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7738);
  }

  return result;
}

unint64_t sub_1B0DCC30C()
{
  result = qword_1EB6E7740;
  if (!qword_1EB6E7740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7740);
  }

  return result;
}

uint64_t sub_1B0DCC360(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 64))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 32);
  if (v3 > 1)
  {
    v4 = (v3 ^ 0xFF) + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 5)
  {
    return v4 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0DCC3A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 32) = -4 - a2;
    }
  }

  return result;
}

uint64_t BodyStructure.LocationAndExtensions.location.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t BodyStructure.LocationAndExtensions.extensions.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t static BodyStructure.LocationAndExtensions.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    if (a5)
    {
      if (a1 == a4 && a2 == a5)
      {
        goto LABEL_6;
      }

      v7 = a3;
      v8 = a6;
      v9 = sub_1B0E46A78();
      a3 = v7;
      a6 = v8;
      if (v9)
      {
        goto LABEL_6;
      }
    }

    return 0;
  }

  if (a5)
  {
    return 0;
  }

LABEL_6:

  return sub_1B0D38528(a3, a6);
}

uint64_t BodyStructure.LocationAndExtensions.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    sub_1B0E46C68();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1B0E46C68();
  }

  v5 = *(a4 + 16);
  result = MEMORY[0x1B2728D70](v5);
  if (v5)
  {
    v7 = (a4 + 55);
    do
    {
      v8 = *(v7 - 23);
      if (*v7)
      {
        MEMORY[0x1B2728D70](1);
        result = MEMORY[0x1B2728D70](v8);
      }

      else
      {
        v9 = *(v7 - 15);
        v10 = *(v7 - 1);
        v11 = *(v7 - 3);
        v12 = *(v7 - 7);
        MEMORY[0x1B2728D70](0);
        if (v8)
        {
          v13 = v12 | ((v11 | (v10 << 16)) << 32);
          sub_1B0E46C68();
          swift_beginAccess();
          v14 = *(v8 + 24) + ((v13 >> 24) & 0xFFFF00 | BYTE6(v13));
          result = sub_1B0E46C38();
        }

        else
        {
          result = sub_1B0E46C68();
        }
      }

      v7 += 24;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t BodyStructure.LocationAndExtensions.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B0E46C28();
  sub_1B0E46C68();
  if (a2)
  {
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  v5 = *(a3 + 16);
  MEMORY[0x1B2728D70](v5);
  if (v5)
  {
    v6 = (a3 + 55);
    do
    {
      v7 = *(v6 - 23);
      if (*v6)
      {
        MEMORY[0x1B2728D70](1);
        MEMORY[0x1B2728D70](v7);
      }

      else
      {
        v8 = *(v6 - 15);
        v9 = *(v6 - 1);
        v10 = *(v6 - 3);
        v11 = *(v6 - 7);
        MEMORY[0x1B2728D70](0);
        if (v7)
        {
          v12 = v11 | ((v10 | (v9 << 16)) << 32);
          sub_1B0E46C68();
          swift_beginAccess();
          v13 = *(v7 + 24) + ((v12 >> 24) & 0xFFFF00 | BYTE6(v12));
          sub_1B0E46C38();
        }

        else
        {
          sub_1B0E46C68();
        }
      }

      v6 += 24;
      --v5;
    }

    while (v5);
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0DCC80C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1B0E46C28();
  BodyStructure.LocationAndExtensions.hash(into:)(v5, v1, v2, v3);
  return sub_1B0E46CB8();
}

unint64_t sub_1B0DCC868()
{
  result = qword_1EB6E7748;
  if (!qword_1EB6E7748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7748);
  }

  return result;
}

uint64_t sub_1B0DCC8BC(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a2[1];
  v6 = a2[2];
  if (v3)
  {
    if (v5)
    {
      v7 = *a1 == *a2 && v3 == v5;
      if (v7 || (sub_1B0E46A78() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

LABEL_8:

  return sub_1B0D38528(v4, v6);
}

uint64_t sub_1B0DCC968()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1B0DCC990(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0DCCA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25[1] = a4;
  v6 = sub_1B0E43808();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B0E43908();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v31 = sub_1B0DCD4FC();
  v32 = v15;
  v33 = v16;
  v34 = v17;
  v18 = v31;
  v19 = v15 & 1;
  v20 = BYTE1(v15) & 1;
  v21 = BYTE2(v15) & 1;
  v22 = v16;
  v23 = v17;
  sub_1B0507508();
  sub_1B0506134();
  v25[2] = v18;
  v26 = v19;
  v27 = v20;
  v28 = v21;
  v29 = v22;
  v30 = v23;
  sub_1B0E438B8();
  sub_1B0DCC990(v9, MEMORY[0x1E69E93B0]);
  sub_1B0DCC990(v13, MEMORY[0x1E69E93F0]);
  sub_1B04197E4(v22);
}

uint64_t sub_1B0DCCBE0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = v1();
  if ((result & 0x100000000) != 0)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1B0DCCC48(unint64_t a1, uint64_t (*a2)(unint64_t))
{
  v4 = HIDWORD(a1);
  if (qword_1EB6DE5C0 != -1)
  {
    swift_once();
  }

  v5 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
  v6 = dword_1EB737EB8;
  v7 = word_1EB737EBC;
  v8 = byte_1EB737EBE;

  LOBYTE(v19) = 0;
  BYTE5(v19) = 0;
  *(&v19 + 1) = 65537;
  *(&v19 + 1) = v5;
  *&v20 = qword_1EB737EB0;
  DWORD2(v20) = v6;
  WORD6(v20) = v7;
  BYTE14(v20) = v8;
  *&v21 = sub_1B0D740DC(MEMORY[0x1E69E7CC0]);
  *(&v21 + 1) = v9;
  v22 = v10;
  result = a2(a1);
  if (a1 < v4)
  {
    v12 = DWORD1(v20);
    result = sub_1B0CFC1B0(58, 0xE100000000000000, &v19 + 1, DWORD1(v20));
    if (v13)
    {
      v14._countAndFlagsBits = 58;
      v14._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v14, v12);
    }

    if (__CFADD__(DWORD1(v20), result))
    {
      goto LABEL_13;
    }

    DWORD1(v20) += result;
    result = a2(v4);
  }

  if (DWORD1(v20) < v20)
  {
    __break(1u);
  }

  else if (DWORD2(v20) - (BYTE14(v20) | (WORD6(v20) << 8)) >= DWORD1(v20))
  {
    v23[0] = *(&v19 + 1);
    v23[1] = v20;
    v24 = DWORD2(v20);
    v25 = WORD6(v20);
    v26 = BYTE14(v20);
    v27 = v20;
    v28 = DWORD1(v20);
    v15 = DWORD1(v20) - v20;
    *&v17[0] = 0;
    *(&v17[0] + 1) = 0xE000000000000000;

    MEMORY[0x1B2726D20](v15);
    sub_1B0D547AC(v23, v17);
    sub_1B04394F4(v23);
    v16 = *&v17[0];
    v17[0] = v19;
    v17[1] = v20;
    v17[2] = v21;
    v18 = v22;
    sub_1B0D7E6B4(v17);
    return v16;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1B0DCCE70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B0E43908();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B0E43808();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  sub_1B0E437D8();
  sub_1B0507508();
  sub_1B0E43888();
  sub_1B0DCC990(v7, MEMORY[0x1E69E93F0]);
  sub_1B0DCC990(v11, MEMORY[0x1E69E93B0]);
}

uint64_t sub_1B0DCCFF0(uint64_t (*a1)(unint64_t))
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v3();
  return sub_1B0DCCC48(v5, a1);
}

uint64_t sub_1B0DCD0A4(void (*a1)(double), uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(__int128 *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v14[-v10];
  a1(v9);
  v15 = v11;
  v12 = sub_1B0D7E524(a5);
  sub_1B03D09B8(v11);
  return v12;
}

uint64_t sub_1B0DCD1B4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1B0DCD1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25[1] = a4;
  v6 = sub_1B0E43808();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B0E43908();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  sub_1B0394868();
  sub_1B0394868();
  v31 = sub_1B0E43928();
  v32 = v15;
  v33 = v16;
  v34 = v17;
  v18 = v31;
  v19 = v15 & 1;
  v20 = BYTE1(v15) & 1;
  v21 = BYTE2(v15) & 1;
  v22 = v16;
  v23 = v17;
  sub_1B0507508();
  sub_1B0506134();
  v25[2] = v18;
  v26 = v19;
  v27 = v20;
  v28 = v21;
  v29 = v22;
  v30 = v23;
  sub_1B0E438B8();
  sub_1B0DCC990(v9, MEMORY[0x1E69E93B0]);
  sub_1B0DCC990(v13, MEMORY[0x1E69E93F0]);
  sub_1B04197E4(v22);
}

uint64_t sub_1B0DCD3EC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = v1();
  if ((result & 0x100000000) != 0)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1B0DCD43C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1B0DCD484()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = v1();
  if ((result & 0x100000000) != 0)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1B0DCD4D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1B0DCD58C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25[1] = a4;
  v6 = sub_1B0E43808();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B0E43908();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v31 = sub_1B0DCD4FC();
  v32 = v15;
  v33 = v16;
  v34 = v17;
  v18 = v31;
  v19 = v15 & 1;
  v20 = BYTE1(v15) & 1;
  v21 = BYTE2(v15) & 1;
  v22 = v16;
  v23 = v17;
  sub_1B0507508();
  sub_1B0506134();
  v25[2] = v18;
  v26 = v19;
  v27 = v20;
  v28 = v21;
  v29 = v22;
  v30 = v23;
  sub_1B0E438C8();
  sub_1B0DCC990(v9, MEMORY[0x1E69E93B0]);
  sub_1B0DCC990(v13, MEMORY[0x1E69E93F0]);
  sub_1B04197E4(v22);
}

uint64_t sub_1B0DCD75C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = v1();
  if (v4)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1B0DCD7AC(uint64_t (*a1)(void))
{
  v1 = a1();
  v3 = v2;
  v5 = v4;
  v6 = SectionSpecifier.debugDescription.getter(v1, v2, v4);

  sub_1B0ACE978(v3, v5);
  return v6;
}

uint64_t sub_1B0DCD850()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1();
  v4 = SectionSpecifier.Part.debugDescription.getter(v3);

  return v4;
}

uint64_t sub_1B0DCD8E8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1B0DCD930()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t OSLogInterpolation.appendInterpolation(_:)(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1B0E43908();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B0E43808();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  v11 = a1(v10);
  v13 = v12;
  v15 = v14;
  v17 = v16;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v18 = swift_allocObject();
  v18[2] = v11;
  v18[3] = v13;
  v18[4] = v15;
  v18[5] = v17;
  sub_1B0E437D8();
  sub_1B0507508();
  sub_1B0E43888();
  sub_1B0DCC990(v5, MEMORY[0x1E69E93F0]);
  sub_1B0DCC990(v9, MEMORY[0x1E69E93B0]);

  sub_1B0E44838();
  sub_1B0E438D8();

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v19 = swift_allocObject();
  v19[2] = v11;
  v19[3] = v13;
  v19[4] = v15;
  v19[5] = v17;
  sub_1B0E437D8();
  sub_1B0507508();
  sub_1B0E43888();
  sub_1B0DCC990(v5, MEMORY[0x1E69E93F0]);
  sub_1B0DCC990(v9, MEMORY[0x1E69E93B0]);
}

uint64_t sub_1B0DCDC04()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t objectdestroy_53Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1B0DCDC74()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t sub_1B0DCDCD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B0E43908();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B0E43808();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0E44838();
  sub_1B0E438D8();

  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  sub_1B0E437D8();
  sub_1B0507508();
  sub_1B0E43888();
  sub_1B0DCC990(v7, MEMORY[0x1E69E93F0]);
  sub_1B0DCC990(v11, MEMORY[0x1E69E93B0]);

  sub_1B0E44838();
  sub_1B0E438D8();
}

uint64_t sub_1B0DCDF00(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = *(v1 + 16);
  if (v2)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1B0A18B88(0, v2, 0);
    v3 = (v1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v7 = *(v11 + 16);
      v6 = *(v11 + 24);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if (v7 >= v6 >> 1)
      {
        sub_1B0A18B88(v6 > 1, v7 + 1, 1);
      }

      *(v11 + 16) = v7 + 1;
      v8 = v11 + 16 * v7;
      *(v8 + 32) = v5;
      *(v8 + 40) = v4;
      v3 += 2;
      --v2;
    }

    while (v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B03B11C4();
  v9 = sub_1B0E448E8();

  return v9;
}

uint64_t sub_1B0DCE06C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1();
  v4 = ResponseTextCode.debugDescription.getter(v3);
  sub_1B0447F14(v3);
  return v4;
}

uint64_t sub_1B0DCE128(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B0E437E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B0E43808();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B0E43908();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);

  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  sub_1B0E438F8();
  (*(v5 + 104))(v8, *MEMORY[0x1E69E93A8], v4);
  sub_1B0E437C8();
  (*(v5 + 8))(v8, v4);
  sub_1B0E43888();
  sub_1B0DCC990(v12, MEMORY[0x1E69E93B0]);
  sub_1B0DCC990(v16, MEMORY[0x1E69E93F0]);
}

uint64_t sub_1B0DCE340()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v1())
  {
    return sub_1B0E44BA8();
  }

  else
  {
    return 8425698;
  }
}

uint64_t sub_1B0DCEA5C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1();

  return v3;
}

uint64_t sub_1B0DCEA94()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1();

  return HIWORD(v3);
}

uint64_t sub_1B0DCF1F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1B0DCF220()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v1();
  return v3;
}

uint64_t sub_1B0DCF250()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1();

  return v3;
}

uint64_t sub_1B0DCF288()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v1();
  return v3;
}

uint64_t sub_1B0DCF2B8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v1();
  return sub_1B0E44BA8();
}

uint64_t MailboxLoggingCounter.hashValue.getter()
{
  sub_1B0E46C28();
  sub_1B0E46C78();
  return sub_1B0E46CB8();
}

unint64_t sub_1B0DCF3BC()
{
  result = qword_1EB6E7750;
  if (!qword_1EB6E7750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7750);
  }

  return result;
}

uint64_t sub_1B0DCF47C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE800000000000000;
    v12 = 0xE700000000000000;
    v13 = 0x5458454E444955;
    if (a1 != 2)
    {
      v13 = 0x44494C4156444955;
      v12 = 0xEB00000000595449;
    }

    v14 = 0x544E45434552;
    if (a1)
    {
      v11 = 0xE600000000000000;
    }

    else
    {
      v14 = 0x534547415353454DLL;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0x4D54534548474948;
    v4 = 0xED0000514553444FLL;
    v5 = 0x494C444E45505041;
    v6 = 0xEB0000000054494DLL;
    if (a1 != 7)
    {
      v5 = 0x49584F424C49414DLL;
      v6 = 0xE900000000000044;
    }

    if (a1 != 6)
    {
      v3 = v5;
      v4 = v6;
    }

    v7 = 0xE600000000000000;
    v8 = 0x4E4545534E55;
    if (a1 != 4)
    {
      v8 = 1163544915;
      v7 = 0xE400000000000000;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 != 2)
      {
        v15 = 0x44494C4156444955;
        v16 = 5854281;
LABEL_45:
        v17 = v16 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        if (v9 != v15)
        {
          goto LABEL_52;
        }

        goto LABEL_50;
      }

      v17 = 0xE700000000000000;
      if (v9 != 0x5458454E444955)
      {
        goto LABEL_52;
      }
    }

    else if (a2)
    {
      v17 = 0xE600000000000000;
      if (v9 != 0x544E45434552)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v17 = 0xE800000000000000;
      if (v9 != 0x534547415353454DLL)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v17 = 0xE600000000000000;
      if (v9 != 0x4E4545534E55)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v17 = 0xE400000000000000;
      if (v9 != 1163544915)
      {
LABEL_52:
        v18 = sub_1B0E46A78();
        goto LABEL_53;
      }
    }
  }

  else
  {
    if (a2 != 6)
    {
      if (a2 != 7)
      {
        v17 = 0xE900000000000044;
        if (v9 != 0x49584F424C49414DLL)
        {
          goto LABEL_52;
        }

        goto LABEL_50;
      }

      v15 = 0x494C444E45505041;
      v16 = 5523789;
      goto LABEL_45;
    }

    v17 = 0xED0000514553444FLL;
    if (v9 != 0x4D54534548474948)
    {
      goto LABEL_52;
    }
  }

LABEL_50:
  if (v10 != v17)
  {
    goto LABEL_52;
  }

  v18 = 1;
LABEL_53:

  return v18 & 1;
}

uint64_t sub_1B0DCF750()
{
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1B0DCF8B0(uint64_t result)
{
  v2 = v1;
  v3 = result;
  v20 = result;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = *(v1 + 20);
    result = sub_1B0CFC1B0(0, 0xE000000000000000, (v1 + 8), *(v1 + 20));
    if (v6)
    {
      v7._countAndFlagsBits = 0;
      v7._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v7, v5);
    }

    v8 = result;
    v9 = *(v2 + 20);
    v10 = __CFADD__(v9, result);
    v11 = v9 + result;
    if (v10)
    {
      goto LABEL_17;
    }

    *(v2 + 20) = v11;
  }

  else
  {
    v8 = 0;
  }

  MEMORY[0x1EEE9AC00](result);
  v19[2] = sub_1B0DD17A4;
  v19[3] = 0;
  v19[4] = v2;
  v19[5] = &v20;
  v19[6] = 32;
  v19[7] = 0xE100000000000000;
  result = sub_1B0DE63D8(0, sub_1B0DD178C, v19, v3);
  v12 = v8 + result;
  if (__OFADD__(v8, result))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (!v4)
  {
    result += v8;
    return result;
  }

  v13 = *(v2 + 20);
  result = sub_1B0CFC1B0(0, 0xE000000000000000, (v2 + 8), *(v2 + 20));
  if (v14)
  {
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v13);
  }

  v16 = *(v2 + 20);
  v10 = __CFADD__(v16, result);
  v17 = v16 + result;
  if (v10)
  {
    goto LABEL_18;
  }

  *(v2 + 20) = v17;
  v18 = __OFADD__(v12, result);
  result += v12;
  if (v18)
  {
    __break(1u);
    goto LABEL_16;
  }

  return result;
}

double MailboxStatus.init(messageCount:recentCount:nextUID:uidValidity:unseenCount:size:highestModificationSequence:appendLimit:mailboxID:)@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, _OWORD *a9@<X8>, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15, __int128 a16)
{
  v22[184] = a2 & 1;
  v22[176] = a4 & 1;
  v22[168] = BYTE4(a5) & 1;
  v22[160] = BYTE4(a6) & 1;
  v22[152] = a8 & 1;
  v22[144] = a11 & 1;
  v22[136] = a13 & 1;
  v22[128] = a15 & 1;
  *&v23 = a1;
  BYTE8(v23) = a2 & 1;
  *&v24 = a3;
  BYTE8(v24) = a4 & 1;
  HIDWORD(v24) = a5;
  LOBYTE(v25) = BYTE4(a5) & 1;
  DWORD1(v25) = a6;
  BYTE8(v25) = BYTE4(a6) & 1;
  *&v26 = a7;
  BYTE8(v26) = a8 & 1;
  *&v27 = a10;
  BYTE8(v27) = a11 & 1;
  *&v28 = a12;
  BYTE8(v28) = a13 & 1;
  *&v29 = a14;
  BYTE8(v29) = a15 & 1;
  v30 = a16;
  v31 = a1;
  v32 = a2 & 1;
  v33 = a3;
  v34 = a4 & 1;
  v35 = a5;
  v36 = BYTE4(a5) & 1;
  v37 = a6;
  v38 = BYTE4(a6) & 1;
  v39 = a7;
  v40 = a8 & 1;
  v41 = a10;
  v42 = a11 & 1;
  v43 = a12;
  v44 = a13 & 1;
  v45 = a14;
  v46 = a15 & 1;
  v47 = a16;
  sub_1B0B379C4(&v23, v22);
  sub_1B0B11B9C(&v31);
  v17 = v28;
  a9[4] = v27;
  a9[5] = v17;
  v18 = v30;
  a9[6] = v29;
  a9[7] = v18;
  v19 = v24;
  *a9 = v23;
  a9[1] = v19;
  result = *&v25;
  v21 = v26;
  a9[2] = v25;
  a9[3] = v21;
  return result;
}

uint64_t MailboxAttribute.rawValue.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x534547415353454DLL;
    v6 = 0x5458454E444955;
    if (a1 != 2)
    {
      v6 = 0x44494C4156444955;
    }

    if (a1)
    {
      v5 = 0x544E45434552;
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
    v1 = 0x4D54534548474948;
    v2 = 0x494C444E45505041;
    if (a1 != 7)
    {
      v2 = 0x49584F424C49414DLL;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x4E4545534E55;
    if (a1 != 4)
    {
      v3 = 1163544915;
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

uint64_t sub_1B0DCFCC4()
{
  v1 = *v0;
  sub_1B0E46C28();
  sub_1B0DCF750();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DCFD14()
{
  v1 = *v0;
  sub_1B0E46C28();
  sub_1B0DCF750();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DCFD58@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s12NIOIMAPCore216MailboxAttributeO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

uint64_t sub_1B0DCFD88@<X0>(uint64_t *a1@<X8>)
{
  result = MailboxAttribute.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t MailboxStatus.messageCount.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t MailboxStatus.messageCount.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t MailboxStatus.recentCount.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t MailboxStatus.recentCount.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t MailboxStatus.nextUID.setter(uint64_t result)
{
  *(v1 + 28) = result;
  *(v1 + 32) = BYTE4(result) & 1;
  return result;
}

uint64_t MailboxStatus.uidValidity.setter(uint64_t result)
{
  *(v1 + 36) = result;
  *(v1 + 40) = BYTE4(result) & 1;
  return result;
}

uint64_t MailboxStatus.unseenCount.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t MailboxStatus.unseenCount.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t MailboxStatus.size.getter()
{
  result = *(v0 + 64);
  v2 = *(v0 + 72);
  return result;
}

uint64_t MailboxStatus.size.setter(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

uint64_t MailboxStatus.highestModificationSequence.getter()
{
  result = *(v0 + 80);
  v2 = *(v0 + 88);
  return result;
}

uint64_t MailboxStatus.highestModificationSequence.setter(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

uint64_t MailboxStatus.appendLimit.getter()
{
  result = *(v0 + 96);
  v2 = *(v0 + 104);
  return result;
}

uint64_t MailboxStatus.appendLimit.setter(uint64_t result, char a2)
{
  *(v2 + 96) = result;
  *(v2 + 104) = a2 & 1;
  return result;
}

uint64_t MailboxStatus.mailboxID.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t MailboxStatus.mailboxID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 120);

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t MailboxStatus.hash(into:)()
{
  if (*(v0 + 8) == 1)
  {
    sub_1B0E46C68();
  }

  else
  {
    v1 = *v0;
    sub_1B0E46C68();
    MEMORY[0x1B2728D70](v1);
  }

  if (*(v0 + 24) == 1)
  {
    sub_1B0E46C68();
  }

  else
  {
    v2 = v0[2];
    sub_1B0E46C68();
    MEMORY[0x1B2728D70](v2);
  }

  if (*(v0 + 32) == 1)
  {
    sub_1B0E46C68();
  }

  else
  {
    v3 = *(v0 + 7);
    sub_1B0E46C68();
    sub_1B0E46C88();
  }

  if (*(v0 + 40) == 1)
  {
    sub_1B0E46C68();
  }

  else
  {
    v4 = *(v0 + 9);
    sub_1B0E46C68();
    sub_1B0E46C88();
  }

  if (*(v0 + 56) == 1)
  {
    sub_1B0E46C68();
  }

  else
  {
    v5 = v0[6];
    sub_1B0E46C68();
    MEMORY[0x1B2728D70](v5);
  }

  if (*(v0 + 72) == 1)
  {
    sub_1B0E46C68();
  }

  else
  {
    v6 = v0[8];
    sub_1B0E46C68();
    MEMORY[0x1B2728D70](v6);
  }

  if (*(v0 + 88) == 1)
  {
    sub_1B0E46C68();
  }

  else
  {
    v7 = v0[10];
    sub_1B0E46C68();
    MEMORY[0x1B2728DB0](v7);
  }

  if (*(v0 + 104) != 1)
  {
    v10 = v0[12];
    sub_1B0E46C68();
    MEMORY[0x1B2728D70](v10);
    if (v0[15])
    {
      goto LABEL_24;
    }

    return sub_1B0E46C68();
  }

  sub_1B0E46C68();
  if (!v0[15])
  {
    return sub_1B0E46C68();
  }

LABEL_24:
  v8 = v0[14];
  sub_1B0E46C68();

  return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t MailboxStatus.hashValue.getter()
{
  sub_1B0E46C28();
  MailboxStatus.hash(into:)();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DD0270()
{
  sub_1B0E46C28();
  MailboxStatus.hash(into:)();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DD02B4()
{
  sub_1B0E46C28();
  MailboxStatus.hash(into:)();
  return sub_1B0E46CB8();
}

BOOL sub_1B0DD02F0(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[7];
  v13[6] = a1[6];
  v13[7] = v3;
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[3];
  v14[2] = a2[2];
  v14[3] = v8;
  v14[0] = v6;
  v14[1] = v7;
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[7];
  v14[6] = a2[6];
  v14[7] = v11;
  v14[4] = v9;
  v14[5] = v10;
  return _s12NIOIMAPCore213MailboxStatusV23__derived_struct_equalsySbAC_ACtFZ_0(v13, v14);
}

uint64_t sub_1B0DD0364(unsigned __int8 a1)
{
  v2 = v1;
  if (a1 <= 3u)
  {
    v11 = 0xE800000000000000;
    v12 = 0x534547415353454DLL;
    v13 = 0xE700000000000000;
    v14 = 0x5458454E444955;
    if (a1 != 2)
    {
      v14 = 0x44494C4156444955;
      v13 = 0xEB00000000595449;
    }

    if (a1)
    {
      v12 = 0x544E45434552;
      v11 = 0xE600000000000000;
    }

    if (a1 <= 1u)
    {
      v9 = v12;
    }

    else
    {
      v9 = v14;
    }

    if (a1 <= 1u)
    {
      v10 = v11;
    }

    else
    {
      v10 = v13;
    }
  }

  else
  {
    v3 = 0xED0000514553444FLL;
    v4 = 0x4D54534548474948;
    v5 = 0xEB0000000054494DLL;
    v6 = 0x494C444E45505041;
    if (a1 != 7)
    {
      v6 = 0x49584F424C49414DLL;
      v5 = 0xE900000000000044;
    }

    if (a1 != 6)
    {
      v4 = v6;
      v3 = v5;
    }

    v7 = 0xE600000000000000;
    v8 = 0x4E4545534E55;
    if (a1 != 4)
    {
      v8 = 1163544915;
      v7 = 0xE400000000000000;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    if (a1 <= 5u)
    {
      v10 = v7;
    }

    else
    {
      v10 = v3;
    }
  }

  v15 = *(v1 + 20);
  v16 = sub_1B0CFC1B0(v9, v10, (v1 + 8), *(v1 + 20));
  if (v17)
  {
    v18._countAndFlagsBits = v9;
    v18._object = v10;
    v16 = ByteBuffer._setStringSlowpath(_:at:)(v18, v15);
  }

  v19 = v16;

  v21 = *(v2 + 20);
  v22 = __CFADD__(v21, v19);
  v23 = v21 + v19;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 20) = v23;
    return v19;
  }

  return result;
}

uint64_t sub_1B0DD051C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 20);
  result = sub_1B0CFC1B0(0x20535554415453, 0xE700000000000000, (v1 + 8), *(v1 + 20));
  if (v6)
  {
    v7._countAndFlagsBits = 0x20535554415453;
    v7._object = 0xE700000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v1 + 20);
  v10 = (v9 + result);
  if (__CFADD__(v9, result))
  {
    goto LABEL_28;
  }

  *(v1 + 20) = v10;
  v36 = a1;
  v11 = *(a1 + 16);
  if (v11)
  {
    result = sub_1B0CFC1B0(0, 0xE000000000000000, (v1 + 8), v10);
    if (v12)
    {
      v13._countAndFlagsBits = 0;
      v13._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
    }

    v14 = result;
    v15 = *(v1 + 20);
    LODWORD(v10) = v15 + result;
    if (__CFADD__(v15, result))
    {
      goto LABEL_35;
    }

    *(v1 + 20) = v10;
  }

  else
  {
    v14 = 0;
  }

  result = sub_1B0CFC1B0(40, 0xE100000000000000, (v1 + 8), v10);
  if (v16)
  {
    v17._countAndFlagsBits = 40;
    v17._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v17, v10);
  }

  v18 = *(v1 + 20);
  v19 = __CFADD__(v18, result);
  v20 = v18 + result;
  if (v19)
  {
    goto LABEL_29;
  }

  *(v1 + 20) = v20;
  v21 = v14 + result;
  if (__OFADD__(v14, result))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  MEMORY[0x1EEE9AC00](result);
  v35[2] = sub_1B0DD17A4;
  v35[3] = 0;
  v35[4] = v2;
  v35[5] = &v36;
  v35[6] = 32;
  v35[7] = 0xE100000000000000;
  result = sub_1B0DE63D8(0, sub_1B0DD171C, v35, a1);
  v22 = v21 + result;
  if (__OFADD__(v21, result))
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v23 = *(v2 + 20);
  result = sub_1B0CFC1B0(41, 0xE100000000000000, (v2 + 8), *(v2 + 20));
  if (v24)
  {
    v25._countAndFlagsBits = 41;
    v25._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v25, v23);
  }

  v26 = *(v2 + 20);
  v27 = (v26 + result);
  if (__CFADD__(v26, result))
  {
    goto LABEL_32;
  }

  *(v2 + 20) = v27;
  v28 = __OFADD__(v22, result);
  v29 = v22 + result;
  if (v28)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (!v11)
  {
    v34 = v29;
    goto LABEL_24;
  }

  result = sub_1B0CFC1B0(0, 0xE000000000000000, (v2 + 8), v27);
  if (v30)
  {
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v31, v27);
  }

  v32 = *(v2 + 20);
  v19 = __CFADD__(v32, result);
  v33 = v32 + result;
  if (v19)
  {
    goto LABEL_36;
  }

  *(v2 + 20) = v33;
  v34 = v29 + result;
  if (__OFADD__(v29, result))
  {
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

LABEL_24:
  result = v8 + v34;
  if (__OFADD__(v8, v34))
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0DD0798(__int128 *a1)
{
  v2 = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x1E69E7CC0];
  KeyPath = swift_getKeyPath();
  sub_1B0DD0B74(KeyPath, 0x534547415353454DLL, 0xE800000000000000, a1, v4);

  v6 = swift_getKeyPath();
  sub_1B0DD0B74(v6, 0x544E45434552, 0xE600000000000000, a1, v4);

  v7 = swift_getKeyPath();
  sub_1B0DD0D0C(v7, 0x5458454E444955, 0xE700000000000000, a1, v4);

  v8 = swift_getKeyPath();
  sub_1B0DD0D0C(v8, 0x44494C4156444955, 0xEB00000000595449, a1, v4);

  v9 = swift_getKeyPath();
  sub_1B0DD0B74(v9, 0x4E4545534E55, 0xE600000000000000, a1, v4);

  v10 = swift_getKeyPath();
  sub_1B0DD0B74(v10, 1163544915, 0xE400000000000000, a1, v4);

  v11 = swift_getKeyPath();
  sub_1B0DD0EA8(v11, 0x4D54534548474948, 0xED0000514553444FLL, a1, v4);

  v12 = swift_getKeyPath();
  sub_1B0DD0B74(v12, 0x494C444E45505041, 0xEB0000000054494DLL, a1, v4);

  v13 = swift_getKeyPath();
  sub_1B0DD1040(v13, 0x49584F424C49414DLL, 0xE900000000000044, a1, v4);

  result = swift_beginAccess();
  v32 = *(v4 + 16);
  v15 = v32;
  if (*(v32 + 16))
  {
    v16 = *(v1 + 20);
    result = sub_1B0CFC1B0(0, 0xE000000000000000, (v1 + 8), *(v1 + 20));
    if (v17)
    {
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v18, v16);
    }

    v19 = result;
    v20 = *(v2 + 20);
    v21 = __CFADD__(v20, result);
    v22 = v20 + result;
    if (v21)
    {
      goto LABEL_17;
    }

    *(v2 + 20) = v22;
  }

  else
  {
    v19 = 0;
  }

  MEMORY[0x1EEE9AC00](result);
  v31[2] = sub_1B0DD11E0;
  v31[3] = 0;
  v31[4] = v2;
  v31[5] = &v32;
  v31[6] = 32;
  v31[7] = 0xE100000000000000;
  result = sub_1B0DE6E08(0, sub_1B0DD16F8, v31, v15);
  v23 = v19 + result;
  if (__OFADD__(v19, result))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (!*(v15 + 16))
  {

    return v23;
  }

  v24 = *(v2 + 20);
  v25 = sub_1B0CFC1B0(0, 0xE000000000000000, (v2 + 8), *(v2 + 20));
  if (v26)
  {
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    v25 = ByteBuffer._setStringSlowpath(_:at:)(v27, v24);
  }

  v28 = v25;

  v29 = *(v2 + 20);
  v21 = __CFADD__(v29, v28);
  v30 = v29 + v28;
  if (v21)
  {
    goto LABEL_18;
  }

  *(v2 + 20) = v30;
  result = v23 + v28;
  if (__OFADD__(v23, v28))
  {
    __break(1u);
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1B0DD0B74(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v19 = a4[4];
  v20 = a4[5];
  v21 = a4[6];
  v22 = a4[7];
  v15 = *a4;
  v16 = a4[1];
  v17 = a4[2];
  v18 = a4[3];
  sub_1B0B379C4(a4, v23);
  swift_getAtKeyPath();
  v23[4] = v19;
  v23[5] = v20;
  v23[6] = v21;
  v23[7] = v22;
  v23[0] = v15;
  v23[1] = v16;
  v23[2] = v17;
  v23[3] = v18;
  result = sub_1B0B11B9C(v23);
  if ((v14 & 1) == 0)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0E46508();
    swift_beginAccess();
    v9 = *(a5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a5 + 16) = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_1B0DF64E8(0, v9[2] + 1, 1, v9);
      *(a5 + 16) = v9;
    }

    v12 = v9[2];
    v11 = v9[3];
    if (v12 >= v11 >> 1)
    {
      v9 = sub_1B0DF64E8((v11 > 1), v12 + 1, 1, v9);
    }

    v9[2] = v12 + 1;
    v13 = &v9[4 * v12];
    v13[4] = a2;
    v13[5] = a3;
    v13[6] = 0;
    v13[7] = 0xE000000000000000;
    *(a5 + 16) = v9;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1B0DD0D0C(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v19 = a4[4];
  v20 = a4[5];
  v21 = a4[6];
  v22 = a4[7];
  v15 = *a4;
  v16 = a4[1];
  v17 = a4[2];
  v18 = a4[3];
  sub_1B0B379C4(a4, v23);
  swift_getAtKeyPath();
  v23[4] = v19;
  v23[5] = v20;
  v23[6] = v21;
  v23[7] = v22;
  v23[0] = v15;
  v23[1] = v16;
  v23[2] = v17;
  v23[3] = v18;
  result = sub_1B0B11B9C(v23);
  if ((v14 & 1) == 0)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0E46508();
    swift_beginAccess();
    v9 = *(a5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a5 + 16) = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_1B0DF64E8(0, v9[2] + 1, 1, v9);
      *(a5 + 16) = v9;
    }

    v12 = v9[2];
    v11 = v9[3];
    if (v12 >= v11 >> 1)
    {
      v9 = sub_1B0DF64E8((v11 > 1), v12 + 1, 1, v9);
    }

    v9[2] = v12 + 1;
    v13 = &v9[4 * v12];
    v13[4] = a2;
    v13[5] = a3;
    v13[6] = 0;
    v13[7] = 0xE000000000000000;
    *(a5 + 16) = v9;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1B0DD0EA8(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v19 = a4[4];
  v20 = a4[5];
  v21 = a4[6];
  v22 = a4[7];
  v15 = *a4;
  v16 = a4[1];
  v17 = a4[2];
  v18 = a4[3];
  sub_1B0B379C4(a4, v23);
  swift_getAtKeyPath();
  v23[4] = v19;
  v23[5] = v20;
  v23[6] = v21;
  v23[7] = v22;
  v23[0] = v15;
  v23[1] = v16;
  v23[2] = v17;
  v23[3] = v18;
  result = sub_1B0B11B9C(v23);
  if ((v14 & 1) == 0)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0E46508();
    swift_beginAccess();
    v9 = *(a5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a5 + 16) = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_1B0DF64E8(0, v9[2] + 1, 1, v9);
      *(a5 + 16) = v9;
    }

    v12 = v9[2];
    v11 = v9[3];
    if (v12 >= v11 >> 1)
    {
      v9 = sub_1B0DF64E8((v11 > 1), v12 + 1, 1, v9);
    }

    v9[2] = v12 + 1;
    v13 = &v9[4 * v12];
    v13[4] = a2;
    v13[5] = a3;
    v13[6] = 0;
    v13[7] = 0xE000000000000000;
    *(a5 + 16) = v9;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1B0DD1040(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v19 = a4[4];
  v20 = a4[5];
  v21 = a4[6];
  v22 = a4[7];
  v15 = *a4;
  v16 = a4[1];
  v17 = a4[2];
  v18 = a4[3];
  sub_1B0B379C4(a4, v23);
  swift_getAtKeyPath();
  v23[4] = v19;
  v23[5] = v20;
  v23[6] = v21;
  v23[7] = v22;
  v23[0] = v15;
  v23[1] = v16;
  v23[2] = v17;
  v23[3] = v18;
  result = sub_1B0B11B9C(v23);
  if (v14)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0E46508();
    swift_beginAccess();
    v9 = *(a5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a5 + 16) = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_1B0DF64E8(0, v9[2] + 1, 1, v9);
      *(a5 + 16) = v9;
    }

    v12 = v9[2];
    v11 = v9[3];
    if (v12 >= v11 >> 1)
    {
      v9 = sub_1B0DF64E8((v11 > 1), v12 + 1, 1, v9);
    }

    v9[2] = v12 + 1;
    v13 = &v9[4 * v12];
    v13[4] = a2;
    v13[5] = a3;
    v13[6] = 0;
    v13[7] = 0xE000000000000000;
    *(a5 + 16) = v9;
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1B0DD11E0(Swift::String *a1, uint64_t a2)
{
  countAndFlagsBits = a1[1]._countAndFlagsBits;
  object = a1[1]._object;
  v13 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  MEMORY[0x1B2726E80](32, 0xE100000000000000);
  MEMORY[0x1B2726E80](countAndFlagsBits, object);
  v5 = *(a2 + 20);
  v6 = sub_1B0CFC1B0(v13._countAndFlagsBits, v13._object, (a2 + 8), *(a2 + 20));
  if (v7)
  {
    v6 = ByteBuffer._setStringSlowpath(_:at:)(v13, v5);
  }

  v8 = v6;

  v10 = *(a2 + 20);
  v11 = __CFADD__(v10, v8);
  v12 = v10 + v8;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 20) = v12;
    return v8;
  }

  return result;
}

uint64_t sub_1B0DD12A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>)
{
  v11 = *a1;
  v12 = *(a2 + 32);
  v13 = *a6;
  v14 = *(a2 + 16);
  v16[0] = *a2;
  v16[1] = v14;
  v17 = v12;
  result = sub_1B0E24010(v11, v16, a3, a4, a5, v13, a7, a8);
  if (!v9)
  {
    *a9 = result;
  }

  return result;
}

BOOL _s12NIOIMAPCore213MailboxStatusV23__derived_struct_equalsySbAC_ACtFZ_0(_BOOL8 result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(result + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*result != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v3 = *(a2 + 24);
  if (*(result + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(result + 16) != *(a2 + 16))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  v4 = *(a2 + 32);
  if (*(result + 32))
  {
    if (!*(a2 + 32))
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 28) != *(result + 28))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = *(a2 + 40);
  if (*(result + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(result + 36) != *(a2 + 36))
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  v6 = *(a2 + 56);
  if (*(result + 56))
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (*(result + 48) != *(a2 + 48))
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }
  }

  v7 = *(a2 + 72);
  if (*(result + 72))
  {
    if (!*(a2 + 72))
    {
      return 0;
    }
  }

  else
  {
    if (*(result + 64) != *(a2 + 64))
    {
      v7 = 1;
    }

    if (v7)
    {
      return 0;
    }
  }

  v8 = *(a2 + 88);
  if (*(result + 88))
  {
    if ((*(a2 + 88) & 1) == 0)
    {
      return 0;
    }

LABEL_43:
    v11 = *(a2 + 104);
    if (*(result + 104))
    {
      if (!*(a2 + 104))
      {
        return 0;
      }
    }

    else
    {
      if (*(result + 96) != *(a2 + 96))
      {
        v11 = 1;
      }

      if (v11)
      {
        return 0;
      }
    }

    v12 = *(result + 120);
    v13 = *(a2 + 120);
    if (v12)
    {
      return v13 && (*(result + 112) == *(a2 + 112) && v12 == v13 || (sub_1B0E46A78() & 1) != 0);
    }

    return !v13;
  }

  if (*(a2 + 88))
  {
    return 0;
  }

  v9 = *(result + 80);
  v10 = *(a2 + 80);
  if (((v10 | v9) & 0x8000000000000000) == 0)
  {
    if (v10 != v9)
    {
      return 0;
    }

    goto LABEL_43;
  }

  __break(1u);
  return result;
}

uint64_t _s12NIOIMAPCore216MailboxAttributeO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_1B0E467E8();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1B0DD14F4()
{
  result = qword_1EB6E7758;
  if (!qword_1EB6E7758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7758);
  }

  return result;
}

unint64_t sub_1B0DD154C()
{
  result = qword_1EB6E7760;
  if (!qword_1EB6E7760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E6400, &qword_1B0EF66E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7760);
  }

  return result;
}

unint64_t sub_1B0DD15B4()
{
  result = qword_1EB6E7768;
  if (!qword_1EB6E7768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7768);
  }

  return result;
}

uint64_t sub_1B0DD1618(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 128))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 120);
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

uint64_t sub_1B0DD1674(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *(result + 120) = a2;
    }
  }

  return result;
}

uint64_t sub_1B0DD1734@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1B0E2331C(*a1, *a2, *(a2 + 8), *(v3 + 16), *(v3 + 24), *(v3 + 32), **(v3 + 40), *(v3 + 48), *(v3 + 56));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t MailboxData.hash(into:)(uint64_t a1)
{
  v3 = v1[7];
  v42[6] = v1[6];
  v42[7] = v3;
  v42[8] = v1[8];
  v4 = v1[3];
  v42[2] = v1[2];
  v42[3] = v4;
  v5 = v1[5];
  v42[4] = v1[4];
  v42[5] = v5;
  v6 = v1[1];
  v42[0] = *v1;
  v42[1] = v6;
  v7 = sub_1B0D0CD9C(v42);
  v8 = sub_1B0504D1C(v42);
  if (v7 > 4)
  {
    if (v7 <= 7)
    {
      if (v7 == 5)
      {
        v31 = *(v8 + 8);
        v32 = *(v8 + 96);
        v47 = *(v8 + 80);
        v48 = v32;
        v33 = *(v8 + 128);
        v49 = *(v8 + 112);
        v50 = v33;
        v34 = *(v8 + 32);
        v43 = *(v8 + 16);
        v44 = v34;
        v35 = *(v8 + 64);
        v45 = *(v8 + 48);
        v46 = v35;
        MEMORY[0x1B2728D70](5);
        MEMORY[0x1B2728D70](v31 | (v31 << 32));
        return MailboxStatus.hash(into:)();
      }

      else
      {
        v9 = *v8;
        if (v7 == 6)
        {
          v10 = 6;
        }

        else
        {
          v10 = 7;
        }

        MEMORY[0x1B2728D70](v10);
        return MEMORY[0x1B2728D70](v9);
      }
    }

    if (v7 == 8)
    {
      v36 = *v8;
      v37 = *(v8 + 8);
      v38 = *(v8 + 16);
      MEMORY[0x1B2728D70](8);
      sub_1B0D48988(a1, v36);
      sub_1B0D48988(a1, v37);
      return sub_1B0D48988(a1, v38);
    }

    if (v7 != 9)
    {
      v41 = *(v8 + 16);
      v43 = *v8;
      v44 = v41;
      v45 = *(v8 + 32);
      MEMORY[0x1B2728D70](10);
      return UIDBatchesResponse.hash(into:)();
    }

    v19 = *v8;
    v18 = *(v8 + 8);
    MEMORY[0x1B2728D70](9);
    v20 = *(v19 + 16);
    MEMORY[0x1B2728D70](v20);
    if (v20)
    {
      v21 = (v19 + 32);
      do
      {
        v22 = *v21++;
        MEMORY[0x1B2728D70](v22);
        --v20;
      }

      while (v20);
    }

    v23 = v18;
    return MEMORY[0x1B2728DB0](v23);
  }

  if (v7 > 1)
  {
    if (v7 != 2)
    {
      if (v7 != 3)
      {
        v39 = *(v8 + 16);
        v43 = *v8;
        v44 = v39;
        v45 = *(v8 + 32);
        MEMORY[0x1B2728D70](4);
        return ExtendedSearchResponse.hash(into:)();
      }

      v12 = *v8;
      v11 = *(v8 + 8);
      v13 = *(v8 + 16);
      MEMORY[0x1B2728D70](3);
      v14 = *(v12 + 16);
      MEMORY[0x1B2728D70](v14);
      if (v14)
      {
        v15 = (v12 + 32);
        do
        {
          v16 = *v15++;
          sub_1B0E46C88();
          --v14;
        }

        while (v14);
      }

      if (v13)
      {
        return sub_1B0E46C68();
      }

      sub_1B0E46C68();
      v23 = v11;
      return MEMORY[0x1B2728DB0](v23);
    }

    v29 = *(v8 + 16);
    v43 = *v8;
    v44 = v29;
    v45 = *(v8 + 32);
    v30 = 2;
LABEL_30:
    MEMORY[0x1B2728D70](v30);
    return MailboxInfo.hash(into:)(a1);
  }

  if (v7)
  {
    v40 = *(v8 + 16);
    v43 = *v8;
    v44 = v40;
    v45 = *(v8 + 32);
    v30 = 1;
    goto LABEL_30;
  }

  v24 = *v8;
  MEMORY[0x1B2728D70](0);
  v25 = *(v24 + 16);
  result = MEMORY[0x1B2728D70](v25);
  if (v25)
  {
    v26 = (v24 + 40);
    do
    {
      v27 = *(v26 - 1);
      v28 = *v26;
      sub_1B0E44BB8();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      v26 += 2;
      --v25;
    }

    while (v25);
  }

  return result;
}

uint64_t MailboxData.hashValue.getter()
{
  sub_1B0E46C28();
  MailboxData.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DD1B1C()
{
  sub_1B0E46C28();
  MailboxData.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DD1B60()
{
  sub_1B0E46C28();
  MailboxData.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DD1B9C(_OWORD *a1, __int128 *a2)
{
  v2 = a1[7];
  v11[6] = a1[6];
  v11[7] = v2;
  v11[8] = a1[8];
  v3 = a1[3];
  v11[2] = a1[2];
  v11[3] = v3;
  v4 = a1[5];
  v11[4] = a1[4];
  v11[5] = v4;
  v5 = a1[1];
  v11[0] = *a1;
  v11[1] = v5;
  v6 = a2[7];
  v12[6] = a2[6];
  v12[7] = v6;
  v12[8] = a2[8];
  v7 = a2[3];
  v12[2] = a2[2];
  v12[3] = v7;
  v8 = a2[5];
  v12[4] = a2[4];
  v12[5] = v8;
  v9 = a2[1];
  v12[0] = *a2;
  v12[1] = v9;
  return _s12NIOIMAPCore211MailboxDataO21__derived_enum_equalsySbAC_ACtFZ_0(v11, v12) & 1;
}

uint64_t MailboxData.SearchSort.identifiers.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t MailboxData.SearchSort.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  MEMORY[0x1B2728D70](v5);
  if (v5)
  {
    v6 = (a2 + 32);
    do
    {
      v7 = *v6++;
      MEMORY[0x1B2728D70](v7);
      --v5;
    }

    while (v5);
  }

  return MEMORY[0x1B2728DB0](a3);
}

uint64_t MailboxData.SearchSort.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1B0E46C28();
  v4 = *(a1 + 16);
  MEMORY[0x1B2728D70](v4);
  if (v4)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      MEMORY[0x1B2728D70](v6);
      --v4;
    }

    while (v4);
  }

  MEMORY[0x1B2728DB0](a2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DD1D84()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(*v0 + 16);
  MEMORY[0x1B2728D70](v3);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      v5 = *v4++;
      MEMORY[0x1B2728D70](v5);
      --v3;
    }

    while (v3);
  }

  return MEMORY[0x1B2728DB0](v1);
}

uint64_t sub_1B0DD1DE0()
{
  v2 = *v0;
  v1 = v0[1];
  sub_1B0E46C28();
  v3 = *(v2 + 16);
  MEMORY[0x1B2728D70](v3);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      v5 = *v4++;
      MEMORY[0x1B2728D70](v5);
      --v3;
    }

    while (v3);
  }

  MEMORY[0x1B2728DB0](v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DD1E6C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v46 = *result;
  v4 = v46;
  if (v46[2])
  {
    v5 = *(a2 + 20);
    result = sub_1B0CFC1B0(32, 0xE100000000000000, (a2 + 8), *(a2 + 20));
    if (v6)
    {
      v7._countAndFlagsBits = 32;
      v7._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v7, v5);
    }

    v8 = result;
    v9 = *(a2 + 20);
    v10 = __CFADD__(v9, result);
    v11 = v9 + result;
    if (v10)
    {
      goto LABEL_41;
    }

    *(a2 + 20) = v11;
  }

  else
  {
    v8 = 0;
  }

  MEMORY[0x1EEE9AC00](result);
  v45[2] = sub_1B0DD216C;
  v45[3] = 0;
  v45[4] = a2;
  v45[5] = &v46;
  v45[6] = 32;
  v45[7] = 0xE100000000000000;
  result = sub_1B0DE6D58(0, sub_1B0DD377C, v45, v4);
  v12 = v8 + result;
  if (__OFADD__(v8, result))
  {
    goto LABEL_32;
  }

  if (v4[2])
  {
    v13 = *(a2 + 20);
    result = sub_1B0CFC1B0(0, 0xE000000000000000, (a2 + 8), *(a2 + 20));
    if (v14)
    {
      v15._countAndFlagsBits = 0;
      v15._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v15, v13);
    }

    v16 = *(a2 + 20);
    v10 = __CFADD__(v16, result);
    v17 = v16 + result;
    if (v10)
    {
      goto LABEL_42;
    }

    *(a2 + 20) = v17;
    v18 = __OFADD__(v12, result);
    v12 += result;
    if (v18)
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }
  }

  v19 = *(a2 + 20);
  result = sub_1B0CFC1B0(32, 0xE100000000000000, (a2 + 8), *(a2 + 20));
  if (v20)
  {
    v21._countAndFlagsBits = 32;
    v21._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v21, v19);
  }

  v22 = *(a2 + 20);
  v23 = (v22 + result);
  if (__CFADD__(v22, result))
  {
    goto LABEL_33;
  }

  *(a2 + 20) = v23;
  v24 = v12 + result;
  if (__OFADD__(v12, result))
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  result = sub_1B0CFC1B0(0x20514553444F4D28, 0xE800000000000000, (a2 + 8), v23);
  if (v25)
  {
    v26._countAndFlagsBits = 0x20514553444F4D28;
    v26._object = 0xE800000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v26, v23);
  }

  v27 = *(a2 + 20);
  v10 = __CFADD__(v27, result);
  v28 = v27 + result;
  if (v10)
  {
    goto LABEL_35;
  }

  *(a2 + 20) = v28;
  v18 = __OFADD__(v24, result);
  v29 = v24 + result;
  if (v18)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v46 = *(v3 + 8);
  v30 = sub_1B0E469C8();
  v32 = v31;
  v33 = *(a2 + 20);
  v34 = sub_1B0CFC1B0(v30, v31, (a2 + 8), *(a2 + 20));
  if (v35)
  {
    v36._countAndFlagsBits = v30;
    v36._object = v32;
    v34 = ByteBuffer._setStringSlowpath(_:at:)(v36, v33);
  }

  v37 = v34;

  v38 = *(a2 + 20);
  v39 = (v38 + v37);
  if (__CFADD__(v38, v37))
  {
    goto LABEL_37;
  }

  *(a2 + 20) = v39;
  v40 = v29 + v37;
  if (__OFADD__(v29, v37))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  result = sub_1B0CFC1B0(41, 0xE100000000000000, (a2 + 8), v38 + v37);
  if (v41)
  {
    v42._countAndFlagsBits = 41;
    v42._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v42, v39);
  }

  v43 = *(a2 + 20);
  v10 = __CFADD__(v43, result);
  v44 = v43 + result;
  if (v10)
  {
    goto LABEL_39;
  }

  *(a2 + 20) = v44;
  v18 = __OFADD__(v40, result);
  result += v40;
  if (v18)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0DD216C(uint64_t *a1, uint64_t a2)
{
  v15 = *a1;
  v3 = sub_1B0E469C8();
  v5 = v4;
  v6 = *(a2 + 20);
  v7 = sub_1B0CFC1B0(v3, v4, (a2 + 8), *(a2 + 20));
  if (v8)
  {
    v9._countAndFlagsBits = v3;
    v9._object = v5;
    v7 = ByteBuffer._setStringSlowpath(_:at:)(v9, v6);
  }

  v10 = v7;

  v12 = *(a2 + 20);
  v13 = __CFADD__(v12, v10);
  v14 = v12 + v10;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 20) = v14;
    return v10;
  }

  return result;
}

uint64_t sub_1B0DD221C(_OWORD *a1)
{
  v3 = a1[7];
  v66[6] = a1[6];
  v66[7] = v3;
  v66[8] = a1[8];
  v4 = a1[3];
  v66[2] = a1[2];
  v66[3] = v4;
  v5 = a1[5];
  v66[4] = a1[4];
  v66[5] = v5;
  v6 = a1[1];
  v66[0] = *a1;
  v66[1] = v6;
  LODWORD(v7) = sub_1B0D0CD9C(v66);
  result = sub_1B0504D1C(v66);
  if (v7 > 4)
  {
    if (v7 > 7)
    {
      if (v7 == 8)
      {
        return sub_1B0DF45A4(*result, *(result + 8), *(result + 16));
      }

      if (v7 != 9)
      {
        v64 = *(result + 16);
        v67 = *result;
        v68 = v64;
        v69 = *(result + 32);
        return sub_1B0E31FD4(&v67);
      }

      v67 = *result;
      v19 = *(v1 + 20);
      result = sub_1B0CFC1B0(0x484352414553, 0xE600000000000000, (v1 + 8), *(v1 + 20));
      if (v20)
      {
        v21._countAndFlagsBits = 0x484352414553;
        v21._object = 0xE600000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v21, v19);
      }

      v7 = result;
      v22 = *(v1 + 20);
      v17 = __CFADD__(v22, result);
      v23 = v22 + result;
      if (v17)
      {
        goto LABEL_53;
      }

      *(v1 + 20) = v23;
      v65 = v67;
      v24 = sub_1B0DD1E6C(&v65, v1);
      v25 = __OFADD__(v7, v24);
      result = v7 + v24;
      if (!v25)
      {
        return result;
      }

      __break(1u);
      goto LABEL_22;
    }

    if (v7 == 5)
    {
      goto LABEL_35;
    }

    v2 = v1;
    if (v7 != 6)
    {
      goto LABEL_44;
    }

    *&v65 = *result;
    *&v67 = sub_1B0E469C8();
    *(&v67 + 1) = v9;
    MEMORY[0x1B2726E80](0x53545349584520, 0xE700000000000000);
    v7 = *(&v67 + 1);
    v10 = v67;
    v11 = v1;
    v12 = *(v1 + 20);
    v13 = sub_1B0CFC1B0(v67, *(&v67 + 1), (v1 + 8), *(v1 + 20));
    if (v14)
    {
      v15._countAndFlagsBits = v10;
      v15._object = v7;
      v13 = ByteBuffer._setStringSlowpath(_:at:)(v15, v12);
      v11 = v1;
    }

    v1 = v13;

    v16 = *(v11 + 20);
    result = v1;
    v17 = __CFADD__(v16, v1);
    v18 = v16 + v1;
    if (!v17)
    {
      goto LABEL_47;
    }

    __break(1u);
  }

  if (v7 <= 1)
  {
LABEL_22:
    if (!v7)
    {
      v26 = *result;
      v27 = *(v1 + 20);
      result = sub_1B0CFC1B0(0x205347414C46, 0xE600000000000000, (v1 + 8), *(v1 + 20));
      if (v28)
      {
        v29._countAndFlagsBits = 0x205347414C46;
        v29._object = 0xE600000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v29, v27);
      }

      v30 = result;
      v31 = *(v1 + 20);
      v17 = __CFADD__(v31, result);
      v32 = v31 + result;
      if (v17)
      {
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        return result;
      }

      *(v1 + 20) = v32;
      v33 = sub_1B0D8AB9C(v26);
      v25 = __OFADD__(v30, v33);
      result = v30 + v33;
      if (!v25)
      {
        return result;
      }

      __break(1u);
LABEL_29:
      v34 = *(result + 16);
      v67 = *result;
      v68 = v34;
      v69 = *(result + 32);
      v35 = *(v1 + 20);
      result = sub_1B0CFC1B0(0x204255534CLL, 0xE500000000000000, (v1 + 8), *(v1 + 20));
      if (v36)
      {
        v37._countAndFlagsBits = 0x204255534CLL;
        v37._object = 0xE500000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v37, v35);
      }

      v38 = result;
      v39 = *(v1 + 20);
      v17 = __CFADD__(v39, result);
      v40 = v39 + result;
      if (!v17)
      {
        *(v1 + 20) = v40;
        v41 = sub_1B0DD7EDC(&v67);
        v25 = __OFADD__(v38, v41);
        result = v38 + v41;
        if (!v25)
        {
          return result;
        }

        __break(1u);
LABEL_35:
        v42 = *result;
        v43 = *(result + 8);
        v44 = *(result + 96);
        v71 = *(result + 80);
        v72 = v44;
        v45 = *(result + 128);
        v73 = *(result + 112);
        v74 = v45;
        v46 = *(result + 32);
        v67 = *(result + 16);
        v68 = v46;
        v47 = *(result + 64);
        v69 = *(result + 48);
        v70 = v47;
        return sub_1B0DD29EC(v42, v43, &v67);
      }

      __break(1u);
      goto LABEL_51;
    }

    v49 = *(result + 16);
    v67 = *result;
    v68 = v49;
    v69 = *(result + 32);
    v50 = *(v1 + 20);
    result = sub_1B0CFC1B0(0x205453494CLL, 0xE500000000000000, (v1 + 8), *(v1 + 20));
    if (v51)
    {
      v52._countAndFlagsBits = 0x205453494CLL;
      v52._object = 0xE500000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v52, v50);
    }

    v53 = result;
    v54 = *(v1 + 20);
    v17 = __CFADD__(v54, result);
    v55 = v54 + result;
    if (v17)
    {
      goto LABEL_52;
    }

    *(v1 + 20) = v55;
    v56 = sub_1B0DD7EDC(&v67);
    v25 = __OFADD__(v53, v56);
    result = v53 + v56;
    if (!v25)
    {
      return result;
    }

    __break(1u);
LABEL_44:
    *&v65 = *result;
    *&v67 = sub_1B0E469C8();
    *(&v67 + 1) = v57;
    MEMORY[0x1B2726E80](0x544E4543455220, 0xE700000000000000);
    v58 = v67;
    v11 = v2;
    v59 = *(v2 + 20);
    v60 = sub_1B0CFC1B0(v67, *(&v67 + 1), (v2 + 8), *(v2 + 20));
    if (v61)
    {
      v60 = ByteBuffer._setStringSlowpath(_:at:)(v58, v59);
      v11 = v2;
    }

    v62 = v60;

    v63 = *(v11 + 20);
    result = v62;
    v17 = __CFADD__(v63, v62);
    v18 = v63 + v62;
    if (!v17)
    {
LABEL_47:
      *(v11 + 20) = v18;
      return result;
    }

    goto LABEL_54;
  }

  if (v7 == 2)
  {
    goto LABEL_29;
  }

  if (v7 == 3)
  {
    return sub_1B0DD26C8(*result, *(result + 8), *(result + 16));
  }

  v48 = *(result + 16);
  v67 = *result;
  v68 = v48;
  v69 = *(result + 32);
  return sub_1B0D852CC(&v67);
}

uint64_t sub_1B0DD26C8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *(v3 + 20);
  result = sub_1B0CFC1B0(0x484352414553, 0xE600000000000000, (v3 + 8), *(v3 + 20));
  if (v10)
  {
    v11._countAndFlagsBits = 0x484352414553;
    v11._object = 0xE600000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v11, v8);
  }

  v12 = result;
  v13 = *(v3 + 20);
  v14 = (v13 + result);
  if (__CFADD__(v13, result))
  {
    goto LABEL_34;
  }

  *(v3 + 20) = v14;
  v53 = a1;
  v15 = *(a1 + 16);
  if (v15)
  {
    result = sub_1B0CFC1B0(32, 0xE100000000000000, (v3 + 8), v14);
    if (v16)
    {
      v17._countAndFlagsBits = 32;
      v17._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v17, v14);
    }

    v18 = result;
    v19 = *(v4 + 20);
    v20 = __CFADD__(v19, result);
    v21 = v19 + result;
    if (v20)
    {
      goto LABEL_38;
    }

    *(v4 + 20) = v21;
  }

  else
  {
    v18 = 0;
  }

  MEMORY[0x1EEE9AC00](result);
  v52[2] = sub_1B0DD2B60;
  v52[3] = 0;
  v52[4] = v4;
  v52[5] = &v53;
  v52[6] = 32;
  v52[7] = 0xE100000000000000;
  result = sub_1B0DE6EF4(0, sub_1B0DD3724, v52, a1);
  v22 = v18 + result;
  if (__OFADD__(v18, result))
  {
    goto LABEL_35;
  }

  if (!v15)
  {
    result = 0;
    v28 = v22;
    goto LABEL_16;
  }

  v23 = *(v4 + 20);
  result = sub_1B0CFC1B0(0, 0xE000000000000000, (v4 + 8), *(v4 + 20));
  if (v24)
  {
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v25, v23);
  }

  v26 = *(v4 + 20);
  v20 = __CFADD__(v26, result);
  v27 = v26 + result;
  if (v20)
  {
    goto LABEL_39;
  }

  *(v4 + 20) = v27;
  v28 = v22 + result;
  if (__OFADD__(v22, result))
  {
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_16:
  v29 = v12 + v28;
  if (__OFADD__(v12, v28))
  {
LABEL_36:
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
    goto LABEL_42;
  }

  if (a3)
  {
    v30 = 0;
  }

  else
  {
    v31 = *(v4 + 20);
    result = sub_1B0CFC1B0(0x514553444F4D2820, 0xE900000000000020, (v4 + 8), *(v4 + 20));
    if (v32)
    {
      v33._countAndFlagsBits = 0x514553444F4D2820;
      v33._object = 0xE900000000000020;
      result = ByteBuffer._setStringSlowpath(_:at:)(v33, v31);
    }

    v34 = result;
    v35 = *(v4 + 20);
    v36 = (v35 + result);
    if (__CFADD__(v35, result))
    {
      goto LABEL_40;
    }

    *(v4 + 20) = v36;
    v53 = a2;
    v37 = sub_1B0E469C8();
    v39 = v38;
    v40 = sub_1B0CFC1B0(v37, v38, (v4 + 8), v36);
    if (v41)
    {
      v42._countAndFlagsBits = v37;
      v42._object = v39;
      v40 = ByteBuffer._setStringSlowpath(_:at:)(v42, v36);
    }

    v43 = v40;

    v44 = *(v4 + 20);
    v45 = (v44 + v43);
    if (__CFADD__(v44, v43))
    {
      goto LABEL_41;
    }

    *(v4 + 20) = v45;
    v46 = __OFADD__(v34, v43);
    v47 = v34 + v43;
    if (v46)
    {
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    result = sub_1B0CFC1B0(41, 0xE100000000000000, (v4 + 8), v44 + v43);
    if (v48)
    {
      v49._countAndFlagsBits = 41;
      v49._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v49, v45);
    }

    v50 = *(v4 + 20);
    v20 = __CFADD__(v50, result);
    v51 = v50 + result;
    if (v20)
    {
      goto LABEL_43;
    }

    *(v4 + 20) = v51;
    v30 = v47 + result;
    if (__OFADD__(v47, result))
    {
LABEL_44:
      __break(1u);
      return result;
    }
  }

  result = v29 + v30;
  if (__OFADD__(v29, v30))
  {
    goto LABEL_37;
  }

  return result;
}

uint64_t sub_1B0DD29EC(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = *(v3 + 20);
  result = sub_1B0CFC1B0(0x20535554415453, 0xE700000000000000, (v3 + 8), *(v3 + 20));
  if (v8)
  {
    v9._countAndFlagsBits = 0x20535554415453;
    v9._object = 0xE700000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v9, v6);
  }

  v10 = result;
  v11 = *(v3 + 20);
  v12 = __CFADD__(v11, result);
  v13 = v11 + result;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  *(v3 + 20) = v13;
  result = sub_1B0DD59A4(a1);
  v14 = v10 + result;
  if (__OFADD__(v10, result))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v15 = *(v3 + 20);
  result = sub_1B0CFC1B0(10272, 0xE200000000000000, (v3 + 8), *(v3 + 20));
  if (v16)
  {
    v17._countAndFlagsBits = 10272;
    v17._object = 0xE200000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v17, v15);
  }

  v18 = *(v3 + 20);
  v12 = __CFADD__(v18, result);
  v19 = v18 + result;
  if (v12)
  {
    goto LABEL_17;
  }

  *(v3 + 20) = v19;
  v20 = v14 + result;
  if (__OFADD__(v14, result))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = sub_1B0DD0798(a3);
  v21 = __OFADD__(v20, result);
  v22 = v20 + result;
  if (v21)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v23 = *(v3 + 20);
  result = sub_1B0CFC1B0(41, 0xE100000000000000, (v3 + 8), *(v3 + 20));
  if (v24)
  {
    v25._countAndFlagsBits = 41;
    v25._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v25, v23);
  }

  v26 = *(v3 + 20);
  v12 = __CFADD__(v26, result);
  v27 = v26 + result;
  if (v12)
  {
    goto LABEL_20;
  }

  *(v3 + 20) = v27;
  v21 = __OFADD__(v22, result);
  result += v22;
  if (v21)
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

BOOL _s12NIOIMAPCore211MailboxDataO10SearchSortV23__derived_struct_equalsySbAE_AEtFZ_0(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 16);
  if (v4 != *(a3 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = result == a3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
LABEL_10:
    if (((a4 | a2) & 0x8000000000000000) == 0)
    {
      return a4 == a2;
    }
  }

  else
  {
    v6 = (result + 32);
    v7 = (a3 + 32);
    while (v4)
    {
      if (*v6 != *v7)
      {
        return 0;
      }

      ++v6;
      ++v7;
      if (!--v4)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s12NIOIMAPCore211MailboxDataO21__derived_enum_equalsySbAC_ACtFZ_0(_OWORD *a1, __int128 *a2)
{
  v3 = a1[7];
  v156[6] = a1[6];
  v156[7] = v3;
  v156[8] = a1[8];
  v4 = a1[3];
  v156[2] = a1[2];
  v156[3] = v4;
  v5 = a1[5];
  v156[4] = a1[4];
  v156[5] = v5;
  v6 = a1[1];
  v156[0] = *a1;
  v156[1] = v6;
  v7 = sub_1B0D0CD9C(v156);
  if (v7 <= 4)
  {
    if (v7 <= 1)
    {
      if (!v7)
      {
        v40 = *sub_1B0504D1C(v156);
        v41 = a2[3];
        v149 = a2[2];
        v150 = v41;
        v42 = a2[1];
        v147 = *a2;
        v148 = v42;
        v43 = a2[8];
        v154 = a2[7];
        v155 = v43;
        v44 = a2[6];
        v152 = a2[5];
        v153 = v44;
        v151 = a2[4];
        if (sub_1B0D0CD9C(&v147))
        {
          goto LABEL_87;
        }

        v45 = sub_1B0504D1C(&v147);
        v46 = sub_1B03D1B3C(v40, *v45);
        return v46 & 1;
      }

      v107 = sub_1B0504D1C(v156);
      v49 = *v107;
      v48 = *(v107 + 8);
      v50 = *(v107 + 16);
      v51 = *(v107 + 20);
      v53 = *(v107 + 32);
      v52 = *(v107 + 40);
      v108 = a2[7];
      v153 = a2[6];
      v154 = v108;
      v155 = a2[8];
      v109 = a2[3];
      v149 = a2[2];
      v150 = v109;
      v110 = a2[5];
      v151 = a2[4];
      v152 = v110;
      v111 = a2[1];
      v147 = *a2;
      v148 = v111;
      if (sub_1B0D0CD9C(&v147) != 1)
      {
        goto LABEL_87;
      }
    }

    else
    {
      if (v7 != 2)
      {
        if (v7 == 3)
        {
          v13 = sub_1B0504D1C(v156);
          v15 = *v13;
          v14 = *(v13 + 8);
          v16 = *(v13 + 16);
          v17 = a2[7];
          v153 = a2[6];
          v154 = v17;
          v155 = a2[8];
          v18 = a2[1];
          v147 = *a2;
          v148 = v18;
          v19 = a2[3];
          v149 = a2[2];
          v150 = v19;
          v20 = a2[5];
          v151 = a2[4];
          v152 = v20;
          if (sub_1B0D0CD9C(&v147) != 3)
          {
            goto LABEL_87;
          }

          result = sub_1B0504D1C(&v147);
          v22 = *result;
          v23 = *(v15 + 16);
          if (v23 != *(*result + 16))
          {
            goto LABEL_87;
          }

          v24 = *(result + 8);
          v25 = *(result + 16);
          if (v23 && v15 != v22)
          {
            v26 = (v15 + 32);
            v27 = (v22 + 32);
            while (*v27 == *v26)
            {
              ++v26;
              ++v27;
              if (!--v23)
              {
                goto LABEL_17;
              }
            }

            goto LABEL_87;
          }

LABEL_17:
          if (v16)
          {
            if ((*(result + 16) & 1) == 0)
            {
              goto LABEL_87;
            }

            goto LABEL_86;
          }

          if (*(result + 16))
          {
            goto LABEL_87;
          }

          if ((v24 | v14) < 0)
          {
            goto LABEL_90;
          }

          if (v24 != v14)
          {
            goto LABEL_87;
          }

LABEL_86:
          v46 = 1;
          return v46 & 1;
        }

        v87 = sub_1B0504D1C(v156);
        v89 = *v87;
        v88 = *(v87 + 8);
        v91 = *(v87 + 16);
        v90 = *(v87 + 24);
        v92 = *(v87 + 32);
        v93 = *(v87 + 33);
        v94 = *(v87 + 40);
        v95 = a2[7];
        v153 = a2[6];
        v154 = v95;
        v155 = a2[8];
        v96 = a2[3];
        v149 = a2[2];
        v150 = v96;
        v97 = a2[5];
        v151 = a2[4];
        v152 = v97;
        v98 = a2[1];
        v147 = *a2;
        v148 = v98;
        if (sub_1B0D0CD9C(&v147) != 4)
        {
          goto LABEL_87;
        }

        v142 = v93;
        v140 = v94;
        v99 = sub_1B0504D1C(&v147);
        v100 = *v99;
        v101 = *(v99 + 8);
        v102 = *(v99 + 16);
        v103 = *(v99 + 24);
        v104 = *(v99 + 32);
        v105 = *(v99 + 33);
        v106 = *(v99 + 40);
        if (v88)
        {
          if (v101)
          {
            *v146 = *v99;
            *&v146[8] = v101;
            *&v146[16] = v102;
            *&v146[24] = v103;
            v146[32] = v104 & 1;
            *v145 = v89;
            *&v145[8] = v88;
            *&v145[16] = v91;
            *&v145[24] = v90;
            v145[32] = v92 & 1;
            v139 = v106;
            v138 = v105;
            v137 = _s12NIOIMAPCore216SearchCorrelatorV23__derived_struct_equalsySbAC_ACtFZ_0(v145, v146);
            sub_1B0D82F64(v100, v101);
            sub_1B0D82F64(v89, v88);

            sub_1B0AEF11C(v89, v88);
            v105 = v138;
            v106 = v139;
            if (!v137)
            {
              goto LABEL_87;
            }

            goto LABEL_72;
          }
        }

        else if (!v101)
        {
LABEL_72:
          if (((v142 ^ v105) & 1) != 0 || (sub_1B0D314BC(v140, v106) & 1) == 0)
          {
            goto LABEL_87;
          }

          goto LABEL_86;
        }

        sub_1B0D82F64(*v99, v101);
        sub_1B0D82F64(v89, v88);
        sub_1B0AEF11C(v89, v88);
        sub_1B0AEF11C(v100, v101);
        goto LABEL_87;
      }

      v47 = sub_1B0504D1C(v156);
      v49 = *v47;
      v48 = *(v47 + 8);
      v50 = *(v47 + 16);
      v51 = *(v47 + 20);
      v53 = *(v47 + 32);
      v52 = *(v47 + 40);
      v54 = a2[7];
      v153 = a2[6];
      v154 = v54;
      v155 = a2[8];
      v55 = a2[3];
      v149 = a2[2];
      v150 = v55;
      v56 = a2[5];
      v151 = a2[4];
      v152 = v56;
      v57 = a2[1];
      v147 = *a2;
      v148 = v57;
      if (sub_1B0D0CD9C(&v147) != 2)
      {
        goto LABEL_87;
      }
    }

    v112 = sub_1B0504D1C(&v147);
    v113 = *(v112 + 8);
    v114 = *(v112 + 16);
    v115 = *(v112 + 20);
    v116 = *(v112 + 32);
    v143 = *(v112 + 40);
    if ((sub_1B0D3CF18(v49, *v112) & 1) == 0 || (v50 | (v50 << 32)) != (v114 | (v114 << 32)) || (sub_1B04520BC(v48, v113) & 1) == 0 || v51 != v115 || (sub_1B0D3A070(v53, v116) & 1) == 0 || (sub_1B0D3A338(v52, v143) & 1) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_86;
  }

  if (v7 <= 7)
  {
    if (v7 != 5)
    {
      if (v7 == 6)
      {
        v8 = *sub_1B0504D1C(v156);
        v9 = a2[3];
        v149 = a2[2];
        v150 = v9;
        v10 = a2[1];
        v147 = *a2;
        v148 = v10;
        v11 = a2[8];
        v154 = a2[7];
        v155 = v11;
        v12 = a2[6];
        v152 = a2[5];
        v153 = v12;
        v151 = a2[4];
        if (sub_1B0D0CD9C(&v147) != 6)
        {
          goto LABEL_87;
        }

        goto LABEL_60;
      }

      v8 = *sub_1B0504D1C(v156);
      v117 = a2[3];
      v149 = a2[2];
      v150 = v117;
      v118 = a2[1];
      v147 = *a2;
      v148 = v118;
      v119 = a2[8];
      v154 = a2[7];
      v155 = v119;
      v120 = a2[6];
      v152 = a2[5];
      v153 = v120;
      v151 = a2[4];
      if (sub_1B0D0CD9C(&v147) == 7)
      {
LABEL_60:
        v46 = v8 == *sub_1B0504D1C(&v147);
        return v46 & 1;
      }

      goto LABEL_87;
    }

    v58 = sub_1B0504D1C(v156);
    v59 = *v58;
    v60 = *(v58 + 8);
    v61 = *(v58 + 92);
    v62 = *(v58 + 124);
    *&v146[96] = *(v58 + 108);
    *&v146[112] = v62;
    *&v146[128] = *(v58 + 140);
    v63 = *(v58 + 28);
    v64 = *(v58 + 60);
    *&v146[32] = *(v58 + 44);
    *&v146[48] = v64;
    *&v146[64] = *(v58 + 76);
    *&v146[80] = v61;
    *v146 = *(v58 + 12);
    *&v146[16] = v63;
    v65 = a2[8];
    v154 = a2[7];
    v155 = v65;
    v66 = a2[6];
    v152 = a2[5];
    v153 = v66;
    v67 = a2[4];
    v150 = a2[3];
    v151 = v67;
    v68 = a2[2];
    v148 = a2[1];
    v149 = v68;
    v147 = *a2;
    if (sub_1B0D0CD9C(&v147) != 5)
    {
      goto LABEL_87;
    }

    v69 = sub_1B0504D1C(&v147);
    v70 = *v69;
    v71 = *(v69 + 8);
    v72 = *(v69 + 92);
    v73 = *(v69 + 124);
    *&v145[96] = *(v69 + 108);
    *&v145[112] = v73;
    *&v145[128] = *(v69 + 140);
    v74 = *(v69 + 28);
    v75 = *(v69 + 60);
    *&v145[32] = *(v69 + 44);
    *&v145[48] = v75;
    *&v145[64] = *(v69 + 76);
    *&v145[80] = v72;
    *v145 = *(v69 + 12);
    *&v145[16] = v74;
    if ((v60 | (v60 << 32)) != (v71 | (v71 << 32)) || (sub_1B04520BC(v59, v70) & 1) == 0)
    {
      goto LABEL_87;
    }

    v157[4] = *&v146[68];
    v157[5] = *&v146[84];
    v157[6] = *&v146[100];
    v157[7] = *&v146[116];
    v157[0] = *&v146[4];
    v157[1] = *&v146[20];
    v157[2] = *&v146[36];
    v157[3] = *&v146[52];
    v158[2] = *&v145[36];
    v158[3] = *&v145[52];
    v158[0] = *&v145[4];
    v158[1] = *&v145[20];
    v158[6] = *&v145[100];
    v158[7] = *&v145[116];
    v158[4] = *&v145[68];
    v158[5] = *&v145[84];
    v46 = _s12NIOIMAPCore213MailboxStatusV23__derived_struct_equalsySbAC_ACtFZ_0(v157, v158);
    return v46 & 1;
  }

  if (v7 == 8)
  {
    v76 = sub_1B0504D1C(v156);
    v78 = *v76;
    v77 = v76[1];
    v79 = v76[2];
    v80 = a2[7];
    v153 = a2[6];
    v154 = v80;
    v155 = a2[8];
    v81 = a2[1];
    v147 = *a2;
    v148 = v81;
    v82 = a2[3];
    v149 = a2[2];
    v150 = v82;
    v83 = a2[5];
    v151 = a2[4];
    v152 = v83;
    if (sub_1B0D0CD9C(&v147) != 8)
    {
      goto LABEL_87;
    }

    v84 = sub_1B0504D1C(&v147);
    v85 = v84[1];
    v86 = v84[2];
    if ((sub_1B0D38730(v78, *v84) & 1) == 0 || (sub_1B0D38730(v77, v85) & 1) == 0 || (sub_1B0D38730(v79, v86) & 1) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_86;
  }

  if (v7 != 9)
  {
    v121 = sub_1B0504D1C(v156);
    v122 = *v121;
    v123 = *(v121 + 8);
    v124 = *(v121 + 16);
    v126 = *(v121 + 24);
    v125 = *(v121 + 28);
    v127 = *(v121 + 32);
    v128 = *(v121 + 40);
    v129 = a2[7];
    v153 = a2[6];
    v154 = v129;
    v155 = a2[8];
    v130 = a2[3];
    v149 = a2[2];
    v150 = v130;
    v131 = a2[5];
    v151 = a2[4];
    v152 = v131;
    v132 = a2[1];
    v147 = *a2;
    v148 = v132;
    if (sub_1B0D0CD9C(&v147) != 10)
    {
      goto LABEL_87;
    }

    v133 = sub_1B0504D1C(&v147);
    v134 = *(v133 + 16);
    v135 = *(v133 + 24);
    v141 = *(v133 + 28);
    v136 = *(v133 + 32);
    v144 = *(v133 + 40);
    if ((v122 != *v133 || v123 != *(v133 + 8)) && (sub_1B0E46A78() & 1) == 0)
    {
      goto LABEL_87;
    }

    if (v124)
    {
      if (!v134 || (v126 | (v126 << 32)) != (v135 | (v135 << 32)) || (_s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(v124, v134) & 1) == 0)
      {
        goto LABEL_87;
      }
    }

    else if (v134)
    {
      goto LABEL_87;
    }

    if (v127)
    {
      if ((v136 & 1) == 0)
      {
        goto LABEL_87;
      }
    }

    else if ((v136 & 1) != 0 || v125 != v141)
    {
      goto LABEL_87;
    }

    if ((sub_1B03D37DC(v128, v144) & 1) == 0)
    {
LABEL_87:
      v46 = 0;
      return v46 & 1;
    }

    goto LABEL_86;
  }

  v28 = sub_1B0504D1C(v156);
  v30 = *v28;
  v29 = v28[1];
  v31 = a2[7];
  v153 = a2[6];
  v154 = v31;
  v155 = a2[8];
  v32 = a2[3];
  v149 = a2[2];
  v150 = v32;
  v33 = a2[5];
  v151 = a2[4];
  v152 = v33;
  v34 = a2[1];
  v147 = *a2;
  v148 = v34;
  if (sub_1B0D0CD9C(&v147) != 9)
  {
    goto LABEL_87;
  }

  result = sub_1B0504D1C(&v147);
  v35 = *result;
  v36 = *(v30 + 16);
  if (v36 != *(*result + 16))
  {
    goto LABEL_87;
  }

  v37 = *(result + 8);
  if (v36 && v30 != v35)
  {
    v38 = (v30 + 32);
    v39 = (v35 + 32);
    while (*v38 == *v39)
    {
      ++v38;
      ++v39;
      if (!--v36)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_87;
  }

LABEL_29:
  if (((v37 | v29) & 0x8000000000000000) == 0)
  {
    if (v37 != v29)
    {
      goto LABEL_87;
    }

    goto LABEL_86;
  }

  __break(1u);
LABEL_90:
  __break(1u);
  return result;
}

unint64_t sub_1B0DD34F4()
{
  result = qword_1EB6E7770;
  if (!qword_1EB6E7770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7770);
  }

  return result;
}

unint64_t sub_1B0DD354C()
{
  result = qword_1EB6E7778;
  if (!qword_1EB6E7778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7778);
  }

  return result;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_1B0DD35D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 48) >> 1) & 0x7FFFFFFF | ((*(a1 + 56) >> 1) << 31);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1B0DD3634(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 136) = 0;
    result = 0.0;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 144) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = (-2 * a2);
      *(a1 + 56) = 2;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0u;
      *(a1 + 128) = 0u;
      return result;
    }

    *(a1 + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

int8x16_t sub_1B0DD36B8(int8x16_t *a1, uint64_t a2)
{
  v2 = a1[4].i64[1] & 1;
  v3 = a1[5].i64[1] & 1;
  v4 = a1[6].i64[1] & 1;
  v5 = a1[7].i64[1] & 1 | (a2 << 60);
  result = vandq_s8(a1[3], xmmword_1B0ED0F80);
  a1[3] = result;
  a1[4].i64[1] = v2;
  a1[5].i64[1] = v3;
  a1[6].i64[1] = v4;
  a1[7].i64[1] = v5;
  return result;
}

uint64_t sub_1B0DD3724@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1B0E2414C(*a1, *a2, *(a2 + 8), *(v3 + 16), *(v3 + 24), *(v3 + 32), **(v3 + 40), *(v3 + 48), *(v3 + 56));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

NIOIMAPCore2::Mailboxes_optional __swiftcall Mailboxes.init(_:)(Swift::OpaquePointer a1)
{
  if (!*(a1._rawValue + 2))
  {

    a1._rawValue = 0;
  }

  result.value.content = a1;
  result.is_nil = v1;
  return result;
}

uint64_t Mailboxes.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1B2728D70](v3);
  if (v3)
  {
    v5 = (a2 + 40);
    do
    {
      v6 = *v5;
      v5 += 4;
      result = MEMORY[0x1B2728D70](v6 | (v6 << 32));
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t Mailboxes.hashValue.getter(uint64_t a1)
{
  sub_1B0E46C28();
  v2 = *(a1 + 16);
  MEMORY[0x1B2728D70](v2);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v4 = *v3;
      v3 += 4;
      MEMORY[0x1B2728D70](v4 | (v4 << 32));
      --v2;
    }

    while (v2);
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0DD38AC()
{
  v1 = *v0;
  sub_1B0E46C28();
  Mailboxes.hash(into:)(v3, v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DD38FC(uint64_t a1)
{
  v2 = v1;
  v32 = a1;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *(v1 + 20);
    result = sub_1B0CFC1B0(0, 0xE000000000000000, (v1 + 8), *(v1 + 20));
    if (v7)
    {
      v8._countAndFlagsBits = 0;
      v8._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v8, v5);
    }

    v9 = result;
    v10 = *(v1 + 20);
    v11 = __CFADD__(v10, result);
    v12 = v10 + result;
    if (v11)
    {
      goto LABEL_29;
    }

    *(v1 + 20) = v12;
  }

  else
  {
    v9 = 0;
    v12 = *(v1 + 20);
  }

  v13 = v12;
  result = sub_1B0CFC1B0(40, 0xE100000000000000, (v1 + 8), v12);
  if (v14)
  {
    v15._countAndFlagsBits = 40;
    v15._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v13);
  }

  v16 = *(v1 + 20);
  v11 = __CFADD__(v16, result);
  v17 = v16 + result;
  if (v11)
  {
    goto LABEL_24;
  }

  *(v1 + 20) = v17;
  v18 = v9 + result;
  if (__OFADD__(v9, result))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  MEMORY[0x1EEE9AC00](result);
  v31[2] = sub_1B0DD3B1C;
  v31[3] = 0;
  v31[4] = v2;
  v31[5] = &v32;
  v31[6] = 32;
  v31[7] = 0xE100000000000000;
  result = sub_1B0DE6C8C(0, sub_1B0DD3C10, v31, a1);
  v19 = v18 + result;
  if (__OFADD__(v18, result))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v20 = *(v2 + 20);
  result = sub_1B0CFC1B0(41, 0xE100000000000000, (v2 + 8), *(v2 + 20));
  if (v21)
  {
    v22._countAndFlagsBits = 41;
    v22._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v22, v20);
  }

  v23 = *(v2 + 20);
  v24 = (v23 + result);
  if (__CFADD__(v23, result))
  {
    goto LABEL_27;
  }

  *(v2 + 20) = v24;
  v25 = __OFADD__(v19, result);
  v26 = v19 + result;
  if (v25)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return result;
  }

  if (!v4)
  {
    return v26;
  }

  result = sub_1B0CFC1B0(0, 0xE000000000000000, (v2 + 8), v24);
  if (v27)
  {
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v28, v24);
  }

  v29 = *(v2 + 20);
  v11 = __CFADD__(v29, result);
  v30 = v29 + result;
  if (v11)
  {
    goto LABEL_30;
  }

  *(v2 + 20) = v30;
  v25 = __OFADD__(v26, result);
  result += v26;
  if (v25)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  return result;
}

unint64_t sub_1B0DD3B48()
{
  result = qword_1EB6E7780;
  if (!qword_1EB6E7780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7780);
  }

  return result;
}

uint64_t sub_1B0DD3BAC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>)
{
  result = sub_1B0E23E14(*a1, *a2, *(a2 + 8), *(a2 + 16), a3, a4, a5, *a6, a7, a8);
  if (!v9)
  {
    *a9 = result;
  }

  return result;
}

uint64_t sub_1B0DD3C34(uint64_t a1, unsigned __int8 a2)
{
  v4 = a2;
  if (a2 <= 1u)
  {
    if (a2)
    {
      goto LABEL_16;
    }

    v5 = *(v2 + 5);
    result = sub_1B0CFC1B0(0x2065657274627573, 0xE800000000000000, v2 + 1, *(v2 + 5));
    if (v7)
    {
      v8._countAndFlagsBits = 0x2065657274627573;
      v8._object = 0xE800000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v8, v5);
    }

    v9 = result;
    v10 = *(v2 + 5);
    v11 = __CFADD__(v10, result);
    v12 = v10 + result;
    if (v11)
    {
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    *(v2 + 5) = v12;
    v13 = sub_1B0DD38FC(a1);
    v14 = __OFADD__(v9, v13);
    result = v9 + v13;
    if (!v14)
    {
      return result;
    }

    __break(1u);
  }

  if (v4 != 2)
  {
    goto LABEL_22;
  }

  v15 = *(v2 + 5);
  result = sub_1B0CFC1B0(0x2D65657274627573, 0xEC00000020656E6FLL, v2 + 1, *(v2 + 5));
  if (v16)
  {
    v17._countAndFlagsBits = 0x2D65657274627573;
    v17._object = 0xEC00000020656E6FLL;
    result = ByteBuffer._setStringSlowpath(_:at:)(v17, v15);
  }

  v18 = result;
  v19 = *(v2 + 5);
  v11 = __CFADD__(v19, result);
  v20 = v19 + result;
  if (v11)
  {
    goto LABEL_51;
  }

  *(v2 + 5) = v20;
  v21 = sub_1B0DD38FC(a1);
  v14 = __OFADD__(v18, v21);
  result = v18 + v21;
  if (!v14)
  {
    return result;
  }

  __break(1u);
LABEL_16:
  v22 = *(v2 + 5);
  result = sub_1B0CFC1B0(0x65786F626C69616DLL, 0xEA00000000002073, v2 + 1, *(v2 + 5));
  if (v23)
  {
    v24._countAndFlagsBits = 0x65786F626C69616DLL;
    v24._object = 0xEA00000000002073;
    result = ByteBuffer._setStringSlowpath(_:at:)(v24, v22);
  }

  v25 = result;
  v26 = *(v2 + 5);
  v11 = __CFADD__(v26, result);
  v27 = v26 + result;
  if (v11)
  {
    goto LABEL_52;
  }

  *(v2 + 5) = v27;
  v28 = sub_1B0DD38FC(a1);
  v14 = __OFADD__(v25, v28);
  result = v25 + v28;
  if (v14)
  {
    __break(1u);
LABEL_22:
    if (a1 > 1)
    {
      if (a1 == 2)
      {
LABEL_36:
        v39 = *(v2 + 5);
        v2 = (v2 + 20);
        v38 = v39;
        result = sub_1B0CFC1B0(0x6269726373627573, 0xEA00000000006465, (v2 - 12), v39);
        if (v40)
        {
          v41._countAndFlagsBits = 0x6269726373627573;
          v41._object = 0xEA00000000006465;
          result = ByteBuffer._setStringSlowpath(_:at:)(v41, v38);
        }

        v33 = *v2 + result;
        if (!__CFADD__(*v2, result))
        {
          goto LABEL_49;
        }

        __break(1u);
        goto LABEL_41;
      }

      if (a1 != 3)
      {
LABEL_41:
        v43 = *(v2 + 5);
        v2 = (v2 + 20);
        v42 = v43;
        result = sub_1B0CFC1B0(0xD000000000000010, 0x80000001B0F303E0, (v2 - 12), v43);
        if (v44)
        {
          v45._object = 0x80000001B0F303E0;
          v45._countAndFlagsBits = 0xD000000000000010;
          result = ByteBuffer._setStringSlowpath(_:at:)(v45, v42);
        }

        v33 = *v2 + result;
        if (!__CFADD__(*v2, result))
        {
          goto LABEL_49;
        }

        __break(1u);
LABEL_46:
        v47 = *(v2 + 5);
        v2 = (v2 + 20);
        v46 = v47;
        result = sub_1B0CFC1B0(0x6C616E6F73726570, 0xE800000000000000, (v2 - 12), v47);
        if (v48)
        {
          v49._countAndFlagsBits = 0x6C616E6F73726570;
          v49._object = 0xE800000000000000;
          result = ByteBuffer._setStringSlowpath(_:at:)(v49, v46);
        }

        v33 = *v2 + result;
        if (!__CFADD__(*v2, result))
        {
LABEL_49:
          *v2 = v33;
          return result;
        }

LABEL_53:
        __break(1u);
        return result;
      }

      v29 = *(v2 + 5);
      v2 = (v2 + 20);
      a1 = v29;
      result = sub_1B0CFC1B0(0x64657463656C6573, 0xE800000000000000, (v2 - 12), v29);
      if (v30)
      {
        v31._countAndFlagsBits = 0x64657463656C6573;
        v31._object = 0xE800000000000000;
        v32 = a1;
        a1 = v2;
        result = ByteBuffer._setStringSlowpath(_:at:)(v31, v32);
      }

      v33 = *v2 + result;
      if (!__CFADD__(*v2, result))
      {
        goto LABEL_49;
      }

      __break(1u);
    }

    if (a1)
    {
      goto LABEL_46;
    }

    v35 = *(v2 + 5);
    v2 = (v2 + 20);
    v34 = v35;
    result = sub_1B0CFC1B0(0x7365786F626E69, 0xE700000000000000, (v2 - 12), v35);
    if (v36)
    {
      v37._countAndFlagsBits = 0x7365786F626E69;
      v37._object = 0xE700000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v37, v34);
    }

    v33 = *v2 + result;
    if (!__CFADD__(*v2, result))
    {
      goto LABEL_49;
    }

    __break(1u);
    goto LABEL_36;
  }

  return result;
}

uint64_t MailboxFilter.hash(into:)(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      MEMORY[0x1B2728D70](7);
      v8 = *(a2 + 16);
      result = MEMORY[0x1B2728D70](v8);
      if (v8)
      {
        v9 = (a2 + 40);
        do
        {
          v10 = *v9;
          v9 += 4;
          result = MEMORY[0x1B2728D70](v10 | (v10 << 32));
          --v8;
        }

        while (v8);
      }
    }

    else
    {
      return MEMORY[0x1B2728D70](qword_1B0EF6DC8[a2]);
    }
  }

  else if (a3)
  {
    MEMORY[0x1B2728D70](4);
    v11 = *(a2 + 16);
    result = MEMORY[0x1B2728D70](v11);
    if (v11)
    {
      v12 = (a2 + 40);
      do
      {
        v13 = *v12;
        v12 += 4;
        result = MEMORY[0x1B2728D70](v13 | (v13 << 32));
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    MEMORY[0x1B2728D70](3);
    v4 = *(a2 + 16);
    result = MEMORY[0x1B2728D70](v4);
    if (v4)
    {
      v6 = (a2 + 40);
      do
      {
        v7 = *v6;
        v6 += 4;
        result = MEMORY[0x1B2728D70](v7 | (v7 << 32));
        --v4;
      }

      while (v4);
    }
  }

  return result;
}

uint64_t MailboxFilter.hashValue.getter(uint64_t a1, unsigned __int8 a2)
{
  sub_1B0E46C28();
  MailboxFilter.hash(into:)(v5, a1, a2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DD4150()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1B0E46C28();
  MailboxFilter.hash(into:)(v4, v1, v2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DD41AC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1B0E46C28();
  MailboxFilter.hash(into:)(v4, v1, v2);
  return sub_1B0E46CB8();
}

uint64_t _s12NIOIMAPCore213MailboxFilterO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, unsigned __int8 a2, uint64_t a3, char a4)
{
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      if (a4 == 2)
      {
        v4 = a3;
        return _s12NIOIMAPCore29MailboxesV23__derived_struct_equalsySbAC_ACtFZ_0(a1, v4);
      }
    }

    else if (a1 <= 1)
    {
      if (a1)
      {
        if (a4 == 3 && a3 == 1)
        {
          return 1;
        }
      }

      else if (a4 == 3 && !a3)
      {
        return 1;
      }
    }

    else if (a1 == 2)
    {
      if (a4 == 3 && a3 == 2)
      {
        return 1;
      }
    }

    else if (a1 == 3)
    {
      if (a4 == 3 && a3 == 3)
      {
        return 1;
      }
    }

    else if (a4 == 3 && a3 == 4)
    {
      return 1;
    }
  }

  else if (a2)
  {
    if (a4 == 1)
    {
LABEL_10:
      v4 = a3;
      return _s12NIOIMAPCore29MailboxesV23__derived_struct_equalsySbAC_ACtFZ_0(a1, v4);
    }
  }

  else if (!a4)
  {
    goto LABEL_10;
  }

  return 0;
}

unint64_t sub_1B0DD42F8()
{
  result = qword_1EB6E7788;
  if (!qword_1EB6E7788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7788);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12NIOIMAPCore213MailboxFilterO(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_1B0DD4368(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B0DD43B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B0DD43F4(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

double EmailAddressGroup.init(groupName:sourceRoot:children:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *&v12 = a1;
  *(&v12 + 1) = a2;
  LODWORD(v13) = a3;
  WORD2(v13) = WORD2(a3);
  BYTE6(v13) = BYTE6(a3);
  *(&v13 + 1) = a4;
  *&v14 = a5;
  DWORD2(v14) = a6;
  BYTE14(v14) = BYTE6(a6);
  WORD6(v14) = WORD2(a6);
  v15 = a7;
  v16[0] = a1;
  v16[1] = a2;
  v17 = a3;
  v18 = WORD2(a3);
  v19 = BYTE6(a3);
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v24 = BYTE6(a6);
  v23 = WORD2(a6);
  v25 = a7;
  sub_1B0D3C9B8(&v12, v11);
  sub_1B0D3CA14(v16);
  v9 = v13;
  *a8 = v12;
  *(a8 + 16) = v9;
  result = *&v14;
  *(a8 + 32) = v14;
  *(a8 + 48) = v15;
  return result;
}

uint64_t EmailAddressGroup.groupName.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4) | (*(v0 + 10) << 32) | (*(v0 + 22) << 48);
}

uint64_t EmailAddressGroup.groupName.setter(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = a3;
  v5 = a2;
  v7 = HIDWORD(a2);
  v8 = HIDWORD(a3);
  v9 = HIWORD(a3);
  v10 = *v3;

  *v3 = a1;
  *(v3 + 2) = v5;
  *(v3 + 3) = v7;
  *(v3 + 4) = v4;
  *(v3 + 10) = v8;
  *(v3 + 22) = v9;
  return result;
}

uint64_t EmailAddressGroup.sourceRoot.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40) | ((*(v0 + 44) | (*(v0 + 46) << 16)) << 32);
}

uint64_t EmailAddressGroup.sourceRoot.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 24);

  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 46) = BYTE6(a3);
  *(v3 + 44) = WORD2(a3);
  *(v3 + 40) = a3;
  return result;
}

uint64_t EmailAddressGroup.children.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t EmailAddressGroup.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 2);
  v6 = *(v2 + 3);
  v7 = *(v2 + 10);
  v8 = *(v2 + 22);
  swift_beginAccess();
  v9 = *(v4 + 24) + (v8 | (v7 << 8));
  sub_1B0E46C38();
  v10 = v2[3];
  if (v10)
  {
    v11 = *(v2 + 46);
    v12 = *(v2 + 22);
    v13 = v2[4];
    sub_1B0E46C68();
    swift_beginAccess();
    v14 = *(v10 + 24) + (v11 | (v12 << 8));
    sub_1B0E46C38();
  }

  else
  {
    sub_1B0E46C68();
  }

  return sub_1B0D448C4(a1, v2[6]);
}

uint64_t EmailAddressGroup.hashValue.getter()
{
  sub_1B0E46C28();
  EmailAddressGroup.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DD47C4()
{
  sub_1B0E46C28();
  EmailAddressGroup.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DD4808()
{
  sub_1B0E46C28();
  EmailAddressGroup.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DD4844(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s12NIOIMAPCore217EmailAddressGroupV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v7) & 1;
}

uint64_t EmailAddressListElement.hash(into:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    v4 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v6 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v5 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x1C);
    v7 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x24);
    v8 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x26);
    v9 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x28);
    v15 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x3E);
    v10 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x3C);
    v16 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x38);
    v17 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x30);
    v11 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x40);
    MEMORY[0x1B2728D70](1);
    swift_beginAccess();
    v12 = *(v4 + 24) + (v8 | (v7 << 8));
    sub_1B0E46C38();
    if (v9)
    {
      v13 = v16 | ((v10 | (v15 << 16)) << 32);
      sub_1B0E46C68();
      swift_beginAccess();
      v14 = *(v9 + 24) + ((v13 >> 24) & 0xFFFF00 | BYTE6(v13));
      sub_1B0E46C38();
    }

    else
    {
      sub_1B0E46C68();
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0D448C4(a1, v11);
  }

  else
  {
    v20 = *(a2 + 48);
    v21 = *(a2 + 64);
    *v22 = *(a2 + 80);
    *&v22[15] = *(a2 + 95);
    v18 = *(a2 + 16);
    v19 = *(a2 + 32);
    MEMORY[0x1B2728D70](0);
    return EmailAddress.hash(into:)();
  }
}

uint64_t EmailAddressListElement.hashValue.getter(unint64_t a1)
{
  sub_1B0E46C28();
  EmailAddressListElement.hash(into:)(v3, a1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DD4A80()
{
  v1 = *v0;
  sub_1B0E46C28();
  EmailAddressListElement.hash(into:)(v3, v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DD4AD0()
{
  v1 = *v0;
  sub_1B0E46C28();
  EmailAddressListElement.hash(into:)(v3, v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DD4B20(uint64_t *a1)
{
  v2 = v1;
  *v38 = *(a1 + 3);
  *&v32[1] = *(a1 + 3);
  v46 = *v32;
  *&v38[15] = *(a1 + 39);
  v4 = *(a1 + 4);
  v5 = *(a1 + 22);
  v6 = (v5 << 48) | (*(a1 + 10) << 32);
  *&v32[16] = *(a1 + 39);
  v47 = *&v32[16];
  v8 = *a1;
  v7 = a1[1];
  memset(v45, 0, sizeof(v45));
  v48 = v8;
  v49 = v7;
  v52 = v5;
  v51 = WORD2(v6);
  v50 = v4;
  v53 = 0;
  v54[0] = 0;
  *(v54 + 7) = 0;
  memset(v55, 0, sizeof(v55));
  v57 = *&v32[16];
  v56 = *v32;
  v58 = v8;
  v59 = v7;
  v62 = v5;
  v61 = WORD2(v6);
  v60 = v4;
  v63 = 0;
  v64[0] = 0;
  *(v64 + 7) = 0;
  sub_1B0DD5290(v38, v39);
  sub_1B0DD5290(v38, v39);

  sub_1B0D3CA68(v45, v39);
  sub_1B0D3CAC4(v55);
  v9 = sub_1B0D7BF30(v45);
  result = sub_1B0D3CAC4(v45);
  v11 = a1[6];
  v37 = v11;
  v12 = v11[2];
  if (v12)
  {
    v13 = *(v2 + 20);
    result = sub_1B0CFC1B0(0, 0xE000000000000000, (v2 + 8), *(v2 + 20));
    if (v14)
    {
      v15._countAndFlagsBits = 0;
      v15._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v15, v13);
    }

    v16 = result;
    v17 = *(v2 + 20);
    v18 = __CFADD__(v17, result);
    v19 = v17 + result;
    if (v18)
    {
      goto LABEL_21;
    }

    *(v2 + 20) = v19;
  }

  else
  {
    v16 = 0;
  }

  MEMORY[0x1EEE9AC00](result);
  v29[2] = sub_1B0D811AC;
  v29[3] = 0;
  v29[4] = v2;
  v29[5] = &v37;
  v29[6] = 0;
  v29[7] = 0xE000000000000000;
  result = sub_1B0DE5CC4(0, sub_1B0DD5300, v29, v11);
  v20 = v16 + result;
  if (__OFADD__(v16, result))
  {
    goto LABEL_18;
  }

  if (!v12)
  {
    result = 0;
    v26 = v20;
    goto LABEL_13;
  }

  v21 = *(v2 + 20);
  result = sub_1B0CFC1B0(0, 0xE000000000000000, (v2 + 8), *(v2 + 20));
  if (v22)
  {
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v23, v21);
  }

  v24 = *(v2 + 20);
  v18 = __CFADD__(v24, result);
  v25 = v24 + result;
  if (v18)
  {
    goto LABEL_22;
  }

  *(v2 + 20) = v25;
  v26 = v20 + result;
  if (__OFADD__(v20, result))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  v27 = v9 + v26;
  if (__OFADD__(v9, v26))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  *&v31[1] = *v38;
  v40 = *v31;
  *&v31[16] = *&v38[15];
  memset(v32, 0, 23);
  v41 = *&v38[15];
  memset(v39, 0, sizeof(v39));
  v42 = 0;
  v43[0] = 0;
  *(v43 + 7) = 0;
  v43[2] = 0;
  v44[0] = 0;
  *(v44 + 7) = 0;
  v33 = *&v38[15];
  *&v32[23] = *v31;
  v34 = 0;
  v35[0] = 0;
  *(v35 + 7) = 0;
  v35[2] = 0;
  v36[0] = 0;
  *(v36 + 7) = 0;
  sub_1B0D3CA68(v39, &v30);
  sub_1B0D3CAC4(v32);
  v28 = sub_1B0D7BF30(v39);
  sub_1B0D3CAC4(v39);
  result = v27 + v28;
  if (__OFADD__(v27, v28))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  return result;
}

uint64_t _s12NIOIMAPCore217EmailAddressGroupV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (!sub_1B0C2DB54(*a1, *(a1 + 8), *(a1 + 16) | (*(a1 + 20) << 32) | (*(a1 + 22) << 48), *a2, *(a2 + 8), *(a2 + 16) | (*(a2 + 20) << 32) | (*(a2 + 22) << 48)))
  {
    return 0;
  }

  v4 = *(a2 + 24);
  if (!*(a1 + 24))
  {
    if (!v4)
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (!v4)
  {
    return 0;
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 40) | ((*(a1 + 44) | (*(a1 + 46) << 16)) << 32);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40) | ((*(a2 + 44) | (*(a2 + 46) << 16)) << 32);
  v9 = *(a2 + 24);

  LOBYTE(v5) = sub_1B0C2DB54(v10, v5, v6 & 0xFFFFFFFFFFFFFFLL, v4, v7, v8 & 0xFFFFFFFFFFFFFFLL);

  if ((v5 & 1) == 0)
  {
    return 0;
  }

LABEL_5:
  v11 = *(a1 + 48);
  v12 = *(a2 + 48);

  return sub_1B0D319FC(v11, v12);
}

uint64_t _s12NIOIMAPCore223EmailAddressListElementO21__derived_enum_equalsySbAC_ACtFZ_0(unint64_t a1, unint64_t a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    v7 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    v11 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v12 = v7;
    v13 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x30);
    *&v14 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x40);
    if ((a2 & 0x8000000000000000) != 0)
    {
      v8 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
      v16 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
      v17 = v8;
      v18 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x30);
      *&v19 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x40);
      sub_1B0D3C9B8(&v16, v10);
      v6 = _s12NIOIMAPCore217EmailAddressGroupV23__derived_struct_equalsySbAC_ACtFZ_0(&v11, &v16);
      sub_1B0D3CA14(&v16);
      return v6 & 1;
    }

    goto LABEL_5;
  }

  v2 = *(a1 + 64);
  v13 = *(a1 + 48);
  v14 = v2;
  v15[0] = *(a1 + 80);
  *(v15 + 15) = *(a1 + 95);
  v3 = *(a1 + 32);
  v11 = *(a1 + 16);
  v12 = v3;
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_5:
    v6 = 0;
    return v6 & 1;
  }

  v4 = *(a2 + 64);
  v18 = *(a2 + 48);
  v19 = v4;
  v20[0] = *(a2 + 80);
  *(v20 + 15) = *(a2 + 95);
  v5 = *(a2 + 32);
  v16 = *(a2 + 16);
  v17 = v5;
  sub_1B0D3CA68(&v16, v10);
  v6 = _s12NIOIMAPCore212EmailAddressV23__derived_struct_equalsySbAC_ACtFZ_0(&v11, &v16);
  sub_1B0D3CAC4(&v16);
  return v6 & 1;
}

unint64_t sub_1B0DD5078()
{
  result = qword_1EB6E7790;
  if (!qword_1EB6E7790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7790);
  }

  return result;
}

unint64_t sub_1B0DD50D0()
{
  result = qword_1EB6E7798;
  if (!qword_1EB6E7798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7798);
  }

  return result;
}

uint64_t sub_1B0DD5124(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0DD516C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0DD51D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B0DD5230(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1B0DD5290(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6588, &qword_1B0EE80E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

NIOIMAPCore2::MailboxID_optional __swiftcall MailboxID.init(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = sub_1B0E44CF8();
  if (v3 <= 0 || v3 >= 0x100 || (sub_1B0D7C750(countAndFlagsBits, object) & 1) == 0)
  {

    countAndFlagsBits = 0;
    object = 0;
  }

  v5 = countAndFlagsBits;
  v6 = object;
  result.value.objectID.rawValue._object = v6;
  result.value.objectID.rawValue._countAndFlagsBits = v5;
  result.is_nil = v4;
  return result;
}

uint64_t static MailboxID.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1B0E46A78();
  }
}

uint64_t MailboxID.hashValue.getter()
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1B0E46CB8();
}

NIOIMAPCore2::MailboxID __swiftcall MailboxID.init(stringLiteral:)(Swift::String stringLiteral)
{
  object = stringLiteral._object;
  countAndFlagsBits = stringLiteral._countAndFlagsBits;
  if (sub_1B0E44CF8() - 256) >= 0xFFFFFFFFFFFFFF01 && (sub_1B0D7C750(countAndFlagsBits, object))
  {
    v3 = countAndFlagsBits;
    v4 = object;
  }

  else
  {

    __break(1u);
  }

  result.objectID.rawValue._object = v4;
  result.objectID.rawValue._countAndFlagsBits = v3;
  return result;
}

uint64_t MailboxID.debugDescription.getter()
{
  MEMORY[0x1B2726E80]();
  MEMORY[0x1B2726E80](41, 0xE100000000000000);
  return 40;
}

unint64_t sub_1B0DD54CC()
{
  result = qword_1EB6E77A0;
  if (!qword_1EB6E77A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E77A0);
  }

  return result;
}

unint64_t sub_1B0DD5524()
{
  result = qword_1EB6E77A8;
  if (!qword_1EB6E77A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E77A8);
  }

  return result;
}

unint64_t sub_1B0DD557C()
{
  result = qword_1EB6E77B0;
  if (!qword_1EB6E77B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E77B0);
  }

  return result;
}

unint64_t sub_1B0DD55E0(unint64_t a1, unint64_t a2)
{
  if (*v2 == 1)
  {

    return sub_1B0DD6040(a1, a2);
  }

  v34 = *v2;
  v35 = v2[2];
  v36 = *(v2 + 6);
  v6 = HIDWORD(*(v2 + 2));
  v7 = sub_1B0DD6A7C(a1, a2);
  if (v7 <= 1)
  {
    if (!v7)
    {

      return sub_1B0DD6FF4(a1, a2);
    }

LABEL_21:
    if ((a2 & 0x1000000000000000) == 0)
    {
LABEL_22:
      v17 = sub_1B0E469C8();
      MEMORY[0x1B2726E80](v17);

      MEMORY[0x1B2726E80](658813, 0xE300000000000000);
      v18 = sub_1B0CFC1B0(123, 0xE100000000000000, v2 + 1, v6);
      if (v19)
      {
        v20._countAndFlagsBits = 123;
        v20._object = 0xE100000000000000;
        v18 = ByteBuffer._setStringSlowpath(_:at:)(v20, v6);
      }

      v21 = v18;

      v22 = *(v2 + 5);
      v23 = __CFADD__(v22, v21);
      v24 = v22 + v21;
      if (v23)
      {
        __break(1u);
LABEL_37:
        sub_1B0E44DC8();
LABEL_29:
        v26 = sub_1B0E469C8();
        MEMORY[0x1B2726E80](v26);

        MEMORY[0x1B2726E80](168656171, 0xE400000000000000);
        v27 = sub_1B0CFC1B0(123, 0xE100000000000000, v2 + 1, v6);
        if (v28)
        {
          v29._countAndFlagsBits = 123;
          v29._object = 0xE100000000000000;
          v27 = ByteBuffer._setStringSlowpath(_:at:)(v29, v6);
        }

        v30 = v27;

        v31 = *(v2 + 5);
        v23 = __CFADD__(v31, v30);
        v32 = v31 + v30;
        if (v23)
        {
          __break(1u);
        }

        else
        {
          *(v2 + 5) = v32;
          v33 = sub_1B0D790AC(a1, a2);
          v16 = __OFADD__(v30, v33);
          result = v30 + v33;
          if (!v16)
          {
            return result;
          }
        }

        __break(1u);
        return result;
      }

      *(v2 + 5) = v24;
      v25 = sub_1B0D790AC(a1, a2);
      v16 = __OFADD__(v21, v25);
      result = v21 + v25;
      if (!v16)
      {
        return result;
      }

      __break(1u);
LABEL_28:
      if ((a2 & 0x1000000000000000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_37;
    }

LABEL_35:
    sub_1B0E44DC8();
    goto LABEL_22;
  }

  if (v7 != 2)
  {
    goto LABEL_28;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    sub_1B0E44DC8();
  }

  v8 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v8);

  MEMORY[0x1B2726E80](658813, 0xE300000000000000);
  v9 = sub_1B0CFC1B0(123, 0xE100000000000000, v2 + 1, v6);
  if (v10)
  {
    v11._countAndFlagsBits = 123;
    v11._object = 0xE100000000000000;
    v9 = ByteBuffer._setStringSlowpath(_:at:)(v11, v6);
  }

  v12 = v9;

  v13 = *(v2 + 5);
  v14 = (v13 + v12);
  if (__CFADD__(v13, v12))
  {
    __break(1u);
    goto LABEL_35;
  }

  *(v2 + 5) = v14;
  if (((*(&v34 + 1) | (SBYTE5(v34) << 32)) & 0x8000000000000000) == 0)
  {
    sub_1B0D7D00C(v14);
  }

  v15 = sub_1B0D790AC(a1, a2);
  v16 = __OFADD__(v12, v15);
  result = v12 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_1B0DD59A4(uint64_t a1)
{
  if (*v1 == 1)
  {

    return sub_1B0DD63E8(a1);
  }

  v34 = *v1;
  v35 = v1[2];
  v36 = *(v1 + 6);
  v4 = HIDWORD(*(v1 + 2));
  v5 = sub_1B0DD6BCC(a1);
  if (v5 <= 1)
  {
    if (!v5)
    {

      return sub_1B0DD74D0(a1);
    }

LABEL_19:
    v32 = *(a1 + 16);
    v14 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v14);

    MEMORY[0x1B2726E80](658813, 0xE300000000000000);
    v15 = sub_1B0CFC1B0(123, 0xE100000000000000, v1 + 1, v4);
    if (v16)
    {
      v17._countAndFlagsBits = 123;
      v17._object = 0xE100000000000000;
      v15 = ByteBuffer._setStringSlowpath(_:at:)(v17, v4);
    }

    v18 = v15;

    v19 = *(v1 + 5);
    v20 = __CFADD__(v19, v18);
    v21 = v19 + v18;
    if (!v20)
    {
      *(v1 + 5) = v21;
      sub_1B0D791F8(a1);
      v13 = __OFADD__(v18, v22);
      result = v18 + v22;
      if (!v13)
      {
        return result;
      }

      __break(1u);
LABEL_25:
      v33 = *(a1 + 16);
      v23 = sub_1B0E469C8();
      MEMORY[0x1B2726E80](v23);

      MEMORY[0x1B2726E80](168656171, 0xE400000000000000);
      v24 = sub_1B0CFC1B0(123, 0xE100000000000000, v1 + 1, v4);
      if (v25)
      {
        v26._countAndFlagsBits = 123;
        v26._object = 0xE100000000000000;
        v24 = ByteBuffer._setStringSlowpath(_:at:)(v26, v4);
      }

      v27 = v24;

      v28 = *(v1 + 5);
      v20 = __CFADD__(v28, v27);
      v29 = v28 + v27;
      if (!v20)
      {
        *(v1 + 5) = v29;
        sub_1B0D791F8(a1);
        v13 = __OFADD__(v27, v30);
        result = v27 + v30;
        if (!v13)
        {
          return result;
        }

LABEL_33:
        __break(1u);
        return result;
      }

LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v5 != 2)
  {
    goto LABEL_25;
  }

  v31 = *(a1 + 16);
  v6 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v6);

  MEMORY[0x1B2726E80](658813, 0xE300000000000000);
  v7 = sub_1B0CFC1B0(123, 0xE100000000000000, v1 + 1, v4);
  if (v8)
  {
    v9._countAndFlagsBits = 123;
    v9._object = 0xE100000000000000;
    v7 = ByteBuffer._setStringSlowpath(_:at:)(v9, v4);
  }

  v10 = v7;

  v11 = *(v1 + 5);
  result = (v11 + v10);
  if (__CFADD__(v11, v10))
  {
    __break(1u);
    goto LABEL_31;
  }

  *(v1 + 5) = result;
  if (((*(&v34 + 1) | (SBYTE5(v34) << 32)) & 0x8000000000000000) == 0)
  {
    sub_1B0D7D00C(result);
  }

  sub_1B0D791F8(a1);
  v13 = __OFADD__(v10, v12);
  result = v10 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1B0DD5CEC(uint64_t *a1)
{
  if (*v1 == 1)
  {

    return sub_1B0DD672C(a1);
  }

  v34 = *v1;
  v35 = v1[2];
  v36 = *(v1 + 6);
  v4 = HIDWORD(*(v1 + 2));
  v5 = sub_1B0DD6F44(a1);
  if (v5 <= 1)
  {
    if (!v5)
    {

      return sub_1B0DD7858(a1);
    }

LABEL_19:
    v32 = a1[4] - a1[3];
    v14 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v14);

    MEMORY[0x1B2726E80](658813, 0xE300000000000000);
    v15 = sub_1B0CFC1B0(123, 0xE100000000000000, v1 + 1, v4);
    if (v16)
    {
      v17._countAndFlagsBits = 123;
      v17._object = 0xE100000000000000;
      v15 = ByteBuffer._setStringSlowpath(_:at:)(v17, v4);
    }

    v18 = v15;

    v19 = *(v1 + 5);
    v20 = __CFADD__(v19, v18);
    v21 = v19 + v18;
    if (!v20)
    {
      *(v1 + 5) = v21;
      sub_1B0D79300(a1);
      v13 = __OFADD__(v18, v22);
      result = v18 + v22;
      if (!v13)
      {
        return result;
      }

      __break(1u);
LABEL_25:
      v33 = a1[4] - a1[3];
      v23 = sub_1B0E469C8();
      MEMORY[0x1B2726E80](v23);

      MEMORY[0x1B2726E80](168656171, 0xE400000000000000);
      v24 = sub_1B0CFC1B0(123, 0xE100000000000000, v1 + 1, v4);
      if (v25)
      {
        v26._countAndFlagsBits = 123;
        v26._object = 0xE100000000000000;
        v24 = ByteBuffer._setStringSlowpath(_:at:)(v26, v4);
      }

      v27 = v24;

      v28 = *(v1 + 5);
      v20 = __CFADD__(v28, v27);
      v29 = v28 + v27;
      if (!v20)
      {
        *(v1 + 5) = v29;
        sub_1B0D79300(a1);
        v13 = __OFADD__(v27, v30);
        result = v27 + v30;
        if (!v13)
        {
          return result;
        }

LABEL_33:
        __break(1u);
        return result;
      }

LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v5 != 2)
  {
    goto LABEL_25;
  }

  v31 = a1[4] - a1[3];
  v6 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v6);

  MEMORY[0x1B2726E80](658813, 0xE300000000000000);
  v7 = sub_1B0CFC1B0(123, 0xE100000000000000, v1 + 1, v4);
  if (v8)
  {
    v9._countAndFlagsBits = 123;
    v9._object = 0xE100000000000000;
    v7 = ByteBuffer._setStringSlowpath(_:at:)(v9, v4);
  }

  v10 = v7;

  v11 = *(v1 + 5);
  result = (v11 + v10);
  if (__CFADD__(v11, v10))
  {
    __break(1u);
    goto LABEL_31;
  }

  *(v1 + 5) = result;
  if (((*(&v34 + 1) | (SBYTE5(v34) << 32)) & 0x8000000000000000) == 0)
  {
    sub_1B0D7D00C(result);
  }

  sub_1B0D79300(a1);
  v13 = __OFADD__(v10, v12);
  result = v10 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1B0DD6040(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v35 = *v2;
  v36 = v2[2];
  v37 = *(v2 + 6);
  v5 = HIDWORD(*(v2 + 2));
  v6 = sub_1B0DD6A7C(a1, a2);
  if (v6 <= 1)
  {
    if (v6)
    {
      goto LABEL_22;
    }

    v4 = 0;
    result = sub_1B0CFC1B0(0x228588E222, 0xA500000000000000, v2 + 1, v5);
    if (v8)
    {
      v9._countAndFlagsBits = 0x228588E222;
      v9._object = 0xA500000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v9, v5);
    }

    v10 = *(v2 + 5);
    v3 = (v2 + 20);
    v6 = v10 + result;
    if (!__CFADD__(v10, result))
    {
      goto LABEL_33;
    }

    __break(1u);
  }

  if (v6 != 2)
  {
LABEL_28:
    if ((v4 & 0x1000000000000000) != 0)
    {
      sub_1B0E44DC8();
    }

    v29 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v29);

    MEMORY[0x1B2726E80](0x8588E20A0D7D2BLL, 0xA700000000000000);
    v30 = sub_1B0CFC1B0(123, 0xE100000000000000, v3 + 1, v5);
    if (v31)
    {
      v32._countAndFlagsBits = 123;
      v32._object = 0xE100000000000000;
      v30 = ByteBuffer._setStringSlowpath(_:at:)(v32, v5);
    }

    v33 = v30;

    v34 = *(v3 + 5);
    v3 = (v3 + 20);
    result = v33;
    v6 = v34 + v33;
    if (!__CFADD__(v34, v33))
    {
LABEL_33:
      *v3 = v6;
      return result;
    }

    __break(1u);
LABEL_37:
    __break(1u);
    return result;
  }

  if ((v4 & 0x1000000000000000) != 0)
  {
    sub_1B0E44DC8();
  }

  v11 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v11);

  MEMORY[0x1B2726E80](658813, 0xE300000000000000);
  v4 = 0;
  v12 = sub_1B0CFC1B0(123, 0xE100000000000000, v3 + 1, v5);
  if (v13)
  {
    v14._countAndFlagsBits = 123;
    v14._object = 0xE100000000000000;
    v12 = ByteBuffer._setStringSlowpath(_:at:)(v14, v5);
  }

  v15 = v12;

  v16 = *(v3 + 5);
  v5 = (v16 + v15);
  if (__CFADD__(v16, v15))
  {
    __break(1u);
    goto LABEL_35;
  }

  *(v3 + 5) = v5;
  if (((*(&v35 + 1) | (SBYTE5(v35) << 32)) & 0x8000000000000000) == 0)
  {
    sub_1B0D7D00C(v5);
  }

  result = sub_1B0CFC1B0(8751330, 0xA300000000000000, v3 + 1, v5);
  if (v17)
  {
    v18._countAndFlagsBits = 8751330;
    v18._object = 0xA300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v18, v5);
  }

  v19 = *(v3 + 5);
  v20 = __CFADD__(v19, result);
  v21 = v19 + result;
  if (v20)
  {
    goto LABEL_37;
  }

  *(v3 + 5) = v21;
  v22 = __OFADD__(v15, result);
  result += v15;
  if (v22)
  {
    __break(1u);
LABEL_22:
    if ((v4 & 0x1000000000000000) == 0)
    {
LABEL_23:
      v23 = sub_1B0E469C8();
      MEMORY[0x1B2726E80](v23);

      MEMORY[0x1B2726E80](0x8588E20A0D7DLL, 0xA600000000000000);
      v4 = 0;
      v24 = sub_1B0CFC1B0(123, 0xE100000000000000, v3 + 1, v5);
      if (v25)
      {
        v26._countAndFlagsBits = 123;
        v26._object = 0xE100000000000000;
        v24 = ByteBuffer._setStringSlowpath(_:at:)(v26, v5);
      }

      v27 = v24;

      v28 = *(v3 + 5);
      v3 = (v3 + 20);
      result = v27;
      v6 = v28 + v27;
      if (!__CFADD__(v28, v27))
      {
        goto LABEL_33;
      }

      __break(1u);
      goto LABEL_28;
    }

LABEL_35:
    sub_1B0E44DC8();
    goto LABEL_23;
  }

  return result;
}

uint64_t sub_1B0DD63E8(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v37 = *v1;
  v38 = v1[2];
  v39 = *(v1 + 6);
  v4 = HIDWORD(*(v1 + 2));
  v5 = sub_1B0DD6BCC(a1);
  if (v5 <= 1)
  {
    if (v5)
    {
      goto LABEL_20;
    }

    v3 = 0;
    result = sub_1B0CFC1B0(0x228588E222, 0xA500000000000000, v1 + 1, v4);
    if (v7)
    {
      v8._countAndFlagsBits = 0x228588E222;
      v8._object = 0xA500000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v8, v4);
    }

    v9 = *(v1 + 5);
    v2 = (v1 + 20);
    v5 = v9 + result;
    if (!__CFADD__(v9, result))
    {
      goto LABEL_28;
    }

    __break(1u);
  }

  if (v5 != 2)
  {
    goto LABEL_25;
  }

  v34 = *(v3 + 16);
  v10 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v10);

  MEMORY[0x1B2726E80](658813, 0xE300000000000000);
  v3 = 0;
  v11 = sub_1B0CFC1B0(123, 0xE100000000000000, v2 + 1, v4);
  if (v12)
  {
    v13._countAndFlagsBits = 123;
    v13._object = 0xE100000000000000;
    v11 = ByteBuffer._setStringSlowpath(_:at:)(v13, v4);
  }

  v14 = v11;

  v15 = *(v2 + 5);
  v4 = (v15 + v14);
  if (__CFADD__(v15, v14))
  {
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    return result;
  }

  *(v2 + 5) = v4;
  if (((*(&v37 + 1) | (SBYTE5(v37) << 32)) & 0x8000000000000000) == 0)
  {
    sub_1B0D7D00C(v4);
  }

  result = sub_1B0CFC1B0(8751330, 0xA300000000000000, v2 + 1, v4);
  if (v16)
  {
    v17._countAndFlagsBits = 8751330;
    v17._object = 0xA300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v17, v4);
  }

  v18 = *(v2 + 5);
  v19 = __CFADD__(v18, result);
  v20 = v18 + result;
  if (v19)
  {
    goto LABEL_32;
  }

  *(v2 + 5) = v20;
  v21 = __OFADD__(v14, result);
  result += v14;
  if (!v21)
  {
    return result;
  }

  __break(1u);
LABEL_20:
  v35 = *(v3 + 16);
  v22 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v22);

  MEMORY[0x1B2726E80](0x8588E20A0D7DLL, 0xA600000000000000);
  v3 = 0;
  v23 = sub_1B0CFC1B0(123, 0xE100000000000000, v2 + 1, v4);
  if (v24)
  {
    v25._countAndFlagsBits = 123;
    v25._object = 0xE100000000000000;
    v23 = ByteBuffer._setStringSlowpath(_:at:)(v25, v4);
  }

  v26 = v23;

  v27 = *(v2 + 5);
  v2 = (v2 + 20);
  result = v26;
  v5 = v27 + v26;
  if (!__CFADD__(v27, v26))
  {
    goto LABEL_28;
  }

  __break(1u);
LABEL_25:
  v36 = *(v3 + 16);
  v28 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v28);

  MEMORY[0x1B2726E80](0x8588E20A0D7D2BLL, 0xA700000000000000);
  v29 = sub_1B0CFC1B0(123, 0xE100000000000000, v2 + 1, v4);
  if (v30)
  {
    v31._countAndFlagsBits = 123;
    v31._object = 0xE100000000000000;
    v29 = ByteBuffer._setStringSlowpath(_:at:)(v31, v4);
  }

  v32 = v29;

  v33 = *(v2 + 5);
  v2 = (v2 + 20);
  result = v32;
  v5 = v33 + v32;
  if (__CFADD__(v33, v32))
  {
    goto LABEL_31;
  }

LABEL_28:
  *v2 = v5;
  return result;
}