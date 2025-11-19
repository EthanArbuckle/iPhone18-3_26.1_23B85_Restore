uint64_t sub_1003E82F0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(uint64_t *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>)
{
  result = sub_1004910D4(*a1, *a2, a2[1], a3, a4, a5, *a6, a7, a8);
  if (!v9)
  {
    *a9 = result;
  }

  return result;
}

BOOL _s12NIOIMAPCore28EnvelopeV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1;
    v7 = *a1 == *a2 && v4 == v5;
    if (!v7 && (sub_1004A6D34() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v8 = *(a2 + 16);
  if (a1[2])
  {
    if (!v8)
    {
      return 0;
    }

    v9 = a1[3];
    v10 = *(a1 + 8) | ((*(a1 + 18) | (*(a1 + 38) << 16)) << 32);
    v11 = *(a2 + 24);
    v12 = *(a2 + 32) | ((*(a2 + 36) | (*(a2 + 38) << 16)) << 32);
    v13 = *(a2 + 16);

    LOBYTE(v9) = sub_10020FBD0(v14, v9, v10 & 0xFFFFFFFFFFFFFFLL, v8, v11, v12 & 0xFFFFFFFFFFFFFFLL);

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if ((sub_100398218(a1[5], *(a2 + 40)) & 1) == 0 || (sub_100398218(a1[6], *(a2 + 48)) & 1) == 0 || (sub_100398218(a1[7], *(a2 + 56)) & 1) == 0 || (sub_100398218(a1[8], *(a2 + 64)) & 1) == 0 || (sub_100398218(a1[9], *(a2 + 72)) & 1) == 0 || (sub_100398218(a1[10], *(a2 + 80)) & 1) == 0)
  {
    return 0;
  }

  v15 = a1[12];
  v16 = *(a2 + 96);
  if (v15)
  {
    if (!v16 || (a1[11] != *(a2 + 88) || v15 != v16) && (sub_1004A6D34() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v17 = a1[14];
  v18 = *(a2 + 112);
  if (v17)
  {
    return v18 && (a1[13] == *(a2 + 104) && v17 == v18 || (sub_1004A6D34() & 1) != 0);
  }

  return !v18;
}

unint64_t sub_1003E8530()
{
  result = qword_1005DC5A8;
  if (!qword_1005DC5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC5A8);
  }

  return result;
}

uint64_t sub_1003E8584(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003E85CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003E8638@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1004910D4(*a1, *a2, a2[1], *(v3 + 16), *(v3 + 24), *(v3 + 32), **(v3 + 40), *(v3 + 48), *(v3 + 56));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

__n128 Expire.dateTime.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 32);
  result = *(v1 + 41);
  *(a1 + 41) = result;
  return result;
}

__n128 Expire.dateTime.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v2;
  *(v1 + 32) = *(a1 + 32);
  result = *(a1 + 41);
  *(v1 + 41) = result;
  return result;
}

void __swiftcall Expire.init(dateTime:)(NIOIMAPCore2::Expire *__return_ptr retstr, NIOIMAPCore2::FullDateTime *dateTime)
{
  v2 = *&dateTime->date.day;
  *&retstr->dateTime.date.year = *&dateTime->date.year;
  *&retstr->dateTime.date.day = v2;
  *&retstr->dateTime.time.minute = *&dateTime->time.minute;
  *(&retstr->dateTime.time.second + 1) = *(&dateTime->time.second + 1);
}

void Expire.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  sub_1004A6EB4(*v0);
  sub_1004A6EB4(v1);
  sub_1004A6EB4(v2);
  sub_1004A6EB4(v3);
  sub_1004A6EB4(v4);
  sub_1004A6EB4(v5);
  if (v7)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v6);
  }
}

Swift::Int Expire.hashValue.getter()
{
  sub_1004A6E94();
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  sub_1004A6EB4(*v0);
  sub_1004A6EB4(v1);
  sub_1004A6EB4(v2);
  sub_1004A6EB4(v3);
  sub_1004A6EB4(v4);
  sub_1004A6EB4(v5);
  if (v7)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v6);
  }

  return sub_1004A6F14();
}

Swift::Int sub_1003E8850()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  sub_1004A6E94();
  sub_1004A6EB4(v1);
  sub_1004A6EB4(v2);
  sub_1004A6EB4(v3);
  sub_1004A6EB4(v4);
  sub_1004A6EB4(v5);
  sub_1004A6EB4(v6);
  if (v8 == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v7);
  }

  return sub_1004A6F14();
}

void sub_1003E8930()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  sub_1004A6EB4(*v0);
  sub_1004A6EB4(v1);
  sub_1004A6EB4(v2);
  sub_1004A6EB4(v3);
  sub_1004A6EB4(v4);
  sub_1004A6EB4(v5);
  if (v7 == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v6);
  }
}

Swift::Int sub_1003E89D0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  sub_1004A6E94();
  sub_1004A6EB4(v1);
  sub_1004A6EB4(v2);
  sub_1004A6EB4(v3);
  sub_1004A6EB4(v4);
  sub_1004A6EB4(v5);
  sub_1004A6EB4(v6);
  if (v8 == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v7);
  }

  return sub_1004A6F14();
}

uint64_t sub_1003E8AAC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return _s12NIOIMAPCore26ExpireV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v7) & 1;
}

uint64_t _s12NIOIMAPCore26ExpireV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40))
  {
    v2 = *(a2 + 56);
    if (*(a1 + 56))
    {
      if (*(a2 + 56))
      {
        return 1;
      }
    }

    else if ((*(a2 + 56) & 1) == 0 && *(a1 + 48) == *(a2 + 48))
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1003E8BA8()
{
  result = qword_1005DC5B0;
  if (!qword_1005DC5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC5B0);
  }

  return result;
}

uint64_t sub_1003E8BFC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 57))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003E8C1C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
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

  *(result + 57) = v3;
  return result;
}

uint64_t sub_1003E8C6C(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v8 = *(v1 + 20);
    result = sub_1002F178C(32, 0xE100000000000000, (v1 + 8), *(v1 + 20));
    if (v10)
    {
      v11._countAndFlagsBits = 32;
      v11._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v11, v8);
    }

    v12 = result;
    v13 = *(v1 + 20);
    v14 = __CFADD__(v13, result);
    v15 = v13 + result;
    if (v14)
    {
      goto LABEL_26;
    }

    *(v1 + 20) = v15;
    v16 = sub_1003EC39C(v4, v5, v6, v7);
    v4 = v12 + v16;
    if (__OFADD__(v12, v16))
    {
      __break(1u);
    }
  }

  result = sub_10048FB98(*(a1 + 24));
  v17 = v4 + result;
  if (__OFADD__(v4, result))
  {
    goto LABEL_22;
  }

  v18 = *(v1 + 20);
  result = sub_1002F178C(32, 0xE100000000000000, (v1 + 8), *(v1 + 20));
  if (v19)
  {
    v20._countAndFlagsBits = 32;
    v20._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v20, v18);
  }

  v21 = *(v1 + 20);
  v22 = (v21 + result);
  if (__CFADD__(v21, result))
  {
    goto LABEL_23;
  }

  *(v1 + 20) = v22;
  v23 = v17 + result;
  if (__OFADD__(v17, result))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v24._object = *(a1 + 16);
  if (!v24._object)
  {
    v31 = v17 + result;
    goto LABEL_18;
  }

  v24._countAndFlagsBits = *(a1 + 8);
  sub_1004A5994(v24);
  v34._countAndFlagsBits = 32;
  v34._object = 0xE100000000000000;
  sub_1004A5994(v34);
  v25 = sub_1002F178C(0x2054455352414843, 0xE800000000000000, (v1 + 8), v22);
  if (v26)
  {
    v27._countAndFlagsBits = 0x2054455352414843;
    v27._object = 0xE800000000000000;
    v25 = ByteBuffer._setStringSlowpath(_:at:)(v27, v22);
  }

  v28 = v25;

  v29 = *(v2 + 20);
  v14 = __CFADD__(v29, v28);
  v30 = v29 + v28;
  if (v14)
  {
    goto LABEL_27;
  }

  *(v2 + 20) = v30;
  v31 = v23 + v28;
  if (__OFADD__(v23, v28))
  {
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_18:
  v32 = sub_10048AE40(*a1);
  v33 = __OFADD__(v31, v32);
  result = v31 + v32;
  if (v33)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

unint64_t ExtendedSearchOptions.key.getter()
{
  v1 = *v0;
  sub_1000B3664(*v0);
  return v1;
}

unint64_t ExtendedSearchOptions.key.setter(unint64_t a1)
{
  result = sub_1000B37D8(*v1);
  *v1 = a1;
  return result;
}

uint64_t ExtendedSearchOptions.sourceOptions.getter()
{
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[6];
  v3 = v0[7];
  sub_1003E93EC(v1, v2, v4);
  return v1;
}

uint64_t ExtendedSearchOptions.sourceOptions.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[7];
  result = sub_1003E9490(v4[4], v4[5], v4[6]);
  v4[4] = a1;
  v4[5] = a2;
  v4[6] = a3;
  v4[7] = a4;
  return result;
}

double ExtendedSearchOptions.init(key:charset:returnOptions:sourceOptions:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  *&v14 = a1;
  *(&v14 + 1) = a2;
  *&v15 = a3;
  *(&v15 + 1) = a4;
  *&v16 = a5;
  *(&v16 + 1) = a6;
  *&v17 = a7;
  *(&v17 + 1) = a8;
  v18[0] = a1;
  v18[1] = a2;
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a5;
  v18[5] = a6;
  v18[6] = a7;
  v18[7] = a8;
  sub_1003E94E8(&v14, &v13);
  sub_1003D9E64(v18);
  v10 = v15;
  *a9 = v14;
  a9[1] = v10;
  result = *&v16;
  v12 = v17;
  a9[2] = v16;
  a9[3] = v12;
  return result;
}

void ExtendedSearchOptions.hash(into:)(uint64_t a1)
{
  v2 = v1;
  SearchKey.hash(into:)(a1, *v2);
  if (v2[2])
  {
    v4 = v2[1];
    sub_1004A6EC4(1u);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1004A6EC4(0);
  }

  sub_1003ABB18(a1, v2[3]);
  v5 = v2[4];
  if (v5 && (v7 = v2[6], v6 = v2[7], sub_1004A6EC4(1u), sub_1003AEFBC(a1, v5), v7))
  {
    sub_1004A6EC4(1u);

    sub_1003A1878(a1, v7, v6);
  }

  else
  {
    sub_1004A6EC4(0);
  }
}

Swift::Int ExtendedSearchOptions.hashValue.getter()
{
  sub_1004A6E94();
  ExtendedSearchOptions.hash(into:)(v1);
  return sub_1004A6F14();
}

Swift::Int sub_1003E90D8()
{
  sub_1004A6E94();
  ExtendedSearchOptions.hash(into:)(v1);
  return sub_1004A6F14();
}

uint64_t sub_1003E9114(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return _s12NIOIMAPCore221ExtendedSearchOptionsV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v8) & 1;
}

uint64_t _s12NIOIMAPCore221ExtendedSearchOptionsV23__derived_struct_equalsySbAC_ACtFZ_0(unint64_t *a1, unint64_t *a2)
{
  if ((static SearchKey.__derived_enum_equals(_:_:)(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[2];
  v5 = a2[2];
  if (v4)
  {
    if (!v5 || (a1[1] != a2[1] || v4 != v5) && (sub_1004A6D34() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if ((sub_1002F361C(a1[3], a2[3]) & 1) == 0)
  {
    return 0;
  }

  v7 = a1[4];
  v6 = a1[5];
  v9 = a1[6];
  v8 = a1[7];
  v11 = a2[4];
  v10 = a2[5];
  v13 = a2[6];
  v12 = a2[7];
  if (!v7)
  {
    if (!v11)
    {
      return 1;
    }

    goto LABEL_19;
  }

  if (!v11)
  {
LABEL_19:
    sub_1003E93EC(v11, v10, v13);
    sub_1003E93EC(v7, v6, v9);
    sub_1003E9490(v7, v6, v9);
    v20 = v11;
    v21 = v10;
    v22 = v13;
LABEL_26:
    sub_1003E9490(v20, v21, v22);
    return 0;
  }

  v14 = sub_100397D28(v7, v11);
  v15 = v13;
  v16 = v9;
  if ((v14 & 1) == 0)
  {
    goto LABEL_24;
  }

  if (v9)
  {
    if (v13)
    {
      v17 = sub_10020FB40(v9, v13);
      v15 = v13;
      v16 = v9;
      if (v17)
      {
        sub_1003E93EC(v11, v10, v13);
        sub_1003E93EC(v7, v6, v9);

        sub_10039FBE4(v8, v12);
        v19 = v18;

        if (v19)
        {
          goto LABEL_29;
        }

        goto LABEL_25;
      }
    }

    else
    {
      v15 = 0;
      v16 = v9;
    }

LABEL_24:
    sub_1003E93EC(v11, v10, v15);
    sub_1003E93EC(v7, v6, v16);

LABEL_25:
    sub_10018A510(v10, v13);
    v20 = v7;
    v21 = v6;
    v22 = v9;
    goto LABEL_26;
  }

  if (v13)
  {
    v16 = 0;
    v15 = v13;
    goto LABEL_24;
  }

  sub_1003E93EC(v11, v10, 0);
  sub_1003E93EC(v7, v6, 0);

LABEL_29:
  sub_10018A510(v10, v13);
  sub_1003E9490(v7, v6, v9);
  return 1;
}

uint64_t sub_1003E93EC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {

    return sub_1003E9444(a2, a3);
  }

  return result;
}

uint64_t sub_1003E9444(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1003E9490(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {

    return sub_10018A510(a2, a3);
  }

  return result;
}

unint64_t sub_1003E9524()
{
  result = qword_1005DC5B8;
  if (!qword_1005DC5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC5B8);
  }

  return result;
}

uint64_t sub_1003E9578(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1003E9590(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1003E95A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003E95F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003E9688(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005DC5C0, &unk_100502CA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ExtendedSearchResponse.init(correlator:kind:returnData:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  sub_1003E97D0(*a1, v8);

  sub_100073984(v7, v8);

  *a4 = v7;
  *(a4 + 8) = v8;
  *(a4 + 16) = v9;
  *(a4 + 24) = v10;
  *(a4 + 32) = v11;
  *(a4 + 33) = a2 & 1;
  *(a4 + 40) = a3;
  return result;
}

uint64_t sub_1003E97D0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void ExtendedSearchResponse.hash(into:)()
{
  v81 = sub_10000C9C0(&qword_1005DC5C8, &qword_10050B730);
  v75 = *(v81 - 8);
  v1 = *(v75 + 64);
  __chkstk_darwin(v81);
  v74 = &v68 - v2;
  v73 = sub_10000C9C0(&qword_1005CDA68, &qword_1004CF7D0);
  v85 = *(v73 - 8);
  v3 = *(v85 + 64);
  __chkstk_darwin(v73);
  v69 = &v68 - v4;
  v5 = sub_10000C9C0(&qword_1005CDA78, &unk_1004CF7E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v72 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v71 = &v68 - v9;
  v80 = type metadata accessor for ParameterValue();
  v10 = *(*(v80 - 8) + 64);
  __chkstk_darwin(v80);
  v79 = (&v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78 = sub_10000C9C0(&qword_1005DBC78, &unk_100502CB0);
  v12 = *(*(v78 - 8) + 64);
  __chkstk_darwin(v78);
  v83 = (&v68 - v13);
  v14 = sub_10000C9C0(&qword_1005DC5D0, &qword_10050B9D0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v77 = &v68 - v16;
  v17 = sub_10000C9C0(&qword_1005DC5D8, &unk_100502CC0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v76 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v82 = &v68 - v21;
  v84 = type metadata accessor for SearchReturnData();
  v22 = *(v84 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v84);
  v25 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v68 - v27;
  v29 = v0[1];
  v86 = &v68 - v27;
  if (!v29)
  {
    goto LABEL_7;
  }

  v30 = *(v0 + 32);
  v32 = v0[2];
  v31 = v0[3];
  v33 = *v0;
  sub_1004A6EC4(1u);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (v32)
  {
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v31 | (v31 << 32));
  }

  else
  {
    sub_1004A6EC4(0);
  }

  v28 = v86;
  if ((v30 & 1) == 0)
  {
    sub_1004A6EC4(1u);
    sub_1004A6EE4(HIDWORD(v31));
  }

  else
  {
LABEL_7:
    sub_1004A6EC4(0);
  }

  sub_1004A6EB4(*(v0 + 33));
  v34 = v0[5];
  v35 = *(v34 + 16);
  sub_1004A6EB4(v35);
  if (v35)
  {
    v36 = 0;
    v88 = v34 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v87 = *(v22 + 72);
    v70 = (v85 + 48);
    v75 += 48;
    v37 = &unk_100502CC0;
    v85 = v35;
    do
    {
      sub_1003EBF6C(v88 + v87 * v36, v28, type metadata accessor for SearchReturnData);
      sub_1003EBF6C(v28, v25, type metadata accessor for SearchReturnData);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 2)
      {
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload != 1)
          {
            v49 = v37;
            v50 = v82;
            sub_100025FDC(v25, v82, &qword_1005DC5D8, v49);
            sub_1004A6EB4(2uLL);
            v51 = v76;
            sub_10000E268(v50, v76, &qword_1005DC5D8, v49);
            if ((*v75)(v51, 1, v81) == 1)
            {
              sub_1004A6EB4(1uLL);
              v52 = v50;
            }

            else
            {
              v62 = v74;
              sub_100025FDC(v51, v74, &qword_1005DC5C8, &qword_10050B730);
              sub_1004A6EB4(0);
              sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
              sub_1000956A0();
              sub_1004A5564();
              v63 = v62;
              v35 = v85;
              sub_100025F40(v63, &qword_1005DC5C8, &qword_10050B730);
              v52 = v82;
            }

            sub_100025F40(v52, &qword_1005DC5D8, v49);
            v37 = v49;
            v28 = v86;
            goto LABEL_12;
          }

          v40 = *v25;
          v41 = 1;
        }

        else
        {
          v40 = *v25;
          v41 = 0;
        }

        sub_1004A6EB4(v41);
        sub_1004A6EE4(v40);
      }

      else
      {
        if (EnumCaseMultiPayload <= 4)
        {
          v39 = *v25;
          if (EnumCaseMultiPayload == 3)
          {
            sub_1004A6EB4(3uLL);
            sub_1004A6EB4(v39);
          }

          else
          {
            sub_1004A6EB4(4uLL);
            sub_1004A6EF4(v39);
          }

          goto LABEL_12;
        }

        if (EnumCaseMultiPayload != 5)
        {
          v53 = v83;
          sub_100025FDC(v25, v83, &qword_1005DBC78, &unk_100502CB0);
          sub_1004A6EB4(6uLL);
          v54 = *v53;
          v55 = v53[1];
          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
          v56 = v79;
          sub_1003EBF6C(v53 + *(v78 + 52), v79, type metadata accessor for ParameterValue);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v57 = *v56;
            sub_1004A6EB4(1uLL);
            sub_1004A6EB4(*(v57 + 16));
            v58 = *(v57 + 16);
            if (v58)
            {
              v59 = (v57 + 40);
              do
              {
                v60 = *(v59 - 1);
                v61 = *v59;

                _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

                v59 += 2;
                --v58;
              }

              while (v58);

              v35 = v85;
              goto LABEL_37;
            }

            v35 = v85;
          }

          else
          {
            v64 = v71;
            sub_100025FDC(v56, v71, &qword_1005CDA78, &unk_1004CF7E0);
            sub_1004A6EB4(0);
            v65 = v72;
            sub_10000E268(v64, v72, &qword_1005CDA78, &unk_1004CF7E0);
            if ((*v70)(v65, 1, v73) == 1)
            {
              sub_1004A6EB4(1uLL);
            }

            else
            {
              v66 = v69;
              sub_100025FDC(v65, v69, &qword_1005CDA68, &qword_1004CF7D0);
              sub_1004A6EB4(0);
              sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
              sub_1000956A0();
              sub_1004A5564();
              v67 = v66;
              v35 = v85;
              sub_100025F40(v67, &qword_1005CDA68, &qword_1004CF7D0);
            }

            sub_100025F40(v64, &qword_1005CDA78, &unk_1004CF7E0);
LABEL_37:
            v28 = v86;
          }

          sub_100025F40(v83, &qword_1005DBC78, &unk_100502CB0);
          goto LABEL_12;
        }

        v43 = *v25;
        v42 = *(v25 + 1);
        v44 = v25[8];
        v45 = sub_10000C9C0(&qword_1005DC5E0, &qword_100502CD0);
        v46 = v77;
        sub_100025FDC(&v25[*(v45 + 48)], v77, &qword_1005DC5D0, &qword_10050B9D0);
        sub_1004A6EB4(5uLL);
        v47 = v44;
        v35 = v85;
        sub_1004A6EB4(v47);
        sub_1004A6EE4(v43);
        sub_1004A6EE4(v42);
        sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
        sub_1000956A0();
        sub_1004A5564();
        v48 = v46;
        v28 = v86;
        sub_100025F40(v48, &qword_1005DC5D0, &qword_10050B9D0);
      }

LABEL_12:
      ++v36;
      sub_1003EBFD4(v28);
    }

    while (v36 != v35);
  }
}

Swift::Int ExtendedSearchResponse.hashValue.getter()
{
  sub_1004A6E94();
  ExtendedSearchResponse.hash(into:)();
  return sub_1004A6F14();
}

Swift::Int sub_1003EA23C()
{
  sub_1004A6E94();
  ExtendedSearchResponse.hash(into:)();
  return sub_1004A6F14();
}

uint64_t sub_1003EA278(_OWORD *a1, __int128 *a2)
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
  return _s12NIOIMAPCore222ExtendedSearchResponseV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v8) & 1;
}

uint64_t ExtendedSearchResponse.matchedUIDs.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10000C9C0(&qword_1005DC5D0, &qword_10050B9D0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  if (*(v1 + 33) == 1)
  {
    sub_1003EA44C(v6);
    v7 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
    (*(*(v7 - 8) + 32))(a1, v6, v7);
    v8 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
    return (*(*(v8 - 8) + 56))(a1, 0, 1, v8);
  }

  else
  {
    v10 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
    v11 = *(*(v10 - 8) + 56);

    return v11(a1, 1, 1, v10);
  }
}

uint64_t sub_1003EA44C@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v77 = type metadata accessor for SearchReturnData();
  v73 = *(v77 - 8);
  v2 = *(v73 + 64);
  __chkstk_darwin(v77);
  v69 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v63 - v5;
  __chkstk_darwin(v7);
  v9 = &v63 - v8;
  v75 = sub_10000C9C0(&qword_1005DC5C8, &qword_10050B730);
  v10 = *(v75 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v75);
  v64 = &v63 - v12;
  v13 = sub_10000C9C0(&qword_1005DC600, &unk_100502E30);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v67 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v68 = &v63 - v17;
  __chkstk_darwin(v18);
  v76 = &v63 - v19;
  __chkstk_darwin(v20);
  v70 = &v63 - v21;
  __chkstk_darwin(v22);
  v65 = &v63 - v23;
  __chkstk_darwin(v24);
  v66 = &v63 - v25;
  __chkstk_darwin(v26);
  v28 = &v63 - v27;
  __chkstk_darwin(v29);
  v74 = &v63 - v30;
  v78 = *(v1 + 40);
  v31 = *(v78 + 16);
  v72 = v78;

  if (v31)
  {
    v32 = (v10 + 48);
    v33 = v72 + ((*(v73 + 80) + 32) & ~*(v73 + 80));
    v34 = *(v73 + 72);
    for (i = v31; i; --i)
    {
      sub_1003EBF6C(v33, v9, type metadata accessor for SearchReturnData);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        if ((*v32)(v9, 1, v75) != 1)
        {
          v52 = v64;
          sub_100025FDC(v9, v64, &qword_1005DC5C8, &qword_10050B730);
          sub_100025FDC(v52, v28, &qword_1005DC5D0, &qword_10050B9D0);
          v53 = sub_10000C9C0(&qword_1005DC5D0, &qword_10050B9D0);
          v54 = *(v53 - 8);
          v55 = *(v54 + 56);
          v55(v28, 0, 1, v53);
          sub_100025F40(v28, &qword_1005DC600, &unk_100502E30);
          v56 = v66;
          sub_1003EAF58(v33, v66);
          v57 = v65;
          sub_10000E268(v56, v65, &qword_1005DC600, &unk_100502E30);
          result = (*(v54 + 48))(v57, 1, v53);
          if (result != 1)
          {
            v59 = v74;
            sub_100025FDC(v57, v74, &qword_1005DC5D0, &qword_10050B9D0);
            sub_100025F40(v56, &qword_1005DC600, &unk_100502E30);
            v55(v59, 0, 1, v53);
            sub_100025F40(&v78, &qword_1005DC5E8, &qword_100502CD8);
            return sub_100025FDC(v59, v71, &qword_1005DC5D0, &qword_10050B9D0);
          }

LABEL_28:
          __break(1u);
          return result;
        }

        sub_100025F40(v9, &qword_1005DC5D8, &unk_100502CC0);
      }

      else
      {
        sub_1003EBFD4(v9);
      }

      v36 = sub_10000C9C0(&qword_1005DC5D0, &qword_10050B9D0);
      (*(*(v36 - 8) + 56))(v28, 1, 1, v36);
      sub_100025F40(v28, &qword_1005DC600, &unk_100502E30);
      v33 += v34;
    }
  }

  v37 = sub_10000C9C0(&qword_1005DC5D0, &qword_10050B9D0);
  v75 = *(v37 - 8);
  v38 = *(v75 + 56);
  v38(v74, 1, 1, v37);
  if (v31)
  {
    v39 = v72 + ((*(v73 + 80) + 32) & ~*(v73 + 80));
    v40 = *(v73 + 72);
    while (1)
    {
      sub_1003EBF6C(v39, v6, type metadata accessor for SearchReturnData);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        break;
      }

      sub_1003EBFD4(v6);
      v41 = v76;
      v38(v76, 1, 1, v37);
      sub_100025F40(v41, &qword_1005DC600, &unk_100502E30);
      v39 += v40;
      if (!--v31)
      {
        goto LABEL_12;
      }
    }

    v45 = sub_10000C9C0(&qword_1005DC5E0, &qword_100502CD0);
    v46 = v76;
    sub_100025FDC(&v6[*(v45 + 48)], v76, &qword_1005DC5D0, &qword_10050B9D0);
    v38(v46, 0, 1, v37);
    sub_100025F40(v46, &qword_1005DC600, &unk_100502E30);
    v47 = v69;
    sub_1003EBF6C(v39, v69, type metadata accessor for SearchReturnData);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v49 = v67;
    if (EnumCaseMultiPayload == 5)
    {
      v50 = v68;
      sub_100025FDC(v47 + *(v45 + 48), v68, &qword_1005DC5D0, &qword_10050B9D0);
      v51 = 0;
      v42 = v70;
    }

    else
    {
      sub_1003EBFD4(v47);
      v51 = 1;
      v42 = v70;
      v50 = v68;
    }

    v60 = v75;
    v38(v50, v51, 1, v37);
    sub_10000E268(v50, v49, &qword_1005DC600, &unk_100502E30);
    v43 = *(v60 + 48);
    result = v43(v49, 1, v37);
    if (result == 1)
    {
      __break(1u);
      goto LABEL_28;
    }

    sub_100025FDC(v49, v42, &qword_1005DC5D0, &qword_10050B9D0);
    sub_100025F40(v50, &qword_1005DC600, &unk_100502E30);
    v38(v42, 0, 1, v37);
    sub_100025F40(&v78, &qword_1005DC5E8, &qword_100502CD8);
    v44 = v43(v42, 1, v37);
  }

  else
  {
LABEL_12:
    v42 = v70;
    v38(v70, 1, 1, v37);
    sub_100025F40(&v78, &qword_1005DC5E8, &qword_100502CD8);
    v43 = *(v75 + 48);
    v44 = v43(v42, 1, v37);
  }

  if (v44 == 1)
  {
    sub_100016D2C();
    sub_1004A7114();
    v61 = v43(v42, 1, v37);
    v62 = v74;
    if (v61 != 1)
    {
      sub_100025F40(v42, &qword_1005DC600, &unk_100502E30);
    }
  }

  else
  {
    sub_100025FDC(v42, v71, &qword_1005DC5D0, &qword_10050B9D0);
    v62 = v74;
  }

  result = v43(v62, 1, v37);
  if (result != 1)
  {
    return sub_100025F40(v62, &qword_1005DC600, &unk_100502E30);
  }

  return result;
}

uint64_t ExtendedSearchResponse.matchedSequenceNumbers.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10000C9C0(&qword_1005DC5D0, &qword_10050B9D0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  if (*(v1 + 33))
  {
    v7 = sub_10000C9C0(&qword_1005CDA58, &qword_1004CF7C0);
    v8 = *(*(v7 - 8) + 56);

    return v8(a1, 1, 1, v7);
  }

  else
  {
    sub_1003EA44C(v6);
    v10 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
    (*(*(v10 - 8) + 32))(a1, v6, v10);
    v11 = sub_10000C9C0(&qword_1005CDA58, &qword_1004CF7C0);
    return (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
  }
}

uint64_t sub_1003EAF58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SearchReturnData();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C9C0(&qword_1005DC5C8, &qword_10050B730);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - v11;
  sub_1003EBF6C(a1, v7, type metadata accessor for SearchReturnData);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_100025F40(v7, &qword_1005DC5D8, &unk_100502CC0);
      v13 = 1;
    }

    else
    {
      sub_100025FDC(v7, v12, &qword_1005DC5C8, &qword_10050B730);
      sub_100025FDC(v12, a2, &qword_1005DC5D0, &qword_10050B9D0);
      v13 = 0;
    }
  }

  else
  {
    sub_1003EBFD4(v7);
    v13 = 1;
  }

  v14 = sub_10000C9C0(&qword_1005DC5D0, &qword_10050B9D0);
  return (*(*(v14 - 8) + 56))(a2, v13, 1, v14);
}

