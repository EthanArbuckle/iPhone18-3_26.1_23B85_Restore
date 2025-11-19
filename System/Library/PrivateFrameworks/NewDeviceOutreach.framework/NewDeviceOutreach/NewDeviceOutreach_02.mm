Swift::Int NDODWCoverageModel.CoverageLink.Action.hashValue.getter()
{
  v1 = v0;
  Hasher.init(_seed:)();
  v2 = *v0;
  v3 = v0[1];
  String.hash(into:)();
  v4 = v0[2];
  v5 = v0[3];
  String.hash(into:)();
  v6 = v0[4];
  v7 = *(v6 + 16);
  Hasher._combine(_:)(v7);
  if (v7)
  {
    v8 = (v6 + 56);
    do
    {
      v9 = *(v8 - 3);
      v10 = *(v8 - 2);
      v11 = *(v8 - 1);
      v12 = *v8;

      String.hash(into:)();
      String.hash(into:)();

      v8 += 4;
      --v7;
    }

    while (v7);
  }

  v13 = v1[5];
  v14 = v1[6];
  String.hash(into:)();
  return Hasher._finalize()();
}

double NDODWCoverageModel.CoverageLink.Action.init(from:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10003E5C0(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

Swift::Int sub_10003C918()
{
  Hasher.init(_seed:)();
  NDODWCoverageModel.CoverageLink.Action.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10003C96C(uint64_t a1, uint64_t a2)
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
  return _s8ndoagent18NDODWCoverageModelV12CoverageLinkV6ActionV23__derived_struct_equalsySbAG_AGtFZ_0(v5, v7) & 1;
}

uint64_t sub_10003CA30()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

uint64_t sub_10003CA5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_10003CB30(uint64_t a1)
{
  v2 = sub_10003E914();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003CB6C(uint64_t a1)
{
  v2 = sub_10003E914();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static NDODWCoverageModel.CoverageLink.Action.Benefits.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 == a5 && a2 == a6 || (v12 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v12 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t NDODWCoverageModel.CoverageLink.Action.Benefits.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = sub_10001A078(&qword_1000A7838, &qword_10007DD30);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_100001F3C(a1, a1[3]);
  sub_10003E914();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v15 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t NDODWCoverageModel.CoverageLink.Action.Benefits.hash(into:)()
{
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int NDODWCoverageModel.CoverageLink.Action.Benefits.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t NDODWCoverageModel.CoverageLink.Action.Benefits.init(from:)(uint64_t *a1)
{
  result = sub_10003E968(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

Swift::Int sub_10003CED0()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10003CF38()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_10003CF88()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10003CFEC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10003E968(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_10003D03C(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

void sub_10003D0E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  v21 = v3;
  if (v3)
  {
    v4 = 0;
    v20 = a2 + 32;
    do
    {
      v5 = (v20 + 72 * v4);
      v7 = *v5;
      v6 = v5[1];
      v9 = v5[2];
      v8 = v5[3];
      v10 = v5[4];
      v11 = v5[5];
      v12 = v5[6];
      v22 = v5[7];
      v13 = v5[8];

      String.hash(into:)();
      String.hash(into:)();
      String.hash(into:)();
      Hasher._combine(_:)(*(v12 + 16));
      v14 = *(v12 + 16);
      if (v14)
      {
        v15 = (v12 + 56);
        do
        {
          v16 = *(v15 - 3);
          v17 = *(v15 - 2);
          v19 = *(v15 - 1);
          v18 = *v15;

          String.hash(into:)();
          String.hash(into:)();

          v15 += 4;
          --v14;
        }

        while (v14);
      }

      ++v4;
      String.hash(into:)();
    }

    while (v4 != v21);
  }
}

uint64_t sub_10003D28C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C72556F676F6CLL && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6567617265766F63 && a2 == 0xED00006C6562614CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x800000010008BFE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4E746375646F7270 && a2 == 0xEB00000000656D61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010008C000 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x79746E6172726177 && a2 == 0xED0000656C746954 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010008C020 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x736B6E696CLL && a2 == 0xE500000000000000)
  {

    return 7;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t _s8ndoagent18NDODWCoverageModelV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1;
    v7 = *a1 == *a2 && v4 == v5;
    if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v8 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[6] != a2[6] || a1[7] != a2[7]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[8] != a2[8] || a1[9] != a2[9]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[10] != a2[10] || a1[11] != a2[11]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (sub_10003B590(a1[12], a2[12]) & 1) == 0)
  {
    return 0;
  }

  v9 = a1[13];
  v10 = a2[13];

  return sub_10003B620(v9, v10);
}

unint64_t sub_10003D680()
{
  result = qword_1000AB3C0;
  if (!qword_1000AB3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AB3C0);
  }

  return result;
}

unint64_t sub_10003D6D4()
{
  result = qword_1000A7800;
  if (!qword_1000A7800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7800);
  }

  return result;
}

uint64_t sub_10003D728@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_10001A078(&qword_1000A7890, &unk_10007E5B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v37 - v8;
  v10 = a1[4];
  sub_100001F3C(a1, a1[3]);
  sub_10003D680();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100001E74(a1);
  }

  LOBYTE(v58[0]) = 0;
  v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v14 = v13;
  LOBYTE(v58[0]) = 1;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v50 = v16;
  v48 = v15;
  LOBYTE(v58[0]) = 2;
  v47 = KeyedDecodingContainer.decode(_:forKey:)();
  v49 = v17;
  LOBYTE(v58[0]) = 3;
  v43 = KeyedDecodingContainer.decode(_:forKey:)();
  v45 = v18;
  LOBYTE(v58[0]) = 4;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v44 = v20;
  v40 = v19;
  LOBYTE(v58[0]) = 5;
  v42 = 0;
  v21 = KeyedDecodingContainer.decode(_:forKey:)();
  v46 = 0;
  v22 = v21;
  v41 = v23;
  sub_10001A078(&qword_1000A7550, &qword_10007D428);
  LOBYTE(v51) = 6;
  sub_10003F788(&qword_1000A7898);
  v24 = v46;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v46 = v24;
  if (v24)
  {
    (*(v6 + 8))(v9, v5);
    v25 = 0;
    v26 = v42;
  }

  else
  {
    v39 = v58[0];
    sub_10001A078(&qword_1000A77F0, &qword_10007DD10);
    v59 = 7;
    sub_10003F7F4(&qword_1000A78A0, sub_10003F86C);
    v27 = v46;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v46 = v27;
    if (!v27)
    {
      (*(v6 + 8))(v9, v5);
      v42 = v60;
      *&v51 = v12;
      *(&v51 + 1) = v14;
      *&v52 = v48;
      v28 = v22;
      v38 = v22;
      v29 = v50;
      *(&v52 + 1) = v50;
      *&v53 = v47;
      v30 = v49;
      *(&v53 + 1) = v49;
      *&v54 = v43;
      v31 = v45;
      *(&v54 + 1) = v45;
      v32 = v44;
      *&v55 = v40;
      *(&v55 + 1) = v44;
      *&v56 = v28;
      v33 = v41;
      *(&v56 + 1) = v41;
      *&v57 = v39;
      *(&v57 + 1) = v60;
      sub_10003F8C0(&v51, v58);
      sub_100001E74(a1);
      v58[0] = v12;
      v58[1] = v14;
      v58[2] = v48;
      v58[3] = v29;
      v58[4] = v47;
      v58[5] = v30;
      v58[6] = v43;
      v58[7] = v31;
      v58[8] = v40;
      v58[9] = v32;
      v58[10] = v38;
      v58[11] = v33;
      v58[12] = v39;
      v58[13] = v42;
      result = sub_10003F8F8(v58);
      v34 = v56;
      a2[4] = v55;
      a2[5] = v34;
      a2[6] = v57;
      v35 = v52;
      *a2 = v51;
      a2[1] = v35;
      v36 = v54;
      a2[2] = v53;
      a2[3] = v36;
      return result;
    }

    (*(v6 + 8))(v9, v5);
    v25 = 1;
    v26 = v42;
  }

  sub_100001E74(a1);

  if (!v26)
  {
  }

  if (v25)
  {
  }

  return result;
}

BOOL _s8ndoagent18NDODWCoverageModelV12CoverageLinkV23__derived_struct_equalsySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v5 & 1) != 0))
  {
    v7 = a1[2];
    v8 = a1[3];
    v9 = a1[4];
    v10 = a1[5];
    v12 = a1[6];
    v11 = a1[7];
    v13 = a1[8];
    v14 = a2[2];
    v15 = a2[3];
    v16 = a2[4];
    v17 = a2[5];
    v19 = a2[6];
    v18 = a2[7];
    v20 = a2[8];
    return (v7 == v14 && v8 == v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) && (v9 == v16 && v10 == v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) && (sub_10003B4C0(v12, v19) & 1) != 0 && (v11 == v18 && v13 == v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
  }

  return result;
}

uint64_t _s8ndoagent18NDODWCoverageModelV12CoverageLinkV6ActionV23__derived_struct_equalsySbAG_AGtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (sub_10003B4C0(a1[4], a2[4]) & 1) == 0)
  {
    return 0;
  }

  if (a1[5] == a2[5] && a1[6] == a2[6])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

unint64_t sub_10003DFEC()
{
  result = qword_1000AB3C8;
  if (!qword_1000AB3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AB3C8);
  }

  return result;
}

unint64_t sub_10003E040()
{
  result = qword_1000A7810;
  if (!qword_1000A7810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7810);
  }

  return result;
}

uint64_t sub_10003E094@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10001A078(&qword_1000A7880, &qword_10007E5A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_100001F3C(a1, a1[3]);
  sub_10003DFEC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100001E74(a1);
  }

  LOBYTE(v30[0]) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v24 = v11;
  v39 = 1;
  sub_10003F6CC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v14 = *(&v35 + 1);
  v23 = v35;
  v15 = v36;
  v22 = *(&v37 + 1);
  v16 = v37;
  v21 = v38;
  v17 = v24;
  *&v25 = v24;
  *(&v25 + 1) = v13;
  v26 = v35;
  v27 = v36;
  v28 = v37;
  v29 = v38;
  sub_10003F720(&v25, v30);
  sub_100001E74(a1);
  v30[0] = v17;
  v30[1] = v13;
  v30[2] = v23;
  v30[3] = v14;
  v31 = v15;
  v32 = v16;
  v33 = v22;
  v34 = v21;
  result = sub_10003F758(v30);
  v19 = v28;
  *(a2 + 32) = v27;
  *(a2 + 48) = v19;
  *(a2 + 64) = v29;
  v20 = v26;
  *a2 = v25;
  *(a2 + 16) = v20;
  return result;
}

unint64_t sub_10003E344()
{
  result = qword_1000AB3D0;
  if (!qword_1000AB3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AB3D0);
  }

  return result;
}

uint64_t sub_10003E398(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10001EFA0(&qword_1000A7820, &qword_10007DD28);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10003E410()
{
  result = qword_1000A7830;
  if (!qword_1000A7830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7830);
  }

  return result;
}

uint64_t sub_10003E464(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746954627573 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73746966656E6562 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7265746F6F66 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_10003E5C0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_10001A078(&qword_1000A7868, &qword_10007E5A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  sub_100001F3C(a1, a1[3]);
  sub_10003E344();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100001E74(a1);
  }

  v34 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v28 = v11;
  v33 = 1;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v29 = v15;
  v27 = v14;
  sub_10001A078(&qword_1000A7820, &qword_10007DD28);
  v32 = 2;
  sub_10003E398(&qword_1000A7870, sub_10003F678);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v26 = v30;
  v31 = 3;
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  v18 = v17;
  v19 = *(v6 + 8);
  v25 = v16;
  v19(v9, v5);

  v20 = v29;

  v21 = v26;

  sub_100001E74(a1);

  v23 = v27;
  *a2 = v28;
  a2[1] = v13;
  a2[2] = v23;
  a2[3] = v20;
  v24 = v25;
  a2[4] = v21;
  a2[5] = v24;
  a2[6] = v18;
  return result;
}

unint64_t sub_10003E914()
{
  result = qword_1000AB3D8[0];
  if (!qword_1000AB3D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AB3D8);
  }

  return result;
}

uint64_t sub_10003E968(uint64_t *a1)
{
  v3 = sub_10001A078(&qword_1000A7860, &qword_10007E598);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_100001F3C(a1, a1[3]);
  sub_10003E914();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v12 = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_100001E74(a1);
  return v8;
}

unint64_t sub_10003EB50()
{
  result = qword_1000A7840;
  if (!qword_1000A7840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7840);
  }

  return result;
}

unint64_t sub_10003EBA8()
{
  result = qword_1000A7848;
  if (!qword_1000A7848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7848);
  }

  return result;
}

unint64_t sub_10003EC00()
{
  result = qword_1000A7850;
  if (!qword_1000A7850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7850);
  }

  return result;
}

unint64_t sub_10003EC58()
{
  result = qword_1000A7858;
  if (!qword_1000A7858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7858);
  }

  return result;
}

__n128 sub_10003ECAC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_10003ECD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_10003ED18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10003ED84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_10003EDCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10003EE2C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10003EE48(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_10003EE90(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 sub_10003EEEC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10003EEF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_10003EF40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NDODWCoverageModel.CoverageLink.Action.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NDODWCoverageModel.CoverageLink.Action.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NDODWCoverageModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NDODWCoverageModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10003F25C()
{
  result = qword_1000ABCE0[0];
  if (!qword_1000ABCE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000ABCE0);
  }

  return result;
}

unint64_t sub_10003F2B4()
{
  result = qword_1000ABEF0[0];
  if (!qword_1000ABEF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000ABEF0);
  }

  return result;
}

unint64_t sub_10003F30C()
{
  result = qword_1000AC100[0];
  if (!qword_1000AC100[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AC100);
  }

  return result;
}

unint64_t sub_10003F364()
{
  result = qword_1000AC310[0];
  if (!qword_1000AC310[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AC310);
  }

  return result;
}

unint64_t sub_10003F3BC()
{
  result = qword_1000AC420;
  if (!qword_1000AC420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AC420);
  }

  return result;
}

unint64_t sub_10003F414()
{
  result = qword_1000AC428[0];
  if (!qword_1000AC428[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AC428);
  }

  return result;
}

unint64_t sub_10003F46C()
{
  result = qword_1000AC4B0;
  if (!qword_1000AC4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AC4B0);
  }

  return result;
}

unint64_t sub_10003F4C4()
{
  result = qword_1000AC4B8[0];
  if (!qword_1000AC4B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AC4B8);
  }

  return result;
}

unint64_t sub_10003F51C()
{
  result = qword_1000AC540;
  if (!qword_1000AC540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AC540);
  }

  return result;
}

unint64_t sub_10003F574()
{
  result = qword_1000AC548[0];
  if (!qword_1000AC548[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AC548);
  }

  return result;
}

unint64_t sub_10003F5CC()
{
  result = qword_1000AC5D0;
  if (!qword_1000AC5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AC5D0);
  }

  return result;
}

unint64_t sub_10003F624()
{
  result = qword_1000AC5D8[0];
  if (!qword_1000AC5D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AC5D8);
  }

  return result;
}

unint64_t sub_10003F678()
{
  result = qword_1000A7878;
  if (!qword_1000A7878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7878);
  }

  return result;
}

unint64_t sub_10003F6CC()
{
  result = qword_1000A7888;
  if (!qword_1000A7888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7888);
  }

  return result;
}

uint64_t sub_10003F788(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10001EFA0(&qword_1000A7550, &qword_10007D428);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10003F7F4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10001EFA0(&qword_1000A77F0, &qword_10007DD10);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10003F86C()
{
  result = qword_1000A78A8;
  if (!qword_1000A78A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A78A8);
  }

  return result;
}

uint64_t NDOAppleCareNotificationsHandler.performCheck(in:withCompletion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a2;
  v7 = sub_10001A078(&qword_1000A78B0, qword_10007E5C0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17[-1] - v9;
  v11 = type metadata accessor for NotificationData();
  v12 = (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*((swift_isaMask & *v4) + 0x90))(v17, v12);
  sub_100001F3C(v17, v17[3]);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a3;
  v14[4] = a4;

  sub_100002134(a3);
  dispatch thunk of NDODeviceCheckInHandler.checkIn(with:trigger:completion:)();

  sub_1000035B8(v10, &qword_1000A78B0, qword_10007E5C0);

  return sub_100001E74(v17);
}

uint64_t sub_10003FC94()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ndoagent32NDOAppleCareNotificationsHandler_checkInScheduler);
  v2 = *(v0 + OBJC_IVAR____TtC8ndoagent32NDOAppleCareNotificationsHandler_checkInScheduler + 8);

  return v1;
}

uint64_t sub_10003FCDC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_100001E10(v2 + v4, a2);
}

uint64_t sub_10003FD50(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  sub_100001E74((v3 + v6));
  a3(a1, v3 + v6);
  return swift_endAccess();
}

uint64_t sub_10003FE20()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ndoagent32NDOAppleCareNotificationsHandler_getCheckInRetryInterval);
  v2 = *(v0 + OBJC_IVAR____TtC8ndoagent32NDOAppleCareNotificationsHandler_getCheckInRetryInterval + 8);

  return v1;
}

uint64_t sub_10003FE5C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ndoagent32NDOAppleCareNotificationsHandler_handleAction);
  v2 = *(v0 + OBJC_IVAR____TtC8ndoagent32NDOAppleCareNotificationsHandler_handleAction + 8);

  return v1;
}

