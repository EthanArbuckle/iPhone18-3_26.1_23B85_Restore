uint64_t sub_1002DC93C()
{
  sub_1000C9F38(*(v0 + 16));
  sub_1000C9F38(*(v0 + 24));

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t static SearchRequest.Predicate.or(_:)(unint64_t result)
{
  v1 = *(result + 16);
  if (v1 == 1)
  {
    v3 = *(result + 32);
    v5 = v3;
    goto LABEL_10;
  }

  if (v1)
  {
    v2 = (result + 8 * v1);
    v3 = v2[2];
    v4 = v2[3];
    result = swift_allocObject();
    *(result + 16) = v3;
    *(result + 24) = v4;
    v5 = result | 0x8000000000000000;
    if (v1 != 2)
    {
      v6 = v1 - 3;
      v7 = v2 + 1;
      while (v1 - 2 >= v6 + 1)
      {
        if (v6 >= v1)
        {
          goto LABEL_12;
        }

        v8 = *v7--;
        v9 = swift_allocObject();
        *(v9 + 16) = v8;
        *(v9 + 24) = v5;
        result = sub_1000C9E60(v8);
        v5 = v9 | 0x8000000000000000;
        if (--v6 == -1)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

LABEL_8:
    sub_1000C9E60(v4);
LABEL_10:
    sub_1000C9E60(v3);
    return v5;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t SearchRequest.Predicate.Color.description.getter(unsigned __int8 a1)
{
  v1 = 6579570;
  v2 = 0x656C70727570;
  if (a1 != 5)
  {
    v2 = 2036429415;
  }

  v3 = 0x6E65657267;
  if (a1 != 3)
  {
    v3 = 1702194274;
  }

  if (a1 <= 4u)
  {
    v2 = v3;
  }

  v4 = 0x65676E61726FLL;
  if (a1 != 1)
  {
    v4 = 0x776F6C6C6579;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1002DCB2C()
{
  v1 = *v0;
  v2 = 6579570;
  v3 = 0x656C70727570;
  if (v1 != 5)
  {
    v3 = 2036429415;
  }

  v4 = 0x6E65657267;
  if (v1 != 3)
  {
    v4 = 1702194274;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x65676E61726FLL;
  if (v1 != 1)
  {
    v5 = 0x776F6C6C6579;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t SearchRequest.Predicate.Day.description.getter()
{
  v1 = sub_1004A6CE4();
  v2._countAndFlagsBits = 45;
  v2._object = 0xE100000000000000;
  sub_1004A5994(v2);
  v3._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v3);

  v4._countAndFlagsBits = 45;
  v4._object = 0xE100000000000000;
  sub_1004A5994(v4);
  v5._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v5);

  return v1;
}

uint64_t sub_1002DCCB8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  return SearchRequest.Predicate.Day.description.getter();
}

uint64_t SearchRequest.Predicate.description.getter(unint64_t a1)
{
  switch(a1 >> 60)
  {
    case 1uLL:
      v29 = a1 & 0xFFFFFFFFFFFFFFFLL;
      v30 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v31 = *(v29 + 24);
      v32 = *(v29 + 32);
      v26 = 0x2845524F464542;
      goto LABEL_37;
    case 2uLL:
      v6 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v7 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v27 = 1497648962;
      goto LABEL_40;
    case 3uLL:
      v6 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v7 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v8 = 2638659;
      goto LABEL_43;
    case 4uLL:
      v9 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v10 = 0xE600000000000000;
      v11 = 0x65676E61726FLL;
      v12 = 0xE600000000000000;
      countAndFlagsBits = 0x28524F4C4F43;
      v13 = 0x656C70727570;
      if (v9 != 5)
      {
        v13 = 2036429415;
        v12 = 0xE400000000000000;
      }

      v14 = 0xE500000000000000;
      v15 = 0x6E65657267;
      if (v9 != 3)
      {
        v15 = 1702194274;
        v14 = 0xE400000000000000;
      }

      if (*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10) <= 4u)
      {
        v13 = v15;
        v12 = v14;
      }

      if (v9 != 1)
      {
        v11 = 0x776F6C6C6579;
        v10 = 0xE600000000000000;
      }

      if (!*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10))
      {
        v11 = 6579570;
        v10 = 0xE300000000000000;
      }

      if (*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10) <= 2u)
      {
        v16._countAndFlagsBits = v11;
      }

      else
      {
        v16._countAndFlagsBits = v13;
      }

      if (v9 <= 2)
      {
        v17 = v10;
      }

      else
      {
        v17 = v12;
      }

      v16._object = v17;
      goto LABEL_38;
    case 5uLL:
      v6 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v7 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v27 = 1297044038;
LABEL_40:
      v8 = v27 & 0xFFFF0000FFFFFFFFLL | 0x2800000000;
      goto LABEL_43;
    case 6uLL:
      v33 = a1 & 0xFFFFFFFFFFFFFFFLL;
      v44._countAndFlagsBits = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v44._object = *(v33 + 24);
      v34 = *(v33 + 32);
      v35 = *(v33 + 40);
      countAndFlagsBits = 0x28524544414548;
      sub_1004A5994(v44);
      v45._countAndFlagsBits = 61;
      v45._object = 0xE100000000000000;
      sub_1004A5994(v45);
      v46._countAndFlagsBits = v34;
      v46._object = v35;
      sub_1004A5994(v46);
      goto LABEL_45;
    case 7uLL:
      v28 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      countAndFlagsBits = 542396238;
      sub_1000C9E60(v28);
      v43._countAndFlagsBits = SearchRequest.Predicate.description.getter(v28);
      sub_1004A5994(v43);

      sub_1000C9F38(v28);
      return countAndFlagsBits;
    case 8uLL:
      v37 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v36 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v38._countAndFlagsBits = SearchRequest.Predicate.description.getter(v37);
      if (!(v37 >> 60))
      {
        sub_1004A5994(v38);

        v49._countAndFlagsBits = 41;
        v49._object = 0xE100000000000000;
        sub_1004A5994(v49);
        v38._countAndFlagsBits = 40;
      }

      countAndFlagsBits = v38._countAndFlagsBits;
      v50._countAndFlagsBits = 542265120;
      v50._object = 0xE400000000000000;
      sub_1004A5994(v50);
      v4._countAndFlagsBits = SearchRequest.Predicate.description.getter(v36);
      object = v4._object;
      if (v36 >> 60)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    case 9uLL:
      v22 = a1 & 0xFFFFFFFFFFFFFFFLL;
      v23 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v24 = *(v22 + 24);
      v25 = *(v22 + 32);
      v26 = 0x2845434E4953;
LABEL_37:
      countAndFlagsBits = v26;
      v16._countAndFlagsBits = SearchRequest.Predicate.Day.description.getter();
LABEL_38:
      sub_1004A5994(v16);
      goto LABEL_44;
    case 0xAuLL:
      v6 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v7 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v8 = 0x285443454A425553;
      goto LABEL_43;
    case 0xBuLL:
      v6 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v7 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v8 = 2641748;
LABEL_43:
      countAndFlagsBits = v8;

      v47._countAndFlagsBits = v6;
      v47._object = v7;
      sub_1004A5994(v47);
LABEL_44:

LABEL_45:
      v48._countAndFlagsBits = 41;
      v48._object = 0xE100000000000000;
      sub_1004A5994(v48);
      return countAndFlagsBits;
    case 0xCuLL:
      v18 = __ROR8__(a1 + 0x4000000000000000, 3);
      v19 = 0x4445524557534E41;
      v20 = 0x44454747414C46;
      if (v18 != 2)
      {
        v20 = 1145128274;
      }

      if (v18)
      {
        v19 = 0x444554454C4544;
      }

      if (v18 <= 1)
      {
        return v19;
      }

      else
      {
        return v20;
      }

    default:
      v2 = *(a1 + 16);
      v1 = *(a1 + 24);
      v3._countAndFlagsBits = SearchRequest.Predicate.description.getter(v2);
      if (v2 >> 60 == 8)
      {
        sub_1004A5994(v3);

        v40._countAndFlagsBits = 41;
        v40._object = 0xE100000000000000;
        sub_1004A5994(v40);
        v3._countAndFlagsBits = 40;
      }

      countAndFlagsBits = v3._countAndFlagsBits;
      v41._countAndFlagsBits = 0x20444E4120;
      v41._object = 0xE500000000000000;
      sub_1004A5994(v41);
      v4._countAndFlagsBits = SearchRequest.Predicate.description.getter(v1);
      object = v4._object;
      if (v1 >> 60 == 8)
      {
LABEL_5:
        v4._object = object;
        sub_1004A5994(v4);

        v42._countAndFlagsBits = 41;
        v42._object = 0xE100000000000000;
        sub_1004A5994(v42);
        v4._countAndFlagsBits = 40;
        object = 0xE100000000000000;
      }

LABEL_6:
      v4._object = object;
      sub_1004A5994(v4);

      return countAndFlagsBits;
  }
}

BOOL SearchRequest.Predicate.requiresBody.getter(unint64_t a1)
{
  v1 = a1 >> 60;
  if ((a1 >> 60) > 2)
  {
    if (((1 << v1) & 0x1E78) != 0)
    {
      return 0;
    }

    if (v1 == 7)
    {
      v3 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      sub_1000C9E60(v3);
LABEL_12:
      v6 = SearchRequest.Predicate.requiresBody.getter(v3);
      sub_1000C9F38(v3);
      return v6 & 1;
    }

    a1 &= 0xFFFFFFFFFFFFFFFuLL;
LABEL_10:
    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    sub_1000C9E60(v4);
    sub_1000C9E60(v3);
    v5 = SearchRequest.Predicate.requiresBody.getter(v4);
    sub_1000C9F38(v4);
    if (v5)
    {
      sub_1000C9F38(v3);
      return 1;
    }

    goto LABEL_12;
  }

  if (!v1)
  {
    goto LABEL_10;
  }

  return v1 != 1;
}

BOOL static SearchRequest.RangesToExclude.__derived_struct_equals(_:_:)(int32x2_t *a1, uint64_t a2, char a3, int32x2_t *a4, uint64_t a5, char a6)
{
  if ((sub_100102A80(a1, a4) & 1) == 0)
  {
    return 0;
  }

  if ((a3 & 1) == 0)
  {
    return (a6 & 1) == 0 && a2 == a5;
  }

  return (a6 & 1) != 0;
}

unint64_t sub_1002DD2CC()
{
  result = qword_1005D7988;
  if (!qword_1005D7988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D7988);
  }

  return result;
}

unint64_t sub_1002DD324()
{
  result = qword_1005D7990;
  if (!qword_1005D7990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D7990);
  }

  return result;
}

unint64_t sub_1002DD37C()
{
  result = qword_1005D7998;
  if (!qword_1005D7998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D7998);
  }

  return result;
}

unint64_t sub_1002DD3D4()
{
  result = qword_1005D79A0;
  if (!qword_1005D79A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D79A0);
  }

  return result;
}

uint64_t sub_1002DD428(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (sub_100102A80(*a1, *a2))
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
        v7 = v5;
      }

      else
      {
        v7 = 1;
      }

      if ((v7 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1002DD48C(void *a1)
{
  if (*a1 >> 62 == 3)
  {
    return (*a1 >> 3) + 12;
  }

  else
  {
    return *a1 >> 60;
  }
}

uint64_t sub_1002DD4B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 7 && *(a1 + 24))
  {
    return (*a1 + 7);
  }

  v3 = ((*(a1 + 16) >> 2) & 1 | (2 * (*(a1 + 16) & 3))) ^ 7;
  if (v3 >= 6)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1002DD508(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 6)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 7;
    if (a3 >= 7)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 7)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (-a2 >> 1) & 3 | (4 * (-a2 & 1));
    }
  }

  return result;
}

ValueMetadata *type metadata accessor for SearchRequest()
{
  return &type metadata for SearchRequest;
}

{
  return &type metadata for SearchRequest;
}

uint64_t sub_1002DD574(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 7 && *(a1 + 16))
  {
    return (*a1 + 7);
  }

  v3 = ((*(a1 + 8) >> 2) & 1 | (2 * (*(a1 + 8) & 3))) ^ 7;
  if (v3 >= 6)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1002DD5C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 6)
  {
    *result = a2 - 7;
    *(result + 8) = 0;
    if (a3 >= 7)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 7)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (-a2 >> 1) & 3 | (4 * (-a2 & 1));
    }
  }

  return result;
}

uint64_t sub_1002DD654(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x74 && *(a1 + 8))
  {
    return (*a1 + 116);
  }

  v3 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
  if (v3 >= 0x73)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1002DD6A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x73)
  {
    *result = a2 - 116;
    if (a3 >= 0x74)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x74)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1002DD6F4(void *result, uint64_t a2)
{
  if (a2 < 0xC)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 60);
  }

  else
  {
    *result = (8 * (a2 - 12)) | 0xC000000000000000;
  }

  return result;
}