uint64_t ExtendedSearchResponse.count.getter()
{
  v1 = type metadata accessor for SearchReturnData();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v16 = *(v0 + 40);
  v9 = *(v16 + 16);

  if (!v9)
  {
LABEL_5:
    v13 = 0;
LABEL_8:
    sub_100025F40(&v16, &qword_1005DC5E8, &qword_100502CD8);
    return v13;
  }

  v11 = v10 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v12 = *(v2 + 72);
  while (1)
  {
    sub_1003EBF6C(v11, v8, type metadata accessor for SearchReturnData);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      break;
    }

    sub_1003EBFD4(v8);
    v11 += v12;
    if (!--v9)
    {
      goto LABEL_5;
    }
  }

  sub_1003EBF6C(v11, v5, type metadata accessor for SearchReturnData);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v13 = *v5;
    goto LABEL_8;
  }

  result = sub_1003EBFD4(v5);
  __break(1u);
  return result;
}

unint64_t ExtendedSearchResponse.minUID.getter()
{
  v1 = type metadata accessor for SearchReturnData();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v16[-v7];
  if (*(v0 + 33) != 1)
  {
    goto LABEL_7;
  }

  v17 = *(v0 + 40);
  v9 = *(v17 + 16);

  if (!v9)
  {
LABEL_6:
    sub_100025F40(&v17, &qword_1005DC5E8, &qword_100502CD8);
LABEL_7:
    v13 = 0;
    v14 = 1;
LABEL_8:
    v16[4] = v14;
    return v13 | (v14 << 32);
  }

  v11 = v10 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v12 = *(v2 + 72);
  while (1)
  {
    sub_1003EBF6C(v11, v8, type metadata accessor for SearchReturnData);
    if (!swift_getEnumCaseMultiPayload())
    {
      break;
    }

    sub_1003EBFD4(v8);
    v11 += v12;
    if (!--v9)
    {
      goto LABEL_6;
    }
  }

  sub_1003EBF6C(v11, v5, type metadata accessor for SearchReturnData);
  if (!swift_getEnumCaseMultiPayload())
  {
    v13 = *v5;
    sub_100025F40(&v17, &qword_1005DC5E8, &qword_100502CD8);
    v14 = 0;
    goto LABEL_8;
  }

  result = sub_1003EBFD4(v5);
  __break(1u);
  return result;
}

unint64_t ExtendedSearchResponse.minSequenceNumber.getter()
{
  v1 = type metadata accessor for SearchReturnData();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v16[-v7];
  if (*(v0 + 33))
  {
    goto LABEL_7;
  }

  v17 = *(v0 + 40);
  v9 = *(v17 + 16);

  if (!v9)
  {
LABEL_6:
    sub_100025F40(&v17, &qword_1005DC5E8, &qword_100502CD8);
LABEL_7:
    v13 = 0;
    v14 = 1;
LABEL_8:
    v16[4] = v14;
    return v13 | (v14 << 32);
  }

  v11 = v10 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v12 = *(v2 + 72);
  while (1)
  {
    sub_1003EBF6C(v11, v8, type metadata accessor for SearchReturnData);
    if (!swift_getEnumCaseMultiPayload())
    {
      break;
    }

    sub_1003EBFD4(v8);
    v11 += v12;
    if (!--v9)
    {
      goto LABEL_6;
    }
  }

  sub_1003EBF6C(v11, v5, type metadata accessor for SearchReturnData);
  if (!swift_getEnumCaseMultiPayload())
  {
    v13 = *v5;
    sub_100025F40(&v17, &qword_1005DC5E8, &qword_100502CD8);
    v14 = 0;
    goto LABEL_8;
  }

  result = sub_1003EBFD4(v5);
  __break(1u);
  return result;
}

unint64_t ExtendedSearchResponse.maxUID.getter()
{
  v1 = type metadata accessor for SearchReturnData();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v16[-v7];
  if (*(v0 + 33) != 1)
  {
    goto LABEL_7;
  }

  v17 = *(v0 + 40);
  v9 = *(v17 + 16);

  if (!v9)
  {
LABEL_6:
    sub_100025F40(&v17, &qword_1005DC5E8, &qword_100502CD8);
LABEL_7:
    v13 = 0;
    v14 = 1;
LABEL_8:
    v16[4] = v14;
    return v13 | (v14 << 32);
  }

  v11 = v10 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v12 = *(v2 + 72);
  while (1)
  {
    sub_1003EBF6C(v11, v8, type metadata accessor for SearchReturnData);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    sub_1003EBFD4(v8);
    v11 += v12;
    if (!--v9)
    {
      goto LABEL_6;
    }
  }

  sub_1003EBF6C(v11, v5, type metadata accessor for SearchReturnData);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v5;
    sub_100025F40(&v17, &qword_1005DC5E8, &qword_100502CD8);
    v14 = 0;
    goto LABEL_8;
  }

  result = sub_1003EBFD4(v5);
  __break(1u);
  return result;
}

unint64_t ExtendedSearchResponse.maxSequenceNumber.getter()
{
  v1 = type metadata accessor for SearchReturnData();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v16[-v7];
  if (*(v0 + 33))
  {
    goto LABEL_7;
  }

  v17 = *(v0 + 40);
  v9 = *(v17 + 16);

  if (!v9)
  {
LABEL_6:
    sub_100025F40(&v17, &qword_1005DC5E8, &qword_100502CD8);
LABEL_7:
    v13 = 0;
    v14 = 1;
LABEL_8:
    v16[4] = v14;
    return v13 | (v14 << 32);
  }

  v11 = v10 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v12 = *(v2 + 72);
  while (1)
  {
    sub_1003EBF6C(v11, v8, type metadata accessor for SearchReturnData);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    sub_1003EBFD4(v8);
    v11 += v12;
    if (!--v9)
    {
      goto LABEL_6;
    }
  }

  sub_1003EBF6C(v11, v5, type metadata accessor for SearchReturnData);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v5;
    sub_100025F40(&v17, &qword_1005DC5E8, &qword_100502CD8);
    v14 = 0;
    goto LABEL_8;
  }

  result = sub_1003EBFD4(v5);
  __break(1u);
  return result;
}

uint64_t sub_1003EBA78(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 20);
  result = sub_1002F178C(0x48435241455345, 0xE700000000000000, (v1 + 8), *(v1 + 20));
  if (v6)
  {
    v7._countAndFlagsBits = 0x48435241455345;
    v7._object = 0xE700000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v1 + 20);
  v10 = __CFADD__(v9, result);
  v11 = v9 + result;
  if (v10)
  {
    goto LABEL_35;
  }

  *(v1 + 20) = v11;
  v12 = *(a1 + 8);
  if (v12)
  {
    v13 = *(a1 + 32);
    v15 = *(a1 + 16);
    v14 = *(a1 + 24);
    v42[0] = *a1;
    v42[1] = v12;
    v42[2] = v15;
    v42[3] = v14;
    v43 = v13 & 1;
    result = sub_100488324(v42);
    v16 = v8 + result;
    if (__OFADD__(v8, result))
    {
      __break(1u);
LABEL_24:
      v30 = 0;
      v41 = a1;
      goto LABEL_25;
    }
  }

  else
  {
    v16 = result;
  }

  if (*(a1 + 33) == 1)
  {
    v17 = *(v1 + 20);
    result = sub_1002F178C(1145656608, 0xE400000000000000, (v1 + 8), *(v1 + 20));
    if (v18)
    {
      v19._countAndFlagsBits = 1145656608;
      v19._object = 0xE400000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v19, v17);
    }

    v20 = *(v1 + 20);
    v10 = __CFADD__(v20, result);
    v21 = v20 + result;
    if (v10)
    {
      goto LABEL_43;
    }

    *(v1 + 20) = v21;
  }

  else
  {
    result = 0;
  }

  v22 = __OFADD__(v16, result);
  v16 += result;
  if (v22)
  {
    goto LABEL_36;
  }

  a1 = *(a1 + 40);
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_24;
  }

  v23 = *(v1 + 20);
  result = sub_1002F178C(32, 0xE100000000000000, (v1 + 8), *(v1 + 20));
  if (v24)
  {
    v25._countAndFlagsBits = 32;
    v25._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v25, v23);
  }

  v26 = *(v1 + 20);
  v27 = (v26 + result);
  if (__CFADD__(v26, result))
  {
    goto LABEL_39;
  }

  *(v1 + 20) = v27;
  v22 = __OFADD__(v16, result);
  v16 += result;
  if (v22)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    return result;
  }

  v41 = a1;
  result = sub_1002F178C(0, 0xE000000000000000, (v1 + 8), v27);
  if (v28)
  {
    v29._countAndFlagsBits = 0;
    v29._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v29, v27);
  }

  v30 = result;
  v31 = *(v2 + 20);
  v10 = __CFADD__(v31, result);
  v32 = v31 + result;
  if (v10)
  {
    goto LABEL_41;
  }

  *(v2 + 20) = v32;
LABEL_25:
  __chkstk_darwin(result);
  v40[2] = sub_1003EBD6C;
  v40[3] = 0;
  v40[4] = v2;
  v40[5] = &v41;
  v40[6] = 32;
  v40[7] = 0xE100000000000000;
  result = sub_100452C04(0, sub_1003EC118, v40, a1);
  v33 = v30 + result;
  if (__OFADD__(v30, result))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (!v4)
  {
    v39 = v30 + result;
    goto LABEL_31;
  }

  v34 = *(v2 + 20);
  result = sub_1002F178C(0, 0xE000000000000000, (v2 + 8), *(v2 + 20));
  if (v35)
  {
    v36._countAndFlagsBits = 0;
    v36._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v36, v34);
  }

  v37 = *(v2 + 20);
  v10 = __CFADD__(v37, result);
  v38 = v37 + result;
  if (v10)
  {
    goto LABEL_42;
  }

  *(v2 + 20) = v38;
  v39 = v33 + result;
  if (__OFADD__(v33, result))
  {
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_31:
  result = v16 + v39;
  if (__OFADD__(v16, v39))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  return result;
}

uint64_t _s12NIOIMAPCore222ExtendedSearchResponseV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  if (!v4)
  {
    if (!v10)
    {
      goto LABEL_7;
    }

LABEL_6:
    sub_1003E97D0(*a2, *(a2 + 8));
    sub_1003E97D0(v5, v4);
    sub_100073984(v5, v4);
    sub_100073984(v9, v10);
    return 0;
  }

  if (!v10)
  {
    goto LABEL_6;
  }

  v20[0] = *a2;
  v20[1] = v10;
  v20[2] = v11;
  v20[3] = v12;
  v21 = v13 & 1;
  v18[0] = v5;
  v18[1] = v4;
  v18[2] = v6;
  v18[3] = v7;
  v19 = v8 & 1;
  v17 = _s12NIOIMAPCore216SearchCorrelatorV23__derived_struct_equalsySbAC_ACtFZ_0(v18, v20);
  sub_1003E97D0(v9, v10);
  sub_1003E97D0(v5, v4);

  sub_100073984(v5, v4);
  if (!v17)
  {
    return 0;
  }

LABEL_7:
  if (*(a1 + 33) != *(a2 + 33))
  {
    return 0;
  }

  v15 = *(a1 + 40);
  v16 = *(a2 + 40);

  return sub_100397CD4(v15, v16);
}

uint64_t sub_1003EBF6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003EBFD4(uint64_t a1)
{
  v2 = type metadata accessor for SearchReturnData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1003EC034()
{
  result = qword_1005DC5F0;
  if (!qword_1005DC5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC5F0);
  }

  return result;
}

unint64_t sub_1003EC08C()
{
  result = qword_1005DC5F8;
  if (!qword_1005DC5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC5F8);
  }

  return result;
}

uint64_t sub_1003EC0E0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1003EC118@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1004923EC(*a1, a2, *(v3 + 16), *(v3 + 24), *(v3 + 32), **(v3 + 40), *(v3 + 48), *(v3 + 56));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t SearchModificationSequence.extensions.getter(uint64_t a1)
{

  return a1;
}

BOOL static ExtendedSearchScopeOptions.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = 0;
  if (sub_10020FB40(a2, a5))
  {
    sub_10039FBE4(a3, a6);
    if (v8)
    {
      return 1;
    }
  }

  return result;
}

Swift::Int ExtendedSearchScopeOptions.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1004A6E94();
  sub_1003A1878(v6, a2, a3);
  return sub_1004A6F14();
}

Swift::Int sub_1003EC248()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_1004A6E94();
  sub_1003A1878(v4, v1, v2);
  return sub_1004A6F14();
}

Swift::Int sub_1003EC29C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_1004A6E94();
  sub_1003A1878(v4, v1, v2);
  return sub_1004A6F14();
}

BOOL sub_1003EC2E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  result = 0;
  if (sub_10020FB40(*(a1 + 8), *(a2 + 8)))
  {
    sub_10039FBE4(v2, v3);
    if (v4)
    {
      return 1;
    }
  }

  return result;
}

unint64_t sub_1003EC338()
{
  result = qword_1005DC608;
  if (!qword_1005DC608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC608);
  }

  return result;
}