uint64_t sub_10003FEB4()
{
  v0 = [objc_opt_self() primaryAccountAltDSID];
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

id sub_10003FF24(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  v20 = objc_allocWithZone(v13);
  sub_100001E10(a1, &v20[OBJC_IVAR____TtC8ndoagent32NDOAppleCareNotificationsHandler_checkInHandler]);
  sub_100001E10(a2, &v20[OBJC_IVAR____TtC8ndoagent32NDOAppleCareNotificationsHandler_ackHandler]);
  v21 = &v20[OBJC_IVAR____TtC8ndoagent32NDOAppleCareNotificationsHandler_handleAction];
  *v21 = a3;
  *(v21 + 1) = a4;
  v22 = &v20[OBJC_IVAR____TtC8ndoagent32NDOAppleCareNotificationsHandler_primaryAccountAltDSIDProvider];
  *v22 = a5;
  *(v22 + 1) = a6;
  v23 = &v20[OBJC_IVAR____TtC8ndoagent32NDOAppleCareNotificationsHandler_currentDateProvider];
  *v23 = a7;
  *(v23 + 1) = a8;
  v24 = &v20[OBJC_IVAR____TtC8ndoagent32NDOAppleCareNotificationsHandler_checkInScheduler];
  *v24 = a9;
  *(v24 + 1) = a10;
  v25 = &v20[OBJC_IVAR____TtC8ndoagent32NDOAppleCareNotificationsHandler_getCheckInRetryInterval];
  *v25 = a11;
  *(v25 + 1) = a12;
  v30.receiver = v20;
  v30.super_class = v13;
  v26 = objc_msgSendSuper2(&v30, "init");
  sub_100001E74(a2);
  sub_100001E74(a1);
  return v26;
}

id sub_100040060(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100001E10(a1, &v12[OBJC_IVAR____TtC8ndoagent32NDOAppleCareNotificationsHandler_checkInHandler]);
  sub_100001E10(a2, &v12[OBJC_IVAR____TtC8ndoagent32NDOAppleCareNotificationsHandler_ackHandler]);
  v20 = &v12[OBJC_IVAR____TtC8ndoagent32NDOAppleCareNotificationsHandler_handleAction];
  *v20 = a3;
  *(v20 + 1) = a4;
  v21 = &v12[OBJC_IVAR____TtC8ndoagent32NDOAppleCareNotificationsHandler_primaryAccountAltDSIDProvider];
  *v21 = a5;
  *(v21 + 1) = a6;
  v22 = &v12[OBJC_IVAR____TtC8ndoagent32NDOAppleCareNotificationsHandler_currentDateProvider];
  *v22 = a7;
  *(v22 + 1) = a8;
  v23 = &v12[OBJC_IVAR____TtC8ndoagent32NDOAppleCareNotificationsHandler_checkInScheduler];
  *v23 = a9;
  *(v23 + 1) = a10;
  v24 = &v12[OBJC_IVAR____TtC8ndoagent32NDOAppleCareNotificationsHandler_getCheckInRetryInterval];
  *v24 = a11;
  *(v24 + 1) = a12;
  v28.receiver = v12;
  v28.super_class = type metadata accessor for NDOAppleCareNotificationsHandler();
  v25 = objc_msgSendSuper2(&v28, "init");
  sub_100001E74(a2);
  sub_100001E74(a1);
  return v25;
}

uint64_t sub_100040204(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  v107 = a4;
  v112 = a3;
  v113 = a1;
  v4 = sub_10001A078(&qword_1000A7970, &unk_10007AEE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v105 = &v98 - v6;
  v7 = sub_10001A078(&qword_1000A7920, &qword_10007AE70);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v106 = &v98 - v9;
  v10 = type metadata accessor for Logger();
  v114 = *(v10 - 8);
  v11 = *(v114 + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v98 - v16;
  __chkstk_darwin(v15);
  v108 = &v98 - v18;
  v111 = type metadata accessor for CheckInData();
  v109 = *(v111 - 8);
  v19 = v109[8];
  v20 = __chkstk_darwin(v111);
  v104 = &v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v20);
  v23 = &v98 - v22;
  __chkstk_darwin(v21);
  v110 = &v98 - v24;
  v25 = sub_10001A078(&qword_1000A7978, &unk_10007E670);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25);
  v29 = &v98 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v27);
  v32 = &v98 - v31;
  __chkstk_darwin(v30);
  v34 = (&v98 - v33);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v53 = sub_100049C1C();
    (*(v114 + 16))(v14, v53, v10);
    sub_10001CB74(v113, v32, &qword_1000A7978, &unk_10007E670);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v115 = v57;
      *v56 = 136315138;
      v113 = v10;
      sub_10001CB74(v32, v29, &qword_1000A7978, &unk_10007E670);
      v58 = String.init<A>(describing:)();
      v60 = v59;
      sub_1000035B8(v32, &qword_1000A7978, &unk_10007E670);
      v61 = sub_10001FEC8(v58, v60, &v115);

      *(v56 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v54, v55, "Push handler deallocated. Dropping check in result %s", v56, 0xCu);
      sub_100001E74(v57);

      return (*(v114 + 8))(v14, v113);
    }

    else
    {

      sub_1000035B8(v32, &qword_1000A7978, &unk_10007E670);
      return (*(v114 + 8))(v14, v10);
    }
  }

  v103 = Strong;
  v36 = v114;
  sub_10001CB74(v113, v34, &qword_1000A7978, &unk_10007E670);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v37 = *v34;
    v38 = sub_100049C1C();
    (*(v36 + 16))(v17, v38, v10);
    swift_errorRetain();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      swift_errorRetain();
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v41 + 4) = v43;
      *v42 = v43;
      _os_log_impl(&_mh_execute_header, v39, v40, "DeviceCheckIn failed. Error: %@", v41, 0xCu);
      sub_1000035B8(v42, &qword_1000A6F40, &qword_10007E690);
    }

    (*(v36 + 8))(v17, v10);
    v115 = v37;
    swift_errorRetain();
    sub_10001A078(&unk_1000A7980, &qword_10007D9E0);
    v44 = type metadata accessor for NDOErrors();
    v45 = v105;
    v46 = swift_dynamicCast();
    v47 = *(*(v44 - 8) + 56);
    if (v46)
    {
      v48 = *(v44 - 8);
      v47(v45, 0, 1, v44);
      v49 = (*(v48 + 88))(v45, v44);
      v50 = enum case for NDOErrors.checkInDisabled(_:);
      v51 = (*(v48 + 8))(v45, v44);
      if (v49 == v50)
      {
        if (v112)
        {
          v112(v51);
        }
      }
    }

    else
    {
      v47(v45, 1, 1, v44);
      sub_1000035B8(v45, &qword_1000A7970, &unk_10007AEE0);
    }

    v78 = type metadata accessor for TaskPriority();
    v79 = v106;
    (*(*(v78 - 8) + 56))(v106, 1, 1, v78);
    v80 = swift_allocObject();
    v80[2] = 0;
    v80[3] = 0;
    v80[4] = v103;
    v81 = v112;
    v82 = v107;
    v80[5] = v112;
    v80[6] = v82;
    sub_100002134(v81);
    sub_100041174(0, 0, v79, &unk_10007E688, v80);
  }

  v63 = v109;
  v62 = v110;
  v64 = v109[4];
  v65 = v34;
  v66 = v111;
  v105 = (v109 + 4);
  v102 = v64;
  v64(v110, v65, v111);
  v67 = sub_100049C1C();
  (*(v36 + 16))(v108, v67, v10);
  v101 = v63[2];
  v101(v23, v62, v66);
  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v115 = v98;
    *v70 = 136315138;
    CheckInData.actions.getter();
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action();
    v71 = Array.description.getter();
    v113 = v10;
    v72 = v36;
    v74 = v73;

    v75 = v109[1];
    v99 = (v109 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v100 = v75;
    v75(v23, v111);
    v76 = v71;
    v66 = v111;
    v77 = sub_10001FEC8(v76, v74, &v115);

    *(v70 + 4) = v77;
    _os_log_impl(&_mh_execute_header, v68, v69, "DeviceCheckIn succeeded. Actions: %s", v70, 0xCu);
    sub_100001E74(v98);

    v63 = v109;

    (*(v72 + 8))(v108, v113);
  }

  else
  {

    v83 = v63[1];
    v99 = (v63 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v100 = v83;
    v83(v23, v66);
    (*(v36 + 8))(v108, v10);
  }

  v84 = type metadata accessor for TaskPriority();
  v85 = v106;
  (*(*(v84 - 8) + 56))(v106, 1, 1, v84);
  v86 = v104;
  v87 = v110;
  v101(v104, v110, v66);
  v88 = (*(v63 + 80) + 40) & ~*(v63 + 80);
  v89 = (v19 + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
  v90 = swift_allocObject();
  *(v90 + 2) = 0;
  *(v90 + 3) = 0;
  v91 = v102;
  v92 = v103;
  *(v90 + 4) = v103;
  v91(&v90[v88], v86, v66);
  v93 = &v90[v89];
  v94 = v66;
  v95 = v112;
  v96 = v107;
  *v93 = v112;
  v93[1] = v96;
  v97 = v92;
  sub_100002134(v95);
  sub_100041174(0, 0, v85, &unk_10007E6A0, v90);

  return v100(v87, v94);
}

uint64_t sub_100040D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_100040DA0, 0, 0);
}

uint64_t sub_100040DA0()
{
  v1 = v0[3];
  v2 = CheckInData.nextCheckInEpoch.getter();
  v4 = v3;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_100040E50;
  v6 = v0[2];

  return sub_100041678(v2, v4 & 1);
}

uint64_t sub_100040E50()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return _swift_task_switch(sub_100040F4C, 0, 0);
}

uint64_t sub_100040F4C()
{
  v1 = v0[3];
  v2 = CheckInData.actions.getter();
  v0[7] = v2;
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_100040FF0;
  v4 = v0[2];

  return sub_100042088(v2);
}

uint64_t sub_100040FF0()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return _swift_task_switch(sub_100041108, 0, 0);
}

uint64_t sub_100041108()
{
  v1 = v0[4];
  if (v1)
  {
    v2 = v0[5];
    v1();
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_100041174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10001A078(&qword_1000A7920, &qword_10007AE70);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10001CB74(a3, v27 - v11, &qword_1000A7920, &qword_10007AE70);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1000035B8(v12, &qword_1000A7920, &qword_10007AE70);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1000035B8(a3, &qword_1000A7920, &qword_10007AE70);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000035B8(a3, &qword_1000A7920, &qword_10007AE70);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_100041474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = sub_100041510;

  return sub_100041678(0, 1);
}

uint64_t sub_100041510()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return _swift_task_switch(sub_10004160C, 0, 0);
}

uint64_t sub_10004160C()
{
  v1 = v0[2];
  if (v1)
  {
    v2 = v0[3];
    v1();
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_100041678(uint64_t a1, char a2)
{
  v3[2] = v2;
  v6 = type metadata accessor for Logger();
  v3[3] = v6;
  v7 = *(v6 - 8);
  v3[4] = v7;
  v8 = *(v7 + 64) + 15;
  v3[5] = swift_task_alloc();
  v9 = type metadata accessor for Date();
  v3[6] = v9;
  v10 = *(v9 - 8);
  v3[7] = v10;
  v11 = *(v10 + 64) + 15;
  v3[8] = swift_task_alloc();
  v12 = swift_task_alloc();
  v3[9] = v12;
  v13 = swift_task_alloc();
  v3[10] = v13;
  *v13 = v3;
  v13[1] = sub_1000417F4;

  return sub_100041B68(v12, a1, a2 & 1, v2);
}

uint64_t sub_1000417F4()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return _swift_task_switch(sub_1000418F0, 0, 0);
}

uint64_t sub_1000418F0()
{
  v37 = v0;
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];
  v8 = sub_100049C1C();
  (*(v6 + 16))(v5, v8, v7);
  (*(v4 + 16))(v1, v2, v3);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[7];
  v12 = v0[8];
  v14 = v0[5];
  v15 = v0[6];
  v17 = v0[3];
  v16 = v0[4];
  if (v11)
  {
    v33 = v10;
    v18 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v36 = v32;
    *v18 = 136315138;
    sub_1000456DC();
    v34 = v14;
    v35 = v17;
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    log = v9;
    v22 = *(v13 + 8);
    v22(v12, v15);
    v23 = sub_10001FEC8(v19, v21, &v36);

    *(v18 + 4) = v23;
    _os_log_impl(&_mh_execute_header, log, v33, "Scheduling next checkIn attempt on %s", v18, 0xCu);
    sub_100001E74(v32);

    (*(v16 + 8))(v34, v35);
  }

  else
  {

    v22 = *(v13 + 8);
    v22(v12, v15);
    (*(v16 + 8))(v14, v17);
  }

  v24 = v0[9];
  v26 = v0[5];
  v25 = v0[6];
  v27 = v0[2] + OBJC_IVAR____TtC8ndoagent32NDOAppleCareNotificationsHandler_checkInScheduler;
  v28 = *(v27 + 8);
  (*v27)(v24);
  v22(v24, v25);

  v29 = v0[1];

  return v29();
}

uint64_t sub_100041B68(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = a4;
  *(v4 + 104) = a3;
  *(v4 + 16) = a1;
  v5 = type metadata accessor for Logger();
  *(v4 + 40) = v5;
  v6 = *(v5 - 8);
  *(v4 + 48) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 56) = swift_task_alloc();
  v8 = type metadata accessor for Date();
  *(v4 + 64) = v8;
  v9 = *(v8 - 8);
  *(v4 + 72) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_100041C8C, 0, 0);
}

uint64_t sub_100041C8C()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 80);
    v2 = *(v0 + 32);
    v3 = *(v2 + OBJC_IVAR____TtC8ndoagent32NDOAppleCareNotificationsHandler_currentDateProvider + 8);
    (*(v2 + OBJC_IVAR____TtC8ndoagent32NDOAppleCareNotificationsHandler_currentDateProvider))();
    v4 = *(v2 + OBJC_IVAR____TtC8ndoagent32NDOAppleCareNotificationsHandler_getCheckInRetryInterval + 8);
    v24 = (*(v2 + OBJC_IVAR____TtC8ndoagent32NDOAppleCareNotificationsHandler_getCheckInRetryInterval) + **(v2 + OBJC_IVAR____TtC8ndoagent32NDOAppleCareNotificationsHandler_getCheckInRetryInterval));
    v5 = *(*(v2 + OBJC_IVAR____TtC8ndoagent32NDOAppleCareNotificationsHandler_getCheckInRetryInterval) + 4);
    v6 = swift_task_alloc();
    *(v0 + 88) = v6;
    *v6 = v0;
    v6[1] = sub_100041EE8;

    return v24();
  }

  else
  {
    v9 = *(v0 + 48);
    v8 = *(v0 + 56);
    v10 = *(v0 + 40);
    v11 = sub_100049C1C();
    (*(v9 + 16))(v8, v11, v10);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 24);
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      *(v15 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v12, v13, "Scheduling next check in for epoch %lld", v15, 0xCu);
    }

    v17 = *(v0 + 48);
    v16 = *(v0 + 56);
    v18 = *(v0 + 40);
    v19 = *(v0 + 16);
    v20 = *(v0 + 24);

    (*(v17 + 8))(v16, v18);
    Date.init(timeIntervalSince1970:)();
    v21 = *(v0 + 80);
    v22 = *(v0 + 56);

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_100041EE8(double a1)
{
  v2 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = a1;

  return _swift_task_switch(sub_100041FE8, 0, 0);
}

uint64_t sub_100041FE8()
{
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  v5 = v0[2];
  Date.addingTimeInterval(_:)();
  (*(v3 + 8))(v2, v4);
  v6 = v0[10];
  v7 = v0[7];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100042088(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v3 = type metadata accessor for Logger();
  v2[15] = v3;
  v4 = *(v3 - 8);
  v2[16] = v4;
  v5 = *(v4 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_100042154, 0, 0);
}

uint64_t sub_100042154()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[13];
  v5 = sub_100049C1C();
  v0[19] = v5;
  v6 = *(v3 + 16);
  v0[20] = v6;
  v0[21] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v2);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[18];
  v11 = v0[15];
  v12 = v0[16];
  if (v9)
  {
    v13 = v0[13];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v30 = v15;
    *v14 = 136315138;
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action();
    v16 = Array.description.getter();
    v18 = sub_10001FEC8(v16, v17, &v30);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Handling checkIn actions: %s", v14, 0xCu);
    sub_100001E74(v15);
  }

  v19 = *(v12 + 8);
  v19(v10, v11);
  v0[22] = v19;
  v21 = v0[13];
  v20 = v0[14];
  v22 = swift_allocObject();
  v0[23] = v22;
  *(v22 + 16) = &_swiftEmptyArrayStorage;
  v23 = OBJC_IVAR____TtC8ndoagent32NDOAppleCareNotificationsHandler_handleAction;
  v24 = swift_task_alloc();
  v25 = *(v20 + v23);
  v0[24] = v24;
  *(v24 + 16) = v21;
  *(v24 + 24) = v25;
  *(v24 + 40) = v22;
  v26 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v27 = swift_task_alloc();
  v0[25] = v27;
  *v27 = v0;
  v27[1] = sub_1000423D8;

  return withTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_1000423D8()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);
  v4 = *v0;

  return _swift_task_switch(sub_1000424F0, 0, 0);
}

uint64_t sub_1000424F0()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);
  (*(v0 + 160))(*(v0 + 136), *(v0 + 152), *(v0 + 120));

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 184);
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    swift_beginAccess();
    *(v6 + 4) = *(*(v5 + 16) + 16);

    _os_log_impl(&_mh_execute_header, v3, v4, "Calling ack with %ld acks from check in", v6, 0xCu);
  }

  else
  {
    v7 = *(v0 + 184);
  }

  v8 = *(v0 + 184);
  v9 = *(v0 + 112);
  v10 = *(v0 + 128) + 8;
  v11 = (*(v0 + 176))(*(v0 + 136), *(v0 + 120));
  (*((swift_isaMask & *v9) + 0xA8))(v11);
  v12 = *(v0 + 40);
  v13 = *(v0 + 48);
  sub_100001F3C((v0 + 16), v12);
  swift_beginAccess();
  v14 = *(v8 + 16);
  *(v0 + 208) = v14;
  v15 = async function pointer to dispatch thunk of AckHandler.ack(data:)[1];

  v16 = swift_task_alloc();
  *(v0 + 216) = v16;
  *v16 = v0;
  v16[1] = sub_100042700;

  return dispatch thunk of AckHandler.ack(data:)(v14, v12, v13);
}

uint64_t sub_100042700()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 208);
  v4 = *v0;

  return _swift_task_switch(sub_100042818, 0, 0);
}