uint64_t sub_1002DD760(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Activity.MailboxStatus(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002DD7C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002DD824(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

Swift::Int sub_1002DD890()
{
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

uint64_t RemoteMailbox.SpecialUse.rawValue.getter(unsigned __int8 a1)
{
  v1 = 7105633;
  v2 = 1953391987;
  if (a1 != 5)
  {
    v2 = 0x6873617274;
  }

  v3 = 0x64656767616C66;
  if (a1 != 3)
  {
    v3 = 1802401130;
  }

  if (a1 <= 4u)
  {
    v2 = v3;
  }

  v4 = 0x65766968637261;
  if (a1 != 1)
  {
    v4 = 0x737466617264;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1002DDA70@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s16IMAP2Persistence13RemoteMailboxV10SpecialUseO8rawValueAESgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_1002DDAA0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7105633;
  v5 = 0xE400000000000000;
  v6 = 1953391987;
  if (v2 != 5)
  {
    v6 = 0x6873617274;
    v5 = 0xE500000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x64656767616C66;
  if (v2 != 3)
  {
    v8 = 1802401130;
    v7 = 0xE400000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x65766968637261;
  if (v2 != 1)
  {
    v10 = 0x737466617264;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_1002DDB6C()
{
  *v0;
  *v0;
  *v0;
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t _s16IMAP2Persistence13RemoteMailboxV10SpecialUseOyAESg12NIOIMAPCore20D4InfoV9AttributeVcfC_0()
{
  v0 = UseAttribute.all.unsafeMutableAddressor();
  v2 = *v0;
  v1 = *(v0 + 1);
  v3 = sub_1004A5814();
  v5 = v4;
  if (v3 == sub_1004A5814() && v5 == v6)
  {

LABEL_8:

    return 0;
  }

  v8 = sub_1004A6D34();

  if (v8)
  {
    goto LABEL_8;
  }

  v10 = UseAttribute.archive.unsafeMutableAddressor();
  v12 = *v10;
  v11 = *(v10 + 1);
  v13 = sub_1004A5814();
  v15 = v14;
  if (v13 == sub_1004A5814() && v15 == v16)
  {

LABEL_13:

    return 1;
  }

  v17 = sub_1004A6D34();

  if (v17)
  {
    goto LABEL_13;
  }

  v18 = UseAttribute.drafts.unsafeMutableAddressor();
  v20 = *v18;
  v19 = *(v18 + 1);
  v21 = sub_1004A5814();
  v23 = v22;
  if (v21 == sub_1004A5814() && v23 == v24)
  {

LABEL_18:

    return 2;
  }

  v25 = sub_1004A6D34();

  if (v25)
  {
    goto LABEL_18;
  }

  v26 = UseAttribute.flagged.unsafeMutableAddressor();
  v28 = *v26;
  v27 = *(v26 + 1);
  v29 = sub_1004A5814();
  v31 = v30;
  if (v29 == sub_1004A5814() && v31 == v32)
  {

LABEL_23:

    return 3;
  }

  v33 = sub_1004A6D34();

  if (v33)
  {
    goto LABEL_23;
  }

  v34 = UseAttribute.junk.unsafeMutableAddressor();
  v36 = *v34;
  v35 = *(v34 + 1);
  v37 = sub_1004A5814();
  v39 = v38;
  if (v37 == sub_1004A5814() && v39 == v40)
  {

LABEL_28:

    return 4;
  }

  v41 = sub_1004A6D34();

  if (v41)
  {
    goto LABEL_28;
  }

  v42 = UseAttribute.sent.unsafeMutableAddressor();
  v44 = *v42;
  v43 = *(v42 + 1);
  v45 = sub_1004A5814();
  v47 = v46;
  if (v45 == sub_1004A5814() && v47 == v48)
  {

LABEL_33:

    return 5;
  }

  v49 = sub_1004A6D34();

  if (v49)
  {
    goto LABEL_33;
  }

  v50 = UseAttribute.trash.unsafeMutableAddressor();
  v52 = *v50;
  v51 = *(v50 + 1);
  v53 = sub_1004A5814();
  v55 = v54;
  if (v53 == sub_1004A5814() && v55 == v56)
  {

    return 6;
  }

  else
  {
    v57 = sub_1004A6D34();

    if (v57)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t _s16IMAP2Persistence13RemoteMailboxV10SpecialUseO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005AEC18;
  v6._object = a2;
  v4 = sub_1004A6AF4(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1002DE0EC()
{
  result = qword_1005D79E0;
  if (!qword_1005D79E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D79E0);
  }

  return result;
}

unint64_t sub_1002DE144()
{
  result = qword_1005D79E8;
  if (!qword_1005D79E8)
  {
    sub_10000DEFC(&qword_1005D79F0, &qword_1004F2738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D79E8);
  }

  return result;
}

uint64_t ConnectionStatus.Error.details.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ConnectionStatus.Error(0) + 20);

  return sub_1002E0568(a1, v3);
}

uint64_t property wrapper backing initializer of ConnectionStatus.Error.backedOffUntil(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v8 - v4;
  sub_10000E268(a1, &v8 - v4, &qword_1005D0F20, &qword_1004E9390);
  v6 = OptionalMillisecondDate.init(wrappedValue:)(v5);
  sub_100025F40(a1, &qword_1005D0F20, &qword_1004E9390);
  return v6;
}

uint64_t ConnectionStatus.Error.backedOffUntil.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ConnectionStatus.Error(0) + 24);
  if (*(v3 + 8))
  {
    v4 = 1;
  }

  else
  {
    v5 = *v3 * 0.001;
    sub_1004A4454();
    v4 = 0;
  }

  v6 = sub_1004A44E4();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v4, 1, v6);
}

uint64_t ConnectionStatus.Error.backedOffUntil.setter(uint64_t a1)
{
  v3 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v9 - v5;
  sub_10000E268(a1, &v9 - v5, &qword_1005D0F20, &qword_1004E9390);
  v7 = v1 + *(type metadata accessor for ConnectionStatus.Error(0) + 24);
  OptionalMillisecondDate.wrappedValue.setter(v6);
  return sub_100025F40(a1, &qword_1005D0F20, &qword_1004E9390);
}

void (*ConnectionStatus.Error.backedOffUntil.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(a1 + 8) = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    *(a1 + 8) = malloc(v3);
    v4 = malloc(v3);
  }

  v5 = v4;
  *(a1 + 16) = v4;
  v6 = *(type metadata accessor for ConnectionStatus.Error(0) + 24);
  *(a1 + 24) = v6;
  v7 = v1 + v6;
  if (*(v7 + 8))
  {
    v8 = 1;
  }

  else
  {
    v9 = *v7 * 0.001;
    sub_1004A4454();
    v8 = 0;
  }

  v10 = sub_1004A44E4();
  (*(*(v10 - 8) + 56))(v5, v8, 1, v10);
  return sub_1002DE5FC;
}

void sub_1002DE5FC(uint64_t *a1, char a2)
{
  v2 = *(a1 + 6);
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a1;
  if (a2)
  {
    sub_10000E268(a1[2], v3, &qword_1005D0F20, &qword_1004E9390);
    OptionalMillisecondDate.wrappedValue.setter(v3);
    sub_100025F40(v4, &qword_1005D0F20, &qword_1004E9390);
  }

  else
  {
    OptionalMillisecondDate.wrappedValue.setter(a1[2]);
  }

  free(v4);

  free(v3);
}

uint64_t ConnectionStatus.Error.init(kind:details:backedOffUntil:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v26 = a2;
  v25 = a1;
  v6 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v24[-v11];
  v13 = type metadata accessor for ConnectionStatus.Error(0);
  v14 = *(v13 + 20);
  v15 = type metadata accessor for ConnectionStatus.Error.Details(0);
  (*(*(v15 - 8) + 56))(&a4[v14], 1, 1, v15);
  v16 = &a4[*(v13 + 24)];
  v17 = sub_1004A44E4();
  (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  sub_10000E268(v12, v10, &qword_1005D0F20, &qword_1004E9390);
  v18 = OptionalMillisecondDate.init(wrappedValue:)(v10);
  v20 = v19;
  sub_100025F40(v12, &qword_1005D0F20, &qword_1004E9390);
  *v16 = v18;
  v16[8] = v20 & 1;
  *a4 = v25;
  v21 = &a4[v14];
  v22 = v26;
  sub_1002E05F8(v26, v21);
  sub_10000E268(a3, v12, &qword_1005D0F20, &qword_1004E9390);
  sub_10000E268(v12, v10, &qword_1005D0F20, &qword_1004E9390);
  OptionalMillisecondDate.wrappedValue.setter(v10);
  sub_100025F40(a3, &qword_1005D0F20, &qword_1004E9390);
  sub_100025F40(v22, &qword_1005D55B8, &unk_1004F2790);
  return sub_100025F40(v12, &qword_1005D0F20, &qword_1004E9390);
}

uint64_t ConnectionStatus.Error.debugDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ConnectionStatus.Error.Details(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v67 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v66 = &v64 - v7;
  v8 = sub_1004A44E4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v65 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v64 - v13;
  v15 = sub_10000C9C0(&qword_1005D79F8, &qword_1004F27A0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v64 - v17;
  v19 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v64 - v21;
  v23 = type metadata accessor for ConnectionStatus.Error(0);
  v24 = &v1[*(v23 + 24)];
  if (v24[1])
  {
    (*(v9 + 56))(v22, 1, 1, v8);
  }

  else
  {
    v25 = *v24 * 0.001;
    sub_1004A4454();
    (*(v9 + 56))(v22, 0, 1, v8);
  }

  v26 = *(v15 + 48);
  sub_10000E268(&v1[*(v23 + 20)], v18, &qword_1005D55B8, &unk_1004F2790);
  sub_1002E0A60(v22, &v18[v26]);
  v27 = (*(v3 + 48))(v18, 1, v2);
  v28 = (*(v9 + 48))(&v18[v26], 1, v8);
  if (v27 != 1)
  {
    if (v28 != 1)
    {
      v33 = v67;
      sub_1002E110C(v18, v67, type metadata accessor for ConnectionStatus.Error.Details);
      v50 = &v18[v26];
      v51 = v65;
      (*(v9 + 32))(v65, v50, v8);
      v68 = 0;
      v69 = 0xE000000000000000;
      sub_1004A6724(31);
      v52 = 0x80000001004AB580;
      v53 = 0xD000000000000014;
      v54 = *v1;
      v55 = 0xE700000000000000;
      v56 = 0x6B726F7774656ELL;
      if (v54 != 4)
      {
        v56 = 0x7245726573726170;
        v55 = 0xEB00000000726F72;
      }

      if (v54 != 3)
      {
        v53 = v56;
        v52 = v55;
      }

      v57 = 0xD000000000000011;
      v58 = 0x80000001004AE120;
      v59 = 0xD000000000000011;
      v60 = 0x80000001004AE100;
      if (v54 == 1)
      {
        v59 = 0x7245726576726573;
        v60 = 0xEB00000000726F72;
      }

      if (*v1)
      {
        v57 = v59;
        v58 = v60;
      }

      if (*v1 <= 2u)
      {
        v61._countAndFlagsBits = v57;
      }

      else
      {
        v61._countAndFlagsBits = v53;
      }

      if (*v1 <= 2u)
      {
        v62 = v58;
      }

      else
      {
        v62 = v52;
      }

      v61._object = v62;
      sub_1004A5994(v61);

      v73._countAndFlagsBits = 0x6C69617465647B20;
      v73._object = 0xEB00000000203A73;
      sub_1004A5994(v73);
      sub_1004A6934();
      v74._countAndFlagsBits = 0x64656B636162202CLL;
      v74._object = 0xED0000203A66664FLL;
      sub_1004A5994(v74);
      sub_1002E0AD0();
      v75._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v75);

      v76._countAndFlagsBits = 125;
      v76._object = 0xE100000000000000;
      sub_1004A5994(v76);
      v49 = v68;
      (*(v9 + 8))(v51, v8);
      goto LABEL_61;
    }

    v33 = v66;
    sub_1002E110C(v18, v66, type metadata accessor for ConnectionStatus.Error.Details);
    v68 = 0;
    v69 = 0xE000000000000000;
    sub_1004A6724(16);
    v34 = *v1;
    if (v34 > 2)
    {
      v35 = 0xEB00000000726F72;
      if (v34 == 3)
      {
        v35 = 0x80000001004AB580;
        v36._countAndFlagsBits = 0xD000000000000014;
      }

      else if (v34 == 4)
      {
        v35 = 0xE700000000000000;
        v36._countAndFlagsBits = 0x6B726F7774656ELL;
      }

      else
      {
        v36._countAndFlagsBits = 0x7245726573726170;
      }

      goto LABEL_60;
    }

    v35 = 0xEB00000000726F72;
    if (*v1)
    {
      v36._countAndFlagsBits = 0x7245726576726573;
      if (v34 == 1)
      {
LABEL_60:
        v36._object = v35;
        sub_1004A5994(v36);

        v77._countAndFlagsBits = 0x6C69617465647B20;
        v77._object = 0xEB00000000203A73;
        sub_1004A5994(v77);
        sub_1004A6934();
        v78._countAndFlagsBits = 125;
        v78._object = 0xE100000000000000;
        sub_1004A5994(v78);
        v49 = v68;
LABEL_61:
        sub_1002E0BB0(v33, type metadata accessor for ConnectionStatus.Error.Details);
        return v49;
      }

      v36._countAndFlagsBits = 0xD000000000000011;
      v37 = "serverUnavailable";
    }

    else
    {
      v36._countAndFlagsBits = 0xD000000000000011;
      v37 = "serverUnreachable";
    }

    v35 = ((v37 - 32) | 0x8000000000000000);
    goto LABEL_60;
  }

  if (v28 == 1)
  {
    v68 = 0;
    v69 = 0xE000000000000000;
    v29 = *v1;
    if (v29 > 2)
    {
      v30 = 0xEB00000000726F72;
      if (v29 == 3)
      {
        v30 = 0x80000001004AB580;
        v31._countAndFlagsBits = 0xD000000000000014;
      }

      else if (v29 == 4)
      {
        v30 = 0xE700000000000000;
        v31._countAndFlagsBits = 0x6B726F7774656ELL;
      }

      else
      {
        v31._countAndFlagsBits = 0x7245726573726170;
      }

      goto LABEL_58;
    }

    v30 = 0xEB00000000726F72;
    if (*v1)
    {
      v31._countAndFlagsBits = 0x7245726576726573;
      if (v29 == 1)
      {
LABEL_58:
        v31._object = v30;
        sub_1004A5994(v31);

        return v68;
      }

      v31._countAndFlagsBits = 0xD000000000000011;
      v32 = "serverUnavailable";
    }

    else
    {
      v31._countAndFlagsBits = 0xD000000000000011;
      v32 = "serverUnreachable";
    }

    v30 = ((v32 - 32) | 0x8000000000000000);
    goto LABEL_58;
  }

  (*(v9 + 32))(v14, &v18[v26], v8);
  v68 = 0;
  v69 = 0xE000000000000000;
  sub_1004A6724(18);
  v38 = 0x80000001004AB580;
  v39 = 0xD000000000000014;
  v40 = *v1;
  v41 = 0xE700000000000000;
  v42 = 0x6B726F7774656ELL;
  if (v40 != 4)
  {
    v42 = 0x7245726573726170;
    v41 = 0xEB00000000726F72;
  }

  if (v40 != 3)
  {
    v39 = v42;
    v38 = v41;
  }

  v43 = 0xD000000000000011;
  v44 = 0x80000001004AE120;
  v45 = 0xD000000000000011;
  v46 = 0x80000001004AE100;
  if (v40 == 1)
  {
    v45 = 0x7245726576726573;
    v46 = 0xEB00000000726F72;
  }

  if (*v1)
  {
    v43 = v45;
    v44 = v46;
  }

  if (*v1 <= 2u)
  {
    v47._countAndFlagsBits = v43;
  }

  else
  {
    v47._countAndFlagsBits = v39;
  }

  if (*v1 <= 2u)
  {
    v48 = v44;
  }

  else
  {
    v48 = v38;
  }

  v47._object = v48;
  sub_1004A5994(v47);

  v70._countAndFlagsBits = 0x64656B6361627B20;
  v70._object = 0xED0000203A66664FLL;
  sub_1004A5994(v70);
  sub_1002E0AD0();
  v71._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v71);

  v72._countAndFlagsBits = 125;
  v72._object = 0xE100000000000000;
  sub_1004A5994(v72);
  v49 = v68;
  (*(v9 + 8))(v14, v8);
  return v49;
}

unint64_t ConnectionStatus.Error.Kind.description.getter(unsigned __int8 a1)
{
  v1 = 0x7245726576726573;
  v2 = 0xD000000000000014;
  v3 = 0x6B726F7774656ELL;
  if (a1 != 4)
  {
    v3 = 0x7245726573726170;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  if (a1 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (!a1)
  {
    v1 = 0xD000000000000011;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t ConnectionStatus.Error.Details.debugDescription.getter()
{
  v1 = v0;
  v2 = sub_1004A5214();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for ConnectionStatus.Error.Details(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1002E0B48(v1, v10, type metadata accessor for ConnectionStatus.Error.Details);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v15 = *v10;
    v16 = v10[1];
    v29 = 0;
    v30 = 0xE000000000000000;
    if (EnumCaseMultiPayload == 2)
    {
      sub_1004A6724(25);

      v17 = 0x80000001004AE160;
      v18 = 0xD000000000000015;
    }

    else
    {
      sub_1004A6724(22);

      v17 = 0x80000001004AE140;
      v18 = 0xD000000000000012;
    }

    v29 = v18;
    v30 = v17;
    v35._countAndFlagsBits = v15;
    v35._object = v16;
    sub_1004A5994(v35);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload)
  {
    v19 = *v10;
    v20 = v10[1];
    v21 = v10[2];
    v22 = v10[3];
    v29 = 0;
    v30 = 0xE000000000000000;
    sub_1004A6724(45);

    v29 = 0xD00000000000001DLL;
    v30 = 0x80000001004AE180;
    v32._countAndFlagsBits = v19;
    v32._object = v20;
    sub_1004A5994(v32);

    v33._countAndFlagsBits = 0x3A74786574202C27;
    v33._object = 0xEA00000000002720;
    sub_1004A5994(v33);
    v34._countAndFlagsBits = v21;
    v34._object = v22;
    sub_1004A5994(v34);
LABEL_10:

    v14._countAndFlagsBits = 10535;
    goto LABEL_11;
  }

  v12 = (*(v3 + 88))(v10, v2);
  if (v12 == enum case for NWError.posix(_:))
  {
    (*(v3 + 96))(v10, v2);
    v13 = *v10;
    v29 = 0;
    v30 = 0xE000000000000000;
    sub_1004A6724(24);
    v31._countAndFlagsBits = 0xD000000000000014;
    v31._object = 0x80000001004AE1E0;
    sub_1004A5994(v31);
    v28 = v13;
    sub_1004A6934();
    v14._countAndFlagsBits = 10537;
LABEL_11:
    v14._object = 0xE200000000000000;
    sub_1004A5994(v14);
    return v29;
  }

  if (v12 == enum case for NWError.dns(_:))
  {
    (*(v3 + 96))(v10, v2);
    v24 = *v10;
    v29 = 0;
    v30 = 0xE000000000000000;
    sub_1004A6724(22);

    v25 = "networkError(.dns(";
LABEL_16:
    v29 = 0xD000000000000012;
    v30 = (v25 - 32) | 0x8000000000000000;
    v28 = v24;
    v36._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v36);

    v14._countAndFlagsBits = 10537;
    goto LABEL_11;
  }

  if (v12 == enum case for NWError.tls(_:))
  {
    (*(v3 + 96))(v10, v2);
    v24 = *v10;
    v29 = 0;
    v30 = 0xE000000000000000;
    sub_1004A6724(22);

    v25 = "networkError(.tls(";
    goto LABEL_16;
  }

  (*(v3 + 32))(v6, v10, v2);
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_1004A6724(16);
  v37._countAndFlagsBits = 0x456B726F7774656ELL;
  v37._object = 0xED000028726F7272;
  sub_1004A5994(v37);
  sub_1004A6934();
  v38._countAndFlagsBits = 41;
  v38._object = 0xE100000000000000;
  sub_1004A5994(v38);
  v26 = v29;
  (*(v3 + 8))(v6, v2);
  return v26;
}

uint64_t ConnectionStatus.mailbox.getter()
{
  v1 = type metadata accessor for ConnectionStatus(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1002E0B48(v0, v4, type metadata accessor for ConnectionStatus);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 2)
  {
    v7 = v4[2];
    return *v4;
  }

  else
  {
    if (EnumCaseMultiPayload - 3 >= 2)
    {
      sub_1002E0BB0(v4, type metadata accessor for ConnectionStatus);
    }

    return 0;
  }
}

uint64_t ConnectionStatus.Error.shouldPresentToUserForIMAP.getter()
{
  v1 = sub_1004A5214();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v8 = &v23 - v7;
  v9 = sub_10000C9C0(&qword_1005D55B8, &unk_1004F2790);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v23 - v14;
  v16 = type metadata accessor for ConnectionStatus.Error(0);
  sub_10000E268(v0 + *(v16 + 20), v15, &qword_1005D55B8, &unk_1004F2790);
  v17 = type metadata accessor for ConnectionStatus.Error.Details(0);
  v18 = 1;
  if ((*(*(v17 - 8) + 48))(v15, 1, v17) != 1)
  {
    sub_10000E268(v15, v12, &qword_1005D55B8, &unk_1004F2790);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1002E0BB0(v12, type metadata accessor for ConnectionStatus.Error.Details);
    }

    else
    {
      (*(v2 + 32))(v8, v12, v1);
      if ((*(v2 + 88))(v8, v1) == enum case for NWError.posix(_:))
      {
        (*(v2 + 16))(v5, v8, v1);
        (*(v2 + 96))(v5, v1);
        v19 = *v5 - 52;
        v20 = v19 > 0x2C;
        v21 = 0xFFFFFFFFEF8uLL >> v19;
        if (v20)
        {
          v18 = 1;
        }

        else
        {
          v18 = v21;
        }
      }

      (*(v2 + 8))(v8, v1);
    }
  }

  sub_100025F40(v15, &qword_1005D55B8, &unk_1004F2790);
  return v18 & 1;
}

uint64_t NWError.shouldPresentToUserForIMAP.getter()
{
  v1 = v0;
  v2 = sub_1004A5214();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __chkstk_darwin(v7);
  v10 = &v17 - v9;
  v11 = *(v3 + 16);
  v11(&v17 - v9, v1, v2, v8);
  if ((*(v3 + 88))(v10, v2) == enum case for NWError.posix(_:))
  {
    (v11)(v6, v10, v2);
    (*(v3 + 96))(v6, v2);
    v12 = *v6 - 52;
    v13 = v12 > 0x2C;
    v14 = 0xFFFFFFFFEF8uLL >> v12;
    if (v13)
    {
      v15 = 1;
    }

    else
    {
      v15 = v14;
    }
  }

  else
  {
    v15 = 1;
  }

  (*(v3 + 8))(v10, v2);
  return v15 & 1;
}

uint64_t _s16IMAP2Persistence16ConnectionStatusO5ErrorV7DetailsO21__derived_enum_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A5214();
  v51 = *(v4 - 8);
  v52 = v4;
  v5 = *(v51 + 64);
  __chkstk_darwin(v4);
  v50 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ConnectionStatus.Error.Details(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = (&v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v13 = (&v49 - v12);
  __chkstk_darwin(v14);
  v16 = (&v49 - v15);
  __chkstk_darwin(v17);
  v19 = &v49 - v18;
  v20 = sub_10000C9C0(&qword_1005D7C30, &unk_1004F2980);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v49 - v22;
  v25 = (&v49 + *(v24 + 56) - v22);
  sub_1002E0B48(a1, &v49 - v22, type metadata accessor for ConnectionStatus.Error.Details);
  sub_1002E0B48(a2, v25, type metadata accessor for ConnectionStatus.Error.Details);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1002E0B48(v23, v13, type metadata accessor for ConnectionStatus.Error.Details);
      v28 = *v13;
      v27 = v13[1];
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_22;
      }
    }

    else
    {
      sub_1002E0B48(v23, v10, type metadata accessor for ConnectionStatus.Error.Details);
      v28 = *v10;
      v27 = v10[1];
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_22;
      }
    }

    if (v28 != *v25 || v27 != v25[1])
    {
LABEL_31:
      v47 = sub_1004A6D34();

      if ((v47 & 1) == 0)
      {
        goto LABEL_32;
      }

LABEL_34:
      sub_1002E0BB0(v23, type metadata accessor for ConnectionStatus.Error.Details);
      v39 = 1;
      return v39 & 1;
    }

LABEL_33:

    goto LABEL_34;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1002E0B48(v23, v19, type metadata accessor for ConnectionStatus.Error.Details);
    if (!swift_getEnumCaseMultiPayload())
    {
      v41 = v50;
      v40 = v51;
      v42 = v25;
      v43 = v52;
      (*(v51 + 32))(v50, v42, v52);
      v39 = sub_1004A5204();
      v44 = *(v40 + 8);
      v44(v41, v43);
      v44(v19, v43);
      sub_1002E0BB0(v23, type metadata accessor for ConnectionStatus.Error.Details);
      return v39 & 1;
    }

    (*(v51 + 8))(v19, v52);
    goto LABEL_23;
  }

  sub_1002E0B48(v23, v16, type metadata accessor for ConnectionStatus.Error.Details);
  v30 = *v16;
  v29 = v16[1];
  v32 = v16[2];
  v31 = v16[3];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = v25[2];
    v33 = v25[3];
    if (v30 == *v25 && v29 == v25[1])
    {
      v45 = v25[1];
    }

    else
    {
      v36 = v25[1];
      v37 = sub_1004A6D34();

      if ((v37 & 1) == 0)
      {

LABEL_32:
        sub_1002E0BB0(v23, type metadata accessor for ConnectionStatus.Error.Details);
        goto LABEL_24;
      }
    }

    if (v32 != v34 || v31 != v33)
    {
      goto LABEL_31;
    }

    goto LABEL_33;
  }

LABEL_22:

LABEL_23:
  sub_100025F40(v23, &qword_1005D7C30, &unk_1004F2980);
LABEL_24:
  v39 = 0;
  return v39 & 1;
}

BOOL _s16IMAP2Persistence16ConnectionStatusO5ErrorV23__derived_struct_equalsySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for ConnectionStatus.Error.Details(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C9C0(&qword_1005D55B8, &unk_1004F2790);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v30 - v11;
  v13 = sub_10000C9C0(&qword_1005D79B8, &unk_1004F2660);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v30 - v15;
  if (*a1 != *a2)
  {
    return 0;
  }

  v17 = type metadata accessor for ConnectionStatus.Error(0);
  v18 = a1;
  v19 = a2;
  v30 = v17;
  v31 = v18;
  v20 = *(v17 + 20);
  v21 = *(v13 + 48);
  sub_10000E268(&v18[v20], v16, &qword_1005D55B8, &unk_1004F2790);
  sub_10000E268(&v19[v20], &v16[v21], &qword_1005D55B8, &unk_1004F2790);
  v22 = *(v5 + 48);
  if (v22(v16, 1, v4) == 1)
  {
    if (v22(&v16[v21], 1, v4) == 1)
    {
      sub_100025F40(v16, &qword_1005D55B8, &unk_1004F2790);
      goto LABEL_10;
    }

LABEL_7:
    sub_100025F40(v16, &qword_1005D79B8, &unk_1004F2660);
    return 0;
  }

  sub_10000E268(v16, v12, &qword_1005D55B8, &unk_1004F2790);
  if (v22(&v16[v21], 1, v4) == 1)
  {
    sub_1002E0BB0(v12, type metadata accessor for ConnectionStatus.Error.Details);
    goto LABEL_7;
  }

  sub_1002E110C(&v16[v21], v8, type metadata accessor for ConnectionStatus.Error.Details);
  v24 = _s16IMAP2Persistence16ConnectionStatusO5ErrorV7DetailsO21__derived_enum_equalsySbAG_AGtFZ_0(v12, v8);
  sub_1002E0BB0(v8, type metadata accessor for ConnectionStatus.Error.Details);
  sub_1002E0BB0(v12, type metadata accessor for ConnectionStatus.Error.Details);
  sub_100025F40(v16, &qword_1005D55B8, &unk_1004F2790);
  if ((v24 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v25 = *(v30 + 24);
  v26 = &v31[v25];
  v27 = v31[v25 + 8];
  v28 = &v19[v25];
  v29 = v19[v25 + 8];
  if ((v27 & 1) == 0)
  {
    if (*v26 != *v28)
    {
      v29 = 1;
    }

    return (v29 & 1) == 0;
  }

  return (v29 & 1) != 0;
}

uint64_t sub_1002E0568(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D55B8, &unk_1004F2790);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002E05F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D55B8, &unk_1004F2790);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

BOOL _s16IMAP2Persistence16ConnectionStatusO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConnectionStatus.Error(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ConnectionStatus(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v31 - v13;
  __chkstk_darwin(v15);
  v17 = &v31 - v16;
  v18 = sub_10000C9C0(&qword_1005D7C28, &qword_1004F2978);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v31 - v20;
  v23 = &v31 + *(v22 + 56) - v20;
  sub_1002E0B48(a1, &v31 - v20, type metadata accessor for ConnectionStatus);
  sub_1002E0B48(a2, v23, type metadata accessor for ConnectionStatus);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1002E0B48(v21, v14, type metadata accessor for ConnectionStatus);
      v25 = *v14;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v26 = *(v14 + 2);
LABEL_15:
        v28 = *v23;
        if ((v26 | (v26 << 32)) == (*(v23 + 2) | (*(v23 + 2) << 32)))
        {
          v29 = sub_1000FFC98(v25, *v23);

          if (v29)
          {
LABEL_17:
            sub_1002E0BB0(v21, type metadata accessor for ConnectionStatus);
            return 1;
          }
        }

        else
        {
        }

        sub_1002E0BB0(v21, type metadata accessor for ConnectionStatus);
        return 0;
      }
    }

    else
    {
      sub_1002E0B48(v21, v17, type metadata accessor for ConnectionStatus);
      v25 = *v17;
      if (!swift_getEnumCaseMultiPayload())
      {
        v26 = *(v17 + 2);
        goto LABEL_15;
      }
    }

LABEL_20:
    sub_100025F40(v21, &qword_1005D7C28, &qword_1004F2978);
    return 0;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_20;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 4)
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  sub_1002E0B48(v21, v11, type metadata accessor for ConnectionStatus);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1002E0BB0(v11, type metadata accessor for ConnectionStatus.Error);
    goto LABEL_20;
  }

  sub_1002E110C(v23, v7, type metadata accessor for ConnectionStatus.Error);
  v27 = _s16IMAP2Persistence16ConnectionStatusO5ErrorV23__derived_struct_equalsySbAE_AEtFZ_0(v11, v7);
  sub_1002E0BB0(v7, type metadata accessor for ConnectionStatus.Error);
  sub_1002E0BB0(v11, type metadata accessor for ConnectionStatus.Error);
  sub_1002E0BB0(v21, type metadata accessor for ConnectionStatus);
  return v27;
}

uint64_t sub_1002E0A60(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002E0AD0()
{
  result = qword_1005D7A00;
  if (!qword_1005D7A00)
  {
    sub_1004A44E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D7A00);
  }

  return result;
}

uint64_t sub_1002E0B48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002E0BB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1002E0C14()
{
  result = qword_1005D7A08;
  if (!qword_1005D7A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D7A08);
  }

  return result;
}

unint64_t sub_1002E0C6C()
{
  result = qword_1005D7A10;
  if (!qword_1005D7A10)
  {
    sub_10000DEFC(&qword_1005D7A18, &qword_1004F2810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D7A10);
  }

  return result;
}

uint64_t sub_1002E0CD0()
{
  result = type metadata accessor for ConnectionStatus.Error(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1002E0D50(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 250)
  {
    v4 = *a1;
    if (v4 >= 6)
    {
      return v4 - 5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_10000C9C0(&qword_1005D55B8, &unk_1004F2790);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_1002E0E18(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 250)
  {
    *result = a2 + 5;
  }

  else
  {
    v7 = sub_10000C9C0(&qword_1005D55B8, &unk_1004F2790);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1002E0EC4()
{
  sub_1002E0F48();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1002E0F48()
{
  if (!qword_1005D7B30)
  {
    type metadata accessor for ConnectionStatus.Error.Details(255);
    v0 = sub_1004A6374();
    if (!v1)
    {
      atomic_store(v0, &qword_1005D7B30);
    }
  }
}

void sub_1002E0FB0()
{
  sub_1004A5214();
  if (v0 <= 0x3F)
  {
    sub_1002E104C();
    if (v1 <= 0x3F)
    {
      sub_1002E10AC();
      if (v2 <= 0x3F)
      {
        sub_1002E10DC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_1002E104C()
{
  if (!qword_1005D7BE8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1005D7BE8);
    }
  }
}

void *sub_1002E10AC()
{
  result = qword_1005D7BF0;
  if (!qword_1005D7BF0)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_1005D7BF0);
  }

  return result;
}

void *sub_1002E10DC()
{
  result = qword_1005D7BF8;
  if (!qword_1005D7BF8)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_1005D7BF8);
  }

  return result;
}

uint64_t sub_1002E110C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

Swift::Bool __swiftcall SyncRequest.includes(_:)(IMAP2Persistence::OpaqueMailboxID a1)
{
  if (v1)
  {
    return sub_10001284C(a1.rawValue._rawValue, a1.hashValue, v1);
  }

  else
  {
    return 1;
  }
}

BOOL static SyncRequest.Kind.__derived_enum_equals(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  switch(a1)
  {
    case 2u:
      return a2 == 2;
    case 3u:
      return a2 == 3;
    case 4u:
      return a2 == 4;
  }

  if (a2 - 2 < 3)
  {
    return 0;
  }

  return ((a2 ^ a1) & 1) == 0;
}

void SyncRequest.hash(into:)(__int128 *a1, char a2, uint64_t a3, char a4)
{
  v7 = a2 - 2;
  if ((a2 - 2) >= 3u)
  {
    sub_1004A6EB4(3uLL);
    v7 = a2 & 1;
  }

  sub_1004A6EB4(v7);
  if (a3)
  {
    sub_1004A6EC4(1u);
    sub_1002C36A0(a1, a3);
  }

  else
  {
    sub_1004A6EC4(0);
  }

  sub_1004A6EC4(a4 & 1);
}

Swift::Int SyncRequest.hashValue.getter(char a1, uint64_t a2, char a3)
{
  sub_1004A6E94();
  SyncRequest.hash(into:)(v7, a1, a2, a3);
  return sub_1004A6F14();
}

Swift::Int sub_1002E12E4()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *v0;
  sub_1004A6E94();
  SyncRequest.hash(into:)(v5, v3, v1, v2);
  return sub_1004A6F14();
}

Swift::Int sub_1002E1354()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *v0;
  sub_1004A6E94();
  SyncRequest.hash(into:)(v5, v3, v1, v2);
  return sub_1004A6F14();
}

IMAP2Persistence::SyncRequest::ID __swiftcall SyncRequest.ID.makeNext()()
{
  if ((v0 + 1) > 1)
  {
    return (v0 + 1);
  }

  else
  {
    return 1;
  }
}

void SyncRequest.Kind.hash(into:)(uint64_t a1, char a2)
{
  v2 = a2 - 2;
  if ((a2 - 2) >= 3u)
  {
    sub_1004A6EB4(3uLL);
    v2 = a2 & 1;
  }

  sub_1004A6EB4(v2);
}

Swift::Int SyncRequest.Kind.hashValue.getter(char a1)
{
  sub_1004A6E94();
  v2 = a1 - 2;
  if ((a1 - 2) >= 3u)
  {
    sub_1004A6EB4(3uLL);
    v2 = a1 & 1;
  }

  sub_1004A6EB4(v2);
  return sub_1004A6F14();
}

Swift::Int sub_1002E14BC()
{
  v1 = *v0;
  sub_1004A6E94();
  v2 = v1 - 2;
  if ((v1 - 2) >= 3)
  {
    sub_1004A6EB4(3uLL);
    v2 = v1 & 1;
  }

  sub_1004A6EB4(v2);
  return sub_1004A6F14();
}

void sub_1002E1520()
{
  v1 = *v0;
  v2 = v1 - 2;
  if ((v1 - 2) >= 3)
  {
    sub_1004A6EB4(3uLL);
    v2 = v1 & 1;
  }

  sub_1004A6EB4(v2);
}

Swift::Int sub_1002E1568()
{
  v1 = *v0;
  sub_1004A6E94();
  v2 = v1 - 2;
  if ((v1 - 2) >= 3)
  {
    sub_1004A6EB4(3uLL);
    v2 = v1 & 1;
  }

  sub_1004A6EB4(v2);
  return sub_1004A6F14();
}

BOOL sub_1002E15D8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2)
  {
    case 2:
      return v3 == 2;
    case 3:
      return v3 == 3;
    case 4:
      return v3 == 4;
  }

  if ((v3 - 2) < 3)
  {
    return 0;
  }

  return ((v3 ^ v2) & 1) == 0;
}

uint64_t SyncRequest.Kind.description.getter(char a1)
{
  switch(a1)
  {
    case 2:
      return 0x6369646F69726570;
    case 3:
      return 1752397168;
    case 4:
      return 0x74696E4972657375;
  }

  BYTE8(v3) = 0;
  sub_1004A6724(34);
  v4._object = 0x80000001004AE200;
  v4._countAndFlagsBits = 0xD00000000000001FLL;
  sub_1004A5994(v4);
  *&v3 = a1 & 1;
  sub_1004A6934();
  v5._countAndFlagsBits = 41;
  v5._object = 0xE100000000000000;
  sub_1004A5994(v5);
  return *(&v3 + 1);
}

Swift::Int Set<>.makeNonEmpty()(uint64_t a1)
{
  if (*(a1 + 16))
  {
  }

  else
  {
    return sub_1002E187C(&off_1005AED58);
  }
}

void Set<>.formNonEmpty()()
{
  v1 = *v0;
  if (!*(*v0 + 16))
  {
    v2 = sub_1002E187C(&off_1005AED80);

    v1 = v2;
  }

  *v0 = v1;
}

uint64_t _s16IMAP2Persistence11SyncRequestV23__derived_struct_equalsySbAC_ACtFZ_0(unsigned __int8 a1, Swift::Int a2, int a3, unsigned __int8 a4, uint64_t a5, int a6)
{
  switch(a1)
  {
    case 2u:
      if (a4 != 2)
      {
        return 0;
      }

      break;
    case 3u:
      if (a4 != 3)
      {
        return 0;
      }

      break;
    case 4u:
      if (a4 != 4)
      {
        return 0;
      }

      break;
    default:
      if (a4 - 2 < 3 || ((a4 ^ a1) & 1) != 0)
      {
        return 0;
      }

      break;
  }

  if (a2)
  {
    if (!a5)
    {
      return 0;
    }

    v6 = a6;
    v7 = a3;
    v8 = sub_1002BF750(a2, a5);
    a3 = v7;
    a6 = v6;
    if ((v8 & 1) == 0)
    {
      return 0;
    }

    return (a3 ^ a6 ^ 1) & 1;
  }

  if (!a5)
  {
    return (a3 ^ a6 ^ 1) & 1;
  }

  return 0;
}

Swift::Int sub_1002E187C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C9C0(&qword_1005CEE98, &unk_1004F2C50);
    v3 = sub_1004A66B4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 4 * v4);
      v11 = *(v3 + 40);
      sub_1004A6E94();
      sub_1004A6EE4(v10);
      result = sub_1004A6F14();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 4 * v14) != v10)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 4 * v14) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return _swiftEmptySetSingleton;
}