uint64_t sub_1003EC39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v176 = a4;
  v9 = sub_10000C9C0(&qword_1005D7F50, &unk_100502FF0);
  v175 = *(v9 - 8);
  v10 = *(v175 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v151 - v11;
  v163 = type metadata accessor for ParameterValue();
  v182 = *(v163 - 8);
  v13 = *(v182 + 64);
  __chkstk_darwin(v163);
  v161 = &v151 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = sub_10000C9C0(&qword_1005DBCA8, &unk_100504BF0);
  v15 = *(*(v174 - 8) + 64);
  __chkstk_darwin(v174);
  v185 = (&v151 - v16);
  v173 = sub_10000C9C0(&qword_1005D8488, &unk_100503000);
  v17 = *(*(v173 - 8) + 64);
  v18 = __chkstk_darwin(v173);
  v172 = (&v151 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v18);
  v171 = (&v151 - v20);
  v170 = sub_10000C9C0(&qword_1005DBCA0, &qword_1004FE5C0);
  v21 = *(*(v170 - 8) + 64);
  v22 = __chkstk_darwin(v170);
  v169 = &v151 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v168 = (&v151 - v25);
  v26 = __chkstk_darwin(v24);
  v184 = (&v151 - v27);
  v28 = __chkstk_darwin(v26);
  v167 = (&v151 - v29);
  __chkstk_darwin(v28);
  v166 = &v151 - v30;
  v165 = sub_10000C9C0(&qword_1005DC308, &qword_100503010);
  v31 = *(*(v165 - 8) + 64);
  v32 = __chkstk_darwin(v165);
  v164 = (&v151 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v32);
  v183 = (&v151 - v34);
  v35 = *(v4 + 20);
  v36 = 0;
  result = sub_1002F178C(673205833, 0xE400000000000000, (v4 + 8), *(v4 + 20));
  if (v38)
  {
    v39._countAndFlagsBits = 673205833;
    v39._object = 0xE400000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v39, v35);
  }

  v40 = result;
  v41 = *(v4 + 20);
  v42 = (v41 + result);
  if (__CFADD__(v41, result))
  {
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  *(v4 + 20) = v42;
  v186 = a1;
  v43 = *(a1 + 16);
  v162 = v12;
  if (v43)
  {
    result = sub_1002F178C(0, 0xE000000000000000, (v4 + 8), v42);
    if (v44)
    {
      v45._countAndFlagsBits = 0;
      v45._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v45, v42);
    }

    v46 = result;
    v47 = *(v5 + 20);
    v48 = __CFADD__(v47, result);
    v49 = v47 + result;
    if (v48)
    {
      goto LABEL_87;
    }

    *(v5 + 20) = v49;
  }

  else
  {
    v46 = 0;
  }

  __chkstk_darwin(result);
  *(&v151 - 6) = sub_1003ED324;
  *(&v151 - 5) = 0;
  *(&v151 - 4) = v5;
  *(&v151 - 3) = &v186;
  *(&v151 - 2) = 32;
  *(&v151 - 1) = 0xE100000000000000;
  result = sub_100452B28(0, sub_1003ED4D8, (&v151 - 8), a1);
  v50 = v46 + result;
  if (__OFADD__(v46, result))
  {
    goto LABEL_82;
  }

  if (v43)
  {
    v51 = *(v5 + 20);
    result = sub_1002F178C(0, 0xE000000000000000, (v5 + 8), *(v5 + 20));
    if (v53)
    {
      v54._countAndFlagsBits = 0;
      v54._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v54, v51);
    }

    v55 = *(v5 + 20);
    v48 = __CFADD__(v55, result);
    v56 = v55 + result;
    if (v48)
    {
      goto LABEL_88;
    }

    *(v5 + 20) = v56;
    v57 = v50 + result;
    if (__OFADD__(v50, result))
    {
      __break(1u);
LABEL_28:
      v68 = 0;
      goto LABEL_65;
    }
  }

  else
  {
    result = 0;
    v57 = v50;
  }

  v52 = v40 + v57;
  if (__OFADD__(v40, v57))
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  if (!a3)
  {
    goto LABEL_28;
  }

  v152 = v40 + v57;
  v58 = *(v5 + 20);
  result = sub_1002F178C(10272, 0xE200000000000000, (v5 + 8), *(v5 + 20));
  if (v59)
  {
    v60._countAndFlagsBits = 10272;
    v60._object = 0xE200000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v60, v58);
  }

  v61 = *(v5 + 20);
  v62 = (v61 + result);
  if (__CFADD__(v61, result))
  {
    goto LABEL_89;
  }

  *(v5 + 20) = v62;
  v63 = *(v176 + 16);
  v153 = result;
  if (v63)
  {
    result = sub_1002F178C(0, 0xE000000000000000, (v5 + 8), v62);
    if (v64)
    {
      v65._countAndFlagsBits = 0;
      v65._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v65, v62);
    }

    v66 = *(v5 + 20);
    v48 = __CFADD__(v66, result);
    v67 = v66 + result;
    if (v48)
    {
      goto LABEL_94;
    }

    v154 = result;
    *(v5 + 20) = v67;
  }

  else
  {
    v154 = 0;
  }

  v155 = a2;
  swift_retain_n();
  swift_retain_n();
  result = swift_retain_n();
  v69 = 0;
  if (v63)
  {
    v70 = 0;
    v158 = (v182 + 48);
    v157 = v63 - 1;
    v71 = (a3 + 40);
    v159 = a3;
    v156 = v63;
    v160 = v5;
    while (v70 < *(a3 + 16))
    {
      v180 = v69;
      v72 = v173;
      v73 = *(v173 + 48);
      v178 = v71;
      v74 = *(v71 - 1);
      v75 = *v71;
      v181 = v75;
      v182 = v36;
      v76 = v171;
      *v171 = v74;
      v76[1] = v75;
      sub_10000E268(v176 + ((*(v175 + 80) + 32) & ~*(v175 + 80)) + *(v175 + 72) * v70, v76 + v73, &qword_1005D7F50, &unk_100502FF0);
      v77 = v76;
      v78 = v172;
      sub_100025FDC(v77, v172, &qword_1005D8488, &unk_100503000);
      v79 = *(v72 + 48);
      v80 = v170;
      v81 = *(v170 + 48);
      v82 = v78[1];
      v83 = v167;
      *v167 = *v78;
      v83[1] = v82;
      sub_100025FDC(v78 + v79, v83 + v81, &qword_1005D7F50, &unk_100502FF0);
      v84 = v83;
      v85 = v166;
      sub_100025FDC(v84, v166, &qword_1005DBCA0, &qword_1004FE5C0);
      v86 = v165;
      v87 = *(v165 + 48);
      v88 = v183;
      v177 = v70;
      *v183 = v70;
      sub_100025FDC(v85, v88 + v87, &qword_1005DBCA0, &qword_1004FE5C0);
      v89 = v164;
      sub_10000E268(v88, v164, &qword_1005DC308, &qword_100503010);
      v179 = *v89;
      v90 = (v89 + *(v86 + 48));
      v91 = *(v80 + 48);
      v92 = *v90;
      v93 = v90[1];
      v94 = v168;
      sub_100025FDC(v90 + v91, v168 + v91, &qword_1005D7F50, &unk_100502FF0);
      v95 = *(v80 + 48);
      v96 = v184;
      *v184 = v92;
      v96[1] = v93;
      sub_100025FDC(v94 + v91, v96 + v95, &qword_1005D7F50, &unk_100502FF0);
      sub_10000E268(v96, v94, &qword_1005DBCA0, &qword_1004FE5C0);
      v97 = *(v80 + 48);
      v98 = v169;
      sub_10000E268(v96, v169, &qword_1005DBCA0, &qword_1004FE5C0);
      v99 = *(v80 + 48);
      v101 = *v94;
      v100 = v94[1];
      v5 = v160;
      v102 = v185;
      *v185 = *v94;
      v102[1] = v100;
      v103 = *(v174 + 52);
      sub_100025FDC(v98 + v99, v102 + v103, &qword_1005D7F50, &unk_100502FF0);
      v104 = *(v98 + 8);

      sub_100025F40(v94 + v97, &qword_1005D7F50, &unk_100502FF0);
      v105 = *(v5 + 20);
      v36 = v182;
      result = sub_1002F178C(v101, v100, (v5 + 8), *(v5 + 20));
      if (v106)
      {
        v107._countAndFlagsBits = v101;
        v107._object = v100;
        result = ByteBuffer._setStringSlowpath(_:at:)(v107, v105);
      }

      v108 = result;
      v109 = *(v5 + 20);
      v110 = (v109 + result);
      if (__CFADD__(v109, result))
      {
        goto LABEL_74;
      }

      *(v5 + 20) = v110;
      v111 = v185 + v103;
      v112 = v162;
      sub_10000E268(v111, v162, &qword_1005D7F50, &unk_100502FF0);
      if ((*v158)(v112, 1, v163) == 1)
      {
        result = sub_100025F40(v112, &qword_1005D7F50, &unk_100502FF0);
        v113 = 0;
        a3 = v159;
      }

      else
      {
        sub_1002FC114(v112, v161);
        result = sub_1002F178C(32, 0xE100000000000000, (v5 + 8), v110);
        v114 = v5;
        if (v115)
        {
          v116._countAndFlagsBits = 32;
          v116._object = 0xE100000000000000;
          result = ByteBuffer._setStringSlowpath(_:at:)(v116, v110);
        }

        v117 = result;
        v118 = *(v114 + 20);
        v48 = __CFADD__(v118, result);
        v119 = v118 + result;
        a3 = v159;
        if (v48)
        {
          goto LABEL_78;
        }

        *(v114 + 20) = v119;
        v120 = v161;
        v121 = sub_100463ACC(v161);
        result = sub_1002FC1DC(v120);
        v113 = v117 + v121;
        if (__OFADD__(v117, v121))
        {
          goto LABEL_79;
        }

        v5 = v114;
      }

      v122 = v108 + v113;
      if (__OFADD__(v108, v113))
      {
        goto LABEL_75;
      }

      result = sub_100025F40(v185, &qword_1005DBCA8, &unk_100504BF0);
      v123 = v180 + v122;
      if (__OFADD__(v180, v122))
      {
        goto LABEL_76;
      }

      if (v179 >= v157)
      {
        result = sub_100025F40(v184, &qword_1005DBCA0, &qword_1004FE5C0);
        v128 = 0;
      }

      else
      {
        v124 = *(v5 + 20);
        v125 = sub_1002F178C(32, 0xE100000000000000, (v5 + 8), *(v5 + 20));
        if (v126)
        {
          v127._countAndFlagsBits = 32;
          v127._object = 0xE100000000000000;
          v125 = ByteBuffer._setStringSlowpath(_:at:)(v127, v124);
        }

        v128 = v125;
        result = sub_100025F40(v184, &qword_1005DBCA0, &qword_1004FE5C0);
        v129 = *(v5 + 20);
        v48 = __CFADD__(v129, v128);
        v130 = v129 + v128;
        if (v48)
        {
          goto LABEL_80;
        }

        *(v5 + 20) = v130;
      }

      v69 = v123 + v128;
      if (__OFADD__(v123, v128))
      {
        goto LABEL_77;
      }

      v70 = v177 + 1;
      result = sub_100025F40(v183, &qword_1005DC308, &qword_100503010);
      v71 = v178 + 2;
      v63 = v156;
      if (v156 == v70)
      {
        goto LABEL_53;
      }
    }

    goto LABEL_73;
  }

LABEL_53:

  v131 = __OFADD__(v154, v69);
  v132 = v154 + v69;
  if (v131)
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  if (v63)
  {
    v133 = *(v5 + 20);
    result = sub_1002F178C(0, 0xE000000000000000, (v5 + 8), *(v5 + 20));
    if (v134)
    {
      v135._countAndFlagsBits = 0;
      v135._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v135, v133);
    }

    v136 = *(v5 + 20);
    v48 = __CFADD__(v136, result);
    v137 = v136 + result;
    if (v48)
    {
      goto LABEL_95;
    }

    *(v5 + 20) = v137;
    v138 = v132 + result;
    if (__OFADD__(v132, result))
    {
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }
  }

  else
  {
    result = 0;
    v138 = v132;
  }

  v139 = v153 + v138;
  if (__OFADD__(v153, v138))
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v140 = *(v5 + 20);
  result = sub_1002F178C(41, 0xE100000000000000, (v5 + 8), *(v5 + 20));
  if (v141)
  {
    v142._countAndFlagsBits = 41;
    v142._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v142, v140);
  }

  v143 = *(v5 + 20);
  v48 = __CFADD__(v143, result);
  v144 = v143 + result;
  if (v48)
  {
    goto LABEL_92;
  }

  *(v5 + 20) = v144;
  v68 = v139 + result;
  if (__OFADD__(v139, result))
  {
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    return result;
  }

  v52 = v152;
LABEL_65:
  v145 = v52 + v68;
  if (__OFADD__(v52, v68))
  {
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v146 = *(v5 + 20);
  result = sub_1002F178C(41, 0xE100000000000000, (v5 + 8), *(v5 + 20));
  if (v147)
  {
    v148._countAndFlagsBits = 41;
    v148._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v148, v146);
  }

  v149 = *(v5 + 20);
  v48 = __CFADD__(v149, result);
  v150 = v149 + result;
  if (v48)
  {
    goto LABEL_85;
  }

  *(v5 + 20) = v150;
  v131 = __OFADD__(v145, result);
  result += v145;
  if (v131)
  {
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  return result;
}

uint64_t ExtendedSearchSourceOptions.init(sourceMailbox:scopeOptions:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!*(result + 16))
  {
    sub_10018A510(a2, a3);

    return 0;
  }

  return result;
}

void ExtendedSearchSourceOptions.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1003AEFBC(a1, a2);
  if (a4)
  {
    sub_1004A6EC4(1u);

    sub_1003A1878(a1, a4, a5);
  }

  else
  {
    sub_1004A6EC4(0);
  }
}

Swift::Int ExtendedSearchSourceOptions.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1004A6E94();
  sub_1003AEFBC(v8, a1);
  if (a3)
  {
    sub_1004A6EC4(1u);
    sub_1003A1878(v8, a3, a4);
  }

  else
  {
    sub_1004A6EC4(0);
  }

  return sub_1004A6F14();
}

Swift::Int sub_1003ED180()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = v0[3];
  sub_1004A6E94();
  sub_1003AEFBC(v5, v1);
  if (v2)
  {
    sub_1004A6EC4(1u);
    sub_1003A1878(v5, v2, v3);
  }

  else
  {
    sub_1004A6EC4(0);
  }

  return sub_1004A6F14();
}

void sub_1003ED200(uint64_t a1)
{
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  sub_1003AEFBC(a1, *v1);
  if (v4)
  {
    sub_1004A6EC4(1u);

    ExtendedSearchScopeOptions.hash(into:)(a1, v3, v4, v5);
  }

  else
  {
    sub_1004A6EC4(0);
  }
}

Swift::Int sub_1003ED28C()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = v0[3];
  sub_1004A6E94();
  sub_1003AEFBC(v5, v1);
  if (v2)
  {
    sub_1004A6EC4(1u);
    sub_1003A1878(v5, v2, v3);
  }

  else
  {
    sub_1004A6EC4(0);
  }

  return sub_1004A6F14();
}

uint64_t sub_1003ED354@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>)
{
  result = sub_1004922C0(*a1, *a2, *(a2 + 8), *(a2 + 16), a3, a4, a5, *a6, a7, a8);
  if (!v9)
  {
    *a9 = result;
  }

  return result;
}

uint64_t _s12NIOIMAPCore227ExtendedSearchSourceOptionsV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (sub_100397D28(a1, a5))
  {
    if (a3)
    {
      if (a7)
      {
        if (sub_10020FB40(a3, a7))
        {

          sub_10039FBE4(a4, a8);
          v13 = v12;

          if (v13)
          {
            return 1;
          }
        }
      }
    }

    else if (!a7)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1003ED474()
{
  result = qword_1005DC610;
  if (!qword_1005DC610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC610);
  }

  return result;
}

uint64_t sub_1003ED4FC(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v53 = 1uLL;
  memset(v54, 0, 20);
  BYTE4(v54[1]) = -64;
  v4 = &v53;
  v52 = &v53;
  v5 = sub_100446E7C(sub_1003EF734, v51, a1);
  if (v5)
  {
    v53 = 2uLL;
    memset(v54, 0, 20);
    BYTE4(v54[1]) = -64;
    __chkstk_darwin(v5);
    v49 = &v53;
    result = sub_100446E7C(sub_1003EF7D4, v48, v3);
    if (result)
    {
      v7 = *(v3 + 16);
      if (v7 != 5)
      {
        if (v7 != 4)
        {
          if (v7 != 3)
          {
            goto LABEL_26;
          }

          v4 = v51;
          v53 = 5uLL;
          memset(v54, 0, 20);
          BYTE4(v54[1]) = -64;
          __chkstk_darwin(result);
          v49 = &v53;
          if ((sub_100446E7C(sub_1003EF7D4, v48, v3) & 1) == 0)
          {
            goto LABEL_26;
          }

          v3 = *(v2 + 20);
          result = sub_1002F178C(1414742342, 0xE400000000000000, (v2 + 8), *(v2 + 20));
          if (v8)
          {
            v4 = (v2 + 8);
            v9._countAndFlagsBits = 1414742342;
            v9._object = 0xE400000000000000;
            result = ByteBuffer._setStringSlowpath(_:at:)(v9, v3);
          }

          v10 = *(v2 + 20);
          v11 = __CFADD__(v10, result);
          LODWORD(v7) = v10 + result;
          if (!v11)
          {
            goto LABEL_25;
          }

          __break(1u);
        }

        v53 = 5uLL;
        memset(v54, 0, 20);
        BYTE4(v54[1]) = -64;
        __chkstk_darwin(result);
        v49 = v4;
        v12 = sub_100446E7C(sub_1003EF7D4, v48, v3);
        if ((v12 & 1) == 0)
        {
          goto LABEL_26;
        }

        v53 = 0u;
        memset(v54, 0, 20);
        BYTE4(v54[1]) = -64;
        __chkstk_darwin(v12);
        v49 = v4;
        if ((sub_100446E7C(sub_1003EF7D4, v48, v3) & 1) == 0)
        {
          goto LABEL_26;
        }

        v3 = *(v2 + 20);
        result = sub_1002F178C(5000257, 0xE300000000000000, (v2 + 8), *(v2 + 20));
        if (v13)
        {
          v4 = (v2 + 8);
          v14._countAndFlagsBits = 5000257;
          v14._object = 0xE300000000000000;
          result = ByteBuffer._setStringSlowpath(_:at:)(v14, v3);
        }

        v15 = *(v2 + 20);
        v11 = __CFADD__(v15, result);
        v7 = (v15 + result);
        if (!v11)
        {
          goto LABEL_25;
        }

        __break(1u);
      }

      v53 = v7;
      memset(v54, 0, 20);
      BYTE4(v54[1]) = -64;
      __chkstk_darwin(result);
      v49 = v4;
      v16 = sub_100446E7C(sub_1003EF7D4, v48, v3);
      if (v16)
      {
        v53 = 0u;
        memset(v54, 0, 20);
        BYTE4(v54[1]) = -64;
        __chkstk_darwin(v16);
        v49 = v4;
        v17 = sub_100446E7C(sub_1003EF7D4, v48, v3);
        if (v17)
        {
          v53 = 0u;
          memset(v54, 0, 21);
          __chkstk_darwin(v17);
          v49 = &v53;
          if (sub_100446E7C(sub_1003EF7D4, v48, v3))
          {
            v18 = *(v2 + 20);
            result = sub_1002F178C(1280070982, 0xE400000000000000, (v2 + 8), *(v2 + 20));
            if (v19)
            {
              v20._countAndFlagsBits = 1280070982;
              v20._object = 0xE400000000000000;
              result = ByteBuffer._setStringSlowpath(_:at:)(v20, v18);
            }

            v21 = *(v2 + 20);
            v11 = __CFADD__(v21, result);
            LODWORD(v7) = v21 + result;
            if (!v11)
            {
LABEL_25:
              *(v2 + 20) = v7;
              return result;
            }

            goto LABEL_56;
          }
        }
      }
    }
  }

LABEL_26:
  *&v53 = v3;
  v22 = *(v3 + 16);
  if (v22)
  {
    v23 = *(v2 + 20);
    result = sub_1002F178C(0, 0xE000000000000000, (v2 + 8), *(v2 + 20));
    if (v24)
    {
      v25._countAndFlagsBits = 0;
      v25._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v25, v23);
    }

    v26 = result;
    v27 = *(v2 + 20);
    v11 = __CFADD__(v27, result);
    v28 = v27 + result;
    if (v11)
    {
      goto LABEL_54;
    }

    *(v2 + 20) = v28;
  }

  else
  {
    v26 = 0;
    v28 = *(v2 + 20);
  }

  v29 = v28;
  result = sub_1002F178C(40, 0xE100000000000000, (v2 + 8), v28);
  if (v30)
  {
    v31._countAndFlagsBits = 40;
    v31._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v31, v29);
  }

  v32 = *(v2 + 20);
  v11 = __CFADD__(v32, result);
  v33 = v32 + result;
  if (v11)
  {
    goto LABEL_49;
  }

  *(v2 + 20) = v33;
  v34 = v26 + result;
  if (__OFADD__(v26, result))
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  __chkstk_darwin(result);
  v47[2] = sub_1003EEB04;
  v47[3] = 0;
  v48[0] = v2;
  v48[1] = &v53;
  v49 = 32;
  v50 = 0xE100000000000000;
  result = sub_100452428(0, sub_1003EF750, v47, v3);
  v35 = v34 + result;
  if (__OFADD__(v34, result))
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v36 = *(v2 + 20);
  result = sub_1002F178C(41, 0xE100000000000000, (v2 + 8), *(v2 + 20));
  if (v37)
  {
    v38._countAndFlagsBits = 41;
    v38._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v38, v36);
  }

  v39 = *(v2 + 20);
  v40 = (v39 + result);
  if (__CFADD__(v39, result))
  {
    goto LABEL_52;
  }

  *(v2 + 20) = v40;
  v41 = __OFADD__(v35, result);
  v42 = v35 + result;
  if (v41)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    return result;
  }

  if (!v22)
  {
    return v42;
  }

  result = sub_1002F178C(0, 0xE000000000000000, (v2 + 8), v40);
  if (v43)
  {
    v44._countAndFlagsBits = 0;
    v44._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v44, v40);
  }

  v45 = *(v2 + 20);
  v11 = __CFADD__(v45, result);
  v46 = v45 + result;
  if (v11)
  {
    goto LABEL_55;
  }

  *(v2 + 20) = v46;
  v41 = __OFADD__(v42, result);
  result += v42;
  if (v41)
  {
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  return result;
}

void FetchAttribute.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v6 = *(v2 + 1);
  v5 = *(v2 + 2);
  *&v21[5] = *(v2 + 29);
  *v21 = *(v2 + 3);
  v7 = (*(v2 + 1) << 8) | ((*(v2 + 5) | (v2[7] << 16)) << 40) | v4;
  v8 = *&v21[8] | (v21[12] << 32);
  v9 = v21[12] >> 5;
  if (v9 <= 2)
  {
    if (v9)
    {
      if (v9 != 1)
      {
        sub_1004A6EB4(0xBuLL);
        sub_1004A6EF4(v7);
        return;
      }

      sub_1004A6EB4(8uLL);
      sub_1004A6EC4(v4 & 1);
      SectionSpecifier.hash(into:)(a1, v6, v5, v21[0]);
      if ((v21[12] & 0x1F) != 1)
      {
        sub_1004A6EC4(1u);
        sub_1004A6EE4(*&v21[4]);
        v13 = HIDWORD(*&v21[4]);
        goto LABEL_33;
      }

LABEL_12:
      sub_1004A6EC4(0);
      return;
    }

    v14 = 7;
    goto LABEL_16;
  }

  if (v21[12] >> 5 > 4u)
  {
    if (v9 != 5)
    {
      v18 = v5 | v6 | *v21;
      if (v8 != 0xC000000000 || v18 | v7)
      {
        if (v8 == 0xC000000000 && (v7 == 1 ? (v19 = v18 == 0) : (v19 = 0), v19))
        {
          sub_1004A6EB4(1uLL);
        }

        else if (v8 == 0xC000000000 && (v7 == 2 ? (v20 = v18 == 0) : (v20 = 0), v20))
        {
          sub_1004A6EB4(2uLL);
        }

        else if (v8 == 0xC000000000 && v7 == 3 && !v18)
        {
          sub_1004A6EB4(3uLL);
        }

        else if (v8 == 0xC000000000 && v7 == 4 && !v18)
        {
          sub_1004A6EB4(4uLL);
        }

        else if (v8 == 0xC000000000 && v7 == 5 && !v18)
        {
          sub_1004A6EB4(5uLL);
        }

        else if (v8 == 0xC000000000 && v7 == 6 && !v18)
        {
          sub_1004A6EB4(6uLL);
        }

        else if (v8 == 0xC000000000 && v7 == 7 && !v18)
        {
          sub_1004A6EB4(9uLL);
        }

        else if (v8 == 0xC000000000 && v7 == 8 && !v18)
        {
          sub_1004A6EB4(0xAuLL);
        }

        else if (v8 == 0xC000000000 && v7 == 9 && !v18)
        {
          sub_1004A6EB4(0xEuLL);
        }

        else if (v8 == 0xC000000000 && v7 == 10 && !v18)
        {
          sub_1004A6EB4(0xFuLL);
        }

        else if (v8 == 0xC000000000 && v7 == 11 && !v18)
        {
          sub_1004A6EB4(0x10uLL);
        }

        else if (v8 == 0xC000000000 && v7 == 12 && !v18)
        {
          sub_1004A6EB4(0x12uLL);
        }

        else
        {
          sub_1004A6EB4(0x13uLL);
        }
      }

      else
      {
        sub_1004A6EB4(0);
      }

      return;
    }

    v14 = 17;
LABEL_16:
    sub_1004A6EB4(v14);
    sub_1004A6EC4(v4 & 1);
    return;
  }

  if (v9 == 3)
  {
    sub_1004A6EB4(0xCuLL);
    sub_1004A6EC4(v4 & 1);
    v10 = *(v6 + 16);
    sub_1004A6EB4(v10);
    if (v10)
    {
      v11 = (v6 + 32);
      do
      {
        v12 = *v11++;
        sub_1004A6EB4(v12);
        --v10;
      }

      while (v10);
    }

    if ((v21[0] & 1) == 0)
    {
      sub_1004A6EC4(1u);
      sub_1004A6EE4(v5);
      v13 = HIDWORD(v5);
LABEL_33:
      sub_1004A6EE4(v13);
      return;
    }

    goto LABEL_12;
  }

  sub_1004A6EB4(0xDuLL);
  v15 = *(v7 + 16);
  sub_1004A6EB4(v15);
  if (v15)
  {
    v16 = (v7 + 32);
    do
    {
      v17 = *v16++;
      sub_1004A6EB4(v17);
      --v15;
    }

    while (v15);
  }
}

Swift::Int FetchAttribute.hashValue.getter()
{
  sub_1004A6E94();
  FetchAttribute.hash(into:)(v1);
  return sub_1004A6F14();
}

Swift::Int sub_1003EDEE0()
{
  sub_1004A6E94();
  FetchAttribute.hash(into:)(v1);
  return sub_1004A6F14();
}

unint64_t sub_1003EDF1C(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 13) = *(a1 + 29);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 13) = *(a2 + 29);
  return _s12NIOIMAPCore214FetchAttributeO21__derived_enum_equalsySbAC_ACtFZ_0(&v5, &v7) & 1;
}