uint64_t sub_100042818()
{
  v1 = v0[23];
  v3 = v0[17];
  v2 = v0[18];
  sub_100001E74(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000428A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[10] = a3;
  v6[11] = a4;
  v6[9] = a2;
  v7 = *(*(sub_10001A078(&qword_1000A7920, &qword_10007AE70) - 8) + 64) + 15;
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v6[16] = v8;
  v9 = *(v8 - 8);
  v6[17] = v9;
  v10 = *(v9 + 64) + 15;
  v6[18] = swift_task_alloc();
  v11 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action();
  v6[19] = v11;
  v12 = *(v11 - 8);
  v6[20] = v12;
  v6[21] = *(v12 + 64);
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();

  return _swift_task_switch(sub_100042A28, 0, 0);
}

uint64_t sub_100042A28()
{
  v75 = v0;
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 160);
    v4 = *(v0 + 136);
    v6 = *(v3 + 16);
    v3 += 16;
    v5 = v6;
    v7 = (*(v3 + 64) + 32) & ~*(v3 + 64);
    v8 = v1 + v7;
    v62 = (v4 + 16);
    v73 = (v3 - 8);
    v61 = (v4 + 8);
    v59 = *(v3 + 56);
    v60 = **(v0 + 72);
    v63 = v7;
    v58 = (*(v0 + 168) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    v57 = (v3 + 16);
    v64 = v6;
    do
    {
      v71 = v8;
      v72 = v2;
      v14 = *(v0 + 184);
      v13 = *(v0 + 192);
      v16 = *(v0 + 144);
      v15 = *(v0 + 152);
      v17 = *(v0 + 128);
      v5(v13);
      v18 = sub_100049C1C();
      (*v62)(v16, v18, v17);
      (v5)(v14, v13, v15);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      v21 = os_log_type_enabled(v19, v20);
      v22 = *(v0 + 184);
      if (v21)
      {
        v23 = *(v0 + 176);
        v24 = *(v0 + 152);
        v66 = *(v0 + 128);
        v68 = *(v0 + 144);
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v74 = v26;
        *v25 = 136315138;
        (v5)(v23, v22, v24);
        v27 = String.init<A>(describing:)();
        v29 = v28;
        v70 = *v73;
        (*v73)(v22, v24);
        v30 = sub_10001FEC8(v27, v29, &v74);

        *(v25 + 4) = v30;
        _os_log_impl(&_mh_execute_header, v19, v20, "Adding action %s to group", v25, 0xCu);
        sub_100001E74(v26);

        (*v61)(v68, v66);
      }

      else
      {
        v32 = *(v0 + 144);
        v31 = *(v0 + 152);
        v33 = *(v0 + 128);

        v70 = *v73;
        (*v73)(v22, v31);
        (*v61)(v32, v33);
      }

      v34 = *(v0 + 192);
      v35 = *(v0 + 176);
      v36 = *(v0 + 152);
      v37 = *(v0 + 120);
      v69 = *(v0 + 112);
      v38 = *(v0 + 96);
      v39 = *(v0 + 104);
      v65 = v37;
      v67 = *(v0 + 88);
      v40 = type metadata accessor for TaskPriority();
      v41 = *(v40 - 8);
      (*(v41 + 56))(v37, 1, 1, v40);
      (v5)(v35, v34, v36);
      v42 = swift_allocObject();
      *(v42 + 16) = 0;
      v43 = (v42 + 16);
      *(v42 + 24) = 0;
      (*v57)(v42 + v63, v35, v36);
      v44 = (v42 + v58);
      *v44 = v67;
      v44[1] = v38;
      *(v42 + ((v58 + 23) & 0xFFFFFFFFFFFFFFF8)) = v39;
      sub_10001CB74(v65, v69, &qword_1000A7920, &qword_10007AE70);
      v45 = (*(v41 + 48))(v69, 1, v40);

      v46 = *(v0 + 112);
      if (v45 == 1)
      {
        sub_1000035B8(*(v0 + 112), &qword_1000A7920, &qword_10007AE70);
        if (*v43)
        {
          goto LABEL_12;
        }
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v41 + 8))(v46, v40);
        if (*v43)
        {
LABEL_12:
          v49 = *(v42 + 24);
          swift_getObjectType();
          swift_unknownObjectRetain();
          v47 = dispatch thunk of Actor.unownedExecutor.getter();
          v48 = v50;
          swift_unknownObjectRelease();
          goto LABEL_13;
        }
      }

      v47 = 0;
      v48 = 0;
LABEL_13:
      v51 = swift_allocObject();
      *(v51 + 16) = &unk_10007E638;
      *(v51 + 24) = v42;

      if (v48 | v47)
      {
        v9 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v47;
        *(v0 + 40) = v48;
      }

      else
      {
        v9 = 0;
      }

      v10 = *(v0 + 192);
      v11 = *(v0 + 152);
      v12 = *(v0 + 120);
      *(v0 + 48) = 1;
      *(v0 + 56) = v9;
      *(v0 + 64) = v60;
      swift_task_create();

      sub_1000035B8(v12, &qword_1000A7920, &qword_10007AE70);
      v70(v10, v11);
      v8 = v71 + v59;
      v2 = v72 - 1;
      v5 = v64;
    }

    while (v72 != 1);
  }

  v52 = async function pointer to TaskGroup.awaitAllRemainingTasks(isolation:)[1];
  v53 = swift_task_alloc();
  *(v0 + 200) = v53;
  v54 = sub_10001A078(&qword_1000A7928, &qword_10007E648);
  *v53 = v0;
  v53[1] = sub_100043050;
  v55 = *(v0 + 72);

  return TaskGroup.awaitAllRemainingTasks(isolation:)(0, 0, v54);
}

uint64_t sub_100043050()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 184);
  v4 = *(*v0 + 176);
  v5 = *(*v0 + 144);
  v6 = *(*v0 + 120);
  v7 = *(*v0 + 112);
  v10 = *v0;

  v8 = *(v10 + 8);

  return v8();
}

uint64_t sub_1000431FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return _swift_task_switch(sub_100043224, 0, 0);
}

uint64_t sub_100043224()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 40);
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 32) = v2;
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_10004331C;
  v5 = *(v0 + 16);

  return withCheckedContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000018, 0x800000010008C140, sub_1000455B8, v1, &type metadata for () + 8);
}

uint64_t sub_10004331C()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_10004342C(uint64_t a1, _BYTE *a2, void (*a3)(uint64_t, uint64_t (*)(uint64_t a1, char a2), uint64_t), uint64_t a4, uint64_t a5)
{
  v58 = a5;
  v60 = a4;
  v61 = a3;
  v53 = a1;
  v6 = sub_10001A078(&qword_1000A7930, &qword_10007E650);
  v56 = *(v6 - 8);
  v57 = v6;
  v54 = *(v56 + 64);
  __chkstk_darwin(v6);
  v55 = &v46[-v7];
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v46[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v52 = v12;
  __chkstk_darwin(v11);
  v15 = &v46[-v14];
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v46[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_100049C1C();
  (*(v17 + 16))(v20, v21, v16);
  v62 = v9;
  v22 = *(v9 + 16);
  v59 = a2;
  v23 = a2;
  v24 = v22;
  v22(v15, v23, v8);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v47 = v26;
    v28 = v27;
    v48 = swift_slowAlloc();
    v63 = v48;
    *v28 = 136315138;
    v24(v13, v15, v8);
    v29 = String.init<A>(describing:)();
    v49 = v16;
    v50 = v24;
    v30 = v29;
    v31 = v13;
    v32 = v8;
    v34 = v33;
    (*(v62 + 8))(v15, v32);
    v35 = sub_10001FEC8(v30, v34, &v63);
    v8 = v32;
    v13 = v31;

    *(v28 + 4) = v35;
    v24 = v50;
    _os_log_impl(&_mh_execute_header, v25, v47, "Handling action %s", v28, 0xCu);
    sub_100001E74(v48);

    (*(v17 + 8))(v20, v49);
  }

  else
  {

    (*(v62 + 8))(v15, v8);
    (*(v17 + 8))(v20, v16);
  }

  v51 = v8;
  v36 = v59;
  v24(v13, v59, v8);
  v38 = v55;
  v37 = v56;
  v39 = v57;
  (*(v56 + 16))(v55, v53, v57);
  v40 = v62;
  v41 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v42 = (v52 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = (*(v37 + 80) + v42 + 8) & ~*(v37 + 80);
  v44 = swift_allocObject();
  (*(v40 + 32))(v44 + v41, v13, v51);
  *(v44 + v42) = v58;
  (*(v37 + 32))(v44 + v43, v38, v39);

  v61(v36, sub_1000455C4, v44);
}

uint64_t sub_1000438EC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v82 = a5;
  v84 = a4;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData();
  v74 = *(v8 - 8);
  v75 = v8;
  v9 = *(v74 + 64);
  __chkstk_darwin(v8);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ActionType();
  v69 = *(v12 - 8);
  v70 = v12;
  v13 = *(v69 + 64);
  __chkstk_darwin(v12);
  v68 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action();
  v85 = *(v81 - 8);
  v15 = *(v85 + 64);
  v16 = __chkstk_darwin(v81);
  v66 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v76 = &v65 - v18;
  v19 = type metadata accessor for Logger();
  v20 = *(v19 - 8);
  v21 = v20[8];
  v22 = __chkstk_darwin(v19);
  v67 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v79 = &v65 - v25;
  __chkstk_darwin(v24);
  v27 = &v65 - v26;
  v28 = sub_100049C1C();
  v29 = v20[2];
  v77 = v28;
  v78 = v29;
  (v29)(v27);
  v71 = a2;
  v30 = a2 & 1;
  sub_1000456C4(a1, a2 & 1);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  sub_1000456D0(a1, v30);
  v33 = os_log_type_enabled(v31, v32);
  v72 = a1;
  v73 = v11;
  v83 = a3;
  v80 = v20;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v86[0] = v35;
    v86[1] = a1;
    *v34 = 136315138;
    v87 = v30;
    sub_1000456C4(a1, v30);
    sub_10001A078(&qword_1000A7938, &qword_10007E658);
    v36 = String.init<A>(describing:)();
    v38 = sub_10001FEC8(v36, v37, v86);

    *(v34 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v31, v32, "Action handler result: %s", v34, 0xCu);
    sub_100001E74(v35);

    a3 = v83;
  }

  v39 = v20[1];
  v39(v27, v19);
  v40 = v19;
  v41 = Com_Apple_Sse_Ocean_Ndo_Api_Action.requiresAck.getter();
  v42 = (v85 + 16);
  v43 = v81;
  v44 = v76;
  if (v41)
  {
    v78(v79, v77, v40);
    (*v42)(v44, a3, v43);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 134217984;
      v48 = v44;
      v49 = v68;
      Com_Apple_Sse_Ocean_Ndo_Api_Action.actionType.getter();
      v50 = Com_Apple_Sse_Ocean_Ndo_Api_ActionType.rawValue.getter();
      (*(v69 + 8))(v49, v70);
      (*(v85 + 8))(v48, v43);
      *(v47 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v45, v46, "%ld requires ack, adding to pending acks", v47, 0xCu);
    }

    else
    {
      (*(v85 + 8))(v44, v43);
    }

    v58 = v73;

    v39(v79, v40);
    Com_Apple_Sse_Ocean_Ndo_Api_Action.ackData(for:)();
    v59 = v84;
    swift_beginAccess();
    v60 = *(v59 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v59 + 16) = v60;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v60 = sub_1000442EC(0, v60[2] + 1, 1, v60);
      *(v84 + 16) = v60;
    }

    v63 = v60[2];
    v62 = v60[3];
    if (v63 >= v62 >> 1)
    {
      v60 = sub_1000442EC(v62 > 1, v63 + 1, 1, v60);
    }

    v60[2] = v63 + 1;
    (*(v74 + 32))(v60 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v63, v58, v75);
    *(v84 + 16) = v60;
    swift_endAccess();
  }

  else
  {
    v51 = v67;
    v78(v67, v77, v40);
    v52 = v66;
    (*v42)(v66, a3, v43);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 134217984;
      v56 = v68;
      Com_Apple_Sse_Ocean_Ndo_Api_Action.actionType.getter();
      v57 = Com_Apple_Sse_Ocean_Ndo_Api_ActionType.rawValue.getter();
      (*(v69 + 8))(v56, v70);
      (*(v85 + 8))(v52, v43);
      *(v55 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v53, v54, "%ld does not require an ack", v55, 0xCu);
    }

    else
    {
      (*(v85 + 8))(v52, v43);
    }

    v39(v51, v40);
  }

  sub_10001A078(&qword_1000A7930, &qword_10007E650);
  return CheckedContinuation.resume(returning:)();
}

id NDOAppleCareNotificationsHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NDOAppleCareNotificationsHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000441F4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100045B00;

  return v7(a1);
}

size_t sub_1000442EC(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10001A078(&unk_1000A7940, &qword_10007E660);
  v10 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData() - 8);
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
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData() - 8);
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

unint64_t sub_1000444C4(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100044508(a1, v4);
}

unint64_t sub_100044508(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10004582C(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100045744(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t _s8ndoagent32NDOAppleCareNotificationsHandlerC18handleNotification_8forTopicySDys11AnyHashableVypG_SStF_0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001A078(&qword_1000A78B0, qword_10007E5C0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v86 = &v80 - v6;
  v7 = type metadata accessor for NotificationData();
  v85 = *(v7 - 8);
  v8 = *(v85 + 64);
  __chkstk_darwin(v7);
  v84 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = __chkstk_darwin(v10);
  v15 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v89 = &v80 - v17;
  v18 = __chkstk_darwin(v16);
  v88 = &v80 - v19;
  v20 = __chkstk_darwin(v18);
  v87 = &v80 - v21;
  __chkstk_darwin(v20);
  v23 = &v80 - v22;
  v24 = sub_100049C1C();
  v25 = v11[2];
  v91 = v24;
  v92 = v25;
  v93 = v11 + 2;
  (v25)(v23);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  v28 = os_log_type_enabled(v26, v27);
  v90 = a1;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v83 = v10;
    v30 = v29;
    v31 = swift_slowAlloc();
    v82 = v15;
    v32 = v31;
    *&v96 = v31;
    *v30 = 136315138;
    v33 = Dictionary.description.getter();
    v35 = sub_10001FEC8(v33, v34, &v96);

    *(v30 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v26, v27, "Processing notification:%s", v30, 0xCu);
    sub_100001E74(v32);
    v15 = v82;

    v10 = v83;
  }

  v36 = v11[1];
  v37 = v36(v23, v10);
  v38 = *(v2 + OBJC_IVAR____TtC8ndoagent32NDOAppleCareNotificationsHandler_primaryAccountAltDSIDProvider + 8);
  v39 = (*(v2 + OBJC_IVAR____TtC8ndoagent32NDOAppleCareNotificationsHandler_primaryAccountAltDSIDProvider))(v37);
  if (!v40)
  {
    v92(v15, v91, v10);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "No primary icloud account alt dsid. Not handling notification", v53, 2u);
    }

    v50 = v15;
    goto LABEL_18;
  }

  v41 = v39;
  v42 = v40;
  v94 = 0x6469736461;
  v95 = 0xE500000000000000;
  AnyHashable.init<A>(_:)();
  v43 = v90;
  if (!*(v90 + 16) || (v44 = sub_1000444C4(&v96), (v45 & 1) == 0))
  {
    sub_100045744(&v96);
    goto LABEL_11;
  }

  sub_100020798(*(v43 + 56) + 32 * v44, &v98);
  sub_100045744(&v96);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:

    goto LABEL_12;
  }

  if (v41 != v94 || v42 != v95)
  {
    v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v56)
    {
      goto LABEL_21;
    }

LABEL_12:
    v46 = v89;
    v92(v89, v91, v10);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "altDsid in notification does not match primary account. Not handling notification", v49, 2u);
    }

    v50 = v46;
    goto LABEL_18;
  }

LABEL_21:
  v94 = 0x61746144707061;
  v95 = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(v43 + 16) || (v57 = sub_1000444C4(&v96), (v58 & 1) == 0))
  {
    sub_100045744(&v96);
    goto LABEL_27;
  }

  sub_100020798(*(v43 + 56) + 32 * v57, &v98);
  sub_100045744(&v96);
  sub_100045798();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_27:
    v62 = v88;
    v92(v88, v91, v10);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&_mh_execute_header, v63, v64, "appData missing in notification payload. Not handling notification", v65, 2u);
    }

    v50 = v62;
LABEL_18:
    v54 = v10;
    return v36(v50, v54);
  }

  v59 = v10;
  v60 = v94;
  *&v98 = 0x6F69746341707061;
  *(&v98 + 1) = 0xE90000000000006ELL;
  v61 = [v94 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v61)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v98 = 0u;
    v99 = 0u;
  }

  v96 = v98;
  v97 = v99;
  if (!*(&v99 + 1))
  {
    sub_1000035B8(&v96, &qword_1000A6FD8, &unk_10007DAC0);
LABEL_37:
    v66 = v87;
    v92(v87, v91, v59);
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&_mh_execute_header, v67, v68, "Unsupported notification action. Not handling notification", v69, 2u);
    }

    v50 = v66;
    v54 = v59;
    return v36(v50, v54);
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_37;
  }

  if (v94 == 0x4E495F4B43454843 && v95 == 0xE800000000000000)
  {

    goto LABEL_41;
  }

  v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v70 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_41:
  *&v98 = 0x61446E6F69746361;
  *(&v98 + 1) = 0xEA00000000006174;
  v71 = [v60 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v71)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v98 = 0u;
    v99 = 0u;
  }

  v96 = v98;
  v97 = v99;
  v81 = v2;
  if (*(&v99 + 1))
  {
    sub_10001A078(&unk_1000A7960, &qword_10007F360);
    if (swift_dynamicCast())
    {
      goto LABEL_49;
    }
  }

  else
  {
    sub_1000035B8(&v96, &qword_1000A6FD8, &unk_10007DAC0);
  }

  sub_100001F80(&_swiftEmptyArrayStorage);
LABEL_49:
  strcpy(&v96, "notificationId");
  HIBYTE(v96) = -18;
  v72 = [v60 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v72)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v98 = 0u;
    v99 = 0u;
  }

  v96 = v98;
  v97 = v99;
  if (*(&v99 + 1))
  {
    swift_dynamicCast();
  }

  else
  {
    sub_1000035B8(&v96, &qword_1000A6FD8, &unk_10007DAC0);
  }

  *&v96 = 0xD000000000000013;
  *(&v96 + 1) = 0x800000010008C160;
  v73 = [v60 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v73)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v98 = 0u;
    v99 = 0u;
  }

  v96 = v98;
  v97 = v99;
  if (*(&v99 + 1))
  {
    swift_dynamicCast();
  }

  else
  {
    sub_1000035B8(&v96, &qword_1000A6FD8, &unk_10007DAC0);
  }

  v74 = v84;
  NotificationData.init(passthroughData:notificationID:notificationContext:)();
  v75 = v85;
  v76 = v86;
  (*(v85 + 16))(v86, v74, v7);
  v77 = (*(v75 + 56))(v76, 0, 1, v7);
  (*((swift_isaMask & *v81) + 0x90))(&v96, v77);
  sub_100001F3C(&v96, *(&v97 + 1));
  v78 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v79 = swift_allocObject();
  v79[3] = 0;
  v79[4] = 0;
  v79[2] = v78;

  dispatch thunk of NDODeviceCheckInHandler.checkIn(with:trigger:completion:)();

  sub_1000035B8(v76, &qword_1000A78B0, qword_10007E5C0);
  (*(v75 + 8))(v74, v7);

  return sub_100001E74(&v96);
}

uint64_t sub_100045318(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v8 = v2[4];
  v7 = v2[5];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10001D068;

  return sub_1000428A0(v9, a2, v5, v6, v8, v7);
}

uint64_t sub_1000453D4(uint64_t a1)
{
  v4 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v1 + v6);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v1 + v7);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_10001D068;

  return sub_1000431FC(a1, v12, v13, v1 + v5, v9, v10, v11);
}

uint64_t sub_100045500(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001C2DC;

  return sub_10001C6CC(a1, v5);
}

uint64_t sub_1000455C4(uint64_t a1, char a2)
{
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_10001A078(&qword_1000A7930, &qword_10007E650) - 8);
  v9 = *(v2 + v7);
  v10 = v2 + ((v7 + *(v8 + 80) + 8) & ~*(v8 + 80));

  return sub_1000438EC(a1, a2 & 1, v2 + v6, v9, v10);
}

uint64_t sub_1000456C4(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t sub_1000456D0(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1000456DC()
{
  result = qword_1000A7008;
  if (!qword_1000A7008)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7008);
  }

  return result;
}

unint64_t sub_100045798()
{
  result = qword_1000A7950;
  if (!qword_1000A7950)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000A7950);
  }

  return result;
}