unint64_t sub_1002E19BC()
{
  result = qword_1005D7C38;
  if (!qword_1005D7C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D7C38);
  }

  return result;
}

unint64_t sub_1002E1A14()
{
  result = qword_1005D7C40;
  if (!qword_1005D7C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D7C40);
  }

  return result;
}

unint64_t sub_1002E1A6C()
{
  result = qword_1005D7C48;
  if (!qword_1005D7C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D7C48);
  }

  return result;
}

unint64_t sub_1002E1AC4()
{
  result = qword_1005D7C50;
  if (!qword_1005D7C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D7C50);
  }

  return result;
}

unint64_t sub_1002E1B1C()
{
  result = qword_1005D7C58[0];
  if (!qword_1005D7C58[0])
  {
    sub_10000DEFC(&qword_1005D0E38, &qword_1004D5E28);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1005D7C58);
  }

  return result;
}

uint64_t sub_1002E1B80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
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

uint64_t sub_1002E1BDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SyncRequest.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_20;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 2)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 4)
  {
    return v8 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SyncRequest.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

Swift::UInt32 (__swiftcall *UIDValidityWith.value.modify(uint64_t a1, uint64_t a2))(IMAP2Persistence::CredentialsRequestID)
{
  result = UInt32.init(_:);
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t UIDValidityWith.init(uidValidity:value:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for UIDValidityWith();
  v8 = *(*(a3 - 8) + 32);
  v9 = a4 + *(v7 + 28);

  return v8(v9, a2, a3);
}

uint64_t static UIDValidityWith<A>.__derived_struct_equals(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(type metadata accessor for UIDValidityWith() + 28);
  return sub_1004A5724() & 1;
}

uint64_t sub_1002E1F74(_DWORD *a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v5 = *(a3 + 16);
  return static UIDValidityWith<A>.__derived_struct_equals(_:_:)(a1, a2);
}

uint64_t sub_1002E1F80(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

BOOL static WindowOfInterestSize.__derived_enum_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    return (a4 & 1) != 0;
  }

  if (a4)
  {
    return 0;
  }

  return a1 == a3;
}

void WindowOfInterestSize.hash(into:)(uint64_t a1, Swift::UInt a2, char a3)
{
  if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = a2;
    sub_1004A6EB4(1uLL);
  }

  sub_1004A6EB4(v3);
}

Swift::Int WindowOfInterestSize.hashValue.getter(Swift::UInt a1, char a2)
{
  sub_1004A6E94();
  v4 = 0;
  if ((a2 & 1) == 0)
  {
    sub_1004A6EB4(1uLL);
    v4 = a1;
  }

  sub_1004A6EB4(v4);
  return sub_1004A6F14();
}

Swift::Int sub_1002E20C8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1004A6E94();
  v3 = 0;
  if ((v2 & 1) == 0)
  {
    sub_1004A6EB4(1uLL);
    v3 = v1;
  }

  sub_1004A6EB4(v3);
  return sub_1004A6F14();
}

void sub_1002E2128()
{
  if (*(v0 + 8))
  {
    v1 = 0;
  }

  else
  {
    v1 = *v0;
    sub_1004A6EB4(1uLL);
  }

  sub_1004A6EB4(v1);
}

Swift::Int sub_1002E2170()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1004A6E94();
  if (v2)
  {
    v1 = 0;
  }

  else
  {
    sub_1004A6EB4(1uLL);
  }

  sub_1004A6EB4(v1);
  return sub_1004A6F14();
}

NIOIMAPCore2::SequenceNumber __swiftcall WindowOfInterestSize.lowestSequenceNumber(messageCount:)(Swift::Int messageCount)
{
  if (v2)
  {
    LODWORD(messageCount) = 1;
    return messageCount;
  }

  v3 = messageCount - v1;
  if (__OFSUB__(messageCount, v1))
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
LABEL_9:
    __break(1u);
    return messageCount;
  }

  if ((v5 - 0x100000000) < 0xFFFFFFFF00000001)
  {
    LODWORD(messageCount) = 1;
  }

  else
  {
    LODWORD(messageCount) = v5;
  }

  return messageCount;
}

uint64_t WindowOfInterestSize.limit(serverNextUID:windowOfInterest:)(uint64_t a1, unint64_t a2, unsigned __int8 a3, uint64_t a4, unsigned __int8 a5)
{
  if (BYTE4(a1) & 1 | (a3 | a5) & 1)
  {
    return 0;
  }

  v6 = ~HIDWORD(a2) + a1;
  result = a4 - v6;
  if (__OFSUB__(a4, v6))
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1002E224C()
{
  result = qword_1005D7CE0;
  if (!qword_1005D7CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D7CE0);
  }

  return result;
}

uint64_t sub_1002E22B0(char a1, char a2)
{
  if (a1)
  {
    v2 = 6581810;
  }

  else
  {
    v2 = 7631665;
  }

  if (a2)
  {
    v3 = 6581810;
  }

  else
  {
    v3 = 7631665;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1004A6D34();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1002E2324(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE800000000000000;
    v12 = 0xE800000000000000;
    v13 = 0x64656B72616D6E75;
    if (a1 != 2)
    {
      v13 = 0x74736978456E6F6ELL;
      v12 = 0xEB00000000746E65;
    }

    v14 = 0x64656B72616DLL;
    if (a1)
    {
      v11 = 0xE600000000000000;
    }

    else
    {
      v14 = 0x7463656C65536F6ELL;
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
    v3 = 0xE600000000000000;
    v4 = 0x65746F6D6572;
    v5 = 0x646C696843736168;
    v6 = 0xEB000000006E6572;
    if (a1 != 7)
    {
      v5 = 0x6968436F4E736168;
      v6 = 0xED00006E6572646CLL;
    }

    if (a1 != 6)
    {
      v4 = v5;
      v3 = v6;
    }

    v7 = 0x697265666E496F6ELL;
    v8 = 0xEB0000000073726FLL;
    if (a1 != 4)
    {
      v7 = 0x6269726373627573;
      v8 = 0xEA00000000006465;
    }

    if (a1 <= 5u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v4;
    }

    if (v2 <= 5)
    {
      v10 = v8;
    }

    else
    {
      v10 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v17 = 0xE600000000000000;
        if (v9 != 0x64656B72616DLL)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v17 = 0xE800000000000000;
        if (v9 != 0x7463656C65536F6ELL)
        {
          goto LABEL_51;
        }
      }

      goto LABEL_49;
    }

    if (a2 == 2)
    {
      v17 = 0xE800000000000000;
      if (v9 != 0x64656B72616D6E75)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    }

    v15 = 0x74736978456E6F6ELL;
    v16 = 7630437;
    goto LABEL_44;
  }

  if (a2 <= 5u)
  {
    if (a2 != 4)
    {
      v17 = 0xEA00000000006465;
      if (v9 != 0x6269726373627573)
      {
LABEL_51:
        v18 = sub_1004A6D34();
        goto LABEL_52;
      }

      goto LABEL_49;
    }

    v15 = 0x697265666E496F6ELL;
    v16 = 7565935;
LABEL_44:
    v17 = v16 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    if (v9 != v15)
    {
      goto LABEL_51;
    }

    goto LABEL_49;
  }

  if (a2 != 6)
  {
    if (a2 != 7)
    {
      v17 = 0xED00006E6572646CLL;
      if (v9 != 0x6968436F4E736168)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    }

    v15 = 0x646C696843736168;
    v16 = 7234930;
    goto LABEL_44;
  }

  v17 = 0xE600000000000000;
  if (v9 != 0x65746F6D6572)
  {
    goto LABEL_51;
  }

LABEL_49:
  if (v10 != v17)
  {
    goto LABEL_51;
  }

  v18 = 1;
LABEL_52:

  return v18 & 1;
}

uint64_t sub_1002E260C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0xE400000000000000;
  v5 = 1953391987;
  if (a1 != 5)
  {
    v5 = 0x6873617274;
    v4 = 0xE500000000000000;
  }

  v6 = 0xE700000000000000;
  v7 = 0x64656767616C66;
  if (a1 != 3)
  {
    v7 = 1802401130;
    v6 = 0xE400000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE700000000000000;
  v9 = 0x65766968637261;
  if (a1 != 1)
  {
    v9 = 0x737466617264;
    v8 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 7105633;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE700000000000000;
        if (v10 != 0x65766968637261)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE600000000000000;
        if (v10 != 0x737466617264)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE300000000000000;
      if (v10 != 7105633)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1953391987)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x6873617274)
      {
LABEL_39:
        v13 = sub_1004A6D34();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x64656767616C66)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xE400000000000000;
    if (v10 != 1802401130)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t static WindowOfInterestSizes.__derived_struct_equals(_:_:)(unint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (sub_1002DB0E8(a1, a4))
  {
    if (a3)
    {
      if (a6)
      {
        return 1;
      }
    }

    else if ((a6 & 1) == 0 && a2 == a5)
    {
      return 1;
    }
  }

  return 0;
}

void WindowOfInterestSizes.hash(into:)(__int128 *a1, uint64_t a2, Swift::UInt a3, char a4)
{
  sub_1002E2C80(a1, a2);
  if (a4)
  {
    a3 = 0;
  }

  else
  {
    sub_1004A6EB4(1uLL);
  }

  sub_1004A6EB4(a3);
}

Swift::Int WindowOfInterestSizes.hashValue.getter(uint64_t a1, Swift::UInt a2, char a3)
{
  sub_1004A6E94();
  sub_1002E2C80(v8, a1);
  v6 = 0;
  if ((a3 & 1) == 0)
  {
    sub_1004A6EB4(1uLL);
    v6 = a2;
  }

  sub_1004A6EB4(v6);
  return sub_1004A6F14();
}

Swift::Int sub_1002E2948()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1004A6E94();
  sub_1002E2C80(v6, v1);
  v4 = 0;
  if ((v3 & 1) == 0)
  {
    sub_1004A6EB4(1uLL);
    v4 = v2;
  }

  sub_1004A6EB4(v4);
  return sub_1004A6F14();
}

void sub_1002E29BC(__int128 *a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_1002E2C80(a1, v2);
  if (v4)
  {
    v3 = 0;
  }

  else
  {
    sub_1004A6EB4(1uLL);
  }

  sub_1004A6EB4(v3);
}

Swift::Int sub_1002E2A14()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1004A6E94();
  sub_1002E2C80(v5, v2);
  if (v3)
  {
    v1 = 0;
  }

  else
  {
    sub_1004A6EB4(1uLL);
  }

  sub_1004A6EB4(v1);
  return sub_1004A6F14();
}