uint64_t FetchAttribute.debugDescription.getter()
{
  v1 = v0;
  if (qword_1005DB9D0 != -1)
  {
    swift_once();
  }

  v2 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
  v3 = dword_1005DE398;
  v4 = word_1005DE39C;
  v5 = byte_1005DE39E;

  LOBYTE(v10) = 0;
  BYTE5(v10) = 0;
  *(&v10 + 1) = 65537;
  *(&v10 + 1) = v2;
  *&v11 = qword_1005DE390;
  DWORD2(v11) = v3;
  WORD6(v11) = v4;
  BYTE14(v11) = v5;
  *&v12 = sub_1003DBA20(_swiftEmptyArrayStorage);
  *(&v12 + 1) = v6;
  v13 = v7;
  result = sub_1003EE13C(v1);
  if (DWORD1(v11) < v11)
  {
    __break(1u);
  }

  else if (v3 - (v5 | (v4 << 8)) >= DWORD1(v11))
  {
    v14[0] = v2;
    v14[1] = v11;
    v15 = v3;
    v16 = WORD6(v11);
    v17 = v5;
    v18 = v11;
    v19 = DWORD1(v11);
    *&v20[0] = 0;
    *(&v20[0] + 1) = 0xE000000000000000;

    sub_1004A5874(DWORD1(v11) - v11);
    sub_1003BB2E4(v14, v20);
    sub_1003A52D0(v14);
    v9 = *&v20[0];
    v20[0] = v10;
    v20[1] = v11;
    v20[2] = v12;
    v21 = v13;
    sub_1003E5C94(v20);
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003EE13C(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  *&v97[5] = *(a1 + 29);
  *v97 = *(a1 + 3);
  v5 = *&v97[8] | (v97[12] << 32);
  v6 = v97[12] >> 5;
  if (v6 > 2)
  {
    v7 = v2 | ((*(a1 + 1) | ((*(a1 + 5) | (a1[7] << 16)) << 32)) << 8);
    if (v97[12] >> 5 <= 4u)
    {
      if (v6 == 3)
      {

        return sub_1003EEC4C(v2 & 1, v3, v4, v97[0]);
      }

      v34 = *(v1 + 20);
      v35 = sub_1002F178C(0x532E5952414E4942, 0xEB00000000455A49, (v1 + 8), *(v1 + 20));
      if (v36)
      {
        v37._countAndFlagsBits = 0x532E5952414E4942;
        v37._object = 0xEB00000000455A49;
        v35 = ByteBuffer._setStringSlowpath(_:at:)(v37, v34);
      }

      v38 = v35;
      v39 = *(v1 + 20);
      v16 = __CFADD__(v39, v35);
      v5 = (v39 + v35);
      if (!v16)
      {
        *(v1 + 20) = v5;
        v40 = sub_100492F74(v7);
        v41 = __OFADD__(v38, v40);
        result = v38 + v40;
        if (!v41)
        {
          return result;
        }

        __break(1u);
        goto LABEL_45;
      }

LABEL_141:
      __break(1u);
      goto LABEL_142;
    }

    if (v6 != 5)
    {
LABEL_45:
      v31 = v4 | v3 | *v97;
      v32 = 0xC000000000;
      if (v5 == 0xC000000000 && !(v31 | v7))
      {
        v7 = *(v1 + 20);
        result = sub_1002F178C(0x45504F4C45564E45, 0xE800000000000000, (v1 + 8), *(v1 + 20));
        if (v42)
        {
          v43._countAndFlagsBits = 0x45504F4C45564E45;
          v43._object = 0xE800000000000000;
          result = ByteBuffer._setStringSlowpath(_:at:)(v43, v7);
        }

        v44 = *(v1 + 20);
        v16 = __CFADD__(v44, result);
        v5 = (v44 + result);
        if (!v16)
        {
          goto LABEL_131;
        }

        __break(1u);
      }

      if (v5 == v32 && v7 == 1 && v31 == 0)
      {
        v7 = *(v1 + 20);
        result = sub_1002F178C(0x5347414C46, 0xE500000000000000, (v1 + 8), *(v1 + 20));
        if (v46)
        {
          v47._countAndFlagsBits = 0x5347414C46;
          v47._object = 0xE500000000000000;
          result = ByteBuffer._setStringSlowpath(_:at:)(v47, v7);
        }

        v48 = *(v1 + 20);
        v16 = __CFADD__(v48, result);
        v5 = (v48 + result);
        if (!v16)
        {
          goto LABEL_131;
        }

        __break(1u);
      }

      if (v5 == v32 && v7 == 2 && v31 == 0)
      {
        v7 = 0xEC00000045544144;
        v50 = *(v1 + 20);
        result = sub_1002F178C(0x4C414E5245544E49, 0xEC00000045544144, (v1 + 8), *(v1 + 20));
        if (v51)
        {
          v52._countAndFlagsBits = 0x4C414E5245544E49;
          v52._object = 0xEC00000045544144;
          result = ByteBuffer._setStringSlowpath(_:at:)(v52, v50);
        }

        v53 = *(v1 + 20);
        v16 = __CFADD__(v53, result);
        v5 = (v53 + result);
        if (!v16)
        {
          goto LABEL_131;
        }

        __break(1u);
      }

      if (v5 == v32 && v7 == 3 && v31 == 0)
      {
        v7 = *(v1 + 20);
        result = sub_1002F178C(0x323238434652, 0xE600000000000000, (v1 + 8), *(v1 + 20));
        if (v55)
        {
          v56._countAndFlagsBits = 0x323238434652;
          v56._object = 0xE600000000000000;
          result = ByteBuffer._setStringSlowpath(_:at:)(v56, v7);
        }

        v57 = *(v1 + 20);
        v16 = __CFADD__(v57, result);
        v5 = (v57 + result);
        if (!v16)
        {
          goto LABEL_131;
        }

        __break(1u);
      }

      if (v5 == v32 && v7 == 4 && !v31)
      {
        v7 = 0xED00005245444145;
        v58 = *(v1 + 20);
        result = sub_1002F178C(0x482E323238434652, 0xED00005245444145, (v1 + 8), *(v1 + 20));
        if (v59)
        {
          v60._countAndFlagsBits = 0x482E323238434652;
          v60._object = 0xED00005245444145;
          result = ByteBuffer._setStringSlowpath(_:at:)(v60, v58);
        }

        v61 = *(v1 + 20);
        v16 = __CFADD__(v61, result);
        v5 = (v61 + result);
        if (!v16)
        {
          goto LABEL_131;
        }

        __break(1u);
      }

      if (v5 == v32 && v7 == 5 && !v31)
      {
        v7 = 0xEB00000000455A49;
        v62 = *(v1 + 20);
        result = sub_1002F178C(0x532E323238434652, 0xEB00000000455A49, (v1 + 8), *(v1 + 20));
        if (v63)
        {
          v64._countAndFlagsBits = 0x532E323238434652;
          v64._object = 0xEB00000000455A49;
          result = ByteBuffer._setStringSlowpath(_:at:)(v64, v62);
        }

        v65 = *(v1 + 20);
        v16 = __CFADD__(v65, result);
        v5 = (v65 + result);
        if (!v16)
        {
          goto LABEL_131;
        }

        __break(1u);
      }

      if (v5 == v32 && v7 == 6 && !v31)
      {
        v7 = 0xEB00000000545845;
        v66 = *(v1 + 20);
        result = sub_1002F178C(0x542E323238434652, 0xEB00000000545845, (v1 + 8), *(v1 + 20));
        if (v67)
        {
          v68._countAndFlagsBits = 0x542E323238434652;
          v68._object = 0xEB00000000545845;
          result = ByteBuffer._setStringSlowpath(_:at:)(v68, v66);
        }

        v69 = *(v1 + 20);
        v16 = __CFADD__(v69, result);
        v5 = (v69 + result);
        if (!v16)
        {
          goto LABEL_131;
        }

        __break(1u);
      }

      if (v5 == v32 && v7 == 7 && !v31)
      {
        v7 = *(v1 + 20);
        result = sub_1002F178C(4475221, 0xE300000000000000, (v1 + 8), *(v1 + 20));
        if (v70)
        {
          v71._countAndFlagsBits = 4475221;
          v71._object = 0xE300000000000000;
          result = ByteBuffer._setStringSlowpath(_:at:)(v71, v7);
        }

        v72 = *(v1 + 20);
        v16 = __CFADD__(v72, result);
        v5 = (v72 + result);
        if (!v16)
        {
          goto LABEL_131;
        }

        __break(1u);
      }

      if (v5 == v32 && v7 == 8 && !v31)
      {
        v7 = *(v1 + 20);
        result = sub_1002F178C(0x514553444F4DLL, 0xE600000000000000, (v1 + 8), *(v1 + 20));
        if (v73)
        {
          v74._countAndFlagsBits = 0x514553444F4DLL;
          v74._object = 0xE600000000000000;
          result = ByteBuffer._setStringSlowpath(_:at:)(v74, v7);
        }

        v75 = *(v1 + 20);
        v16 = __CFADD__(v75, result);
        v5 = (v75 + result);
        if (!v16)
        {
          goto LABEL_131;
        }

        __break(1u);
      }

      if (v5 == v32 && v7 == 9 && !v31)
      {
        v76 = *(v1 + 20);
        result = sub_1002F178C(0x47534D2D4D472D58, 0xEA00000000004449, (v1 + 8), *(v1 + 20));
        if (v77)
        {
          v78._countAndFlagsBits = 0x47534D2D4D472D58;
          v78._object = 0xEA00000000004449;
          result = ByteBuffer._setStringSlowpath(_:at:)(v78, v76);
        }

        v79 = *(v1 + 20);
        v16 = __CFADD__(v79, result);
        LODWORD(v5) = v79 + result;
        if (!v16)
        {
LABEL_131:
          *(v1 + 20) = v5;
          return result;
        }

        goto LABEL_163;
      }

      if (v5 == v32 && v7 == 10 && !v31)
      {
        v80 = *(v1 + 20);
        result = sub_1002F178C(0x5248542D4D472D58, 0xEA00000000004449, (v1 + 8), *(v1 + 20));
        if (v81)
        {
          v82._countAndFlagsBits = 0x5248542D4D472D58;
          v82._object = 0xEA00000000004449;
          result = ByteBuffer._setStringSlowpath(_:at:)(v82, v80);
        }

        v83 = *(v1 + 20);
        v16 = __CFADD__(v83, result);
        v84 = v83 + result;
        if (!v16)
        {
          *(v1 + 20) = v84;
          return result;
        }

        goto LABEL_164;
      }

LABEL_142:
      v24 = v1;
      if (v5 == v32 && v7 == 11 && !v31)
      {
        v7 = 0xEB00000000534C45;
        v85 = *(v1 + 20);
        result = sub_1002F178C(0x42414C2D4D472D58, 0xEB00000000534C45, (v1 + 8), *(v1 + 20));
        if (v86)
        {
          v87._countAndFlagsBits = 0x42414C2D4D472D58;
          v87._object = 0xEB00000000534C45;
          result = ByteBuffer._setStringSlowpath(_:at:)(v87, v85);
        }

        v88 = *(v1 + 20);
        v16 = __CFADD__(v88, result);
        v5 = (v88 + result);
        if (!v16)
        {
          goto LABEL_38;
        }

        __break(1u);
      }

      if (v5 == v32 && v7 == 12 && !v31)
      {
        v89 = *(v1 + 20);
        result = sub_1002F178C(0x44494C49414D45, 0xE700000000000000, (v1 + 8), *(v1 + 20));
        if (v90)
        {
          v91._countAndFlagsBits = 0x44494C49414D45;
          v91._object = 0xE700000000000000;
          result = ByteBuffer._setStringSlowpath(_:at:)(v91, v89);
        }

        v92 = *(v1 + 20);
        v16 = __CFADD__(v92, result);
        LODWORD(v5) = v92 + result;
        if (!v16)
        {
          goto LABEL_38;
        }

        __break(1u);
      }

      v93 = *(v1 + 20);
      result = sub_1002F178C(0x4449444145524854, 0xE800000000000000, (v1 + 8), *(v1 + 20));
      if (v94)
      {
        v95._countAndFlagsBits = 0x4449444145524854;
        v95._object = 0xE800000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v95, v93);
      }

      v96 = *(v1 + 20);
      v16 = __CFADD__(v96, result);
      LODWORD(v5) = v96 + result;
      if (v16)
      {
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
        return result;
      }

LABEL_38:
      *(v24 + 20) = v5;
      return result;
    }

    if (v2)
    {
      v9 = 0x2057454956455250;
    }

    else
    {
      v9 = 0x57454956455250;
    }

    if (v2)
    {
      v10 = 0xEE0029595A414C28;
    }

    else
    {
      v10 = 0xE700000000000000;
    }

    v11 = *(v1 + 20);
    v12 = sub_1002F178C(v9, v10, (v1 + 8), *(v1 + 20));
    if (v13)
    {
      v14._countAndFlagsBits = v9;
      v14._object = v10;
      v12 = ByteBuffer._setStringSlowpath(_:at:)(v14, v11);
    }

    v15 = v12;

    LODWORD(v5) = *(v1 + 20);
    result = v15;
    v16 = __CFADD__(v5, v15);
    LODWORD(v5) = v5 + v15;
    if (!v16)
    {
      goto LABEL_131;
    }

    __break(1u);
    goto LABEL_24;
  }

  if (!v6)
  {
LABEL_24:
    if (v2)
    {
      v17 = 0x5552545359444F42;
    }

    else
    {
      v17 = 1497648962;
    }

    if (v2)
    {
      v18 = 0xED00004552555443;
    }

    else
    {
      v18 = 0xE400000000000000;
    }

    v19 = *(v1 + 20);
    v20 = sub_1002F178C(v17, v18, (v1 + 8), *(v1 + 20));
    if (v21)
    {
      v22._countAndFlagsBits = v17;
      v22._object = v18;
      v20 = ByteBuffer._setStringSlowpath(_:at:)(v22, v19);
    }

    v23 = v20;

    LODWORD(v5) = *(v1 + 20);
    result = v23;
    v16 = __CFADD__(v5, v23);
    LODWORD(v5) = v5 + v23;
    if (!v16)
    {
      goto LABEL_131;
    }

    __break(1u);
    goto LABEL_35;
  }

  if (v6 != 1)
  {
LABEL_35:
    v24 = v1;
    v25 = sub_1004A6CE4();
    v7 = v26;
    v27 = *(v1 + 20);
    v28 = sub_1002F178C(v25, v26, (v24 + 8), *(v24 + 20));
    if (v29)
    {
      v30._countAndFlagsBits = v25;
      v30._object = v7;
      v28 = ByteBuffer._setStringSlowpath(_:at:)(v30, v27);
      v24 = v1;
    }

    v1 = v28;

    v33 = *(v24 + 20);
    result = v1;
    v16 = __CFADD__(v33, v1);
    v5 = (v33 + v1);
    if (!v16)
    {
      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_141;
  }

  return sub_1003EEB28(v2 & 1, v3, v4, v97[0], *&v97[4], BYTE4(v5) & 0x1F);
}

uint64_t sub_1003EEB28(char a1, void *a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, char a6)
{
  if (a1)
  {
    v11 = 0x4545502E59444F42;
  }

  else
  {
    v11 = 1497648962;
  }

  if (a1)
  {
    v12 = 0xE90000000000004BLL;
  }

  else
  {
    v12 = 0xE400000000000000;
  }

  v13 = *(v6 + 20);
  v14 = sub_1002F178C(v11, v12, (v6 + 8), *(v6 + 20));
  if (v15)
  {
    v16._countAndFlagsBits = v11;
    v16._object = v12;
    v14 = ByteBuffer._setStringSlowpath(_:at:)(v16, v13);
  }

  v17 = v14;

  v19 = *(v6 + 20);
  v20 = __CFADD__(v19, v17);
  v21 = v19 + v17;
  if (v20)
  {
    __break(1u);
    goto LABEL_17;
  }

  *(v6 + 20) = v21;
  result = sub_100492D08(a2, a3, a4);
  v22 = __OFADD__(v17, result);
  v23 = v17 + result;
  if (v22)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (a6)
  {
    v24 = 0;
  }

  else
  {
    v24 = sub_1003BE2D8();
  }

  v22 = __OFADD__(v23, v24);
  result = v23 + v24;
  if (v22)
  {
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_1003EEC4C(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = *(v4 + 20);
  result = sub_1002F178C(0x5952414E4942, 0xE600000000000000, (v4 + 8), *(v4 + 20));
  if (v10)
  {
    v11._countAndFlagsBits = 0x5952414E4942;
    v11._object = 0xE600000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v11, v8);
  }

  v12 = *(v4 + 20);
  v13 = (v12 + result);
  if (__CFADD__(v12, result))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *(v4 + 20) = v13;
  if (a1)
  {
    v14 = result;
    result = sub_1002F178C(0x4B4545502ELL, 0xE500000000000000, (v4 + 8), v13);
    if (v15)
    {
      v16._countAndFlagsBits = 0x4B4545502ELL;
      v16._object = 0xE500000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v16, v13);
    }

    v17 = result;
    v18 = *(v4 + 20);
    v19 = __CFADD__(v18, result);
    v20 = v18 + result;
    if (v19)
    {
      goto LABEL_21;
    }

    result = v14;
    *(v4 + 20) = v20;
  }

  else
  {
    v17 = 0;
  }

  v21 = result + v17;
  if (__OFADD__(result, v17))
  {
    goto LABEL_18;
  }

  result = sub_100492F74(a2);
  v22 = __OFADD__(v21, result);
  v23 = v21 + result;
  if (v22)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  if (a4)
  {
    v24 = 0;
  }

  else
  {
    v24 = sub_1003BE2D8();
  }

  v22 = __OFADD__(v23, v24);
  result = v23 + v24;
  if (v22)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1003EEDA4(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, void *a9@<X8>)
{
  v11 = *a1;
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  v14 = *(a2 + 44);
  v15 = *a6;
  v16 = *(a2 + 16);
  v18[0] = *a2;
  v18[1] = v16;
  v19 = v12;
  v21 = v14;
  v20 = v13;
  sub_1004919E0(v11, v18, a3, a4, a5, v15, a7, a8);
  if (!v9)
  {
    *a9 = v17;
  }
}

unint64_t _s12NIOIMAPCore214FetchAttributeO21__derived_enum_equalsySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = *a1;
  v4 = *(a1 + 5) | (a1[7] << 16);
  v5 = *(a1 + 1);
  v7 = *(a1 + 1);
  v6 = *(a1 + 2);
  *&v50[5] = *(a1 + 29);
  *v50 = *(a1 + 3);
  v8 = (v5 << 8) | (v4 << 40);
  v9 = v8 | v3;
  v10 = *&v50[8] | (v50[12] << 32);
  v11 = v50[12] >> 5;
  if (v11 > 2)
  {
    if (v50[12] >> 5 <= 4u)
    {
      if (v11 == 3)
      {
        if (((a2[36] << 32) & 0xE000000000) != 0x6000000000)
        {
          goto LABEL_180;
        }

        if ((v3 ^ *a2))
        {
          goto LABEL_180;
        }

        v12 = *(a2 + 1);
        v13 = *(v7 + 16);
        if (v13 != *(v12 + 16))
        {
          goto LABEL_180;
        }

        if (v13 && v7 != v12)
        {
          v14 = (v7 + 32);
          v15 = (v12 + 32);
          while (*v14 == *v15)
          {
            ++v14;
            ++v15;
            if (!--v13)
            {
              goto LABEL_12;
            }
          }

          goto LABEL_180;
        }

LABEL_12:
        if (v50[0])
        {
          if ((a2[24] & 1) == 0)
          {
            goto LABEL_180;
          }
        }

        else if ((a2[24] & 1) != 0 || v6 != *(a2 + 2))
        {
          goto LABEL_180;
        }

        goto LABEL_179;
      }

      if (((a2[36] << 32) & 0xE000000000) != 0x8000000000)
      {
        goto LABEL_180;
      }

      v10 = *a2;
      v24 = *((v8 | v3) + 0x10);
      if (v24 != *(*a2 + 16))
      {
        goto LABEL_180;
      }

      if (!v24 || v9 == v10)
      {
LABEL_179:
        LOBYTE(v10) = 1;
        return v10 & 1;
      }

      v9 += 32;
      v3 = v10 + 32;
      while (v24)
      {
        v26 = *v9;
        v9 += 8;
        v25 = v26;
        v27 = *v3;
        v3 += 8;
        v28 = v25 == v27;
        v10 = v25 == v27;
        v28 = !v28 || v24-- == 1;
        if (v28)
        {
          return v10 & 1;
        }
      }

      __break(1u);
LABEL_153:
      if (v10 == v3 && v9 == 10 && !v24)
      {
        v43 = *(a2 + 8) | (a2[36] << 32);
        if ((v43 & 0xE000000000) != 0xC000000000 || v43 != 0xC000000000 || *a2 != 10)
        {
          goto LABEL_180;
        }

LABEL_178:
        if (!(*(a2 + 2) | *(a2 + 3) | *(a2 + 1)))
        {
          goto LABEL_179;
        }

LABEL_180:
        LOBYTE(v10) = 0;
        return v10 & 1;
      }

      if (v10 == v3 && v9 == 11 && !v24)
      {
        v44 = *(a2 + 8) | (a2[36] << 32);
        if ((v44 & 0xE000000000) != 0xC000000000 || v44 != 0xC000000000 || *a2 != 11)
        {
          goto LABEL_180;
        }

        goto LABEL_178;
      }

LABEL_168:
      if (v10 == v3 && v9 == 12 && !v24)
      {
        v45 = *(a2 + 8) | (a2[36] << 32);
        if ((v45 & 0xE000000000) != 0xC000000000 || v45 != 0xC000000000 || *a2 != 12)
        {
          goto LABEL_180;
        }
      }

      else
      {
        v46 = *(a2 + 8) | (a2[36] << 32);
        if ((v46 & 0xE000000000) != v3 || v46 != 0xC000000000 || *a2 != 13)
        {
          goto LABEL_180;
        }
      }

      goto LABEL_178;
    }

    if (v11 != 5)
    {
      v24 = v6 | v7 | *v50;
      v3 = 0xC000000000;
      if (v10 == 0xC000000000 && !(v24 | v9))
      {
        v29 = *(a2 + 8) | (a2[36] << 32);
        if ((v29 & 0xE000000000) != 0xC000000000)
        {
          goto LABEL_180;
        }

        if (v29 != 0xC000000000)
        {
          goto LABEL_180;
        }

        v30 = vorrq_s8(*a2, *(a2 + 1));
        if (vorr_s8(*v30.i8, *&vextq_s8(v30, v30, 8uLL)))
        {
          goto LABEL_180;
        }

        goto LABEL_179;
      }

      if (v10 == 0xC000000000 && v9 == 1 && v24 == 0)
      {
        v32 = *(a2 + 8) | (a2[36] << 32);
        if ((v32 & 0xE000000000) != 0xC000000000 || v32 != 0xC000000000 || *a2 != 1)
        {
          goto LABEL_180;
        }

        goto LABEL_178;
      }

      if (v10 == 0xC000000000 && v9 == 2 && v24 == 0)
      {
        v34 = *(a2 + 8) | (a2[36] << 32);
        if ((v34 & 0xE000000000) != 0xC000000000 || v34 != 0xC000000000 || *a2 != 2)
        {
          goto LABEL_180;
        }

        goto LABEL_178;
      }

      if (v10 == 0xC000000000 && v9 == 3 && !v24)
      {
        v35 = *(a2 + 8) | (a2[36] << 32);
        if ((v35 & 0xE000000000) != 0xC000000000 || v35 != 0xC000000000 || *a2 != 3)
        {
          goto LABEL_180;
        }

        goto LABEL_178;
      }

      if (v10 == 0xC000000000 && v9 == 4 && !v24)
      {
        v36 = *(a2 + 8) | (a2[36] << 32);
        if ((v36 & 0xE000000000) != 0xC000000000 || v36 != 0xC000000000 || *a2 != 4)
        {
          goto LABEL_180;
        }

        goto LABEL_178;
      }

      if (v10 == 0xC000000000 && v9 == 5 && !v24)
      {
        v37 = *(a2 + 8) | (a2[36] << 32);
        if ((v37 & 0xE000000000) != 0xC000000000 || v37 != 0xC000000000 || *a2 != 5)
        {
          goto LABEL_180;
        }

        goto LABEL_178;
      }

      if (v10 == 0xC000000000 && v9 == 6 && !v24)
      {
        v38 = *(a2 + 8) | (a2[36] << 32);
        if ((v38 & 0xE000000000) != 0xC000000000 || v38 != 0xC000000000 || *a2 != 6)
        {
          goto LABEL_180;
        }

        goto LABEL_178;
      }

      if (v10 == 0xC000000000 && v9 == 7 && !v24)
      {
        v40 = *(a2 + 8) | (a2[36] << 32);
        if ((v40 & 0xE000000000) != 0xC000000000 || v40 != 0xC000000000 || *a2 != 7)
        {
          goto LABEL_180;
        }

        goto LABEL_178;
      }

      if (v10 == 0xC000000000 && v9 == 8 && !v24)
      {
        v41 = *(a2 + 8) | (a2[36] << 32);
        if ((v41 & 0xE000000000) != 0xC000000000 || v41 != 0xC000000000 || *a2 != 8)
        {
          goto LABEL_180;
        }

        goto LABEL_178;
      }

      if (v10 == 0xC000000000 && v9 == 9 && !v24)
      {
        v42 = *(a2 + 8) | (a2[36] << 32);
        if ((v42 & 0xE000000000) != 0xC000000000 || v42 != 0xC000000000 || *a2 != 9)
        {
          goto LABEL_180;
        }

        goto LABEL_178;
      }

      goto LABEL_153;
    }

    if (((a2[36] << 32) & 0xE000000000) != 0xA000000000)
    {
      goto LABEL_180;
    }

    goto LABEL_33;
  }

  if (!v11)
  {
    if (a2[36] >> 5)
    {
      goto LABEL_180;
    }

LABEL_33:
    LOBYTE(v10) = v3 ^ *a2 ^ 1;
    return v10 & 1;
  }

  if (v11 == 1)
  {
    v16 = BYTE4(v10) & 0x1F;
    v18 = *(a2 + 1);
    v17 = *(a2 + 2);
    v19 = a2[24];
    v48 = *(a2 + 28);
    v20 = HIDWORD(v48) | (a2[36] << 32);
    if ((v20 & 0xE000000000) != 0x2000000000)
    {
      goto LABEL_180;
    }

    if ((v3 ^ *a2))
    {
      goto LABEL_180;
    }

    v21 = *(v7 + 16);
    if (v21 != *(v18 + 16))
    {
      goto LABEL_180;
    }

    v49 = BYTE4(v20) & 0x1F;
    if (v21 && v7 != v18)
    {
      v22 = (v7 + 32);
      v23 = (v18 + 32);
      while (*v22 == *v23)
      {
        ++v22;
        ++v23;
        if (!--v21)
        {
          goto LABEL_25;
        }
      }

      goto LABEL_180;
    }

LABEL_25:
    if (!v50[0])
    {
      if (a2[24])
      {
        goto LABEL_180;
      }

      goto LABEL_93;
    }

    if (v50[0] == 1)
    {
      if (v19 != 1)
      {
        goto LABEL_180;
      }

LABEL_93:
      if ((sub_10020FB40(v6, v17) & 1) == 0)
      {
        goto LABEL_180;
      }

      goto LABEL_123;
    }

    if (v6 > 1)
    {
      if (v6 == 2)
      {
        LOBYTE(v10) = 0;
        if (v19 == 2 && v17 == 2)
        {
          goto LABEL_123;
        }
      }

      else
      {
        LOBYTE(v10) = 0;
        if (v19 == 2 && v17 == 3)
        {
          goto LABEL_123;
        }
      }
    }

    else
    {
      LOBYTE(v10) = 0;
      if (!v6)
      {
        if (v19 != 2 || v17)
        {
          return v10 & 1;
        }

LABEL_123:
        if (v16)
        {
          if ((v49 & 1) == 0)
          {
            goto LABEL_180;
          }
        }

        else
        {
          if (*&v50[4] == v48)
          {
            v39 = v49;
          }

          else
          {
            v39 = 1;
          }

          if (v39)
          {
            goto LABEL_180;
          }
        }

        goto LABEL_179;
      }

      if (v19 == 2 && v17 == 1)
      {
        goto LABEL_123;
      }
    }
  }

  else
  {
    if (((a2[36] << 32) & 0xE000000000) != 0x4000000000)
    {
      goto LABEL_180;
    }

    v10 = *a2;
    v24 = *a2 | v8;
    if (v24 < 0)
    {
      __break(1u);
      goto LABEL_168;
    }

    LOBYTE(v10) = v10 == v9;
  }

  return v10 & 1;
}

unint64_t sub_1003EF590()
{
  result = qword_1005DC618;
  if (!qword_1005DC618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC618);
  }

  return result;
}

uint64_t sub_1003EF5E4(uint64_t a1)
{
  v1 = *(a1 + 36) >> 5;
  if (v1 <= 5)
  {
    return v1;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_1003EF600(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 37))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 24) >> 2) & 0x3FFFFFFF | (*(a1 + 36) >> 1 << 30);
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