uint64_t sub_1000457E4()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100045888()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001C2DC;

  return sub_100041474(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_100045930()
{
  v2 = *(type metadata accessor for CheckInData() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_10001D068;

  return sub_100040D7C(v8, v9, v10, v4, v0 + v3, v6, v7);
}

uint64_t sub_100045A48(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001D068;

  return sub_1000441F4(a1, v5);
}

__n128 NDOPlacardModel.init(iconUrl:title:subtitle:subtitleLinkText:action:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  result = *a10;
  v11 = *(a10 + 16);
  *(a9 + 64) = *a10;
  *(a9 + 80) = v11;
  *(a9 + 96) = *(a10 + 32);
  return result;
}

uint64_t sub_100045B38()
{
  v1 = *v0;
  v2 = 0x6C72556E6F6369;
  v3 = 0x656C746974627573;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x6E6F69746361;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656C746974;
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

uint64_t sub_100045BD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000462F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100045BF8(uint64_t a1)
{
  v2 = sub_100046594();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100045C34(uint64_t a1)
{
  v2 = sub_100046594();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NDOPlacardModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10001A078(&qword_1000A79F0, &qword_10007E6C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21[-v8];
  v10 = a1[4];
  sub_100001F3C(a1, a1[3]);
  sub_100046594();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v22) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v22) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v3[4];
    v16 = v3[5];
    LOBYTE(v22) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = v3[6];
    v18 = v3[7];
    LOBYTE(v22) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = *(v3 + 5);
    v22 = *(v3 + 4);
    v23 = v19;
    v24 = *(v3 + 96);
    v21[15] = 4;
    sub_10001DC10();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t NDOPlacardModel.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  v3 = v0[2];
  v4 = v0[3];
  String.hash(into:)();
  v5 = v0[4];
  v6 = v0[5];
  String.hash(into:)();
  v7 = v0[6];
  v8 = v0[7];
  String.hash(into:)();
  v10 = *(v0 + 4);
  v11 = *(v0 + 5);
  v12 = *(v0 + 96);
  sub_1000287C0();
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int NDOPlacardModel.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  v3 = v0[2];
  v4 = v0[3];
  String.hash(into:)();
  v5 = v0[4];
  v6 = v0[5];
  String.hash(into:)();
  v7 = v0[6];
  v8 = v0[7];
  String.hash(into:)();
  v10 = *(v0 + 4);
  v11 = *(v0 + 5);
  v12 = *(v0 + 96);
  sub_1000287C0();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

__n128 NDOPlacardModel.init(from:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000465E8(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v8;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

Swift::Int sub_100046010()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = *(v0 + 96);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  v11 = *(v0 + 4);
  v12 = *(v0 + 5);
  sub_1000287C0();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000460E4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = *(v0 + 96);
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  v12 = *(v0 + 5);
  v11 = *(v0 + 4);
  sub_1000287C0();
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1000461A0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = *(v0 + 96);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  v11 = *(v0 + 4);
  v12 = *(v0 + 5);
  sub_1000287C0();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100046288(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return _s8ndoagent15NDOPlacardModelV23__derived_struct_equalsySbAC_ACtFZ_0(v11, v13) & 1;
}

uint64_t sub_1000462F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C72556E6F6369 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010008C180 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t _s8ndoagent15NDOPlacardModelV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (*(a1 + 16) == *(a2 + 16) ? (v5 = *(a1 + 24) == *(a2 + 24)) : (v5 = 0), (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40) || (_stringCompareWithSmolCheck(_:_:expecting:)())) && (*(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56) || (_stringCompareWithSmolCheck(_:_:expecting:)()))
  {
    v6 = *(a1 + 80);
    v12[0] = *(a1 + 64);
    v12[1] = v6;
    v13 = *(a1 + 96);
    v7 = *(a2 + 80);
    v10[0] = *(a2 + 64);
    v10[1] = v7;
    v11 = *(a2 + 96);
    v8 = static NDOAction.__derived_enum_equals(_:_:)(v12, v10);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

unint64_t sub_100046594()
{
  result = qword_1000AC660[0];
  if (!qword_1000AC660[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AC660);
  }

  return result;
}

uint64_t sub_1000465E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10001A078(&qword_1000A7A00, &unk_10007EA30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  sub_100001F3C(a1, a1[3]);
  sub_100046594();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100001E74(a1);
  }

  LOBYTE(v45[0]) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v37 = v12;
  LOBYTE(v45[0]) = 1;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v36 = v14;
  v33 = v13;
  LOBYTE(v45[0]) = 2;
  v32 = KeyedDecodingContainer.decode(_:forKey:)();
  v35 = v15;
  LOBYTE(v45[0]) = 3;
  v31 = KeyedDecodingContainer.decode(_:forKey:)();
  v34 = v16;
  v51 = 4;
  sub_10001E490();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v29 = *(&v47 + 1);
  v30 = v47;
  v27 = *(&v48 + 1);
  v28 = v48;
  v50 = v49;
  *&v38 = v11;
  v17 = v37;
  *(&v38 + 1) = v37;
  v18 = v33;
  *&v39 = v33;
  v19 = v36;
  *(&v39 + 1) = v36;
  *&v40 = v32;
  v20 = v35;
  *(&v40 + 1) = v35;
  *&v41 = v31;
  v21 = v34;
  *(&v41 + 1) = v34;
  v42 = v47;
  v43 = v48;
  v44 = v49;
  sub_100046CE8(&v38, v45);
  sub_100001E74(a1);
  v45[0] = v11;
  v45[1] = v17;
  v45[2] = v18;
  v45[3] = v19;
  v45[4] = v32;
  v45[5] = v20;
  v45[6] = v31;
  v45[7] = v21;
  v45[8] = v30;
  v45[9] = v29;
  v45[10] = v28;
  v45[11] = v27;
  v46 = v50;
  result = sub_100046D20(v45);
  v23 = v43;
  *(a2 + 64) = v42;
  *(a2 + 80) = v23;
  *(a2 + 96) = v44;
  v24 = v39;
  *a2 = v38;
  *(a2 + 16) = v24;
  v25 = v41;
  *(a2 + 32) = v40;
  *(a2 + 48) = v25;
  return result;
}

unint64_t sub_100046A9C()
{
  result = qword_1000A79F8;
  if (!qword_1000A79F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A79F8);
  }

  return result;
}

__n128 sub_100046AF0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100046B1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
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

uint64_t sub_100046B64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100046BE4()
{
  result = qword_1000AC970[0];
  if (!qword_1000AC970[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AC970);
  }

  return result;
}

unint64_t sub_100046C3C()
{
  result = qword_1000ACA80;
  if (!qword_1000ACA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ACA80);
  }

  return result;
}

unint64_t sub_100046C94()
{
  result = qword_1000ACA88[0];
  if (!qword_1000ACA88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000ACA88);
  }

  return result;
}

uint64_t sub_100046D58()
{
  if (*v0)
  {
    result = 0x736B6E696CLL;
  }

  else
  {
    result = 0x746E65746E6F63;
  }

  *v0;
  return result;
}

uint64_t sub_100046D90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736B6E696CLL && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_100046E68(uint64_t a1)
{
  v2 = sub_100047248();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100046EA4(uint64_t a1)
{
  v2 = sub_100047248();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static NDODWFooterModel.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a1 != a4 || a2 != a5) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return sub_100046F50(a3, a6);
}

uint64_t sub_100046F50(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = a2 + 48;
    for (i = a1 + 48; ; i += 56)
    {
      v5 = *(i - 16);
      v6 = *(i - 8);
      v7 = *(i + 16);
      v14[0] = *i;
      v14[1] = v7;
      v15 = *(i + 32);
      v8 = *(v3 - 16);
      v9 = *(v3 - 8);
      v10 = *(v3 + 16);
      v16[0] = *v3;
      v16[1] = v10;
      v17 = *(v3 + 32);
      if ((v5 != v8 || v6 != v9) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      sub_10001D168(v14, v13);

      sub_10001D168(v16, v13);
      v11 = static NDOAction.__derived_enum_equals(_:_:)(v14, v16);

      sub_100048154(v16);

      sub_100048154(v14);
      if ((v11 & 1) == 0)
      {
        break;
      }

      v3 += 56;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t NDODWFooterModel.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = a4;
  v6 = sub_10001A078(&qword_1000A7A08, &qword_10007EA40);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v13 - v9;
  v11 = a1[4];
  sub_100001F3C(a1, a1[3]);
  sub_100047248();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v13[1] = v13[0];
    v14 = 1;
    sub_10001A078(&qword_1000A7A10, &qword_10007EA48);
    sub_100048088(&qword_1000A7A18, sub_10004729C);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_100047248()
{
  result = qword_1000ACB10;
  if (!qword_1000ACB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ACB10);
  }

  return result;
}

unint64_t sub_10004729C()
{
  result = qword_1000A7A20;
  if (!qword_1000A7A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7A20);
  }

  return result;
}

void NDODWFooterModel.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  String.hash(into:)();
  v5 = *(a4 + 16);
  Hasher._combine(_:)(v5);
  if (v5)
  {
    v6 = (a4 + 80);
    do
    {
      v7 = *(v6 - 6);
      v8 = *(v6 - 5);
      v9 = *(v6 - 4);
      v10 = *(v6 - 3);
      v11 = *(v6 - 2);
      v12 = *(v6 - 1);
      v13 = *v6;
      v6 += 56;

      sub_100021230(v9, v10, v11, v12, v13);
      String.hash(into:)();
      sub_1000287C0();
      dispatch thunk of Hashable.hash(into:)();

      sub_10002B180(v9, v10, v11, v12, v13);
      --v5;
    }

    while (v5);
  }
}

Swift::Int NDODWFooterModel.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  NDODWFooterModel.hash(into:)(v7, a1, a2, a3);
  return Hasher._finalize()();
}

uint64_t NDODWFooterModel.init(from:)(uint64_t *a1)
{
  result = sub_100047858(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

Swift::Int sub_100047470()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  NDODWFooterModel.hash(into:)(v5, v1, v2, v3);
  return Hasher._finalize()();
}

Swift::Int sub_1000474D8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  NDODWFooterModel.hash(into:)(v5, v1, v2, v3);
  return Hasher._finalize()();
}

uint64_t sub_100047530@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100047858(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_100047580(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return sub_100046F50(v2, v3);
}

uint64_t sub_1000475F4(uint64_t a1)
{
  v2 = sub_100047A8C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100047630(uint64_t a1)
{
  v2 = sub_100047A8C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NDODWFooterModel.Link.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10001A078(&qword_1000A7A28, &qword_10007EA50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  sub_100001F3C(a1, a1[3]);
  sub_100047A8C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v16) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = *(v3 + 2);
    v16 = *(v3 + 1);
    v17 = v13;
    v18 = *(v3 + 48);
    v15[15] = 1;
    sub_10001DC10();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

double NDODWFooterModel.Link.init(from:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100047AE0(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_100047858(uint64_t *a1)
{
  v3 = sub_10001A078(&qword_1000A7A48, &unk_10007EFB0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  sub_100001F3C(a1, a1[3]);
  sub_100047248();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10[31] = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_10001A078(&qword_1000A7A10, &qword_10007EA48);
    v10[15] = 1;
    sub_100048088(&qword_1000A7A50, sub_100048100);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_100001E74(a1);
  return v8;
}

unint64_t sub_100047A8C()
{
  result = qword_1000ACB18[0];
  if (!qword_1000ACB18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000ACB18);
  }

  return result;
}

uint64_t sub_100047AE0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10001A078(&qword_1000A7A40, &qword_10007EFA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_100001F3C(a1, a1[3]);
  sub_100047A8C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100001E74(a1);
  }

  LOBYTE(v20) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v14 = v11;
  v23 = 1;
  sub_10001E490();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v15 = v22;
  v18 = v21;
  v19 = v20;
  result = sub_100001E74(a1);
  *a2 = v14;
  *(a2 + 8) = v13;
  v17 = v18;
  *(a2 + 16) = v19;
  *(a2 + 32) = v17;
  *(a2 + 48) = v15;
  return result;
}

unint64_t sub_100047CF0()
{
  result = qword_1000A7A30;
  if (!qword_1000A7A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7A30);
  }

  return result;
}

unint64_t sub_100047D48()
{
  result = qword_1000A7A38;
  if (!qword_1000A7A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7A38);
  }

  return result;
}

__n128 sub_100047D9C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100047DB0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100047DF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100047E7C()
{
  result = qword_1000AD020[0];
  if (!qword_1000AD020[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AD020);
  }

  return result;
}

unint64_t sub_100047ED4()
{
  result = qword_1000AD230[0];
  if (!qword_1000AD230[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AD230);
  }

  return result;
}

unint64_t sub_100047F2C()
{
  result = qword_1000AD340;
  if (!qword_1000AD340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD340);
  }

  return result;
}

unint64_t sub_100047F84()
{
  result = qword_1000AD348[0];
  if (!qword_1000AD348[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AD348);
  }

  return result;
}

unint64_t sub_100047FDC()
{
  result = qword_1000AD3D0;
  if (!qword_1000AD3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD3D0);
  }

  return result;
}

unint64_t sub_100048034()
{
  result = qword_1000AD3D8[0];
  if (!qword_1000AD3D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AD3D8);
  }

  return result;
}

uint64_t sub_100048088(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10001EFA0(&qword_1000A7A10, &qword_10007EA48);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100048100()
{
  result = qword_1000A7A58;
  if (!qword_1000A7A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7A58);
  }

  return result;
}

id static NDODeviceServicesComposition.makeAirPodsDataCollectionHandler()()
{
  v0 = objc_allocWithZone(NDOAirPodsDataCollectionHandler);

  return [v0 init];
}

uint64_t static NDODeviceServicesComposition.load(request:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10005C67C();
  swift_beginAccess();
  sub_100001E10(v5, v8);
  sub_100001F3C(v8, v8[3]);
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  dispatch thunk of NDOURLClient.load(request:with:)();

  return sub_100001E74(v8);
}

void sub_1000484B4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
    if (a4)
    {
LABEL_3:
      v9 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:
  v10 = v9;
  (*(a5 + 16))(a5, isa, a3);
}

uint64_t static NDODeviceServicesComposition.isAccCheckInDisabled()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000485F4;

  return sub_100048FFC();
}

uint64_t sub_1000485F4(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t *sub_1000486F0()
{
  if (qword_1000AD460 != -1)
  {
    swift_once();
  }

  return qword_1000B1E28;
}

uint64_t sub_1000488AC(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100048954;

  return sub_100048FFC();
}

uint64_t sub_100048954(char a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  v4[2](v4, a1 & 1);
  _Block_release(v4);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_100048A7C()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NDOCompositionLayer();
  static NDOConstants.localPlistURL.getter();
  v5 = sub_10005C67C();
  swift_beginAccess();
  sub_100001E10(v5, v10);
  v6 = sub_10005C9CC(v4, v10);
  sub_100001E74(v10);
  (*(v1 + 8))(v4, v0);
  v11[3] = type metadata accessor for NDOPostProcessingURLClient();
  v11[4] = &protocol witness table for NDOPostProcessingURLClient;
  v11[0] = v6;
  v7 = sub_10005C220();
  swift_beginAccess();
  sub_10001EC4C(v7, v10);
  sub_100020BC4(v11, v10, qword_1000B1E28);
  sub_100001E74(v10);
  return sub_100001E74(v11);
}

uint64_t sub_100048BF0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000AD460 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_100001E10(qword_1000B1E28, a1);
}

uint64_t sub_100048C70(uint64_t *a1)
{
  if (qword_1000AD460 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1000492B8(qword_1000B1E28, a1);
  swift_endAccess();
  return sub_100001E74(a1);
}

uint64_t (*sub_100048D00())()
{
  if (qword_1000AD460 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id NDODeviceServicesComposition.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NDODeviceServicesComposition();
  return objc_msgSendSuper2(&v2, "init");
}

id NDODeviceServicesComposition.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NDODeviceServicesComposition();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100048E34(uint64_t a1)
{
  v2 = sub_10001A078(&qword_1000A7A90, &unk_10007F060);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v10 - v5;
  if (qword_1000AD460 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100001E10(qword_1000B1E28, v10);
  sub_100001F3C(v10, v10[3]);
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  dispatch thunk of NDOLoader.load(with:)();

  return sub_100001E74(v10);
}

uint64_t sub_100048FFC()
{
  v1 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v3 = sub_10001A078(&qword_1000A7A88, &unk_10007F050);
  *v2 = v0;
  v2[1] = sub_1000490E4;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000016, 0x800000010008C1F0, sub_100048E34, 0, v3);
}

uint64_t sub_1000490E4()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return _swift_task_switch(sub_1000491E0, 0, 0);
}

uint64_t sub_1000491E0()
{
  v1 = *(v0 + 16);
  if (*(v0 + 24) == 1)
  {
    *(v0 + 32) = v1;
    sub_10001A078(&unk_1000A7980, &qword_10007D9E0);
    swift_willThrowTypedImpl();
    sub_1000496C8(v1, 1);
    v2 = 0;
  }

  else
  {
    v3 = v1;
    v2 = NSDictionary.isAccCheckInDisabled.getter();
    sub_1000496C8(v1, 0);
    sub_1000496C8(v1, 0);
  }

  v4 = *(v0 + 8);

  return v4(v2 & 1);
}

uint64_t *sub_1000492B8(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v14 = *result;
        v15 = *a2;
        v16 = result;

        *v16 = v15;
      }

      else
      {
        v11 = *(v10 + 24);
        v12 = result[3];

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        v13 = *result;
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v17);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v17, v2);
      }
    }
  }

  return result;
}

uint64_t sub_1000494F8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10001C2DC;

  return sub_1000488AC(v2);
}