uint64_t sub_1002E2A88(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if ((sub_1002DB0E8(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == v4)
    {
      v7 = v5;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t WindowOfInterestSizes.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  if (!*a1)
  {
    return a3;
  }

  v6 = *(a1 + 16);
  v7 = *(a1 + 8);
  v8 = MailboxName.inbox.unsafeMutableAddressor();
  if (v7 | (v7 << 32)) == (*(v8 + 2) | (*(v8 + 2) << 32)) && (sub_1000FFC98(v4, *v8))
  {
    v9 = 1;
    if (!*(a2 + 16))
    {
      return a3;
    }

    goto LABEL_19;
  }

  if (v6 <= 3)
  {
    if (v6 <= 1 && v6)
    {

      goto LABEL_18;
    }

LABEL_14:
    v10 = sub_1004A6D34();

    if ((v10 & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_18:
    v9 = 2;
    if (!*(a2 + 16))
    {
      return a3;
    }

    goto LABEL_19;
  }

  if (v6 <= 5 || v6 == 6)
  {
    goto LABEL_14;
  }

LABEL_15:
  v9 = 0;
  if (!*(a2 + 16))
  {
    return a3;
  }

LABEL_19:
  v11 = sub_1002B375C(v9);
  if (v12)
  {
    v13 = *(a2 + 56) + 16 * v11;
    a3 = *v13;
    v14 = *(v13 + 8);
  }

  return a3;
}

void sub_1002E2C80(__int128 *a1, uint64_t a2)
{
  v4 = 0;
  v5 = 0;
  v6 = a2 + 64;
  v7 = 1 << *(a2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a2 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
LABEL_11:
    v12 = __clz(__rbit64(v9)) | (v5 << 6);
    v13 = *(*(a2 + 48) + v12);
    v14 = *(a2 + 56) + 16 * v12;
    v15 = *v14;
    v16 = *(v14 + 8);
    v19 = a1[2];
    v20 = a1[3];
    v21 = *(a1 + 8);
    v17 = *a1;
    v18 = a1[1];
    sub_1004A6EB4(v13);
    if (v16)
    {
      v15 = 0;
    }

    else
    {
      sub_1004A6EB4(1uLL);
    }

    v9 &= v9 - 1;
    sub_1004A6EB4(v15);
    v4 ^= sub_1004A6F14();
  }

  while (1)
  {
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v11 >= v10)
    {
      sub_1004A6EB4(v4);
      return;
    }

    v9 = *(v6 + 8 * v11);
    ++v5;
    if (v9)
    {
      v5 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t sub_1002E2DB8()
{
  result = qword_1005D7CE8;
  if (!qword_1005D7CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D7CE8);
  }

  return result;
}

unint64_t sub_1002E2E10()
{
  result = qword_1005D7CF0;
  if (!qword_1005D7CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D7CF0);
  }

  return result;
}

void ClientCommand.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v136 = a1;
  v3 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v135 = &v133 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v133 - v7;
  v9 = type metadata accessor for SearchReturnOption();
  v134 = *(v9 - 8);
  v10 = *(v134 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v133 - v14;
  v16 = sub_1004A44E4();
  v133 = *(v16 - 8);
  v17 = *(v133 + 64);
  __chkstk_darwin(v16);
  v19 = &v133 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v133 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v133 - v25;
  v27 = type metadata accessor for ClientCommand(0);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27);
  v30 = &v133 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002E7FC4(v2, v30, type metadata accessor for ClientCommand);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v87 = *v30;
      v88 = *(v30 + 1);
      v89 = *(v30 + 2);
      v90 = *(v30 + 3);
      sub_1004A6EB4(4uLL);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      return;
    case 2u:
      v68 = *v30;
      v69 = v136;
      sub_1004A6EB4(5uLL);
      sub_1002E5AF4(v69, v68);
      goto LABEL_30;
    case 3u:
      v79 = *v30;
      v80 = *(v30 + 2);
      v81 = *(v30 + 2);
      v82 = v136;
      sub_1004A6EB4(6uLL);
      sub_1004A6EB4(v80 | (v80 << 32));

      sub_1002E5BA4(v82, v81);
      goto LABEL_30;
    case 4u:
      v56 = *v30;
      v57 = *(v30 + 2);
      v58 = 7;
      goto LABEL_40;
    case 5u:
      v100 = *v30;
      v57 = *(v30 + 2);
      v58 = 8;
      goto LABEL_40;
    case 6u:
      v104 = *v30;
      v57 = *(v30 + 2);
      v58 = 9;
LABEL_40:
      sub_1004A6EB4(v58);
      sub_1004A6EB4(v57 | (v57 << 32));
      goto LABEL_30;
    case 7u:
      v83 = *v30;
      v84 = *(v30 + 2);
      v85 = *(v30 + 2);
      v86 = *(v30 + 6);
      sub_1004A6EB4(0xAuLL);
      sub_1004A6EB4(v84 | (v84 << 32));

      sub_1004A6EB4(v86 | (v86 << 32));
      goto LABEL_30;
    case 8u:
      v116 = *v30;
      v117 = *(v30 + 2);
      v118 = *(v30 + 2);
      v119 = *(v30 + 6);
      v120 = *(v30 + 4);
      v121 = v136;
      sub_1004A6EB4(0xBuLL);
      if (v116)
      {
        sub_1004A6EC4(1u);
        sub_1004A6EB4(v117 | (v117 << 32));
      }

      else
      {
        sub_1004A6EC4(0);
      }

      if (v118)
      {
        sub_1004A6EC4(1u);
        sub_1004A6EB4(v119 | (v119 << 32));
      }

      else
      {
        sub_1004A6EC4(0);
      }

      sub_1004A6EB4(*(v120 + 16));
      v128 = *(v120 + 16);
      if (v128)
      {
        v129 = 32;
        do
        {
          v130 = *(v120 + v129);
          v131 = *(v120 + v129 + 16);
          v132 = *(v120 + v129 + 48);
          *&v139[16] = *(v120 + v129 + 32);
          v140 = v132;
          v138 = v130;
          *v139 = v131;
          sub_1002E802C(&v138, v137);
          ReturnOption.hash(into:)(v121);
          sub_1002E8088(&v138);
          v129 += 64;
          --v128;
        }

        while (v128);
      }

      goto LABEL_30;
    case 9u:
      v64 = *v30;
      v65 = *(v30 + 2);
      v66 = *(v30 + 2);
      v67 = v136;
      sub_1004A6EB4(0xCuLL);
      sub_1004A6EB4(v65 | (v65 << 32));

      sub_1002E5960(v67, v66);
      goto LABEL_30;
    case 0xAu:
      v107 = *v30;
      v108 = *(v30 + 2);
      v109 = *(v30 + 2);
      v110 = sub_10000C9C0(&qword_1005D0F18, &unk_1004E53C0);
      v111 = *(v110 + 64);
      v112 = &v30[*(v110 + 80)];
      v113 = *v112;
      v134 = v112[1];
      v135 = v113;
      sub_100025FDC(&v30[v111], v26, &qword_1005D0F20, &qword_1004E9390);
      v114 = v136;
      sub_1004A6EB4(0xDuLL);
      sub_1004A6EB4(v108 | (v108 << 32));

      sub_100092C14(v114, v109);

      sub_10000E268(v26, v23, &qword_1005D0F20, &qword_1004E9390);
      v115 = v133;
      if ((*(v133 + 48))(v23, 1, v16) == 1)
      {
        sub_1004A6EC4(0);
      }

      else
      {
        (*(v115 + 32))(v19, v23, v16);
        sub_1004A6EC4(1u);
        sub_1002E87C0(&qword_1005D7D20, &type metadata accessor for Date);
        sub_1004A5564();
        (*(v115 + 8))(v19, v16);
      }

      v127 = v134;
      v126 = v135;
      sub_1004A4424();
      sub_100014D40(v126, v127);
      sub_100025F40(v26, &qword_1005D0F20, &qword_1004E9390);
      return;
    case 0xBu:
      v54 = *v30;
      v55 = 18;
      goto LABEL_38;
    case 0xCu:
      v49 = *v30;
      v59 = *(v30 + 1);
      v60 = v136;
      sub_1004A6EB4(0x13uLL);
      SearchKey.hash(into:)(v60, v49);
      sub_1004A6EB4(*(v59 + 16));
      v61 = *(v59 + 16);
      if (v61)
      {
        v62 = v59 + ((*(v134 + 80) + 32) & ~*(v134 + 80));
        v63 = *(v134 + 72);
        do
        {
          sub_1002E7FC4(v62, v15, type metadata accessor for SearchReturnOption);
          SearchReturnOption.hash(into:)();
          sub_1002E80DC(v15, type metadata accessor for SearchReturnOption);
          v62 += v63;
          --v61;
        }

        while (v61);
      }

      goto LABEL_18;
    case 0xDu:
      v54 = *v30;
      v55 = 20;
LABEL_38:
      v103 = v136;
      sub_1004A6EB4(v55);
      SearchKey.hash(into:)(v103, v54);
      sub_1000B37D8(v54);
      return;
    case 0xEu:
      v49 = *v30;
      v48 = *(v30 + 1);
      v50 = v136;
      sub_1004A6EB4(0x15uLL);
      SearchKey.hash(into:)(v50, v49);
      sub_1004A6EB4(*(v48 + 16));
      v51 = *(v48 + 16);
      if (v51)
      {
        v52 = v48 + ((*(v134 + 80) + 32) & ~*(v134 + 80));
        v53 = *(v134 + 72);
        do
        {
          sub_1002E7FC4(v52, v12, type metadata accessor for SearchReturnOption);
          SearchReturnOption.hash(into:)();
          sub_1002E80DC(v12, type metadata accessor for SearchReturnOption);
          v52 += v53;
          --v51;
        }

        while (v51);
      }

LABEL_18:
      sub_1000B37D8(v49);
LABEL_30:

      return;
    case 0xFu:
      v70 = &v30[*(sub_10000C9C0(&qword_1005CD558, &unk_1004CF330) + 48)];
      v71 = *v70;
      v72 = *(v70 + 1);
      v73 = v70[16];
      sub_100025FDC(v30, v8, &unk_1005D91B0, &unk_1004CF400);
      v74 = v136;
      sub_1004A6EB4(0x16uLL);
      sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
      sub_1000956A0();
      sub_1004A5564();
      sub_1004A6EB4(*(v71 + 16));
      v75 = *(v71 + 16);
      if (v75)
      {
        v76 = (v71 + 32);
        do
        {
          v77 = *v76;
          v78 = v76[1];
          *&v139[13] = *(v76 + 29);
          v138 = v77;
          *v139 = v78;
          sub_1002E7F14(&v138, v137);
          FetchAttribute.hash(into:)(v74);
          sub_1002E7F70(&v138);
          v76 = (v76 + 40);
          --v75;
        }

        while (v75);
      }

      if (v73)
      {
        sub_1004A6EC4(0);
      }

      else
      {
        sub_1004A6EC4(1u);
        sub_1004A6EF4(v72);
      }

      sub_100025F40(v8, &unk_1005D91B0, &unk_1004CF400);
      return;
    case 0x10u:
      v40 = &v30[*(sub_10000C9C0(&qword_1005D0488, &qword_1004DA4C0) + 48)];
      v41 = *v40;
      v42 = v40[1];
      v43 = *(v40 + 1);
      v44 = v135;
      sub_100025FDC(v30, v135, &unk_1005D91B0, &unk_1004CF400);
      v45 = v136;
      sub_1004A6EB4(0x17uLL);
      sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
      sub_1000956A0();
      sub_1004A5564();
      if (v42)
      {
        v46 = 256;
      }

      else
      {
        v46 = 0;
      }

      StoreFlags.hash(into:)(v45, v46 | v41, v43);

      v47 = v44;
      goto LABEL_44;
    case 0x11u:
      v91 = &v30[*(sub_10000C9C0(&qword_1005D0480, &qword_1004D3D00) + 48)];
      v92 = *v91;
      v93 = *(v91 + 2);
      v94 = v135;
      sub_100025FDC(v30, v135, &unk_1005D91B0, &unk_1004CF400);
      v95 = 24;
      goto LABEL_43;
    case 0x12u:
      v105 = &v30[*(sub_10000C9C0(&qword_1005D0480, &qword_1004D3D00) + 48)];
      v106 = *v105;
      v93 = *(v105 + 2);
      v94 = v135;
      sub_100025FDC(v30, v135, &unk_1005D91B0, &unk_1004CF400);
      v95 = 25;
LABEL_43:
      sub_1004A6EB4(v95);
      sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
      sub_1000956A0();
      sub_1004A5564();
      sub_1004A6EB4(v93 | (v93 << 32));

      v47 = v94;
LABEL_44:
      sub_100025F40(v47, &unk_1005D91B0, &unk_1004CF400);
      return;
    case 0x13u:
      v123 = *v30;
      v122 = *(v30 + 1);
      v124 = *(v30 + 2);
      v125 = v30[24];
      sub_1004A6EB4(0x1AuLL);
      sub_1004A6EB4(v123);
      if (v125 == 1)
      {
        goto LABEL_51;
      }

      sub_1004A6EC4(1u);
      sub_1004A6EB4(v122);
      v39 = v124;
LABEL_56:
      sub_1004A6EB4(v39);
      break;
    case 0x14u:
      v96 = *v30;
      v97 = *(v30 + 1);
      v98 = *(v30 + 2);
      v99 = v136;
      sub_1004A6EB4(0x1BuLL);
      sub_1002E5DBC(v99, v97, v98);

      goto LABEL_34;
    case 0x15u:
      v101 = *(v30 + 1);
      v138 = *v30;
      *v139 = v101;
      v102 = *(v30 + 3);
      *&v139[16] = *(v30 + 2);
      v140 = v102;
      sub_1004A6EB4(0x1CuLL);
      PushRegistrationInfo.hash(into:)();
      sub_10021D02C(&v138);
      return;
    case 0x16u:
      v39 = 0;
      goto LABEL_56;
    case 0x17u:
      v39 = 1;
      goto LABEL_56;
    case 0x18u:
      v39 = 2;
      goto LABEL_56;
    case 0x19u:
      v39 = 14;
      goto LABEL_56;
    case 0x1Au:
      v39 = 15;
      goto LABEL_56;
    case 0x1Bu:
      v39 = 16;
      goto LABEL_56;
    case 0x1Cu:
      v39 = 17;
      goto LABEL_56;
    case 0x1Du:
      v39 = 29;
      goto LABEL_56;
    default:
      v31 = *v30;
      v32 = *(v30 + 1);
      v33 = *(v30 + 2);
      v34 = *(v30 + 3);
      v35 = v30[38];
      v36 = *(v30 + 18);
      v37 = *(v30 + 8);
      v38 = v136;
      sub_1004A6EB4(3uLL);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      if (v33)
      {
        sub_1004A6EC4(1u);
        QuotaRoot.hash(into:)(v38, v33, v34, (v37 | ((v36 | (v35 << 16)) << 32)) & 0xFFFFFFFFFFFFFFLL);
LABEL_34:
      }

      else
      {
LABEL_51:
        sub_1004A6EC4(0);
      }

      break;
  }
}

Swift::Int ClientCommand.hashValue.getter()
{
  sub_1004A6E94();
  ClientCommand.hash(into:)(v1);
  return sub_1004A6F14();
}

Swift::Int sub_1002E3BD8()
{
  sub_1004A6E94();
  ClientCommand.hash(into:)(v1);
  return sub_1004A6F14();
}

void ClientCommand.FetchData.hash(into:)(uint64_t a1, uint64_t a2, Swift::UInt64 a3, char a4)
{
  v8 = *(a2 + 16);
  sub_1004A6EB4(v8);
  if (v8)
  {
    v9 = (a2 + 32);
    do
    {
      v10 = v9[1];
      v12 = *v9;
      v13[0] = v10;
      *(v13 + 13) = *(v9 + 29);
      sub_1002E7F14(&v12, v11);
      FetchAttribute.hash(into:)(a1);
      sub_1002E7F70(&v12);
      v9 = (v9 + 40);
      --v8;
    }

    while (v8);
  }

  if (a4)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EF4(a3);
  }
}

Swift::Int ClientCommand.FetchData.hashValue.getter(uint64_t a1, Swift::UInt64 a2, char a3)
{
  sub_1004A6E94();
  ClientCommand.FetchData.hash(into:)(v7, a1, a2, a3 & 1);
  return sub_1004A6F14();
}

Swift::Int sub_1002E3D38()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1004A6E94();
  ClientCommand.FetchData.hash(into:)(v5, v1, v2, v3);
  return sub_1004A6F14();
}

Swift::Int sub_1002E3DA0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1004A6E94();
  ClientCommand.FetchData.hash(into:)(v5, v1, v2, v3);
  return sub_1004A6F14();
}

uint64_t static ClientCommand.uidFetch(messages:items:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a3 + *(sub_10000C9C0(&qword_1005CD558, &unk_1004CF330) + 48);
  sub_10000E268(a1, a3, &unk_1005D91B0, &unk_1004CF400);
  *v6 = a2;
  *(v6 + 8) = 0;
  *(v6 + 16) = 1;
  type metadata accessor for ClientCommand(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t ClientCommand.kind.getter()
{
  v1 = type metadata accessor for ClientCommand(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = (&v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1002E7FC4(v0, v4, type metadata accessor for ClientCommand);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_1002E80DC(v4, type metadata accessor for ClientCommand);
      result = 4;
      break;
    case 2:
      sub_1002E80DC(v4, type metadata accessor for ClientCommand);
      result = 5;
      break;
    case 3:
      sub_1002E80DC(v4, type metadata accessor for ClientCommand);
      result = 6;
      break;
    case 4:
      sub_1002E80DC(v4, type metadata accessor for ClientCommand);
      result = 7;
      break;
    case 5:
      sub_1002E80DC(v4, type metadata accessor for ClientCommand);
      result = 8;
      break;
    case 6:
      sub_1002E80DC(v4, type metadata accessor for ClientCommand);
      result = 9;
      break;
    case 7:
      sub_1002E80DC(v4, type metadata accessor for ClientCommand);
      result = 10;
      break;
    case 8:
      sub_1002E80DC(v4, type metadata accessor for ClientCommand);
      result = 11;
      break;
    case 9:
      sub_1002E80DC(v4, type metadata accessor for ClientCommand);
      result = 12;
      break;
    case 10:
      v8 = *v4;

      v9 = v4[2];

      v10 = sub_10000C9C0(&qword_1005D0F18, &unk_1004E53C0);
      v11 = *(v10 + 64);
      sub_100014D40(*(v4 + *(v10 + 80)), *(v4 + *(v10 + 80) + 8));
      sub_100025F40(v4 + v11, &qword_1005D0F20, &qword_1004E9390);
      result = 13;
      break;
    case 11:
      sub_1002E80DC(v4, type metadata accessor for ClientCommand);
      result = 18;
      break;
    case 12:
      sub_1002E80DC(v4, type metadata accessor for ClientCommand);
      result = 19;
      break;
    case 13:
      sub_1002E80DC(v4, type metadata accessor for ClientCommand);
      result = 20;
      break;
    case 14:
      sub_1002E80DC(v4, type metadata accessor for ClientCommand);
      result = 21;
      break;
    case 15:
      v7 = *(v4 + *(sub_10000C9C0(&qword_1005CD558, &unk_1004CF330) + 48));

      sub_100025F40(v4, &unk_1005D91B0, &unk_1004CF400);
      result = 22;
      break;
    case 16:
      v12 = *(v4 + *(sub_10000C9C0(&qword_1005D0488, &qword_1004DA4C0) + 48) + 8);

      sub_100025F40(v4, &unk_1005D91B0, &unk_1004CF400);
      result = 24;
      break;
    case 17:
      v13 = *(v4 + *(sub_10000C9C0(&qword_1005D0480, &qword_1004D3D00) + 48));

      sub_100025F40(v4, &unk_1005D91B0, &unk_1004CF400);
      result = 25;
      break;
    case 18:
      v14 = *(v4 + *(sub_10000C9C0(&qword_1005D0480, &qword_1004D3D00) + 48));

      sub_100025F40(v4, &unk_1005D91B0, &unk_1004CF400);
      result = 23;
      break;
    case 19:
      result = 29;
      break;
    case 20:
      sub_1002E80DC(v4, type metadata accessor for ClientCommand);
      result = 26;
      break;
    case 21:
      sub_1002E80DC(v4, type metadata accessor for ClientCommand);
      result = 27;
      break;
    case 22:
      return result;
    case 23:
      result = 1;
      break;
    case 24:
      result = 2;
      break;
    case 25:
      result = 14;
      break;
    case 26:
      result = 15;
      break;
    case 27:
      result = 16;
      break;
    case 28:
      result = 17;
      break;
    case 29:
      result = 28;
      break;
    default:
      sub_1002E80DC(v4, type metadata accessor for ClientCommand);
      result = 3;
      break;
  }

  return result;
}

unint64_t ClientCommand.logIdentifier.getter()
{
  v1 = type metadata accessor for ClientCommand(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = (&v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1002E7FC4(v0, v4, type metadata accessor for ClientCommand);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x494C494241504143;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_1002E80DC(v4, type metadata accessor for ClientCommand);
      result = 0x4E49474F4CLL;
      break;
    case 2:
      sub_1002E80DC(v4, type metadata accessor for ClientCommand);
      result = 0x454C42414E45;
      break;
    case 3:
      sub_1002E80DC(v4, type metadata accessor for ClientCommand);
      result = 0x5443454C4553;
      break;
    case 4:
      sub_1002E80DC(v4, type metadata accessor for ClientCommand);
      result = 0x454E494D415845;
      break;
    case 5:
      sub_1002E80DC(v4, type metadata accessor for ClientCommand);
      result = 0x455441455243;
      break;
    case 6:
      sub_1002E80DC(v4, type metadata accessor for ClientCommand);
      result = 0x4554454C4544;
      break;
    case 7:
      sub_1002E80DC(v4, type metadata accessor for ClientCommand);
      result = 0x454D414E4552;
      break;
    case 8:
      sub_1002E80DC(v4, type metadata accessor for ClientCommand);
      result = 1414744396;
      break;
    case 9:
      sub_1002E80DC(v4, type metadata accessor for ClientCommand);
      result = 0x535554415453;
      break;
    case 10:
      v8 = *v4;

      v9 = v4[2];

      v10 = sub_10000C9C0(&qword_1005D0F18, &unk_1004E53C0);
      v11 = *(v10 + 64);
      sub_100014D40(*(v4 + *(v10 + 80)), *(v4 + *(v10 + 80) + 8));
      sub_100025F40(v4 + v11, &qword_1005D0F20, &qword_1004E9390);
      result = 0x444E45505041;
      break;
    case 11:
      sub_1002E80DC(v4, type metadata accessor for ClientCommand);
      result = 0x5241455320444955;
      break;
    case 12:
      sub_1002E80DC(v4, type metadata accessor for ClientCommand);
      result = 0xD000000000000015;
      break;
    case 13:
      sub_1002E80DC(v4, type metadata accessor for ClientCommand);
      result = 0x484352414553;
      break;
    case 14:
    case 21:
      sub_1002E80DC(v4, type metadata accessor for ClientCommand);
      result = 0xD000000000000011;
      break;
    case 15:
      v7 = *(v4 + *(sub_10000C9C0(&qword_1005CD558, &unk_1004CF330) + 48));

      sub_100025F40(v4, &unk_1005D91B0, &unk_1004CF400);
      result = 0x4354454620444955;
      break;
    case 16:
      v12 = *(v4 + *(sub_10000C9C0(&qword_1005D0488, &qword_1004DA4C0) + 48) + 8);

      sub_100025F40(v4, &unk_1005D91B0, &unk_1004CF400);
      result = 0x524F545320444955;
      break;
    case 17:
      v13 = *(v4 + *(sub_10000C9C0(&qword_1005D0480, &qword_1004D3D00) + 48));

      sub_100025F40(v4, &unk_1005D91B0, &unk_1004CF400);
      result = 0x59504F4320444955;
      break;
    case 18:
      v14 = *(v4 + *(sub_10000C9C0(&qword_1005D0480, &qword_1004D3D00) + 48));

      sub_100025F40(v4, &unk_1005D91B0, &unk_1004CF400);
      result = 0x45564F4D20444955;
      break;
    case 19:
      result = 0x4843544142444955;
      break;
    case 20:
      sub_1002E80DC(v4, type metadata accessor for ClientCommand);
      result = 17481;
      break;
    case 22:
      return result;
    case 23:
      result = 1347374926;
      break;
    case 24:
      result = 0x534C545452415453;
      break;
    case 25:
      result = 0x43415053454D414ELL;
      break;
    case 26:
      result = 0x4B43454843;
      break;
    case 27:
      result = 0x45534F4C43;
      break;
    case 28:
      result = 0x45474E55505845;
      break;
    case 29:
      result = 0x53534552504D4F43;
      break;
    default:
      sub_1002E80DC(v4, type metadata accessor for ClientCommand);
      result = 0x49544E4548545541;
      break;
  }

  return result;
}

uint64_t LoggableCommand.tag.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = HIDWORD(result);
  return result;
}

uint64_t LoggableCommand.command.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for LoggableCommand(0) + 20);

  return sub_1002E815C(a1, v3);
}

uint64_t LoggableCommand.init(tag:command:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 4) = HIDWORD(a1);
  v4 = a3 + *(type metadata accessor for LoggableCommand(0) + 20);

  return sub_10000F8F8(a2, v4);
}