uint64_t sub_1003EF65C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 37) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = (-4 * a2);
      *(result + 32) = 0;
      *(result + 36) = (-a2 >> 29) & 6;
      return result;
    }

    *(result + 37) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003EF6BC(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = a1 + 32;
  v3 = v2 | (*(result + 4) << 32);
  *result = v2;
  *(result + 4) = BYTE4(v3) & 0x1F;
  return result;
}

uint64_t sub_1003EF6D8(uint64_t result, uint64_t a2)
{
  if (a2 < 6)
  {
    v2 = *(result + 32);
    result += 32;
    v3 = (a2 << 37) | ((*(result + 4) & 1) << 32);
    *(result - 8) &= 0xFFFFFFFF00000003;
    *result = v2;
    *(result + 4) = BYTE4(v3);
  }

  else
  {
    *result = (a2 - 6);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 36) = -64;
  }

  return result;
}

unint64_t sub_1003EF774(__int128 *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[1];
  v6 = *a1;
  v7[0] = v3;
  *(v7 + 13) = *(a1 + 29);
  v4 = v2[1];
  v8 = *v2;
  v9[0] = v4;
  *(v9 + 13) = *(v2 + 29);
  return _s12NIOIMAPCore214FetchAttributeO21__derived_enum_equalsySbAC_ACtFZ_0(&v6, &v8) & 1;
}

uint64_t sub_1003EF7F0()
{
  v1 = v0;
  v2 = *(v0 + 20);
  result = sub_1002F178C(0x2820514553444F4DLL, 0xE800000000000000, (v0 + 8), *(v0 + 20));
  if (v4)
  {
    v5._countAndFlagsBits = 0x2820514553444F4DLL;
    v5._object = 0xE800000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v5, v2);
  }

  v6 = result;
  v7 = *(v0 + 20);
  v8 = (v7 + result);
  if (__CFADD__(v7, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(v0 + 20) = v8;
  v9 = sub_1004A6CE4();
  v11 = v10;
  v12 = sub_1002F178C(v9, v10, (v0 + 8), v8);
  if (v13)
  {
    v14._countAndFlagsBits = v9;
    v14._object = v11;
    v12 = ByteBuffer._setStringSlowpath(_:at:)(v14, v8);
  }

  v15 = v12;

  v16 = *(v1 + 20);
  v17 = (v16 + v15);
  if (__CFADD__(v16, v15))
  {
    goto LABEL_14;
  }

  *(v1 + 20) = v17;
  v18 = __OFADD__(v6, v15);
  v19 = v6 + v15;
  if (v18)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = sub_1002F178C(41, 0xE100000000000000, (v1 + 8), v16 + v15);
  if (v20)
  {
    v21._countAndFlagsBits = 41;
    v21._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v21, v17);
  }

  v22 = *(v1 + 20);
  v23 = __CFADD__(v22, result);
  v24 = v22 + result;
  if (v23)
  {
    goto LABEL_16;
  }

  *(v1 + 20) = v24;
  v18 = __OFADD__(v19, result);
  result += v19;
  if (v18)
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

unint64_t sub_1003EF954()
{
  result = qword_1005DC620;
  if (!qword_1005DC620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC620);
  }

  return result;
}

uint64_t sub_1003EF9B8(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = v1;
  v4 = *(v1 + 20);
  result = sub_1002F178C(32, 0xE100000000000000, (v1 + 8), *(v1 + 20));
  if (v6)
  {
    v7._countAndFlagsBits = 32;
    v7._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v1 + 20);
  v10 = (v9 + result);
  if (__CFADD__(v9, result))
  {
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  *(v1 + 20) = v10;
  v36 = a1;
  result = sub_1002F178C(0, 0xE000000000000000, (v1 + 8), v10);
  if (v11)
  {
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v12, v10);
  }

  v13 = result;
  v14 = *(v1 + 20);
  v15 = (v14 + result);
  if (__CFADD__(v14, result))
  {
    goto LABEL_27;
  }

  *(v1 + 20) = v15;
  result = sub_1002F178C(40, 0xE100000000000000, (v1 + 8), v15);
  if (v16)
  {
    v17._countAndFlagsBits = 40;
    v17._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v17, v15);
  }

  v18 = *(v1 + 20);
  v19 = __CFADD__(v18, result);
  v20 = v18 + result;
  if (v19)
  {
    goto LABEL_28;
  }

  *(v1 + 20) = v20;
  v21 = v13 + result;
  if (__OFADD__(v13, result))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  __chkstk_darwin(result);
  v35[2] = sub_1003F0200;
  v35[3] = 0;
  v35[4] = v2;
  v35[5] = &v36;
  v35[6] = 32;
  v35[7] = 0xE100000000000000;
  result = sub_100452548(0, sub_1003F076C, v35, a1);
  v22 = v21 + result;
  if (__OFADD__(v21, result))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v23 = *(v2 + 20);
  result = sub_1002F178C(41, 0xE100000000000000, (v2 + 8), *(v2 + 20));
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
    goto LABEL_31;
  }

  *(v2 + 20) = v27;
  v28 = __OFADD__(v22, result);
  v29 = v22 + result;
  if (v28)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  result = sub_1002F178C(0, 0xE000000000000000, (v2 + 8), v27);
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
    goto LABEL_33;
  }

  *(v2 + 20) = v33;
  v34 = v29 + result;
  if (__OFADD__(v29, result))
  {
LABEL_34:
    __break(1u);
    return result;
  }

  result = v8 + v34;
  if (!__OFADD__(v8, v34))
  {
    return result;
  }

  __break(1u);
  return 0;
}

void FetchModifier.hash(into:)()
{
  v1 = type metadata accessor for ParameterValue();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C9C0(&qword_1005D7F50, &unk_100502FF0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v25 - v8;
  v10 = sub_10000C9C0(&qword_1005DBCA8, &unk_100504BF0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (&v25 - v12);
  Modifier = type metadata accessor for FetchModifier();
  v15 = *(*(Modifier - 8) + 64);
  __chkstk_darwin(Modifier);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003F05A4(v0, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v20 = *v17;
      v19 = *(v17 + 1);
      v21 = v17[8];
      sub_1004A6EB4(1uLL);
      sub_1004A6EB4((v21 & 1) != 0);
      sub_1004A6EE4(v20);
      sub_1004A6EE4(v19);
    }

    else
    {
      sub_1003E05A4(v17, v13);
      sub_1004A6EB4(2uLL);
      v23 = *v13;
      v24 = v13[1];
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      sub_1003E0614(v13 + *(v10 + 52), v9);
      if ((*(v2 + 48))(v9, 1, v1) == 1)
      {
        sub_1004A6EC4(0);
      }

      else
      {
        sub_1002FC114(v9, v5);
        sub_1004A6EC4(1u);
        ParameterValue.hash(into:)();
        sub_1003F070C(v5, type metadata accessor for ParameterValue);
      }

      sub_100025F40(v13, &qword_1005DBCA8, &unk_100504BF0);
    }
  }

  else
  {
    v22 = *v17;
    sub_1004A6EB4(0);
    sub_1004A6EF4(v22);
  }
}

Swift::Int FetchModifier.hashValue.getter()
{
  sub_1004A6E94();
  FetchModifier.hash(into:)();
  return sub_1004A6F14();
}

Swift::Int sub_1003EFF28()
{
  sub_1004A6E94();
  FetchModifier.hash(into:)();
  return sub_1004A6F14();
}

uint64_t sub_1003EFF64(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000C9C0(&qword_1005DBCA8, &unk_100504BF0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = (v41 - v6);
  Modifier = type metadata accessor for FetchModifier();
  v9 = *(*(Modifier - 8) + 64);
  __chkstk_darwin(Modifier);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003F05A4(a1, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_18;
    }

    v13 = *v11;
    v14 = v11[8];
    v15 = *(v2 + 5);
    result = sub_1002F178C(0x204C414954524150, 0xE800000000000000, v2 + 1, *(v2 + 5));
    if (v17)
    {
      v18._countAndFlagsBits = 0x204C414954524150;
      v18._object = 0xE800000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v18, v15);
    }

    v19 = result;
    v20 = *(v2 + 5);
    v21 = __CFADD__(v20, result);
    v22 = v20 + result;
    if (v21)
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

    *(v2 + 5) = v22;
    v11 = v2;
    v23 = sub_100475674(v13, v14);
    v24 = __OFADD__(v19, v23);
    result = v19 + v23;
    if (!v24)
    {
      return result;
    }

    __break(1u);
  }

  v25 = *v11;
  v26 = *(v2 + 5);
  v7 = 0;
  result = sub_1002F178C(0x534445474E414843, 0xED00002045434E49, v2 + 1, *(v2 + 5));
  if (v27)
  {
    v28._countAndFlagsBits = 0x534445474E414843;
    v28._object = 0xED00002045434E49;
    result = ByteBuffer._setStringSlowpath(_:at:)(v28, v26);
  }

  v29 = result;
  v30 = *(v2 + 5);
  v31 = (v30 + result);
  if (__CFADD__(v30, result))
  {
    goto LABEL_21;
  }

  *(v2 + 5) = v31;
  v41[0] = v25;
  v32 = sub_1004A6CE4();
  v34 = v33;
  v35 = sub_1002F178C(v32, v33, v2 + 1, v31);
  if (v36)
  {
    v37._countAndFlagsBits = v32;
    v37._object = v34;
    v35 = ByteBuffer._setStringSlowpath(_:at:)(v37, v31);
  }

  v11 = v35;

  v38 = *(v2 + 5);
  v21 = __CFADD__(v38, v11);
  v39 = v38 + v11;
  if (v21)
  {
    goto LABEL_22;
  }

  *(v2 + 5) = v39;
  result = &v11[v29];
  if (!__OFADD__(v29, v11))
  {
    return result;
  }

  __break(1u);
LABEL_18:
  sub_1003E05A4(v11, v7);
  v40 = sub_10049EB14(v7);
  sub_100025F40(v7, &qword_1005DBCA8, &unk_100504BF0);
  return v40;
}

uint64_t _s12NIOIMAPCore213FetchModifierO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005DBCA8, &unk_100504BF0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = (&v31 - v6);
  Modifier = type metadata accessor for FetchModifier();
  v9 = *(*(Modifier - 8) + 64);
  __chkstk_darwin(Modifier);
  v11 = (&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v14 = &v31 - v13;
  __chkstk_darwin(v15);
  v17 = (&v31 - v16);
  v18 = sub_10000C9C0(&qword_1005DC6D8, &qword_100503310);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v31 - v20;
  v23 = &v31 + *(v22 + 56) - v20;
  sub_1003F05A4(a1, &v31 - v20);
  sub_1003F05A4(a2, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1003F05A4(v21, v14);
      v25 = *v14;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v26 = *v23;
        v27 = v23[8];
        if (v14[8])
        {
          if (*v23 != v25)
          {
            v27 = 0;
          }

          if (v27 != 1)
          {
LABEL_8:
            sub_1003F070C(v21, type metadata accessor for FetchModifier);
            return 0;
          }
        }

        else
        {
          if (*v23 != v25)
          {
            LOBYTE(v27) = 1;
          }

          if (v27)
          {
            goto LABEL_8;
          }
        }

        sub_1003F070C(v21, type metadata accessor for FetchModifier);
        return 1;
      }

LABEL_16:
      sub_100025F40(v21, &qword_1005DC6D8, &qword_100503310);
      return 0;
    }

    sub_1003F05A4(v21, v11);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_100025F40(v11, &qword_1005DBCA8, &unk_100504BF0);
      goto LABEL_16;
    }

    sub_1003E05A4(v23, v7);
    v30 = sub_100436BFC(v11, v7);
    sub_100025F40(v7, &qword_1005DBCA8, &unk_100504BF0);
    sub_100025F40(v11, &qword_1005DBCA8, &unk_100504BF0);
LABEL_14:
    sub_1003F070C(v21, type metadata accessor for FetchModifier);
    return v30;
  }

  sub_1003F05A4(v21, v17);
  v28 = *v17;
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    goto LABEL_16;
  }

  if (((*v23 | v28) & 0x8000000000000000) == 0)
  {
    v30 = *v23 == v28;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for FetchModifier()
{
  result = qword_1005DC6A0;
  if (!qword_1005DC6A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003F05A4(uint64_t a1, uint64_t a2)
{
  Modifier = type metadata accessor for FetchModifier();
  (*(*(Modifier - 8) + 16))(a2, a1, Modifier);
  return a2;
}

void sub_1003F0650()
{
  sub_1003E0740();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

uint64_t sub_1003F06C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003F070C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003F076C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_100491B64(*a1, a2, *(v3 + 16), *(v3 + 24), *(v3 + 32), **(v3 + 40), *(v3 + 48), *(v3 + 56));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t SearchModificationSequence.extensions.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;

  v8 = v3[1];

  v9 = v3[2];

  *v3 = a1;
  v3[1] = a2;
  v3[2] = a3;
  return result;
}

__n128 BodyStructure.Fields.init(parameters:id:contentDescription:encoding:octetCount:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10)
{
  *&v14 = a1;
  *(&v14 + 1) = a2;
  v15.n128_u64[0] = a3;
  v15.n128_u64[1] = a4;
  *&v16 = a5;
  *(&v16 + 1) = a6;
  *&v17 = a7;
  *(&v17 + 1) = a8;
  v18 = a10;
  v19[0] = a1;
  v19[1] = a2;
  v19[2] = a3;
  v19[3] = a4;
  v19[4] = a5;
  v19[5] = a6;
  v19[6] = a7;
  v19[7] = a8;
  v20 = a10;
  sub_1003F088C(&v14, &v13);
  sub_1003F08C4(v19);
  v11 = v17;
  *(a9 + 32) = v16;
  *(a9 + 48) = v11;
  *(a9 + 64) = v18;
  result = v15;
  *a9 = v14;
  *(a9 + 16) = result;
  return result;
}

void BodyStructure.Fields.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v2 + 16);
  sub_1004A6EB4(v3);
  v4 = v1;

  if (!v3)
  {
LABEL_5:
    sub_1003E1B30(&v16);
    if (v15[4])
    {
      v12 = v15[3];
      sub_1004A6EC4(1u);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      if (v15[6])
      {
        goto LABEL_7;
      }
    }

    else
    {
      sub_1004A6EC4(0);
      if (v15[6])
      {
LABEL_7:
        v13 = v15[5];
        sub_1004A6EC4(1u);
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        if (v15[8])
        {
LABEL_8:
          v14 = v15[7];
          sub_1004A6EC4(1u);
          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
LABEL_12:
          sub_1004A6EB4(v15[9]);
          return;
        }

LABEL_11:
        sub_1004A6EC4(0);
        goto LABEL_12;
      }
    }

    sub_1004A6EC4(0);
    if (v15[8])
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v5 = 0;
  v6 = (v2 + 40);
  v7 = (v1 + 40);
  while (v5 < *(v4 + 16))
  {
    v8 = *(v7 - 1);
    v9 = *v7;
    ++v5;
    v10 = *(v6 - 1);
    v11 = *v6;

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    v6 += 2;
    v7 += 2;
    if (v3 == v5)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}

Swift::Int BodyStructure.Fields.hashValue.getter()
{
  sub_1004A6E94();
  BodyStructure.Fields.hash(into:)();
  return sub_1004A6F14();
}

Swift::Int sub_1003F0AEC()
{
  sub_1004A6E94();
  BodyStructure.Fields.hash(into:)();
  return sub_1004A6F14();
}

BOOL sub_1003F0B28(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return _s12NIOIMAPCore213BodyStructureO6FieldsV23__derived_struct_equalsySbAE_AEtFZ_0(v8, v9);
}

unint64_t sub_1003F0B84(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1004633BC(*a1, *(a1 + 8), *(a1 + 16));
  v5 = *(v1 + 20);
  result = sub_1002F178C(32, 0xE100000000000000, (v1 + 8), *(v1 + 20));
  if (v7)
  {
    v8._countAndFlagsBits = 32;
    v8._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v8, v5);
  }

  v9 = *(v1 + 20);
  v10 = (v9 + result);
  if (__CFADD__(v9, result))
  {
    goto LABEL_35;
  }

  *(v1 + 20) = v10;
  v11 = __OFADD__(v4, result);
  v12 = v4 + result;
  if (v11)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    v14 = sub_100441B60(*(a1 + 24), v13);
    v15 = v12 + v14;
    if (!__OFADD__(v12, v14))
    {
      goto LABEL_7;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  result = sub_1002F178C(4999502, 0xE300000000000000, (v1 + 8), v10);
  if (v37)
  {
    v38._countAndFlagsBits = 4999502;
    v38._object = 0xE300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v38, v10);
  }

  v39 = *(v1 + 20);
  v26 = __CFADD__(v39, result);
  v40 = v39 + result;
  if (v26)
  {
    goto LABEL_44;
  }

  *(v1 + 20) = v40;
  v15 = v12 + result;
  if (__OFADD__(v12, result))
  {
    goto LABEL_28;
  }

LABEL_7:
  v16 = *(v1 + 20);
  result = sub_1002F178C(32, 0xE100000000000000, (v1 + 8), *(v1 + 20));
  if (v17)
  {
    v18._countAndFlagsBits = 32;
    v18._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v18, v16);
  }

  v19 = *(v1 + 20);
  v12 = (v19 + result);
  if (__CFADD__(v19, result))
  {
    goto LABEL_37;
  }

  *(v1 + 20) = v12;
  v11 = __OFADD__(v15, result);
  v15 += result;
  if (v11)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v20 = *(a1 + 48);
  if (v20)
  {
    result = sub_100441B60(*(a1 + 40), v20);
    v11 = __OFADD__(v15, result);
    v21 = v15 + result;
    if (!v11)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_29:
  result = sub_1002F178C(4999502, 0xE300000000000000, (v1 + 8), v12);
  if (v41)
  {
    v42._countAndFlagsBits = 4999502;
    v42._object = 0xE300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v42, v12);
  }

  v43 = *(v1 + 20);
  v26 = __CFADD__(v43, result);
  v44 = v43 + result;
  if (v26)
  {
    goto LABEL_45;
  }

  *(v1 + 20) = v44;
  v11 = __OFADD__(v15, result);
  v21 = v15 + result;
  if (v11)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_13:
  v22 = *(v1 + 20);
  result = sub_1002F178C(32, 0xE100000000000000, (v1 + 8), *(v1 + 20));
  if (v23)
  {
    v24._countAndFlagsBits = 32;
    v24._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v24, v22);
  }

  v25 = *(v1 + 20);
  v26 = __CFADD__(v25, result);
  v27 = v25 + result;
  if (v26)
  {
    goto LABEL_39;
  }

  *(v1 + 20) = v27;
  v28 = v21 + result;
  if (__OFADD__(v21, result))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  result = sub_1003E6524(*(a1 + 56));
  v29 = v28 + result;
  if (__OFADD__(v28, result))
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v45 = *(a1 + 72);
  v46._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v46);

  v30 = *(v1 + 20);
  v31 = sub_1002F178C(32, 0xE100000000000000, (v1 + 8), *(v1 + 20));
  if (v32)
  {
    v33._countAndFlagsBits = 32;
    v33._object = 0xE100000000000000;
    v31 = ByteBuffer._setStringSlowpath(_:at:)(v33, v30);
  }

  v34 = v31;

  v35 = *(v2 + 20);
  v26 = __CFADD__(v35, v34);
  v36 = v35 + v34;
  if (v26)
  {
    goto LABEL_42;
  }

  *(v2 + 20) = v36;
  result = v29 + v34;
  if (__OFADD__(v29, v34))
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
  }

  return result;
}