uint64_t sub_1000495A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001A078(&qword_1000A7920, &qword_10007AE70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100049614(uint64_t a1)
{
  v2 = sub_10001A078(&qword_1000A7920, &qword_10007AE70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100049684(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  if (a4)
  {
    v7 = a1;
    a1 = 0;
    a2 = 0xF000000000000000;
    a3 = 0;
  }

  else
  {
    v7 = 0;
  }

  return v5(a1, a2, a3, v7);
}

void sub_1000496C8(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1000496D4(uint64_t a1)
{
  v2 = *(sub_10001A078(&qword_1000A7A90, &unk_10007F060) - 8);
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  sub_100049780(v3, v4);
  sub_10001A078(&qword_1000A7A90, &unk_10007F060);
  return CheckedContinuation.resume(returning:)();
}

id sub_100049780(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

void sub_100049790()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSuiteName:v1];

  if (!v2)
  {
    v2 = [objc_opt_self() standardUserDefaults];
  }

  static NDODeviceServicesInternalDebugHelpers.preferences = v2;
}

uint64_t *NDODeviceServicesInternalDebugHelpers.preferences.unsafeMutableAddressor()
{
  if (qword_1000AD468 != -1)
  {
    swift_once();
  }

  return &static NDODeviceServicesInternalDebugHelpers.preferences;
}

id static NDODeviceServicesInternalDebugHelpers.preferences.getter()
{
  if (qword_1000AD468 != -1)
  {
    swift_once();
  }

  v1 = static NDODeviceServicesInternalDebugHelpers.preferences;

  return v1;
}

uint64_t static NDODeviceServicesInternalDebugHelpers.getLocalURLOverridesForDeviceServices()()
{
  if (![objc_opt_self() isInternal])
  {
    return 0;
  }

  if (qword_1000AD468 != -1)
  {
    swift_once();
  }

  v0 = static NDODeviceServicesInternalDebugHelpers.preferences;
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 stringForKey:v1];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id NDODeviceServicesInternalDebugHelpers.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NDODeviceServicesInternalDebugHelpers();
  return objc_msgSendSuper2(&v2, "init");
}

id NDODeviceServicesInternalDebugHelpers.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NDODeviceServicesInternalDebugHelpers();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100049BA0()
{
  v0 = type metadata accessor for Logger();
  sub_100027DE0(v0, qword_1000B1E58);
  sub_100027B34(v0, qword_1000B1E58);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100049C1C()
{
  if (qword_1000AD470 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_100027B34(v0, qword_1000B1E58);
}

uint64_t sub_100049C80@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000AD470 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100027B34(v2, qword_1000B1E58);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100049D54(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_100049D80@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NDOWarrantyRequestGenerator() + 20);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for NDOWarrantyRequestGenerator()
{
  result = qword_1000AD478;
  if (!qword_1000AD478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100049E48(uint64_t a1)
{
  v3 = *(type metadata accessor for NDOWarrantyRequestGenerator() + 20);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_100049F0C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NDOWarrantyRequestGenerator() + 24);

  return sub_100001E10(v3, a1);
}

uint64_t NDOWarrantyRequestGenerator.init(serialNumbers:warrantyURL:payloadProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for NDOWarrantyRequestGenerator();
  v8 = *(v7 + 20);
  v9 = type metadata accessor for URL();
  (*(*(v9 - 8) + 32))(&a4[v8], a2, v9);
  v10 = &a4[*(v7 + 24)];

  return sub_100005734(a3, v10);
}

NSURLRequest_optional __swiftcall NDOWarrantyRequestGenerator.generateRequest(isRetry:)(Swift::Bool isRetry)
{
  v59 = isRetry;
  v1 = type metadata accessor for JSONEncodingOptions();
  v57 = *(v1 - 8);
  v58 = v1;
  v2 = *(v57 + 64);
  __chkstk_darwin(v1);
  v55 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest();
  v52 = *(v60 - 8);
  v4 = *(v52 + 64);
  v5 = __chkstk_darwin(v60);
  v54 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v53 = &v48 - v7;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v50 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWRequest();
  v56 = *(v13 - 8);
  v14 = *(v56 + 64);
  __chkstk_darwin(v13);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for NDOWarrantyRequestGenerator();
  v18 = *(v17 + 20);
  v19 = objc_allocWithZone(NSMutableURLRequest);
  URL._bridgeToObjectiveC()(v20);
  v22 = v21;
  v23 = [v19 initWithURL:v21];

  v24 = String._bridgeToObjectiveC()();
  [v23 setHTTPMethod:v24];

  v25 = String._bridgeToObjectiveC()();
  v26 = String._bridgeToObjectiveC()();
  [v23 setValue:v25 forHTTPHeaderField:v26];

  v27 = String._bridgeToObjectiveC()();
  v28 = String._bridgeToObjectiveC()();
  v29 = v52;
  v51 = v23;
  [v23 setValue:v27 forHTTPHeaderField:v28];

  Com_Apple_Sse_Ocean_Ndo_Api_DWRequest.init()();
  v30 = v49;
  v31 = (v49 + *(v17 + 24));
  v32 = v31[4];
  sub_100001F3C(v31, v31[3]);
  v33 = v53;
  dispatch thunk of RequestPayloadProvider.requestMeta()();
  Com_Apple_Sse_Ocean_Ndo_Api_DWRequest.meta.setter();
  v34 = v31[4];
  sub_100001F3C(v31, v31[3]);
  v35 = v55;
  dispatch thunk of RequestPayloadProvider.requestCommon()();
  Com_Apple_Sse_Ocean_Ndo_Api_DWRequest.common.setter();
  Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest.init()();
  v36 = *v30;

  Com_Apple_Sse_Ocean_Ndo_Api_DeviceWarrantyRequest.interestedSerials.setter();
  v37 = v29;
  (*(v29 + 16))(v54, v33, v60);
  Com_Apple_Sse_Ocean_Ndo_Api_DWRequest.data.setter();
  JSONEncodingOptions.init()();
  sub_10004A560();
  v38 = Message.jsonUTF8Data(options:)();
  v39 = v35;
  v41 = v40;
  (*(v57 + 8))(v39, v58);
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100003EBC(v38, v41);
  v43 = v51;
  [(objc_class *)v51 setHTTPBody:isa];

  v44 = v31[4];
  sub_100001F3C(v31, v31[3]);
  dispatch thunk of RequestPayloadProvider.addHeaders(to:isRetry:)();
  (*(v37 + 8))(v33, v60);
  (*(v56 + 8))(v16, v13);
  v47 = v43;
  result.value._internal = v45;
  result.value.super.isa = v47;
  result.is_nil = v46;
  return result;
}

unint64_t sub_10004A560()
{
  result = qword_1000A7AC0;
  if (!qword_1000A7AC0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_DWRequest();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7AC0);
  }

  return result;
}

void sub_10004A5E0()
{
  sub_10004A67C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for URL();
    if (v1 <= 0x3F)
    {
      sub_100029A34();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10004A67C()
{
  if (!qword_1000A7B20)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1000A7B20);
    }
  }
}

uint64_t sub_10004A6CC(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_10005BD64(sub_10004A7D0, v4);
}

uint64_t sub_10004A74C@<X0>(ndoagent::NDODWCoverageModel::CoverageLink::Action::Benefits a1@<0:X0, 8:X1, 16:X2, 24:X3>)
{
  countAndFlagsBits = a1.value._countAndFlagsBits;
  v2 = a1.label._countAndFlagsBits;
  if (a1.label._countAndFlagsBits)
  {
    object = a1.label._object;

    v4._countAndFlagsBits = v2;
    v4._object = object;
    a1 = NDODWCoverageModel.CoverageLink.Action.Benefits.init(label:value:)(v4, v5);
    v2 = a1.label._countAndFlagsBits;
    v6 = a1.label._object;
  }

  else
  {
    v6 = 0;
  }

  countAndFlagsBits(v2, v6, a1.value._countAndFlagsBits, a1.value._object);

  return sub_100003430(v2);
}

uint64_t sub_10004A7D0@<X0>(ndoagent::NDODWCoverageModel::CoverageLink::Action::Benefits a1@<0:X0, 8:X1, 16:X2, 24:X3>)
{
  a1.value._countAndFlagsBits = *(v1 + 16);
  a1.value._object = *(v1 + 24);
  return sub_10004A74C(a1);
}

uint64_t sub_10004A7D8(uint64_t (*a1)(void), uint64_t a2)
{
  v4 = sub_10001A078(&qword_1000A7390, &qword_10007D980);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v33 = &v30 - v7;
  v8 = sub_10001A078(&qword_1000A7B58, &qword_10007F0F8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v30 - v10;
  v12 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v16 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v30 - v17;
  static NDOResponseMapper.DeviceList.loadLocalData()();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000035B8(v11, &qword_1000A7B58, &qword_10007F0F8);
    return a1(0);
  }

  else
  {
    v30 = v5;
    v31 = v4;
    v20 = *(v13 + 32);
    v32 = v18;
    v20(v18, v11, v12);
    (*(v13 + 16))(v16, v18, v12);
    v21 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = a1;
    *(v22 + 24) = a2;
    v20((v22 + v21), v16, v12);
    v23 = swift_allocObject();
    *(v23 + 16) = sub_10004B460;
    *(v23 + 24) = v22;
    v24 = a2;

    sub_10005BD64(sub_10004F6F0, v23);

    v25 = sub_10005BF18();
    swift_beginAccess();
    v27 = v30;
    v26 = v31;
    v28 = v33;
    (*(v30 + 16))(v33, v25, v31);
    v29 = swift_allocObject();
    *(v29 + 16) = a1;
    *(v29 + 24) = v24;

    swift_getOpaqueTypeConformance2();
    dispatch thunk of NDOLoader.load(with:)();

    (*(v27 + 8))(v28, v26);
    return (*(v13 + 8))(v32, v12);
  }
}

uint64_t sub_10004ABCC(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, void (*a3)(id), uint64_t a4, uint64_t a5)
{
  v79 = a3;
  v80 = a5;
  v82 = type metadata accessor for NDOLocalCoverageCentralResponse();
  v8 = *(*(v82 - 8) + 64);
  __chkstk_darwin(v82);
  v83 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10001A078(&qword_1000A72A0, &qword_10007C010);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v81 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v78 = &v72 - v20;
  __chkstk_darwin(v19);
  v22 = &v72 - v21;
  v23 = type metadata accessor for Logger();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v23);
  __chkstk_darwin(v26);
  v29 = &v72 - v28;
  if (a1)
  {
    v73 = v23;
    v74 = v27;
    v72 = v24;
    v77 = a4;

    v30 = v80;
    v76 = a1;
    v80 = a2;
    v75 = sub_10002F0FC(v30, a1, a2);
    v31 = type metadata accessor for Date();
    v32 = *(*(v31 - 8) + 56);
    v32(v22, 1, 1, v31);
    v33 = [objc_opt_self() defaultManager];
    static NDOConstants.localDeviceListURL.getter();
    URL.path.getter();
    (*(v11 + 8))(v14, v10);
    v34 = String._bridgeToObjectiveC()();

    v84[0] = 0;
    v35 = [v33 attributesOfItemAtPath:v34 error:v84];

    v36 = v84[0];
    if (v35)
    {
      type metadata accessor for FileAttributeKey();
      sub_10004F6A8(&qword_1000A7B68, type metadata accessor for FileAttributeKey);
      v37 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v36;

      if (*(v37 + 16) && (v39 = sub_10004E35C(NSFileModificationDate), (v40 & 1) != 0))
      {
        sub_100020798(*(v37 + 56) + 32 * v39, v84);
        sub_1000035B8(v22, &qword_1000A72A0, &qword_10007C010);

        v41 = v78;
        v42 = swift_dynamicCast() ^ 1;
        v43 = v41;
      }

      else
      {

        sub_1000035B8(v22, &qword_1000A72A0, &qword_10007C010);
        v41 = v78;
        v43 = v78;
        v42 = 1;
      }

      v32(v43, v42, 1, v31);
      v51 = v76;
      v52 = v83;
      sub_1000243BC(v41, v22);
    }

    else
    {
      v53 = v84[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v54 = sub_100049C1C();
      v56 = v72;
      v55 = v73;
      (*(v72 + 16))(v74, v54, v73);
      swift_errorRetain();
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        *v59 = 138412290;
        swift_errorRetain();
        v61 = _swift_stdlib_bridgeErrorToNSError();
        *(v59 + 4) = v61;
        *v60 = v61;
        _os_log_impl(&_mh_execute_header, v57, v58, "Failed to read attributes of local device list, error: %@", v59, 0xCu);
        sub_1000035B8(v60, &qword_1000A6F40, &qword_10007E690);
      }

      else
      {
      }

      v51 = v76;
      v52 = v83;
      (*(v56 + 8))(v74, v55);
    }

    v62 = v81;
    sub_10001CB74(v22, v81, &qword_1000A72A0, &qword_10007C010);
    NDOLocalCoverageCentralResponse.init(sections:date:)(v75, v62, v52);
    v63 = type metadata accessor for JSONEncoder();
    v64 = *(v63 + 48);
    v65 = *(v63 + 52);
    swift_allocObject();
    JSONEncoder.init()();
    sub_10004F6A8(&qword_1000A7B90, type metadata accessor for NDOLocalCoverageCentralResponse);
    v66 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v68 = v67;

    v69 = objc_allocWithZone(NSData);
    sub_100034F60(v66, v68);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v71 = [v69 initWithData:isa];

    sub_100003EBC(v66, v68);
    v79(v71);
    sub_100003430(v51);

    sub_100003EBC(v66, v68);
    sub_10004F570(v52, type metadata accessor for NDOLocalCoverageCentralResponse);
    return sub_1000035B8(v22, &qword_1000A72A0, &qword_10007C010);
  }

  else
  {
    v44 = sub_100049C1C();
    (*(v24 + 16))(v29, v44, v23);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    v47 = os_log_type_enabled(v45, v46);
    v48 = v79;
    if (v47)
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "Cannot create presentation model generator", v49, 2u);
    }

    (*(v24 + 8))(v29, v23);
    return (v48)(0);
  }
}

uint64_t sub_10004B48C(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v34 = a3;
  v35 = a2;
  v31 = a1;
  v3 = type metadata accessor for Logger();
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  __chkstk_darwin(v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10001A078(&unk_1000A7EA0, &qword_10007F110);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v30 - v9;
  v11 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v30 - v16;
  sub_10001CB74(v31, v10, &unk_1000A7EA0, &qword_10007F110);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000035B8(v10, &unk_1000A7EA0, &qword_10007F110);
  }

  else
  {
    v18 = *(v12 + 32);
    v18(v17, v10, v11);
    (*(v12 + 16))(v15, v17, v11);
    v19 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v20 = swift_allocObject();
    v18(&v20[v19], v15, v11);
    v21._countAndFlagsBits = sub_10004F4FC;
    v21._object = v20;
    v36 = NDODWCoverageModel.CoverageLink.Action.Benefits.init(label:value:)(v21, v22);
    (*(v12 + 8))(v17, v11, v36.value._countAndFlagsBits, v36.value._object);
  }

  v23 = sub_100049C1C();
  v25 = v32;
  v24 = v33;
  (*(v32 + 16))(v6, v23, v33);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "Unable to encode device list sections", v28, 2u);
  }

  (*(v25 + 8))(v6, v24);
  return v35(0);
}

uint64_t sub_10004B854(uint64_t a1, uint64_t a2)
{
  v5 = sub_10005EA4C();
  swift_beginAccess();
  sub_100001E10(v5, v8);
  sub_100001F3C(v8, v8[3]);
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = v2;

  dispatch thunk of NDOLoader.load(with:)();

  return sub_100001E74(v8);
}

uint64_t sub_10004B930(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  v37 = a4;
  v38 = a2;
  v39 = a3;
  v5 = type metadata accessor for Logger();
  v35 = *(v5 - 8);
  v36 = v5;
  v6 = *(v35 + 64);
  __chkstk_darwin(v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001A078(&qword_1000A7B70, &unk_10007F100);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v35 - v11);
  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v17 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v35 - v18;
  sub_10001CB74(a1, v12, &qword_1000A7B70, &unk_10007F100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = v38;
    v40 = *v12;
    sub_10001A078(&unk_1000A7980, &qword_10007D9E0);
    swift_willThrowTypedImpl();
    v21 = sub_100049C1C();
    v22 = v35;
    v23 = v36;
    (*(v35 + 16))(v8, v21, v36);
    swift_errorRetain();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      swift_errorRetain();
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 4) = v28;
      *v27 = v28;
      _os_log_impl(&_mh_execute_header, v24, v25, "Failed to get remote device list, error: %@", v26, 0xCu);
      sub_1000035B8(v27, &qword_1000A6F40, &qword_10007E690);
    }

    (*(v22 + 8))(v8, v23);
    v20(0);
  }

  else
  {
    v30 = *(v14 + 32);
    v30(v19, v12, v13);
    (*(v14 + 16))(v17, v19, v13);
    v31 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v32 = swift_allocObject();
    v33 = v39;
    *(v32 + 16) = v38;
    *(v32 + 24) = v33;
    v30((v32 + v31), v17, v13);
    v34 = swift_allocObject();
    *(v34 + 16) = sub_10004F364;
    *(v34 + 24) = v32;

    sub_10005BD64(sub_10004F6F0, v34);

    return (*(v14 + 8))(v19, v13);
  }
}

uint64_t sub_10004BD88(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, void (*a3)(id), uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  __chkstk_darwin(v13);
  v15 = &v31 - v14;
  if (a1)
  {
    v31 = a4;
    v32 = a3;

    v16 = sub_10002F0FC(a5, a1, a2);
    v17 = type metadata accessor for JSONEncoder();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    JSONEncoder.init()();
    v33 = v16;
    sub_10001A078(&qword_1000A7B78, &qword_100081550);
    sub_10004F42C(&qword_1000A7B80, &qword_1000A7B78, &qword_100081550, sub_10004F4A8);
    v24 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v26 = v25;

    v27 = objc_allocWithZone(NSData);
    sub_100034F60(v24, v26);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v29 = [v27 initWithData:isa];

    sub_100003EBC(v24, v26);
    v32(v29);

    sub_100003EBC(v24, v26);
    return sub_100003430(a1);
  }

  else
  {
    v20 = sub_100049C1C();
    (*(v11 + 16))(v15, v20, v10);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Cannot create presentation model generator", v23, 2u);
    }

    (*(v11 + 8))(v15, v10);
    return (a3)(0);
  }
}

uint64_t sub_10004C26C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v54 = a3;
  v55 = a4;
  v6 = type metadata accessor for Logger();
  v52 = *(v6 - 8);
  v53 = v6;
  v7 = *(v52 + 64);
  v8 = __chkstk_darwin(v6);
  v47 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v50 = &v43 - v10;
  v11 = type metadata accessor for JSONDecodingOptions();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v51 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData();
  v46 = *(v51 - 8);
  v13 = *(v46 + 64);
  v14 = __chkstk_darwin(v51);
  v15 = __chkstk_darwin(v14);
  v48 = &v43 - v16;
  __chkstk_darwin(v15);
  v18 = &v43 - v17;
  v19 = type metadata accessor for URL();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a1;
  static NDOResponseMapper.Warranty.deviceCoverageCachePathForSerial(_:)();
  v24 = Data.init(contentsOf:options:)();
  v26 = v25;
  v44 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v18;
  v50 = a2;
  v27 = v24;
  (*(v20 + 8))(v23, v19);
  sub_100034F60(v27, v26);
  JSONDecodingOptions.init()();
  sub_10004F6A8(&qword_1000A7298, &type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData);
  v28 = v48;
  Message.init(jsonUTF8Data:options:)();
  v53 = v26;
  v29 = v45;
  v30 = v46;
  v31 = *(v46 + 32);
  v32 = v51;
  v31(v45, v28, v51);
  v33 = v44;
  (*(v30 + 16))(v44, v29, v32);
  v34 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v35 = swift_allocObject();
  v36 = v55;
  *(v35 + 16) = v54;
  *(v35 + 24) = v36;
  v37 = v33;
  v38 = v51;
  v31((v35 + v34), v37, v51);
  v39 = (v35 + ((v13 + v34 + 7) & 0xFFFFFFFFFFFFFFF8));
  v40 = v50;
  *v39 = v49;
  v39[1] = v40;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_10004E330;
  *(v41 + 24) = v35;

  sub_10005BD64(sub_10004F6F0, v41);

  sub_100003EBC(v27, v53);
  return (*(v30 + 8))(v45, v38);
}