Swift::String __swiftcall LoggableCommand.makeDescriptionWithoutPII()()
{
  v1 = sub_1004A5384();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v46 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = v40 - v6;
  v8 = type metadata accessor for ClientCommand.Encoded();
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v12 = (v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = v0 + *(type metadata accessor for LoggableCommand(0) + 20);
  v14 = *(v0 + 4);
  v47[16] = *v0;
  v48 = v14;
  v49 = v13;
  sub_1002EFAE8(sub_1002E81C0, v47, 0x10000u, v12);
  if (*(*(v12 + *(v9 + 28)) + 16))
  {
    v45 = v7;
    sub_10000C9C0(&qword_1005D7D28, &qword_1004F2E88);
    v15 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v44 = *(v2 + 72);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1004CEAA0;
    v17 = *(v2 + 16);
    v42 = v1;
    v17(v16 + v15, v12, v1);
    v50 = v16;

    sub_1002E5134(v18, sub_1002FAB68, &type metadata accessor for DispatchData);
    v19 = v50;
    v20 = v50[2];
    if (v20)
    {
      v43 = v2 + 16;
      v41 = v12;
      v50 = _swiftEmptyArrayStorage;
      sub_100091A08(0, v20, 0);
      v21 = v50;
      v40[1] = v19;
      v22 = (v19 + v15);
      v23 = (v2 + 8);
      v24 = v42;
      do
      {
        v25 = v45;
        v17(v45, v22, v24);
        v26 = v46;
        v17(v46, v25, v24);
        v27 = sub_1002E81D4(v26);
        v29 = v28;
        (*v23)(v25, v24);
        v50 = v21;
        v31 = v21[2];
        v30 = v21[3];
        if (v31 >= v30 >> 1)
        {
          sub_100091A08((v30 > 1), v31 + 1, 1);
          v24 = v42;
          v21 = v50;
        }

        v21[2] = v31 + 1;
        v32 = &v21[2 * v31];
        v32[4] = v27;
        v32[5] = v29;
        v22 = (v22 + v44);
        --v20;
      }

      while (v20);

      v12 = v41;
    }

    else
    {

      v21 = _swiftEmptyArrayStorage;
    }

    v50 = v21;
    sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
    sub_100031CDC();
    v33 = sub_1004A5614();
    v35 = v36;
  }

  else
  {
    (*(v2 + 16))(v7, v12, v1);
    v33 = sub_1002E81D4(v7);
    v35 = v34;
  }

  sub_1002E80DC(v12, type metadata accessor for ClientCommand.Encoded);
  v37 = v33;
  v38 = v35;
  result._object = v38;
  result._countAndFlagsBits = v37;
  return result;
}

double variable initialization expression of MessageData.bodyStructure@<D0>(uint64_t a1@<X8>)
{
  sub_1000519AC(v8);
  v2 = v16;
  *(a1 + 128) = v15;
  *(a1 + 144) = v2;
  *(a1 + 160) = v17;
  *(a1 + 176) = v18;
  v3 = v12;
  *(a1 + 64) = v11;
  *(a1 + 80) = v3;
  v4 = v14;
  *(a1 + 96) = v13;
  *(a1 + 112) = v4;
  v5 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v5;
  result = *&v9;
  v7 = v10;
  *(a1 + 32) = v9;
  *(a1 + 48) = v7;
  return result;
}

double variable initialization expression of MessageData.envelope@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t variable initialization expression of MessageData.BodySection.data@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for MessageData.BodyData();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t ServerResponseTranscoder.init()()
{
  v0 = *sub_1004A47B4();
}

uint64_t sub_1002E5134(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  v10 = *v3;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v11 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  v12 = *(result - 8);
  if (v11 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = *(v12 + 72);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v15 = *(v5 + 16);
  v16 = __OFADD__(v15, v4);
  v17 = v15 + v4;
  if (!v16)
  {
    *(v5 + 16) = v17;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

char *sub_1002E5278(char *a1, int64_t a2, char a3)
{
  result = sub_1002E5384(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1002E5298(size_t a1, int64_t a2, char a3)
{
  result = sub_1002E5488(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1002E52B8(size_t a1, int64_t a2, char a3)
{
  result = sub_1002E5678(a1, a2, a3, *v3, &qword_1005D7F40, &qword_1004F30D8, type metadata accessor for SelectParameter);
  *v3 = result;
  return result;
}

size_t sub_1002E52FC(size_t a1, int64_t a2, char a3)
{
  result = sub_1002E5678(a1, a2, a3, *v3, &qword_1005D7F30, &unk_1004F3D80, type metadata accessor for CommandStreamPart);
  *v3 = result;
  return result;
}

size_t sub_1002E5340(size_t a1, int64_t a2, char a3)
{
  result = sub_1002E5678(a1, a2, a3, *v3, &qword_1005D7F38, &qword_1004F30D0, type metadata accessor for ParameterValue);
  *v3 = result;
  return result;
}

char *sub_1002E5384(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C9C0(&qword_1005D7F58, &unk_100509A10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

size_t sub_1002E5488(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000C9C0(&qword_1005D7F48, &qword_10050A090);
  v10 = *(sub_10000C9C0(&qword_1005D7F50, &unk_100502FF0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10000C9C0(&qword_1005D7F50, &unk_100502FF0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_1002E5678(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000C9C0(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1002E5854(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C9C0(&qword_1005CEE68, &unk_1004D1B40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1002E5960(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  sub_1004A6EB4(v3);
  if (v3)
  {
    v4 = (a2 + 32);
    do
    {
      v5 = *v4++;
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      --v3;
    }

    while (v3);
  }
}

void sub_1002E5AF4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  sub_1004A6EB4(v3);
  if (v3)
  {
    v4 = (a2 + 56);
    do
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v7 = *(v4 - 1);
      v8 = *v4;

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      if (v8 == 1)
      {
        sub_1004A6EC4(0);
      }

      else
      {
        sub_1004A6EC4(1u);
        sub_1004A6EF4(v7 >> 14);
      }

      v4 += 32;
      --v3;
    }

    while (v3);
  }
}

void sub_1002E5BA4(__int128 *a1, uint64_t a2)
{
  v15 = a1[2];
  v16 = a1[3];
  v17 = *(a1 + 8);
  v13 = *a1;
  v14 = a1[1];
  sub_1004A6F14();
  v3 = 0;
  v4 = 0;
  v7 = *(a2 + 56);
  v6 = a2 + 56;
  v5 = v7;
  v8 = 1 << *(v6 - 24);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
LABEL_4:
    v10 &= v10 - 1;
    sub_1004A6E94();
    sub_1004A6EB4(0);
    v3 ^= sub_1004A6F14();
  }

  while (1)
  {
    v12 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v12 >= v11)
    {
      sub_1004A6EB4(v3);
      return;
    }

    v10 = *(v6 + 8 * v12);
    ++v4;
    if (v10)
    {
      v4 = v12;
      goto LABEL_4;
    }
  }

  __break(1u);
}

uint64_t sub_1002E5CA8(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v6 = *(result + 16);
  if (v6 != *(a4 + 16))
  {
    return 0;
  }

  if (v6)
  {
    v11 = result == a4;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = result + 32;
    v13 = (a4 + 32);
    while (1)
    {
      v14 = *(v12 + 16);
      v18 = *v12;
      v19[0] = v14;
      *(v19 + 13) = *(v12 + 29);
      if (!v6)
      {
        break;
      }

      v15 = v13[1];
      v20 = *v13;
      v21[0] = v15;
      *(v21 + 13) = *(v13 + 29);
      sub_1002E7F14(&v18, v17);
      sub_1002E7F14(&v20, v17);
      v16 = static FetchAttribute.__derived_enum_equals(_:_:)(&v18, &v20);
      sub_1002E7F70(&v20);
      result = sub_1002E7F70(&v18);
      if ((v16 & 1) == 0)
      {
        return 0;
      }

      v13 = (v13 + 40);
      v12 += 40;
      if (!--v6)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_10:
  if (a3)
  {
    return (a6 & 1) != 0;
  }

  if (a6)
  {
    return 0;
  }

  if (((a5 | a2) & 0x8000000000000000) == 0)
  {
    return a5 == a2;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1002E5DBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  sub_1004A6EB4(v5);

  if (v5)
  {
    v7 = 0;
    v8 = (a3 + 40);
    v9 = (a2 + 40);
    while (v7 < *(a2 + 16))
    {
      v11 = *(v9 - 1);
      v10 = *v9;
      v13 = *(v8 - 1);
      v12 = *v8;

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      if (v12)
      {
        sub_1004A6EC4(1u);
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      }

      else
      {
        sub_1004A6EC4(0);
      }

      ++v7;

      v8 += 2;
      v9 += 2;
      if (v5 == v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
  }

  return result;
}

uint64_t _s13IMAP2Protocol13ClientCommandO21__derived_enum_equalsySbAC_ACtFZ_0(unint64_t a1, char *a2)
{
  v308 = a1;
  v309 = a2;
  v2 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v289 = &v279 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v288 = &v279 - v6;
  __chkstk_darwin(v7);
  v287 = &v279 - v8;
  __chkstk_darwin(v9);
  v286 = &v279 - v10;
  v285 = sub_1004A44E4();
  v283 = *(v285 - 8);
  v11 = *(v283 + 64);
  __chkstk_darwin(v285);
  v280 = &v279 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v282 = sub_10000C9C0(&qword_1005D6770, &qword_1004EC278);
  v13 = *(*(v282 - 8) + 64);
  __chkstk_darwin(v282);
  v284 = &v279 - v14;
  v15 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v281 = &v279 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v290 = &v279 - v19;
  __chkstk_darwin(v20);
  v306 = &v279 - v21;
  v307 = type metadata accessor for ClientCommand(0);
  v22 = *(*(v307 - 8) + 64);
  __chkstk_darwin(v307);
  v301 = (&v279 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v299 = (&v279 - v25);
  __chkstk_darwin(v26);
  v300 = &v279 - v27;
  __chkstk_darwin(v28);
  v305 = &v279 - v29;
  __chkstk_darwin(v30);
  v304 = &v279 - v31;
  __chkstk_darwin(v32);
  v303 = &v279 - v33;
  __chkstk_darwin(v34);
  v302 = &v279 - v35;
  __chkstk_darwin(v36);
  v297 = (&v279 - v37);
  __chkstk_darwin(v38);
  v296 = (&v279 - v39);
  __chkstk_darwin(v40);
  v295 = (&v279 - v41);
  __chkstk_darwin(v42);
  v294 = (&v279 - v43);
  __chkstk_darwin(v44);
  v298 = &v279 - v45;
  __chkstk_darwin(v46);
  v293 = &v279 - v47;
  __chkstk_darwin(v48);
  v50 = &v279 - v49;
  __chkstk_darwin(v51);
  v292 = &v279 - v52;
  __chkstk_darwin(v53);
  v291 = &v279 - v54;
  __chkstk_darwin(v55);
  v57 = &v279 - v56;
  __chkstk_darwin(v58);
  v60 = &v279 - v59;
  __chkstk_darwin(v61);
  v63 = &v279 - v62;
  __chkstk_darwin(v64);
  v66 = (&v279 - v65);
  __chkstk_darwin(v67);
  v69 = (&v279 - v68);
  __chkstk_darwin(v70);
  v72 = &v279 - v71;
  v73 = sub_10000C9C0(&qword_1005D7F60, &unk_1004F30E0);
  v74 = *(*(v73 - 8) + 64);
  __chkstk_darwin(v73 - 8);
  v76 = &v279 - v75;
  v78 = &v279 + *(v77 + 56) - v75;
  sub_1002E7FC4(v308, &v279 - v75, type metadata accessor for ClientCommand);
  v79 = v309;
  v309 = v78;
  sub_1002E7FC4(v79, v78, type metadata accessor for ClientCommand);
  v310 = v76;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v88 = v310;
      sub_1002E7FC4(v310, v69, type metadata accessor for ClientCommand);
      v160 = *v69;
      v159 = v69[1];
      v162 = v69[2];
      v161 = v69[3];
      v163 = v309;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_124;
      }

      v164 = *v163;
      v165 = v163[1];
      v167 = v163[2];
      v166 = v163[3];
      if (v160 == v164 && v159 == v165)
      {
      }

      else
      {
        v261 = sub_1004A6D34();

        if ((v261 & 1) == 0)
        {
          goto LABEL_147;
        }
      }

      if (v162 == v167 && v161 == v166)
      {

        goto LABEL_167;
      }

      v197 = sub_1004A6D34();

      goto LABEL_81;
    case 2u:
      v88 = v310;
      sub_1002E7FC4(v310, v66, type metadata accessor for ClientCommand);
      v127 = *v66;
      v128 = v309;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_125;
      }

      v124 = sub_1001CE84C(v127, *v128);
      goto LABEL_34;
    case 3u:
      v88 = v310;
      sub_1002E7FC4(v310, v63, type metadata accessor for ClientCommand);
      v141 = *v63;
      v142 = *(v63 + 2);
      v143 = v309;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_122;
      }

      v144 = *v143;
      v145 = *(v143 + 2);
      v146 = *(v143 + 2);
      if ((*(v63 + 2) | (*(v63 + 2) << 32)) != (v145 | (v145 << 32)))
      {
        goto LABEL_140;
      }

      v147 = sub_1000FFC98(v141, v144);

      if ((v147 & 1) == 0)
      {
        goto LABEL_147;
      }

      v124 = sub_100083010(v142, v146);
      goto LABEL_34;
    case 4u:
      v88 = v310;
      sub_1002E7FC4(v310, v60, type metadata accessor for ClientCommand);
      v111 = *v60;
      v112 = v309;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_125;
      }

      v113 = *(v60 + 2);
      goto LABEL_78;
    case 5u:
      v88 = v310;
      sub_1002E7FC4(v310, v57, type metadata accessor for ClientCommand);
      v111 = *v57;
      v112 = v309;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_125;
      }

      v113 = *(v57 + 2);
      goto LABEL_78;
    case 6u:
      v88 = v310;
      v196 = v291;
      sub_1002E7FC4(v310, v291, type metadata accessor for ClientCommand);
      v111 = *v196;
      v112 = v309;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_125;
      }

      v113 = *(v196 + 8);
LABEL_78:
      v154 = *v112;
      v157 = v113 | (v113 << 32);
      v158 = *(v112 + 2) | (*(v112 + 2) << 32);
      goto LABEL_79;
    case 7u:
      v88 = v310;
      v148 = v292;
      sub_1002E7FC4(v310, v292, type metadata accessor for ClientCommand);
      v149 = *v148;
      v111 = *(v148 + 16);
      v150 = *(v148 + 24);
      v151 = v309;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
LABEL_124:

        goto LABEL_125;
      }

      v152 = *(v148 + 8);
      v153 = *v151;
      v154 = *(v151 + 2);
      if ((v152 | (v152 << 32)) != (*(v151 + 2) | (*(v151 + 2) << 32)))
      {

        goto LABEL_147;
      }

      v155 = *(v151 + 6);
      v156 = sub_1000FFC98(v149, *v151);

      if ((v156 & 1) == 0)
      {
        goto LABEL_147;
      }

      v157 = v150 | (v150 << 32);
      v158 = v155 | (v155 << 32);
LABEL_79:
      if (v157 != v158)
      {
        goto LABEL_147;
      }

      v197 = sub_1000FFC98(v111, v154);

LABEL_81:

      if (v197)
      {
        goto LABEL_167;
      }

      goto LABEL_148;
    case 8u:
      v88 = v310;
      sub_1002E7FC4(v310, v50, type metadata accessor for ClientCommand);
      v230 = *v50;
      v231 = *(v50 + 2);
      v232 = *(v50 + 2);
      v233 = *(v50 + 6);
      v234 = *(v50 + 4);
      v235 = v309;
      if (swift_getEnumCaseMultiPayload() != 8)
      {

        goto LABEL_125;
      }

      v236 = *v235;
      v237 = *(v235 + 2);
      v238 = *(v235 + 6);
      v239 = *(v235 + 4);
      if (v230)
      {
        if (v236)
        {
          if ((v231 | (v231 << 32)) == (*(v309 + 2) | (*(v309 + 2) << 32)))
          {
            v240 = sub_1000FFC98(v230, *v235);

            if (v240)
            {
LABEL_169:
              if (!v232)
              {
                v229 = v310;
                if (v237)
                {

                  goto LABEL_190;
                }

                goto LABEL_193;
              }

              if (v237)
              {
                if ((v233 | (v233 << 32)) == (v238 | (v238 << 32)))
                {
                  v269 = sub_1000FFC98(v232, v237);

                  v229 = v310;
                  if ((v269 & 1) == 0)
                  {

LABEL_190:

                    goto LABEL_200;
                  }

LABEL_193:
                  v102 = sub_1002F3208(v234, v239);

LABEL_203:
                  sub_1002E80DC(v229, type metadata accessor for ClientCommand);
                  return v102 & 1;
                }

                swift_bridgeObjectRelease_n();
              }

              else
              {
              }

              v229 = v310;
LABEL_200:
              v262 = v229;
LABEL_181:
              sub_1002E80DC(v262, type metadata accessor for ClientCommand);
              goto LABEL_182;
            }
          }

          else
          {
            v270 = *v235;

            swift_bridgeObjectRelease_n();
          }
        }

        else
        {
        }

        goto LABEL_180;
      }

      if (v236)
      {
        v267 = *(v235 + 4);

        goto LABEL_180;
      }

      goto LABEL_169;
    case 9u:
      v88 = v310;
      v115 = v293;
      sub_1002E7FC4(v310, v293, type metadata accessor for ClientCommand);
      v116 = *v115;
      v117 = *(v115 + 16);
      v118 = v309;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
LABEL_122:

LABEL_125:

LABEL_126:
        sub_100025F40(v88, &qword_1005D7F60, &unk_1004F30E0);
LABEL_182:
        v102 = 0;
        return v102 & 1;
      }

      v119 = *(v115 + 8);
      v120 = *v118;
      v121 = *(v118 + 2);
      v122 = *(v118 + 2);
      if ((v119 | (v119 << 32)) != (v121 | (v121 << 32)))
      {
LABEL_140:

        goto LABEL_147;
      }

      v123 = sub_1000FFC98(v116, v120);

      if ((v123 & 1) == 0)
      {
LABEL_147:

        goto LABEL_148;
      }

      v124 = sub_1002F32E8(v117, v122);
LABEL_34:
      v102 = v124;

LABEL_35:

LABEL_74:
      sub_1002E80DC(v88, type metadata accessor for ClientCommand);
      return v102 & 1;
    case 0xAu:
      v88 = v310;
      v203 = v298;
      sub_1002E7FC4(v310, v298, type metadata accessor for ClientCommand);
      v204 = *v203;
      v205 = *(v203 + 16);
      v206 = sub_10000C9C0(&qword_1005D0F18, &unk_1004E53C0);
      v207 = *(v206 + 64);
      v208 = *(v206 + 80);
      v210 = *(v203 + v208);
      v209 = *(v203 + v208 + 8);
      v211 = v309;
      if (swift_getEnumCaseMultiPayload() != 10)
      {

        sub_100014D40(v210, v209);
        sub_100025F40(v203 + v207, &qword_1005D0F20, &qword_1004E9390);
        goto LABEL_126;
      }

      v304 = v205;
      v307 = v210;
      v308 = v209;
      v212 = *(v203 + 8);
      v305 = *v211;
      v213 = *(v211 + 2);
      v214 = *(v211 + 2);
      v216 = *&v211[v208];
      v215 = *&v211[v208 + 8];
      sub_100025FDC(v203 + v207, v306, &qword_1005D0F20, &qword_1004E9390);
      v217 = &v211[v207];
      v218 = v290;
      sub_100025FDC(v217, v290, &qword_1005D0F20, &qword_1004E9390);
      if ((v212 | (v212 << 32)) == (v213 | (v213 << 32)))
      {
        v219 = v216;
        v220 = v215;
        v221 = sub_1000FFC98(v204, v305);

        if (v221)
        {
          v222 = sub_100083750(v304, v214);

          if (v222)
          {
            v223 = *(v282 + 48);
            v224 = v284;
            sub_10000E268(v306, v284, &qword_1005D0F20, &qword_1004E9390);
            sub_10000E268(v218, v224 + v223, &qword_1005D0F20, &qword_1004E9390);
            v225 = v283;
            v226 = *(v283 + 48);
            v227 = v285;
            v228 = v226(v224, 1, v285);
            v229 = v310;
            if (v228 == 1)
            {
              if (v226(v224 + v223, 1, v227) == 1)
              {
                sub_100025F40(v224, &qword_1005D0F20, &qword_1004E9390);
LABEL_202:
                v278 = v307;
                v277 = v308;
                v102 = sub_10003A194(v307, v308, v219, v220);
                sub_100014D40(v219, v220);
                sub_100014D40(v278, v277);
                sub_100025F40(v218, &qword_1005D0F20, &qword_1004E9390);
                sub_100025F40(v306, &qword_1005D0F20, &qword_1004E9390);
                goto LABEL_203;
              }

              sub_100014D40(v219, v220);
              sub_100014D40(v307, v308);
            }

            else
            {
              v272 = v281;
              sub_10000E268(v224, v281, &qword_1005D0F20, &qword_1004E9390);
              if (v226(v224 + v223, 1, v227) != 1)
              {
                v273 = v224 + v223;
                v274 = v280;
                (*(v225 + 32))(v280, v273, v227);
                sub_1002E87C0(&qword_1005D6780, &type metadata accessor for Date);
                v275 = sub_1004A5724();
                v276 = *(v225 + 8);
                v276(v274, v227);
                v276(v272, v227);
                sub_100025F40(v224, &qword_1005D0F20, &qword_1004E9390);
                v229 = v310;
                if (v275)
                {
                  goto LABEL_202;
                }

                sub_100014D40(v219, v220);
                sub_100014D40(v307, v308);
LABEL_199:
                sub_100025F40(v218, &qword_1005D0F20, &qword_1004E9390);
                sub_100025F40(v306, &qword_1005D0F20, &qword_1004E9390);
                goto LABEL_200;
              }

              sub_100014D40(v219, v220);
              sub_100014D40(v307, v308);
              (*(v225 + 8))(v272, v227);
              v229 = v310;
            }

            sub_100025F40(v224, &qword_1005D6770, &qword_1004EC278);
            goto LABEL_199;
          }
        }

        else
        {
        }

        sub_100014D40(v216, v215);
        sub_100014D40(v307, v308);
      }

      else
      {

        sub_100014D40(v216, v215);
        sub_100014D40(v307, v308);
      }

      v258 = &qword_1005D0F20;
      v259 = &qword_1004E9390;
      sub_100025F40(v218, &qword_1005D0F20, &qword_1004E9390);
      v260 = v306;
      goto LABEL_163;
    case 0xBu:
      v88 = v310;
      v109 = v294;
      sub_1002E7FC4(v310, v294, type metadata accessor for ClientCommand);
      v104 = *v109;
      v110 = v309;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_75;
      }

      goto LABEL_73;
    case 0xCu:
      v88 = v310;
      v114 = v295;
      sub_1002E7FC4(v310, v295, type metadata accessor for ClientCommand);
      v104 = *v114;
      v105 = v114[1];
      v106 = v309;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_23;
      }

      goto LABEL_16;
    case 0xDu:
      v88 = v310;
      v194 = v296;
      sub_1002E7FC4(v310, v296, type metadata accessor for ClientCommand);
      v104 = *v194;
      v110 = v309;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_75;
      }

LABEL_73:
      v195 = *v110;
      v102 = static SearchKey.__derived_enum_equals(_:_:)(v104, *v110);
      sub_1000B37D8(v195);
      sub_1000B37D8(v104);
      goto LABEL_74;
    case 0xEu:
      v88 = v310;
      v103 = v297;
      sub_1002E7FC4(v310, v297, type metadata accessor for ClientCommand);
      v104 = *v103;
      v105 = v103[1];
      v106 = v309;
      if (swift_getEnumCaseMultiPayload() != 14)
      {
LABEL_23:

LABEL_75:
        sub_1000B37D8(v104);
        goto LABEL_126;
      }

LABEL_16:
      v108 = *v106;
      v107 = v106[1];
      if (static SearchKey.__derived_enum_equals(_:_:)(v104, *v106))
      {
        v102 = sub_1002F361C(v105, v107);
        sub_1000B37D8(v108);
        sub_1000B37D8(v104);

        goto LABEL_35;
      }

      sub_1000B37D8(v108);
      sub_1000B37D8(v104);
      goto LABEL_148;
    case 0xFu:
      v88 = v310;
      v90 = v302;
      sub_1002E7FC4(v310, v302, type metadata accessor for ClientCommand);
      v129 = *(sub_10000C9C0(&qword_1005CD558, &unk_1004CF330) + 48);
      v131 = *(v90 + v129);
      v130 = *(v90 + v129 + 8);
      v132 = *(v90 + v129 + 16);
      v133 = v309;
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_121;
      }

      v134 = v133 + v129;
      v135 = *(v133 + v129);
      v136 = *(v134 + 8);
      v137 = *(v134 + 16);
      v138 = v133;
      v139 = v286;
      sub_100025FDC(v138, v286, &unk_1005D91B0, &unk_1004CF400);
      sub_100016D2C();
      if ((sub_1004A7034() & 1) == 0)
      {

        v257 = v139;
        v258 = &unk_1005D91B0;
        v259 = &unk_1004CF400;
        sub_100025F40(v90, &unk_1005D91B0, &unk_1004CF400);
        v260 = v257;
LABEL_163:
        sub_100025F40(v260, v258, v259);
        goto LABEL_180;
      }

      sub_100025F40(v90, &unk_1005D91B0, &unk_1004CF400);
      v140 = sub_1002F2B00(v131, v135);
      sub_100025F40(v139, &unk_1005D91B0, &unk_1004CF400);

      if ((v140 & 1) == 0)
      {
        goto LABEL_180;
      }

      if (v132)
      {
        if ((v137 & 1) == 0)
        {
          goto LABEL_180;
        }
      }

      else
      {
        if (v137)
        {
          goto LABEL_180;
        }

        if ((v136 | v130) < 0)
        {
          __break(1u);
          JUMPOUT(0x1002E7E7CLL);
        }

        if (v136 != v130)
        {
          goto LABEL_180;
        }
      }

      goto LABEL_187;
    case 0x10u:
      v88 = v310;
      v90 = v303;
      sub_1002E7FC4(v310, v303, type metadata accessor for ClientCommand);
      v91 = *(sub_10000C9C0(&qword_1005D0488, &qword_1004DA4C0) + 48);
      v92 = *(v90 + v91);
      v93 = *(v90 + v91 + 1);
      v94 = *(v90 + v91 + 8);
      v95 = v309;
      if (swift_getEnumCaseMultiPayload() != 16)
      {
LABEL_121:

        sub_100025F40(v90, &unk_1005D91B0, &unk_1004CF400);
        goto LABEL_126;
      }

      v96 = *(v95 + v91);
      v97 = *(v95 + v91 + 1);
      v98 = *(v95 + v91 + 8);
      v99 = v287;
      sub_100025FDC(v95, v287, &unk_1005D91B0, &unk_1004CF400);
      sub_100016D2C();
      if ((sub_1004A7034() & 1) == 0)
      {

        sub_100025F40(v90, &unk_1005D91B0, &unk_1004CF400);
        v251 = v99;
        goto LABEL_137;
      }

      sub_100025F40(v90, &unk_1005D91B0, &unk_1004CF400);
      if (v93)
      {
        v100 = 256;
      }

      else
      {
        v100 = 0;
      }

      if (v97)
      {
        v101 = 256;
      }

      else
      {
        v101 = 0;
      }

      v102 = static StoreFlags.__derived_struct_equals(_:_:)(v100 | v92, v94, v101 | v96, v98);

      sub_100025F40(v99, &unk_1005D91B0, &unk_1004CF400);
      goto LABEL_74;
    case 0x11u:
      v88 = v310;
      v168 = v304;
      sub_1002E7FC4(v310, v304, type metadata accessor for ClientCommand);
      v169 = *(sub_10000C9C0(&qword_1005D0480, &qword_1004D3D00) + 48);
      v170 = *(v168 + v169);
      v171 = *(v168 + v169 + 8);
      v172 = v309;
      if (swift_getEnumCaseMultiPayload() != 17)
      {
        goto LABEL_89;
      }

      v173 = v172 + v169;
      v174 = *(v172 + v169);
      v175 = *(v173 + 8);
      v176 = v172;
      v177 = &v315 + 8;
      goto LABEL_85;
    case 0x12u:
      v88 = v310;
      v168 = v305;
      sub_1002E7FC4(v310, v305, type metadata accessor for ClientCommand);
      v198 = *(sub_10000C9C0(&qword_1005D0480, &qword_1004D3D00) + 48);
      v170 = *(v168 + v198);
      v171 = *(v168 + v198 + 8);
      v199 = v309;
      if (swift_getEnumCaseMultiPayload() != 18)
      {
LABEL_89:

        sub_100025F40(v168, &unk_1005D91B0, &unk_1004CF400);
        goto LABEL_126;
      }

      v200 = v199 + v198;
      v174 = *(v199 + v198);
      v175 = *(v200 + 8);
      v176 = v199;
      v177 = &v316;
LABEL_85:
      v201 = *(v177 - 32);
      sub_100025FDC(v176, v201, &unk_1005D91B0, &unk_1004CF400);
      sub_100016D2C();
      if ((sub_1004A7034() & 1) == 0)
      {

        sub_100025F40(v168, &unk_1005D91B0, &unk_1004CF400);
        v251 = v201;
LABEL_137:
        sub_100025F40(v251, &unk_1005D91B0, &unk_1004CF400);
        goto LABEL_148;
      }

      sub_100025F40(v168, &unk_1005D91B0, &unk_1004CF400);
      if ((v171 | (v171 << 32)) != (v175 | (v175 << 32)))
      {

        sub_100025F40(v201, &unk_1005D91B0, &unk_1004CF400);
        goto LABEL_148;
      }

      v202 = sub_1000FFC98(v170, v174);

      sub_100025F40(v201, &unk_1005D91B0, &unk_1004CF400);
      if ((v202 & 1) == 0)
      {
        goto LABEL_148;
      }

      goto LABEL_167;
    case 0x13u:
      v88 = v310;
      v242 = v300;
      sub_1002E7FC4(v310, v300, type metadata accessor for ClientCommand);
      v244 = *(v242 + 8);
      v243 = *(v242 + 16);
      v245 = *(v242 + 24);
      v246 = v309;
      if (swift_getEnumCaseMultiPayload() != 19)
      {
        goto LABEL_126;
      }

      if (*v242 != *v246)
      {
        goto LABEL_148;
      }

      if (v245)
      {
        if (!v246[24])
        {
          goto LABEL_148;
        }
      }

      else if ((v246[24] & 1) != 0 || v244 != *(v246 + 1) || v243 != *(v246 + 2))
      {
        goto LABEL_148;
      }

      goto LABEL_167;
    case 0x14u:
      v88 = v310;
      v178 = v299;
      sub_1002E7FC4(v310, v299, type metadata accessor for ClientCommand);
      v179 = *v178;
      v180 = v178[1];
      v181 = v178[2];
      v182 = v309;
      if (swift_getEnumCaseMultiPayload() != 20)
      {

        goto LABEL_126;
      }

      v183 = *v182;
      v184 = v182[1];
      v185 = v182[2];
      if ((sub_10020FB40(v180, v184) & 1) == 0)
      {

        goto LABEL_148;
      }

      v186 = sub_10020FA9C(v181, v185);

      if ((v186 & 1) == 0)
      {
        goto LABEL_148;
      }

      goto LABEL_167;
    case 0x15u:
      v88 = v310;
      v187 = v301;
      sub_1002E7FC4(v310, v301, type metadata accessor for ClientCommand);
      v188 = v187[1];
      v315 = *v187;
      v316 = v188;
      v189 = v187[3];
      v317 = v187[2];
      v318 = v189;
      v190 = v309;
      if (swift_getEnumCaseMultiPayload() != 21)
      {
        sub_10021D02C(&v315);
        goto LABEL_126;
      }

      v191 = v190[1];
      v311 = *v190;
      v312 = v191;
      v192 = v190[3];
      v313 = v190[2];
      v314 = v192;
      if (v315 == v311 && (__PAIR128__(v316, *(&v315 + 1)) == __PAIR128__(v312, *(&v311 + 1)) || (sub_1004A6D34() & 1) != 0) && (__PAIR128__(v317, *(&v316 + 1)) == __PAIR128__(v313, *(&v312 + 1)) || (sub_1004A6D34() & 1) != 0) && (__PAIR128__(v318, *(&v317 + 1)) == __PAIR128__(v314, *(&v313 + 1)) || (sub_1004A6D34() & 1) != 0))
      {
        v193 = _s12NIOIMAPCore29MailboxesV23__derived_struct_equalsySbAC_ACtFZ_0(*(&v318 + 1), *(&v314 + 1));
        sub_10021D02C(&v311);
        sub_10021D02C(&v315);
        if (v193)
        {
LABEL_167:
          v268 = v88;
LABEL_168:
          sub_1002E80DC(v268, type metadata accessor for ClientCommand);
          v102 = 1;
          return v102 & 1;
        }
      }

      else
      {
        sub_10021D02C(&v311);
        sub_10021D02C(&v315);
      }

LABEL_148:
      v262 = v88;
      goto LABEL_181;
    case 0x16u:
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v88 = v310;
      if (EnumCaseMultiPayload == 22)
      {
        goto LABEL_167;
      }

      goto LABEL_126;
    case 0x17u:
      v247 = swift_getEnumCaseMultiPayload();
      v88 = v310;
      if (v247 == 23)
      {
        goto LABEL_167;
      }

      goto LABEL_126;
    case 0x18u:
      v126 = swift_getEnumCaseMultiPayload();
      v88 = v310;
      if (v126 == 24)
      {
        goto LABEL_167;
      }

      goto LABEL_126;
    case 0x19u:
      v125 = swift_getEnumCaseMultiPayload();
      v88 = v310;
      if (v125 == 25)
      {
        goto LABEL_167;
      }

      goto LABEL_126;
    case 0x1Au:
      v250 = swift_getEnumCaseMultiPayload();
      v88 = v310;
      if (v250 == 26)
      {
        goto LABEL_167;
      }

      goto LABEL_126;
    case 0x1Bu:
      v89 = swift_getEnumCaseMultiPayload();
      v88 = v310;
      if (v89 == 27)
      {
        goto LABEL_167;
      }

      goto LABEL_126;
    case 0x1Cu:
      v248 = swift_getEnumCaseMultiPayload();
      v88 = v310;
      if (v248 == 28)
      {
        goto LABEL_167;
      }

      goto LABEL_126;
    case 0x1Du:
      v249 = swift_getEnumCaseMultiPayload();
      v88 = v310;
      if (v249 == 29)
      {
        goto LABEL_167;
      }

      goto LABEL_126;
    default:
      sub_1002E7FC4(v310, v72, type metadata accessor for ClientCommand);
      v81 = *v72;
      v80 = *(v72 + 1);
      v83 = *(v72 + 2);
      v82 = *(v72 + 3);
      v84 = v72[38];
      v85 = *(v72 + 18);
      v86 = *(v72 + 8);
      v87 = v309;
      if (swift_getEnumCaseMultiPayload())
      {

        v88 = v310;
        goto LABEL_126;
      }

      v308 = v82;
      v252 = *v87;
      v253 = *(v87 + 1);
      v254 = *(v87 + 2);
      v307 = *(v87 + 3);
      LODWORD(v306) = v87[38];
      v255 = *(v87 + 18);
      v256 = *(v87 + 8);
      if (v81 == v252 && v80 == v253)
      {
      }

      else
      {
        v263 = sub_1004A6D34();

        if ((v263 & 1) == 0)
        {
          goto LABEL_179;
        }
      }

      if (v83)
      {
        if (v254)
        {
          v264 = v256 | ((v255 | (v306 << 16)) << 32);

          v266 = sub_10020FBD0(v265, v308, (v86 | ((v85 | (v84 << 16)) << 32)) & 0xFFFFFFFFFFFFFFLL, v254, v307, v264 & 0xFFFFFFFFFFFFFFLL);

          if (v266)
          {
            goto LABEL_187;
          }

LABEL_180:
          v262 = v310;
          goto LABEL_181;
        }
      }

      else if (!v254)
      {
LABEL_187:
        v268 = v310;
        goto LABEL_168;
      }

LABEL_179:

      goto LABEL_180;
  }
}

uint64_t sub_1002E7FC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002E80DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002E815C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientCommand(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002E81D4(uint64_t a1)
{
  v2 = sub_1004A5224();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004A52F4();
  v20 = 0;
  v21 = 0xE000000000000000;
  v7 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  sub_1004A5874(v7);
  v8 = 0;
  v9 = 0;
  v15[2] = xmmword_1004ED250;
  v15[1] = xmmword_1004ED260;
  v15[0] = xmmword_1004ED270;
  while (1)
  {
    v18 = v8;
    v19 = v9;
    if (!v9)
    {
      break;
    }

    if ((v8 & 0x80) != 0)
    {
      goto LABEL_6;
    }

    sub_1002A57BC();
    v12 = UnsafeExtractedAttachment.part.modify();
    sub_1002A5810(0);
    (v12)(&v16, 0);
LABEL_23:
    v8 = v18;
    v9 = v19;
    v16 = v20;
    v17 = v21;
    sub_1004A58C4();
    v20 = v16;
    v21 = v17;
  }

  sub_1002E87C0(&qword_1005D47B8, &type metadata accessor for DispatchDataIterator);
  sub_1004A6414();
  if ((v16 & 0x100) != 0)
  {
    goto LABEL_35;
  }

  if ((v16 & 0x80) == 0)
  {
    goto LABEL_23;
  }

  v8 = v8 & 0xFFFFFF00 | v16;
  v9 = 8;
LABEL_6:
  sub_1002E87C0(&qword_1005D47B8, &type metadata accessor for DispatchDataIterator);
  sub_1004A6414();
  if ((v16 & 0x100) != 0)
  {
    v10 = v9;
LABEL_8:
    if (!v10)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v8 = (v16 << v9) | ((-255 << v9) - 1) & v8;
    v10 = v9 + 8;
    if ((v9 + 8) <= 0x1Fu)
    {
      sub_1004A6414();
      if ((v16 & 0x100) != 0)
      {
        goto LABEL_8;
      }

      v8 = (v16 << v10) | ((-255 << v10) - 1) & v8;
      v10 = v9 + 16;
      if ((v9 + 16) <= 0x1Fu)
      {
        sub_1004A6414();
        if ((v16 & 0x100) != 0)
        {
          goto LABEL_8;
        }

        v8 = (v16 << v10) | ((-255 << v10) - 1) & v8;
        v10 = v9 + 24;
        if ((v9 + 24) <= 0x1Fu)
        {
          sub_1004A6414();
          if ((v16 & 0x100) != 0)
          {
            goto LABEL_8;
          }

          v8 = (v16 << v10) | ((-255 << v10) - 1) & v8;
          v10 = v9 + 32;
          if (v9 >= 0xE0u)
          {
            sub_1004A6414();
            if ((v16 & 0x100) != 0)
            {
              goto LABEL_8;
            }

            v8 = (v16 << v9) | ((-255 << v9) - 1) & v8;
            v10 = v9 + 40;
          }
        }
      }
    }
  }

  if ((v8 & 0xC0E0) == 0x80C0)
  {
    if ((v8 & 0x1E) == 0)
    {
      goto LABEL_34;
    }

    v11 = 16;
    goto LABEL_22;
  }

  if ((v8 & 0xC0C0F0) == 0x8080E0)
  {
    if ((v8 & 0x200F) == 0 || (v8 & 0x200F) == 0x200D)
    {
      goto LABEL_34;
    }

    v11 = 24;
    goto LABEL_22;
  }

  if ((v8 & 0xC0C0C0F8) == 0x808080F0 && (v8 & 0x3007) != 0 && __rev16(v8 & 0x3007) <= 0x400)
  {
    v11 = 32;
LABEL_22:
    v18 = v8 >> v11;
    v19 = v10 - v11;
    goto LABEL_23;
  }

LABEL_34:
  sub_1004A6FB4();
  v22._object = 0x80000001004AE330;
  v22._countAndFlagsBits = 0xD000000000000012;
  sub_1004A5994(v22);
LABEL_35:
  v13 = sub_1004A5384();
  (*(*(v13 - 8) + 8))(a1, v13);
  (*(v3 + 8))(v6, v2);
  return v20;
}

uint64_t sub_1002E87C0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1002E880C()
{
  result = qword_1005D7D38;
  if (!qword_1005D7D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D7D38);
  }

  return result;
}

unint64_t sub_1002E8864()
{
  result = qword_1005D7D40;
  if (!qword_1005D7D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D7D40);
  }

  return result;
}

unint64_t sub_1002E88BC()
{
  result = qword_1005D7D48;
  if (!qword_1005D7D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D7D48);
  }

  return result;
}

void sub_1002E8910()
{
  sub_1002E8B34();
  if (v0 <= 0x3F)
  {
    sub_1002E8BAC(319, &qword_1005D7DE0);
    if (v1 <= 0x3F)
    {
      sub_100214F50();
      if (v2 <= 0x3F)
      {
        sub_1002E8C8C(319, &qword_1005D7DE8, &qword_1005D7DF0, &qword_1004F3058);
        if (v3 <= 0x3F)
        {
          sub_1002E8BAC(319, &qword_1005D7DF8);
          if (v4 <= 0x3F)
          {
            sub_1002E8BFC();
            if (v5 <= 0x3F)
            {
              sub_1002E8C8C(319, &qword_1005D7E18, &qword_1005D7E20, &qword_100506180);
              if (v6 <= 0x3F)
              {
                sub_1002E8CF0(319);
                if (v7 <= 0x3F)
                {
                  sub_1002E8E30();
                  if (v8 <= 0x3F)
                  {
                    sub_1002E8EA8(319, &qword_1005D7E48);
                    if (v9 <= 0x3F)
                    {
                      sub_1002E8EA8(319, &qword_1005D7E50);
                      if (v10 <= 0x3F)
                      {
                        sub_1002E8EA8(319, &qword_1005D7E58);
                        if (v11 <= 0x3F)
                        {
                          sub_1002E8F20();
                          if (v12 <= 0x3F)
                          {
                            sub_1002E8F98();
                            if (v13 <= 0x3F)
                            {
                              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1002E8B34()
{
  if (!qword_1005D7DD0)
  {
    sub_10000DEFC(&qword_1005D7DD8, &qword_1004F3050);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1005D7DD0);
    }
  }
}

void sub_1002E8BAC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1002E8BFC()
{
  if (!qword_1005D7E00)
  {
    sub_10000DEFC(&qword_1005D7E08, &qword_1004F4700);
    sub_10000DEFC(&qword_1005D7E10, &qword_1004F3060);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1005D7E00);
    }
  }
}

void sub_1002E8C8C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_10000DEFC(a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1002E8CF0(uint64_t a1)
{
  if (!qword_1005D7E28)
  {
    __chkstk_darwin(a1);
    sub_10000DEFC(&qword_1005D7E30, &qword_1004F3068);
    sub_10000DEFC(&qword_1005D0F20, &qword_1004E9390);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1005D7E28);
    }
  }
}

void sub_1002E8E30()
{
  if (!qword_1005D7E38)
  {
    sub_10000DEFC(&qword_1005D7E40, &qword_1004F3070);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1005D7E38);
    }
  }
}

void sub_1002E8EA8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_10000DEFC(&unk_1005D91B0, &unk_1004CF400);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1002E8F20()
{
  if (!qword_1005D7E60)
  {
    sub_10000DEFC(&qword_1005D7E68, &qword_1004F3078);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1005D7E60);
    }
  }
}

void sub_1002E8F98()
{
  if (!qword_1005D7E70)
  {
    sub_10000DEFC(&qword_1005D4660, &qword_1004E05E8);
    v0 = sub_1004A47A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1005D7E70);
    }
  }
}

uint64_t getEnumTagSinglePayload for ClientCommand.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE3)
  {
    goto LABEL_17;
  }

  if (a2 + 29 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 29) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 29;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 29;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 29;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v8 = v6 - 30;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ClientCommand.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE3)
  {
    v4 = 0;
  }

  if (a2 > 0xE2)
  {
    v5 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 29;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1002E9190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for ClientCommand(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1002E921C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for ClientCommand(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1002E9298()
{
  result = type metadata accessor for ClientCommand(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t ClientCommand.encode(tag:options:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, void (*a3)(__int128 *)@<X8>)
{
  v4[16] = a1;
  v5 = HIDWORD(a1);
  return sub_1002EFAE8(sub_1002E81C0, v4, a2 & 0x101FF, a3);
}

uint64_t ClientCommand.Encoded.continuations.getter()
{
  v1 = *(v0 + *(type metadata accessor for ClientCommand.Encoded() + 20));
}

uint64_t ClientCommand.Encoded.continuations.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ClientCommand.Encoded() + 20);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ClientCommand.Encoded.init(command:continuations:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1004A5384();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for ClientCommand.Encoded();
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t ClientCommand.EncodingOptions.debugDescription.getter(__int16 a1)
{
  if (a1)
  {
    v1 = 0x2B6C61726574694CLL;
    if ((a1 & 0x100) != 0)
    {
      v1 = 0xD000000000000010;
    }

    v2 = 0x2D6C61726574694CLL;
    if ((a1 & 0x100) != 0)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 == 1)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }

  else if ((a1 & 0x100) != 0)
  {
    return 0x7972616E6942;
  }

  else
  {
    return 0x647261646E617453;
  }
}

uint64_t sub_1002E960C()
{
  if (v0[1])
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return ClientCommand.EncodingOptions.debugDescription.getter(v1 | *v0);
}

uint64_t CommandEncodingOptions.init(_:)(__int16 a1)
{
  v1 = 0x100000001;
  if ((a1 & 0x100) == 0)
  {
    v1 = 1;
  }

  return v1 | qword_1004F32E0[a1] | qword_1004F32F8[a1] | qword_1004F3310[a1];
}

uint64_t ClientCommand.EncodingOptions.init(_:)(uint64_t a1)
{
  v2 = Capability.literalPlus.unsafeMutableAddressor();
  v3 = *(v2 + 1);
  v4 = *(v2 + 2);
  v5 = *(v2 + 24);
  v24 = *v2;
  v25 = v3;
  v26 = v4;
  v27 = v5;
  v23 = &v24;

  v6 = sub_100215C70(sub_100197740, v22, a1);

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = Capability.literalMinus.unsafeMutableAddressor();
    v9 = *(v8 + 1);
    v10 = *(v8 + 2);
    v11 = *(v8 + 24);
    v24 = *v8;
    v25 = v9;
    v26 = v10;
    v27 = v11;
    __chkstk_darwin(v8);
    v21 = &v24;

    v12 = sub_100215C70(sub_1001F0EE0, v20, a1);

    if (v12)
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }
  }

  v13 = Capability.binary.unsafeMutableAddressor();
  v14 = *(v13 + 1);
  v15 = *(v13 + 2);
  v16 = *(v13 + 24);
  v24 = *v13;
  v25 = v14;
  v26 = v15;
  v27 = v16;
  __chkstk_darwin(v13);
  v21 = &v24;

  v17 = sub_100215C70(sub_1001F0EE0, v20, a1);

  if (v17)
  {
    v18 = 256;
  }

  else
  {
    v18 = 0;
  }

  return v18 | v7;
}

uint64_t type metadata accessor for ClientCommand.Encoded()
{
  result = qword_1005D7FD8;
  if (!qword_1005D7FD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1002E9894()
{
  result = qword_1005D7F68;
  if (!qword_1005D7F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D7F68);
  }

  return result;
}

unint64_t sub_1002E98EC()
{
  result = qword_1005D7F70;
  if (!qword_1005D7F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D7F70);
  }

  return result;
}

unint64_t sub_1002E9944()
{
  result = qword_1005D7F78;
  if (!qword_1005D7F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D7F78);
  }

  return result;
}

uint64_t sub_1002E99AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004A5384();
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

uint64_t sub_1002E9A7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1004A5384();
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

void sub_1002E9B34()
{
  sub_1004A5384();
  if (v0 <= 0x3F)
  {
    sub_1002E9BB8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1002E9BB8()
{
  if (!qword_1005D7FE8)
  {
    sub_1004A5384();
    v0 = sub_1004A5CD4();
    if (!v1)
    {
      atomic_store(v0, &qword_1005D7FE8);
    }
  }
}

uint64_t _s15EncodingOptionsVwCP(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t _s15EncodingOptionsVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = a1[3];
      if (a1[3])
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = a1[1];
  v5 = v4 >= 2;
  v6 = v4 - 2;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t _s15EncodingOptionsVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 1) = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_1002E9D78(unsigned __int8 a1)
{
  sub_1004A5874(10);
  v2 = a1 + 1;
  do
  {
    v3 = (v2 - 1);
    v2 = (v2 - 1) / 0x1Au;
    sub_1004A58E4();
    sub_1004A59A4();
  }

  while (v3 > 0x19);
  return 0;
}

unint64_t sub_1002E9E28()
{
  result = qword_1005D8018;
  if (!qword_1005D8018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D8018);
  }

  return result;
}

char *sub_1002E9E98()
{
  result = EngineTracingID.invalid.unsafeMutableAddressor();
  static ConnectionLoggerID.invalid = *result;
  dword_1005DE18C = -1;
  return result;
}

char *ConnectionLoggerID.invalid.unsafeMutableAddressor()
{
  if (qword_1005D7CF8 != -1)
  {
    swift_once();
  }

  return &static ConnectionLoggerID.invalid;
}

unint64_t static ConnectionLoggerID.invalid.getter()
{
  if (qword_1005D7CF8 != -1)
  {
    swift_once();
  }

  return static ConnectionLoggerID.invalid | (dword_1005DE18C << 32);
}

uint64_t MessageData.uid.setter(uint64_t result)
{
  *(v1 + 8) = result;
  *(v1 + 12) = BYTE4(result) & 1;
  return result;
}

uint64_t MessageData.bodySections.setter(uint64_t a1)
{
  v3 = *(v1 + 200);

  *(v1 + 200) = a1;
  return result;
}

uint64_t MessageData.flags.setter(uint64_t a1)
{
  v3 = *(v1 + 512);

  *(v1 + 512) = a1;
  return result;
}

uint64_t MessageData.gmailLabels.setter(uint64_t a1)
{
  v3 = *(v1 + 520);

  *(v1 + 520) = a1;
  return result;
}

uint64_t MessageData.internalDate.getter()
{
  result = *(v0 + 528);
  v2 = *(v0 + 536);
  return result;
}

uint64_t MessageData.internalDate.setter(uint64_t result, char a2)
{
  *(v2 + 528) = result;
  *(v2 + 536) = a2 & 1;
  return result;
}

uint64_t MessageData.messageSize.setter(uint64_t result)
{
  *(v1 + 540) = result;
  *(v1 + 544) = BYTE4(result) & 1;
  return result;
}

uint64_t MessageData.modificationSequence.getter()
{
  result = *(v0 + 552);
  v2 = *(v0 + 560);
  return result;
}

uint64_t MessageData.modificationSequence.setter(uint64_t result, char a2)
{
  *(v2 + 552) = result;
  *(v2 + 560) = a2 & 1;
  return result;
}

uint64_t MessageData.preview.getter()
{
  v1 = *(v0 + 568);
  v2 = *(v0 + 576);

  return v1;
}

uint64_t MessageData.preview.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 576);

  *(v2 + 568) = a1;
  *(v2 + 576) = a2;
  return result;
}

uint64_t MessageData.emailID.getter()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 592);

  return v1;
}

uint64_t MessageData.emailID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 592);

  *(v2 + 584) = a1;
  *(v2 + 592) = a2;
  return result;
}

uint64_t MessageData.threadID.getter()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 608);

  return v1;
}

uint64_t MessageData.threadID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 608);

  *(v2 + 600) = a1;
  *(v2 + 608) = a2;
  return result;
}