BOOL _s12NIOIMAPCore213BodyStructureO6FieldsV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[2];
  v5 = a2[2];
  if ((sub_10020FB40(a1[1], a2[1]) & 1) == 0 || (sub_10020FB40(v4, v5) & 1) == 0)
  {
    return 0;
  }

  v6 = a1[4];
  v7 = a2[4];
  if (v6)
  {
    if (!v7 || (a1[3] != a2[3] || v6 != v7) && (sub_1004A6D34() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = a1[6];
  v9 = a2[6];
  if (v8)
  {
    if (!v9 || (a1[5] != a2[5] || v8 != v9) && (sub_1004A6D34() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = a1[8];
  v11 = a2[8];
  if (v10)
  {
    if (v11 && (a1[7] == a2[7] && v10 == v11 || (sub_1004A6D34() & 1) != 0))
    {
      return a1[9] == a2[9];
    }
  }

  else if (!v11)
  {
    return a1[9] == a2[9];
  }

  return 0;
}

unint64_t sub_1003F0F84()
{
  result = qword_1005DC6E0;
  if (!qword_1005DC6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC6E0);
  }

  return result;
}

uint64_t sub_1003F0FE8(void *a1)
{
  v2 = v1;
  v32 = a1;
  v4 = a1[2];
  if (v4)
  {
    v5 = *(v1 + 20);
    result = sub_1002F178C(0, 0xE000000000000000, (v1 + 8), *(v1 + 20));
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
  result = sub_1002F178C(40, 0xE100000000000000, (v1 + 8), v12);
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

  __chkstk_darwin(result);
  v31[2] = sub_1003C40B8;
  v31[3] = 0;
  v31[4] = v2;
  v31[5] = &v32;
  v31[6] = 32;
  v31[7] = 0xE100000000000000;
  result = sub_1004594A4(0, sub_1003A3458, v31, a1);
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
  result = sub_1002F178C(41, 0xE100000000000000, (v2 + 8), *(v2 + 20));
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

  result = sub_1002F178C(0, 0xE000000000000000, (v2 + 8), v24);
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

uint64_t sub_1003F1208(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_1004A5A94();
  }

  else
  {
    return 0;
  }
}

uint64_t static Flag.Keyword.== infix(_:_:)()
{
  v0 = sub_1004A5834();
  v2 = v1;
  if (v0 == sub_1004A5834() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1004A6D34();
  }

  return v4 & 1;
}

uint64_t Flag.Keyword.hash(into:)()
{
  sub_1004A5834();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

Swift::Int Flag.hashValue.getter()
{
  sub_1004A6F24();
  sub_1004A5834();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F04();
}

Swift::Int sub_1003F13A0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1004A6F24();
  sub_1004A5834();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F04();
}

uint64_t sub_1003F1404()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1004A5834();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

Swift::Int sub_1003F1458()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1004A6E94();
  sub_1004A5834();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

uint64_t sub_1003F14BC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = sub_1004A5834();
  v8 = v7;
  if (v6 == sub_1004A5834() && v8 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1004A6D34();
  }

  return v11 & 1;
}

uint64_t static Flag.extension(_:)(uint64_t a1, unint64_t a2)
{
  result = sub_1003F1208(a1, a2);
  if (v4)
  {
    if (result == 92 && v4 == 0xE100000000000000)
    {

LABEL_6:

      return a1;
    }

    v5 = sub_1004A6D34();

    if (v5)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1003F1694()
{
  result = qword_1005DC6E8;
  if (!qword_1005DC6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC6E8);
  }

  return result;
}

uint64_t sub_1003F16F8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>)
{
  result = sub_100492094(*a1, *a2, a2[1], a2[2], a3, a4, a5, *a6, a7, a8);
  if (!v9)
  {
    *a9 = result;
  }

  return result;
}

unint64_t sub_1003F175C(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 1;
  }

  v5 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  v6 = 4 << v5;
  v7 = a2 & 0xFFFFFFFFFFFFFFLL;
  v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  result = 15;
  while (1)
  {
    v10 = result & 0xC;
    v11 = result;
    if (v10 == v6)
    {
      v15 = result;
      v11 = sub_10010C210(result, a1, a2);
      result = v15;
    }

    v12 = v11 >> 16;
    if (v11 >> 16 >= v2)
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v19 = result;
      v14 = sub_1004A5A24();
      result = v19;
      if (v10 != v6)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v20[0] = a1;
        v20[1] = v7;
        v13 = v20;
      }

      else
      {
        v13 = v8;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v18 = result;
          v13 = sub_1004A67E4();
          result = v18;
        }
      }

      v14 = *(v13 + v12);
      if (v10 != v6)
      {
LABEL_18:
        if ((a2 & 0x1000000000000000) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_22;
      }
    }

    result = sub_10010C210(result, a1, a2);
    if ((a2 & 0x1000000000000000) == 0)
    {
LABEL_19:
      result = (result & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_24;
    }

LABEL_22:
    if (v2 <= result >> 16)
    {
      goto LABEL_34;
    }

    result = sub_1004A59F4();
LABEL_24:
    v16 = 0;
    v17 = v14 - 32;
    if (v14 < 0x20u)
    {
      return v16;
    }

    if (v17 <= 0x3D)
    {
      if (v17 == 61)
      {
        goto LABEL_8;
      }

      if (((1 << (v14 - 32)) & 0x1000000000000725) != 0)
      {
        return v16;
      }
    }

    if (v14 == 123)
    {
      return v16;
    }

    if ((v14 & 0x80) != 0)
    {
      return 0;
    }

LABEL_8:
    if (4 * v2 == result >> 14)
    {
      return 1;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

unint64_t Flag.Keyword.init(_:)(unint64_t a1, unint64_t a2)
{
  v2 = a1;
  if ((sub_1003F175C(a1, a2) & 1) == 0)
  {

    return 0;
  }

  return v2;
}

Swift::Int Flag.Keyword.hashValue.getter()
{
  sub_1004A6E94();
  sub_1004A5834();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

Swift::Int sub_1003F19E8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1004A6E94();
  sub_1004A5834();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

unint64_t sub_1003F1C04()
{
  result = qword_1005DC6F0;
  if (!qword_1005DC6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC6F0);
  }

  return result;
}

unint64_t sub_1003F1C5C()
{
  result = qword_1005DC6F8;
  if (!qword_1005DC6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC6F8);
  }

  return result;
}

unint64_t sub_1003F1CB4()
{
  result = qword_1005DC700;
  if (!qword_1005DC700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC700);
  }

  return result;
}

Swift::Int sub_1003F1D90()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 20);
  v5 = *(v0 + 22);
  sub_1004A6E94();
  QuotaRoot.hash(into:)(v7, v1, v2, v3 | (v4 << 32) | (v5 << 48));
  return sub_1004A6F14();
}

unint64_t FramingResult.debugDescription.getter(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (v5)
    {
      sub_1004A6724(30);

      strcpy(v19, "INCOMPLETE: ");
      BYTE5(v19[1]) = 0;
      HIWORD(v19[1]) = -5120;
      v20 = a1;
      v25._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v25);

      v26._object = 0x80000001004B07C0;
      v26._countAndFlagsBits = 0xD000000000000010;
      sub_1004A5994(v26);
      return v19[0];
    }

    v6 = 0x4554454C504D4F43;
    v7 = 0xEA0000000000203ALL;
    goto LABEL_8;
  }

  if (v5 != 2)
  {
    v6 = 0x3A44494C41564E49;
    v7 = 0xE900000000000020;
LABEL_8:
    v20 = v6;
    v21 = v7;
    swift_beginAccess();
    v15 = *(a1 + 24) + ((a3 >> 24) & 0xFFFF00 | BYTE6(a3)) + a2;

    v16 = sub_1004A58D4();
    v18 = v17;
    sub_10030422C(a1, a2, a3);
    v27._countAndFlagsBits = v16;
    v27._object = v18;
    sub_1004A5994(v27);
    goto LABEL_9;
  }

  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  sub_1004A6724(32);

  v20 = 0xD000000000000010;
  v21 = 0x80000001004B07A0;
  swift_beginAccess();
  v9 = *(a1 + 24) + ((a3 >> 24) & 0xFFFF00 | BYTE6(a3)) + a2;

  v10 = sub_1004A58D4();
  v12 = v11;
  sub_10030422C(a1, a2, a3);
  v22._countAndFlagsBits = v10;
  v22._object = v12;
  sub_1004A5994(v22);

  v23._countAndFlagsBits = 0x696E69616D657220;
  v23._object = 0xEC000000203A676ELL;
  sub_1004A5994(v23);
  v24._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v24);
LABEL_9:

  return v20;
}

void FramingResult.hash(into:)(uint64_t a1, Swift::UInt a2, uint64_t a3, unint64_t a4, Swift::UInt64 a5)
{
  v7 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v7 == 2)
    {
      sub_1004A6EB4(2uLL);
      swift_beginAccess();
      v10 = *(a2 + 24) + ((a4 >> 24) & 0xFFFF00 | BYTE6(a4));
      sub_1004A6EA4();
      sub_1004A6EF4(a5);
      return;
    }

    v8 = 3;
  }

  else
  {
    if (v7)
    {
      sub_1004A6EB4(1uLL);
      sub_1004A6EB4(a2);
      return;
    }

    v8 = 0;
  }

  sub_1004A6EB4(v8);
  swift_beginAccess();
  v11 = *(a2 + 24) + ((a4 >> 24) & 0xFFFF00 | BYTE6(a4));
  sub_1004A6EA4();
}

Swift::Int FramingResult.hashValue.getter(Swift::UInt a1, uint64_t a2, unint64_t a3, Swift::UInt64 a4)
{
  sub_1004A6E94();
  FramingResult.hash(into:)(v9, a1, a2, a3, a4);
  return sub_1004A6F14();
}

void sub_1003F2224(uint64_t a1, Swift::UInt64 a2, uint64_t a3, unint64_t a4)
{
  v5 = HIBYTE(a4);
  if (HIBYTE(a4) <= 1)
  {
    if (!v5)
    {
      sub_1004A6EB4(1uLL);
      swift_beginAccess();
      v8 = *(a2 + 24) + ((a4 >> 24) & 0xFFFF00 | BYTE6(a4));
      sub_1004A6EA4();
      return;
    }

    v6 = 2;
  }

  else if (v5 == 2)
  {
    v6 = 3;
  }

  else
  {
    if (v5 != 3)
    {
      sub_1004A6EB4(0);
      return;
    }

    v6 = 4;
  }

  sub_1004A6EB4(v6);
  sub_1004A6EF4(a2);
}

void sub_1003F22EC(uint64_t a1, Swift::UInt64 a2, Swift::UInt64 a3, unint64_t a4)
{
  v6 = a4 >> 61;
  if ((a4 >> 61) > 1)
  {
    if (v6 == 2)
    {
      sub_1004A6EB4(3uLL);
      sub_1004A6EB4(a2 & 1);
      sub_1004A6EF4(a3);
      return;
    }

    if (v6 != 3)
    {
      v8 = 1;
      goto LABEL_10;
    }

    v7 = 4;
LABEL_7:
    sub_1004A6EB4(v7);
    v8 = a2 & 1;
LABEL_10:
    sub_1004A6EB4(v8);
    return;
  }

  if (!v6)
  {
    v7 = 0;
    goto LABEL_7;
  }

  sub_1004A6EB4(2uLL);

  sub_1003F2224(a1, a2, a3, a4 & 0x1FFFFFFFFFFFFFFFLL);
}

Swift::Int sub_1003F23B8(Swift::UInt64 a1, Swift::UInt64 a2, unint64_t a3)
{
  sub_1004A6E94();
  v6 = a3 >> 61;
  if ((a3 >> 61) <= 1)
  {
    if (v6)
    {
      sub_1004A6EB4(2uLL);
      sub_1003F2224(v10, a1, a2, a3 & 0x1FFFFFFFFFFFFFFFLL);
      return sub_1004A6F14();
    }

    v7 = 0;
    goto LABEL_7;
  }

  if (v6 != 2)
  {
    if (v6 != 3)
    {
      v8 = 1;
      goto LABEL_10;
    }

    v7 = 4;
LABEL_7:
    sub_1004A6EB4(v7);
    v8 = a1 & 1;
LABEL_10:
    sub_1004A6EB4(v8);
    return sub_1004A6F14();
  }

  sub_1004A6EB4(3uLL);
  sub_1004A6EB4(a1 & 1);
  sub_1004A6EF4(a2);
  return sub_1004A6F14();
}

Swift::Int sub_1003F2490()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1004A6E94();
  FramingResult.hash(into:)(v6, v1, v2, v4, v3);
  return sub_1004A6F14();
}

Swift::Int sub_1003F24FC()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1004A6E94();
  FramingResult.hash(into:)(v6, v1, v2, v4, v3);
  return sub_1004A6F14();
}

Swift::Int sub_1003F2580()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1004A6E94();
  sub_1003F2224(v5, v1, v2, v3);
  return sub_1004A6F14();
}

Swift::Int sub_1003F25E8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1004A6E94();
  sub_1003F2224(v5, v1, v2, v3);
  return sub_1004A6F14();
}

Swift::Int sub_1003F2674()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1004A6E94();
  v4 = v3 >> 61;
  if ((v3 >> 61) <= 1)
  {
    if (v4)
    {
      sub_1004A6EB4(2uLL);
      sub_1003F2224(v8, v1, v2, v3 & 0x1FFFFFFFFFFFFFFFLL);
      return sub_1004A6F14();
    }

    v5 = 0;
    goto LABEL_7;
  }

  if (v4 != 2)
  {
    if (v4 != 3)
    {
      v6 = 1;
      goto LABEL_10;
    }

    v5 = 4;
LABEL_7:
    sub_1004A6EB4(v5);
    v6 = v1 & 1;
LABEL_10:
    sub_1004A6EB4(v6);
    return sub_1004A6F14();
  }

  sub_1004A6EB4(3uLL);
  sub_1004A6EB4(v1 & 1);
  sub_1004A6EF4(v2);
  return sub_1004A6F14();
}

uint64_t FramingParser.init(bufferSizeLimit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1005DB9D0 != -1)
  {
    v8 = a1;
    v9 = a2;
    swift_once();
    a2 = v9;
    a1 = v8;
  }

  v3 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
  v4 = dword_1005DE398;
  v5 = word_1005DE39C;
  v6 = byte_1005DE39E;
  *a2 = 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v3;
  *(a2 + 40) = qword_1005DE390;
  *(a2 + 48) = v4;
  *(a2 + 52) = v5;
  *(a2 + 54) = v6;
  *(a2 + 56) = a1;
}

char *FramingParser.appendAndFrameBuffer(_:)(uint64_t a1)
{
  if (*(a1 + 12) == *(a1 + 8))
  {
    return _swiftEmptyArrayStorage;
  }

  ByteBuffer.writeBuffer(_:)(a1);
  return sub_1003F286C();
}

char *sub_1003F286C()
{
  result = sub_1003F29B4();
  v2 = *(result + 2);
  if (v2)
  {
    if (*&result[32 * v2 + 16] >> 62 == 1)
    {
      v3 = *(v0 + 40);
      v4 = *(v0 + 44);
      if (*(v0 + 56) < (v4 - v3))
      {
        v5 = result;

        sub_1003F4C10();
        swift_allocError();
        swift_willThrow();
        if (v3 < 0x3E9 || v4 >> 1 >= v3)
        {
          return v5;
        }

        goto LABEL_12;
      }
    }
  }

  v6 = *(v0 + 40);
  if (v6 >= 0x3E9 && *(v0 + 44) >> 1 < v6)
  {
    v5 = result;
LABEL_12:
    ByteBuffer.discardReadBytes()();
    return v5;
  }

  return result;
}

void FramingParser.appendAndFrameBytes(_:)(const void *a1, uint64_t a2)
{
  if (a1 && a2 != a1)
  {
    ByteBuffer._setBytes(_:at:)(a1, a2, *(v2 + 44));
    v3 = *(v2 + 44);
    v5 = __CFADD__(v3, v4);
    v6 = v3 + v4;
    if (v5)
    {
      __break(1u);
    }

    else
    {
      *(v2 + 44) = v6;
      sub_1003F286C();
    }
  }
}

char *sub_1003F29B4()
{
  v1 = _swiftEmptyArrayStorage;
  while (*(v0 + 44) != *(v0 + 40))
  {
    sub_1003F2AB4();
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v9 = v8;
    sub_1003041C4(v2, v4, v6);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_100460DD8(0, *(v1 + 2) + 1, 1, v1);
    }

    v11 = *(v1 + 2);
    v10 = *(v1 + 3);
    if (v11 >= v10 >> 1)
    {
      v1 = sub_100460DD8((v10 > 1), v11 + 1, 1, v1);
    }

    *(v1 + 2) = v11 + 1;
    v12 = &v1[32 * v11];
    *(v12 + 4) = v3;
    *(v12 + 5) = v5;
    *(v12 + 6) = v7;
    *(v12 + 7) = v9;
    if (v7 >> 62 == 1)
    {
      break;
    }

    sub_10030422C(v3, v5, v7);
  }

  return v1;
}

void sub_1003F2AB4()
{
  v1 = *(v0 + 24);
  v3 = *(v0 + 40);
  v2 = *(v0 + 44);
  v4 = v2 - v3;
  if (v1 >= v4)
  {
LABEL_32:
    v21 = *(v0 + 16);
    if ((v21 >> 61) <= 1)
    {
      if (v21 >> 61)
      {
        v25 = *(v0 + 8);
      }
    }

    return;
  }

  while (1)
  {
    v5 = *v0;
    v6 = *(v0 + 8);
    v7 = *(v0 + 16);
    v8 = v7 >> 61;
    if ((v7 >> 61) > 1)
    {
      break;
    }

    if (v8)
    {
      sub_1003F4C64(*v0, *(v0 + 8), *(v0 + 16), HIBYTE(v7) & 0x1F);
      sub_1003F3088(v5, v6, v7 & 0x1FFFFFFFFFFFFFFFLL);
      sub_1003F4C74(v5, v6, v7);
      return;
    }

    if (v1 >= v4)
    {
      __break(1u);
      goto LABEL_62;
    }

    v15 = *(v0 + 54);
    v16 = *(v0 + 52);
    v17 = *(v0 + 32);
    swift_beginAccess();
    v18 = *(v17 + 24) + (v15 | (v16 << 8)) + v3;
    v19 = *(v18 + v1);
    v14 = v1 + 1;
    *(v0 + 24) = v1 + 1;
    if (v19 > 33)
    {
      if (v19 != 34)
      {
        if (v19 == 123)
        {
          *v0 = 0;
          *(v0 + 8) = 0;
          *(v0 + 16) = 0x2400000000000000;
        }

        goto LABEL_5;
      }

      goto LABEL_3;
    }

    if (v19 == 10)
    {
      if (v5)
      {
        goto LABEL_54;
      }

      v20 = v3 + 1;
      if (v3 == -1)
      {
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      if (v1 || v2 < v20)
      {
        goto LABEL_59;
      }

      v14 = 0;
      *(v0 + 40) = v20;
      *(v0 + 24) = 0;
LABEL_27:
      *(v0 + 8) = 0;
      *(v0 + 16) = 0;
      *v0 = 1;
      goto LABEL_5;
    }

    if (v19 == 13)
    {
      if (v14 >= v4)
      {
        *v0 = 0;
        *(v0 + 8) = 0;
        *(v0 + 16) = 0;
      }

      else
      {
        if (*(v18 + v14) == 10)
        {
          v14 = v1 + 2;
          *(v0 + 24) = v1 + 2;
        }

        *(v0 + 8) = 0;
        *(v0 + 16) = 0;
        *v0 = 1;
      }

LABEL_54:
      v30 = ByteBuffer.readSlice(length:)(v14);
      *(v0 + 24) = 0;
      if (v30)
      {
        return;
      }

      goto LABEL_62;
    }

LABEL_5:
    v3 = *(v0 + 40);
    v4 = v2 - v3;
    v1 = v14;
    if (v14 >= v4)
    {
      goto LABEL_32;
    }
  }

  if (v8 == 3)
  {
    if (v1 >= v4)
    {
      goto LABEL_62;
    }

    v9 = *(v0 + 54);
    v10 = *(v0 + 52);
    v11 = *(v0 + 32);
    swift_beginAccess();
    v12 = *(v11 + 24) + (v9 | (v10 << 8)) + v3;
    v13 = *(v12 + v1);
    v14 = v1 + 1;
    *(v0 + 24) = v1 + 1;
    if (v13 == 10)
    {
      goto LABEL_50;
    }

    if (v13 == 13)
    {
      goto LABEL_44;
    }

    if (v5)
    {
      goto LABEL_3;
    }

    if (v13 == 34)
    {
      goto LABEL_27;
    }

    if (v13 != 92)
    {
LABEL_3:
      *v0 = 0;
      *(v0 + 8) = 0;
    }

    else
    {
      *v0 = xmmword_1004DB2C0;
    }

    *(v0 + 16) = 0x6000000000000000;
    goto LABEL_5;
  }

  if (v8 == 2)
  {
    sub_1003F3358(*v0 & 1, *(v0 + 8));
    v22 = *(v0 + 24);
    if (v22 <= 0)
    {
      v28 = *(v0 + 16) >> 61;
      return;
    }

    v23 = ByteBuffer.readSlice(length:)(v22);
    *(v0 + 24) = 0;
    if (v23)
    {
      if (v6 >= (HIDWORD(v24) - v24))
      {
        return;
      }

      goto LABEL_60;
    }

    goto LABEL_61;
  }

  v26 = v0;
  sub_1003F2FC4();
  v27 = *(v0 + 24);
  v0 += 32;
  v14 = ByteBuffer.readSlice(length:)(v27);
  *(v26 + 24) = 0;
  if (v14)
  {
    return;
  }

  __break(1u);
LABEL_44:
  if (v14 >= v4)
  {
    *v0 = 0;
    *(v0 + 8) = 0;
    *(v0 + 16) = 0;
  }

  else
  {
    if (*(v12 + v14) == 10)
    {
      v14 = v1 + 2;
      *(v0 + 24) = v1 + 2;
    }

    *(v0 + 8) = 0;
    *(v0 + 16) = 0;
    *v0 = 1;
  }

LABEL_50:
  v29 = ByteBuffer.readSlice(length:)(v14);
  *(v0 + 24) = 0;
  if (v29)
  {
    return;
  }

LABEL_62:
  __break(1u);
}

uint64_t sub_1003F2FC4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  if (v1 >= (*(v0 + 44) - v2))
  {
    result = sub_1003F4C74(*v0, *(v0 + 8), *(v0 + 16));
    *v0 = 0;
    *(v0 + 8) = 0;
    *(v0 + 16) = 0;
  }

  else if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(v0 + 54);
    v4 = *(v0 + 52);
    v5 = *(v0 + 32);
    swift_beginAccess();
    if (*(*(v5 + 24) + (v3 | (v4 << 8)) + v2 + v1) == 10)
    {
      *(v0 + 24) = v1 + 1;
    }

    result = sub_1003F4C74(*v0, *(v0 + 8), *(v0 + 16));
    *(v0 + 8) = 0;
    *(v0 + 16) = 0;
    *v0 = 1;
  }

  return result;
}