uint64_t sub_10004C968(uint64_t a1, uint64_t a2, void (*a3)(id), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v83 = a6;
  v84 = a7;
  v89 = a4;
  v90 = a3;
  v87 = type metadata accessor for NDOLocalDeviceWarrantyResponse();
  v10 = *(*(v87 - 8) + 64);
  __chkstk_darwin(v87);
  v88 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10001A078(&qword_1000A72A0, &qword_10007C010);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v85 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v82 = &v76 - v22;
  __chkstk_darwin(v21);
  v24 = &v76 - v23;
  v25 = type metadata accessor for Logger();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = __chkstk_darwin(v25);
  v29 = __chkstk_darwin(v28);
  v86 = &v76 - v30;
  __chkstk_darwin(v29);
  v33 = &v76 - v32;
  if (a1)
  {
    v76 = v31;
    v78 = v26;
    v79 = v25;

    v80 = a1;
    v81 = a2;
    v77 = sub_10002B2DC(a5, a1, a2);
    v34 = type metadata accessor for Date();
    v35 = *(*(v34 - 8) + 56);
    v35(v24, 1, 1, v34);
    v36 = [objc_opt_self() defaultManager];
    static NDOResponseMapper.Warranty.deviceCoverageCachePathForSerial(_:)();
    URL.path.getter();
    (*(v13 + 8))(v16, v12);
    v37 = String._bridgeToObjectiveC()();

    v91[0] = 0;
    v38 = [v36 attributesOfItemAtPath:v37 error:v91];

    v39 = v91[0];
    v40 = v24;
    if (v38)
    {
      type metadata accessor for FileAttributeKey();
      sub_10004F6A8(&qword_1000A7B68, type metadata accessor for FileAttributeKey);
      v41 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v39;

      if (*(v41 + 16) && (v43 = sub_10004E35C(NSFileModificationDate), (v44 & 1) != 0))
      {
        sub_100020798(*(v41 + 56) + 32 * v43, v91);
        sub_1000035B8(v24, &qword_1000A72A0, &qword_10007C010);

        v45 = v82;
        v46 = swift_dynamicCast() ^ 1;
        v47 = v45;
      }

      else
      {

        sub_1000035B8(v24, &qword_1000A72A0, &qword_10007C010);
        v45 = v82;
        v47 = v82;
        v46 = 1;
      }

      v35(v47, v46, 1, v34);
      v55 = v80;
      sub_1000243BC(v45, v24);
      v56 = v88;
    }

    else
    {
      v57 = v91[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v58 = sub_100049C1C();
      v59 = v78;
      v60 = v79;
      (*(v78 + 16))(v76, v58, v79);
      swift_errorRetain();
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        *v63 = 138412290;
        swift_errorRetain();
        v65 = _swift_stdlib_bridgeErrorToNSError();
        *(v63 + 4) = v65;
        *v64 = v65;
        _os_log_impl(&_mh_execute_header, v61, v62, "Failed to read attributes of local device warranty, error: %@", v63, 0xCu);
        sub_1000035B8(v64, &qword_1000A6F40, &qword_10007E690);
      }

      else
      {
      }

      v55 = v80;
      v56 = v88;
      (*(v59 + 8))(v76, v60);
    }

    v66 = v85;
    sub_10001CB74(v40, v85, &qword_1000A72A0, &qword_10007C010);
    NDOLocalDeviceWarrantyResponse.init(sections:date:)(v77, v66, v56);
    v67 = type metadata accessor for JSONEncoder();
    v68 = *(v67 + 48);
    v69 = *(v67 + 52);
    swift_allocObject();
    JSONEncoder.init()();
    sub_10004F6A8(&qword_1000A7B60, type metadata accessor for NDOLocalDeviceWarrantyResponse);
    v70 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v72 = v71;

    v73 = objc_allocWithZone(NSData);
    sub_100034F60(v70, v72);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v75 = [v73 initWithData:isa];

    sub_100003EBC(v70, v72);
    v90(v75);

    sub_100003430(v55);
    sub_100003EBC(v70, v72);
    sub_10004F570(v56, type metadata accessor for NDOLocalDeviceWarrantyResponse);
    return sub_1000035B8(v40, &qword_1000A72A0, &qword_10007C010);
  }

  else
  {
    v48 = sub_100049C1C();
    (*(v26 + 16))(v33, v48, v25);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    v51 = os_log_type_enabled(v49, v50);
    v52 = v90;
    if (v51)
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "Cannot create presentation model generator", v53, 2u);
    }

    (*(v26 + 8))(v33, v25);
    return (v52)(0);
  }
}

uint64_t sub_10004D368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_10006F214();
  swift_beginAccess();
  sub_100001E10(v10, v14);
  sub_100001F3C(v14, v14[3]);
  sub_10001A078(&qword_1000A6FA0, &qword_10007D9D0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10007AE00;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a1;
  v12[5] = a2;
  v12[6] = v5;
  swift_bridgeObjectRetain_n();

  dispatch thunk of WarrantyDownloader.loadWarranty(forDeviceSerials:additionalHeaders:completion:)();

  return sub_100001E74(v14);
}

uint64_t sub_10004D4AC(uint64_t a1, char a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v66 = a7;
  v71 = a6;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v67 = v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = v58 - v17;
  v19 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData();
  v68 = *(v19 - 8);
  v20 = *(v68 + 64);
  v21 = __chkstk_darwin(v19);
  v22 = __chkstk_darwin(v21);
  v24 = v58 - v23;
  __chkstk_darwin(v22);
  v69 = a3;
  if (a2)
  {
    v72 = a1;
    swift_errorRetain();
    sub_10001A078(&unk_1000A7980, &qword_10007D9E0);
    swift_willThrowTypedImpl();
    v28 = sub_100049C1C();
    (*(v13 + 16))(v18, v28, v12);
    swift_errorRetain();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    sub_10004F210(a1, 1);
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = v12;
      v33 = swift_slowAlloc();
      *v31 = 138412290;
      swift_errorRetain();
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 4) = v34;
      *v33 = v34;
      _os_log_impl(&_mh_execute_header, v29, v30, "Failed to get remote device warranty, error: %@", v31, 0xCu);
      sub_1000035B8(v33, &qword_1000A6F40, &qword_10007E690);
      v12 = v32;
    }

    (*(v13 + 8))(v18, v12);
    v69(0);
    return sub_10004F210(a1, 1);
  }

  else
  {
    v60 = v27;
    v61 = v26;
    v62 = v58 - v25;
    v63 = v13;
    v64 = v12;
    v65 = a4;
    v36 = *(a1 + 16);
    if (v36)
    {
      v70 = *(v68 + 16);
      v37 = *(v68 + 80);
      v58[1] = v37;
      v59 = (v37 + 32) & ~v37;
      v38 = a1 + v59;
      v39 = (v68 + 8);
      v40 = *(v68 + 72);
      while (1)
      {
        v70(v24, v38, v19);
        if (Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData.serialNumber.getter() == a5 && v41 == v71)
        {
          break;
        }

        v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v42)
        {
          goto LABEL_15;
        }

        (*v39)(v24, v19);
        v38 += v40;
        if (!--v36)
        {
          goto LABEL_11;
        }
      }

LABEL_15:
      v51 = v68 + 32;
      v50 = *(v68 + 32);
      v52 = v62;
      v50(v62, v24, v19);
      v53 = v61;
      v70(v61, v52, v19);
      v54 = v59;
      v55 = swift_allocObject();
      v56 = v65;
      *(v55 + 16) = v69;
      *(v55 + 24) = v56;
      v50((v55 + v54), v53, v19);
      v57 = swift_allocObject();
      *(v57 + 16) = sub_10004F21C;
      *(v57 + 24) = v55;

      sub_10005BD64(sub_10004F6F0, v57);

      return (*(v51 - 24))(v52, v19);
    }

    else
    {
LABEL_11:
      v43 = sub_100049C1C();
      v45 = v63;
      v44 = v64;
      v46 = v67;
      (*(v63 + 16))(v67, v43, v64);
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&_mh_execute_header, v47, v48, "Device warranty response did not contain the requested serial number", v49, 2u);
      }

      (*(v45 + 8))(v46, v44);
      return (v69)(0);
    }
  }
}

uint64_t sub_10004DA7C(uint64_t a1, uint64_t a2, void (*a3)(id), uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  __chkstk_darwin(v13);
  v15 = &v31 - v14;
  if (a1)
  {
    v31 = a4;
    v32 = a3;

    v16 = sub_10002B2DC(a5, a1, a2);
    v17 = type metadata accessor for JSONEncoder();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    JSONEncoder.init()();
    v33 = v16;
    sub_10001A078(&qword_1000A72B0, &qword_10007C020);
    sub_10004F42C(&qword_1000A72B8, &qword_1000A72B0, &qword_10007C020, sub_10002482C);
    v24 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v26 = v25;

    v27 = objc_allocWithZone(NSData);
    sub_100034F60(v24, v26);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v29 = [v27 initWithData:isa];

    sub_100003EBC(v24, v26);
    v32(v29);

    sub_100003EBC(v24, v26);
    return sub_100003430(a1);
  }

  else
  {
    v20 = sub_100049C1C();
    (*(v11 + 16))(v15, v20, v10);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Cannot create presentation model generator", v23, 2u);
    }

    (*(v11 + 8))(v15, v10);
    return (a3)(0);
  }
}

uint64_t sub_10004DF30()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_10004DF6C()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_10004DFC0()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_10004E03C(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_10004E0B4(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10004E134@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_10004E178(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_10004E200@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_10004E248@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_10004E274(uint64_t a1)
{
  v2 = sub_10004F6A8(&qword_1000A7B68, type metadata accessor for FileAttributeKey);
  v3 = sub_10004F6A8(&qword_1000A7BB8, type metadata accessor for FileAttributeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

unint64_t sub_10004E35C(uint64_t a1)
{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10004E3F0(a1, v4);
}

unint64_t sub_10004E3F0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_10004E4F4(uint64_t a1, void (**a2)(void, void))
{
  v32 = a1;
  v3 = sub_10001A078(&qword_1000A7390, &qword_10007D980);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v33 = &v29 - v6;
  v7 = sub_10001A078(&qword_1000A7B58, &qword_10007F0F8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v29 - v9;
  v11 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v29 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  _Block_copy(a2);
  static NDOResponseMapper.DeviceList.loadLocalData()();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1000035B8(v10, &qword_1000A7B58, &qword_10007F0F8);
    a2[2](a2, 0);
  }

  else
  {
    v30 = v4;
    v31 = v3;
    v19 = *(v12 + 32);
    v19(v17, v10, v11);
    (*(v12 + 16))(v15, v17, v11);
    v20 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = sub_10004F6F4;
    *(v21 + 24) = v18;
    v19((v21 + v20), v15, v11);
    v22 = swift_allocObject();
    *(v22 + 16) = sub_10004F700;
    *(v22 + 24) = v21;

    sub_10005BD64(sub_10004F6F0, v22);

    v23 = sub_10005BF18();
    swift_beginAccess();
    v25 = v30;
    v24 = v31;
    v26 = v33;
    (*(v30 + 16))(v33, v23, v31);
    v27 = swift_allocObject();
    *(v27 + 16) = sub_10004F6F4;
    *(v27 + 24) = v18;

    swift_getOpaqueTypeConformance2();
    dispatch thunk of NDOLoader.load(with:)();

    (*(v25 + 8))(v26, v24);
    (*(v12 + 8))(v17, v11);
  }
}

uint64_t sub_10004E91C(uint64_t a1, char *a2, uint64_t a3, const void *a4)
{
  v49 = a3;
  v57 = type metadata accessor for Logger();
  v55 = *(v57 - 8);
  v7 = *(v55 + 64);
  v8 = __chkstk_darwin(v57);
  v50 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v53 = &v45 - v10;
  v11 = type metadata accessor for JSONDecodingOptions();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v54 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData();
  v48 = *(v54 - 8);
  v13 = *(v48 + 64);
  v14 = __chkstk_darwin(v54);
  v15 = __chkstk_darwin(v14);
  v51 = &v45 - v16;
  __chkstk_darwin(v15);
  v18 = &v45 - v17;
  v19 = type metadata accessor for URL();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = swift_allocObject();
  *(v58 + 16) = a4;
  v56 = a4;
  _Block_copy(a4);
  v52 = a1;
  static NDOResponseMapper.Warranty.deviceCoverageCachePathForSerial(_:)();
  v24 = Data.init(contentsOf:options:)();
  v26 = v25;
  v46 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a2;
  v27 = v24;
  (*(v20 + 8))(v23, v19);
  sub_100034F60(v27, v26);
  JSONDecodingOptions.init()();
  sub_10004F6A8(&qword_1000A7298, &type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData);
  v28 = v51;
  Message.init(jsonUTF8Data:options:)();
  v47 = v26;
  v29 = v48;
  v30 = *(v48 + 32);
  v31 = v18;
  v45 = v18;
  v32 = v28;
  v33 = v54;
  v30(v18, v32, v54);
  v34 = v46;
  (*(v29 + 16))(v46, v31, v33);
  v35 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v36 = (v13 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  v38 = v58;
  *(v37 + 16) = sub_10004F6F4;
  *(v37 + 24) = v38;
  v39 = v37 + v35;
  v40 = v54;
  v30(v39, v34, v54);
  v41 = (v37 + v36);
  v42 = v53;
  *v41 = v52;
  v41[1] = v42;
  v43 = swift_allocObject();
  *(v43 + 16) = sub_10004F6FC;
  *(v43 + 24) = v37;

  sub_10005BD64(sub_10004F6F0, v43);

  sub_100003EBC(v27, v47);
  (*(v29 + 8))(v45, v40);
}

uint64_t sub_10004F080()
{
  v1 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10004F15C(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return sub_10004C968(a1, a2, v7, v8, v2 + v6, v10, v11);
}

uint64_t sub_10004F210(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void type metadata accessor for FileAttributeKey()
{
  if (!qword_1000A7B98)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1000A7B98);
    }
  }
}

uint64_t sub_10004F298(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v1 + 24);

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_10004F390(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a3(0) - 8);
  v8 = *(v4 + 16);
  v9 = *(v4 + 24);
  v10 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a4(a1, a2, v8, v9, v10);
}

uint64_t sub_10004F42C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10001EFA0(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10004F4A8()
{
  result = qword_1000A7B88;
  if (!qword_1000A7B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7B88);
  }

  return result;
}

uint64_t sub_10004F4FC(uint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  v7._countAndFlagsBits = a1;
  v7._object = a2;
  return Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.urlString(for:)(v7).value._countAndFlagsBits;
}

uint64_t sub_10004F570(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10004F6A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10004F724()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ndoagent19NDOCheckInScheduler_runtimeTaskId);
  v2 = *(v0 + OBJC_IVAR____TtC8ndoagent19NDOCheckInScheduler_runtimeTaskId + 8);

  return v1;
}

uint64_t sub_10004F77C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ndoagent19NDOCheckInScheduler_plistTaskId);
  v2 = *(v0 + OBJC_IVAR____TtC8ndoagent19NDOCheckInScheduler_plistTaskId + 8);

  return v1;
}

id sub_10004F7DC(uint64_t a1, uint64_t *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC8ndoagent19NDOCheckInScheduler_runtimeTaskId];
  *v6 = 0xD000000000000034;
  *(v6 + 1) = 0x800000010008C2B0;
  v7 = &v5[OBJC_IVAR____TtC8ndoagent19NDOCheckInScheduler_plistTaskId];
  *v7 = 0xD000000000000032;
  *(v7 + 1) = 0x800000010008C2F0;
  *&v5[OBJC_IVAR____TtC8ndoagent19NDOCheckInScheduler_backgroundTasksHelper] = a1;
  sub_10001EC4C(a2, &v5[OBJC_IVAR____TtC8ndoagent19NDOCheckInScheduler_keyValueStore]);
  v10.receiver = v5;
  v10.super_class = v2;
  v8 = objc_msgSendSuper2(&v10, "init");
  sub_100001E74(a2);
  return v8;
}

id sub_10004F8AC(uint64_t a1, uint64_t *a2)
{
  v4 = &v2[OBJC_IVAR____TtC8ndoagent19NDOCheckInScheduler_runtimeTaskId];
  *v4 = 0xD000000000000034;
  *(v4 + 1) = 0x800000010008C2B0;
  v5 = &v2[OBJC_IVAR____TtC8ndoagent19NDOCheckInScheduler_plistTaskId];
  *v5 = 0xD000000000000032;
  *(v5 + 1) = 0x800000010008C2F0;
  *&v2[OBJC_IVAR____TtC8ndoagent19NDOCheckInScheduler_backgroundTasksHelper] = a1;
  sub_10001EC4C(a2, &v2[OBJC_IVAR____TtC8ndoagent19NDOCheckInScheduler_keyValueStore]);
  v8.receiver = v2;
  v8.super_class = type metadata accessor for NDOCheckInScheduler();
  v6 = objc_msgSendSuper2(&v8, "init");
  sub_100001E74(a2);
  return v6;
}

uint64_t sub_10004F98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v44 = a3;
  v45 = a4;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = __chkstk_darwin(v8);
  v39 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v38 = &v38 - v14;
  __chkstk_darwin(v13);
  v16 = &v38 - v15;
  v17 = sub_100049C1C();
  v41 = v9[2];
  v42 = v17;
  v41(v16);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Registering checkIn tasks", v20, 2u);
  }

  v40 = v9[1];
  v40(v16, v8);
  v21 = *(v5 + OBJC_IVAR____TtC8ndoagent19NDOCheckInScheduler_backgroundTasksHelper);
  v43 = v5;
  v22 = *(v5 + OBJC_IVAR____TtC8ndoagent19NDOCheckInScheduler_plistTaskId);
  v23 = *(v5 + OBJC_IVAR____TtC8ndoagent19NDOCheckInScheduler_plistTaskId + 8);
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  *(v24 + 24) = a2;
  v25 = *(*v21 + 120);

  LOBYTE(v22) = v25(v22, v23, sub_10004FDB4, v24);

  if ((v22 & 1) == 0)
  {
    v26 = v38;
    (v41)(v38, v42, v8);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Failed to register checkIn on boot", v29, 2u);
    }

    v40(v26, v8);
  }

  v30 = *(v43 + OBJC_IVAR____TtC8ndoagent19NDOCheckInScheduler_runtimeTaskId);
  v31 = *(v43 + OBJC_IVAR____TtC8ndoagent19NDOCheckInScheduler_runtimeTaskId + 8);
  v32 = swift_allocObject();
  *(v32 + 16) = v44;
  *(v32 + 24) = v45;

  LOBYTE(v30) = v25(v30, v31, sub_10004FFD0, v32);

  if ((v30 & 1) == 0)
  {
    v34 = v39;
    (v41)(v39, v42, v8);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Failed to register runtime checkIn", v37, 2u);
    }

    return (v40)(v34, v8);
  }

  return result;
}

id sub_10004FDD8(void *a1, void (*a2)(void), uint64_t a3, const char *a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100049C1C();
  (*(v9 + 16))(v12, v13, v8);
  v14 = a1;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v26[1] = a3;
    v18 = a2;
    v19 = a4;
    v20 = v17;
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    *(v20 + 4) = v14;
    *v21 = v14;
    v22 = v14;
    v23 = v19;
    a2 = v18;
    _os_log_impl(&_mh_execute_header, v15, v16, v23, v20, 0xCu);
    sub_1000035B8(v21, &qword_1000A6F40, &qword_10007E690);
  }

  v24 = (*(v9 + 8))(v12, v8);
  a2(v24);
  return [v14 setTaskCompleted];
}