uint64_t MessageData.BodySection.section.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);

  sub_100051190(v2, v3);
  return v1;
}

uint64_t MessageData.BodySection.section.setter(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *v3;

  result = sub_1000511A4(v3[1], *(v3 + 16));
  *v3 = a1;
  v3[1] = a2;
  *(v3 + 16) = a3;
  return result;
}

uint64_t MessageData.BodySection.origin.setter(uint64_t result)
{
  *(v1 + 20) = result;
  *(v1 + 24) = BYTE4(result) & 1;
  return result;
}

uint64_t type metadata accessor for MessageData.BodySection()
{
  result = qword_1005D80A0;
  if (!qword_1005D80A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MessageData.BodySection.init(section:origin:data:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(type metadata accessor for MessageData.BodySection() + 24);
  v13 = type metadata accessor for MessageData.BodyData();
  (*(*(v13 - 8) + 56))(a6 + v12, 1, 1, v13);
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 20) = a4;
  *(a6 + 24) = BYTE4(a4) & 1;
  return sub_10027F8A8(a5, a6 + v12, &qword_1005CE218, &unk_1004F3FD0);
}

void *MessageData.init(sequenceNumber:uid:body:bodySections:bodyStructure:envelope:flags:gmailLabels:internalDate:messageSize:modificationSequence:preview:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, char a11, int a12, int a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18)
{
  sub_1000519AC(&v30);
  *&__src[144] = v38;
  *&__src[160] = v39;
  *&__src[176] = v40;
  *&__src[80] = v34;
  *&__src[96] = v35;
  *&__src[112] = v36;
  *&__src[128] = v37;
  *&__src[16] = v30;
  *&__src[32] = v31;
  *&__src[48] = v32;
  *&__src[64] = v33;
  *&__src[336] = v38;
  *&__src[352] = v39;
  *&__src[368] = v40;
  *&__src[272] = v34;
  *&__src[288] = v35;
  *&__src[304] = v36;
  *&__src[320] = v37;
  *&__src[208] = v30;
  *&__src[224] = v31;
  __src[192] = v41;
  __src[384] = v41;
  *&__src[240] = v32;
  *&__src[256] = v33;
  memset(&__src[392], 0, 120);
  memset(&__src[584], 0, 32);
  *__src = a1;
  __src[4] = BYTE4(a1) & 1;
  *&__src[8] = a2;
  __src[12] = BYTE4(a2) & 1;
  sub_10027F8A8(a3, &__src[16], &qword_1005CDFD0, &qword_1004EE450);
  *&__src[200] = a4;
  sub_10027F8A8(a5, &__src[208], &qword_1005CDFD0, &qword_1004EE450);
  sub_10027F8A8(a6, &__src[392], &qword_1005D8038, &unk_1004F4C00);
  *&__src[512] = a7;
  *&__src[520] = a8;
  *&__src[528] = a10;
  __src[536] = a11 & 1;
  *&__src[540] = a13;
  __src[544] = a14 & 1;
  *&__src[552] = a15;
  __src[560] = a16 & 1;
  *&__src[568] = a17;
  *&__src[576] = a18;
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v43, __src, 0x268uLL);
  sub_1002EBB50(__dst, v28);
  sub_100025D5C(v43);
  return memcpy(a9, __dst, 0x268uLL);
}