uint64_t sub_1003F3088(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = v3;
  v5 = HIBYTE(a3);
  if (HIBYTE(a3) > 1)
  {
    if (v5 == 2)
    {
      v6 = sub_1003F3FE8(a1);
      goto LABEL_8;
    }

    if (v5 == 3)
    {
      v6 = sub_1003F4104(a1);
      goto LABEL_8;
    }

    v9 = *(v3 + 24);
    v10 = *(v4 + 40);
    if (v9 >= (*(v4 + 44) - v10))
    {
      goto LABEL_18;
    }

    if (v9 < 0)
    {
      __break(1u);
    }

    else
    {
      v11 = *(v4 + 54);
      v12 = *(v4 + 52);
      v13 = *(v4 + 32);
      swift_beginAccess();
      if (*(*(v13 + 24) + (v11 | (v12 << 8)) + v10 + v9) == 126)
      {
        *(v4 + 24) = v9 + 1;
      }

      if (qword_1005DB9D0 == -1)
      {
        goto LABEL_16;
      }
    }

    swift_once();
LABEL_16:
    v14 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
    v15 = qword_1005DE390;
    v16 = dword_1005DE398 | (word_1005DE39C << 32) | (byte_1005DE39E << 48);
    v17 = *v4;
    v18 = *(v4 + 8);
    v19 = *(v4 + 16);

    sub_1003F4C74(v17, v18, v19);
    *v4 = v14;
    *(v4 + 8) = v15;
    *(v4 + 16) = v16 | 0x2000000000000000;
    a1 = v14;
    a2 = v15;
    v7 = v16;
    goto LABEL_17;
  }

  if (!v5)
  {
    v7 = a3 & 0xFFFFFFFFFFFFFFLL;
LABEL_17:
    v6 = sub_1003F37AC(a1, a2, v7);
    goto LABEL_8;
  }

  v6 = sub_1003F3E90(a1);
LABEL_8:
  if ((v6 & 1) == 0)
  {
    result = ByteBuffer.readSlice(length:)(*(v4 + 24));
    *(v4 + 24) = 0;
    if (!result)
    {
      __break(1u);
    }

    return result;
  }

LABEL_18:
  v20 = *(v4 + 16);
  v21 = v20 >> 61;
  if ((v20 >> 61) > 1)
  {
    if (v21 == 2)
    {
      return 1;
    }

    if (v21 == 3)
    {
      return 3;
    }

    return 0;
  }

  if (!v21)
  {
    return 2;
  }

  result = HIBYTE(v20) & 0x1F;
  if ((HIBYTE(v20) & 0x1Fu) > 1)
  {
    if (result != 2)
    {
      if (result != 3)
      {
        return result;
      }

      return 2;
    }

    return 3;
  }

  if (result)
  {
    return 3;
  }

  if (HIDWORD(*(v4 + 8)) == *(v4 + 8))
  {
    return 4;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_1003F3358(uint64_t result, unint64_t a2)
{
  if ((result & 1) == 0)
  {
    v4 = *(v3 + 24);
    v6 = *(v3 + 40);
    v5 = *(v3 + 44);
    v7 = v5 - v6;
    if (v4 < v7)
    {
      if (v4 < 0)
      {
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      v8 = *(v3 + 54);
      v9 = *(v3 + 52);
      v10 = *(v3 + 32);
      v11 = a2;
      result = swift_beginAccess();
      a2 = v11;
      v2 = (v8 | (v9 << 8)) + v6;
      if (*(*(v10 + 24) + v2 + v4) == 10)
      {
        v7 = (v6 + 1);
        if (v6 == -1)
        {
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        if (v5 < v7)
        {
LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

        *(v3 + 40) = v7;
      }
    }
  }

  v12 = (*(v3 + 44) - *(v3 + 40));
  v7 = *(v3 + 24);
  v13 = __OFSUB__(v12, v7);
  v2 = v12 - v7;
  if (v13)
  {
    __break(1u);
    goto LABEL_15;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
LABEL_18:
    *(v3 + 24) = v2 + v7;
    __break(1u);
    return result;
  }

  v14 = a2 - v2;
  if (a2 <= v2)
  {
    *(v3 + 24) = v7 + a2;
    result = sub_1003F4C74(*v3, *(v3 + 8), *(v3 + 16));
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *v3 = 1;
  }

  else
  {
    *(v3 + 24) = v2 + v7;
    result = sub_1003F4C74(*v3, *(v3 + 8), *(v3 + 16));
    *v3 = 1;
    *(v3 + 8) = v14;
    *(v3 + 16) = 0x4000000000000000;
  }

  return result;
}

void FramingParser.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 1);
  v6 = *(v2 + 2);
  v7 = v6 >> 61;
  if ((v6 >> 61) <= 1)
  {
    if (v7)
    {
      v10 = *(v2 + 5) | (v2[7] << 16);
      v11 = *(v2 + 1);
      sub_1004A6EB4(2uLL);
      sub_1003F2224(a1, (v11 << 8) | (v10 << 40) | v4, v5, v6 & 0x1FFFFFFFFFFFFFFFLL);
      goto LABEL_12;
    }

    v8 = 0;
    goto LABEL_7;
  }

  if (v7 != 2)
  {
    if (v7 != 3)
    {
      v9 = 1;
      goto LABEL_10;
    }

    v8 = 4;
LABEL_7:
    sub_1004A6EB4(v8);
    v9 = v4 & 1;
LABEL_10:
    sub_1004A6EB4(v9);
    goto LABEL_12;
  }

  sub_1004A6EB4(3uLL);
  sub_1004A6EB4(v4 & 1);
  sub_1004A6EF4(v5);
LABEL_12:
  sub_1004A6EB4(*(v2 + 3));
  v12 = *(v2 + 4);
  v13 = *(v2 + 10);
  v14 = *(v2 + 11);
  v15 = *(v2 + 26);
  v16 = v2[54];
  swift_beginAccess();
  v17 = *(v12 + 24) + (v16 | (v15 << 8));
  sub_1004A6EA4();
  sub_1004A6EB4(*(v2 + 7));
}

Swift::Int FramingParser.hashValue.getter()
{
  v1 = v0;
  sub_1004A6E94();
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  v5 = v4 >> 61;
  if ((v4 >> 61) <= 1)
  {
    if (v5)
    {
      v8 = *(v0 + 5) | (v0[7] << 16);
      v9 = *(v0 + 1);
      sub_1004A6EB4(2uLL);
      sub_1003F2224(v17, (v9 << 8) | (v8 << 40) | v2, v3, v4 & 0x1FFFFFFFFFFFFFFFLL);
      goto LABEL_12;
    }

    v6 = 0;
    goto LABEL_7;
  }

  if (v5 != 2)
  {
    if (v5 != 3)
    {
      v7 = 1;
      goto LABEL_10;
    }

    v6 = 4;
LABEL_7:
    sub_1004A6EB4(v6);
    v7 = v2 & 1;
LABEL_10:
    sub_1004A6EB4(v7);
    goto LABEL_12;
  }

  sub_1004A6EB4(3uLL);
  sub_1004A6EB4(v2 & 1);
  sub_1004A6EF4(v3);
LABEL_12:
  sub_1004A6EB4(*(v0 + 3));
  v10 = *(v0 + 4);
  v11 = *(v1 + 10);
  v12 = *(v1 + 11);
  v13 = *(v1 + 26);
  v14 = v1[54];
  swift_beginAccess();
  v15 = *(v10 + 24) + (v14 | (v13 << 8));
  sub_1004A6EA4();
  sub_1004A6EB4(*(v1 + 7));
  return sub_1004A6F14();
}

Swift::Int sub_1003F3724()
{
  sub_1004A6E94();
  FramingParser.hash(into:)(v1);
  return sub_1004A6F14();
}

BOOL sub_1003F3760(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return _s12NIOIMAPCore213FramingParserV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v8);
}

unsigned __int8 *sub_1003F37AC(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v67 = a3;
  v4 = a2;
  v5 = a1;
  v69 = a1;
  v70 = a2;
  v6 = HIDWORD(a2);
  v71 = a3;
  v7 = HIWORD(a3);
  v73 = BYTE6(a3);
  v8 = HIDWORD(a3);
  v72 = WORD2(a3);
  v9 = *(v3 + 32);
  v11 = *(v3 + 40);
  v10 = *(v3 + 44);
  v12 = *(v3 + 52);
  v13 = *(v3 + 54);

  swift_beginAccess();
  v14 = (v10 - v11);
  v15 = v7;
  v16 = v8;
  v17 = v13 | (v12 << 8);
  while (1)
  {
    v18 = v66[3];
    v19 = v11 + v18;
    if (__OFADD__(v11, v18))
    {
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    if (v19 < v11 || v18 >= v14)
    {
      v28 = v67 | (v16 << 32) | (v15 << 48) | 0x2000000000000000;
      sub_1003F4C74(*v66, v66[1], v66[2]);
      *v66 = v5;
      v66[1] = v4 | (v6 << 32);
      v29 = 1;
      v66[2] = v28;
      return (v29 & 1);
    }

    v21 = *(*(v9 + 24) + v17 + v19);
    v66[3] = v18 + 1;
    if ((v21 - 58) < 0xFFFFFFF6)
    {
      break;
    }

    v4 = v6 + 1;
    if (v6 == -1)
    {
      goto LABEL_101;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v4 >= v67)
      {
        v22 = v4 - v67;
      }

      else
      {
        v22 = 0;
      }

      v23 = variable initialization expression of Engine.isProcessingUpdates();
      ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v22, v23 & 1);
    }

    ByteBuffer._ensureAvailableCapacity(_:at:)(1u, v6);
    v5 = v69;
    v24 = v72;
    v4 = v73;
    swift_beginAccess();
    v25 = v73 | (v72 << 8);
    v67 = v71;
    v26 = v71 - v25;
    if (v71 - v25 >= v6)
    {
      v26 = v6;
    }

    if (!v6)
    {
      v26 = 0;
    }

    *(*(v69 + 24) + v25 + v26) = v21;
    v6 = (HIDWORD(v70) + 1);
    if (HIDWORD(v70) == -1)
    {
      goto LABEL_102;
    }

    v16 = v24;
    v15 = v4;
    ++HIDWORD(v70);
    v4 = v70;
    if ((v6 - v70) >= 0x15)
    {
      LOBYTE(v14) = v15;
      sub_1003F4C9C();
      swift_allocError();
      *v27 = v5;
      *(v27 + 8) = v4;
      *(v27 + 12) = v6;
      *(v27 + 16) = v67;
      *(v27 + 20) = v24;
      goto LABEL_95;
    }
  }

  if (v21 == 43)
  {
    goto LABEL_26;
  }

  if (v21 == 125)
  {
    LOBYTE(v14) = v15;
    LOWORD(v17) = v16;
    swift_beginAccess();
    v45 = *(v5 + 24) + (v14 | (v17 << 8)) + v4;

    v46 = sub_1004A58D4();
    v48 = v47;

    v49 = sub_100325504(v46, v48);
    if (v50)
    {
      goto LABEL_94;
    }

    v51 = v49;
    sub_1003F4C74(*v66, v66[1], v66[2]);
    *v66 = v51;
    *(v66 + 1) = xmmword_1005036D0;
    v52 = v65;
    v53 = sub_1003F4104(v51);
    goto LABEL_98;
  }

  if (v21 != 45)
  {
    sub_1003F4CF0();
    swift_allocError();
    swift_willThrow();
  }

LABEL_26:
  v31 = v15;
  LOWORD(v14) = v16;
  swift_beginAccess();
  LOWORD(v17) = v14;
  v32 = v14;
  LOBYTE(v14) = v31;
  v33 = *(v5 + 24) + (v31 | (v32 << 8)) + v4;

  v34 = sub_1004A58D4();
  v36 = v35;

  v37 = HIBYTE(v36) & 0xF;
  v38 = v34 & 0xFFFFFFFFFFFFLL;
  if ((v36 & 0x2000000000000000) != 0)
  {
    v39 = HIBYTE(v36) & 0xF;
  }

  else
  {
    v39 = v34 & 0xFFFFFFFFFFFFLL;
  }

  if (!v39)
  {
LABEL_103:

    goto LABEL_94;
  }

  if ((v36 & 0x1000000000000000) != 0)
  {
    v74 = 0;
    v41 = sub_10010C818(v34, v36, 10);
    v63 = v64;
    goto LABEL_93;
  }

  if ((v36 & 0x2000000000000000) != 0)
  {
    v68[0] = v34;
    v68[1] = v36 & 0xFFFFFFFFFFFFFFLL;
    if (v34 == 43)
    {
      if (!v37)
      {
LABEL_109:
        __break(1u);
        return result;
      }

      if (--v37)
      {
        v41 = 0;
        v58 = v68 + 1;
        while (1)
        {
          v59 = *v58 - 48;
          if (v59 > 9)
          {
            break;
          }

          if (!is_mul_ok(v41, 0xAuLL))
          {
            break;
          }

          v44 = __CFADD__(10 * v41, v59);
          v41 = 10 * v41 + v59;
          if (v44)
          {
            break;
          }

          ++v58;
          if (!--v37)
          {
            goto LABEL_92;
          }
        }
      }
    }

    else if (v34 == 45)
    {
      if (!v37)
      {
LABEL_107:
        __break(1u);
        goto LABEL_108;
      }

      if (--v37)
      {
        v41 = 0;
        v54 = v68 + 1;
        while (1)
        {
          v55 = *v54 - 48;
          if (v55 > 9)
          {
            break;
          }

          if (!is_mul_ok(v41, 0xAuLL))
          {
            break;
          }

          v44 = 10 * v41 >= v55;
          v41 = 10 * v41 - v55;
          if (!v44)
          {
            break;
          }

          ++v54;
          if (!--v37)
          {
            goto LABEL_92;
          }
        }
      }
    }

    else if (v37)
    {
      v41 = 0;
      v61 = v68;
      while (1)
      {
        v62 = *v61 - 48;
        if (v62 > 9)
        {
          break;
        }

        if (!is_mul_ok(v41, 0xAuLL))
        {
          break;
        }

        v44 = __CFADD__(10 * v41, v62);
        v41 = 10 * v41 + v62;
        if (v44)
        {
          break;
        }

        ++v61;
        if (!--v37)
        {
          goto LABEL_92;
        }
      }
    }

LABEL_91:
    v41 = 0;
    LOBYTE(v37) = 1;
    goto LABEL_92;
  }

  if ((v34 & 0x1000000000000000) != 0)
  {
    result = ((v36 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result = sub_1004A67E4();
  }

  v40 = *result;
  if (v40 == 43)
  {
    if (v38 < 1)
    {
LABEL_108:
      __break(1u);
      goto LABEL_109;
    }

    v37 = v38 - 1;
    if (v38 == 1)
    {
      goto LABEL_91;
    }

    v41 = 0;
    if (!result)
    {
      goto LABEL_83;
    }

    v56 = result + 1;
    while (1)
    {
      v57 = *v56 - 48;
      if (v57 > 9)
      {
        goto LABEL_91;
      }

      if (!is_mul_ok(v41, 0xAuLL))
      {
        goto LABEL_91;
      }

      v44 = __CFADD__(10 * v41, v57);
      v41 = 10 * v41 + v57;
      if (v44)
      {
        goto LABEL_91;
      }

      ++v56;
      if (!--v37)
      {
        goto LABEL_92;
      }
    }
  }

  if (v40 != 45)
  {
    if (!v38)
    {
      goto LABEL_91;
    }

    v41 = 0;
    if (!result)
    {
      goto LABEL_83;
    }

    while (1)
    {
      v60 = *result - 48;
      if (v60 > 9)
      {
        goto LABEL_91;
      }

      if (!is_mul_ok(v41, 0xAuLL))
      {
        goto LABEL_91;
      }

      v44 = __CFADD__(10 * v41, v60);
      v41 = 10 * v41 + v60;
      if (v44)
      {
        goto LABEL_91;
      }

      ++result;
      if (!--v38)
      {
        goto LABEL_83;
      }
    }
  }

  if (v38 < 1)
  {
    __break(1u);
    goto LABEL_107;
  }

  v37 = v38 - 1;
  if (v38 == 1)
  {
    goto LABEL_91;
  }

  v41 = 0;
  if (result)
  {
    v42 = result + 1;
    while (1)
    {
      v43 = *v42 - 48;
      if (v43 > 9)
      {
        goto LABEL_91;
      }

      if (!is_mul_ok(v41, 0xAuLL))
      {
        goto LABEL_91;
      }

      v44 = 10 * v41 >= v43;
      v41 = 10 * v41 - v43;
      if (!v44)
      {
        goto LABEL_91;
      }

      ++v42;
      if (!--v37)
      {
        goto LABEL_92;
      }
    }
  }

LABEL_83:
  LOBYTE(v37) = 0;
LABEL_92:
  v74 = v37;
  v63 = v37;
LABEL_93:

  if (v63)
  {
LABEL_94:
    sub_1003F4C9C();
    swift_allocError();
    *v27 = v5;
    *(v27 + 8) = v4;
    *(v27 + 12) = v6;
    *(v27 + 16) = v67;
    *(v27 + 20) = v17;
LABEL_95:
    *(v27 + 22) = v14;
    return swift_willThrow();
  }

  sub_1003F4C74(*v66, v66[1], v66[2]);
  *v66 = v41;
  *(v66 + 1) = xmmword_1005036E0;
  v52 = v65;
  v53 = sub_1003F3FE8(v41);
LABEL_98:
  v29 = v53;

  if (!v52)
  {
    return (v29 & 1);
  }

  return result;
}

uint64_t sub_1003F3E90(uint64_t result)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 24);
  v5 = v3 + v4;
  if (__OFADD__(v3, v4))
  {
    __break(1u);
  }

  else if (v5 < v3 || v4 >= (*(v1 + 44) - v3))
  {
    return 1;
  }

  else
  {
    v6 = result;
    v7 = *(v1 + 32);
    v8 = *(v1 + 52);
    v9 = *(v1 + 54);
    swift_beginAccess();
    v10 = *(*(v7 + 24) + (v9 | (v8 << 8)) + v5);
    *(v1 + 24) = v4 + 1;
    switch(v10)
    {
      case '+':
LABEL_7:
        sub_1003F4C74(*v1, *(v1 + 8), *(v1 + 16));
        *v1 = v6;
        *(v1 + 8) = xmmword_1005036E0;
        return 1;
      case '}':
        sub_1003F4C74(*v1, *(v1 + 8), *(v1 + 16));
        *v1 = v6;
        *(v1 + 8) = xmmword_1005036D0;
        result = sub_1003F4104(v6);
        if (!v2)
        {
          return result & 1;
        }

        break;
      case '-':
        goto LABEL_7;
      default:
        sub_1003F4CF0();
        swift_allocError();
        return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1003F3FE8(uint64_t result)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 24);
  v5 = v3 + v4;
  if (__OFADD__(v3, v4))
  {
    __break(1u);
  }

  else if (v5 < v3 || v4 >= (*(v1 + 44) - v3))
  {
    return 1;
  }

  else
  {
    v6 = result;
    v7 = *(v1 + 32);
    v8 = *(v1 + 52);
    v9 = *(v1 + 54);
    swift_beginAccess();
    v10 = *(*(v7 + 24) + (v9 | (v8 << 8)) + v5);
    *(v1 + 24) = v4 + 1;
    if (v10 == 125)
    {
      sub_1003F4C74(*v1, *(v1 + 8), *(v1 + 16));
      *v1 = v6;
      *(v1 + 8) = xmmword_1005036D0;
      result = sub_1003F4104(v6);
      if (!v2)
      {
        return result & 1;
      }
    }

    else
    {
      sub_1003F4CF0();
      swift_allocError();
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1003F4104(uint64_t result)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 24);
  v4 = v2 + v3;
  if (__OFADD__(v2, v3))
  {
    __break(1u);
  }

  else
  {
    v5 = *(v1 + 24);
    if (v4 < v2 || v3 >= (*(v1 + 44) - v2))
    {
      return 1;
    }

    else
    {
      v6 = result;
      v7 = *(v1 + 32);
      v8 = *(v1 + 52);
      v9 = *(v1 + 54);
      swift_beginAccess();
      v10 = *(*(v7 + 24) + (v9 | (v8 << 8)) + v4);
      *(v1 + 24) = v3 + 1;
      if (v10 == 10)
      {
        sub_1003F4C74(*v1, *(v1 + 8), *(v1 + 16));
        result = 0;
        *v1 = 1;
        *(v1 + 8) = v6;
        *(v1 + 16) = 0x4000000000000000;
      }

      else if (v10 == 13)
      {
        sub_1003F422C(v6);
        return 0;
      }

      else
      {
        sub_1003F4CF0();
        swift_allocError();
        return swift_willThrow();
      }
    }
  }

  return result;
}

uint64_t sub_1003F422C(uint64_t result)
{
  v2 = result;
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  if (v3 >= (*(v1 + 44) - v4))
  {
    result = sub_1003F4C74(*v1, *(v1 + 8), *(v1 + 16));
    v8 = 0;
LABEL_7:
    *v1 = v8;
    *(v1 + 8) = v2;
    *(v1 + 16) = 0x4000000000000000;
    return result;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = *(v1 + 54);
    v6 = *(v1 + 52);
    v7 = *(v1 + 32);
    swift_beginAccess();
    if (*(*(v7 + 24) + (v5 | (v6 << 8)) + v4 + v3) == 10)
    {
      *(v1 + 24) = v3 + 1;
    }

    result = sub_1003F4C74(*v1, *(v1 + 8), *(v1 + 16));
    v8 = 1;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

BOOL sub_1003F42FC(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v6 = HIBYTE(a3);
  v7 = HIBYTE(a6);
  if (HIBYTE(a3) > 1)
  {
    if (v6 == 2)
    {
      if (v7 != 2)
      {
        return 0;
      }
    }

    else
    {
      if (v6 != 3)
      {
        return v7 == 4 && !(a6 & 0xFFFFFFFFFFFFFFLL | a4 | a5);
      }

      if (v7 != 3)
      {
        return 0;
      }
    }

    return a1 == a4;
  }

  if (!v6)
  {
    if (!v7)
    {
      return sub_10020FBD0(a1, a2, a3 & 0xFFFFFFFFFFFFFFLL, a4, a5, a6);
    }

    return 0;
  }

  if (v7 == 1)
  {
    return a1 == a4;
  }

  return 0;
}

BOOL sub_1003F4380(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v6 = a3 >> 61;
  if ((a3 >> 61) <= 1)
  {
    if (v6)
    {
      if (a6 >> 61 == 1)
      {
        v9 = HIBYTE(a6) & 0x1F;
        v10 = HIBYTE(a3) & 0x1F;
        if ((HIBYTE(a3) & 0x1Fu) <= 1)
        {
          if (v10)
          {
            if (v9 == 1 && a1 == a4)
            {
              return 1;
            }
          }

          else if (!v9 && sub_10020FBD0(a1, a2, a3 & 0xFFFFFFFFFFFFFFLL, a4, a5, a6 & 0xFFFFFFFFFFFFFFLL))
          {
            return 1;
          }
        }

        else if (v10 == 2)
        {
          if (v9 == 2 && a1 == a4)
          {
            return 1;
          }
        }

        else if (v10 == 3)
        {
          if (v9 == 3 && a1 == a4)
          {
            return 1;
          }
        }

        else if (v9 == 4 && !(a6 & 0xFFFFFFFFFFFFFFLL | a4 | a5))
        {
          return 1;
        }
      }

      return 0;
    }

    if (a6 >> 61)
    {
      return 0;
    }

    return ((a4 ^ a1) & 1) == 0;
  }

  if (v6 != 2)
  {
    if (v6 != 3)
    {
      return a6 >> 61 == 4 && !(a5 | a4) && a6 == 0x8000000000000000;
    }

    if (a6 >> 61 != 3)
    {
      return 0;
    }

    return ((a4 ^ a1) & 1) == 0;
  }

  if (a6 >> 61 != 2)
  {
    return 0;
  }

  return ((a4 ^ a1) & 1) == 0 && a2 == a5;
}

BOOL _s12NIOIMAPCore213FramingParserV23__derived_struct_equalsySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v4 = *(a1 + 1);
  v3 = *(a1 + 2);
  v5 = *a2;
  v6 = *(a2 + 1) | ((*(a2 + 5) | (a2[7] << 16)) << 32);
  v7 = *(a2 + 1);
  v8 = *(a2 + 2);
  v9 = v3 >> 61;
  if ((v3 >> 61) > 1)
  {
    if (v9 == 2)
    {
      if (v8 >> 61 == 2)
      {
        v10 = 0;
        if (((v2 ^ v5) & 1) != 0 || v4 != v7)
        {
          return v10;
        }

        goto LABEL_34;
      }
    }

    else if (v9 == 3)
    {
      if (v8 >> 61 == 3)
      {
LABEL_8:
        if ((v2 ^ v5))
        {
          return 0;
        }

        goto LABEL_34;
      }
    }

    else if (v8 >> 61 == 4)
    {
      v10 = 0;
      if (v8 != 0x8000000000000000 || v5 | (v6 << 8) | v7)
      {
        return v10;
      }

      goto LABEL_34;
    }

    return 0;
  }

  if (!v9)
  {
    if (!(v8 >> 61))
    {
      goto LABEL_8;
    }

    return 0;
  }

  if (v8 >> 61 != 1)
  {
    return 0;
  }

  v11 = v5 | (v6 << 8);
  v12 = v2 | ((*(a1 + 1) | ((*(a1 + 5) | (a1[7] << 16)) << 32)) << 8);
  v13 = v8 & 0x1F00000000000000;
  v14 = HIBYTE(v3) & 0x1F;
  if ((HIBYTE(v3) & 0x1Fu) <= 1)
  {
    if (v14)
    {
      v10 = 0;
      v15 = 0x100000000000000;
      goto LABEL_32;
    }

    if (v13)
    {
      return 0;
    }

    v16 = a1;
    v17 = a2;
    v18 = sub_10020FBD0(v12, v4, v3 & 0xFFFFFFFFFFFFFFLL, v11, v7, v8 & 0xFFFFFFFFFFFFFFLL);
    a2 = v17;
    v19 = v18;
    a1 = v16;
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (v14 == 2)
    {
      v10 = 0;
      v15 = 0x200000000000000;
      goto LABEL_32;
    }

    if (v14 == 3)
    {
      v10 = 0;
      v15 = 0x300000000000000;
LABEL_32:
      if (v13 != v15 || v12 != v11)
      {
        return v10;
      }

      goto LABEL_34;
    }

    if (v13 != 0x400000000000000 || v8 & 0xFFFFFFFFFFFFFFLL | v7 | v11)
    {
      return 0;
    }
  }

LABEL_34:
  if (*(a1 + 3) != *(a2 + 3))
  {
    return 0;
  }

  v20 = a1;
  v21 = a2;
  if (!sub_10020FBD0(*(a1 + 4), *(a1 + 5), *(a1 + 12) | (*(a1 + 26) << 32) | (a1[54] << 48), *(a2 + 4), *(a2 + 5), *(a2 + 12) | (*(a2 + 26) << 32) | (a2[54] << 48)))
  {
    return 0;
  }

  return *(v20 + 7) == *(v21 + 7);
}

BOOL _s12NIOIMAPCore213FramingResultO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v9 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v9 == 2)
    {
      if (a7 >> 62 == 2)
      {
        return sub_10020FBD0(a1, a2, a3 & 0xFFFFFFFFFFFFFFLL, a5, a6, a7 & 0xFFFFFFFFFFFFFFLL) && a4 == a8;
      }

      return 0;
    }

    if (a7 >> 62 != 3)
    {
      return 0;
    }

    goto LABEL_15;
  }

  if (!v9)
  {
    if (a7 >> 62)
    {
      return 0;
    }

LABEL_15:
    v12 = a3 & 0xFFFFFFFFFFFFFFLL;

    return sub_10020FBD0(a1, a2, v12, a5, a6, a7 & 0xFFFFFFFFFFFFFFLL);
  }

  return a7 >> 62 == 1 && a1 == a5;
}

unint64_t sub_1003F47C0()
{
  result = qword_1005DC708;
  if (!qword_1005DC708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC708);
  }

  return result;
}