uint64_t sub_10004FFF4()
{
  v1 = type metadata accessor for NDOKeyValueStoreKey();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_10001A078(&qword_1000A72A0, &qword_10007C010);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v21[-v8];
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (((*(**(v0 + OBJC_IVAR____TtC8ndoagent19NDOCheckInScheduler_backgroundTasksHelper) + 128))(*(v0 + OBJC_IVAR____TtC8ndoagent19NDOCheckInScheduler_runtimeTaskId), *(v0 + OBJC_IVAR____TtC8ndoagent19NDOCheckInScheduler_runtimeTaskId + 8)) & 1) == 0)
  {
    return 0;
  }

  v15 = *(v0 + OBJC_IVAR____TtC8ndoagent19NDOCheckInScheduler_keyValueStore + 32);
  sub_100001F3C((v0 + OBJC_IVAR____TtC8ndoagent19NDOCheckInScheduler_keyValueStore), *(v0 + OBJC_IVAR____TtC8ndoagent19NDOCheckInScheduler_keyValueStore + 24));
  (*(v2 + 104))(v5, enum case for NDOKeyValueStoreKey.nextCheckInEpoch(_:), v1);
  dispatch thunk of NDOKeyValueStoreReader.object(for:)();
  (*(v2 + 8))(v5, v1);
  if (!v22)
  {
    sub_1000035B8(v21, &qword_1000A6FD8, &unk_10007DAC0);
    (*(v11 + 56))(v9, 1, 1, v10);
    goto LABEL_9;
  }

  v16 = swift_dynamicCast();
  (*(v11 + 56))(v9, v16 ^ 1u, 1, v10);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
LABEL_9:
    sub_1000035B8(v9, &qword_1000A72A0, &qword_10007C010);
    return 0;
  }

  (*(v11 + 32))(v14, v9, v10);
  Date.timeIntervalSince1970.getter();
  v18 = v17;
  v19 = v17;
  result = (*(v11 + 8))(v14, v10);
  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v18 > -9.22337204e18)
  {
    if (v18 < 9.22337204e18)
    {
      return v18;
    }

    goto LABEL_13;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_100050394(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = type metadata accessor for Logger();
  v19 = *(v7 - 8);
  v20 = v7;
  v8 = *(v19 + 64);
  __chkstk_darwin(v7);
  v18[2] = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NDOKeyValueStoreKey();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(**(v1 + OBJC_IVAR____TtC8ndoagent19NDOCheckInScheduler_backgroundTasksHelper) + 136))(*(v2 + OBJC_IVAR____TtC8ndoagent19NDOCheckInScheduler_runtimeTaskId), *(v2 + OBJC_IVAR____TtC8ndoagent19NDOCheckInScheduler_runtimeTaskId + 8), a1);
  v15 = *(v1 + OBJC_IVAR____TtC8ndoagent19NDOCheckInScheduler_keyValueStore + 40);
  sub_100001F3C((v2 + OBJC_IVAR____TtC8ndoagent19NDOCheckInScheduler_keyValueStore), *(v2 + OBJC_IVAR____TtC8ndoagent19NDOCheckInScheduler_keyValueStore + 24));
  v21[3] = v4;
  v16 = sub_100027B84(v21);
  (*(v5 + 16))(v16, a1, v4);
  (*(v11 + 104))(v14, enum case for NDOKeyValueStoreKey.nextCheckInEpoch(_:), v10);
  dispatch thunk of NDOKeyValueStoreWriter.setObject(_:for:)();
  (*(v11 + 8))(v14, v10);
  return sub_1000035B8(v21, &qword_1000A6FD8, &unk_10007DAC0);
}

id sub_100050894()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NDOCheckInScheduler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t NDOAction.url.getter()
{
  if (*(v0 + 32) > 6u)
  {
    return 0;
  }

  v3 = v0;
  v2 = *v0;
  v1 = v3[1];

  return v2;
}

uint64_t sub_100050984()
{
  v1 = *v0;
  v2 = 0x6265577472617473;
  v3 = 0x656A655272657375;
  if (v1 != 6)
  {
    v3 = 0x6553646E61707865;
  }

  v4 = 0x437373696D736964;
  if (v1 != 4)
  {
    v4 = 0x6D73694472657375;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x687461506E65706FLL;
  if (v1 != 2)
  {
    v5 = 0x6157656369766564;
  }

  if (*v0)
  {
    v2 = 0x736D417472617473;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100050AB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100052494(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100050AD8(uint64_t a1)
{
  v2 = sub_10005295C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100050B14(uint64_t a1)
{
  v2 = sub_10005295C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100050B50(uint64_t a1)
{
  v2 = sub_100052B54();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100050B8C(uint64_t a1)
{
  v2 = sub_100052B54();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100050BC8(uint64_t a1)
{
  v2 = sub_100052B00();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100050C04(uint64_t a1)
{
  v2 = sub_100052B00();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100050C40(uint64_t a1)
{
  v2 = sub_1000529B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100050C7C(uint64_t a1)
{
  v2 = sub_1000529B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100050CB8(uint64_t a1)
{
  v2 = sub_100052BA8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100050CF4(uint64_t a1)
{
  v2 = sub_100052BA8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100050D30(uint64_t a1)
{
  v2 = sub_100052BFC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100050D6C(uint64_t a1)
{
  v2 = sub_100052BFC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100050DA8(uint64_t a1)
{
  v2 = sub_100052C50();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100050DE4(uint64_t a1)
{
  v2 = sub_100052C50();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100050E20(uint64_t a1)
{
  v2 = sub_100052AAC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100050E5C(uint64_t a1)
{
  v2 = sub_100052AAC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100050E98(uint64_t a1)
{
  v2 = sub_100052A04();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100050ED4(uint64_t a1)
{
  v2 = sub_100052A04();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NDOAction.encode(to:)(void *a1)
{
  v2 = sub_10001A078(&qword_1000A7C08, &qword_10007F310);
  v69 = *(v2 - 8);
  v70 = v2;
  v3 = *(v69 + 64);
  __chkstk_darwin(v2);
  v67 = &v52 - v4;
  v5 = sub_10001A078(&qword_1000A7C10, &qword_10007F318);
  v71 = *(v5 - 8);
  v72 = v5;
  v6 = *(v71 + 64);
  __chkstk_darwin(v5);
  v68 = &v52 - v7;
  v8 = sub_10001A078(&qword_1000A7C18, &qword_10007F320);
  v65 = *(v8 - 8);
  v66 = v8;
  v9 = *(v65 + 64);
  __chkstk_darwin(v8);
  v64 = &v52 - v10;
  v11 = sub_10001A078(&qword_1000A7C20, &qword_10007F328);
  v62 = *(v11 - 8);
  v63 = v11;
  v12 = *(v62 + 64);
  __chkstk_darwin(v11);
  v61 = &v52 - v13;
  v60 = sub_10001A078(&qword_1000A7C28, &qword_10007F330);
  v59 = *(v60 - 8);
  v14 = *(v59 + 64);
  __chkstk_darwin(v60);
  v58 = &v52 - v15;
  v57 = sub_10001A078(&qword_1000A7C30, &qword_10007F338);
  v56 = *(v57 - 8);
  v16 = *(v56 + 64);
  __chkstk_darwin(v57);
  v18 = &v52 - v17;
  v55 = sub_10001A078(&qword_1000A7C38, &qword_10007F340);
  v54 = *(v55 - 8);
  v19 = *(v54 + 64);
  __chkstk_darwin(v55);
  v21 = &v52 - v20;
  v22 = sub_10001A078(&qword_1000A7C40, &qword_10007F348);
  v53 = *(v22 - 8);
  v23 = *(v53 + 64);
  __chkstk_darwin(v22);
  v25 = &v52 - v24;
  v26 = sub_10001A078(&qword_1000A7C48, &qword_10007F350);
  v27 = *(v26 - 8);
  v74 = v26;
  v75 = v27;
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = &v52 - v29;
  v31 = a1[4];
  sub_100001F3C(a1, a1[3]);
  sub_10005295C();
  v32 = v30;
  v33 = v73;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v34 = *(v33 + 32);
  if (v34 > 3)
  {
    if (*(v33 + 32) > 5u)
    {
      v35 = v74;
      if (v34 != 6)
      {
        LOBYTE(v76) = 7;
        sub_1000529B0();
        v51 = v67;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v69 + 8))(v51, v70);
        return (*(v75 + 8))(v32, v35);
      }

      LOBYTE(v76) = 6;
      sub_100052A04();
      v37 = v68;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v45 = v33[1];
      v76 = *v33;
      v77 = v45;
      sub_100052A58();
      v39 = v72;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v40 = v71;
    }

    else
    {
      v35 = v74;
      if (v34 == 4)
      {
        LOBYTE(v76) = 4;
        sub_100052B00();
        v37 = v61;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v38 = v33[1];
        v76 = *v33;
        v77 = v38;
        sub_100052A58();
        v39 = v63;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v40 = v62;
      }

      else
      {
        LOBYTE(v76) = 5;
        sub_100052AAC();
        v37 = v64;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v49 = v33[1];
        v76 = *v33;
        v77 = v49;
        sub_100052A58();
        v39 = v66;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v40 = v65;
      }
    }
  }

  else
  {
    if (*(v33 + 32) <= 1u)
    {
      if (*(v33 + 32))
      {
        LOBYTE(v76) = 1;
        sub_100052BFC();
        v46 = v74;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v47 = v33[1];
        v76 = *v33;
        v77 = v47;
        sub_100052A58();
        v48 = v55;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        (*(v54 + 8))(v21, v48);
        return (*(v75 + 8))(v30, v46);
      }

      LOBYTE(v76) = 0;
      sub_100052C50();
      v35 = v74;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v36 = v33[1];
      v76 = *v33;
      v77 = v36;
      sub_100052A58();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v53 + 8))(v25, v22);
      return (*(v75 + 8))(v30, v35);
    }

    if (v34 == 2)
    {
      LOBYTE(v76) = 2;
      sub_100052BA8();
      v41 = v74;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v42 = v33[1];
      v76 = *v33;
      v77 = v42;
      sub_100052A58();
      v43 = v57;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v56 + 8))(v18, v43);
      return (*(v75 + 8))(v30, v41);
    }

    LOBYTE(v76) = 3;
    sub_100052B54();
    v37 = v58;
    v35 = v74;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v50 = v33[1];
    v76 = *v33;
    v77 = v50;
    sub_100052A58();
    v39 = v60;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v40 = v59;
  }

  (*(v40 + 8))(v37, v39);
  return (*(v75 + 8))(v30, v35);
}

void NDOAction.hash(into:)(__int128 *a1)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = *(v1 + 32);
  if (v7 > 3)
  {
    if (*(v1 + 32) > 5u)
    {
      if (v7 != 6)
      {
        Hasher._combine(_:)(7uLL);
        return;
      }

      v8 = 6;
    }

    else if (v7 == 4)
    {
      v8 = 4;
    }

    else
    {
      v8 = 5;
    }
  }

  else if (*(v1 + 32) > 1u)
  {
    if (v7 == 2)
    {
      v8 = 2;
    }

    else
    {
      v8 = 3;
    }
  }

  else
  {
    v8 = v7 != 0;
  }

  Hasher._combine(_:)(v8);
  if (v3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  sub_100052328(a1, v6);

  sub_100052328(a1, v5);
}

Swift::Int NDOAction.hashValue.getter()
{
  Hasher.init(_seed:)();
  NDOAction.hash(into:)(v1);
  return Hasher._finalize()();
}

double NDOAction.init(from:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *&result = sub_100052CA4(a1, v6).n128_u64[0];
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

Swift::Int sub_100051A5C()
{
  Hasher.init(_seed:)();
  NDOAction.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_100051AB0(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8 = a2[2].i8[0];
  return _s8ndoagent9NDOActionO21__derived_enum_equalsySbAC_ACtFZ_0(v5, v7) & 1;
}

uint64_t sub_100051B04()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0x4C79615079646F62;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_100051B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100053ABC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100051B98(uint64_t a1)
{
  v2 = sub_100053A68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100051BD4(uint64_t a1)
{
  v2 = sub_100053A68();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100051C10(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_10001CEA0(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t NDOActionData.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a5;
  v17 = a4;
  v7 = sub_10001A078(&qword_1000A7C58, &qword_10007F358);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  v12 = a1[4];
  sub_100001F3C(a1, a1[3]);
  sub_100053A68();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v19) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v5)
  {
    v13 = v16;
    v19 = v17;
    v18 = 1;
    sub_10001A078(&unk_1000A7960, &qword_10007F360);
    sub_100054C08(&qword_1000A7C60);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v19 = v13;
    v18 = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

void NDOActionData.hash(into:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  sub_100052328(a1, a4);

  sub_100052328(a1, a5);
}

Swift::Int NDOActionData.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  sub_100052328(v8, a3);
  sub_100052328(v8, a4);
  return Hasher._finalize()();
}

uint64_t NDOActionData.init(from:)(uint64_t *a1)
{
  result = sub_100053BE0(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

Swift::Int sub_100052108()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  Hasher.init(_seed:)();
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  sub_100052328(v6, v4);
  sub_100052328(v6, v3);
  return Hasher._finalize()();
}

void sub_10005219C(__int128 *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  if (v1[1])
  {
    v5 = *v1;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  sub_100052328(a1, v3);

  sub_100052328(a1, v4);
}

Swift::Int sub_10005222C()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  Hasher.init(_seed:)();
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  sub_100052328(v6, v4);
  sub_100052328(v6, v3);
  return Hasher._finalize()();
}

uint64_t sub_1000522BC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100053BE0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

void sub_100052328(__int128 *a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  for (i = 0; v6; v8 ^= Hasher._finalize()())
  {
    v10 = i;
LABEL_9:
    v11 = *(a2 + 48);
    v12 = (v10 << 10) | (16 * __clz(__rbit64(v6)));
    v13 = *(v11 + v12);
    v14 = *(v11 + v12 + 8);
    v6 &= v6 - 1;
    v15 = (*(a2 + 56) + v12);
    v16 = *v15;
    v17 = v15[1];
    v21 = a1[2];
    v22 = a1[3];
    v23 = *(a1 + 8);
    v19 = *a1;
    v20 = a1[1];

    String.hash(into:)();

    String.hash(into:)();
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      Hasher._combine(_:)(v8);
      return;
    }

    v6 = *(v3 + 8 * v10);
    ++i;
    if (v6)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_100052494(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6265577472617473 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736D417472617473 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x687461506E65706FLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6157656369766564 && a2 == 0xEE0079746E617272 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x437373696D736964 && a2 == 0xEE006F6D6F725063 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D73694472657375 && a2 == 0xEB00000000737369 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656A655272657375 && a2 == 0xEA00000000007463 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6553646E61707865 && a2 == 0xED00006E6F697463)
  {

    return 7;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t _s8ndoagent9NDOActionO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t *a1, int8x16_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *(a1 + 32);
  if (v8 > 3)
  {
    if (v8 > 5)
    {
      if (v8 != 6)
      {
        if (a2[2].i8[0] == 7)
        {
          v12 = vorrq_s8(*a2, a2[1]);
          if (!*&vorr_s8(*v12.i8, *&vextq_s8(v12, v12, 8uLL)))
          {
            return 1;
          }
        }

        return 0;
      }

      if (a2[2].i8[0] != 6)
      {
        return 0;
      }
    }

    else if (v8 == 4)
    {
      if (a2[2].i8[0] != 4)
      {
        return 0;
      }
    }

    else if (a2[2].i8[0] != 5)
    {
      return 0;
    }
  }

  else if (v8 > 1)
  {
    if (v8 == 2)
    {
      if (a2[2].i8[0] != 2)
      {
        return 0;
      }
    }

    else if (a2[2].i8[0] != 3)
    {
      return 0;
    }
  }

  else if (v8)
  {
    if (a2[2].i8[0] != 1)
    {
      return 0;
    }
  }

  else if (a2[2].i8[0])
  {
    return 0;
  }

  v9 = a2->i64[1];
  v10 = a2[1].i64[0];
  v11 = a2[1].i64[1];
  if (!v5)
  {
    if (!v9)
    {
      return (sub_100051C10(v6, v10) & 1) != 0 && (sub_100051C10(v7, v11) & 1) != 0;
    }

    return 0;
  }

  if (!v9 || (v4 != a2->i64[0] || v5 != v9) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return (sub_100051C10(v6, v10) & 1) != 0 && (sub_100051C10(v7, v11) & 1) != 0;
}

uint64_t _s8ndoagent13NDOActionDataV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    if (!a6)
    {
      return 0;
    }

    if (a1 != a5 || a2 != a6)
    {
      v10 = a3;
      v11 = a7;
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a3 = v10;
      a7 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (a6)
  {
    return 0;
  }

  if ((sub_100051C10(a3, a7) & 1) == 0)
  {
    return 0;
  }

  return sub_100051C10(a4, a8);
}

unint64_t sub_10005295C()
{
  result = qword_1000AD790;
  if (!qword_1000AD790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD790);
  }

  return result;
}

unint64_t sub_1000529B0()
{
  result = qword_1000AD798;
  if (!qword_1000AD798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD798);
  }

  return result;
}

unint64_t sub_100052A04()
{
  result = qword_1000AD7A0;
  if (!qword_1000AD7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD7A0);
  }

  return result;
}

unint64_t sub_100052A58()
{
  result = qword_1000A7C50;
  if (!qword_1000A7C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7C50);
  }

  return result;
}

unint64_t sub_100052AAC()
{
  result = qword_1000AD7A8;
  if (!qword_1000AD7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD7A8);
  }

  return result;
}

unint64_t sub_100052B00()
{
  result = qword_1000AD7B0;
  if (!qword_1000AD7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD7B0);
  }

  return result;
}

unint64_t sub_100052B54()
{
  result = qword_1000AD7B8;
  if (!qword_1000AD7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD7B8);
  }

  return result;
}

unint64_t sub_100052BA8()
{
  result = qword_1000AD7C0;
  if (!qword_1000AD7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD7C0);
  }

  return result;
}

unint64_t sub_100052BFC()
{
  result = qword_1000AD7C8;
  if (!qword_1000AD7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD7C8);
  }

  return result;
}

unint64_t sub_100052C50()
{
  result = qword_1000AD7D0;
  if (!qword_1000AD7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AD7D0);
  }

  return result;
}

__n128 sub_100052CA4@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v83 = sub_10001A078(&qword_1000A7C80, &qword_100080188);
  v80 = *(v83 - 8);
  v3 = *(v80 + 64);
  __chkstk_darwin(v83);
  v92.n128_u64[0] = v67 - v4;
  v5 = sub_10001A078(&qword_1000A7C88, &qword_100080190);
  v84 = *(v5 - 8);
  v85 = v5;
  v6 = *(v84 + 64);
  __chkstk_darwin(v5);
  v91 = v67 - v7;
  v8 = sub_10001A078(&qword_1000A7C90, &qword_100080198);
  v81 = *(v8 - 8);
  v82 = v8;
  v9 = *(v81 + 64);
  __chkstk_darwin(v8);
  v88 = v67 - v10;
  v78 = sub_10001A078(&qword_1000A7C98, &qword_1000801A0);
  v79 = *(v78 - 8);
  v11 = *(v79 + 64);
  __chkstk_darwin(v78);
  v90 = v67 - v12;
  v77 = sub_10001A078(&qword_1000A7CA0, &qword_1000801A8);
  v76 = *(v77 - 8);
  v13 = *(v76 + 64);
  __chkstk_darwin(v77);
  v87 = v67 - v14;
  v75 = sub_10001A078(&qword_1000A7CA8, &qword_1000801B0);
  v74 = *(v75 - 8);
  v15 = *(v74 + 64);
  __chkstk_darwin(v75);
  v86 = v67 - v16;
  v73 = sub_10001A078(&qword_1000A7CB0, &qword_1000801B8);
  v72 = *(v73 - 8);
  v17 = *(v72 + 64);
  __chkstk_darwin(v73);
  v19 = v67 - v18;
  v20 = sub_10001A078(&qword_1000A7CB8, &qword_1000801C0);
  v71 = *(v20 - 8);
  v21 = *(v71 + 64);
  __chkstk_darwin(v20);
  v23 = v67 - v22;
  v24 = sub_10001A078(&qword_1000A7CC0, &qword_1000801C8);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = v67 - v27;
  v30 = a1[3];
  v29 = a1[4];
  v96 = a1;
  sub_100001F3C(a1, v30);
  sub_10005295C();
  v31 = v93;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v31)
  {
    goto LABEL_12;
  }

  v69 = v20;
  v32 = v90;
  v70 = 0;
  v33 = v91;
  v34 = v92.n128_u64[0];
  *&v93 = v25;
  v35 = KeyedDecodingContainer.allKeys.getter();
  if (*(v35 + 16) != 1 || (v36 = *(v35 + 32), v36 == 8))
  {
    v39 = v28;
    v40 = type metadata accessor for DecodingError();
    swift_allocError();
    v42 = v41;
    v43 = *(sub_10001A078(&qword_1000A7260, &unk_1000801D0) + 48);
    *v42 = &type metadata for NDOAction;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v40 - 8) + 104))(v42, enum case for DecodingError.typeMismatch(_:), v40);
    swift_willThrow();
    goto LABEL_10;
  }

  if (*(v35 + 32) <= 3u)
  {
    v37 = v70;
    if (*(v35 + 32) <= 1u)
    {
      v92.n128_u64[0] = v28;
      if (!v36)
      {
        v68 = 0;
        LOBYTE(v94) = 0;
        sub_100052C50();
        v38 = v92.n128_u64[0];
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (v37)
        {
          (*(v93 + 8))(v38, v24);
LABEL_11:
          swift_unknownObjectRelease();
LABEL_12:
          sub_100001E74(v96);
          return result;
        }

        sub_100054C74();
        v64 = v69;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v71 + 8))(v23, v64);
        (*(v93 + 8))(v38, v24);
        swift_unknownObjectRelease();
        goto LABEL_44;
      }

      LOBYTE(v94) = 1;
      sub_100052BFC();
      v39 = v92.n128_u64[0];
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v37)
      {
        sub_100054C74();
        v65 = v73;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v68 = v36;
        (*(v72 + 8))(v19, v65);
        (*(v93 + 8))(v92.n128_u64[0], v24);
        swift_unknownObjectRelease();
LABEL_44:
        v92 = v95;
        v93 = v94;
        v46 = v89;
        goto LABEL_45;
      }

LABEL_10:
      (*(v93 + 8))(v39, v24);
      goto LABEL_11;
    }

    v68 = *(v35 + 32);
    v45 = v36 == 2;
    v46 = v89;
    if (v45)
    {
      LOBYTE(v94) = 2;
      sub_100052BA8();
      v60 = v86;
      v51 = v37;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v49 = v93;
      if (!v51)
      {
        sub_100054C74();
        v52 = v75;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v53 = &v97;
LABEL_22:
        (*(*(v53 - 32) + 8))(v60, v52);
        (*(v49 + 8))(v28, v24);
LABEL_42:
        swift_unknownObjectRelease();
        v66 = v95;
        v93 = v94;
        goto LABEL_43;
      }
    }

    else
    {
      LOBYTE(v94) = 3;
      sub_100052B54();
      v60 = v87;
      v61 = v37;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v49 = v93;
      if (!v61)
      {
        sub_100054C74();
        v52 = v77;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v53 = &v98;
        goto LABEL_22;
      }
    }

LABEL_35:
    (*(v49 + 8))(v28, v24);
    goto LABEL_11;
  }

  v68 = *(v35 + 32);
  v67[1] = v35;
  if (v36 <= 5)
  {
    v45 = v36 == 4;
    v46 = v89;
    if (v45)
    {
      LOBYTE(v94) = 4;
      sub_100052B00();
      v47 = v32;
      v48 = v70;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v49 = v93;
      if (v48)
      {
        goto LABEL_35;
      }

      sub_100054C74();
      v50 = v78;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v79 + 8))(v47, v50);
    }

    else
    {
      LOBYTE(v94) = 5;
      sub_100052AAC();
      v57 = v88;
      v58 = v70;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v49 = v93;
      if (v58)
      {
        goto LABEL_35;
      }

      sub_100054C74();
      v59 = v82;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v81 + 8))(v57, v59);
    }

    (*(v49 + 8))(v28, v24);
    goto LABEL_42;
  }

  v45 = v36 == 6;
  v46 = v89;
  if (v45)
  {
    LOBYTE(v94) = 6;
    sub_100052A04();
    v54 = v70;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v55 = v93;
    if (!v54)
    {
      sub_100054C74();
      v56 = v85;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v84 + 8))(v33, v56);
      (*(v55 + 8))(v28, v24);
      goto LABEL_42;
    }

LABEL_37:
    (*(v93 + 8))(v28, v24);
    goto LABEL_11;
  }

  LOBYTE(v94) = 7;
  sub_1000529B0();
  v62 = v70;
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v63 = v93;
  if (v62)
  {
    goto LABEL_37;
  }

  (*(v80 + 8))(v34, v83);
  (*(v63 + 8))(v28, v24);
  swift_unknownObjectRelease();
  v66 = 0uLL;
  v93 = 0u;