uint64_t sub_1002EA9B8(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return _s13IMAP2Protocol11MessageDataV23__derived_struct_equalsySbAC_ACtFZ_0(v4) & 1;
}

uint64_t sub_1002EAA10()
{
  v0 = sub_10000C9C0(&qword_1005D6830, &qword_1004EC2C0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v18 - v2;
  v4 = sub_1004A4554();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1004A45B4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001C2074(v12, qword_1005D8020);
  v15 = sub_1001C203C(v9, qword_1005D8020);
  (*(v5 + 104))(v8, enum case for Calendar.Identifier.gregorian(_:), v4);
  sub_1004A4564();
  (*(v5 + 8))(v8, v4);
  sub_1004A4654();
  v16 = sub_1004A4694();
  result = (*(*(v16 - 8) + 48))(v3, 1, v16);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1004A4594();
    return (*(v10 + 32))(v15, v14, v9);
  }

  return result;
}

uint64_t ServerMessageDate.date.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = sub_10000C9C0(&qword_1005D6830, &qword_1004EC2C0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v34 - v8;
  v10 = sub_10000C9C0(&qword_1005D8040, &qword_1004F34D8);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v34 - v12;
  v14 = sub_1004A41B4();
  v38 = *(v14 - 8);
  v15 = *(v38 + 64);
  __chkstk_darwin(v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1004A45B4();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10000C9C0(&qword_1005D0F20, &qword_1004E9390);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v34 - v25;
  if (qword_1005D7D00 != -1)
  {
    swift_once();
  }

  v27 = sub_1001C203C(v18, qword_1005D8020);
  (*(v19 + 16))(v22, v27, v18);
  v28 = *(v19 + 56);
  v37 = v13;
  v28(v13, 1, 1, v18);
  ServerMessageDate.components.getter(a1, &v39);
  result = 60 * v40;
  if ((v40 * 60) >> 64 != (60 * v40) >> 63)
  {
    __break(1u);
    goto LABEL_8;
  }

  v35 = v14;
  sub_1004A4674();
  v30 = sub_1004A4694();
  v31 = *(v30 - 8);
  result = (*(v31 + 48))(v6, 1, v30);
  if (result == 1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  (*(v31 + 32))(v9, v6, v30);
  (*(v31 + 56))(v9, 0, 1, v30);
  sub_1004A4194();
  sub_1004A4584();
  (*(v38 + 8))(v17, v35);
  (*(v19 + 8))(v22, v18);
  v32 = sub_1004A44E4();
  v33 = *(v32 - 8);
  result = (*(v33 + 48))(v26, 1, v32);
  if (result != 1)
  {
    return (*(v33 + 32))(v36, v26, v32);
  }

LABEL_9:
  __break(1u);
  return result;
}

void ServerMessageDate.init(_:)(char *a1)
{
  v54 = a1;
  v51 = sub_1004A44E4();
  v53 = *(v51 - 8);
  v1 = *(v53 + 64);
  __chkstk_darwin(v51);
  v50 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000C9C0(&qword_1005D6830, &qword_1004EC2C0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v52 = &v43 - v5;
  v49 = sub_1004A41B4();
  v48 = *(v49 - 8);
  v6 = *(v48 + 64);
  __chkstk_darwin(v49);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005D7D00 != -1)
  {
    swift_once();
  }

  v9 = sub_1004A45B4();
  sub_1001C203C(v9, qword_1005D8020);
  sub_10000C9C0(&qword_1005D6838, &qword_1004EC2C8);
  v10 = sub_1004A45A4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1004D0FC0;
  v15 = v14 + v13;
  v16 = *(v11 + 104);
  v16(v15, enum case for Calendar.Component.year(_:), v10);
  v16(v15 + v12, enum case for Calendar.Component.month(_:), v10);
  v16(v15 + 2 * v12, enum case for Calendar.Component.day(_:), v10);
  v16(v15 + 3 * v12, enum case for Calendar.Component.hour(_:), v10);
  v16(v15 + 4 * v12, enum case for Calendar.Component.minute(_:), v10);
  v16(v15 + 5 * v12, enum case for Calendar.Component.second(_:), v10);
  v16(v15 + 6 * v12, enum case for Calendar.Component.timeZone(_:), v10);
  sub_100285C08(v14);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1004A4574();

  v17 = sub_1004A4144();
  if (v18)
  {
    __break(1u);
    goto LABEL_13;
  }

  v19 = v17;
  v20 = sub_1004A4154();
  if (v21)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v22 = v20;
  v23 = sub_1004A4124();
  v24 = v52;
  v25 = v53;
  if (v26)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v27 = v23;
  v28 = sub_1004A4134();
  if (v29)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v30 = v28;
  v31 = sub_1004A4164();
  if (v32)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v33 = v31;
  v34 = sub_1004A4174();
  if (v35)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v44 = v34;
  v45 = v33;
  v46 = v30;
  v47 = v27;
  sub_1004A41A4();
  v36 = sub_1004A4694();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v24, 1, v36) == 1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v38 = v50;
  sub_1004A44D4();
  v39 = sub_1004A4664();
  v40 = *(v25 + 8);
  v41 = v38;
  v42 = v51;
  v40(v41, v51);
  (*(v37 + 8))(v24, v36);
  ServerMessageDate.Components.init(year:month:day:hour:minute:second:timeZoneMinutes:)(&v55, v19, v22, v47, v46, v45, v44, v39 / 60);
  if (!v55.is_nil)
  {
    value = v55.value;
    v40(v54, v42);
    (*(v48 + 8))(v8, v49);
    ServerMessageDate.init(_:)(&value);
    return;
  }

LABEL_19:
  __break(1u);
}

BOOL _s13IMAP2Protocol11MessageDataV11BodySectionV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageData.BodyData();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C9C0(&qword_1005CE218, &unk_1004F3FD0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v28 - v11;
  v13 = sub_10000C9C0(&qword_1005D80F8, &qword_1004F3C28);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = v28 - v15;
  if ((static SectionSpecifier.__derived_struct_equals(_:_:)(*a1, *(a1 + 8), *(a1 + 16), *a2, *(a2 + 8), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  v17 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 20) != *(a2 + 20))
    {
      v17 = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  v28[0] = v8;
  v18 = *(type metadata accessor for MessageData.BodySection() + 24);
  v19 = *(v13 + 48);
  sub_10000E268(a1 + v18, v16, &qword_1005CE218, &unk_1004F3FD0);
  sub_10000E268(a2 + v18, &v16[v19], &qword_1005CE218, &unk_1004F3FD0);
  v20 = *(v5 + 48);
  if (v20(v16, 1, v4) == 1)
  {
    if (v20(&v16[v19], 1, v4) == 1)
    {
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  sub_10000E268(v16, v12, &qword_1005CE218, &unk_1004F3FD0);
  if (v20(&v16[v19], 1, v4) == 1)
  {
    sub_1002ED6F0(v12);
LABEL_14:
    v22 = &qword_1005D80F8;
    v23 = &qword_1004F3C28;
    goto LABEL_15;
  }

  v24 = v28[0];
  sub_1002ED74C(&v16[v19], v28[0]);
  v25 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  if (v25 == _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0())
  {
    sub_1004A5384();
    sub_1002ED7B0(&qword_1005D3650, &type metadata accessor for DispatchData);
    sub_1004A5E64();
    v26 = sub_1004A5EA4();
    if (v29 != v28[2])
    {
      __chkstk_darwin(v26);
      v28[-2] = v24;
      v28[-1] = v12;
      sub_1004A5314();
      v27 = v29;
      sub_1002ED6F0(v24);
      sub_1002ED6F0(v12);
      sub_100025F40(v16, &qword_1005CE218, &unk_1004F3FD0);
      return (v27 & 1) != 0;
    }

    sub_1002ED6F0(v24);
    sub_1002ED6F0(v12);
LABEL_10:
    sub_100025F40(v16, &qword_1005CE218, &unk_1004F3FD0);
    return 1;
  }

  sub_1002ED6F0(v24);
  sub_1002ED6F0(v12);
  v22 = &qword_1005CE218;
  v23 = &unk_1004F3FD0;
LABEL_15:
  sub_100025F40(v16, v22, v23);
  return 0;
}

uint64_t _s13IMAP2Protocol11MessageDataV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1)
{
  __chkstk_darwin(a1);
  v3 = v2;
  v4 = *(v2 + 4);
  if (*(v1 + 4))
  {
    if (!*(v2 + 4))
    {
      return 0;
    }
  }

  else
  {
    if (*v2 != *v1)
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = *(v2 + 12);
  if (*(v1 + 12))
  {
    if (!*(v2 + 12))
    {
      return 0;
    }
  }

  else
  {
    if (*(v2 + 8) != *(v1 + 8))
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  v6 = *(v1 + 160);
  v7 = *(v1 + 128);
  v378 = *(v1 + 144);
  v379 = v6;
  v8 = *(v1 + 160);
  v380 = *(v1 + 176);
  v9 = *(v1 + 96);
  v10 = *(v1 + 64);
  v374 = *(v1 + 80);
  v375 = v9;
  v11 = *(v1 + 96);
  v12 = *(v1 + 128);
  v376 = *(v1 + 112);
  v377 = v12;
  v13 = *(v1 + 32);
  v371[0] = *(v1 + 16);
  v371[1] = v13;
  v14 = *(v1 + 64);
  v15 = *(v1 + 16);
  v16 = *(v1 + 32);
  v372 = *(v1 + 48);
  v373 = v14;
  v17 = *(v2 + 160);
  v18 = *(v2 + 128);
  v367 = *(v2 + 144);
  v368 = v17;
  v19 = *(v2 + 160);
  v369 = *(v2 + 176);
  v20 = *(v2 + 96);
  v21 = *(v2 + 64);
  v363 = *(v2 + 80);
  v364 = v20;
  v22 = *(v2 + 96);
  v23 = *(v2 + 128);
  v365 = *(v2 + 112);
  v366 = v23;
  v24 = *(v2 + 32);
  v360[0] = *(v2 + 16);
  v360[1] = v24;
  v25 = *(v2 + 64);
  v27 = *(v2 + 16);
  v26 = *(v2 + 32);
  v361 = *(v2 + 48);
  v362 = v25;
  v28 = *(v1 + 160);
  __src[8] = *(v1 + 144);
  __src[9] = v28;
  __src[10] = *(v1 + 176);
  v29 = *(v1 + 96);
  __src[4] = *(v1 + 80);
  __src[5] = v29;
  v30 = *(v1 + 128);
  __src[6] = *(v1 + 112);
  __src[7] = v30;
  v31 = *(v1 + 32);
  __src[0] = *(v1 + 16);
  __src[1] = v31;
  v32 = *(v1 + 64);
  __src[2] = *(v1 + 48);
  __src[3] = v32;
  v33 = *(v2 + 176);
  *(&__src[20] + 8) = v19;
  *(&__src[21] + 8) = v33;
  *(&__src[16] + 8) = v22;
  *(&__src[17] + 8) = v365;
  *(&__src[18] + 8) = v18;
  *(&__src[19] + 8) = v367;
  *(&__src[15] + 8) = v363;
  *(&__src[11] + 8) = v27;
  *(&__src[12] + 8) = v26;
  *(&__src[13] + 8) = v361;
  *(&__src[14] + 8) = v21;
  v334[8] = v378;
  v334[9] = v8;
  v334[10] = *(v1 + 176);
  v334[4] = v374;
  v334[5] = v11;
  v334[6] = v376;
  v334[7] = v7;
  v334[0] = v15;
  v334[1] = v16;
  v381 = *(v1 + 192);
  v370 = *(v2 + 192);
  LOBYTE(__src[11]) = *(v1 + 192);
  BYTE8(__src[22]) = *(v2 + 192);
  v34 = v1;
  v335 = *(v1 + 192);
  v334[2] = v372;
  v334[3] = v10;
  if (sub_10003EC1C(v334) == 1)
  {
    v35 = *(v3 + 160);
    __dst[8] = *(v3 + 144);
    __dst[9] = v35;
    __dst[10] = *(v3 + 176);
    LOBYTE(__dst[11]) = *(v3 + 192);
    v36 = *(v3 + 96);
    __dst[4] = *(v3 + 80);
    __dst[5] = v36;
    v37 = *(v3 + 128);
    __dst[6] = *(v3 + 112);
    __dst[7] = v37;
    v38 = *(v3 + 32);
    __dst[0] = *(v3 + 16);
    __dst[1] = v38;
    v39 = *(v3 + 64);
    __dst[2] = *(v3 + 48);
    __dst[3] = v39;
    if (sub_10003EC1C(__dst) == 1)
    {
      sub_10000E268(v371, v307, &qword_1005CDFD0, &qword_1004EE450);
      v40 = v307;
LABEL_16:
      sub_10000E268(v360, v40, &qword_1005CDFD0, &qword_1004EE450);
      goto LABEL_17;
    }

    goto LABEL_27;
  }

  v101 = *(v3 + 160);
  __dst[8] = *(v3 + 144);
  __dst[9] = v101;
  __dst[10] = *(v3 + 176);
  LOBYTE(__dst[11]) = *(v3 + 192);
  v102 = *(v3 + 96);
  __dst[4] = *(v3 + 80);
  __dst[5] = v102;
  v103 = *(v3 + 128);
  __dst[6] = *(v3 + 112);
  __dst[7] = v103;
  v104 = *(v3 + 32);
  __dst[0] = *(v3 + 16);
  __dst[1] = v104;
  v105 = *(v3 + 64);
  __dst[2] = *(v3 + 48);
  __dst[3] = v105;
  if (sub_10003EC1C(__dst) == 1)
  {
LABEL_27:
    memcpy(__dst, __src, 0x169uLL);
    sub_10000E268(v371, v307, &qword_1005CDFD0, &qword_1004EE450);
    sub_10000E268(v360, v307, &qword_1005CDFD0, &qword_1004EE450);
    v106 = &unk_1005D6D18;
    v107 = &unk_1004EE458;
    v108 = __dst;
LABEL_28:
    sub_100025F40(v108, v106, v107);
    return 0;
  }

  v109 = *(v3 + 160);
  v356 = *(v3 + 144);
  v357 = v109;
  v358 = *(v3 + 176);
  v359 = *(v3 + 192);
  v110 = *(v3 + 96);
  v352 = *(v3 + 80);
  v353 = v110;
  v111 = *(v3 + 128);
  v354 = *(v3 + 112);
  v355 = v111;
  v112 = *(v3 + 32);
  v348 = *(v3 + 16);
  v349 = v112;
  v113 = *(v3 + 64);
  v350 = *(v3 + 48);
  v351 = v113;
  v114 = *(v34 + 160);
  v307[8] = *(v34 + 144);
  v307[9] = v114;
  v307[10] = *(v34 + 176);
  LOBYTE(v307[11]) = *(v34 + 192);
  v115 = *(v34 + 96);
  v307[4] = *(v34 + 80);
  v307[5] = v115;
  v116 = *(v34 + 128);
  v307[6] = *(v34 + 112);
  v307[7] = v116;
  v117 = *(v34 + 32);
  v307[0] = *(v34 + 16);
  v307[1] = v117;
  v118 = *(v34 + 64);
  v307[2] = *(v34 + 48);
  v307[3] = v118;
  if (sub_10000FE74(v307) == 1)
  {
    v119 = *(v3 + 160);
    v344 = *(v3 + 144);
    v345 = v119;
    v346 = *(v3 + 176);
    v347 = *(v3 + 192);
    v120 = *(v3 + 96);
    v340 = *(v3 + 80);
    v341 = v120;
    v121 = *(v3 + 128);
    v342 = *(v3 + 112);
    v343 = v121;
    v122 = *(v3 + 32);
    v336 = *(v3 + 16);
    v337 = v122;
    v123 = *(v3 + 64);
    v338 = *(v3 + 48);
    v339 = v123;
    if (sub_10000FE74(&v336) == 1)
    {
      sub_10000E268(v371, &v320, &qword_1005CDFD0, &qword_1004EE450);
      v40 = &v320;
      goto LABEL_16;
    }

    sub_10000E268(v371, &v320, &qword_1005CDFD0, &qword_1004EE450);
    sub_10000E268(v360, &v320, &qword_1005CDFD0, &qword_1004EE450);
    sub_100025F40(&v348, &qword_1005CDFD0, &qword_1004EE450);
    goto LABEL_38;
  }

  v124 = *(v3 + 160);
  v344 = *(v3 + 144);
  v345 = v124;
  v346 = *(v3 + 176);
  v347 = *(v3 + 192);
  v125 = *(v3 + 96);
  v340 = *(v3 + 80);
  v341 = v125;
  v126 = *(v3 + 128);
  v342 = *(v3 + 112);
  v343 = v126;
  v127 = *(v3 + 32);
  v336 = *(v3 + 16);
  v337 = v127;
  v128 = *(v3 + 64);
  v338 = *(v3 + 48);
  v339 = v128;
  if (sub_10000FE74(&v336) == 1)
  {
    sub_10000E268(v371, &v320, &qword_1005CDFD0, &qword_1004EE450);
    sub_10000E268(v360, &v320, &qword_1005CDFD0, &qword_1004EE450);
LABEL_38:
    v134 = *(v34 + 160);
    v344 = *(v34 + 144);
    v345 = v134;
    v346 = *(v34 + 176);
    v347 = *(v34 + 192);
    v135 = *(v34 + 96);
    v340 = *(v34 + 80);
    v341 = v135;
    v136 = *(v34 + 128);
    v342 = *(v34 + 112);
    v343 = v136;
    v137 = *(v34 + 32);
    v336 = *(v34 + 16);
    v337 = v137;
    v138 = *(v34 + 64);
    v338 = *(v34 + 48);
    v339 = v138;
    v106 = &qword_1005CDFD0;
    v107 = &qword_1004EE450;
    v108 = &v336;
    goto LABEL_28;
  }

  v328 = v307[8];
  v329 = v307[9];
  v330 = v307[10];
  v331 = v307[11];
  v324 = v307[4];
  v325 = v307[5];
  v326 = v307[6];
  v327 = v307[7];
  v320 = v307[0];
  v321 = v307[1];
  v322 = v307[2];
  v323 = v307[3];
  if (sub_10000FE88(&v320) == 1)
  {
    v139 = UInt32.init(_:)(&v320);
    v140 = *(v139 + 80);
    v408 = *(v139 + 64);
    v409 = v140;
    v410 = *(v139 + 96);
    *&v411 = *(v139 + 112);
    v141 = *(v139 + 16);
    v404 = *v139;
    v405 = v141;
    v142 = *(v139 + 48);
    v406 = *(v139 + 32);
    v407 = v142;
    v316 = v344;
    v317 = v345;
    v318 = v346;
    v319 = v347;
    v312 = v340;
    v313 = v341;
    v314 = v342;
    v315 = v343;
    v308 = v336;
    v309 = v337;
    v310 = v338;
    v311 = v339;
    if (sub_10000FE88(&v308) == 1)
    {
      v143 = UInt32.init(_:)(&v308);
      v144 = *(v143 + 80);
      v419 = *(v143 + 64);
      v420 = v144;
      v421 = *(v143 + 96);
      *&v422 = *(v143 + 112);
      v145 = *(v143 + 16);
      v415 = *v143;
      v416 = v145;
      v146 = *(v143 + 48);
      v417 = *(v143 + 32);
      v418 = v146;
      sub_10000E268(v371, &v295, &qword_1005CDFD0, &qword_1004EE450);
      sub_10000E268(v360, &v295, &qword_1005CDFD0, &qword_1004EE450);
      v147 = static BodyStructure.Multipart.__derived_struct_equals(_:_:)(&v404, &v415);
      goto LABEL_54;
    }

LABEL_52:
    UInt32.init(_:)(&v308);
    sub_10000E268(v371, &v295, &qword_1005CDFD0, &qword_1004EE450);
    sub_10000E268(v360, &v295, &qword_1005CDFD0, &qword_1004EE450);
    sub_100025F40(&v348, &qword_1005CDFD0, &qword_1004EE450);
LABEL_55:
    v316 = __src[8];
    v317 = __src[9];
    v318 = __src[10];
    v319 = __src[11];
    v312 = __src[4];
    v313 = __src[5];
    v314 = __src[6];
    v315 = __src[7];
    v308 = __src[0];
    v309 = __src[1];
    v310 = __src[2];
    v311 = __src[3];
    v106 = &qword_1005CDFD0;
    v107 = &qword_1004EE450;
    v108 = &v308;
    goto LABEL_28;
  }

  v163 = UInt32.init(_:)(&v320);
  v164 = v163[9];
  v412 = v163[8];
  v413 = v164;
  v414 = v163[10];
  v165 = v163[5];
  v408 = v163[4];
  v409 = v165;
  v166 = v163[6];
  v411 = v163[7];
  v410 = v166;
  v167 = v163[1];
  v404 = *v163;
  v405 = v167;
  v168 = v163[2];
  v407 = v163[3];
  v406 = v168;
  v319 = v347;
  v318 = v346;
  v317 = v345;
  v316 = v344;
  v315 = v343;
  v314 = v342;
  v313 = v341;
  v312 = v340;
  v311 = v339;
  v310 = v338;
  v309 = v337;
  v308 = v336;
  if (sub_10000FE88(&v308) == 1)
  {
    goto LABEL_52;
  }

  v182 = UInt32.init(_:)(&v308);
  v183 = v182[9];
  v423 = v182[8];
  v424 = v183;
  v425 = v182[10];
  v184 = v182[5];
  v419 = v182[4];
  v420 = v184;
  v185 = v182[7];
  v421 = v182[6];
  v422 = v185;
  v186 = v182[1];
  v415 = *v182;
  v416 = v186;
  v187 = v182[3];
  v417 = v182[2];
  v418 = v187;
  sub_10000E268(v371, &v295, &qword_1005CDFD0, &qword_1004EE450);
  sub_10000E268(v360, &v295, &qword_1005CDFD0, &qword_1004EE450);
  v147 = static BodyStructure.Singlepart.__derived_struct_equals(_:_:)(&v404, &v415);
LABEL_54:
  v188 = v147;
  sub_100025F40(&v348, &qword_1005CDFD0, &qword_1004EE450);
  if (!v188)
  {
    goto LABEL_55;
  }

LABEL_17:
  v328 = __src[8];
  v329 = __src[9];
  v330 = __src[10];
  v331 = __src[11];
  v324 = __src[4];
  v325 = __src[5];
  v326 = __src[6];
  v327 = __src[7];
  v320 = __src[0];
  v321 = __src[1];
  v322 = __src[2];
  v323 = __src[3];
  sub_100025F40(&v320, &qword_1005CDFD0, &qword_1004EE450);
  if ((sub_1002F2BE0(*(v34 + 200), *(v3 + 200)) & 1) == 0)
  {
    return 0;
  }

  v41 = *(v34 + 352);
  v42 = *(v34 + 320);
  v356 = *(v34 + 336);
  v357 = v41;
  v43 = *(v34 + 352);
  v358 = *(v34 + 368);
  v44 = *(v34 + 288);
  v45 = *(v34 + 256);
  v352 = *(v34 + 272);
  v353 = v44;
  v46 = *(v34 + 288);
  v47 = *(v34 + 320);
  v354 = *(v34 + 304);
  v355 = v47;
  v48 = *(v34 + 224);
  v348 = *(v34 + 208);
  v349 = v48;
  v49 = *(v34 + 256);
  v50 = *(v34 + 208);
  v51 = *(v34 + 224);
  v350 = *(v34 + 240);
  v351 = v49;
  v52 = *(v3 + 352);
  v53 = *(v3 + 320);
  v344 = *(v3 + 336);
  v345 = v52;
  v54 = *(v3 + 352);
  v346 = *(v3 + 368);
  v55 = *(v3 + 288);
  v56 = *(v3 + 256);
  v340 = *(v3 + 272);
  v341 = v55;
  v57 = *(v3 + 288);
  v58 = *(v3 + 320);
  v342 = *(v3 + 304);
  v343 = v58;
  v59 = *(v3 + 224);
  v336 = *(v3 + 208);
  v337 = v59;
  v60 = *(v3 + 256);
  v62 = *(v3 + 208);
  v61 = *(v3 + 224);
  v338 = *(v3 + 240);
  v339 = v60;
  v63 = *(v34 + 352);
  __dst[8] = *(v34 + 336);
  __dst[9] = v63;
  __dst[10] = *(v34 + 368);
  v64 = *(v34 + 288);
  __dst[4] = *(v34 + 272);
  __dst[5] = v64;
  v65 = *(v34 + 320);
  __dst[6] = *(v34 + 304);
  __dst[7] = v65;
  v66 = *(v34 + 224);
  __dst[0] = *(v34 + 208);
  __dst[1] = v66;
  v67 = *(v34 + 256);
  __dst[2] = *(v34 + 240);
  __dst[3] = v67;
  v68 = *(v3 + 368);
  *(&__dst[20] + 8) = v54;
  *(&__dst[21] + 8) = v68;
  *(&__dst[16] + 8) = v57;
  *(&__dst[17] + 8) = v342;
  *(&__dst[18] + 8) = v53;
  *(&__dst[19] + 8) = v344;
  *(&__dst[15] + 8) = v340;
  *(&__dst[11] + 8) = v62;
  *(&__dst[12] + 8) = v61;
  *(&__dst[13] + 8) = v338;
  *(&__dst[14] + 8) = v56;
  v316 = v356;
  v317 = v43;
  v318 = *(v34 + 368);
  v312 = v352;
  v313 = v46;
  v314 = v354;
  v315 = v42;
  v308 = v50;
  v309 = v51;
  v359 = *(v34 + 384);
  v347 = *(v3 + 384);
  LOBYTE(__dst[11]) = *(v34 + 384);
  BYTE8(__dst[22]) = *(v3 + 384);
  v319 = *(v34 + 384);
  v310 = v350;
  v311 = v45;
  if (sub_10003EC1C(&v308) == 1)
  {
    v69 = *(v3 + 352);
    v307[8] = *(v3 + 336);
    v307[9] = v69;
    v307[10] = *(v3 + 368);
    LOBYTE(v307[11]) = *(v3 + 384);
    v70 = *(v3 + 288);
    v307[4] = *(v3 + 272);
    v307[5] = v70;
    v71 = *(v3 + 320);
    v307[6] = *(v3 + 304);
    v307[7] = v71;
    v72 = *(v3 + 224);
    v307[0] = *(v3 + 208);
    v307[1] = v72;
    v73 = *(v3 + 256);
    v307[2] = *(v3 + 240);
    v307[3] = v73;
    if (sub_10003EC1C(v307) == 1)
    {
      sub_10000E268(&v348, &v295, &qword_1005CDFD0, &qword_1004EE450);
      v74 = &v295;
LABEL_21:
      sub_10000E268(&v336, v74, &qword_1005CDFD0, &qword_1004EE450);
      goto LABEL_22;
    }

LABEL_36:
    memcpy(v307, __dst, 0x169uLL);
    sub_10000E268(&v348, &v295, &qword_1005CDFD0, &qword_1004EE450);
    sub_10000E268(&v336, &v295, &qword_1005CDFD0, &qword_1004EE450);
    v106 = &unk_1005D6D18;
    v107 = &unk_1004EE458;
LABEL_51:
    v108 = v307;
    goto LABEL_28;
  }

  v129 = *(v3 + 352);
  v307[8] = *(v3 + 336);
  v307[9] = v129;
  v307[10] = *(v3 + 368);
  LOBYTE(v307[11]) = *(v3 + 384);
  v130 = *(v3 + 288);
  v307[4] = *(v3 + 272);
  v307[5] = v130;
  v131 = *(v3 + 320);
  v307[6] = *(v3 + 304);
  v307[7] = v131;
  v132 = *(v3 + 224);
  v307[0] = *(v3 + 208);
  v307[1] = v132;
  v133 = *(v3 + 256);
  v307[2] = *(v3 + 240);
  v307[3] = v133;
  if (sub_10003EC1C(v307) == 1)
  {
    goto LABEL_36;
  }

  v148 = *(v3 + 352);
  v291 = *(v3 + 336);
  v292 = v148;
  v293 = *(v3 + 368);
  v294 = *(v3 + 384);
  v149 = *(v3 + 288);
  v287 = *(v3 + 272);
  v288 = v149;
  v150 = *(v3 + 320);
  v289 = *(v3 + 304);
  v290 = v150;
  v151 = *(v3 + 224);
  v283 = *(v3 + 208);
  v284 = v151;
  v152 = *(v3 + 256);
  v285 = *(v3 + 240);
  v286 = v152;
  v153 = *(v34 + 352);
  v303 = *(v34 + 336);
  v304 = v153;
  v305 = *(v34 + 368);
  v306 = *(v34 + 384);
  v154 = *(v34 + 272);
  v300 = *(v34 + 288);
  v155 = *(v34 + 320);
  v301 = *(v34 + 304);
  v302 = v155;
  v156 = *(v34 + 224);
  v295 = *(v34 + 208);
  v296 = v156;
  v157 = *(v34 + 256);
  v297 = *(v34 + 240);
  v298 = v157;
  v299 = v154;
  if (sub_10000FE74(&v295) == 1)
  {
    v158 = *(v3 + 352);
    v279 = *(v3 + 336);
    v280 = v158;
    v281 = *(v3 + 368);
    v282 = *(v3 + 384);
    v159 = *(v3 + 288);
    v275 = *(v3 + 272);
    v276 = v159;
    v160 = *(v3 + 320);
    v277 = *(v3 + 304);
    v278 = v160;
    v161 = *(v3 + 224);
    v271 = *(v3 + 208);
    v272 = v161;
    v162 = *(v3 + 256);
    v273 = *(v3 + 240);
    v274 = v162;
    if (sub_10000FE74(&v271) == 1)
    {
      sub_10000E268(&v348, &v259, &qword_1005CDFD0, &qword_1004EE450);
      v74 = &v259;
      goto LABEL_21;
    }

    sub_10000E268(&v348, &v259, &qword_1005CDFD0, &qword_1004EE450);
    sub_10000E268(&v336, &v259, &qword_1005CDFD0, &qword_1004EE450);
    sub_100025F40(&v283, &qword_1005CDFD0, &qword_1004EE450);
LABEL_57:
    v189 = *(v34 + 352);
    v279 = *(v34 + 336);
    v280 = v189;
    v281 = *(v34 + 368);
    v282 = *(v34 + 384);
    v190 = *(v34 + 288);
    v275 = *(v34 + 272);
    v276 = v190;
    v191 = *(v34 + 320);
    v277 = *(v34 + 304);
    v278 = v191;
    v192 = *(v34 + 224);
    v271 = *(v34 + 208);
    v272 = v192;
    v193 = *(v34 + 256);
    v273 = *(v34 + 240);
    v274 = v193;
    v106 = &qword_1005CDFD0;
    v107 = &qword_1004EE450;
    v108 = &v271;
    goto LABEL_28;
  }

  v169 = *(v3 + 352);
  v279 = *(v3 + 336);
  v280 = v169;
  v281 = *(v3 + 368);
  v282 = *(v3 + 384);
  v170 = *(v3 + 288);
  v275 = *(v3 + 272);
  v276 = v170;
  v171 = *(v3 + 320);
  v277 = *(v3 + 304);
  v278 = v171;
  v172 = *(v3 + 224);
  v271 = *(v3 + 208);
  v272 = v172;
  v173 = *(v3 + 256);
  v273 = *(v3 + 240);
  v274 = v173;
  if (sub_10000FE74(&v271) == 1)
  {
    sub_10000E268(&v348, &v259, &qword_1005CDFD0, &qword_1004EE450);
    sub_10000E268(&v336, &v259, &qword_1005CDFD0, &qword_1004EE450);
    goto LABEL_57;
  }

  v267 = v303;
  v268 = v304;
  v269 = v305;
  v270 = v306;
  v263 = v299;
  v264 = v300;
  v265 = v301;
  v266 = v302;
  v259 = v295;
  v260 = v296;
  v261 = v297;
  v262 = v298;
  if (sub_10000FE88(&v259) == 1)
  {
    v194 = UInt32.init(_:)(&v259);
    v195 = *(v194 + 80);
    v386 = *(v194 + 64);
    v387 = v195;
    v388 = *(v194 + 96);
    *&v389 = *(v194 + 112);
    v196 = *(v194 + 16);
    v382 = *v194;
    v383 = v196;
    v197 = *(v194 + 48);
    v384 = *(v194 + 32);
    v385 = v197;
    v255 = v279;
    v256 = v280;
    v257 = v281;
    v258 = v282;
    v251 = v275;
    v252 = v276;
    v253 = v277;
    v254 = v278;
    v247 = v271;
    v248 = v272;
    v249 = v273;
    v250 = v274;
    if (sub_10000FE88(&v247) == 1)
    {
      v198 = UInt32.init(_:)(&v247);
      v199 = *(v198 + 80);
      v397 = *(v198 + 64);
      v398 = v199;
      v399 = *(v198 + 96);
      *&v400 = *(v198 + 112);
      v200 = *(v198 + 16);
      v393 = *v198;
      v394 = v200;
      v201 = *(v198 + 48);
      v395 = *(v198 + 32);
      v396 = v201;
      sub_10000E268(&v348, v240, &qword_1005CDFD0, &qword_1004EE450);
      sub_10000E268(&v336, v240, &qword_1005CDFD0, &qword_1004EE450);
      v202 = static BodyStructure.Multipart.__derived_struct_equals(_:_:)(&v382, &v393);
      goto LABEL_74;
    }

LABEL_72:
    UInt32.init(_:)(&v247);
    sub_10000E268(&v348, v240, &qword_1005CDFD0, &qword_1004EE450);
    sub_10000E268(&v336, v240, &qword_1005CDFD0, &qword_1004EE450);
    sub_100025F40(&v283, &qword_1005CDFD0, &qword_1004EE450);
LABEL_75:
    v255 = __dst[8];
    v256 = __dst[9];
    v257 = __dst[10];
    v258 = __dst[11];
    v251 = __dst[4];
    v252 = __dst[5];
    v253 = __dst[6];
    v254 = __dst[7];
    v247 = __dst[0];
    v248 = __dst[1];
    v249 = __dst[2];
    v250 = __dst[3];
    v106 = &qword_1005CDFD0;
    v107 = &qword_1004EE450;
    v108 = &v247;
    goto LABEL_28;
  }

  v215 = UInt32.init(_:)(&v259);
  v216 = v215[9];
  v390 = v215[8];
  v391 = v216;
  v392 = v215[10];
  v217 = v215[5];
  v386 = v215[4];
  v387 = v217;
  v218 = v215[6];
  v389 = v215[7];
  v388 = v218;
  v219 = v215[1];
  v382 = *v215;
  v383 = v219;
  v220 = v215[2];
  v385 = v215[3];
  v384 = v220;
  v258 = v282;
  v256 = v280;
  v257 = v281;
  v254 = v278;
  v255 = v279;
  v252 = v276;
  v253 = v277;
  v250 = v274;
  v251 = v275;
  v248 = v272;
  v249 = v273;
  v247 = v271;
  if (sub_10000FE88(&v247) == 1)
  {
    goto LABEL_72;
  }

  v221 = UInt32.init(_:)(&v247);
  v222 = v221[9];
  v401 = v221[8];
  v402 = v222;
  v403 = v221[10];
  v223 = v221[5];
  v397 = v221[4];
  v398 = v223;
  v224 = v221[6];
  v400 = v221[7];
  v399 = v224;
  v225 = v221[1];
  v393 = *v221;
  v394 = v225;
  v226 = v221[2];
  v396 = v221[3];
  v395 = v226;
  sub_10000E268(&v348, v240, &qword_1005CDFD0, &qword_1004EE450);
  sub_10000E268(&v336, v240, &qword_1005CDFD0, &qword_1004EE450);
  v202 = static BodyStructure.Singlepart.__derived_struct_equals(_:_:)(&v382, &v393);
LABEL_74:
  v227 = v202;
  sub_100025F40(&v283, &qword_1005CDFD0, &qword_1004EE450);
  if (!v227)
  {
    goto LABEL_75;
  }

LABEL_22:
  v303 = __dst[8];
  v304 = __dst[9];
  v305 = __dst[10];
  v306 = __dst[11];
  v300 = __dst[5];
  v301 = __dst[6];
  v302 = __dst[7];
  v295 = __dst[0];
  v296 = __dst[1];
  v297 = __dst[2];
  v298 = __dst[3];
  v299 = __dst[4];
  sub_100025F40(&v295, &qword_1005CDFD0, &qword_1004EE450);
  v75 = (v34 + 392);
  v76 = *(v34 + 472);
  v275 = *(v34 + 456);
  v276 = v76;
  v277 = *(v34 + 488);
  *&v278 = *(v34 + 504);
  v77 = *(v34 + 408);
  v271 = *(v34 + 392);
  v272 = v77;
  v78 = *(v34 + 440);
  v273 = *(v34 + 424);
  v274 = v78;
  v79 = (v3 + 392);
  v80 = *(v3 + 440);
  v261 = *(v3 + 424);
  v262 = v80;
  v81 = *(v3 + 408);
  v259 = *(v3 + 392);
  v260 = v81;
  *&v266 = *(v3 + 504);
  v82 = *(v3 + 488);
  v264 = *(v3 + 472);
  v265 = v82;
  v263 = *(v3 + 456);
  v83 = *(&v273 + 1);
  v84 = (v34 + 440);
  v85 = (v3 + 440);
  if (!*(&v273 + 1))
  {
    if (!*(&v261 + 1))
    {
      v203 = *(v34 + 408);
      v307[0] = *v75;
      v307[1] = v203;
      v307[2] = *(v34 + 424);
      v204 = *(v34 + 488);
      v307[5] = *(v34 + 472);
      v307[6] = v204;
      *&v307[7] = *(v34 + 504);
      v205 = *v84;
      v307[4] = *(v34 + 456);
      v307[3] = v205;
      sub_10000E268(&v271, &v283, &qword_1005D8038, &unk_1004F4C00);
      sub_10000E268(&v259, &v283, &qword_1005D8038, &unk_1004F4C00);
      result = sub_100025F40(v307, &qword_1005D8038, &unk_1004F4C00);
      goto LABEL_62;
    }

    goto LABEL_50;
  }

  if (!*(&v261 + 1))
  {
LABEL_50:
    v174 = *(v34 + 408);
    v307[0] = *v75;
    v307[1] = v174;
    v175 = *(v34 + 488);
    v307[5] = *(v34 + 472);
    v307[6] = v175;
    v176 = *v84;
    v307[4] = *(v34 + 456);
    v307[3] = v176;
    v177 = *v79;
    *(&v307[8] + 8) = *(v3 + 408);
    *(&v307[7] + 8) = v177;
    v178 = *(v3 + 456);
    *(&v307[10] + 8) = *v85;
    v179 = *(v3 + 472);
    *(&v307[13] + 8) = *(v3 + 488);
    *&v307[2] = *(v34 + 424);
    *(&v307[2] + 1) = *(&v273 + 1);
    v180 = *(v3 + 424);
    *&v307[7] = *(v34 + 504);
    *(&v307[9] + 1) = v180;
    v181 = *(v3 + 504);
    *&v307[10] = *(&v261 + 1);
    *(&v307[14] + 1) = v181;
    *(&v307[12] + 8) = v179;
    *(&v307[11] + 8) = v178;
    sub_10000E268(&v271, &v283, &qword_1005D8038, &unk_1004F4C00);
    sub_10000E268(&v259, &v283, &qword_1005D8038, &unk_1004F4C00);
    v106 = &unk_1005D80F0;
    v107 = &unk_1004F3C20;
    goto LABEL_51;
  }

  v86 = *(v3 + 424);
  v87 = *(v3 + 408);
  v240[0] = *v79;
  v240[1] = v87;
  *&v241 = v86;
  *(&v241 + 1) = *(&v261 + 1);
  v88 = *(v3 + 488);
  v244 = *(v3 + 472);
  v245 = v88;
  v246 = *(v3 + 504);
  v89 = *(v3 + 456);
  v242 = *v85;
  v243 = v89;
  v307[0] = v240[0];
  v307[1] = v87;
  *&v307[7] = v246;
  v307[6] = v88;
  v307[5] = v244;
  v307[4] = v89;
  v307[3] = v242;
  v307[2] = v241;
  v90 = *(v34 + 408);
  v283 = *v75;
  v284 = v90;
  v91 = *(v34 + 424);
  v92 = *v84;
  v93 = *(v34 + 456);
  v94 = *(v34 + 472);
  v95 = *(v34 + 488);
  *&v290 = *(v34 + 504);
  v288 = v94;
  v289 = v95;
  v286 = v92;
  v287 = v93;
  *&v285 = v91;
  *(&v285 + 1) = *(&v273 + 1);
  sub_10000E268(&v271, &v247, &qword_1005D8038, &unk_1004F4C00);
  sub_10000E268(&v259, &v247, &qword_1005D8038, &unk_1004F4C00);
  v96 = static Envelope.__derived_struct_equals(_:_:)(&v283, v307);
  sub_100025F40(v240, &qword_1005D8038, &unk_1004F4C00);
  v97 = *(v34 + 408);
  v247 = *v75;
  v248 = v97;
  *&v249 = *(v34 + 424);
  *(&v249 + 1) = v83;
  v98 = *(v34 + 488);
  v252 = *(v34 + 472);
  v253 = v98;
  *&v254 = *(v34 + 504);
  v99 = *(v34 + 456);
  v250 = *v84;
  v251 = v99;
  result = sub_100025F40(&v247, &qword_1005D8038, &unk_1004F4C00);
  if (!v96)
  {
    return 0;
  }

LABEL_62:
  v206 = *(v34 + 512);
  v207 = *(v3 + 512);
  if (v206)
  {
    if (!v207)
    {
      return 0;
    }

    v208 = *(v3 + 512);

    v209 = sub_100083750(v206, v207);

    v210 = v34;
    if ((v209 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v210 = v34;
    if (v207)
    {
      return 0;
    }
  }

  v211 = *(v210 + 520);
  v212 = *(v3 + 520);
  if (v211)
  {
    if (!v212)
    {
      return 0;
    }

    v213 = *(v3 + 520);

    v214 = sub_100083478(v211, v212);

    v210 = v34;
    if ((v214 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v212)
  {
    return 0;
  }

  v228 = *(v3 + 536);
  if (*(v210 + 536))
  {
    if (!*(v3 + 536))
    {
      return 0;
    }
  }

  else
  {
    if (*(v210 + 528) != *(v3 + 528))
    {
      v228 = 1;
    }

    if (v228)
    {
      return 0;
    }
  }

  v229 = *(v3 + 544);
  if (*(v210 + 544))
  {
    if (!*(v3 + 544))
    {
      return 0;
    }
  }

  else
  {
    if (*(v210 + 540) != *(v3 + 540))
    {
      v229 = 1;
    }

    if (v229)
    {
      return 0;
    }
  }

  v230 = *(v3 + 560);
  if (*(v210 + 560))
  {
    if ((*(v3 + 560) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_96;
  }

  if (*(v3 + 560))
  {
    return 0;
  }

  v231 = *(v210 + 552);
  v232 = *(v3 + 552);
  if (((v232 | v231) & 0x8000000000000000) == 0)
  {
    v233 = v232 == v231;
    v210 = v34;
    if (!v233)
    {
      return 0;
    }

LABEL_96:
    v234 = *(v210 + 576);
    v235 = *(v3 + 576);
    if (v234)
    {
      if (!v235 || (*(v34 + 568) != *(v3 + 568) || v234 != v235) && (sub_1004A6D34() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v235)
    {
      return 0;
    }

    v236 = *(v34 + 592);
    v237 = *(v3 + 592);
    if (v236)
    {
      if (!v237 || (static ListID.__derived_struct_equals(_:_:)(*(v34 + 584), v236, *(v3 + 584), v237) & 1) == 0)
      {
        return 0;
      }
    }

    else if (v237)
    {
      return 0;
    }

    v238 = *(v34 + 608);
    v239 = *(v3 + 608);
    if (v238)
    {
      return v239 && (static ListID.__derived_struct_equals(_:_:)(*(v34 + 600), v238, *(v3 + 600), v239) & 1) != 0;
    }

    return !v239;
  }

  __break(1u);
  return result;
}

uint64_t sub_1002ED2C8(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1002ED2E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 616))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 200);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1002ED330(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 584) = 0u;
    *(result + 600) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 616) = 1;
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
      *(result + 200) = (a2 - 1);
      return result;
    }

    *(result + 616) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002ED434(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10000C9C0(&qword_1005CE218, &unk_1004F3FD0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1002ED504(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10000C9C0(&qword_1005CE218, &unk_1004F3FD0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1002ED5B4()
{
  sub_1002ED648();
  if (v0 <= 0x3F)
  {
    sub_1002ED698();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1002ED648()
{
  if (!qword_1005D80B0)
  {
    v0 = sub_1004A6374();
    if (!v1)
    {
      atomic_store(v0, &qword_1005D80B0);
    }
  }
}

void sub_1002ED698()
{
  if (!qword_1005D80B8)
  {
    type metadata accessor for MessageData.BodyData();
    v0 = sub_1004A6374();
    if (!v1)
    {
      atomic_store(v0, &qword_1005D80B8);
    }
  }
}

uint64_t sub_1002ED6F0(uint64_t a1)
{
  v2 = type metadata accessor for MessageData.BodyData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002ED74C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageData.BodyData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002ED7B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002ED7F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1002EDBE0();
}