unint64_t sub_1003F4818()
{
  result = qword_1005DC710;
  if (!qword_1005DC710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC710);
  }

  return result;
}

unint64_t sub_1003F4870()
{
  result = qword_1005DC718;
  if (!qword_1005DC718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC718);
  }

  return result;
}

unint64_t sub_1003F48C8()
{
  result = qword_1005DC720;
  if (!qword_1005DC720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC720);
  }

  return result;
}

uint64_t sub_1003F4948(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 32))
  {
    return (*a1 + 253);
  }

  v3 = ((*(a1 + 23) >> 6) & 0xFFFFFF03 | (4 * (*(a1 + 23) & 0x3F))) ^ 0xFF;
  if (v3 >= 0xFC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1003F4998(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = ((-a2 >> 2) - (a2 << 6)) << 56;
      *(result + 24) = 0;
    }
  }

  return result;
}

uint64_t sub_1003F4A18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003F4A60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003F4AC0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1C && *(a1 + 24))
  {
    return (*a1 + 28);
  }

  v3 = (((*(a1 + 16) >> 59) >> 2) & 0xFFFFFFE7 | (8 * ((*(a1 + 16) >> 59) & 3))) ^ 0x1F;
  if (v3 >= 0x1B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1003F4B14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1B)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 28;
    if (a3 >= 0x1C)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1C)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 3) & 3) - 4 * a2) << 59;
    }
  }

  return result;
}

uint64_t sub_1003F4B78(uint64_t result, uint64_t a2)
{
  if (a2 < 4)
  {
    *(result + 16) = *(result + 16) & 0x7FFFFFFFFFFFFFFLL | (a2 << 61);
  }

  else
  {
    *result = (a2 - 4);
    *(result + 8) = xmmword_1004F5DA0;
  }

  return result;
}

unint64_t sub_1003F4BBC()
{
  result = qword_1005DC728;
  if (!qword_1005DC728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC728);
  }

  return result;
}

unint64_t sub_1003F4C10()
{
  result = qword_1005DC730;
  if (!qword_1005DC730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC730);
  }

  return result;
}

uint64_t sub_1003F4C64(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4)
  {
  }

  return result;
}

uint64_t sub_1003F4C74(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 >> 61 == 1)
  {
    return sub_1003F4C8C(result, a2, a3, HIBYTE(a3) & 0x1F);
  }

  return result;
}

uint64_t sub_1003F4C8C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4)
  {
  }

  return result;
}

unint64_t sub_1003F4C9C()
{
  result = qword_1005DC738;
  if (!qword_1005DC738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC738);
  }

  return result;
}

unint64_t sub_1003F4CF0()
{
  result = qword_1005DC740;
  if (!qword_1005DC740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC740);
  }

  return result;
}

uint64_t sub_1003F4D54(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 24))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 23);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1003F4D9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 23) = -a2;
    }
  }

  return result;
}

uint64_t sub_1003F4DE0(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    *(result + 22) = 0;
    *(result + 20) = 0;
    LOBYTE(a2) = 4;
    *(result + 16) = 0;
  }

  *(result + 23) = a2;
  return result;
}

unint64_t sub_1003F4E28()
{
  result = qword_1005DC748;
  if (!qword_1005DC748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC748);
  }

  return result;
}

unint64_t sub_1003F4E80()
{
  result = qword_1005DC750;
  if (!qword_1005DC750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC750);
  }

  return result;
}

unint64_t sub_1003F4ED8()
{
  result = qword_1005DC758;
  if (!qword_1005DC758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC758);
  }

  return result;
}

uint64_t FullDateTime.date.getter()
{
  result = *v0;
  v2 = v0[1];
  v3 = v0[2];
  return result;
}

uint64_t FullDateTime.date.setter(uint64_t result, uint64_t a2, uint64_t a3)
{
  *v3 = result;
  v3[1] = a2;
  v3[2] = a3;
  return result;
}

__n128 FullDateTime.time.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  result = *(v1 + 24);
  v4 = *(v1 + 40);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 FullDateTime.time.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v3;
  *(v1 + 56) = *(a1 + 32);
  return result;
}

void __swiftcall FullDateTime.init(date:time:)(NIOIMAPCore2::FullDateTime *__return_ptr retstr, NIOIMAPCore2::FullDate date, NIOIMAPCore2::FullTime *time)
{
  retstr->date = date;
  v3 = *&time->second;
  *&retstr->time.hour = *&time->hour;
  *&retstr->time.second = v3;
  retstr->time.fraction.is_nil = time->fraction.is_nil;
}

uint64_t static FullTime.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = *(a2 + 32);
  if (*(a1 + 32))
  {
    if ((*(a2 + 32) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 24) != *(a2 + 24))
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return 1;
}

void FullDateTime.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_1004A6EB4(*v0);
  sub_1004A6EB4(v1);
  sub_1004A6EB4(v2);
  v3 = *(v0 + 32);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v6 = *(v0 + 56);
  sub_1004A6EB4(*(v0 + 24));
  sub_1004A6EB4(v3);
  sub_1004A6EB4(v5);
  if (v6)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v4);
  }
}

Swift::Int FullDateTime.hashValue.getter()
{
  sub_1004A6E94();
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_1004A6EB4(*v0);
  sub_1004A6EB4(v1);
  sub_1004A6EB4(v2);
  v3 = *(v0 + 32);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v6 = *(v0 + 56);
  sub_1004A6EB4(*(v0 + 24));
  sub_1004A6EB4(v3);
  sub_1004A6EB4(v5);
  if (v6)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v4);
  }

  return sub_1004A6F14();
}

BOOL sub_1003F5154(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return _s12NIOIMAPCore212FullDateTimeV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v7);
}

NIOIMAPCore2::FullDate __swiftcall FullDate.init(year:month:day:)(Swift::Int year, Swift::Int month, Swift::Int day)
{
  if ((month - 13) < 0xFFFFFFFFFFFFFFF4 || (day - 32) < 0xFFFFFFFFFFFFFFE1)
  {
    __break(1u);
  }

  result.day = day;
  result.month = month;
  result.year = year;
  return result;
}

void __swiftcall FullTime.init(hour:minute:second:fraction:)(NIOIMAPCore2::FullTime *__return_ptr retstr, Swift::Int hour, Swift::Int minute, Swift::Int second, Swift::Int_optional fraction)
{
  retstr->hour = hour;
  retstr->minute = minute;
  retstr->second = second;
  retstr->fraction.value = fraction.value;
  retstr->fraction.is_nil = fraction.is_nil;
}

void FullTime.hash(into:)()
{
  sub_1004A6EB4(*v0);
  sub_1004A6EB4(*(v0 + 8));
  sub_1004A6EB4(*(v0 + 16));
  if (*(v0 + 32) == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    v1 = *(v0 + 24);
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v1);
  }
}

Swift::Int FullTime.hashValue.getter()
{
  sub_1004A6E94();
  sub_1004A6EB4(*v0);
  sub_1004A6EB4(*(v0 + 8));
  sub_1004A6EB4(*(v0 + 16));
  if (*(v0 + 32) == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    v1 = *(v0 + 24);
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v1);
  }

  return sub_1004A6F14();
}

Swift::Int sub_1003F52E0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  sub_1004A6E94();
  sub_1004A6EB4(v1);
  sub_1004A6EB4(v2);
  sub_1004A6EB4(v4);
  if (v5 == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v3);
  }

  return sub_1004A6F14();
}

void sub_1003F5384()
{
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  sub_1004A6EB4(*v0);
  sub_1004A6EB4(v1);
  sub_1004A6EB4(v3);
  if (v4 == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v2);
  }
}

Swift::Int sub_1003F53FC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  sub_1004A6E94();
  sub_1004A6EB4(v1);
  sub_1004A6EB4(v2);
  sub_1004A6EB4(v4);
  if (v5 == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v3);
  }

  return sub_1004A6F14();
}

uint64_t sub_1003F549C(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = *(a2 + 32);
  if (*(a1 + 32))
  {
    if (*(a2 + 32))
    {
      return 1;
    }
  }

  else
  {
    if (*(a1 + 24) != *(a2 + 24))
    {
      v5 = 1;
    }

    if ((v5 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1003F54F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_1003F5810(a1, 4);
  v9 = v8;
  v10 = sub_1003F5810(a2, 2);
  v12 = v11;
  v13 = *(v4 + 20);
  v14 = sub_1003F5810(a3, 2);
  v16 = v15;
  v25._countAndFlagsBits = 45;
  v25._object = 0xE100000000000000;
  sub_1004A5994(v25);
  v26._countAndFlagsBits = v10;
  v26._object = v12;
  sub_1004A5994(v26);

  v27._countAndFlagsBits = 45;
  v27._object = 0xE100000000000000;
  sub_1004A5994(v27);
  v28._countAndFlagsBits = v14;
  v28._object = v16;
  sub_1004A5994(v28);

  v17 = sub_1002F178C(v7, v9, (v4 + 8), v13);
  if (v18)
  {
    v19._countAndFlagsBits = v7;
    v19._object = v9;
    v17 = ByteBuffer._setStringSlowpath(_:at:)(v19, v13);
  }

  v20 = v17;

  v22 = *(v4 + 20);
  v23 = __CFADD__(v22, v20);
  v24 = v22 + v20;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 20) = v24;
    return v20;
  }

  return result;
}

uint64_t sub_1003F5630(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1003F5810(*a1, 2);
  v6 = v5;
  v7 = sub_1003F5810(*(a1 + 8), 2);
  v9 = v8;
  v10 = *(v2 + 20);
  v11 = sub_1003F5810(*(a1 + 16), 2);
  v13 = v12;
  v29._countAndFlagsBits = 58;
  v29._object = 0xE100000000000000;
  sub_1004A5994(v29);
  v30._countAndFlagsBits = v7;
  v30._object = v9;
  sub_1004A5994(v30);

  v31._countAndFlagsBits = 58;
  v31._object = 0xE100000000000000;
  sub_1004A5994(v31);
  v32._countAndFlagsBits = v11;
  v32._object = v13;
  sub_1004A5994(v32);

  v14 = sub_1002F178C(v4, v6, (v2 + 8), v10);
  if (v15)
  {
    v16._countAndFlagsBits = v4;
    v16._object = v6;
    v14 = ByteBuffer._setStringSlowpath(_:at:)(v16, v10);
  }

  v17 = v14;

  v19 = *(v2 + 20);
  v20 = (v19 + v17);
  if (__CFADD__(v19, v17))
  {
    __break(1u);
    goto LABEL_13;
  }

  *(v2 + 20) = v20;
  if (*(a1 + 32))
  {
    v21 = 0;
  }

  else
  {
    v28 = *(a1 + 24);
    v33._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v33);

    v22 = sub_1002F178C(46, 0xE100000000000000, (v2 + 8), v20);
    if (v23)
    {
      v24._countAndFlagsBits = 46;
      v24._object = 0xE100000000000000;
      v22 = ByteBuffer._setStringSlowpath(_:at:)(v24, v20);
    }

    v21 = v22;

    v25 = *(v2 + 20);
    v26 = __CFADD__(v25, v21);
    v27 = v25 + v21;
    if (v26)
    {
      goto LABEL_14;
    }

    *(v2 + 20) = v27;
  }

  result = v17 + v21;
  if (__OFADD__(v17, v21))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }

  return result;
}

uint64_t sub_1003F5810(uint64_t a1, uint64_t a2)
{
  v3 = sub_1004A6CE4();
  v5 = v4;
  if (sub_1004A5924() >= a2)
  {
    return v3;
  }

  result = sub_1004A5924();
  v7 = a2 - result;
  if (!__OFSUB__(a2, result))
  {
    v9._countAndFlagsBits = 48;
    v9._object = 0xE100000000000000;
    v8 = sub_1004A5A74(v9, v7);

    v10._countAndFlagsBits = v3;
    v10._object = v5;
    sub_1004A5994(v10);

    return v8;
  }

  __break(1u);
  return result;
}

BOOL _s12NIOIMAPCore212FullDateTimeV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v2 || *(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  v4 = *(a2 + 56);
  if (*(a1 + 56))
  {
    return (*(a2 + 56) & 1) != 0;
  }

  return (*(a2 + 56) & 1) == 0 && *(a1 + 48) == *(a2 + 48);
}

unint64_t sub_1003F5964()
{
  result = qword_1005DC760;
  if (!qword_1005DC760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC760);
  }

  return result;
}

unint64_t sub_1003F59BC()
{
  result = qword_1005DC768;
  if (!qword_1005DC768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC768);
  }

  return result;
}

unint64_t sub_1003F5A14()
{
  result = qword_1005DC770;
  if (!qword_1005DC770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC770);
  }

  return result;
}

uint64_t sub_1003F5A98(char *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1;
  v6 = *(a1 + 2);
  if (!v6)
  {
    if (qword_1005DB9D0 != -1)
    {
      goto LABEL_17;
    }

    goto LABEL_4;
  }

  v7 = _s12NIOIMAPCore210ByteBufferV8_StorageC11reallocated15minimumCapacity9allocatorAEs6UInt32V_AA0bC9AllocatorVtFZ_0(*(a1 + 2), a2, a3, a4, a5);
  swift_beginAccess();
  v8 = 0;
  v9 = *(v7 + 16);
  for (i = v6; ; i = 0)
  {
    v11 = v8 + i;
    if (!__CFADD__(v8, i))
    {
      break;
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    swift_once();
LABEL_4:
    v7 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
    v8 = HIDWORD(qword_1005DE390);
    v9 = dword_1005DE398;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v11 >= v9)
    {
      v12 = v11 - v9;
    }

    else
    {
      v12 = 0;
    }

    v13 = variable initialization expression of Engine.isProcessingUpdates();
    ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v12, v13 & 1);
  }

  if (HIDWORD(v6))
  {
    goto LABEL_15;
  }

  v5 += 32;
  ByteBuffer._ensureAvailableCapacity(_:at:)(i, v8);
  ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)(v5, &v5[v6], v8);
  if (__CFADD__(v8, i))
  {
    goto LABEL_16;
  }

  return v7;
}

uint64_t GmailLabel.init(mailboxName:)(char *a1)
{
  v1 = sub_1003F5A98(a1, j__malloc, j__realloc, sub_100127C74, sub_100127C84);

  return v1;
}

Swift::String __swiftcall GmailLabel.makeDisplayString()()
{
  sub_10045C954(v0, v1, v2 & 0xFFFFFFFFFFFFFFLL);
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_1003F5D94(uint64_t a1)
{
  v2 = v1;
  v32 = a1;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *(v1 + 20);
    result = sub_1002F178C(0, 0xE000000000000000, (v1 + 8), *(v1 + 20));
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
  result = sub_1002F178C(40, 0xE100000000000000, (v1 + 8), v12);
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

  __chkstk_darwin(result);
  v31[2] = sub_1003F5FB4;
  v31[3] = 0;
  v31[4] = v2;
  v31[5] = &v32;
  v31[6] = 32;
  v31[7] = 0xE100000000000000;
  result = sub_10045948C(0, sub_1003E73E4, v31, a1);
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
  result = sub_1002F178C(41, 0xE100000000000000, (v2 + 8), *(v2 + 20));
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

  result = sub_1002F178C(0, 0xE000000000000000, (v2 + 8), v24);
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

uint64_t sub_1003F5FB4(uint64_t a1)
{
  v1 = *a1;
  v3 = *(a1 + 8);
  v2 = *(a1 + 12);
  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  v6 = *(a1 + 22);
  if (v2 == v3)
  {
    return sub_1003B1E70(v1, v3 | (v2 << 32), v4 | (v5 << 32) | (v6 << 48));
  }

  swift_beginAccess();
  if (*(*(v1 + 24) + (v6 | (v5 << 8)) + v3) != 92)
  {
    return sub_1003B1E70(v1, v3 | (v2 << 32), v4 | (v5 << 32) | (v6 << 48));
  }

  v8 = v1;
  v9 = v3;
  v10 = v2;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  return EncodeBuffer.writeBuffer(_:)(&v8);
}

unint64_t sub_1003F6074()
{
  result = qword_1005DC778;
  if (!qword_1005DC778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DC778);
  }

  return result;
}

uint64_t sub_1003F60D8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v12 = result;
    if (v9 >= a3)
    {
      sub_1003A5228();
      v18 = swift_allocError();
      *v20 = a3;
    }

    else
    {
      v13 = *result;
      v14 = *(result + 8);
      v15 = *(result + 16);
      v16 = *(result + 20);
      v17 = *(result + 22);

      sub_10046B71C(0x28uLL, 0xE100000000000000, 0, 0, v12, v9, a3);
      v18 = v8;
      if (!v8)
      {
        sub_1003F6698(v12, v9, a3, a4, a5, a6, a7, v56);
        sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, v12, v9, a3);

        v44 = v56[8];
        v45 = v56[9];
        v46 = v56[10];
        v40 = v56[4];
        v41 = v56[5];
        v42 = v56[6];
        v43 = v56[7];
        v36 = v56[0];
        v37 = v56[1];
        v38 = v56[2];
        v39 = v56[3];
        result = sub_100193BE8(&v36);
LABEL_15:
        v67 = v44;
        v68 = v45;
        v69 = v46;
        v70 = v47;
        v63 = v40;
        v64 = v41;
        v65 = v42;
        v66 = v43;
        v59 = v36;
        v60 = v37;
        v61 = v38;
        v62 = v39;
        v27 = v45;
        *(a8 + 128) = v44;
        *(a8 + 144) = v27;
        *(a8 + 160) = v69;
        *(a8 + 176) = v70;
        v28 = v64;
        *(a8 + 64) = v63;
        *(a8 + 80) = v28;
        v29 = v66;
        *(a8 + 96) = v65;
        *(a8 + 112) = v29;
        v30 = v60;
        *a8 = v59;
        *(a8 + 16) = v30;
        v31 = v62;
        *(a8 + 32) = v61;
        *(a8 + 48) = v31;
        return result;
      }

      v19 = *v12;

      *v12 = v13;
      *(v12 + 8) = v14;
      *(v12 + 16) = v15;
      *(v12 + 20) = v16;
      *(v12 + 22) = v17;
    }

    swift_willThrow();
    *&v48 = v18;
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if (swift_dynamicCast())
    {
    }

    else
    {

      *&v48 = v18;
      swift_errorRetain();
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v9 >= a3)
    {
      sub_1003A5228();
      swift_allocError();
      *v26 = a3;
      return swift_willThrow();
    }

    v21 = *v12;
    v22 = *(v12 + 8);
    v23 = *(v12 + 16);
    v24 = *(v12 + 20);
    v25 = *(v12 + 22);

    sub_10046B71C(0x28uLL, 0xE100000000000000, 0, 0, v12, v9, a3);
    sub_1003F6B10(v12, v9, a3, a4, a5, a6, a7, v57);
    v52 = v57[4];
    v53 = v57[5];
    v54 = v57[6];
    v55 = v58;
    v48 = v57[0];
    v49 = v57[1];
    v50 = v57[2];
    v51 = v57[3];
    sub_10046B71C(0x29uLL, 0xE100000000000000, 0, 0, v12, v9, a3);

    v40 = v52;
    v41 = v53;
    v42 = v54;
    *&v43 = v55;
    v36 = v48;
    v37 = v49;
    v38 = v50;
    v39 = v51;
    result = sub_1001AD7A0(&v36);
    goto LABEL_15;
  }

  __break(1u);
  return result;
}