LABEL_43:
  v92 = v66;
LABEL_45:
  sub_100001E74(v96);
  result = v92;
  *v46 = v93;
  *(v46 + 16) = result;
  *(v46 + 32) = v68;
  return result;
}

unint64_t sub_100053A68()
{
  result = qword_1000AD7D8[0];
  if (!qword_1000AD7D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AD7D8);
  }

  return result;
}

uint64_t sub_100053ABC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010008C3C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4C79615079646F62 && a2 == 0xEB0000000064616FLL)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_100053BE0(uint64_t *a1)
{
  v2 = sub_10001A078(&qword_1000A7C70, &qword_100080180);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  sub_100001F3C(a1, a1[3]);
  sub_100053A68();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  sub_10001A078(&unk_1000A7960, &qword_10007F360);
  v11 = 1;
  v10 = sub_100054C08(&qword_1000A7C78);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = 2;
  v10 = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v6, v2);
  sub_100001E74(a1);
  return v9;
}

unint64_t sub_100053E74()
{
  result = qword_1000A7C68;
  if (!qword_1000A7C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7C68);
  }

  return result;
}

__n128 sub_100053EC8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100053EDC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 33))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 32);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100053F24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_100053F6C(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    *(result + 8) = 0;
    LOBYTE(a2) = 7;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_100053F98(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100053FE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NDOActionData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NDOActionData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100054214()
{
  result = qword_1000ADDE0[0];
  if (!qword_1000ADDE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000ADDE0);
  }

  return result;
}

unint64_t sub_10005426C()
{
  result = qword_1000ADFF0[0];
  if (!qword_1000ADFF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000ADFF0);
  }

  return result;
}

unint64_t sub_1000542C4()
{
  result = qword_1000AE200[0];
  if (!qword_1000AE200[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AE200);
  }

  return result;
}

unint64_t sub_10005431C()
{
  result = qword_1000AE410[0];
  if (!qword_1000AE410[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AE410);
  }

  return result;
}

unint64_t sub_100054374()
{
  result = qword_1000AE620[0];
  if (!qword_1000AE620[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AE620);
  }

  return result;
}

unint64_t sub_1000543CC()
{
  result = qword_1000AE830[0];
  if (!qword_1000AE830[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AE830);
  }

  return result;
}

unint64_t sub_100054424()
{
  result = qword_1000AEA40[0];
  if (!qword_1000AEA40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AEA40);
  }

  return result;
}

unint64_t sub_10005447C()
{
  result = qword_1000AEC50[0];
  if (!qword_1000AEC50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AEC50);
  }

  return result;
}

unint64_t sub_1000544D4()
{
  result = qword_1000AEE60[0];
  if (!qword_1000AEE60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AEE60);
  }

  return result;
}

unint64_t sub_10005452C()
{
  result = qword_1000AEF70;
  if (!qword_1000AEF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEF70);
  }

  return result;
}

unint64_t sub_100054584()
{
  result = qword_1000AEF78;
  if (!qword_1000AEF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AEF78);
  }

  return result;
}

unint64_t sub_1000545DC()
{
  result = qword_1000AF000;
  if (!qword_1000AF000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF000);
  }

  return result;
}

unint64_t sub_100054634()
{
  result = qword_1000AF008[0];
  if (!qword_1000AF008[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AF008);
  }

  return result;
}

unint64_t sub_10005468C()
{
  result = qword_1000AF090;
  if (!qword_1000AF090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF090);
  }

  return result;
}

unint64_t sub_1000546E4()
{
  result = qword_1000AF098[0];
  if (!qword_1000AF098[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AF098);
  }

  return result;
}

unint64_t sub_10005473C()
{
  result = qword_1000AF120;
  if (!qword_1000AF120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF120);
  }

  return result;
}

unint64_t sub_100054794()
{
  result = qword_1000AF128[0];
  if (!qword_1000AF128[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AF128);
  }

  return result;
}

unint64_t sub_1000547EC()
{
  result = qword_1000AF1B0;
  if (!qword_1000AF1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF1B0);
  }

  return result;
}

unint64_t sub_100054844()
{
  result = qword_1000AF1B8[0];
  if (!qword_1000AF1B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AF1B8);
  }

  return result;
}

unint64_t sub_10005489C()
{
  result = qword_1000AF240;
  if (!qword_1000AF240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF240);
  }

  return result;
}

unint64_t sub_1000548F4()
{
  result = qword_1000AF248[0];
  if (!qword_1000AF248[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AF248);
  }

  return result;
}

unint64_t sub_10005494C()
{
  result = qword_1000AF2D0;
  if (!qword_1000AF2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF2D0);
  }

  return result;
}

unint64_t sub_1000549A4()
{
  result = qword_1000AF2D8[0];
  if (!qword_1000AF2D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AF2D8);
  }

  return result;
}

unint64_t sub_1000549FC()
{
  result = qword_1000AF360;
  if (!qword_1000AF360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF360);
  }

  return result;
}

unint64_t sub_100054A54()
{
  result = qword_1000AF368[0];
  if (!qword_1000AF368[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AF368);
  }

  return result;
}

unint64_t sub_100054AAC()
{
  result = qword_1000AF3F0;
  if (!qword_1000AF3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF3F0);
  }

  return result;
}

unint64_t sub_100054B04()
{
  result = qword_1000AF3F8[0];
  if (!qword_1000AF3F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AF3F8);
  }

  return result;
}

unint64_t sub_100054B5C()
{
  result = qword_1000AF480;
  if (!qword_1000AF480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF480);
  }

  return result;
}

unint64_t sub_100054BB4()
{
  result = qword_1000AF488[0];
  if (!qword_1000AF488[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AF488);
  }

  return result;
}

uint64_t sub_100054C08(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10001EFA0(&unk_1000A7960, &qword_10007F360);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100054C74()
{
  result = qword_1000A7CC8;
  if (!qword_1000A7CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7CC8);
  }

  return result;
}

uint64_t NDOItem.action.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 112);
  v19[6] = *(v1 + 96);
  v19[7] = v3;
  v19[8] = *(v1 + 128);
  v20 = *(v1 + 144);
  v4 = *(v1 + 48);
  v19[2] = *(v1 + 32);
  v19[3] = v4;
  v5 = *(v1 + 80);
  v19[4] = *(v1 + 64);
  v19[5] = v5;
  v6 = *(v1 + 16);
  v19[0] = *v1;
  v19[1] = v6;
  v7 = sub_100038CF0(v19);
  v8 = sub_10000574C(v19);
  v9 = qword_100080FD8[v7];
  v10 = qword_100080FF8[v7];
  v11 = qword_100081018[v7];
  v12 = qword_100081058[v7];
  v13 = *(v8 + qword_100081038[v7]);
  v14 = *(v8 + v11);
  v15 = *(v8 + v10);
  v16 = *(v8 + v9);
  v17 = *(v8 + v12);
  result = sub_100021230(v16, v15, v14, v13, v17);
  *a1 = v16;
  *(a1 + 8) = v15;
  *(a1 + 16) = v14;
  *(a1 + 24) = v13;
  *(a1 + 32) = v17;
  return result;
}

uint64_t sub_100054DB8()
{
  v1 = 0x656369766564;
  v2 = 0x64726163616C70;
  if (*v0 != 2)
  {
    v2 = 0x6F6D6F7270;
  }

  if (*v0)
  {
    v1 = 1802398060;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100054E24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100055B10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100054E4C(uint64_t a1)
{
  v2 = sub_100055FD0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100054E88(uint64_t a1)
{
  v2 = sub_100055FD0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100054EC4(uint64_t a1)
{
  v2 = sub_1000561C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100054F00(uint64_t a1)
{
  v2 = sub_1000561C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100054F3C(uint64_t a1)
{
  v2 = sub_100056174();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100054F78(uint64_t a1)
{
  v2 = sub_100056174();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100054FB4(uint64_t a1)
{
  v2 = sub_1000560CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100054FF0(uint64_t a1)
{
  v2 = sub_1000560CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10005502C(uint64_t a1)
{
  v2 = sub_100056024();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100055068(uint64_t a1)
{
  v2 = sub_100056024();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NDOItem.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_10001A078(&qword_1000A7CD0, &qword_1000801E0);
  v56 = *(v4 - 8);
  v57 = v4;
  v5 = *(v56 + 64);
  __chkstk_darwin(v4);
  v55 = &v49 - v6;
  v7 = sub_10001A078(&qword_1000A7CD8, &qword_1000801E8);
  v53 = *(v7 - 8);
  v54 = v7;
  v8 = *(v53 + 64);
  __chkstk_darwin(v7);
  v52 = &v49 - v9;
  v10 = sub_10001A078(&qword_1000A7CE0, &qword_1000801F0);
  v50 = *(v10 - 8);
  v51 = v10;
  v11 = *(v50 + 64);
  __chkstk_darwin(v10);
  v13 = &v49 - v12;
  v14 = sub_10001A078(&qword_1000A7CE8, &qword_1000801F8);
  v49 = *(v14 - 8);
  v15 = *(v49 + 64);
  __chkstk_darwin(v14);
  v17 = &v49 - v16;
  v18 = sub_10001A078(&qword_1000A7CF0, &qword_100080200);
  v59 = *(v18 - 8);
  v60 = v18;
  v19 = *(v59 + 64);
  __chkstk_darwin(v18);
  v21 = &v49 - v20;
  v22 = a1[4];
  sub_100001F3C(a1, a1[3]);
  sub_100055FD0();
  v58 = v21;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v23 = *(v2 + 112);
  v71[6] = *(v2 + 96);
  v71[7] = v23;
  v71[8] = *(v2 + 128);
  v72 = *(v2 + 144);
  v24 = *(v2 + 48);
  v71[2] = *(v2 + 32);
  v71[3] = v24;
  v25 = *(v2 + 80);
  v71[4] = *(v2 + 64);
  v71[5] = v25;
  v26 = *(v2 + 16);
  v71[0] = *v2;
  v71[1] = v26;
  v27 = sub_100038CF0(v71);
  v28 = sub_10000574C(v71);
  if (v27 > 1)
  {
    if (v27 == 2)
    {
      v34 = *(v28 + 80);
      v89 = *(v28 + 64);
      v90 = v34;
      v91 = *(v28 + 96);
      v35 = *(v28 + 16);
      v85 = *v28;
      v86 = v35;
      v36 = *(v28 + 48);
      v87 = *(v28 + 32);
      v88 = v36;
      LOBYTE(v61) = 2;
      sub_1000560CC();
      v37 = v52;
      v32 = v60;
      v33 = v58;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v65 = v89;
      v66 = v90;
      LOBYTE(v67) = v91;
      v61 = v85;
      v62 = v86;
      v63 = v87;
      v64 = v88;
      sub_100056120();
      v38 = v54;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v39 = v53;
    }

    else
    {
      v45 = *(v28 + 112);
      v98 = *(v28 + 96);
      v99 = v45;
      v100 = *(v28 + 128);
      v101 = *(v28 + 144);
      v46 = *(v28 + 48);
      v94 = *(v28 + 32);
      v95 = v46;
      v47 = *(v28 + 80);
      v96 = *(v28 + 64);
      v97 = v47;
      v48 = *(v28 + 16);
      v92 = *v28;
      v93 = v48;
      LOBYTE(v61) = 3;
      sub_100056024();
      v37 = v55;
      v32 = v60;
      v33 = v58;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v67 = v98;
      v68 = v99;
      v69 = v100;
      v70 = v101;
      v63 = v94;
      v64 = v95;
      v65 = v96;
      v66 = v97;
      v61 = v92;
      v62 = v93;
      sub_100056078();
      v38 = v57;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v39 = v56;
    }

    (*(v39 + 8))(v37, v38);
  }

  else
  {
    if (v27)
    {
      v40 = *(v28 + 16);
      v81 = *v28;
      v82 = v40;
      v83 = *(v28 + 32);
      v84 = *(v28 + 48);
      LOBYTE(v61) = 1;
      sub_100056174();
      v41 = v60;
      v42 = v58;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v61 = v81;
      v62 = v82;
      v63 = v83;
      LOBYTE(v64) = v84;
      sub_1000226E0();
      v43 = v51;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v50 + 8))(v13, v43);
      return (*(v59 + 8))(v42, v41);
    }

    v29 = *(v28 + 80);
    v77 = *(v28 + 64);
    v78 = v29;
    v79 = *(v28 + 96);
    v80 = *(v28 + 112);
    v30 = *(v28 + 16);
    v73 = *v28;
    v74 = v30;
    v31 = *(v28 + 48);
    v75 = *(v28 + 32);
    v76 = v31;
    LOBYTE(v61) = 0;
    sub_1000561C8();
    v32 = v60;
    v33 = v58;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v65 = v77;
    v66 = v78;
    v67 = v79;
    LOBYTE(v68) = v80;
    v61 = v73;
    v62 = v74;
    v63 = v75;
    v64 = v76;
    sub_10005621C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v49 + 8))(v17, v14);
  }

  return (*(v59 + 8))(v33, v32);
}

uint64_t NDOItem.hash(into:)()
{
  v1 = *(v0 + 112);
  v19[6] = *(v0 + 96);
  v19[7] = v1;
  v19[8] = *(v0 + 128);
  v20 = *(v0 + 144);
  v2 = *(v0 + 48);
  v19[2] = *(v0 + 32);
  v19[3] = v2;
  v3 = *(v0 + 80);
  v19[4] = *(v0 + 64);
  v19[5] = v3;
  v4 = *(v0 + 16);
  v19[0] = *v0;
  v19[1] = v4;
  v5 = sub_100038CF0(v19);
  v6 = sub_10000574C(v19);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v10 = *(v6 + 80);
      v25 = *(v6 + 64);
      v26 = v10;
      LOBYTE(v27) = *(v6 + 96);
      v11 = *(v6 + 16);
      v21 = *v6;
      v22 = v11;
      v12 = *(v6 + 48);
      v23 = *(v6 + 32);
      v24 = v12;
      Hasher._combine(_:)(2uLL);
      sub_1000562C4();
    }

    else
    {
      v14 = *(v6 + 112);
      v27 = *(v6 + 96);
      v28 = v14;
      v29 = *(v6 + 128);
      v30 = *(v6 + 144);
      v15 = *(v6 + 48);
      v23 = *(v6 + 32);
      v24 = v15;
      v16 = *(v6 + 80);
      v25 = *(v6 + 64);
      v26 = v16;
      v17 = *(v6 + 16);
      v21 = *v6;
      v22 = v17;
      Hasher._combine(_:)(3uLL);
      sub_100056270();
    }
  }

  else if (v5)
  {
    v13 = *(v6 + 16);
    v21 = *v6;
    v22 = v13;
    v23 = *(v6 + 32);
    LOBYTE(v24) = *(v6 + 48);
    Hasher._combine(_:)(1uLL);
    sub_10002292C();
  }

  else
  {
    v7 = *(v6 + 80);
    v25 = *(v6 + 64);
    v26 = v7;
    v27 = *(v6 + 96);
    LOBYTE(v28) = *(v6 + 112);
    v8 = *(v6 + 16);
    v21 = *v6;
    v22 = v8;
    v9 = *(v6 + 48);
    v23 = *(v6 + 32);
    v24 = v9;
    Hasher._combine(_:)(0);
    sub_100056318();
  }

  return dispatch thunk of Hashable.hash(into:)();
}