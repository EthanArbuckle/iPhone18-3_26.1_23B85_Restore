Swift::Int NDOItem.hashValue.getter()
{
  Hasher.init(_seed:)();
  NDOItem.hash(into:)();
  return Hasher._finalize()();
}

double NDOItem.init(from:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10005636C(a1, v9);
  if (!v2)
  {
    v5 = v9[7];
    *(a2 + 96) = v9[6];
    *(a2 + 112) = v5;
    *(a2 + 128) = v9[8];
    *(a2 + 144) = v10;
    v6 = v9[3];
    *(a2 + 32) = v9[2];
    *(a2 + 48) = v6;
    v7 = v9[5];
    *(a2 + 64) = v9[4];
    *(a2 + 80) = v7;
    result = *v9;
    v8 = v9[1];
    *a2 = v9[0];
    *(a2 + 16) = v8;
  }

  return result;
}

Swift::Int sub_100055A28()
{
  Hasher.init(_seed:)();
  NDOItem.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100055A7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v2;
  v11[8] = *(a1 + 128);
  v12 = *(a1 + 144);
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v4 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v4;
  v5 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v5;
  v6 = *(a2 + 112);
  v13[6] = *(a2 + 96);
  v13[7] = v6;
  v13[8] = *(a2 + 128);
  v14 = *(a2 + 144);
  v7 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v7;
  v8 = *(a2 + 80);
  v13[4] = *(a2 + 64);
  v13[5] = v8;
  v9 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v9;
  return _s8ndoagent7NDOItemO21__derived_enum_equalsySbAC_ACtFZ_0(v11, v13) & 1;
}

uint64_t sub_100055B10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656369766564 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1802398060 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64726163616C70 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F6D6F7270 && a2 == 0xE500000000000000)
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

uint64_t _s8ndoagent7NDOItemO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 112);
  v62[6] = *(a1 + 96);
  v62[7] = v3;
  v62[8] = *(a1 + 128);
  v63 = *(a1 + 144);
  v4 = *(a1 + 48);
  v62[2] = *(a1 + 32);
  v62[3] = v4;
  v5 = *(a1 + 80);
  v62[4] = *(a1 + 64);
  v62[5] = v5;
  v6 = *(a1 + 16);
  v62[0] = *a1;
  v62[1] = v6;
  v7 = sub_100038CF0(v62);
  v8 = sub_10000574C(v62);
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v18 = *(v8 + 80);
      v56 = *(v8 + 64);
      v57 = v18;
      LOBYTE(v58) = *(v8 + 96);
      v19 = *(v8 + 16);
      v52 = *v8;
      v53 = v19;
      v20 = *(v8 + 48);
      v54 = *(v8 + 32);
      v55 = v20;
      v21 = a2[7];
      v70 = a2[6];
      v71 = v21;
      v72 = a2[8];
      v73 = *(a2 + 18);
      v22 = a2[3];
      v66 = a2[2];
      v67 = v22;
      v23 = a2[5];
      v68 = a2[4];
      v69 = v23;
      v24 = a2[1];
      v64 = *a2;
      v65 = v24;
      if (sub_100038CF0(&v64) == 2)
      {
        v25 = sub_10000574C(&v64);
        v45 = *(v25 + 48);
        v46 = *(v25 + 64);
        v47 = *(v25 + 80);
        LOBYTE(v48) = *(v25 + 96);
        v42 = *v25;
        v43 = *(v25 + 16);
        v44 = *(v25 + 32);
        v17 = static NDOPlacardModel.__derived_struct_equals(_:_:)(&v52, &v42);
        return v17 & 1;
      }
    }

    else
    {
      v70 = *(v8 + 96);
      v71 = *(v8 + 112);
      v72 = *(v8 + 128);
      v73 = *(v8 + 144);
      v66 = *(v8 + 32);
      v67 = *(v8 + 48);
      v68 = *(v8 + 64);
      v69 = *(v8 + 80);
      v64 = *v8;
      v65 = *(v8 + 16);
      v32 = a2[1];
      v42 = *a2;
      v43 = v32;
      v33 = a2[5];
      v46 = a2[4];
      v47 = v33;
      v34 = a2[3];
      v44 = a2[2];
      v45 = v34;
      v51 = *(a2 + 18);
      v35 = a2[8];
      v49 = a2[7];
      v50 = v35;
      v48 = a2[6];
      if (sub_100038CF0(&v42) == 3)
      {
        v36 = sub_10000574C(&v42);
        v37 = *(v36 + 112);
        v58 = *(v36 + 96);
        v59 = v37;
        v60 = *(v36 + 128);
        v61 = *(v36 + 144);
        v38 = *(v36 + 48);
        v54 = *(v36 + 32);
        v55 = v38;
        v39 = *(v36 + 80);
        v56 = *(v36 + 64);
        v57 = v39;
        v40 = *(v36 + 16);
        v52 = *v36;
        v53 = v40;
        v17 = static NDOPromoModel.__derived_struct_equals(_:_:)(&v64, &v52);
        return v17 & 1;
      }
    }

LABEL_12:
    v17 = 0;
    return v17 & 1;
  }

  if (v7)
  {
    v26 = *(v8 + 16);
    v52 = *v8;
    v53 = v26;
    v54 = *(v8 + 32);
    LOBYTE(v55) = *(v8 + 48);
    v27 = a2[7];
    v70 = a2[6];
    v71 = v27;
    v72 = a2[8];
    v73 = *(a2 + 18);
    v28 = a2[3];
    v66 = a2[2];
    v67 = v28;
    v29 = a2[5];
    v68 = a2[4];
    v69 = v29;
    v30 = a2[1];
    v64 = *a2;
    v65 = v30;
    if (sub_100038CF0(&v64) == 1)
    {
      v31 = sub_10000574C(&v64);
      v42 = *v31;
      v43 = *(v31 + 16);
      v44 = *(v31 + 32);
      LOBYTE(v45) = *(v31 + 48);
      v17 = static NDODWFooterModel.Link.__derived_struct_equals(_:_:)(&v52, &v42);
      return v17 & 1;
    }

    goto LABEL_12;
  }

  v9 = *(v8 + 80);
  v56 = *(v8 + 64);
  v57 = v9;
  v58 = *(v8 + 96);
  LOBYTE(v59) = *(v8 + 112);
  v10 = *(v8 + 16);
  v52 = *v8;
  v53 = v10;
  v11 = *(v8 + 48);
  v54 = *(v8 + 32);
  v55 = v11;
  v12 = a2[7];
  v70 = a2[6];
  v71 = v12;
  v72 = a2[8];
  v73 = *(a2 + 18);
  v13 = a2[3];
  v66 = a2[2];
  v67 = v13;
  v14 = a2[5];
  v68 = a2[4];
  v69 = v14;
  v15 = a2[1];
  v64 = *a2;
  v65 = v15;
  if (sub_100038CF0(&v64))
  {
    goto LABEL_12;
  }

  v16 = sub_10000574C(&v64);
  v46 = *(v16 + 64);
  v47 = *(v16 + 80);
  v48 = *(v16 + 96);
  LOBYTE(v49) = *(v16 + 112);
  v42 = *v16;
  v43 = *(v16 + 16);
  v44 = *(v16 + 32);
  v45 = *(v16 + 48);
  v17 = static NDODeviceModel.__derived_struct_equals(_:_:)(&v52, &v42);
  return v17 & 1;
}

unint64_t sub_100055FD0()
{
  result = qword_1000AF510;
  if (!qword_1000AF510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF510);
  }

  return result;
}

unint64_t sub_100056024()
{
  result = qword_1000AF518;
  if (!qword_1000AF518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF518);
  }

  return result;
}

unint64_t sub_100056078()
{
  result = qword_1000A7CF8;
  if (!qword_1000A7CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7CF8);
  }

  return result;
}

unint64_t sub_1000560CC()
{
  result = qword_1000AF520;
  if (!qword_1000AF520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF520);
  }

  return result;
}

unint64_t sub_100056120()
{
  result = qword_1000A7D00;
  if (!qword_1000A7D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7D00);
  }

  return result;
}

unint64_t sub_100056174()
{
  result = qword_1000AF528;
  if (!qword_1000AF528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000AF528);
  }

  return result;
}

unint64_t sub_1000561C8()
{
  result = qword_1000AF530[0];
  if (!qword_1000AF530[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AF530);
  }

  return result;
}

unint64_t sub_10005621C()
{
  result = qword_1000A7D08;
  if (!qword_1000A7D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7D08);
  }

  return result;
}

unint64_t sub_100056270()
{
  result = qword_1000A7D10;
  if (!qword_1000A7D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7D10);
  }

  return result;
}

unint64_t sub_1000562C4()
{
  result = qword_1000A7D18;
  if (!qword_1000A7D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7D18);
  }

  return result;
}

unint64_t sub_100056318()
{
  result = qword_1000A7D20;
  if (!qword_1000A7D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7D20);
  }

  return result;
}

double sub_10005636C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v58 = sub_10001A078(&qword_1000A7D30, &qword_100080FB0);
  v62 = *(v58 - 8);
  v3 = *(v62 + 64);
  __chkstk_darwin(v58);
  v65 = &v54 - v4;
  v5 = sub_10001A078(&qword_1000A7D38, &qword_100080FB8);
  v60 = *(v5 - 8);
  v61 = v5;
  v6 = *(v60 + 64);
  __chkstk_darwin(v5);
  v64 = &v54 - v7;
  v59 = sub_10001A078(&qword_1000A7D40, &qword_100080FC0);
  v57 = *(v59 - 8);
  v8 = *(v57 + 64);
  __chkstk_darwin(v59);
  v10 = &v54 - v9;
  v11 = sub_10001A078(&qword_1000A7D48, &qword_100080FC8);
  v56 = *(v11 - 8);
  v12 = *(v56 + 64);
  __chkstk_darwin(v11);
  v14 = &v54 - v13;
  v15 = sub_10001A078(&qword_1000A7D50, &qword_100080FD0);
  v66 = *(v15 - 8);
  v16 = *(v66 + 64);
  __chkstk_darwin(v15);
  v18 = &v54 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v98 = a1;
  sub_100001F3C(a1, v20);
  sub_100055FD0();
  v21 = v67;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v21)
  {
    goto LABEL_9;
  }

  v55 = v11;
  v22 = v10;
  v23 = v64;
  v24 = v65;
  v67 = v18;
  v25 = KeyedDecodingContainer.allKeys.getter();
  v26 = *(v25 + 16);
  if (!v26 || ((v27 = *(v25 + 32), v26 == 1) ? (v28 = v27 == 4) : (v28 = 1), v28))
  {
    v29 = type metadata accessor for DecodingError();
    swift_allocError();
    v31 = v30;
    v32 = v15;
    v33 = *(sub_10001A078(&qword_1000A7260, &unk_1000801D0) + 48);
    *v31 = &type metadata for NDOItem;
    v34 = v67;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v29 - 8) + 104))(v31, enum case for DecodingError.typeMismatch(_:), v29);
    swift_willThrow();
    (*(v66 + 8))(v34, v32);
    swift_unknownObjectRelease();
LABEL_9:
    sub_100001E74(v98);
    return result;
  }

  if (*(v25 + 32) > 1u)
  {
    v59 = v25;
    v37 = v63;
    if (v27 == 2)
    {
      LOBYTE(v78) = 2;
      sub_1000560CC();
      v38 = v67;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_100057494();
      v45 = v61;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v46 = (v66 + 8);
      (*(v60 + 8))(v23, v45);
      (*v46)(v38, v15);
      swift_unknownObjectRelease();
      v82 = v72;
      v83 = v73;
      LOBYTE(v84) = v74;
      v78 = v68;
      v79 = v69;
      v80 = v70;
      v81 = v71;
      sub_1000321DC(&v78);
      v94 = v84;
      v95 = v85;
      v96 = v86;
      v97 = v87;
      v90 = v80;
      v91 = v81;
      v92 = v82;
      v93 = v83;
      v88 = v78;
      v89 = v79;
    }

    else
    {
      v41 = v63;
      LOBYTE(v78) = 3;
      sub_100056024();
      v42 = v24;
      v43 = v67;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_100057440();
      v48 = v58;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v49 = (v66 + 8);
      (*(v62 + 8))(v42, v48);
      (*v49)(v43, v15);
      swift_unknownObjectRelease();
      v74 = v84;
      v75 = v85;
      v76 = v86;
      v77 = v87;
      v70 = v80;
      v71 = v81;
      v72 = v82;
      v73 = v83;
      v68 = v78;
      v69 = v79;
      sub_100032178(&v68);
      v94 = v74;
      v95 = v75;
      v96 = v76;
      v97 = v77;
      v90 = v70;
      v91 = v71;
      v92 = v72;
      v93 = v73;
      v88 = v68;
      v89 = v69;
      v37 = v41;
    }
  }

  else
  {
    if (*(v25 + 32))
    {
      LOBYTE(v78) = 1;
      sub_100056174();
      v39 = v67;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v40 = v66;
      sub_100023FF8();
      v47 = v59;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v57 + 8))(v22, v47);
      (*(v40 + 8))(v39, v15);
      swift_unknownObjectRelease();
      v78 = v68;
      v79 = v69;
      v80 = v70;
      LOBYTE(v81) = v71;
      sub_100032168(&v78);
    }

    else
    {
      LOBYTE(v78) = 0;
      sub_1000561C8();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v36 = v66;
      sub_1000574E8();
      v44 = v55;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v56 + 8))(v14, v44);
      (*(v36 + 8))(v67, v15);
      swift_unknownObjectRelease();
      v82 = v72;
      v83 = v73;
      v84 = v74;
      LOBYTE(v85) = v75;
      v78 = v68;
      v79 = v69;
      v80 = v70;
      v81 = v71;
      sub_100032188(&v78);
    }

    v94 = v84;
    v95 = v85;
    v96 = v86;
    v97 = v87;
    v90 = v80;
    v91 = v81;
    v92 = v82;
    v93 = v83;
    v88 = v78;
    v89 = v79;
    v37 = v63;
  }

  sub_100001E74(v98);
  v50 = v95;
  *(v37 + 96) = v94;
  *(v37 + 112) = v50;
  *(v37 + 128) = v96;
  *(v37 + 144) = v97;
  v51 = v91;
  *(v37 + 32) = v90;
  *(v37 + 48) = v51;
  v52 = v93;
  *(v37 + 64) = v92;
  *(v37 + 80) = v52;
  result = *&v88;
  v53 = v89;
  *v37 = v88;
  *(v37 + 16) = v53;
  return result;
}

unint64_t sub_100056D7C()
{
  result = qword_1000A7D28;
  if (!qword_1000A7D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7D28);
  }

  return result;
}

uint64_t sub_100056DDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 137);
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

double sub_100056E28(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 136) = 0u;
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
      *(a1 + 152) = 1;
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
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 128) = 0;
      *(a1 + 136) = -a2 << 8;
      *(a1 + 144) = 0;
      return result;
    }

    *(a1 + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100056F1C()
{
  result = qword_1000AF840[0];
  if (!qword_1000AF840[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AF840);
  }

  return result;
}

unint64_t sub_100056F74()
{
  result = qword_1000AFA50[0];
  if (!qword_1000AFA50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AFA50);
  }

  return result;
}

unint64_t sub_100056FCC()
{
  result = qword_1000AFC60[0];
  if (!qword_1000AFC60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AFC60);
  }

  return result;
}

unint64_t sub_100057024()
{
  result = qword_1000AFE70[0];
  if (!qword_1000AFE70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000AFE70);
  }

  return result;
}

unint64_t sub_10005707C()
{
  result = qword_1000B0080[0];
  if (!qword_1000B0080[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B0080);
  }

  return result;
}

unint64_t sub_1000570D4()
{
  result = qword_1000B0190;
  if (!qword_1000B0190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B0190);
  }

  return result;
}

unint64_t sub_10005712C()
{
  result = qword_1000B0198[0];
  if (!qword_1000B0198[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B0198);
  }

  return result;
}

unint64_t sub_100057184()
{
  result = qword_1000B0220;
  if (!qword_1000B0220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B0220);
  }

  return result;
}

unint64_t sub_1000571DC()
{
  result = qword_1000B0228[0];
  if (!qword_1000B0228[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B0228);
  }

  return result;
}

unint64_t sub_100057234()
{
  result = qword_1000B02B0;
  if (!qword_1000B02B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B02B0);
  }

  return result;
}

unint64_t sub_10005728C()
{
  result = qword_1000B02B8[0];
  if (!qword_1000B02B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B02B8);
  }

  return result;
}

unint64_t sub_1000572E4()
{
  result = qword_1000B0340;
  if (!qword_1000B0340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B0340);
  }

  return result;
}

unint64_t sub_10005733C()
{
  result = qword_1000B0348[0];
  if (!qword_1000B0348[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B0348);
  }

  return result;
}

unint64_t sub_100057394()
{
  result = qword_1000B03D0;
  if (!qword_1000B03D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B03D0);
  }

  return result;
}

unint64_t sub_1000573EC()
{
  result = qword_1000B03D8[0];
  if (!qword_1000B03D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B03D8);
  }

  return result;
}

unint64_t sub_100057440()
{
  result = qword_1000A7D58;
  if (!qword_1000A7D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7D58);
  }

  return result;
}

unint64_t sub_100057494()
{
  result = qword_1000A7D60;
  if (!qword_1000A7D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7D60);
  }

  return result;
}

unint64_t sub_1000574E8()
{
  result = qword_1000A7D68;
  if (!qword_1000A7D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7D68);
  }

  return result;
}

id static NDOAgentInternalDebugHelpers.runDaemonStartupLogicIfNeeded()()
{
  result = [objc_opt_self() isInternal];
  if (result)
  {
    type metadata accessor for FileBasedRequestsStubbing();
    dispatch thunk of static FileBasedRequestsStubbing.stubRequests()();
    sub_10005934C();

    return sub_10005A880();
  }

  return result;
}

uint64_t static NDOAgentInternalDebugHelpers.debugAMSPayload()()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v101 = &v91 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Logger();
  v104 = *(v3 - 8);
  v4 = v104[8];
  v5 = __chkstk_darwin(v3);
  v103 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v100 = &v91 - v8;
  v9 = __chkstk_darwin(v7);
  v102 = &v91 - v10;
  __chkstk_darwin(v9);
  v12 = &v91 - v11;
  v13 = type metadata accessor for URL.DirectoryHint();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  v20 = v19[8];
  v21 = __chkstk_darwin(v18);
  v23 = &v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v26 = &v91 - v25;
  __chkstk_darwin(v24);
  v28 = &v91 - v27;
  if (![objc_opt_self() isInternal])
  {
    return 0;
  }

  v99 = v3;
  static NDOConstants.ndoDirPath.getter();
  v108[0] = 0xD000000000000016;
  v108[1] = 0x800000010008C3E0;
  (*(v14 + 104))(v17, enum case for URL.DirectoryHint.inferFromPath(_:), v13);
  sub_100032090();
  URL.appending<A>(component:directoryHint:)();
  (*(v14 + 8))(v17, v13);
  v29 = v19[1];
  v29(v26, v18);
  v30 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v31 = String._bridgeToObjectiveC()();

  v32 = [v30 fileExistsAtPath:v31];

  if (!v32)
  {
    v29(v28, v18);
    return 0;
  }

  v98 = v29;
  v33 = sub_100049C1C();
  v34 = v28;
  v35 = v104;
  v36 = v104[2];
  v93 = v33;
  v37 = v99;
  v95 = v104 + 2;
  v94 = v36;
  (v36)(v12);
  v38 = v19[2];
  v97 = v34;
  v38(v23, v34, v18);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  v41 = os_log_type_enabled(v39, v40);
  v92 = v18;
  v91 = v19 + 1;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v108[0] = v43;
    *v42 = 136315138;
    sub_10005BC2C(&qword_1000A7D70, &type metadata accessor for URL);
    v44 = dispatch thunk of CustomStringConvertible.description.getter();
    v46 = v45;
    v98(v23, v18);
    v47 = sub_10001FEC8(v44, v46, v108);

    *(v42 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v39, v40, "Checking for debug ams payload override at %s", v42, 0xCu);
    sub_100001E74(v43);
    v37 = v99;

    v96 = v104[1];
  }

  else
  {

    v98(v23, v18);
    v96 = v35[1];
  }

  v96(v12, v37);
  v56 = Data.init(contentsOf:options:)();
  v58 = v57;
  static String.Encoding.utf8.getter();
  v59 = v37;
  v60 = String.init(data:encoding:)();
  v62 = v61;
  v63 = v102;
  v94(v102, v93, v59);

  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.default.getter();

  v66 = os_log_type_enabled(v64, v65);
  v67 = v92;
  if (v66)
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v108[0] = v69;
    *v68 = 136315138;
    if (v62)
    {
      v70 = v60;
    }

    else
    {
      v70 = 0;
    }

    if (!v62)
    {
      v62 = 0xE000000000000000;
    }

    v71 = sub_10001FEC8(v70, v62, v108);

    *(v68 + 4) = v71;
    _os_log_impl(&_mh_execute_header, v64, v65, "Validating data: %s", v68, 0xCu);
    sub_100001E74(v69);

    v72 = v102;
  }

  else
  {

    v72 = v63;
  }

  v96(v72, v59);
  v73 = v59;
  v74 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v107[0] = 0;
  v76 = [v74 JSONObjectWithData:isa options:0 error:v107];

  v77 = v107[0];
  v78 = v97;
  if (!v76)
  {
    v90 = v77;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_100003EBC(v56, v58);
    v94(v103, v93, v73);
    swift_errorRetain();
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();

    v50 = os_log_type_enabled(v48, v49);
    v51 = v98;
    if (v50)
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v52 = 138412290;
      swift_errorRetain();
      v54 = _swift_stdlib_bridgeErrorToNSError();
      *(v52 + 4) = v54;
      *v53 = v54;
      _os_log_impl(&_mh_execute_header, v48, v49, "Not overriding AMS payload. %@", v52, 0xCu);
      sub_1000035B8(v53, &qword_1000A6F40, &qword_10007E690);
    }

    v96(v103, v73);
    v51(v78, v67);
    return 0;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v79 = v100;
  v94(v100, v93, v73);
  sub_100020798(v108, v107);
  v80 = Logger.logObject.getter();
  v81 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v106 = v83;
    *v82 = 136315138;
    sub_100020798(v107, v105);
    v84 = String.init<A>(describing:)();
    v86 = v85;
    sub_100001E74(v107);
    v87 = sub_10001FEC8(v84, v86, &v106);

    *(v82 + 4) = v87;
    _os_log_impl(&_mh_execute_header, v80, v81, "AMS payload override JSON: %s", v82, 0xCu);
    sub_100001E74(v83);

    v96(v100, v99);
    sub_100001E74(v108);
    v88 = v78;
    v89 = v92;
  }

  else
  {

    sub_100001E74(v107);
    v96(v79, v73);
    sub_100001E74(v108);
    v88 = v78;
    v89 = v67;
  }

  v98(v88, v89);
  return v56;
}

uint64_t sub_100058218(uint64_t a1, char a2, const char *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100049C1C();
  (*(v7 + 16))(v10, v11, v6);
  v12 = a2 & 1;
  sub_1000456C4(a1, a2 & 1);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  sub_1000456D0(a1, v12);
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136315138;
    v21[1] = a1;
    v22 = v12;
    sub_1000456C4(a1, v12);
    sub_10001A078(&qword_1000A7938, &qword_10007E658);
    v17 = String.init<A>(describing:)();
    v19 = sub_10001FEC8(v17, v18, &v23);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v13, v14, a3, v15, 0xCu);
    sub_100001E74(v16);
  }

  return (*(v7 + 8))(v10, v6);
}

id NDOAgentInternalDebugHelpers.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NDOAgentInternalDebugHelpers();
  return objc_msgSendSuper2(&v2, "init");
}

id NDOAgentInternalDebugHelpers.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NDOAgentInternalDebugHelpers();
  return objc_msgSendSuper2(&v2, "dealloc");
}

BOOL sub_1000584CC(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

id _s8ndoagent28NDOAgentInternalDebugHelpersC06handleC7CommandySo7NSErrorCSgSo12NSDictionaryCFZ_0(void *a1)
{
  v2 = type metadata accessor for Date();
  v99 = *(v2 - 8);
  v3 = *(v99 + 64);
  v4 = __chkstk_darwin(v2);
  v98 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v93 - v6;
  v8 = type metadata accessor for URL();
  v101 = *(v8 - 8);
  v9 = v101[8];
  __chkstk_darwin(v8);
  v11 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v100 = &v93 - v19;
  __chkstk_darwin(v18);
  v21 = &v93 - v20;
  v22 = [objc_opt_self() isInternal];
  result = 0;
  if (v22)
  {
    v94 = v2;
    v95 = v7;
    v96 = v13;
    v97 = v12;
    *&v104 = 0x646E616D6D6F63;
    *(&v104 + 1) = 0xE700000000000000;
    v24 = [a1 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    if (v24)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v104 = 0u;
      v105 = 0u;
    }

    v106 = v104;
    v107 = v105;
    if (*(&v105 + 1))
    {
      if (swift_dynamicCast())
      {
        v26 = v102;
        v25 = v103;
        if (v102 == 0x6361437261656C63 && v103 == 0xEA00000000006568 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v27 = sub_100049C1C();
          v28 = v96;
          v29 = v97;
          (*(v96 + 16))(v21, v27, v97);
          v30 = Logger.logObject.getter();
          v31 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v30, v31))
          {
            v32 = swift_slowAlloc();
            v33 = swift_slowAlloc();
            *&v106 = v33;
            *v32 = 136315138;
            static NDOConstants.ndoDirPath.getter();
            v34 = URL.absoluteString.getter();
            v36 = v35;
            (v101[1])(v11, v8);
            v37 = sub_10001FEC8(v34, v36, &v106);

            *(v32 + 4) = v37;
            _os_log_impl(&_mh_execute_header, v30, v31, "clearing cashes at path: %s", v32, 0xCu);
            sub_100001E74(v33);

            (*(v96 + 8))(v21, v97);
          }

          else
          {

            (*(v28 + 8))(v21, v29);
          }

          type metadata accessor for NDOPersistanceHelpers();
          +[_TtC8ndoagent21NDOPersistanceHelpers clearAllCaches]_0();
          return 0;
        }

        if (v26 == 0x656C756465686373 && v25 == 0xEF6E496B63656843 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          *&v104 = 0x68636F7065;
          *(&v104 + 1) = 0xE500000000000000;
          v44 = [a1 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
          swift_unknownObjectRelease();
          if (v44)
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {
            v104 = 0u;
            v105 = 0u;
          }

          v106 = v104;
          v107 = v105;
          if (*(&v105 + 1))
          {
            if (swift_dynamicCast())
            {
              *&v106 = 0;
              v45 = sub_1000584CC(v102, v103);

              if (v45)
              {
                v46 = v106;
                v47 = v95;
                Date.init(timeIntervalSince1970:)();
                v48 = sub_100049C1C();
                v50 = v96;
                v49 = v97;
                v51 = v100;
                (*(v96 + 16))(v100, v48, v97);
                v52 = v98;
                v53 = v99;
                v54 = v94;
                (*(v99 + 16))(v98, v47, v94);
                v55 = Logger.logObject.getter();
                v56 = static os_log_type_t.default.getter();
                if (os_log_type_enabled(v55, v56))
                {
                  v57 = swift_slowAlloc();
                  v101 = swift_slowAlloc();
                  *&v106 = v101;
                  *v57 = 136315394;
                  sub_10005BC2C(&qword_1000A7008, &type metadata accessor for Date);
                  v58 = dispatch thunk of CustomStringConvertible.description.getter();
                  v59 = v52;
                  v61 = v60;
                  v62 = *(v53 + 8);
                  v62(v59, v54);
                  v63 = sub_10001FEC8(v58, v61, &v106);

                  *(v57 + 4) = v63;
                  *(v57 + 12) = 2048;
                  *(v57 + 14) = v46;
                  _os_log_impl(&_mh_execute_header, v55, v56, "Scheduling next check in on %s (epoch: %f)", v57, 0x16u);
                  sub_100001E74(v101);

                  (*(v50 + 8))(v100, v97);
                }

                else
                {

                  v88 = v52;
                  v62 = *(v53 + 8);
                  v62(v88, v54);
                  (*(v50 + 8))(v51, v49);
                }

                v89 = sub_10005EF54();
                swift_beginAccess();
                v90 = *((swift_isaMask & **v89) + 0x88);
                v91 = *v89;
                v92 = v95;
                v90(v95);

                v62(v92, v54);
                return 0;
              }
            }
          }

          else
          {
            sub_1000035B8(&v106, &qword_1000A6FD8, &unk_10007DAC0);
          }

          sub_10001A078(&unk_1000A7DB0, &unk_1000810C0);
          inited = swift_initStackObject();
          *(inited + 32) = 1868983913;
          v65 = inited + 32;
          *(inited + 16) = xmmword_10007AE00;
          *(inited + 72) = &type metadata for String;
          *(inited + 40) = 0xE400000000000000;
          *(inited + 48) = 0xD000000000000011;
          *(inited + 56) = 0x800000010008C4F0;
          sub_10002793C(inited);
          swift_setDeallocating();
          sub_1000035B8(v65, &qword_1000A73F8, &qword_10007C300);
          v66 = objc_allocWithZone(NSError);
          v67 = String._bridgeToObjectiveC()();
          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          v43 = [v66 initWithDomain:v67 code:43 userInfo:isa];

          return v43;
        }

        if (v26 == 0x636568437478656ELL && v25 == 0xEF657461446E496BLL)
        {

          v69 = v97;
LABEL_38:
          v71 = sub_10005EF54();
          swift_beginAccess();
          v72 = *((swift_isaMask & **v71) + 0x80);
          v73 = *v71;
          v74 = v72();
          v76 = v75;

          v77 = sub_100049C1C();
          v78 = v96;
          (*(v96 + 16))(v17, v77, v69);
          v79 = Logger.logObject.getter();
          v80 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v79, v80))
          {
            v81 = swift_slowAlloc();
            *v81 = 134217984;
            if (v76)
            {
              v82 = -1;
            }

            else
            {
              v82 = v74;
            }

            *(v81 + 4) = v82;
            _os_log_impl(&_mh_execute_header, v79, v80, "Next checkIn epoch: %lld", v81, 0xCu);
            v78 = v96;
          }

          (*(v78 + 8))(v17, v69);
          return 0;
        }

        v70 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v69 = v97;
        if (v70)
        {

          goto LABEL_38;
        }

        sub_10001A078(&unk_1000A7DB0, &unk_1000810C0);
        v83 = swift_initStackObject();
        *(v83 + 32) = 1868983913;
        *(v83 + 16) = xmmword_10007AE00;
        *(v83 + 40) = 0xE400000000000000;
        *&v106 = 0;
        *(&v106 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(23);

        *&v106 = 0xD000000000000015;
        *(&v106 + 1) = 0x800000010008C4D0;
        v84._countAndFlagsBits = v26;
        v84._object = v25;
        String.append(_:)(v84);

        v85 = v106;
        *(v83 + 72) = &type metadata for String;
        *(v83 + 48) = v85;
        sub_10002793C(v83);
        swift_setDeallocating();
        sub_1000035B8(v83 + 32, &qword_1000A73F8, &qword_10007C300);
        v86 = objc_allocWithZone(NSError);
        v87 = String._bridgeToObjectiveC()();
        v42.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v43 = [v86 initWithDomain:v87 code:43 userInfo:v42.super.isa];

LABEL_14:
        return v43;
      }
    }

    else
    {
      sub_1000035B8(&v106, &qword_1000A6FD8, &unk_10007DAC0);
    }

    sub_10001A078(&unk_1000A7DB0, &unk_1000810C0);
    v38 = swift_initStackObject();
    *(v38 + 32) = 1868983913;
    v39 = v38 + 32;
    *(v38 + 16) = xmmword_10007AE00;
    *(v38 + 72) = &type metadata for String;
    *(v38 + 40) = 0xE400000000000000;
    *(v38 + 48) = 0xD000000000000020;
    *(v38 + 56) = 0x800000010008C4A0;
    sub_10002793C(v38);
    swift_setDeallocating();
    sub_1000035B8(v39, &qword_1000A73F8, &qword_10007C300);
    v40 = objc_allocWithZone(NSError);
    v41 = String._bridgeToObjectiveC()();
    v42.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v43 = [v40 initWithDomain:v41 code:42 userInfo:v42.super.isa];

    goto LABEL_14;
  }

  return result;
}

id sub_10005934C()
{
  v0 = sub_10001A078(&qword_1000A7388, &unk_1000810B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v172 = &v154 - v2;
  v168 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ActionType();
  v167 = *(v168 - 8);
  v3 = *(v167 + 64);
  __chkstk_darwin(v168);
  v166 = &v154 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action();
  v170 = *(v171 - 8);
  v5 = *(v170 + 64);
  __chkstk_darwin(v171);
  v169 = &v154 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData();
  v7 = *(v182 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v182);
  v164 = &v154 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v165 = &v154 - v12;
  __chkstk_darwin(v11);
  v176 = &v154 - v13;
  v178 = type metadata accessor for JSONDecodingOptions();
  v177 = *(v178 - 8);
  v14 = *(v177 + 64);
  v15 = __chkstk_darwin(v178);
  v175 = &v154 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v181 = &v154 - v17;
  v18 = type metadata accessor for String.Encoding();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v179 = &v154 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Logger();
  v22 = *(v21 - 8);
  v186 = v21;
  v187 = v22;
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v185 = &v154 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v173 = &v154 - v27;
  v28 = __chkstk_darwin(v26);
  v180 = (&v154 - v29);
  v30 = __chkstk_darwin(v28);
  v174 = &v154 - v31;
  v32 = __chkstk_darwin(v30);
  v184 = &v154 - v33;
  v34 = __chkstk_darwin(v32);
  v183 = &v154 - v35;
  __chkstk_darwin(v34);
  v37 = &v154 - v36;
  v38 = type metadata accessor for URL.DirectoryHint();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  __chkstk_darwin(v38);
  v42 = &v154 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for URL();
  v44 = *(v43 - 8);
  v45 = v44[8];
  v46 = __chkstk_darwin(v43);
  v48 = &v154 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __chkstk_darwin(v46);
  v51 = &v154 - v50;
  __chkstk_darwin(v49);
  v53 = &v154 - v52;
  result = [objc_opt_self() isInternal];
  if (result)
  {
    v157 = v7;
    static NDOConstants.ndoDirPath.getter();
    v191[0] = 0xD000000000000014;
    v191[1] = 0x800000010008C460;
    (*(v39 + 104))(v42, enum case for URL.DirectoryHint.inferFromPath(_:), v38);
    sub_100032090();
    URL.appending<A>(component:directoryHint:)();
    (*(v39 + 8))(v42, v38);
    v55 = v44[1];
    v55(v51, v43);
    v56 = [objc_opt_self() defaultManager];
    URL.path.getter();
    v57 = String._bridgeToObjectiveC()();

    v58 = [v56 fileExistsAtPath:v57];

    v59 = v43;
    if (v58)
    {
      v159 = v55;
      v161 = v44 + 1;
      v60 = sub_100049C1C();
      v62 = v187 + 16;
      v61 = *(v187 + 16);
      v162 = v60;
      v63 = v186;
      v163 = v61;
      (v61)(v37);
      v64 = v44[2];
      v158 = v53;
      v64(v48, v53, v59);
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.default.getter();
      v67 = os_log_type_enabled(v65, v66);
      v160 = v59;
      if (v67)
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v191[0] = v69;
        *v68 = 136315138;
        sub_10005BC2C(&qword_1000A7D70, &type metadata accessor for URL);
        v70 = dispatch thunk of CustomStringConvertible.description.getter();
        v71 = v62;
        v73 = v72;
        v159(v48, v160);
        v74 = sub_10001FEC8(v70, v73, v191);
        v62 = v71;

        *(v68 + 4) = v74;
        _os_log_impl(&_mh_execute_header, v65, v66, "Trying to post debug follow up with contents of %s", v68, 0xCu);
        sub_100001E74(v69);
      }

      else
      {

        v159(v48, v59);
      }

      v75 = *(v187 + 8);
      v75(v37, v63);
      v76 = v183;
      v163(v183, v162, v63);
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.default.getter();
      v79 = os_log_type_enabled(v77, v78);
      v80 = v158;
      if (v79)
      {
        v81 = swift_slowAlloc();
        *v81 = 0;
        _os_log_impl(&_mh_execute_header, v77, v78, "Reading follow up json file", v81, 2u);
      }

      v82 = v187 + 8;
      v75(v76, v63);
      v83 = Data.init(contentsOf:options:)();
      v84 = v184;
      v187 = v82;
      v86 = v85;
      v87 = v83;
      static String.Encoding.utf8.getter();
      v154 = v87;
      v183 = v86;
      v88 = v63;
      v89 = String.init(data:encoding:)();
      v91 = v90;
      v163(v84, v162, v63);

      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.default.getter();

      v94 = os_log_type_enabled(v92, v93);
      v156 = v62;
      v155 = v75;
      if (v94)
      {
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v191[0] = v96;
        *v95 = 136315138;
        if (v91)
        {
          v97 = v89;
        }

        else
        {
          v97 = 0;
        }

        if (!v91)
        {
          v91 = 0xE000000000000000;
        }

        v98 = sub_10001FEC8(v97, v91, v191);

        *(v95 + 4) = v98;
        _os_log_impl(&_mh_execute_header, v92, v93, "Validating data string: %s", v95, 0xCu);
        sub_100001E74(v96);

        v80 = v158;
      }

      else
      {
      }

      v75(v84, v88);
      v99 = v88;
      v100 = objc_opt_self();
      v101 = v154;
      v102 = v183;
      isa = Data._bridgeToObjectiveC()().super.isa;
      v190 = 0;
      v104 = [v100 JSONObjectWithData:isa options:0 error:&v190];

      v105 = v190;
      v106 = v180;
      v107 = v185;
      if (v104)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        v108 = v174;
        v163(v174, v162, v99);
        sub_100020798(v191, &v190);
        v109 = Logger.logObject.getter();
        v110 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v109, v110))
        {
          v111 = swift_slowAlloc();
          v112 = swift_slowAlloc();
          v189 = v112;
          *v111 = 136315138;
          sub_100020798(&v190, v188);
          v113 = String.init<A>(describing:)();
          v115 = v114;
          sub_100001E74(&v190);
          v116 = sub_10001FEC8(v113, v115, &v189);

          *(v111 + 4) = v116;
          v99 = v186;
          _os_log_impl(&_mh_execute_header, v109, v110, "JSON object from follow up data: %s", v111, 0xCu);
          sub_100001E74(v112);
        }

        else
        {

          sub_100001E74(&v190);
        }

        v155(v108, v99);
        v118 = v177;
        v119 = v181;
        JSONDecodingOptions.init()();
        JSONDecodingOptions.ignoreUnknownFields.setter();
        v163(v106, v162, v99);
        v120 = Logger.logObject.getter();
        v121 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v120, v121))
        {
          v122 = swift_slowAlloc();
          *v122 = 0;
          _os_log_impl(&_mh_execute_header, v120, v121, "Attempting to construct PostFollowUpActionData proto obj", v122, 2u);
          v119 = v181;
        }

        v155(v106, v99);
        (*(v118 + 16))(v175, v119, v178);
        sub_100034F60(v154, v183);
        sub_10005BC2C(&qword_1000A7DA8, &type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_PostFollowUpData);
        v123 = v176;
        Message.init(jsonUTF8Data:options:)();
        v130 = v173;
        v163(v173, v162, v99);
        v131 = v157;
        v132 = *(v157 + 16);
        v133 = v165;
        v132(v165, v123, v182);
        v134 = Logger.logObject.getter();
        v135 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v134, v135))
        {
          v136 = swift_slowAlloc();
          v184 = v132;
          v137 = v136;
          v180 = swift_slowAlloc();
          v190 = v180;
          *v137 = 136315138;
          (v184)(v164, v133, v182);
          v138 = String.init<A>(describing:)();
          v140 = v139;
          v141 = *(v131 + 8);
          v185 = ((v131 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          v141(v133, v182);
          v142 = v141;
          v143 = sub_10001FEC8(v138, v140, &v190);
          v144 = v182;

          *(v137 + 4) = v143;
          _os_log_impl(&_mh_execute_header, v134, v135, "Handling PostFollowUpAction action: %s", v137, 0xCu);
          sub_100001E74(v180);

          v132 = v184;

          v145 = v173;
          v146 = v186;
          v147 = v176;
        }

        else
        {
          v147 = v123;

          v148 = *(v131 + 8);
          v185 = ((v131 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          v144 = v182;
          v148(v133, v182);
          v142 = v148;
          v145 = v130;
          v146 = v99;
        }

        v155(v145, v146);
        v149 = v169;
        Com_Apple_Sse_Ocean_Ndo_Api_Action.init()();
        (*(v167 + 104))(v166, enum case for Com_Apple_Sse_Ocean_Ndo_Api_ActionType.postFollowUp(_:), v168);
        Com_Apple_Sse_Ocean_Ndo_Api_Action.actionType.setter();
        v150 = v172;
        v132(v172, v147, v144);
        v151 = enum case for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData.postFollowUpData(_:);
        v152 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData();
        v153 = *(v152 - 8);
        (*(v153 + 104))(v150, v151, v152);
        (*(v153 + 56))(v150, 0, 1, v152);
        Com_Apple_Sse_Ocean_Ndo_Api_Action.actionData.setter();
        type metadata accessor for NDOCompositionLayer();
        sub_1000254A0(v149, sub_100058200, 0);
        sub_100003EBC(v154, v183);
        (*(v170 + 8))(v149, v171);
        v142(v147, v144);
        (*(v177 + 8))(v181, v178);
        sub_100001E74(v191);
        return (v159)(v158, v160);
      }

      else
      {
        v117 = v105;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100003EBC(v101, v102);
        v124 = v155;
        v163(v107, v162, v99);
        swift_errorRetain();
        v125 = Logger.logObject.getter();
        v126 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v125, v126))
        {
          v127 = swift_slowAlloc();
          v128 = swift_slowAlloc();
          *v127 = 138412290;
          swift_errorRetain();
          v129 = _swift_stdlib_bridgeErrorToNSError();
          *(v127 + 4) = v129;
          *v128 = v129;
          _os_log_impl(&_mh_execute_header, v125, v126, "Failed to create post follow up from debug file. Error: %@", v127, 0xCu);
          sub_1000035B8(v128, &qword_1000A6F40, &qword_10007E690);
        }

        v124(v107, v99);
        return (v159)(v80, v160);
      }
    }

    else
    {
      return (v55)(v53, v43);
    }
  }

  return result;
}

id sub_10005A880()
{
  v0 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action();
  v1 = *(v0 - 8);
  v173 = v0;
  v174 = v1;
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v168 = &v144 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v175 = &v144 - v6;
  __chkstk_darwin(v5);
  v170 = &v144 - v7;
  *&v152 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse();
  v151 = *(v152 - 8);
  v8 = *(v151 + 64);
  __chkstk_darwin(v152);
  v150 = &v144 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIResponse();
  v153 = *(v158 - 8);
  v10 = *(v153 + 64);
  __chkstk_darwin(v158);
  v157 = &v144 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for JSONDecodingOptions();
  v160 = *(v161 - 8);
  v12 = *(v160 + 64);
  v13 = __chkstk_darwin(v161);
  v156 = &v144 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v165 = &v144 - v15;
  v16 = type metadata accessor for String.Encoding();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v159 = (&v144 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for Logger();
  v20 = *(v19 - 8);
  v21 = *(v20 + 8);
  v22 = __chkstk_darwin(v19);
  v171 = &v144 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v169 = &v144 - v25;
  v26 = __chkstk_darwin(v24);
  v155 = &v144 - v27;
  v28 = __chkstk_darwin(v26);
  v154 = &v144 - v29;
  v30 = __chkstk_darwin(v28);
  v166 = &v144 - v31;
  __chkstk_darwin(v30);
  v172 = &v144 - v32;
  v33 = type metadata accessor for URL.DirectoryHint();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33);
  v37 = &v144 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for URL();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = __chkstk_darwin(v38);
  v43 = &v144 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v41);
  v46 = &v144 - v45;
  __chkstk_darwin(v44);
  v48 = &v144 - v47;
  result = [objc_opt_self() isInternal];
  if (!result)
  {
    return result;
  }

  v167 = v20;
  static NDOConstants.ndoDirPath.getter();
  v179[0] = 0xD000000000000013;
  v179[1] = 0x800000010008C440;
  (*(v34 + 104))(v37, enum case for URL.DirectoryHint.inferFromPath(_:), v33);
  sub_100032090();
  URL.appending<A>(component:directoryHint:)();
  (*(v34 + 8))(v37, v33);
  v50 = *(v39 + 8);
  v50(v46, v38);
  v51 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v52 = String._bridgeToObjectiveC()();

  v53 = [v51 fileExistsAtPath:v52];

  if (!v53)
  {
    return (v50)(v48, v38);
  }

  v147 = v50;
  v148 = v39 + 8;
  v54 = sub_100049C1C();
  v55 = v167;
  v56 = *(v167 + 2);
  v57 = v172;
  v163 = v54;
  v164 = v167 + 16;
  v162 = v56;
  (v56)(v172);
  (*(v39 + 16))(v43, v48, v38);
  v58 = Logger.logObject.getter();
  v59 = v19;
  v60 = static os_log_type_t.default.getter();
  v61 = os_log_type_enabled(v58, v60);
  v146 = v38;
  v149 = v48;
  if (v61)
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v179[0] = v63;
    *v62 = 136315138;
    sub_10005BC2C(&qword_1000A7D70, &type metadata accessor for URL);
    v64 = dispatch thunk of CustomStringConvertible.description.getter();
    v65 = v59;
    v67 = v66;
    v68 = v147;
    v147(v43, v38);
    v69 = sub_10001FEC8(v64, v67, v179);

    *(v62 + 4) = v69;
    _os_log_impl(&_mh_execute_header, v58, v60, "Trying to run checkIn actions from %s", v62, 0xCu);
    sub_100001E74(v63);

    v70 = v68;
    v71 = *(v167 + 1);
    v71(v172, v65);
    v72 = v65;
  }

  else
  {

    v70 = v147;
    v147(v43, v38);
    v71 = *(v55 + 1);
    v71(v57, v59);
    v72 = v59;
  }

  v73 = Data.init(contentsOf:options:)();
  v74 = v171;
  v172 = 0;
  v80 = v73;
  v82 = v81;
  static String.Encoding.utf8.getter();
  String.init(data:encoding:)();

  v162(v166, v163, v72);
  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v83, v84))
  {
    v86 = swift_slowAlloc();
    *v86 = 0;
    _os_log_impl(&_mh_execute_header, v83, v84, "Validating file contents", v86, 2u);
  }

  v87 = v166;
  v166 = v167 + 8;
  v71(v87, v72);
  v88 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v178[0] = 0;
  v90 = [v88 JSONObjectWithData:isa options:0 error:v178];

  v91 = v178[0];
  if (!v90)
  {
    v103 = v91;
    v104 = _convertNSErrorToError(_:)();

    v172 = v104;
    swift_willThrow();
    sub_100003EBC(v80, v82);
LABEL_8:
    v162(v74, v163, v72);
    swift_errorRetain();
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *v77 = 138412290;
      swift_errorRetain();
      v79 = _swift_stdlib_bridgeErrorToNSError();
      *(v77 + 4) = v79;
      *v78 = v79;
      _os_log_impl(&_mh_execute_header, v75, v76, "Failed to handle debug checkIn actions. Error:%@", v77, 0xCu);
      sub_1000035B8(v78, &qword_1000A6F40, &qword_10007E690);
    }

    v71(v74, v72);
    return v70(v149, v146);
  }

  v145 = v82;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v92 = v154;
  v162(v154, v163, v72);
  sub_100020798(v179, v178);
  v93 = Logger.logObject.getter();
  v94 = static os_log_type_t.default.getter();
  v95 = os_log_type_enabled(v93, v94);
  v159 = v71;
  if (v95)
  {
    v96 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v177 = v97;
    *v96 = 136315138;
    sub_100020798(v178, v176);
    v98 = String.init<A>(describing:)();
    v99 = v80;
    v101 = v100;
    sub_100001E74(v178);
    v102 = sub_10001FEC8(v98, v101, &v177);
    v80 = v99;
    v71 = v159;

    *(v96 + 4) = v102;
    _os_log_impl(&_mh_execute_header, v93, v94, "JSON object from file data: %s", v96, 0xCu);
    sub_100001E74(v97);
  }

  else
  {

    sub_100001E74(v178);
  }

  v71(v92, v72);
  v105 = v174;
  v106 = v170;
  v107 = v160;
  v108 = v155;
  JSONDecodingOptions.init()();
  JSONDecodingOptions.ignoreUnknownFields.setter();
  v162(v108, v163, v72);
  v109 = Logger.logObject.getter();
  v110 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v109, v110))
  {
    v111 = swift_slowAlloc();
    *v111 = 0;
    _os_log_impl(&_mh_execute_header, v109, v110, "Attempting to construct checkIn response proto obj", v111, 2u);
    v107 = v160;
  }

  v71(v108, v72);
  (*(v107 + 16))(v156, v165, v161);
  v112 = v80;
  v113 = v80;
  v114 = v145;
  sub_100034F60(v112, v145);
  sub_10005BC2C(&qword_1000A7DA0, &type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIResponse);
  v115 = v157;
  v116 = v158;
  v117 = v107;
  v118 = v172;
  Message.init(jsonUTF8Data:options:)();
  v172 = v118;
  if (v118)
  {
    sub_100003EBC(v113, v114);
    (*(v117 + 8))(v165, v161);
    sub_100001E74(v179);
    v70 = v147;
    v74 = v171;
    v71 = v159;
    goto LABEL_8;
  }

  v144 = v113;
  v119 = v150;
  Com_Apple_Sse_Ocean_Ndo_Api_CIResponse.data.getter();
  v120 = Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse.actions.getter();
  (*(v151 + 8))(v119, v152);
  v121 = *(v120 + 16);
  if (v121)
  {
    v171 = type metadata accessor for NDOCompositionLayer();
    v124 = *(v105 + 16);
    v122 = v105 + 16;
    v123 = v124;
    v125 = (*(v122 + 64) + 32) & ~*(v122 + 64);
    v151 = v120;
    v126 = v120 + v125;
    v156 = *(v122 + 56);
    *&v127 = 136315138;
    v152 = v127;
    v155 = (v122 - 8);
    v154 = ((v122 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v128 = v173;
    v174 = v122;
    v129 = v175;
    v130 = v169;
    v167 = v124;
    do
    {
      v172 = v121;
      v123(v106, v126, v128);
      v162(v130, v163, v72);
      v123(v129, v106, v128);
      v132 = Logger.logObject.getter();
      v133 = v123;
      v134 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v132, v134))
      {
        v135 = swift_slowAlloc();
        v136 = swift_slowAlloc();
        v178[0] = v136;
        *v135 = v152;
        v133(v168, v175, v128);
        v137 = v72;
        v138 = String.init<A>(describing:)();
        v140 = v139;
        v131 = *v155;
        (*v155)(v175, v173);
        v141 = sub_10001FEC8(v138, v140, v178);
        v128 = v173;

        *(v135 + 4) = v141;
        v72 = v137;
        v130 = v169;
        _os_log_impl(&_mh_execute_header, v132, v134, "Handling debug checkIn action: %s", v135, 0xCu);
        sub_100001E74(v136);
        v106 = v170;

        v129 = v175;
      }

      else
      {

        v131 = *v155;
        (*v155)(v129, v128);
      }

      v159(v130, v72);
      sub_1000254A0(v106, sub_10005820C, 0);
      v131(v106, v128);
      v126 += v156;
      v121 = v172 - 1;
      v123 = v167;
    }

    while (v172 != 1);

    v142 = v146;
    v116 = v158;
    v143 = v149;
    v115 = v157;
  }

  else
  {

    v143 = v149;
    v142 = v146;
  }

  sub_100003EBC(v144, v145);
  (*(v153 + 8))(v115, v116);
  (*(v160 + 8))(v165, v161);
  sub_100001E74(v179);
  return (v147)(v143, v142);
}

uint64_t sub_10005BC2C(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *sub_10005BC74@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_10005BCF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001A078(&qword_1000A73F8, &qword_10007C300);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005BD64(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001A078(&qword_1000A7DC0, &qword_1000810E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - v7;
  if (qword_1000B0488 != -1)
  {
    swift_once();
  }

  v9 = sub_100027B34(v4, qword_1000B1F40);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;

  swift_getOpaqueTypeConformance2();
  dispatch thunk of NDOLoader.load(with:)();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_10005BF18()
{
  if (qword_1000B0488 != -1)
  {
    swift_once();
  }

  v0 = sub_10001A078(&qword_1000A7DC0, &qword_1000810E0);

  return sub_100027B34(v0, qword_1000B1F40);
}

uint64_t sub_10005BF88(uint64_t a1, void (*a2)(uint64_t (*)(uint64_t a1, void *a2), uint64_t))
{
  v4 = sub_10001A078(&unk_1000A7EA0, &qword_10007F110);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v20 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v20 - v13;
  sub_100063380(a1, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000035B8(v7, &unk_1000A7EA0, &qword_10007F110);
    v15 = 0;
    v16 = 0;
  }

  else
  {
    v17 = *(v9 + 32);
    v17(v14, v7, v8);
    v17(v12, v14, v8);
    v18 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v16 = swift_allocObject();
    v17((v16 + v18), v12, v8);
    v15 = sub_10004F4FC;
  }

  a2(v15, v16);
  return sub_100003430(v15);
}

uint64_t sub_10005C1A4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  result = sub_100027E88(0, &qword_1000A7E98, NSUserDefaults_ptr);
  qword_1000B1E88 = result;
  unk_1000B1E90 = &protocol witness table for NSUserDefaults;
  qword_1000B1E98 = &protocol witness table for NSUserDefaults;
  qword_1000B1E70 = v0;
  return result;
}

uint64_t *sub_10005C220()
{
  if (qword_1000B0460 != -1)
  {
    swift_once();
  }

  return &qword_1000B1E70;
}

uint64_t sub_10005C270@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000B0460 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_10001EC4C(qword_1000B1E70, a1);
}

uint64_t sub_10005C2F0(uint64_t *a1)
{
  if (qword_1000B0460 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_10005D210(qword_1000B1E70, a1);
  swift_endAccess();
  return sub_100001E74(a1);
}

uint64_t (*sub_10005C380())()
{
  if (qword_1000B0460 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

void sub_10005C408(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100049C1C();
  (*(v3 + 16))(v6, v7, v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "CompositionLayer. Creating URL session client", v10, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v11 = [objc_opt_self() defaultSessionConfiguration];
  [v11 setURLCache:0];
  [v11 setURLCredentialStorage:0];
  [v11 setHTTPCookieStorage:0];
  [v11 setRequestCachePolicy:1];
  [v11 set_alternativeServicesStorage:0];
  v12 = [objc_opt_self() sessionWithConfiguration:v11];
  v13 = type metadata accessor for NDOURLSessionClient();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = v12;
  v17 = NDOURLSessionClient.init(session:)();
  a1[3] = v13;
  a1[4] = &protocol witness table for NDOURLSessionClient;

  *a1 = v17;
}

uint64_t *sub_10005C67C()
{
  if (qword_1000B0468 != -1)
  {
    swift_once();
  }

  return qword_1000B1EA0;
}

uint64_t (*sub_10005C714())()
{
  if (qword_1000B0468 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_10005C79C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_100049C1C();
  (*(v3 + 16))(v6, v7, v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "CompositionLayer. Creating URL client", v10, 2u);
  }

  (*(v3 + 8))(v6, v2);
  if (qword_1000B0468 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100001E10(qword_1000B1EA0, v15);
  v11 = type metadata accessor for NDOAppleAccountSignedInUrlClient();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  result = NDOAppleAccountSignedInUrlClient.init(_:isSignedIn:)();
  a1[3] = v11;
  a1[4] = &protocol witness table for NDOAppleAccountSignedInUrlClient;
  *a1 = result;
  return result;
}

uint64_t *sub_10005C9F4()
{
  if (qword_1000B0470 != -1)
  {
    swift_once();
  }

  return qword_1000B1EC8;
}

uint64_t sub_10005CA68@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_100001E10(a2, a3);
}

uint64_t sub_10005CAF0(uint64_t *a1, void *a2, uint64_t *a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1000492B8(a3, a1);
  swift_endAccess();
  return sub_100001E74(a1);
}

uint64_t (*sub_10005CB68())()
{
  if (qword_1000B0470 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_10005CBF0()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000B0470 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100001E10(qword_1000B1EC8, v9);
  static NDOConstants.localPlistURL.getter();
  sub_100001E10(qword_1000B1EC8, v7);
  v5 = sub_10006207C(v4, v7);
  sub_100001E74(v7);
  (*(v1 + 8))(v4, v0);
  v8[3] = type metadata accessor for NDOPostProcessingURLClient();
  v8[4] = &protocol witness table for NDOPostProcessingURLClient;
  v8[0] = v5;
  if (qword_1000B0460 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_10001EC4C(qword_1000B1E70, v7);
  sub_1000207F8(v9, v8, v7, qword_1000B1EF0);
  sub_100001E74(v7);
  sub_100001E74(v9);
  return sub_100001E74(v8);
}

uint64_t *sub_10005CDD0()
{
  if (qword_1000B0478 != -1)
  {
    swift_once();
  }

  return qword_1000B1EF0;
}

uint64_t (*sub_10005CE68())()
{
  if (qword_1000B0478 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_10005CEF0()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static NDOConstants.localPlistURL.getter();
  if (qword_1000B0470 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100001E10(qword_1000B1EC8, v8);
  v5 = sub_10006207C(v4, v8);
  sub_100001E74(v8);
  (*(v1 + 8))(v4, v0);
  v9[3] = type metadata accessor for NDOPostProcessingURLClient();
  v9[4] = &protocol witness table for NDOPostProcessingURLClient;
  v9[0] = v5;
  if (qword_1000B0460 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_10001EC4C(&qword_1000B1E70, v8);
  sub_100020BC4(v9, v8, qword_1000B1F18);
  sub_100001E74(v8);
  return sub_100001E74(v9);
}

uint64_t *sub_10005D0B8()
{
  if (qword_1000B0480 != -1)
  {
    swift_once();
  }

  return qword_1000B1F18;
}

uint64_t (*sub_10005D150())()
{
  if (qword_1000B0480 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t *sub_10005D210(uint64_t *result, uint64_t *a2)
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
      result[5] = a2[5];
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

uint64_t sub_10005D434@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for NDORequestPayloadProvider.DataProviders();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v19[-1] - v8;
  type metadata accessor for NDOAPIDeviceInfoAdapter();
  sub_100035538(v21);
  if (qword_1000B0460 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v18 = *&qword_1000B1E88;
  v10 = qword_1000B1E88;
  v11 = sub_100001F3C(qword_1000B1E70, qword_1000B1E88);
  v20 = v18;
  v12 = sub_100027B84(v19);
  (*(*(v10 - 8) + 16))(v12, v11, v10);
  sub_100065A20(v19);
  sub_100001E74(v19);
  NDORequestPayloadProvider.DataProviders.init(deviceInfoProvider:warrantyHashesProvider:displayedAlertsAndNotificationsIDsProvider:postedAppleCareFollowUpIDsProvider:postedMercuryFollowUpIDsProvider:userInfoProvider:requestMetaProvider:nextCheckInEpoch:configIdProvider:)();
  (*(v3 + 16))(v7, v9, v2);
  v13 = type metadata accessor for NDORequestPayloadProvider();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = NDORequestPayloadProvider.init(dataProviders:headersHelper:)();
  a1[3] = v13;
  a1[4] = &protocol witness table for NDORequestPayloadProvider;
  *a1 = v16;
  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_10005D718@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000B0488 != -1)
  {
    swift_once();
  }

  v2 = sub_10001A078(&qword_1000A7DC0, &qword_1000810E0);
  v3 = sub_100027B34(v2, qword_1000B1F40);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_10005D7E4(uint64_t a1)
{
  if (qword_1000B0488 != -1)
  {
    swift_once();
  }

  v2 = sub_10001A078(&qword_1000A7DC0, &qword_1000810E0);
  v3 = sub_100027B34(v2, qword_1000B1F40);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*sub_10005D8E4())()
{
  if (qword_1000B0488 != -1)
  {
    swift_once();
  }

  v0 = sub_10001A078(&qword_1000A7DC0, &qword_1000810E0);
  sub_100027B34(v0, qword_1000B1F40);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_10005D9B4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t *, uint64_t *, uint64_t *, uint64_t *))
{
  v33 = a5;
  v32 = type metadata accessor for NDORequestPayloadProvider.DataProviders();
  v8 = *(v32 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v32);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v31 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10001A078(a2, a3);
  sub_100027DE0(v20, a4);
  sub_100027B34(v20, a4);
  if (qword_1000B0480 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100001E10(qword_1000B1F18, v39);
  static NDOConstants.localConfigURL.getter();
  if (qword_1000B0470 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100001E10(qword_1000B1EC8, v37);
  v21 = sub_10006207C(v19, v37);
  sub_100001E74(v37);
  (*(v16 + 8))(v19, v15);
  v38[3] = type metadata accessor for NDOPostProcessingURLClient();
  v38[4] = &protocol witness table for NDOPostProcessingURLClient;
  v38[0] = v21;
  if (qword_1000B0460 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_10001EC4C(qword_1000B1E70, v37);
  type metadata accessor for NDOAPIDeviceInfoAdapter();
  sub_100035538(v36);
  v31 = *&qword_1000B1E88;
  v22 = qword_1000B1E88;
  v23 = sub_100001F3C(qword_1000B1E70, qword_1000B1E88);
  v35 = v31;
  v24 = sub_100027B84(v34);
  (*(*(v22 - 8) + 16))(v24, v23, v22);
  sub_100065A20(v34);
  sub_100001E74(v34);
  NDORequestPayloadProvider.DataProviders.init(deviceInfoProvider:warrantyHashesProvider:displayedAlertsAndNotificationsIDsProvider:postedAppleCareFollowUpIDsProvider:postedMercuryFollowUpIDsProvider:userInfoProvider:requestMetaProvider:nextCheckInEpoch:configIdProvider:)();
  v25 = v32;
  (*(v8 + 16))(v12, v14, v32);
  v26 = type metadata accessor for NDORequestPayloadProvider();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v29 = NDORequestPayloadProvider.init(dataProviders:headersHelper:)();
  v36[3] = v26;
  v36[4] = &protocol witness table for NDORequestPayloadProvider;
  v36[0] = v29;
  (*(v8 + 8))(v14, v25);
  v33(v39, v38, v37, v36);
  sub_100001E74(v37);
  sub_100001E74(v39);
  sub_100001E74(v36);
  return sub_100001E74(v38);
}

uint64_t sub_10005DEA0()
{
  if (qword_1000B0490 != -1)
  {
    swift_once();
  }

  v0 = sub_10001A078(&qword_1000A7DC8, &qword_1000810E8);

  return sub_100027B34(v0, qword_1000B1F58);
}

uint64_t sub_10005DF10@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000B0490 != -1)
  {
    swift_once();
  }

  v2 = sub_10001A078(&qword_1000A7DC8, &qword_1000810E8);
  v3 = sub_100027B34(v2, qword_1000B1F58);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_10005DFDC(uint64_t a1)
{
  if (qword_1000B0490 != -1)
  {
    swift_once();
  }

  v2 = sub_10001A078(&qword_1000A7DC8, &qword_1000810E8);
  v3 = sub_100027B34(v2, qword_1000B1F58);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*sub_10005E0DC())()
{
  if (qword_1000B0490 != -1)
  {
    swift_once();
  }

  v0 = sub_10001A078(&qword_1000A7DC8, &qword_1000810E8);
  sub_100027B34(v0, qword_1000B1F58);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_10005E17C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_10001A078(&qword_1000A7DC0, &qword_1000810E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v26 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100049C1C();
  (*(v10 + 16))(v13, v14, v9);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v27 = v8;
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Making device list loader", v17, 2u);
    v8 = v27;
  }

  (*(v10 + 8))(v13, v9);
  if (qword_1000B0488 != -1)
  {
    swift_once();
  }

  v18 = sub_100027B34(v4, qword_1000B1F40);
  swift_beginAccess();
  v19 = *(v5 + 16);
  v19(v8, v18, v4);
  *(swift_allocObject() + 16) = v2;
  v28[3] = v4;
  v28[4] = swift_getOpaqueTypeConformance2();
  v20 = sub_100027B84(v28);
  v19(v20, v8, v4);
  v21 = type metadata accessor for DeviceListLoader();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();

  v24 = DeviceListLoader.init(configLoader:deviceListLoaderProvider:)();
  a1[3] = v21;
  a1[4] = &protocol witness table for DeviceListLoader;

  *a1 = v24;
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_10005E4D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v40 = a2;
  v39 = type metadata accessor for NDORequestPayloadProvider.DataProviders();
  v3 = *(v39 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v39);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v37 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for NDODeviceListRequestGenerator();
  v38 = *(v15 - 8);
  v16 = *(v38 + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v18 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v37 - v19;
  (*(v11 + 16))(v14, a1, v10);
  type metadata accessor for NDOAPIDeviceInfoAdapter();
  sub_100035538(&v43);
  if (qword_1000B0460 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v37 = *&qword_1000B1E88;
  v21 = qword_1000B1E88;
  v22 = sub_100001F3C(qword_1000B1E70, qword_1000B1E88);
  v42 = v37;
  v23 = sub_100027B84(v41);
  (*(*(v21 - 8) + 16))(v23, v22, v21);
  sub_100065A20(v41);
  sub_100001E74(v41);
  NDORequestPayloadProvider.DataProviders.init(deviceInfoProvider:warrantyHashesProvider:displayedAlertsAndNotificationsIDsProvider:postedAppleCareFollowUpIDsProvider:postedMercuryFollowUpIDsProvider:userInfoProvider:requestMetaProvider:nextCheckInEpoch:configIdProvider:)();
  v24 = v39;
  (*(v3 + 16))(v7, v9, v39);
  v25 = type metadata accessor for NDORequestPayloadProvider();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v28 = NDORequestPayloadProvider.init(dataProviders:headersHelper:)();
  v44 = v25;
  v45 = &protocol witness table for NDORequestPayloadProvider;
  *&v43 = v28;
  (*(v3 + 8))(v9, v24);
  NDODeviceListRequestGenerator.init(deviceListURL:payloadProvider:)(v14, &v43, v20);
  if (qword_1000B0470 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100001E10(qword_1000B1EC8, &v43);
  sub_100063194(v20, v18);
  v29 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v30 = swift_allocObject();
  sub_1000631F8(v18, v30 + v29);
  v31 = sub_10001A078(&qword_1000A7E78, &unk_100081180);
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  v34 = NDOMappingLoader.init(client:retryOnUnauthorized:requestGenerator:mapper:)();
  v35 = v40;
  v40[3] = v31;
  v35[4] = sub_1000632C0();
  *v35 = v34;
  return sub_100063324(v20);
}

uint64_t *sub_10005EA4C()
{
  if (qword_1000B0498 != -1)
  {
    swift_once();
  }

  return qword_1000B1F70;
}

uint64_t (*sub_10005EAE4())()
{
  if (qword_1000B0498 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

void sub_10005EB6C()
{
  v0 = objc_allocWithZone(FLFollowUpController);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithClientIdentifier:v1];

  qword_1000B1F98 = v2;
}

uint64_t *sub_10005EBDC()
{
  if (qword_1000B04A0 != -1)
  {
    swift_once();
  }

  return &qword_1000B1F98;
}

uint64_t sub_10005EC2C()
{
  if (qword_1000B04A0 != -1)
  {
    swift_once();
  }

  v0 = qword_1000B1F98;
  v1 = qword_1000B1F98;
  return v0;
}

uint64_t sub_10005EC88()
{
  v0 = sub_10001A078(&qword_1000A7DC0, &qword_1000810E0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v14 - v3;
  v5 = sub_10001A078(&unk_1000A7DD0, &unk_1000810F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  if (qword_1000B0488 != -1)
  {
    swift_once();
  }

  v9 = sub_100027B34(v0, qword_1000B1F40);
  swift_beginAccess();
  (*(v1 + 16))(v4, v9, v0);
  swift_getOpaqueTypeConformance2();
  dispatch thunk of NDOConfigMemCache.getLastLoadedConfig()();
  (*(v1 + 8))(v4, v0);
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    sub_1000035B8(v8, &unk_1000A7DD0, &unk_1000810F0);
    return 0;
  }

  else
  {
    v13 = Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.configID.getter();
    (*(v11 + 8))(v8, v10);
    return v13;
  }
}

uint64_t *sub_10005EF54()
{
  if (qword_1000B04B8 != -1)
  {
    swift_once();
  }

  return &qword_1000B1FD0;
}

uint64_t sub_10005EFA4(void *a1, char a2)
{
  v3 = [objc_opt_self() makePropertiesProvider];
  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();
  [a1 addValue:v4 forHTTPHeaderField:v5];

  v6 = [v3 basicHeadersWithBundleID:0];
  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10005F3B0(v7);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a1 addAllHeadersFrom:isa];

  v9 = String._bridgeToObjectiveC()();
  v10 = [v3 OASHeadersWithOfferID:v9 serialNumber:0 primarySerialNumber:0 currentStoreLocaleHeader:0];

  v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10005F3B0(v11);

  v12 = Dictionary._bridgeToObjectiveC()().super.isa;

  [a1 addAllHeadersFrom:v12];

  v13 = [v3 accountHeadersFor:a1 forceReprovisioning:a2 & 1 avoidUI:1];
  if (v13)
  {
    v14 = v13;
    v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v15 = sub_100001F80(&_swiftEmptyArrayStorage);
  }

  sub_10005F3B0(v15);

  v16 = Dictionary._bridgeToObjectiveC()().super.isa;

  [a1 addAllHeadersFrom:v16];

  v17 = [a1 HTTPBody];
  if (v17)
  {
    v18 = v17;
    v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = Data._bridgeToObjectiveC()().super.isa;
    v23 = [v3 signatureHeadersForBody:v22];

    if (v23)
    {
      v24 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10005F3B0(v24);

      v23 = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    [a1 addAllHeadersFrom:v23];

    swift_unknownObjectRelease();

    return sub_100003EBC(v19, v21);
  }

  else
  {

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_10005F3B0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10001A078(&qword_1000A7E90, &qword_100081190);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (v9 << 10) | (16 * __clz(__rbit64(v5)));
    v14 = (*(a1 + 48) + v13);
    v15 = v14[1];
    v16 = (*(a1 + 56) + v13);
    v18 = *v16;
    v17 = v16[1];
    *&v34[0] = *v14;
    *(&v34[0] + 1) = v15;

    swift_dynamicCast();
    swift_dynamicCast();
    v30 = v26;
    v31 = v27;
    v32 = v28;
    sub_100027ED0(&v29, v33);
    v26 = v30;
    v27 = v31;
    v28 = v32;
    sub_100027ED0(v33, v34);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v19 = -1 << *(v2 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*&v7[8 * (v20 >> 6)]) == 0)
    {
      v22 = 0;
      v23 = (63 - v19) >> 6;
      while (++v21 != v23 || (v22 & 1) == 0)
      {
        v24 = v21 == v23;
        if (v21 == v23)
        {
          v21 = 0;
        }

        v22 |= v24;
        v25 = *&v7[8 * v21];
        if (v25 != -1)
        {
          v10 = __clz(__rbit64(~v25)) + (v21 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v20) & ~*&v7[8 * (v20 >> 6)])) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v26;
    *(v11 + 16) = v27;
    *(v11 + 32) = v28;
    result = sub_100027ED0(v34, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_10005F678(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100063404;

  return (sub_1000626A0)(a1, a2);
}

uint64_t sub_10005F72C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100049C1C();
  (*(v5 + 16))(v8, v9, v4);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "CompositionLayer. Composing checkIn handler with plist killswitch check", v12, 2u);
  }

  (*(v5 + 8))(v8, v4);
  *(swift_allocObject() + 16) = v2;
  sub_10005F9B8(v18);
  v13 = type metadata accessor for NDOConditionalCheckInHandler();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  result = NDOConditionalCheckInHandler.init(isDisabled:handler:)();
  a1[3] = v13;
  a1[4] = &protocol witness table for NDOConditionalCheckInHandler;
  *a1 = result;
  return result;
}

uint64_t sub_10005F904(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000485F4;

  return sub_1000626A0(a1, a2);
}

uint64_t sub_10005F9B8@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for NDORequestPayloadProvider.DataProviders();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v34[-2] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v34[-2] - v8;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v34[-2] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100049C1C();
  (*(v11 + 16))(v14, v15, v10);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *&v33 = v9;
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "CompositionLayer. Creating config loading check in handler", v18, 2u);
    v9 = v33;
  }

  (*(v11 + 8))(v14, v10);
  if (qword_1000B0488 != -1)
  {
    swift_once();
  }

  v19 = sub_10001A078(&qword_1000A7DC0, &qword_1000810E0);
  v20 = sub_100027B34(v19, qword_1000B1F40);
  swift_beginAccess();
  v38[3] = v19;
  v38[4] = swift_getOpaqueTypeConformance2();
  v21 = sub_100027B84(v38);
  (*(*(v19 - 8) + 16))(v21, v20, v19);
  if (qword_1000B0470 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100001E10(qword_1000B1EC8, v37);
  type metadata accessor for NDOAPIDeviceInfoAdapter();
  sub_100035538(v36);
  if (qword_1000B0460 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v33 = *&qword_1000B1E88;
  v22 = qword_1000B1E88;
  v23 = sub_100001F3C(qword_1000B1E70, qword_1000B1E88);
  v35 = v33;
  v24 = sub_100027B84(v34);
  (*(*(v22 - 8) + 16))(v24, v23, v22);
  sub_100065A20(v34);
  sub_100001E74(v34);
  NDORequestPayloadProvider.DataProviders.init(deviceInfoProvider:warrantyHashesProvider:displayedAlertsAndNotificationsIDsProvider:postedAppleCareFollowUpIDsProvider:postedMercuryFollowUpIDsProvider:userInfoProvider:requestMetaProvider:nextCheckInEpoch:configIdProvider:)();
  (*(v3 + 16))(v7, v9, v2);
  v25 = type metadata accessor for NDORequestPayloadProvider();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v28 = NDORequestPayloadProvider.init(dataProviders:headersHelper:)();
  v36[3] = v25;
  v36[4] = &protocol witness table for NDORequestPayloadProvider;
  v36[0] = v28;
  (*(v3 + 8))(v9, v2);
  v29 = type metadata accessor for NDOConfigLoadingCheckInHandler();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  result = NDOConfigLoadingCheckInHandler.init(configLoader:client:payloadProvider:)();
  a1[3] = v29;
  a1[4] = &protocol witness table for NDOConfigLoadingCheckInHandler;
  *a1 = result;
  return result;
}

uint64_t sub_10005FF58()
{
  if (qword_1000B04B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100001E10(&qword_1000B1FA8, v2);
  v0 = sub_100062DA0(v2);
  result = sub_100001E74(v2);
  qword_1000B1FA0 = v0;
  return result;
}

uint64_t sub_10005FFF0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000B04B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_100001E10(&qword_1000B1FA8, a1);
}

uint64_t *sub_100060074()
{
  if (qword_1000B04A8 != -1)
  {
    swift_once();
  }

  return &qword_1000B1FA0;
}

uint64_t (*sub_100060208())()
{
  if (qword_1000B04A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t *sub_100060290()
{
  if (qword_1000B04B0 != -1)
  {
    swift_once();
  }

  return &qword_1000B1FA8;
}

uint64_t sub_1000602E0()
{
  v0 = type metadata accessor for NDORequestPayloadProvider.DataProviders();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v24[-2] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v24[-2] - v6;
  v8 = sub_10001A078(&qword_1000A7DC0, &qword_1000810E0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v24[-2] - v11;
  if (qword_1000B0488 != -1)
  {
    swift_once();
  }

  v13 = sub_100027B34(v8, qword_1000B1F40);
  swift_beginAccess();
  (*(v9 + 16))(v12, v13, v8);
  if (qword_1000B0470 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100001E10(qword_1000B1EC8, v28);
  if (qword_1000B0460 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_10001EC4C(qword_1000B1E70, v27);
  type metadata accessor for NDOAPIDeviceInfoAdapter();
  sub_100035538(v26);
  v23 = *&qword_1000B1E88;
  v14 = qword_1000B1E88;
  v15 = sub_100001F3C(qword_1000B1E70, qword_1000B1E88);
  v25 = v23;
  v16 = sub_100027B84(v24);
  (*(*(v14 - 8) + 16))(v16, v15, v14);
  sub_100065A20(v24);
  sub_100001E74(v24);
  NDORequestPayloadProvider.DataProviders.init(deviceInfoProvider:warrantyHashesProvider:displayedAlertsAndNotificationsIDsProvider:postedAppleCareFollowUpIDsProvider:postedMercuryFollowUpIDsProvider:userInfoProvider:requestMetaProvider:nextCheckInEpoch:configIdProvider:)();
  (*(v1 + 16))(v5, v7, v0);
  v17 = type metadata accessor for NDORequestPayloadProvider();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = NDORequestPayloadProvider.init(dataProviders:headersHelper:)();
  (*(v1 + 8))(v7, v0);
  v21 = sub_100061D44(v12, v28, v27, v20);
  sub_100001E74(v27);
  sub_100001E74(v28);

  (*(v9 + 8))(v12, v8);
  result = type metadata accessor for NDOAckHandler();
  qword_1000B1FC0 = result;
  unk_1000B1FC8 = &protocol witness table for NDOAckHandler;
  qword_1000B1FA8 = v21;
  return result;
}

uint64_t sub_100060784(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1[3];
  v9 = a1[4];
  v10 = sub_100001F3C(a1, v8);

  return sub_1000616D0(v10, a2, a3, a4, v4, v8, v9);
}

uint64_t (*sub_100060838())()
{
  if (qword_1000B04B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id sub_1000608C0()
{
  type metadata accessor for NDOCompositionLayer();
  result = sub_10006CBF4();
  qword_1000B1FD0 = result;
  return result;
}

id sub_100060914(void *a1, void **a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = *a2;

  return v3;
}

void sub_1000609A0(void *a1, void *a2, void **a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = *a3;
  *a3 = a1;
}

uint64_t (*sub_100060A08())()
{
  if (qword_1000B04B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t *sub_100060AC0()
{
  if (qword_1000B04C0 != -1)
  {
    swift_once();
  }

  return qword_1000B1FD8;
}

uint64_t (*sub_100060B58())()
{
  if (qword_1000B04C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_100060BE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100060C6C;

  return sub_1000624BC();
}

uint64_t sub_100060C6C(uint64_t a1)
{
  v2 = *(*v1 + 16);
  v4 = *v1;
  *(*v1 + 24) = a1;

  return _swift_task_switch(sub_1000633F8, 0, 0);
}

uint64_t static NDOCompositionLayer.registerBackgroundCheckInTasks(with:)(uint64_t a1)
{
  if (qword_1000B04B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_1000B1FD0;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = a1;
  v6 = *((swift_isaMask & *v3) + 0x78);
  swift_unknownObjectRetain_n();
  v7 = v3;
  v6(sub_100062F20, v4, sub_100062F28, v5);
}

uint64_t sub_100060EC0(uint64_t a1, void *a2)
{
  if (qword_1000B0460 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_10001EC4C(qword_1000B1E70, v4);
  sub_10006CD0C(a2, v4, j___s10Foundation4DateVACycfC, 0, sub_1000633F4, 0);
  return sub_100001E74(v4);
}

id static NDOCompositionLayer.makePushHandler()()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100049C1C();
  (*(v3 + 16))(v6, v7, v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "CompositionLayer. Creating push handler", v10, 2u);
  }

  (*(v3 + 8))(v6, v2);
  type metadata accessor for NDOAppleCareNotificationsHandler();
  if (qword_1000B04C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100001E10(qword_1000B1FD8, v20);
  if (qword_1000B04B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100001E10(&qword_1000B1FA8, v19);
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  v13 = sub_10003FE98();
  v15 = v14;
  v16 = sub_10001EFF8();
  return sub_10003FF24(v20, v19, sub_100062F50, v11, v13, v15, v16, v17, sub_100061FB4, 0, &unk_100081138, v12);
}

uint64_t sub_1000613CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100061458;

  return sub_1000624BC();
}

uint64_t sub_100061458(uint64_t a1)
{
  v2 = *(*v1 + 16);
  v4 = *v1;
  *(*v1 + 24) = a1;

  return _swift_task_switch(sub_100061558, 0, 0);
}

uint64_t sub_100061558()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    NSDictionary.checkInRetryDelay.getter();
    v3 = v2;

    v4.n128_u64[0] = v3;
  }

  else
  {
    sub_100027E88(0, &qword_1000A7950, NSDictionary_ptr);
    static NSDictionary.defaultCheckInRetryDelay.getter();
  }

  v5 = *(v0 + 8);

  return v5(v4);
}

id NDOCompositionLayer.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NDOCompositionLayer();
  return objc_msgSendSuper2(&v2, "init");
}

id NDOCompositionLayer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NDOCompositionLayer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000616D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v25[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29[3] = a6;
  v29[4] = a7;
  v18 = sub_100027B84(v29);
  (*(*(a6 - 8) + 16))(v18, a1, a6);
  v19 = sub_100049C1C();
  (*(v14 + 16))(v17, v19, v13);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Creating ack handler", v22, 2u);
  }

  (*(v14 + 8))(v17, v13);
  type metadata accessor for NDOAckHandler();
  sub_100001E10(v29, v28);
  sub_100001E10(a2, v27);
  sub_10001EC4C(a3, v26);
  sub_100001E10(a4, v25);
  v23 = NDOAckHandler.__allocating_init(configLoader:urlClient:keyValueStore:requestPayloadProvider:)();
  sub_100001E74(v29);
  return v23;
}

uint64_t sub_1000618E8()
{
  if (qword_1000B04B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = *((swift_isaMask & *qword_1000B1FD0) + 0x80);
  v1 = qword_1000B1FD0;
  v2 = v0();

  return v2;
}

uint64_t sub_1000619B4(uint64_t a1)
{
  v2 = sub_10001A078(&qword_1000A7A90, &unk_10007F060);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v10 - v5;
  if (qword_1000B0480 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100001E10(qword_1000B1F18, v10);
  sub_100001F3C(v10, v10[3]);
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  dispatch thunk of NDOLoader.load(with:)();

  return sub_100001E74(v10);
}

uint64_t sub_100061B7C(uint64_t a1)
{
  v2 = sub_10001A078(&qword_1000A7A90, &unk_10007F060);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v10 - v5;
  if (qword_1000B0478 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100001E10(qword_1000B1EF0, v10);
  sub_100001F3C(v10, v10[3]);
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  dispatch thunk of NDOLoader.load(with:)();

  return sub_100001E74(v10);
}

uint64_t sub_100061D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v27[3] = type metadata accessor for NDORequestPayloadProvider();
  v27[4] = &protocol witness table for NDORequestPayloadProvider;
  v27[0] = a4;
  v13 = sub_10001A078(&qword_1000A7DC0, &qword_1000810E0);
  v26[3] = v13;
  v26[4] = swift_getOpaqueTypeConformance2();
  v14 = sub_100027B84(v26);
  (*(*(v13 - 8) + 16))(v14, a1, v13);

  v15 = sub_100049C1C();
  (*(v9 + 16))(v12, v15, v8);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Creating ack handler", v18, 2u);
  }

  (*(v9 + 8))(v12, v8);
  type metadata accessor for NDOAckHandler();
  sub_100001E10(v26, v25);
  sub_100001E10(a2, v24);
  sub_10001EC4C(a3, v23);
  sub_100001E10(v27, v22);
  v19 = NDOAckHandler.__allocating_init(configLoader:urlClient:keyValueStore:requestPayloadProvider:)();
  sub_100001E74(v26);
  sub_100001E74(v27);
  return v19;
}

void sub_100061FB8(uint64_t a1)
{
  if (qword_1000B04B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *((swift_isaMask & *qword_1000B1FD0) + 0x88);
  v3 = qword_1000B1FD0;
  v2(a1);
}

uint64_t sub_10006207C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = sub_100049C1C();
  (*(v4 + 16))(v7, v8, v3);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "CompositionLayer. Creating caching post URL client", v11, 2u);
  }

  (*(v4 + 8))(v7, v3);
  sub_100001E10(a2, v17);
  static NDOClientPostProcessor.saveDataToUrl(_:)();
  v12 = type metadata accessor for NDOPostProcessingURLClient();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  return NDOPostProcessingURLClient.init(internalClient:postProcessor:)();
}

uint64_t sub_10006222C()
{
  v1 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v3 = sub_10001A078(&qword_1000A7A88, &unk_10007F050);
  *v2 = v0;
  v2[1] = sub_100062314;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000010, 0x800000010008C590, sub_1000619B4, 0, v3);
}

uint64_t sub_100062314()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return _swift_task_switch(sub_100062410, 0, 0);
}

uint64_t sub_100062410()
{
  v1 = *(v0 + 16);
  if (*(v0 + 24) == 1)
  {
    *(v0 + 32) = v1;
    v2 = v1;
    sub_10001A078(&unk_1000A7980, &qword_10007D9E0);
    swift_willThrowTypedImpl();
    sub_1000496C8(v2, 1);
    v1 = 0;
  }

  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t sub_1000624BC()
{
  v1 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v3 = sub_10001A078(&qword_1000A7A88, &unk_10007F050);
  *v2 = v0;
  v2[1] = sub_1000625A4;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0x7473696C50746567, 0xEA00000000002928, sub_100061B7C, 0, v3);
}

uint64_t sub_1000625A4()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return _swift_task_switch(sub_1000633F0, 0, 0);
}

uint64_t sub_1000626A0(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = type metadata accessor for Date();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v2[11] = v6;
  v7 = *(v6 - 8);
  v2[12] = v7;
  v8 = *(v7 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v9 = swift_task_alloc();
  v2[15] = v9;
  *v9 = v2;
  v9[1] = sub_100062800;

  return sub_10006222C();
}

uint64_t sub_100062800(uint64_t a1)
{
  v2 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = a1;

  return _swift_task_switch(sub_100062900, 0, 0);
}

uint64_t sub_100062900()
{
  v46 = v0;
  v1 = *(v0 + 128);
  if (!v1 || (v2 = v1, v3 = NSDictionary.checkInDisabled.getter(), v2, (v3 & 1) != 0))
  {
    v5 = *(v0 + 96);
    v4 = *(v0 + 104);
    v6 = *(v0 + 88);
    v7 = sub_100049C1C();
    (*(v5 + 16))(v4, v7, v6);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Check in disabled, scheduling a future attempt", v10, 2u);
    }

    v12 = *(v0 + 96);
    v11 = *(v0 + 104);
    v13 = *(v0 + 88);

    (*(v12 + 8))(v11, v13);
    if (qword_1000B04B8 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 72);
    swift_beginAccess();
    v15 = qword_1000B1FD0;
    Date.init()();
    if (v1)
    {
      v16 = *(v0 + 128);
      NSDictionary.checkInRetryDelay.getter();
    }

    else
    {
      sub_100027E88(0, &qword_1000A7950, NSDictionary_ptr);
      static NSDictionary.defaultCheckInRetryDelay.getter();
      v16 = 0;
    }

    v32 = *(v0 + 72);
    v33 = *(v0 + 80);
    v34 = *(v0 + 56);
    v35 = *(v0 + 64);
    Date.addingTimeInterval(_:)();
    v36 = *(v35 + 8);
    v36(v32, v34);
    (*((swift_isaMask & *v15) + 0x88))(v33);

    v36(v33, v34);
    goto LABEL_14;
  }

  if (NSDictionary.checkInTriggerDisabled(_:)(*(v0 + 40)))
  {
    v17 = *(v0 + 112);
    v18 = *(v0 + 88);
    v19 = *(v0 + 96);
    v20 = *(v0 + 48);
    v21 = sub_100049C1C();
    (*(v19 + 16))(v17, v21, v18);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 112);
    v27 = *(v0 + 88);
    v26 = *(v0 + 96);
    if (v24)
    {
      v44 = *(v0 + 112);
      v29 = *(v0 + 40);
      v28 = *(v0 + 48);
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v45 = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_10001FEC8(v29, v28, &v45);
      _os_log_impl(&_mh_execute_header, v22, v23, "Check in disabled for trigger %s", v30, 0xCu);
      sub_100001E74(v31);

      (*(v26 + 8))(v44, v27);
    }

    else
    {

      (*(v26 + 8))(v25, v27);
    }

LABEL_14:
    v37 = 1;
    goto LABEL_15;
  }

  v37 = 0;
LABEL_15:
  v39 = *(v0 + 104);
  v38 = *(v0 + 112);
  v41 = *(v0 + 72);
  v40 = *(v0 + 80);

  v42 = *(v0 + 8);

  return v42(v37);
}

uint64_t sub_100062D04(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000485F4;

  return sub_10005F904(a1, a2);
}

id sub_100062DA0(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100049C1C();
  (*(v3 + 16))(v6, v7, v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Creating UI action handler", v10, 2u);
  }

  (*(v3 + 8))(v6, v2);
  type metadata accessor for NDOUIActionHandler();
  sub_100001E10(a1, v13);
  return sub_100067018(v13);
}

void sub_100062F28()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_10006D3C0(v1);
}

uint64_t sub_100062F74()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100063000;

  return sub_1000613CC();
}

uint64_t sub_100063000(double a1)
{
  v3 = *(*v1 + 16);
  v7 = *v1;

  v4 = *(v7 + 8);
  v5.n128_f64[0] = a1;

  return v4(v5);
}

uint64_t sub_1000630FC()
{
  v1 = sub_10001A078(&qword_1000A7A90, &unk_10007F060);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100063194(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDODeviceListRequestGenerator();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000631F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDODeviceListRequestGenerator();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10006325C(Swift::Bool a1)
{
  v3 = *(type metadata accessor for NDODeviceListRequestGenerator() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  return NDODeviceListRequestGenerator.generateRequest(isRetry:)(a1);
}

unint64_t sub_1000632C0()
{
  result = qword_1000A7E80;
  if (!qword_1000A7E80)
  {
    sub_10001EFA0(&qword_1000A7E78, &unk_100081180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7E80);
  }

  return result;
}

uint64_t sub_100063324(uint64_t a1)
{
  v2 = type metadata accessor for NDODeviceListRequestGenerator();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100063380(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001A078(&unk_1000A7EA0, &qword_10007F110);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 NDODWPromoModel.init(title:subtitle:buttonTitle:action:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  result = *a7;
  v9 = *(a7 + 16);
  *(a8 + 48) = *a7;
  *(a8 + 64) = v9;
  *(a8 + 80) = *(a7 + 32);
  return result;
}

uint64_t sub_100063438()
{
  v1 = 0x656C746974;
  v2 = 0x69546E6F74747562;
  if (*v0 != 2)
  {
    v2 = 0x6E6F69746361;
  }

  if (*v0)
  {
    v1 = 0x656C746974627573;
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

uint64_t sub_1000634B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100063B48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000634DC(uint64_t a1)
{
  v2 = sub_100063D74();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100063518(uint64_t a1)
{
  v2 = sub_100063D74();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NDODWPromoModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10001A078(&qword_1000A7EB0, &qword_100081198);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  sub_100001F3C(a1, a1[3]);
  sub_100063D74();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v20) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v20) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v3[4];
    v16 = v3[5];
    LOBYTE(v20) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = *(v3 + 4);
    v20 = *(v3 + 3);
    v21 = v17;
    v22 = *(v3 + 80);
    v19[15] = 3;
    sub_10001DC10();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t NDODWPromoModel.hash(into:)()
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
  v8 = *(v0 + 3);
  v9 = *(v0 + 4);
  v10 = *(v0 + 80);
  sub_1000287C0();
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int NDODWPromoModel.hashValue.getter()
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
  v8 = *(v0 + 3);
  v9 = *(v0 + 4);
  v10 = *(v0 + 80);
  sub_1000287C0();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

double NDODWPromoModel.init(from:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100063DC8(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

Swift::Int sub_1000638B8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 80);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  v9 = *(v0 + 3);
  v10 = *(v0 + 4);
  sub_1000287C0();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100063970()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 80);
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  v10 = *(v0 + 4);
  v9 = *(v0 + 3);
  sub_1000287C0();
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_100063A10()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 80);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  v9 = *(v0 + 3);
  v10 = *(v0 + 4);
  sub_1000287C0();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100063ADC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return _s8ndoagent15NDODWPromoModelV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v9) & 1;
}

uint64_t sub_100063B48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69546E6F74747562 && a2 == 0xEB00000000656C74 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
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

uint64_t _s8ndoagent15NDODWPromoModelV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (*(a1 + 16) == *(a2 + 16) ? (v5 = *(a1 + 24) == *(a2 + 24)) : (v5 = 0), (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40) || (_stringCompareWithSmolCheck(_:_:expecting:)())))
  {
    v6 = *(a1 + 64);
    v12[0] = *(a1 + 48);
    v12[1] = v6;
    v13 = *(a1 + 80);
    v7 = *(a2 + 64);
    v10[0] = *(a2 + 48);
    v10[1] = v7;
    v11 = *(a2 + 80);
    v8 = static NDOAction.__derived_enum_equals(_:_:)(v12, v10);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

unint64_t sub_100063D74()
{
  result = qword_1000B04D0[0];
  if (!qword_1000B04D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B04D0);
  }

  return result;
}

uint64_t sub_100063DC8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10001A078(&qword_1000A7EC0, &qword_100081500);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  sub_100001F3C(a1, a1[3]);
  sub_100063D74();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100001E74(a1);
  }

  LOBYTE(v40[0]) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v33 = v12;
  LOBYTE(v40[0]) = 1;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v32 = v14;
  v30 = v13;
  LOBYTE(v40[0]) = 2;
  v29 = KeyedDecodingContainer.decode(_:forKey:)();
  v31 = v15;
  v46 = 3;
  sub_10001E490();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v27 = *(&v42 + 1);
  v28 = v42;
  v25 = *(&v43 + 1);
  v26 = v43;
  v45 = v44;
  *&v34 = v11;
  v16 = v33;
  *(&v34 + 1) = v33;
  v17 = v30;
  *&v35 = v30;
  v18 = v32;
  *(&v35 + 1) = v32;
  v19 = v29;
  *&v36 = v29;
  v20 = v31;
  *(&v36 + 1) = v31;
  v37 = v42;
  v38 = v43;
  v39 = v44;
  sub_1000643F0(&v34, v40);
  sub_100001E74(a1);
  v40[0] = v11;
  v40[1] = v16;
  v40[2] = v17;
  v40[3] = v18;
  v40[4] = v19;
  v40[5] = v20;
  v40[6] = v28;
  v40[7] = v27;
  v40[8] = v26;
  v40[9] = v25;
  v41 = v45;
  result = sub_100064428(v40);
  v22 = v37;
  *(a2 + 32) = v36;
  *(a2 + 48) = v22;
  *(a2 + 64) = v38;
  *(a2 + 80) = v39;
  v23 = v35;
  *a2 = v34;
  *(a2 + 16) = v23;
  return result;
}

unint64_t sub_1000641B0()
{
  result = qword_1000A7EB8;
  if (!qword_1000A7EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7EB8);
  }

  return result;
}

__n128 sub_100064204(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100064228(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_100064270(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000642EC()
{
  result = qword_1000B07E0[0];
  if (!qword_1000B07E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B07E0);
  }

  return result;
}

unint64_t sub_100064344()
{
  result = qword_1000B08F0;
  if (!qword_1000B08F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B08F0);
  }

  return result;
}

unint64_t sub_10006439C()
{
  result = qword_1000B08F8[0];
  if (!qword_1000B08F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B08F8);
  }

  return result;
}

uint64_t sub_100064464@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v1 = type metadata accessor for TimeZone();
  v61 = *(v1 - 8);
  v62 = v1;
  v2 = *(v61 + 64);
  __chkstk_darwin(v1);
  v60 = v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10001A078(&qword_1000A7EC8, &qword_100081508);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v57 = v50 - v6;
  v7 = type metadata accessor for Locale.Language();
  v52 = *(v7 - 8);
  v53 = v7;
  v8 = *(v52 + 64);
  __chkstk_darwin(v7);
  v10 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for Locale();
  v11 = *(v54 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v54);
  v15 = v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v50 - v16;
  v18 = type metadata accessor for Date();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for UUID();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v28 = UUID.uuidString.getter();
  v55 = v29;
  v56 = v28;
  (*(v24 + 8))(v27, v23);
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v31 = v30;
  v32 = v30;
  v33 = *(v19 + 8);
  v58 = v19 + 8;
  v59 = v18;
  result = v33(v22, v18);
  if ((*&v32 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v31 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v31 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v51 = v33;
  v35 = objc_opt_self();
  v36 = [v35 preferredLanguages];
  v50[2] = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v37 = [v35 currentLocale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  Locale.language.getter();
  v38 = *(v11 + 8);
  v39 = v17;
  v40 = v54;
  v38(v39, v54);
  v41 = Locale.Language.maximalIdentifier.getter();
  v50[0] = v42;
  v50[1] = v41;
  (*(v52 + 8))(v10, v53);
  v43 = [v35 currentLocale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  v44 = v57;
  Locale.region.getter();
  v38(v15, v40);
  v45 = type metadata accessor for Locale.Region();
  v46 = *(v45 - 8);
  if ((*(v46 + 48))(v44, 1, v45) == 1)
  {
    sub_1000035B8(v44, &qword_1000A7EC8, &qword_100081508);
  }

  else
  {
    Locale.Region.identifier.getter();
    (*(v46 + 8))(v44, v45);
  }

  v47 = [objc_opt_self() localTimeZone];
  v48 = v60;
  static TimeZone._unconditionallyBridgeFromObjectiveC(_:)();

  Date.init()();
  v49 = TimeZone.secondsFromGMT(for:)();
  v51(v22, v59);
  (*(v61 + 8))(v48, v62);
  v64 = v49 / 3600;
  dispatch thunk of CustomStringConvertible.description.getter();
  sub_1000662A4();
  return RequestMetaData.init(requestID:requestEpoch:preferredLanguages:deviceLanguage:deviceRegion:deviceTimezone:closestCity:storefrontCountry:)();
}

void sub_100064AB8(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() ams_sharedAccountStore];
  v3 = [v2 ams_activeiTunesAccount];
  if (v3)
  {
    v12 = v3;
    v4 = [v3 appleID];
    if (v4)
    {
      v5 = v4;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v8 = [v12 aida_dsid];
    if (v8)
    {
      v9 = v8;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v10 = [v12 aida_alternateDSID];
    if (v10)
    {
      v11 = v10;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    UserInfo.init(iTunesAppleId:iTunesDSID:iTunesAltDSID:)();

    v7 = v12;
  }

  else
  {
    v6 = type metadata accessor for UserInfo();
    (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
    v7 = v2;
  }
}

void *sub_100064C6C()
{
  v0 = type metadata accessor for Logger();
  v132 = *(v0 - 8);
  v133 = v0;
  v1 = *(v132 + 64);
  __chkstk_darwin(v0);
  v3 = &v102 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for WarrantyHashInfo();
  v5 = *(v4 - 8);
  v130 = v4;
  v131 = v5;
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v103 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for JSONDecodingOptions();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v108 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10001A078(&qword_1000A71A0, qword_10007B370);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v102 - v13;
  v128 = type metadata accessor for URL.DirectoryHint();
  v135 = *(v128 - 8);
  v15 = v135[8];
  __chkstk_darwin(v128);
  v127 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10001A078(&qword_1000A7ED0, &unk_100081510);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v107 = &v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v126 = &v102 - v21;
  v22 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData();
  v134 = *(v22 - 8);
  v23 = *(v134 + 64);
  v24 = __chkstk_darwin(v22);
  v129 = &v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v125 = &v102 - v27;
  v28 = __chkstk_darwin(v26);
  v104 = &v102 - v29;
  __chkstk_darwin(v28);
  v111 = &v102 - v30;
  v31 = type metadata accessor for URL();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = __chkstk_darwin(v31);
  v106 = &v102 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v38 = &v102 - v37;
  __chkstk_darwin(v36);
  v40 = &v102 - v39;
  v41 = [objc_opt_self() defaultManager];
  static NDOConstants.deviceCoverageCacheDirPath.getter();
  URL.path.getter();
  v42 = *(v32 + 8);
  v123 = v40;
  v124 = v31;
  v121 = v42;
  v122 = v32 + 8;
  v42(v40, v31);
  v43 = String._bridgeToObjectiveC()();

  v137[0] = 0;
  v44 = [v41 contentsOfDirectoryAtPath:v43 error:v137];

  v45 = v137[0];
  if (!v44)
  {
    v94 = v137[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v95 = sub_100049C1C();
    v97 = v132;
    v96 = v133;
    (*(v132 + 16))(v3, v95, v133);
    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      *v100 = 0;
      _os_log_impl(&_mh_execute_header, v98, v99, "Unable to read contents of device coverage cached directory path", v100, 2u);
    }

    (*(v97 + 8))(v3, v96);
    return &_swiftEmptyArrayStorage;
  }

  v120 = v38;
  v46 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v45;

  v48 = v46;
  v49 = *(v46 + 16);
  v50 = &_swiftEmptyArrayStorage;
  v136 = v22;
  v119 = v49;
  if (v49)
  {
    v110 = v14;
    v51 = 0;
    v117 = enum case for URL.DirectoryHint.inferFromPath(_:);
    v116 = (v135 + 13);
    v115 = (v135 + 1);
    v109 = (v32 + 48);
    v132 = v134 + 32;
    v133 = (v134 + 56);
    v102 = (v134 + 8);
    v114 = (v134 + 48);
    v52 = (v46 + 40);
    v118 = v46;
    do
    {
      if (v51 >= *(v48 + 16))
      {
        __break(1u);
      }

      v135 = v50;
      v54 = *(v52 - 1);
      v53 = *v52;

      v55 = v123;
      static NDOConstants.deviceCoverageCacheDirPath.getter();
      v137[0] = v54;
      v137[1] = v53;
      v57 = v127;
      v56 = v128;
      (*v116)(v127, v117, v128);
      sub_100032090();
      v58 = v120;
      URL.appending<A>(path:directoryHint:)();
      v59 = v124;
      (*v115)(v57, v56);
      v60 = v121;
      v121(v55, v59);
      v112 = Data.init(contentsOf:options:)();
      v113 = v61;
      v60(v58, v59);
      v62 = v110;
      URL.init(string:)();
      if ((*v109)(v62, 1, v59) == 1)
      {
        sub_100003EBC(v112, v113);
        sub_1000035B8(v62, &qword_1000A71A0, qword_10007B370);
        v50 = v135;
        v63 = v136;
      }

      else
      {
        v69 = v106;
        URL.deletingPathExtension()();
        v60(v62, v59);
        v105 = URL.lastPathComponent.getter();
        v71 = v70;
        v60(v69, v59);
        sub_100034F60(v112, v113);
        JSONDecodingOptions.init()();
        sub_1000024F8();
        v72 = v107;
        v73 = v136;
        Message.init(jsonUTF8Data:options:)();
        v74 = *v133;
        (*v133)(v72, 0, 1, v73);
        v75 = v73;
        v76 = *v132;
        (*v132)(v104, v72, v75);
        v77 = Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData.serialNumber.getter();
        v79 = v71;
        v50 = v135;
        if (v77 == v105 && v78 == v79)
        {
          sub_100003EBC(v112, v113);

LABEL_20:
          v81 = v74;
          v64 = v126;
          v82 = v136;
          v76(v126, v104, v136);
          v63 = v82;
          v81(v64, 0, 1, v82);
          goto LABEL_10;
        }

        v80 = _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_100003EBC(v112, v113);

        if (v80)
        {
          goto LABEL_20;
        }

        v63 = v136;
        (*v102)(v104, v136);
      }

      v64 = v126;
      (*v133)(v126, 1, 1, v63);
LABEL_10:

      if ((*v114)(v64, 1, v63) == 1)
      {
        sub_1000035B8(v64, &qword_1000A7ED0, &unk_100081510);
      }

      else
      {
        v65 = *v132;
        v66 = v111;
        (*v132)(v111, v64, v63);
        v65(v125, v66, v63);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v50 = sub_100065CEC(0, v50[2] + 1, 1, v50);
        }

        v68 = v50[2];
        v67 = v50[3];
        if (v68 >= v67 >> 1)
        {
          v50 = sub_100065CEC(v67 > 1, v68 + 1, 1, v50);
        }

        v50[2] = v68 + 1;
        v65(v50 + ((*(v134 + 80) + 32) & ~*(v134 + 80)) + *(v134 + 72) * v68, v125, v63);
      }

      ++v51;
      v52 += 2;
      v48 = v118;
    }

    while (v119 != v51);
  }

  v83 = v50[2];
  if (!v83)
  {

    return &_swiftEmptyArrayStorage;
  }

  v137[0] = &_swiftEmptyArrayStorage;
  sub_100065EC4(0, v83, 0);
  v85 = v136;
  v84 = v137[0];
  v86 = *(v134 + 16);
  v87 = *(v134 + 80);
  v134 += 16;
  v135 = v50;
  v88 = v50 + ((v87 + 32) & ~v87);
  v132 = *(v134 + 56);
  v133 = v86;
  v89 = (v134 - 8);
  v90 = v103;
  do
  {
    v91 = v129;
    (v133)(v129, v88, v85);
    Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData.serialNumber.getter();
    Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData.coverageHash.getter();
    WarrantyHashInfo.init(serial:warrantyHash:)();
    (*v89)(v91, v85);
    v137[0] = v84;
    v93 = v84[2];
    v92 = v84[3];
    if (v93 >= v92 >> 1)
    {
      sub_100065EC4(v92 > 1, v93 + 1, 1);
      v90 = v103;
      v84 = v137[0];
    }

    v84[2] = v93 + 1;
    (*(v131 + 32))(v84 + ((*(v131 + 80) + 32) & ~*(v131 + 80)) + *(v131 + 72) * v93, v90, v130);
    v88 += v132;
    --v83;
  }

  while (v83);

  return v84;
}

unint64_t *(*sub_100065A20(uint64_t a1))()
{
  sub_100001E10(a1, v3);
  v1 = swift_allocObject();
  sub_100005734(v3, v1 + 16);
  return sub_100066564;
}

unint64_t *sub_100065A88(void *a1)
{
  v2 = type metadata accessor for NDOKeyValueStoreKey();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[4];
  sub_100001F3C(a1, a1[3]);
  (*(v3 + 104))(v6, enum case for NDOKeyValueStoreKey.displayedAlertsAndNotifications(_:), v2);
  v8 = dispatch thunk of NDOKeyValueStoreReader.array(for:)();
  (*(v3 + 8))(v6, v2);
  if (v8)
  {
    v9 = sub_100065BD8(v8);

    if (v9)
    {
      return v9;
    }
  }

  return &_swiftEmptyArrayStorage;
}

unint64_t *sub_100065BD8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = &_swiftEmptyArrayStorage;
  sub_100033930(0, v2, 0);
  v3 = &_swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_100020798(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_100033930((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      v3[2] = v6 + 1;
      v7 = &v3[2 * v6];
      v7[4] = v9;
      v7[5] = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

size_t sub_100065CEC(size_t result, int64_t a2, char a3, void *a4)
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

  sub_10001A078(&qword_1000A7EE0, &unk_100081538);
  v10 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData() - 8);
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
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_WarrantyData() - 8);
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

size_t sub_100065EC4(size_t a1, int64_t a2, char a3)
{
  result = sub_100065EE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100065EE4(size_t result, int64_t a2, char a3, void *a4)
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

  sub_10001A078(&qword_1000A7ED8, &qword_100081530);
  v10 = *(type metadata accessor for WarrantyHashInfo() - 8);
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
  v15 = *(type metadata accessor for WarrantyHashInfo() - 8);
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

uint64_t sub_1000660BC()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1000035B8(v7, &qword_1000A6FD8, &unk_10007DAC0);
    return 0;
  }
}

uint64_t sub_1000661E0()
{
  v0 = [objc_opt_self() ams_sharedAccountStore];
  v1 = [v0 ams_activeiTunesAccount];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 ams_storefront];
    if (v3)
    {
      v4 = v3;
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v5;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1000662A4()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v24 - v6;
  v8 = sub_1000660BC();
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    v12 = sub_100049C1C();
    (*(v1 + 16))(v7, v12, v0);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v25 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_10001FEC8(v10, v11, &v25);
      _os_log_impl(&_mh_execute_header, v13, v14, "Using storefront locale override:%s", v15, 0xCu);
      sub_100001E74(v16);
    }

    (*(v1 + 8))(v7, v0);
  }

  else
  {
    v17 = sub_1000661E0();
    if (v18)
    {
      return v17;
    }

    else
    {
      v19 = sub_100049C1C();
      (*(v1 + 16))(v5, v19, v0);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Failed to get itunes account storefront locale", v22, 2u);
      }

      (*(v1 + 8))(v5, v0);
      return 0;
    }
  }

  return v10;
}

uint64_t NDOLocalCoverageCentralResponse.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NDOLocalCoverageCentralResponse() + 20);

  return sub_100024300(v3, a1);
}

uint64_t type metadata accessor for NDOLocalCoverageCentralResponse()
{
  result = qword_1000B0A90;
  if (!qword_1000B0A90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NDOLocalCoverageCentralResponse.init(sections:date:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v4 = a3 + *(type metadata accessor for NDOLocalCoverageCentralResponse() + 20);

  return sub_1000243BC(a2, v4);
}

uint64_t sub_100066658(uint64_t a1)
{
  v2 = sub_1000668D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100066694(uint64_t a1)
{
  v2 = sub_1000668D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NDOLocalCoverageCentralResponse.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10001A078(&qword_1000A7EE8, &qword_100081548);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  sub_100001F3C(a1, a1[3]);
  sub_1000668D0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = *v3;
  v13[7] = 0;
  sub_10001A078(&qword_1000A7B78, &qword_100081550);
  sub_100066C48(&qword_1000A7B80, sub_10004F4A8);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = *(type metadata accessor for NDOLocalCoverageCentralResponse() + 20);
    v13[6] = 1;
    type metadata accessor for Date();
    sub_100024C70(&qword_1000A72C8);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1000668D0()
{
  result = qword_1000B0980[0];
  if (!qword_1000B0980[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B0980);
  }

  return result;
}

uint64_t NDOLocalCoverageCentralResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_10001A078(&qword_1000A72A0, &qword_10007C010);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v21 - v6;
  v8 = sub_10001A078(&qword_1000A7EF0, &qword_100081558);
  v24 = *(v8 - 8);
  v25 = v8;
  v9 = *(v24 + 64);
  __chkstk_darwin(v8);
  v11 = &v21 - v10;
  v12 = type metadata accessor for NDOLocalCoverageCentralResponse();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  sub_100001F3C(a1, a1[3]);
  sub_1000668D0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100001E74(a1);
  }

  v22 = v12;
  v17 = v15;
  v18 = v24;
  sub_10001A078(&qword_1000A7B78, &qword_100081550);
  v27 = 0;
  sub_100066C48(&qword_1000A7EF8, sub_100066CC0);
  v19 = v25;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = v28;
  *v17 = v28;
  type metadata accessor for Date();
  v26 = 1;
  sub_100024C70(&qword_1000A72E8);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v18 + 8))(v11, v19);
  sub_1000243BC(v7, v17 + *(v22 + 20));
  sub_100066D14(v17, v23);
  sub_100001E74(a1);
  return sub_100066D78(v17);
}

uint64_t sub_100066C48(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10001EFA0(&qword_1000A7B78, &qword_100081550);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100066CC0()
{
  result = qword_1000A7F00;
  if (!qword_1000A7F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A7F00);
  }

  return result;
}

uint64_t sub_100066D14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDOLocalCoverageCentralResponse();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100066D78(uint64_t a1)
{
  v2 = type metadata accessor for NDOLocalCoverageCentralResponse();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100066E2C()
{
  sub_100066EB0();
  if (v0 <= 0x3F)
  {
    sub_100024EA0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100066EB0()
{
  if (!qword_1000A7F60)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1000A7F60);
    }
  }
}

unint64_t sub_100066F14()
{
  result = qword_1000B0BA0[0];
  if (!qword_1000B0BA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B0BA0);
  }

  return result;
}

unint64_t sub_100066F6C()
{
  result = qword_1000B0CB0;
  if (!qword_1000B0CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B0CB0);
  }

  return result;
}

unint64_t sub_100066FC4()
{
  result = qword_1000B0CB8[0];
  if (!qword_1000B0CB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B0CB8);
  }

  return result;
}

id sub_100067018(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  sub_100001E10(a1, v3 + OBJC_IVAR____TtC8ndoagent18NDOUIActionHandler_ackHandler);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, "init");
  sub_100001E74(a1);
  return v4;
}

id sub_10006708C(uint64_t *a1)
{
  sub_100001E10(a1, v1 + OBJC_IVAR____TtC8ndoagent18NDOUIActionHandler_ackHandler);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for NDOUIActionHandler();
  v3 = objc_msgSendSuper2(&v5, "init");
  sub_100001E74(a1);
  return v3;
}

uint64_t sub_100067110()
{
  v1 = sub_10001A078(&qword_1000A7920, &qword_10007AE70);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;
  v7 = v0;
  sub_100041174(0, 0, v4, &unk_100081700, v6);
}

uint64_t sub_100067234()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC8ndoagent18NDOUIActionHandler_ackHandler);
  v2 = v1[3];
  v3 = v1[4];
  sub_100001F3C(v1, v2);
  v4 = async function pointer to dispatch thunk of AckHandler.ack(data:)[1];
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_100067300;

  return dispatch thunk of AckHandler.ack(data:)(&_swiftEmptyArrayStorage, v2, v3);
}

uint64_t sub_100067300()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000673F4()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001D068;

  return sub_100067214(v3, v4, v5, v2);
}

uint64_t sub_100067590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001A078(&qword_1000A7B58, &qword_10007F0F8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v20 - v8;
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v20 - v16;
  static NDOResponseMapper.DeviceList.loadLocalData()();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000035B8(v9, &qword_1000A7B58, &qword_10007F0F8);
  }

  else
  {
    (*(v11 + 32))(v17, v9, v10);
    sub_100067D58(a1, v17, v15);
    static NDOResponseMapper.DeviceList.save(_:)();
    v18 = *(v11 + 8);
    v18(v15, v10);
    v18(v17, v10);
  }

  return sub_10006777C(a2, a3);
}

uint64_t sub_10006777C(uint64_t a1, uint64_t a2)
{
  *&v38 = a2;
  v2 = type metadata accessor for Logger();
  v36 = *(v2 - 8);
  v37 = v2;
  v3 = *(v36 + 64);
  __chkstk_darwin(v2);
  v4 = sub_10001A078(&qword_1000A7920, &qword_10007AE70);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v34 = &v32 - v6;
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CTActionType();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData();
  v12 = *(v33 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v33);
  v15 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v32 - v16;
  v18 = type metadata accessor for JSONDecoder();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_100054C74();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  v38 = v39;
  v21 = v41;
  v37 = v40;
  (*(v8 + 104))(v11, enum case for Com_Apple_Sse_Ocean_Ndo_Api_CTActionType.dismissCcPromo(_:), v7);

  Com_Apple_Sse_Ocean_Ndo_Api_AckData.init(userAction:additionalPayload:)();
  v22 = type metadata accessor for TaskPriority();
  v23 = v34;
  (*(*(v22 - 8) + 56))(v34, 1, 1, v22);
  v24 = v33;
  (*(v12 + 16))(v15, v17, v33);
  v25 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v26 = (v13 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 2) = 0;
  *(v27 + 3) = 0;
  v28 = v35;
  *(v27 + 4) = v35;
  (*(v12 + 32))(&v27[v25], v15, v24);
  v29 = &v27[v26];
  *v29 = v38;
  *(v29 + 2) = v37;
  *(v29 + 3) = v21;
  v30 = v28;
  sub_100041174(0, 0, v23, &unk_100081760, v27);

  return (*(v12 + 8))(v17, v24);
}

id sub_100067D14()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NDOUIActionHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

size_t sub_100067D58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v98 = a3;
  v92 = type metadata accessor for Logger();
  v91 = *(v92 - 8);
  v5 = *(v91 + 64);
  __chkstk_darwin(v92);
  v90 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem();
  v7 = *(v117 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v117);
  v109 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v102 = (&v88 - v12);
  __chkstk_darwin(v11);
  v14 = (&v88 - v13);
  v15 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v115 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = &v88 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v88 - v24;
  __chkstk_darwin(v23);
  v27 = (&v88 - v26);
  v28 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse();
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v31 = (&v88 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v96 = v32;
  v33 = *(v32 + 16);
  v97 = v34;
  v33(v31, a2);
  v35 = v31;
  v36 = Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse.sections.getter();
  v37 = *(v36 + 16);
  v101 = v31;
  v95 = v37;
  if (v37)
  {
    v38 = 0;
    v39 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v40 = v36 + v39;
    v113 = v16 + 16;
    v114 = v15;
    v118 = v7 + 16;
    v116 = (v7 + 8);
    v104 = (v16 + 8);
    v105 = a1;
    v106 = v22;
    v107 = v39;
    v111 = v7;
    v94 = v16;
    v89 = v25;
    v108 = v27;
    v103 = v36;
    v88 = v36 + v39;
    while (2)
    {
      if (v38 >= *(v36 + 16))
      {
        goto LABEL_48;
      }

      v110 = *(v16 + 72);
      v100 = v38;
      v41 = *(v16 + 16);
      v99 = v110 * v38;
      v112 = v41;
      v41(v27, v40 + v110 * v38, v15);
      v35 = v27;
      v42 = Com_Apple_Sse_Ocean_Ndo_Api_CCSection.items.getter();
      v22 = *(v42 + 16);
      if (v22)
      {
        v119 = &_swiftEmptyArrayStorage;
        sub_100068D30(0, v22, 0);
        v43 = v119;
        v44 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v93 = v42;
        v45 = v42 + v44;
        v46 = *(v7 + 72);
        v47 = *(v7 + 16);
        do
        {
          v48 = v117;
          v47(v14, v45, v117);
          v35 = v14;
          v49 = Com_Apple_Sse_Ocean_Ndo_Api_CCItem.hashValue.getter();
          (*v116)(v14, v48);
          v119 = v43;
          v51 = v43[2];
          v50 = v43[3];
          if (v51 >= v50 >> 1)
          {
            v35 = &v119;
            sub_100068D30((v50 > 1), v51 + 1, 1);
            v43 = v119;
          }

          v43[2] = v51 + 1;
          v43[v51 + 4] = v49;
          v45 += v46;
          --v22;
        }

        while (v22);

        v31 = v101;
        v15 = v114;
        a1 = v105;
        v7 = v111;
        v25 = v89;
      }

      else
      {

        v43 = &_swiftEmptyArrayStorage;
      }

      v52 = v43[2];
      v53 = 4;
      while (v52)
      {
        v54 = v43[v53++];
        --v52;
        if (v54 == a1)
        {

          v22 = v104;
          v63 = *v104;
          (*v104)(v108, v15);

          v35 = v31;
          v64 = Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse.sections.getter();
          if (v100 >= *(v64 + 16))
          {
            goto LABEL_49;
          }

          v112(v25, v64 + v107 + v99, v15);

          v65 = Com_Apple_Sse_Ocean_Ndo_Api_CCSection.items.getter();
          v103 = v63;
          v63(v25, v15);
          v108 = *(v65 + 16);
          if (v108)
          {
            v66 = v7;
            v67 = 0;
            v31 = (v66 + 32);
            v68 = &_swiftEmptyArrayStorage;
            v22 = v117;
            v35 = v102;
            do
            {
              if (v67 >= *(v65 + 16))
              {
                __break(1u);
                goto LABEL_47;
              }

              v25 = ((*(v111 + 80) + 32) & ~*(v111 + 80));
              v69 = *(v111 + 72);
              (*(v111 + 16))(v35, &v25[v65 + v69 * v67], v22);
              if (Com_Apple_Sse_Ocean_Ndo_Api_CCItem.hashValue.getter() == a1)
              {
                (*v116)(v35, v22);
              }

              else
              {
                v70 = *v31;
                (*v31)(v109, v35, v22);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v119 = v68;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_100068CEC(0, *(v68 + 2) + 1, 1);
                  v35 = v102;
                  v68 = v119;
                }

                v73 = *(v68 + 2);
                v72 = *(v68 + 3);
                if (v73 >= v72 >> 1)
                {
                  sub_100068CEC(v72 > 1, v73 + 1, 1);
                  v35 = v102;
                  v68 = v119;
                }

                *(v68 + 2) = v73 + 1;
                v22 = v117;
                v70(&v25[v68 + v73 * v69], v109, v117);
                v15 = v114;
                a1 = v105;
              }

              ++v67;
            }

            while (v108 != v67);
          }

          v31 = Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse.sections.modify();
          v22 = v74;
          v35 = *v74;
          result = swift_isUniquelyReferenced_nonNull_native();
          *v22 = v35;
          v25 = v106;
          if ((result & 1) == 0)
          {
            goto LABEL_50;
          }

          while (1)
          {
            v76 = v107;
            if (v100 >= *(v35 + 16))
            {
              break;
            }

            Com_Apple_Sse_Ocean_Ndo_Api_CCSection.items.setter();
            (v31)(&v119, 0);
            v35 = v101;
            v77 = Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse.sections.getter();
            v31 = v77;
            v78 = *(v77 + 16);
            if (!v78)
            {
LABEL_44:

              v62 = v101;
              Com_Apple_Sse_Ocean_Ndo_Api_CoverageCentralResponse.sections.setter();
              return (*(v96 + 32))(v98, v62, v97);
            }

            v79 = 0;
            v22 = (v77 + v76);
            v80 = (v94 + 32);
            v81 = &_swiftEmptyArrayStorage;
            while (v79 < v31[2])
            {
              v112(v25, v22, v15);
              v82 = *(Com_Apple_Sse_Ocean_Ndo_Api_CCSection.items.getter() + 16);

              if (v82)
              {
                v83 = *v80;
                (*v80)(v115, v25, v15);
                v84 = swift_isUniquelyReferenced_nonNull_native();
                v119 = v81;
                if ((v84 & 1) == 0)
                {
                  sub_100068CA8(0, v81[2] + 1, 1);
                  v81 = v119;
                }

                v86 = v81[2];
                v85 = v81[3];
                v35 = v110;
                if (v86 >= v85 >> 1)
                {
                  sub_100068CA8(v85 > 1, v86 + 1, 1);
                  v35 = v110;
                  v81 = v119;
                }

                v81[2] = v86 + 1;
                v87 = v81 + v107 + v86 * v35;
                v15 = v114;
                v83(v87, v115, v114);
                v25 = v106;
              }

              else
              {
                v103(v25, v15);
                v35 = v110;
              }

              ++v79;
              v22 += v35;
              if (v78 == v79)
              {
                goto LABEL_44;
              }
            }

LABEL_47:
            __break(1u);
LABEL_48:
            __break(1u);
LABEL_49:
            __break(1u);
LABEL_50:
            result = sub_100068C94(v35);
            v35 = result;
            *v22 = result;
          }

          __break(1u);
          return result;
        }
      }

      v27 = v108;
      (*v104)(v108, v15);
      v38 = v100 + 1;
      v16 = v94;
      v36 = v103;
      v40 = v88;
      if (v100 + 1 != v95)
      {
        continue;
      }

      break;
    }
  }

  v55 = sub_100049C1C();
  v56 = v91;
  v57 = v90;
  v58 = v92;
  (*(v91 + 16))(v90, v55, v92);
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&_mh_execute_header, v59, v60, "Unable to find the item to dismiss", v61, 2u);
  }

  (*(v56 + 8))(v57, v58);
  v62 = v101;
  return (*(v96 + 32))(v98, v62, v97);
}

uint64_t sub_1000687F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_100068820, 0, 0);
}

uint64_t sub_100068820()
{
  v1 = v0[3];
  v2 = (v0[2] + OBJC_IVAR____TtC8ndoagent18NDOUIActionHandler_ackHandler);
  v3 = v2[3];
  v4 = v2[4];
  sub_100001F3C(v2, v3);
  sub_10001A078(&unk_1000A7940, &qword_10007E660);
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  v0[6] = v9;
  *(v9 + 16) = xmmword_10007AE00;
  (*(v6 + 16))(v9 + v8, v1, v5);
  v10 = async function pointer to dispatch thunk of AckHandler.ack(data:urlString:)[1];
  v11 = swift_task_alloc();
  v0[7] = v11;
  *v11 = v0;
  v11[1] = sub_1000689AC;
  v12 = v0[4];
  v13 = v0[5];

  return dispatch thunk of AckHandler.ack(data:urlString:)(v9, v12, v13, v3, v4);
}

uint64_t sub_1000689AC()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

size_t sub_100068ABC(size_t result, int64_t a2, char a3, void *a4)
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

  sub_10001A078(&qword_1000A7FC0, &qword_100081740);
  v10 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection() - 8);
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
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection() - 8);
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

size_t sub_100068CA8(size_t a1, int64_t a2, char a3)
{
  result = sub_100068E24(a1, a2, a3, *v3, &qword_1000A7FC0, &qword_100081740, &type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCSection);
  *v3 = result;
  return result;
}

size_t sub_100068CEC(size_t a1, int64_t a2, char a3)
{
  result = sub_100068E24(a1, a2, a3, *v3, &qword_1000A7FC8, &qword_100081748, &type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CCItem);
  *v3 = result;
  return result;
}

char *sub_100068D30(char *a1, int64_t a2, char a3)
{
  result = sub_100069000(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_100068D50()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100068D90()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001C2DC;

  return sub_100067214(v3, v4, v5, v2);
}

size_t sub_100068E24(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10001A078(a5, a6);
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

char *sub_100069000(char *result, int64_t a2, char a3, char *a4)
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
    sub_10001A078(&qword_1000A7FD0, &qword_100081750);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_100069104()
{
  v2 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_10001D068;

  return sub_1000687F8(v8, v9, v10, v4, v0 + v3, v6, v7);
}

uint64_t sub_100069220(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001C2DC;

  return sub_1000441F4(a1, v5);
}

uint64_t NDOSettingsCoverageSectionOfferProperties.singularFooter.getter()
{
  v1 = (v0 + *(type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t NDOSettingsCoverageSectionOfferProperties.pluralFooter.getter()
{
  v1 = (v0 + *(type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t NDOSettingsCoverageSectionOfferProperties.expiration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0) + 28);

  return sub_100024300(v3, a1);
}

uint64_t sub_1000693D0()
{
  v1 = 1802398060;
  v2 = 0x6F466C6172756C70;
  if (*v0 != 2)
  {
    v2 = 0x6974617269707865;
  }

  if (*v0)
  {
    v1 = 0x72616C75676E6973;
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

uint64_t sub_10006945C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10006AB58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100069484(uint64_t a1)
{
  v2 = sub_10006B1A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000694C0(uint64_t a1)
{
  v2 = sub_10006B1A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NDOSettingsCoverageSectionOfferProperties.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10001A078(&qword_1000A7FD8, &qword_100081788);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  sub_100001F3C(a1, a1[3]);
  sub_10006B1A8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v20[15] = 0;
  type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
  sub_10006B1FC(&qword_1000A7FE0, type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0);
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    v20[14] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = (v3 + v11[6]);
    v16 = *v15;
    v17 = v15[1];
    v20[13] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = v11[7];
    v20[12] = 3;
    type metadata accessor for Date();
    sub_10006B1FC(&qword_1000A72C8, &type metadata accessor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t NDOSettingsCoverageSectionOfferProperties.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_10001A078(&qword_1000A72A0, &qword_10007C010);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v31 - v5;
  v7 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v34 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10001A078(&qword_1000A7FE8, &qword_100081790);
  v31 = *(v35 - 8);
  v10 = *(v31 + 64);
  __chkstk_darwin(v35);
  v12 = &v31 - v11;
  v13 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0);
  v14 = *(*(v13 - 1) + 64);
  __chkstk_darwin(v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  sub_100001F3C(a1, a1[3]);
  sub_10006B1A8();
  v33 = v12;
  v18 = v36;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    return sub_100001E74(a1);
  }

  v36 = v6;
  v19 = v16;
  v20 = v31;
  v21 = v32;
  v40 = 0;
  sub_10006B1FC(&qword_1000A7FF0, type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_10006B244(v34, v19);
  v39 = 1;
  v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v23 = (v19 + v13[5]);
  *v23 = v22;
  v23[1] = v24;
  v38 = 2;
  v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v26 = a1;
  v27 = (v19 + v13[6]);
  *v27 = v25;
  v27[1] = v28;
  type metadata accessor for Date();
  v37 = 3;
  sub_10006B1FC(&qword_1000A72E8, &type metadata accessor for Date);
  v29 = v36;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v20 + 8))(v33, v35);
  sub_1000243BC(v29, v19 + v13[7]);
  sub_10006B2A8(v19, v21, type metadata accessor for NDOSettingsCoverageSectionOfferProperties);
  sub_100001E74(v26);
  return sub_10006B310(v19, type metadata accessor for NDOSettingsCoverageSectionOfferProperties);
}

uint64_t sub_100069BF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_10006B244(a1, a7);
  v13 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0);
  v14 = (a7 + v13[5]);
  *v14 = a2;
  v14[1] = a3;
  v15 = (a7 + v13[6]);
  *v15 = a4;
  v15[1] = a5;
  v16 = a7 + v13[7];

  return sub_1000243BC(a6, v16);
}

uint64_t NDOSettingsCoverageSectionOfferProperties.Link.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0) + 20);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NDOSettingsCoverageSectionOfferProperties.Link.additionalHeaders.getter()
{
  v1 = *(v0 + *(type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0) + 24));
}

uint64_t NDOSettingsCoverageSectionOfferProperties.Link.bodyPayload.getter()
{
  v1 = *(v0 + *(type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0) + 28));
}

unint64_t sub_100069D90()
{
  v1 = 0x6C6562616CLL;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0x6C79615079646F62;
  }

  if (*v0)
  {
    v1 = 7107189;
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

uint64_t sub_100069E0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10006B82C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100069E34(uint64_t a1)
{
  v2 = sub_10006B370();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100069E70(uint64_t a1)
{
  v2 = sub_10006B370();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NDOSettingsCoverageSectionOfferProperties.Link.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10001A078(&qword_1000A7FF8, &unk_100081798);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  sub_100001F3C(a1, a1[3]);
  sub_10006B370();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v18) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
    v14 = v13[5];
    LOBYTE(v18) = 1;
    type metadata accessor for URL();
    sub_10006B1FC(&qword_1000A8000, &type metadata accessor for URL);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v18 = *(v3 + v13[6]);
    v17 = 2;
    sub_10001A078(&unk_1000A7960, &qword_10007F360);
    sub_100054C08(&qword_1000A7C60);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v18 = *(v3 + v13[7]);
    v17 = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t NDOSettingsCoverageSectionOfferProperties.Link.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = type metadata accessor for URL();
  v24 = *(v3 - 8);
  v4 = *(v24 + 64);
  __chkstk_darwin(v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10001A078(&qword_1000A8008, &qword_1000817A8);
  v23 = *(v26 - 8);
  v7 = *(v23 + 64);
  __chkstk_darwin(v26);
  v9 = v21 - v8;
  v10 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
  v11 = *(*(v10 - 1) + 64);
  __chkstk_darwin(v10);
  v13 = (v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  sub_100001F3C(a1, a1[3]);
  sub_10006B370();
  v25 = v9;
  v15 = v27;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    return sub_100001E74(a1);
  }

  v27 = a1;
  v17 = v23;
  v16 = v24;
  LOBYTE(v29) = 0;
  *v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v13[1] = v18;
  v21[2] = v18;
  LOBYTE(v29) = 1;
  sub_10006B1FC(&qword_1000A8010, &type metadata accessor for URL);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v16 + 32))(v13 + v10[5], v6, v3);
  sub_10001A078(&unk_1000A7960, &qword_10007F360);
  v28 = 2;
  v21[0] = sub_100054C08(&qword_1000A7C78);
  v21[1] = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = v27;
  *(v13 + v10[6]) = v29;
  v28 = 3;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v17 + 8))(v25, v26);
  *(v13 + v10[7]) = v29;
  sub_10006B2A8(v13, v22, type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link);
  sub_100001E74(v19);
  return sub_10006B310(v13, type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link);
}

uint64_t sub_10006A59C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  v10 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
  v11 = v10[5];
  v12 = type metadata accessor for URL();
  result = (*(*(v12 - 8) + 32))(&a6[v11], a3, v12);
  *&a6[v10[6]] = a4;
  *&a6[v10[7]] = a5;
  return result;
}

BOOL NDOSettingsCoverageSectionOfferProperties.isValid.getter()
{
  v1 = sub_10001A078(&qword_1000A72A0, &qword_10007C010);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v14 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0);
  sub_100024300(v0 + *(v10 + 28), v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000035B8(v4, &qword_1000A72A0, &qword_10007C010);
    return 1;
  }

  else
  {
    (*(v6 + 32))(v9, v4, v5);
    Date.timeIntervalSinceNow.getter();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    return v13 > 0.0;
  }
}

uint64_t NDOSettingsCoverageSectionOfferProperties.footer.getter()
{
  v1 = v0;
  v2 = sub_10001A078(&qword_1000A72A0, &qword_10007C010);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v26 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0);
  sub_100024300(v1 + v11[7], v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1000035B8(v5, &qword_1000A72A0, &qword_10007C010);
LABEL_12:
    v20 = (v1 + v11[5]);
    v19 = *v20;
    v21 = v20[1];

    return v19;
  }

  (*(v7 + 32))(v10, v5, v6);
  result = Date.timeIntervalSinceNow.getter();
  v14 = ceil(v13 / 86400.0);
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v14 < 9.22337204e18)
  {
    v15 = v14;
    if ((v14 & 0x8000000000000000) == 0)
    {
      if (v15 <= 1 || (v16 = (v1 + v11[6]), (v17 = v16[1]) == 0))
      {
        (*(v7 + 8))(v10, v6);
        goto LABEL_12;
      }

      v27 = *v16;
      v28 = v17;
      v26[0] = 16421;
      v26[1] = 0xE200000000000000;
      sub_100032090();
      v18 = *(StringProtocol.components<A>(separatedBy:)() + 16);

      if (v18 <= 2)
      {
        sub_10001A078(&qword_1000A8018, &qword_1000817B0);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_10007AE00;
        v27 = v15;
        v23 = dispatch thunk of CustomStringConvertible.description.getter();
        v25 = v24;
        *(v22 + 56) = &type metadata for String;
        *(v22 + 64) = sub_10006B3C4();
        *(v22 + 32) = v23;
        *(v22 + 40) = v25;
        v19 = String.init(format:_:)();
        (*(v7 + 8))(v10, v6);
        return v19;
      }
    }

    (*(v7 + 8))(v10, v6);
    return 0;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_10006AB58(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1802398060 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72616C75676E6973 && a2 == 0xEE007265746F6F46 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F466C6172756C70 && a2 == 0xEC0000007265746FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6974617269707865 && a2 == 0xEA00000000006E6FLL)
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

uint64_t _s8ndoagent41NDOSettingsCoverageSectionOfferPropertiesV4LinkV23__derived_struct_equalsySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
  v6 = v5[5];
  if ((static URL.== infix(_:_:)() & 1) == 0 || (sub_100051C10(*(a1 + v5[6]), *(a2 + v5[6])) & 1) == 0)
  {
    return 0;
  }

  v7 = v5[7];
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);

  return sub_100051C10(v8, v9);
}

BOOL _s8ndoagent41NDOSettingsCoverageSectionOfferPropertiesV23__derived_struct_equalsySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001A078(&qword_1000A72A0, &qword_10007C010);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v40 - v11;
  v13 = sub_10001A078(&qword_1000A8148, &unk_100081B10);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v40 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v17 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
  v18 = v17[5];
  if ((static URL.== infix(_:_:)() & 1) == 0 || (sub_100051C10(*(a1 + v17[6]), *(a2 + v17[6])) & 1) == 0 || (sub_100051C10(*(a1 + v17[7]), *(a2 + v17[7])) & 1) == 0)
  {
    return 0;
  }

  v19 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0);
  v20 = v19[5];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = v23[1];
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }

    if (*v21 != *v23 || v22 != v24)
    {
      v25 = v19;
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v19 = v25;
      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v24)
  {
    return 0;
  }

  v27 = v19[6];
  v28 = (a1 + v27);
  v29 = *(a1 + v27 + 8);
  v30 = (a2 + v27);
  v31 = v30[1];
  if (v29)
  {
    if (!v31)
    {
      return 0;
    }

    if (*v28 != *v30 || v29 != v31)
    {
      v32 = v19;
      v33 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v19 = v32;
      if ((v33 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v31)
  {
    return 0;
  }

  v34 = v19[7];
  v35 = *(v13 + 48);
  sub_100024300(a1 + v34, v16);
  sub_100024300(a2 + v34, &v16[v35]);
  v36 = *(v5 + 48);
  if (v36(v16, 1, v4) == 1)
  {
    if (v36(&v16[v35], 1, v4) == 1)
    {
      sub_1000035B8(v16, &qword_1000A72A0, &qword_10007C010);
      return 1;
    }

    goto LABEL_26;
  }

  sub_100024300(v16, v12);
  if (v36(&v16[v35], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_26:
    sub_1000035B8(v16, &qword_1000A8148, &unk_100081B10);
    return 0;
  }

  (*(v5 + 32))(v8, &v16[v35], v4);
  sub_10006B1FC(&qword_1000A8150, &type metadata accessor for Date);
  v38 = dispatch thunk of static Equatable.== infix(_:_:)();
  v39 = *(v5 + 8);
  v39(v8, v4);
  v39(v12, v4);
  sub_1000035B8(v16, &qword_1000A72A0, &qword_10007C010);
  return (v38 & 1) != 0;
}

unint64_t sub_10006B1A8()
{
  result = qword_1000B0D40;
  if (!qword_1000B0D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B0D40);
  }

  return result;
}

uint64_t sub_10006B1FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10006B244(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006B2A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10006B310(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10006B370()
{
  result = qword_1000B0D48[0];
  if (!qword_1000B0D48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B0D48);
  }

  return result;
}

unint64_t sub_10006B3C4()
{
  result = qword_1000A8020;
  if (!qword_1000A8020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A8020);
  }

  return result;
}

void sub_10006B418()
{
  type metadata accessor for NDOSettingsCoverageSectionOfferProperties.Link(319);
  if (v0 <= 0x3F)
  {
    sub_10006B4B4();
    if (v1 <= 0x3F)
    {
      sub_100024EA0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10006B4B4()
{
  if (!qword_1000A8080)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000A8080);
    }
  }
}

void sub_10006B504()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    sub_10006B598();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10006B598()
{
  if (!qword_1000A8110)
  {
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_1000A8110);
    }
  }
}

unint64_t sub_10006B620()
{
  result = qword_1000B1170[0];
  if (!qword_1000B1170[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B1170);
  }

  return result;
}

unint64_t sub_10006B678()
{
  result = qword_1000B1380[0];
  if (!qword_1000B1380[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B1380);
  }

  return result;
}

unint64_t sub_10006B6D0()
{
  result = qword_1000B1490;
  if (!qword_1000B1490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B1490);
  }

  return result;
}

unint64_t sub_10006B728()
{
  result = qword_1000B1498[0];
  if (!qword_1000B1498[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B1498);
  }

  return result;
}

unint64_t sub_10006B780()
{
  result = qword_1000B1520;
  if (!qword_1000B1520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B1520);
  }

  return result;
}

unint64_t sub_10006B7D8()
{
  result = qword_1000B1528[0];
  if (!qword_1000B1528[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B1528);
  }

  return result;
}

uint64_t sub_10006B82C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010008C3C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C79615079646F62 && a2 == 0xEB0000000064616FLL)
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

uint64_t NDOWarrantyProperties.settingsCoverageSectionOfferProperties.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NDOWarrantyProperties() + 32);

  return sub_10006B9F0(v3, a1);
}

uint64_t sub_10006B9F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001A078(&qword_1000A8158, &qword_100081B20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006BA60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10006BF78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10006BA88(uint64_t a1)
{
  v2 = sub_100003D54();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006BAC4(uint64_t a1)
{
  v2 = sub_100003D54();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NDOWarrantyProperties.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_10001A078(&qword_1000A8158, &qword_100081B20);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v24 - v6;
  v8 = sub_10001A078(&qword_1000A8170, &qword_100081B30);
  v27 = *(v8 - 8);
  v28 = v8;
  v9 = *(v27 + 64);
  __chkstk_darwin(v8);
  v11 = v24 - v10;
  v12 = type metadata accessor for NDOWarrantyProperties();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  sub_100001F3C(a1, a1[3]);
  sub_100003D54();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100001E74(a1);
  }

  v25 = a1;
  v17 = v7;
  v19 = v27;
  v18 = v28;
  v33 = 0;
  *v15 = KeyedDecodingContainer.decode(_:forKey:)();
  *(v15 + 1) = v20;
  v24[1] = v20;
  v32 = 1;
  v15[16] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  v31 = 2;
  *(v15 + 3) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v15 + 4) = v21;
  v30 = 3;
  *(v15 + 5) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v15 + 6) = v22;
  type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0);
  v29 = 4;
  sub_100003E78(&qword_1000A8178);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v19 + 8))(v11, v18);
  sub_10006C4C0(v17, &v15[*(v12 + 32)]);
  sub_10001CE3C(v15, v26);
  sub_100001E74(v25);
  return sub_10006C744(v15, type metadata accessor for NDOWarrantyProperties);
}

uint64_t sub_10006BF04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  v10 = a9 + *(type metadata accessor for NDOWarrantyProperties() + 32);

  return sub_10006C4C0(a8, v10);
}

uint64_t sub_10006BF78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7466656854736168 && a2 == 0xEF73736F4C646E41 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6567617265766F63 && a2 == 0xED00006C6562614CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x800000010008BFE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000026 && 0x800000010008C690 == a2)
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

BOOL _s8ndoagent21NDOWarrantyPropertiesV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001A078(&qword_1000A8158, &qword_100081B20);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v24 - v11;
  v13 = sub_10001A078(&qword_1000A8218, &unk_100081CF0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v24 - v15;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || (*(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v18 = *(a1 + 48);
  v19 = *(a2 + 48);
  if (v18)
  {
    if (!v19 || (*(a1 + 40) != *(a2 + 40) || v18 != v19) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  v20 = *(type metadata accessor for NDOWarrantyProperties() + 32);
  v21 = *(v13 + 48);
  sub_10006B9F0(a1 + v20, v16);
  sub_10006B9F0(a2 + v20, &v16[v21]);
  v22 = *(v5 + 48);
  if (v22(v16, 1, v4) == 1)
  {
    if (v22(&v16[v21], 1, v4) == 1)
    {
      sub_1000035B8(v16, &qword_1000A8158, &qword_100081B20);
      return 1;
    }

    goto LABEL_22;
  }

  sub_10006B9F0(v16, v12);
  if (v22(&v16[v21], 1, v4) == 1)
  {
    sub_10006C744(v12, type metadata accessor for NDOSettingsCoverageSectionOfferProperties);
LABEL_22:
    sub_1000035B8(v16, &qword_1000A8218, &unk_100081CF0);
    return 0;
  }

  sub_10006C7A4(&v16[v21], v8);
  sub_100003E78(&qword_1000A8220);
  v23 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_10006C744(v8, type metadata accessor for NDOSettingsCoverageSectionOfferProperties);
  sub_10006C744(v12, type metadata accessor for NDOSettingsCoverageSectionOfferProperties);
  sub_1000035B8(v16, &qword_1000A8158, &qword_100081B20);
  return (v23 & 1) != 0;
}

uint64_t sub_10006C4C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001A078(&qword_1000A8158, &qword_100081B20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10006C530()
{
  sub_10006B4B4();
  if (v0 <= 0x3F)
  {
    sub_10006C5D4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10006C5D4()
{
  if (!qword_1000A81D8)
  {
    type metadata accessor for NDOSettingsCoverageSectionOfferProperties(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000A81D8);
    }
  }
}

unint64_t sub_10006C640()
{
  result = qword_1000B1850[0];
  if (!qword_1000B1850[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B1850);
  }

  return result;
}

unint64_t sub_10006C698()
{
  result = qword_1000B1960;
  if (!qword_1000B1960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B1960);
  }

  return result;
}

unint64_t sub_10006C6F0()
{
  result = qword_1000B1968[0];
  if (!qword_1000B1968[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B1968);
  }

  return result;
}

uint64_t sub_10006C744(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10006C7A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDOSettingsCoverageSectionOfferProperties(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_10006C808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *v5;
  v10 = String._bridgeToObjectiveC()();
  v14[4] = a4;
  v14[5] = a5;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_10006C8EC;
  v14[3] = &unk_10009DE20;
  v11 = _Block_copy(v14);

  v12 = [v9 registerForTaskWithIdentifier:v10 usingQueue:a3 launchHandler:v11];

  _Block_release(v11);

  return v12;
}

void sub_10006C8EC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

id sub_10006C954()
{
  v1 = *v0;
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 taskRequestForIdentifier:v2];

  return v3;
}

id sub_10006C9C8()
{
  v1 = String._bridgeToObjectiveC()();
  v5 = 0;
  v2 = [v0 cancelTaskRequestWithIdentifier:v1 error:&v5];

  if (v2)
  {
    return v5;
  }

  v4 = v5;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

id sub_10006CAA8(uint64_t a1)
{
  v4 = 0;
  if ([v1 submitTaskRequest:a1 error:&v4])
  {
    return v4;
  }

  v3 = v4;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

uint64_t sub_10006CB54()
{
  type metadata accessor for NDOBGTaskHelper();
  v0 = [objc_opt_self() sharedScheduler];
  v5 = sub_100027E88(0, &qword_1000A8228, BGSystemTaskScheduler_ptr);
  v6 = &off_10009DDF8;
  *&v4 = v0;
  v1 = sub_10001EFF8();
  return sub_10001F018(&v4, v1, v2);
}

id sub_10006CBF4()
{
  type metadata accessor for NDOCheckInScheduler();
  type metadata accessor for NDOBGTaskHelper();
  v0 = [objc_opt_self() sharedScheduler];
  v8 = sub_100027E88(0, &qword_1000A8228, BGSystemTaskScheduler_ptr);
  v9 = &off_10009DDF8;
  *&v7 = v0;
  v1 = sub_10001EFF8();
  v3 = sub_10001F018(&v7, v1, v2);
  v4 = [objc_opt_self() standardUserDefaults];
  v5 = sub_100027E88(0, &qword_1000A7E98, NSUserDefaults_ptr);
  v9 = &protocol witness table for NSUserDefaults;
  v10 = &protocol witness table for NSUserDefaults;
  v8 = v5;
  *&v7 = v4;
  return sub_10004F7DC(v3, &v7);
}

void sub_10006CD0C(void *a1, void *a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(char *), uint64_t a6)
{
  v59 = a6;
  v60 = a5;
  v62 = a4;
  v63 = a3;
  v66 = a1;
  v7 = type metadata accessor for Logger();
  v67 = *(v7 - 8);
  v68 = v7;
  v8 = *(v67 + 64);
  v9 = __chkstk_darwin(v7);
  v65 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v61 = &v57 - v11;
  v12 = type metadata accessor for NDOKeyValueStoreKey();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10001A078(&qword_1000A72A0, &qword_10007C010);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v57 - v19;
  v21 = type metadata accessor for Date();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v58 = &v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v28 = &v57 - v27;
  __chkstk_darwin(v26);
  v64 = &v57 - v29;
  v30 = a2[4];
  sub_100001F3C(a2, a2[3]);
  (*(v13 + 104))(v16, enum case for NDOKeyValueStoreKey.nextCheckInEpoch(_:), v12);
  dispatch thunk of NDOKeyValueStoreReader.object(for:)();
  (*(v13 + 8))(v16, v12);
  if (!v69[3])
  {
    sub_1000035B8(v69, &qword_1000A6FD8, &unk_10007DAC0);
    (*(v22 + 56))(v20, 1, 1, v21);
    goto LABEL_7;
  }

  v31 = swift_dynamicCast();
  (*(v22 + 56))(v20, v31 ^ 1u, 1, v21);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
LABEL_7:
    sub_1000035B8(v20, &qword_1000A72A0, &qword_10007C010);
    v37 = v67;
    v36 = v68;
    goto LABEL_8;
  }

  v32 = v64;
  v33 = (*(v22 + 32))(v64, v20, v21);
  v63(v33);
  v34 = static Date.> infix(_:_:)();
  v35 = *(v22 + 8);
  v35(v28, v21);
  v37 = v67;
  v36 = v68;
  if (v34)
  {
    v38 = sub_100049C1C();
    v39 = v61;
    (*(v37 + 16))(v61, v38, v36);
    v40 = v58;
    (*(v22 + 16))(v58, v32, v21);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = v40;
      v45 = swift_slowAlloc();
      v69[0] = v45;
      *v43 = 136315138;
      sub_1000456DC();
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      v35(v44, v21);
      v49 = sub_10001FEC8(v46, v48, v69);

      *(v43 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v41, v42, "Not running boot checkIn task, scheduling next checkIn for: %s", v43, 0xCu);
      sub_100001E74(v45);

      (*(v67 + 8))(v61, v68);
    }

    else
    {

      v35(v40, v21);
      (*(v37 + 8))(v39, v36);
    }

    v56 = v64;
    v60(v64);
    v35(v56, v21);
    return;
  }

  v35(v32, v21);
LABEL_8:
  v50 = sub_100049C1C();
  v51 = v65;
  (*(v37 + 16))(v65, v50, v36);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&_mh_execute_header, v52, v53, "Running boot checkIn task due to no future scheduled check in", v54, 2u);
  }

  (*(v37 + 8))(v51, v36);
  v55 = String._bridgeToObjectiveC()();
  [v66 performCheckIn:v55 withCompletion:0];
}

void sub_10006D3C0(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100049C1C();
  (*(v3 + 16))(v6, v7, v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Running scheduled checkIn task", v10, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v11 = String._bridgeToObjectiveC()();
  [a1 performCheckIn:v11 withCompletion:0];
}

uint64_t sub_10006D558(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void NDODWSection.footerModels.getter()
{
  v1 = 0;
  v2 = *(v0 + 48);
  v3 = *(v2 + 16);
  v4 = v2 - 88;
  v5 = &_swiftEmptyArrayStorage;
LABEL_2:
  v6 = (v4 + 120 * v1);
  while (v3 != v1)
  {
    if (v1 >= v3)
    {
      __break(1u);
LABEL_14:
      __break(1u);
      return;
    }

    v7 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_14;
    }

    v8 = *(v6 + 232);
    ++v1;
    v6 += 15;
    if (v8 == 1)
    {
      v10 = *v6;
      v9 = v6[1];
      v11 = v6[2];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_10006DEE8(0, *(v5 + 2) + 1, 1, v5);
      }

      v13 = *(v5 + 2);
      v12 = *(v5 + 3);
      if (v13 >= v12 >> 1)
      {
        v5 = sub_10006DEE8((v12 > 1), v13 + 1, 1, v5);
      }

      *(v5 + 2) = v13 + 1;
      v14 = &v5[24 * v13];
      *(v14 + 4) = v10;
      *(v14 + 5) = v9;
      *(v14 + 6) = v11;
      v1 = v7;
      goto LABEL_2;
    }
  }
}

void NDODWSection.nonFooterItems.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 32;
    v5 = &_swiftEmptyArrayStorage;
    do
    {
      v6 = (v4 + 120 * v3);
      for (i = v3; ; ++i)
      {
        if (i >= v2)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return;
        }

        v8 = *v6;
        v9 = v6[1];
        v10 = v6[3];
        v27 = v6[2];
        v28 = v10;
        v26 = v9;
        v25 = v8;
        v11 = v6[4];
        v12 = v6[5];
        v13 = v6[6];
        v32 = *(v6 + 112);
        v30 = v12;
        v31 = v13;
        v29 = v11;
        v3 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        if (v32 != 1)
        {
          break;
        }

        v6 = (v6 + 120);
        if (v3 == v2)
        {
          return;
        }
      }

      sub_10006E008(&v25, v24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10006E064(0, v5[2] + 1, 1);
        v5 = v33;
      }

      v16 = v5[2];
      v15 = v5[3];
      if (v16 >= v15 >> 1)
      {
        sub_10006E064((v15 > 1), v16 + 1, 1);
        v5 = v33;
      }

      v5[2] = v16 + 1;
      v17 = &v5[15 * v16];
      v18 = v25;
      v19 = v26;
      v20 = v28;
      *(v17 + 4) = v27;
      *(v17 + 5) = v20;
      *(v17 + 2) = v18;
      *(v17 + 3) = v19;
      v21 = v29;
      v22 = v30;
      v23 = v31;
      v17[144] = v32;
      *(v17 + 7) = v22;
      *(v17 + 8) = v23;
      *(v17 + 6) = v21;
    }

    while (v3 != v2);
  }
}

BOOL NDODWSection.isCoverageSection.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v1 + 144);
  return v2 == 1 && v3 == 0;
}

void __swiftcall NDODWSection.init(header:items:footer:)(ndoagent::NDODWSection *__return_ptr retstr, Swift::String_optional header, Swift::OpaquePointer items, Swift::String_optional footer)
{
  object = footer.value._object;
  countAndFlagsBits = footer.value._countAndFlagsBits;
  v7 = header.value._object;
  v8 = header.value._countAndFlagsBits;
  v10 = type metadata accessor for UUID();
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v7)
  {

    v16 = v8;
    v17 = v7;
  }

  else
  {
    v37 = v8;
    v38 = 0;
    v18 = *(items._rawValue + 2);
    if (v18)
    {
      v34 = retstr;
      v35 = countAndFlagsBits;
      v36 = object;
      v41 = &_swiftEmptyArrayStorage;

      sub_100033930(0, v18, 0);
      v19 = 32;
      v20 = v41;
      rawValue = items._rawValue;
      do
      {
        v21 = *(items._rawValue + v19 + 80);
        v42[4] = *(items._rawValue + v19 + 64);
        v42[5] = v21;
        v42[6] = *(items._rawValue + v19 + 96);
        v43 = *(items._rawValue + v19 + 112);
        v22 = *(items._rawValue + v19 + 16);
        v42[0] = *(items._rawValue + v19);
        v42[1] = v22;
        v23 = *(items._rawValue + v19 + 48);
        v42[2] = *(items._rawValue + v19 + 32);
        v42[3] = v23;
        sub_10006E008(v42, v40);
        v40[0] = NDODWItem.hashValue.getter();
        v24 = dispatch thunk of CustomStringConvertible.description.getter();
        v26 = v25;
        sub_10006E084(v42);
        v41 = v20;
        v28 = v20[2];
        v27 = v20[3];
        if (v28 >= v27 >> 1)
        {
          sub_100033930((v27 > 1), v28 + 1, 1);
          v20 = v41;
        }

        v20[2] = v28 + 1;
        v29 = &v20[2 * v28];
        v29[4] = v24;
        v29[5] = v26;
        v19 += 120;
        --v18;
        items._rawValue = rawValue;
      }

      while (v18);

      v40[0] = v20;

      sub_100039964(v40);
      v7 = v38;

      sub_10001A078(&qword_1000A7550, &qword_10007D428);
      sub_100032104();
      v16 = BidirectionalCollection<>.joined(separator:)();
      v17 = v30;

      countAndFlagsBits = v35;
      object = v36;
      retstr = v34;
    }

    else
    {
      v36 = v12;
      v31 = v13;
      UUID.init()();
      v16 = UUID.uuidString.getter();
      v17 = v32;
      (*(v31 + 8))(v15, v36);
      v7 = v38;
    }

    v8 = v37;
  }

  retstr->id._countAndFlagsBits = v16;
  retstr->id._object = v17;
  retstr->header.value._countAndFlagsBits = v8;
  retstr->header.value._object = v7;
  retstr->footer.value._countAndFlagsBits = countAndFlagsBits;
  retstr->footer.value._object = object;
  retstr->items = items;
}

uint64_t sub_10006DB2C()
{
  v1 = 25705;
  v2 = 0x7265746F6F66;
  if (*v0 != 2)
  {
    v2 = 0x736D657469;
  }

  if (*v0)
  {
    v1 = 0x726564616568;
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

uint64_t sub_10006DB90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10006E2A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10006DBB8(uint64_t a1)
{
  v2 = sub_10006E1F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006DBF4(uint64_t a1)
{
  v2 = sub_10006E1F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NDODWSection.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10001A078(&qword_1000A8230, &qword_100081D28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  sub_100001F3C(a1, a1[3]);
  sub_10006E1F8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v22 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v21 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = v3[4];
    v16 = v3[5];
    v20 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v19 = v3[6];
    v18[15] = 3;
    sub_10001A078(&qword_1000A8238, &qword_100081D30);
    sub_10006E864(&qword_1000A8240, sub_10006E24C);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

double NDODWSection.init(from:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10006E3F0(a1, v6);
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

uint64_t sub_10006DEC4@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

char *sub_10006DEE8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10001A078(&qword_1000A8268, qword_100081F38);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10006E064(char *a1, int64_t a2, char a3)
{
  result = sub_10006E0D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10006E0D8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10001A078(&qword_1000A75B0, &unk_10007D968);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[120 * v8])
    {
      memmove(v12, v13, 120 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_10006E1F8()
{
  result = qword_1000B19F0[0];
  if (!qword_1000B19F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B19F0);
  }

  return result;
}

unint64_t sub_10006E24C()
{
  result = qword_1000A8248;
  if (!qword_1000A8248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A8248);
  }

  return result;
}

uint64_t sub_10006E2A0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726564616568 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7265746F6F66 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
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

uint64_t sub_10006E3F0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_10001A078(&qword_1000A8250, &qword_100081F30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  sub_100001F3C(a1, a1[3]);
  sub_10006E1F8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100001E74(a1);
  }

  v31 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v25 = v11;
  v30 = 1;
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v26 = v15;
  v23 = v14;
  v29 = 2;
  v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v24 = v16;
  sub_10001A078(&qword_1000A8238, &qword_100081D30);
  v28 = 3;
  sub_10006E864(&qword_1000A8258, sub_10006E8DC);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v17 = v27;
  v18 = v24;

  v19 = v26;

  sub_100001E74(a1);

  *a2 = v25;
  a2[1] = v13;
  v21 = v22;
  a2[2] = v23;
  a2[3] = v19;
  a2[4] = v21;
  a2[5] = v18;
  a2[6] = v17;
  return result;
}

unint64_t sub_10006E760()
{
  result = qword_1000B1C80[0];
  if (!qword_1000B1C80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B1C80);
  }

  return result;
}

unint64_t sub_10006E7B8()
{
  result = qword_1000B1D90;
  if (!qword_1000B1D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B1D90);
  }

  return result;
}

unint64_t sub_10006E810()
{
  result = qword_1000B1D98[0];
  if (!qword_1000B1D98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B1D98);
  }

  return result;
}

uint64_t sub_10006E864(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10001EFA0(&qword_1000A8238, &qword_100081D30);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10006E8DC()
{
  result = qword_1000A8260;
  if (!qword_1000A8260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A8260);
  }

  return result;
}

id NDOPersistanceHelpers.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NDOPersistanceHelpers();
  return objc_msgSendSuper2(&v2, "init");
}

id NDOPersistanceHelpers.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NDOPersistanceHelpers();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10006EF40()
{
  type metadata accessor for NDOCompositionLayer();
  v0 = sub_10005BF18();
  swift_beginAccess();
  v1 = sub_10001A078(&qword_1000A7DC0, &qword_1000810E0);
  v4[3] = v1;
  v4[4] = swift_getOpaqueTypeConformance2();
  v2 = sub_100027B84(v4);
  (*(*(v1 - 8) + 16))(v2, v0, v1);
  sub_10006F01C(v4, qword_1000B2000);
  return sub_100001E74(v4);
}

uint64_t sub_10006F01C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v11 = sub_100049C1C();
  (*(v7 + 16))(v10, v11, v6);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "making NDOWarrantyLoader", v14, 2u);
  }

  (*(v7 + 8))(v10, v6);
  *(swift_allocObject() + 16) = v3;
  sub_100001E10(a1, v21);
  v15 = type metadata accessor for NDOWarrantyLoader();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();

  v18 = NDOWarrantyLoader.init(configLoader:warrantyLoaderProvider:)();
  a2[3] = v15;
  a2[4] = &protocol witness table for NDOWarrantyLoader;

  *a2 = v18;
  return result;
}

uint64_t *sub_10006F214()
{
  if (qword_1000B1E20 != -1)
  {
    swift_once();
  }

  return qword_1000B2000;
}

uint64_t sub_10006F264@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000B1E20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_100001E10(qword_1000B2000, a1);
}

uint64_t sub_10006F2E4(uint64_t *a1)
{
  if (qword_1000B1E20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1000492B8(qword_1000B2000, a1);
  swift_endAccess();
  return sub_100001E74(a1);
}

uint64_t (*sub_10006F374())()
{
  if (qword_1000B1E20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id sub_10006F3FC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v62[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_14;
      }

      v19 = type metadata accessor for NDOCompositionLayer();
      *(swift_allocObject() + 16) = v19;
      v20 = type metadata accessor for NDOLocalWarrantyDownloader();
      v21 = *(v20 + 48);
      v22 = *(v20 + 52);
      swift_allocObject();

      v23 = NDOLocalWarrantyDownloader.init(loaderProvider:)();
      v70 = v20;
      v71 = &protocol witness table for NDOLocalWarrantyDownloader;

      v69[0] = v23;
      type metadata accessor for NDOWarrantyPropertiesLoader();
      sub_100001E10(v69, v66);
      v65 = 0;
      v63 = 0u;
      v64 = 0u;
      v24 = sub_10006FCE0;
    }

    else
    {
      v41 = type metadata accessor for NDOCompositionLayer();
      *(swift_allocObject() + 16) = v41;
      v42 = type metadata accessor for NDOLocalWarrantyDownloader();
      v43 = *(v42 + 48);
      v44 = *(v42 + 52);
      swift_allocObject();

      v45 = NDOLocalWarrantyDownloader.init(loaderProvider:)();
      v70 = v42;
      v71 = &protocol witness table for NDOLocalWarrantyDownloader;

      v69[0] = v45;
      type metadata accessor for NDOWarrantyPropertiesLoader();
      sub_100001E10(v69, v66);
      v65 = 0;
      v63 = 0u;
      v64 = 0u;
      v24 = sub_100027264;
    }

    v40 = v24;
    v39 = 0;
LABEL_13:
    v34 = sub_100019EC0(v66, &v63, v40, v39);
    v35 = v69;
    goto LABEL_18;
  }

  if (a1 != 2)
  {
    if (a1 != 3)
    {
      if (a1 == 4)
      {
        v10 = type metadata accessor for NDOCompositionLayer();
        v11 = sub_10005BF18();
        swift_beginAccess();
        v12 = sub_10001A078(&qword_1000A7DC0, &qword_1000810E0);
        v67 = v12;
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        v13 = sub_100027B84(v66);
        (*(*(v12 - 8) + 16))(v13, v11, v12);
        sub_10006F01C(v66, v69);
        sub_100001E74(v66);
        *(swift_allocObject() + 16) = v10;
        v14 = type metadata accessor for NDOLocalWarrantyDownloader();
        v15 = *(v14 + 48);
        v16 = *(v14 + 52);
        swift_allocObject();

        v17 = NDOLocalWarrantyDownloader.init(loaderProvider:)();
        v67 = v14;
        OpaqueTypeConformance2 = &protocol witness table for NDOLocalWarrantyDownloader;

        v66[0] = v17;
        type metadata accessor for NDOWarrantyPropertiesLoader();
        sub_100001E10(v69, &v63);
        sub_100001E10(v66, v62);
        v18 = swift_allocObject();
        *(v18 + 16) = v2;
LABEL_17:
        v34 = sub_100019EC0(&v63, v62, sub_1000704AC, v18);
        sub_100001E74(v69);
        v35 = v66;
        goto LABEL_18;
      }

LABEL_14:
      v46 = v7;
      v47 = sub_100049C1C();
      v48 = v46;
      (*(v5 + 16))(v9, v47, v46);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&_mh_execute_header, v49, v50, "Unhandled case for coverage info policy, defaulting to local with remote fallback", v51, 2u);
      }

      (*(v5 + 8))(v9, v48);
      v52 = type metadata accessor for NDOCompositionLayer();
      v53 = sub_10005BF18();
      swift_beginAccess();
      v54 = sub_10001A078(&qword_1000A7DC0, &qword_1000810E0);
      v67 = v54;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v55 = sub_100027B84(v66);
      (*(*(v54 - 8) + 16))(v55, v53, v54);
      sub_10006F01C(v66, v69);
      sub_100001E74(v66);
      *(swift_allocObject() + 16) = v52;
      v56 = type metadata accessor for NDOLocalWarrantyDownloader();
      v57 = *(v56 + 48);
      v58 = *(v56 + 52);
      swift_allocObject();

      v59 = NDOLocalWarrantyDownloader.init(loaderProvider:)();
      v67 = v56;
      OpaqueTypeConformance2 = &protocol witness table for NDOLocalWarrantyDownloader;

      v66[0] = v59;
      type metadata accessor for NDOWarrantyPropertiesLoader();
      sub_100001E10(v69, &v63);
      sub_100001E10(v66, v62);
      v18 = swift_allocObject();
      *(v18 + 16) = v2;
      goto LABEL_17;
    }

    type metadata accessor for NDOCompositionLayer();
    v36 = sub_10005BF18();
    swift_beginAccess();
    v37 = sub_10001A078(&qword_1000A7DC0, &qword_1000810E0);
    v67 = v37;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v38 = sub_100027B84(v66);
    (*(*(v37 - 8) + 16))(v38, v36, v37);
    sub_10006F01C(v66, v69);
    sub_100001E74(v66);
    type metadata accessor for NDOWarrantyPropertiesLoader();
    sub_100001E10(v69, v66);
    v65 = 0;
    v63 = 0u;
    v64 = 0u;
    v39 = swift_allocObject();
    *(v39 + 16) = v2;
    v40 = sub_1000703A0;
    goto LABEL_13;
  }

  v25 = type metadata accessor for NDOCompositionLayer();
  *(swift_allocObject() + 16) = v25;
  v26 = type metadata accessor for NDOLocalWarrantyDownloader();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();

  v29 = NDOLocalWarrantyDownloader.init(loaderProvider:)();
  v70 = v26;
  v71 = &protocol witness table for NDOLocalWarrantyDownloader;

  v69[0] = v29;
  v30 = sub_10005BF18();
  swift_beginAccess();
  v31 = sub_10001A078(&qword_1000A7DC0, &qword_1000810E0);
  *(&v64 + 1) = v31;
  v65 = swift_getOpaqueTypeConformance2();
  v32 = sub_100027B84(&v63);
  (*(*(v31 - 8) + 16))(v32, v30, v31);
  sub_10006F01C(&v63, v66);
  sub_100001E74(&v63);
  type metadata accessor for NDOWarrantyPropertiesLoader();
  sub_100001E10(v69, &v63);
  sub_100001E10(v66, v62);
  v33 = swift_allocObject();
  *(v33 + 16) = v2;
  v34 = sub_100019EC0(&v63, v62, sub_1000704AC, v33);
  sub_100001E74(v66);
  v35 = v69;
LABEL_18:
  sub_100001E74(v35);
  return v34;
}

uint64_t sub_10006FD54@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_10005C9F4();
  swift_beginAccess();
  sub_100001E10(v4, &v10);
  *(swift_allocObject() + 16) = a1;
  v5 = sub_10001A078(&qword_1000A8298, &qword_100081F68);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();

  v8 = NDOMappingLoader.init(client:retryOnUnauthorized:requestGenerator:mapper:)();
  a2[3] = v5;
  result = sub_100002094(&qword_1000A82A0, &qword_1000A8298, &qword_100081F68);
  a2[4] = result;
  *a2 = v8;
  return result;
}

id sub_10006FE78(void *a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1[2])
  {
    return 0;
  }

  v8 = a1[4];
  v7 = a1[5];

  static NDOResponseMapper.Warranty.deviceCoverageCachePathForSerial(_:)();

  v9 = objc_allocWithZone(NSURLRequest);
  URL._bridgeToObjectiveC()(v10);
  v12 = v11;
  v13 = [v9 initWithURL:v11];

  (*(v3 + 8))(v6, v2);
  return v13;
}

uint64_t sub_10006FFAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v46 = a4;
  v42 = a1;
  v50 = a5;
  v7 = type metadata accessor for NDOWarrantyRequestGenerator();
  v49 = *(v7 - 8);
  v48 = *(v49 + 64);
  v8 = __chkstk_darwin(v7 - 8);
  v47 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v43 = &v41 - v10;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = __chkstk_darwin(v11);
  v41 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v41 - v16;
  v18 = sub_10001A078(&qword_1000A7398, &qword_10007C2D0);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  v21 = __chkstk_darwin(v18);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v41 - v24;
  v45 = v12;
  v26 = v12[2];
  v26(&v41 - v24, v42, v11);
  *&v25[*(v19 + 56)] = a2;
  *&v25[*(v19 + 72)] = a3;
  sub_1000703D4(v25, v23);
  v42 = *&v23[*(v19 + 56)];
  v27 = *&v23[*(v19 + 72)];

  v28 = v12[4];
  v44 = v17;
  v28(v17, v23, v11);
  v29 = v41;
  v26(v41, v17, v11);
  sub_10005D434(v51);
  v30 = v43;
  NDOWarrantyRequestGenerator.init(serialNumbers:warrantyURL:payloadProvider:)(v42, v29, v51, v43);
  v31 = sub_10005C9F4();
  swift_beginAccess();
  sub_100001E10(v31, v51);
  v32 = v47;
  sub_100027BF4(v30, v47);
  v33 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v34 = swift_allocObject();
  sub_100027C58(v32, v34 + v33);
  v35 = sub_10001A078(&qword_1000A73A0, &qword_10007C2D8);
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  v38 = NDOMappingLoader.init(client:retryOnUnauthorized:requestGenerator:mapper:)();
  v39 = v50;
  v50[3] = v35;
  v39[4] = sub_100002094(&qword_1000A73A8, &qword_1000A73A0, &qword_10007C2D8);
  *v39 = v38;
  sub_100027D84(v30);
  (v45[1])(v44, v11);
  return sub_100070444(v25);
}

uint64_t sub_1000703D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001A078(&qword_1000A7398, &qword_10007C2D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100070444(uint64_t a1)
{
  v2 = sub_10001A078(&qword_1000A7398, &qword_10007C2D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void static NDOFollowUpHelpers.clearFollowUp(with:client:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NDOFollowUpClient();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v14 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    (*(v10 + 104))(v13, enum case for NDOFollowUpClient.mercury(_:), v9);
    static NDOFollowUpClient.== infix(_:_:)();
    (*(v10 + 8))(v13, v9);
    v15 = objc_allocWithZone(FLFollowUpController);
    v16 = String._bridgeToObjectiveC()();
    v17 = [v15 initWithClientIdentifier:v16];

    if (v17)
    {

      sub_10001A078(&qword_1000A82A8, qword_100081F70);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_10007AE00;
      *(v18 + 56) = &type metadata for String;
      *(v18 + 32) = a1;
      *(v18 + 40) = a2;

      isa = Array._bridgeToObjectiveC()().super.isa;

      v28 = 0;
      v20 = [v17 clearPendingFollowUpItemsWithUniqueIdentifiers:isa error:&v28];

      if (v20)
      {
        v21 = v28;
      }

      else
      {
        v26 = v28;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v22 = sub_100049C1C();
    (*(v5 + 16))(v8, v22, v4);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Empty follow up identifier. Not dismissing", v25, 2u);
    }

    (*(v5 + 8))(v8, v4);
  }
}

unint64_t *sub_100070898(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v11 = &_swiftEmptyArrayStorage;
    sub_100070BC8(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v4 = (a1 + 40);
    do
    {
      v8 = *(v4 - 1);
      v9 = *v4;

      swift_dynamicCast();
      v11 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_100070BC8((v5 > 1), v6 + 1, 1);
        v2 = v11;
      }

      v2[2] = v6 + 1;
      sub_100027ED0(&v10, &v2[4 * v6 + 4]);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

Class sub_1000709C0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

id NDOFollowUpHelpers.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NDOFollowUpHelpers();
  return objc_msgSendSuper2(&v2, "init");
}

id NDOFollowUpHelpers.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NDOFollowUpHelpers();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_100070ABC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10001A078(&qword_1000A6FA0, &qword_10007D9D0);
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
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_100070BC8(char *a1, int64_t a2, char a3)
{
  result = sub_100070BE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100070BE8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10001A078(&qword_1000A82A8, qword_100081F70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *_s8ndoagent18NDOFollowUpHelpersC014postedACFollowC5ItemsSaySSGyFZ_0()
{
  v0 = type metadata accessor for NDOFollowUpClient();
  v1 = *(v0 - 8);
  v2 = v1[8];
  v3 = __chkstk_darwin(v0);
  v5 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v33 - v6;
  v8 = v1[13];
  v8(v33 - v6, enum case for NDOFollowUpClient.ndoagent(_:), v0);
  v8(v5, enum case for NDOFollowUpClient.mercury(_:), v0);
  static NDOFollowUpClient.== infix(_:_:)();
  v9 = v1[1];
  v9(v5, v0);
  v10 = objc_allocWithZone(FLFollowUpController);
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 initWithClientIdentifier:v11];

  if (!v12)
  {
    __break(1u);
  }

  v9(v7, v0);

  v34 = 0;
  v13 = [v12 pendingFollowUpItems:&v34];

  v14 = v34;
  if (v13)
  {
    sub_100072518();
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v14;

    if (v15 >> 62)
    {
LABEL_24:
      v17 = _CocoaArrayWrapper.endIndex.getter();
      if (v17)
      {
LABEL_5:
        v18 = 0;
        v19 = &_swiftEmptyArrayStorage;
        do
        {
          v20 = v18;
          while (1)
          {
            if ((v15 & 0xC000000000000001) != 0)
            {
              v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v20 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_23;
              }

              v21 = *(v15 + 8 * v20 + 32);
            }

            v22 = v21;
            v18 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              __break(1u);
LABEL_23:
              __break(1u);
              goto LABEL_24;
            }

            v23 = [v21 uniqueIdentifier];
            if (v23)
            {
              break;
            }

            ++v20;
            if (v18 == v17)
            {
              goto LABEL_26;
            }
          }

          v24 = v23;
          v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v33[0] = v26;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = sub_100070ABC(0, *(v19 + 2) + 1, 1, v19);
          }

          v28 = *(v19 + 2);
          v27 = *(v19 + 3);
          if (v28 >= v27 >> 1)
          {
            v19 = sub_100070ABC((v27 > 1), v28 + 1, 1, v19);
          }

          *(v19 + 2) = v28 + 1;
          v29 = &v19[16 * v28];
          v30 = v33[0];
          *(v29 + 4) = v25;
          *(v29 + 5) = v30;
        }

        while (v18 != v17);
        goto LABEL_26;
      }
    }

    else
    {
      v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
        goto LABEL_5;
      }
    }

    v19 = &_swiftEmptyArrayStorage;
LABEL_26:

    return v19;
  }

  v31 = v34;
  _convertNSErrorToError(_:)();

  swift_willThrow();

  return &_swiftEmptyArrayStorage;
}

void _s8ndoagent18NDOFollowUpHelpersC018dismissWatchFollowC5ItemsyyFZ_0()
{
  v0 = type metadata accessor for NDOFollowUpClient();
  v1 = *(v0 - 8);
  v2 = v1[8];
  v3 = __chkstk_darwin(v0);
  v5 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v91 - v6;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = __chkstk_darwin(v8);
  v94 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v92 = &v91 - v14;
  v15 = __chkstk_darwin(v13);
  v93 = &v91 - v16;
  __chkstk_darwin(v15);
  v18 = &v91 - v17;
  v19 = sub_100049C1C();
  v20 = v9[2];
  v97 = v19;
  v98 = v20;
  v99 = v9 + 2;
  (v20)(v18);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Dismiss pending watch follow up items", v23, 2u);
  }

  v95 = v9[1];
  v96 = v8;
  v100 = v9 + 1;
  v95(v18, v8);
  v24 = v1[13];
  v24(v7, enum case for NDOFollowUpClient.ndoagent(_:), v0);
  v24(v5, enum case for NDOFollowUpClient.mercury(_:), v0);
  static NDOFollowUpClient.== infix(_:_:)();
  v25 = v1[1];
  v25(v5, v0);
  v26 = objc_allocWithZone(FLFollowUpController);
  v27 = String._bridgeToObjectiveC()();
  v28 = [v26 initWithClientIdentifier:v27];

  if (!v28)
  {
    __break(1u);
  }

  v25(v7, v0);

  v104 = 0;
  v29 = [v28 pendingFollowUpItems:&v104];
  v30 = v104;
  v101 = v28;
  if (!v29)
  {
    v51 = v95;
    v50 = v96;
LABEL_58:
    v77 = v94;
    v78 = v30;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v98(v77, v97, v50);
    swift_errorRetain();
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *v81 = 138412290;
      swift_errorRetain();
      v83 = _swift_stdlib_bridgeErrorToNSError();
      *(v81 + 4) = v83;
      *v82 = v83;
      _os_log_impl(&_mh_execute_header, v79, v80, "Failed clearing watch follow up items. Error:%@", v81, 0xCu);
      sub_100020470(v82);
    }

    else
    {
    }

    v51(v77, v50);
    return;
  }

  v31 = v29;
  sub_100072518();
  v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v30;

  v104 = &_swiftEmptyArrayStorage;
  if (v32 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v35 = 0;
    v36 = v32 & 0xFFFFFFFFFFFFFF8;
    v37 = 0x800000010008C790;
    v102 = 0x800000010008C790;
    v103 = v32 & 0xC000000000000001;
    while (1)
    {
      if (v103)
      {
        v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v35 >= *(v36 + 16))
        {
          goto LABEL_27;
        }

        v38 = *(v32 + 8 * v35 + 32);
      }

      v39 = v38;
      v40 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      v41 = [v38 targetBundleIdentifier];
      if (v41)
      {
        v42 = v41;
        v28 = v32;
        v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = v44;

        if (v43 == 0xD000000000000010 && v37 == v45)
        {

          v32 = v28;
LABEL_22:
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v48 = v104[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v37 = v102;
          goto LABEL_9;
        }

        v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v32 = v28;
        if (v47)
        {
          goto LABEL_22;
        }

        v37 = v102;
      }

      else
      {
      }

LABEL_9:
      ++v35;
      if (v40 == i)
      {
        v49 = v104;
        v28 = v101;
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  v49 = &_swiftEmptyArrayStorage;
LABEL_30:

  if ((v49 & 0x8000000000000000) == 0 && (v49 & 0x4000000000000000) == 0)
  {
    v52 = *(v49 + 16);
    if (v52)
    {
      goto LABEL_33;
    }

LABEL_52:
    v54 = &_swiftEmptyArrayStorage;
    goto LABEL_53;
  }

LABEL_51:
  v52 = _CocoaArrayWrapper.endIndex.getter();
  if (!v52)
  {
    goto LABEL_52;
  }

LABEL_33:
  v53 = 0;
  v54 = &_swiftEmptyArrayStorage;
  do
  {
    v55 = v53;
    while (1)
    {
      if ((v49 & 0xC000000000000001) != 0)
      {
        v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v55 >= *(v49 + 16))
        {
          goto LABEL_50;
        }

        v56 = *(v49 + 8 * v55 + 32);
      }

      v57 = v56;
      v53 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      v58 = [v56 uniqueIdentifier];
      if (v58)
      {
        break;
      }

      ++v55;
      if (v53 == v52)
      {
        goto LABEL_53;
      }
    }

    v59 = v58;
    v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v62 = v61;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v54 = sub_100070ABC(0, *(v54 + 2) + 1, 1, v54);
    }

    v64 = *(v54 + 2);
    v63 = *(v54 + 3);
    if (v64 >= v63 >> 1)
    {
      v54 = sub_100070ABC((v63 > 1), v64 + 1, 1, v54);
    }

    *(v54 + 2) = v64 + 1;
    v65 = &v54[16 * v64];
    *(v65 + 4) = v60;
    *(v65 + 5) = v62;
    v28 = v101;
  }

  while (v53 != v52);
LABEL_53:

  if (*(v54 + 2))
  {
    v66 = v93;
    v50 = v96;
    v98(v93, v97, v96);

    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v104 = v70;
      *v69 = 136315138;
      v71 = Array.description.getter();
      v73 = sub_10001FEC8(v71, v72, &v104);

      *(v69 + 4) = v73;
      _os_log_impl(&_mh_execute_header, v67, v68, "Dismissing pending watch follow ups with identifiers:%s", v69, 0xCu);
      sub_100001E74(v70);

      v28 = v101;
    }

    v51 = v95;
    v95(v66, v50);
    sub_100070898(v54);

    isa = Array._bridgeToObjectiveC()().super.isa;

    v104 = 0;
    v75 = [v28 clearPendingFollowUpItemsWithUniqueIdentifiers:isa error:&v104];

    v30 = v104;
    if (v75)
    {
      v76 = v104;

      return;
    }

    goto LABEL_58;
  }

  v84 = v92;
  v85 = v96;
  v98(v92, v97, v96);
  v86 = Logger.logObject.getter();
  v87 = static os_log_type_t.debug.getter();
  v88 = os_log_type_enabled(v86, v87);
  v89 = v95;
  if (v88)
  {
    v90 = swift_slowAlloc();
    *v90 = 0;
    _os_log_impl(&_mh_execute_header, v86, v87, "No pending watch follow ups.", v90, 2u);
  }

  v89(v84, v85);
}

id _s8ndoagent18NDOFollowUpHelpersC016dismissAllFollowC5ItemsyyFZ_0()
{
  v0 = type metadata accessor for NDOFollowUpClient();
  v1 = *(v0 - 8);
  v2 = v1[8];
  v3 = __chkstk_darwin(v0);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v17 - v6;
  v8 = v1[13];
  v8(v17 - v6, enum case for NDOFollowUpClient.ndoagent(_:), v0);
  v8(v5, enum case for NDOFollowUpClient.mercury(_:), v0);
  static NDOFollowUpClient.== infix(_:_:)();
  v9 = v1[1];
  v9(v5, v0);
  v10 = objc_allocWithZone(FLFollowUpController);
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 initWithClientIdentifier:v11];

  if (!v12)
  {
    __break(1u);
  }

  v9(v7, v0);

  v18 = 0;
  v13 = [v12 clearPendingFollowUpItems:&v18];

  v14 = v18;
  if (v13)
  {

    return v14;
  }

  else
  {
    v17[0] = v18;
    v16 = v18;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void _s8ndoagent18NDOFollowUpHelpersC019postedMercuryFollowC5ItemsSaySSGyFZ_0()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NDOFollowUpClient();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v66 - v11;
  v13 = [objc_opt_self() ams_sharedAccountStore];
  v14 = [v13 ams_activeiTunesAccount];
  if (!v14)
  {
    v14 = [v13 ams_localiTunesAccount];
    if (!v14)
    {
      goto LABEL_25;
    }
  }

  v15 = v14;
  v16 = [v14 aida_dsid];
  if (!v16)
  {

LABEL_25:
    v48 = sub_100049C1C();
    (*(v1 + 16))(v4, v48, v0);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "Error fetching mc follow ups.", v51, 2u);
    }

    (*(v1 + 8))(v4, v0);
    return;
  }

  v67 = v15;
  v68 = v13;
  v17 = v16;
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v70 = 0;
  v71 = 0xE000000000000000;
  _StringGuts.grow(_:)(49);

  v70 = 0xD00000000000002FLL;
  v71 = 0x800000010008C760;
  v21._countAndFlagsBits = v18;
  v21._object = v20;
  String.append(_:)(v21);

  v23 = v70;
  v22 = v71;
  v24 = enum case for NDOFollowUpClient.mercury(_:);
  v25 = v6[13];
  v25(v12, enum case for NDOFollowUpClient.mercury(_:), v5);
  v25(v10, v24, v5);
  static NDOFollowUpClient.== infix(_:_:)();
  v26 = v6[1];
  v26(v10, v5);
  v27 = objc_allocWithZone(FLFollowUpController);
  v28 = String._bridgeToObjectiveC()();
  v29 = [v27 initWithClientIdentifier:v28];

  if (!v29)
  {
    __break(1u);
    return;
  }

  v26(v12, v5);

  v70 = 0;
  v30 = [v29 pendingFollowUpItems:&v70];

  v31 = v70;
  if (!v30)
  {
    v52 = v70;

    _convertNSErrorToError(_:)();

    swift_willThrow();

    return;
  }

  sub_100072518();
  v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v31;

  if (v32 >> 62)
  {
LABEL_31:
    v69 = v32 & 0xFFFFFFFFFFFFFF8;
    v34 = _CocoaArrayWrapper.endIndex.getter();
    if (v34)
    {
LABEL_8:
      v35 = 0;
      v36 = &_swiftEmptyArrayStorage;
      do
      {
        v37 = v35;
        while (1)
        {
          if ((v32 & 0xC000000000000001) != 0)
          {
            v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v37 >= *(v69 + 16))
            {
              goto LABEL_30;
            }

            v38 = *(v32 + 8 * v37 + 32);
          }

          v39 = v38;
          v35 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            __break(1u);
LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

          v40 = [v38 uniqueIdentifier];
          if (v40)
          {
            break;
          }

          ++v37;
          if (v35 == v34)
          {
            goto LABEL_33;
          }
        }

        v41 = v40;
        v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v66 = v43;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = sub_100070ABC(0, *(v36 + 2) + 1, 1, v36);
        }

        v45 = *(v36 + 2);
        v44 = *(v36 + 3);
        if (v45 >= v44 >> 1)
        {
          v36 = sub_100070ABC((v44 > 1), v45 + 1, 1, v36);
        }

        *(v36 + 2) = v45 + 1;
        v46 = &v36[16 * v45];
        v47 = v66;
        *(v46 + 4) = v42;
        *(v46 + 5) = v47;
      }

      while (v35 != v34);
      goto LABEL_33;
    }
  }

  else
  {
    v69 = v32 & 0xFFFFFFFFFFFFFF8;
    v34 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v34)
    {
      goto LABEL_8;
    }
  }

  v36 = &_swiftEmptyArrayStorage;
LABEL_33:

  v53 = 0;
  v54 = v36 + 40;
  v55 = -*(v36 + 2);
  v56 = &_swiftEmptyArrayStorage;
  v69 = (v36 + 40);
LABEL_34:
  v57 = v53 + 1;
  v58 = &v54[16 * v53];
  while (v55 + v57 != 1)
  {
    v53 = v57;
    if ((v57 - 1) >= *(v36 + 2))
    {
      __break(1u);
    }

    v60 = *(v58 - 1);
    v59 = *v58;
    if (v60 == v23 && v59 == v22)
    {
      v60 = v23;
LABEL_44:

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v70 = v56;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100033930(0, v56[2] + 1, 1);
        v56 = v70;
      }

      v64 = v56[2];
      v63 = v56[3];
      if (v64 >= v63 >> 1)
      {
        sub_100033930((v63 > 1), v64 + 1, 1);
        v56 = v70;
      }

      v56[2] = v64 + 1;
      v65 = &v56[2 * v64];
      v65[4] = v60;
      v65[5] = v59;
      v54 = v69;
      goto LABEL_34;
    }

    ++v57;
    v58 += 16;
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      goto LABEL_44;
    }
  }
}

unint64_t sub_100072518()
{
  result = qword_1000A82D8;
  if (!qword_1000A82D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000A82D8);
  }

  return result;
}

void sub_100072728(os_log_t log)
{
  v1 = 138412290;
  v2 = @"com.apple.private.ndoagent";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Rejecting connection to ndoagent: missing entitlement '%@'", &v1, 0xCu);
}

void sub_1000727AC(uint64_t a1, NSObject *a2)
{
  v3 = [NSNumber numberWithUnsignedInt:a1];
  v4 = 136446466;
  v5 = "void NDOHandleAppleAccountChange(__strong id<NDONotificationHandler>, ACXPCAccountChangeType)";
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%{public}s: Unsupported account change type:%@", &v4, 0x16u);
}

void sub_1000728D4()
{
  v1[0] = 136446466;
  sub_100009D90();
  _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "%{public}s: callingProcess=%@", v1, 0x16u);
}

void sub_100072954(os_log_t log)
{
  v1 = 136446210;
  v2 = "[NDOWarrantyDownloader _scheduleWeeklyOutreachIfRequiredForDefaultDeviceWarranty:]";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%{public}s: country is excluded ...", &v1, 0xCu);
}

void sub_1000729D8(void *a1, NSObject *a2, double a3)
{
  v5 = [a1 scheduledActivityDate];
  v6 = 136446722;
  v7 = "[NDOWarrantyDownloader _scheduleWeeklyOutreachIfRequiredForDefaultDeviceWarranty:]";
  v8 = 2112;
  v9 = v5;
  v10 = 2048;
  v11 = a3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%{public}s: Didn't schedule interval call for normal use case with already scheduled activity: %@ and last interval value: %ld", &v6, 0x20u);
}

void sub_100072AA0(os_log_t log)
{
  v1 = 136446210;
  v2 = "[NDOWarrantyDownloader _scheduleWeeklyOutreachIfRequiredForDefaultDeviceWarranty:]";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%{public}s: Not scheduling interval call", &v1, 0xCu);
}

void sub_100072B68()
{
  v3[0] = 136446722;
  sub_100009D90();
  v4 = v0;
  v5 = v1;
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%{public}s: Error serializing plist file from URL '%@': %@", v3, 0x20u);
}

void sub_100072BF4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "URL '%@' contains no plist data", &v2, 0xCu);
}

void sub_100072C80()
{
  sub_10000AF10();
  sub_10000AF04();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100072CBC()
{
  sub_10000AF10();
  sub_10000AF04();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100072D84()
{
  sub_10000AF10();
  sub_10000AF04();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100072DC0()
{
  sub_10000AF10();
  sub_10000AF04();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100072E88(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 136446722;
  v4 = "[NDOPushListener initWithConnection:notificationHandler:]";
  v5 = 2112;
  v6 = a1;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%{public}s cannot create push listener. Invalid parameters. Connection:%@. notificationHandler:%@", &v3, 0x20u);
}

void sub_100072F20(os_log_t log)
{
  v1 = 136446210;
  v2 = "[NDOIntervalCallActivity performActivityForScheduler:withCompletionHandler:]_block_invoke";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%{public}s: Warranty failed to download", &v1, 0xCu);
}

void sub_100072FE8()
{
  v1[0] = 136446466;
  sub_100009D90();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "[bluetooth_accessory] %{public}s: Failed to sign the data using BAA certificate. Error = %@", v1, 0x16u);
}

void sub_100073068(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136446210;
  *a2 = "[NDODeviceServicesInterface generatePEMDataWithCertificateChain:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[bluetooth_accessory] %{public}s: Attestation data is null.", buf, 0xCu);
}

void sub_1000730FC(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 136446466;
  *(buf + 4) = "[NDODeviceServicesInterface signPayload:completionHandler:]";
  *(buf + 6) = 2112;
  *(buf + 14) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[bluetooth_accessory] %{public}s: Failed to generate the certificate: %@", buf, 0x16u);
}

void sub_10007333C(void *a1, NSObject *a2)
{
  v3 = [a1 localizedDescription];
  v4[0] = 136315394;
  sub_100009D90();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[bluetooth_accessory] %s: Device Services request failed with error: %@", v4, 0x16u);
}

void sub_1000734C4()
{
  v1[0] = 136446466;
  sub_100009D90();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%{public}s: CBDiscovery failed with error: %@\n", v1, 0x16u);
}

void sub_100073544(void *a1)
{
  [a1 count];
  sub_100011530();
  sub_100011544(&_mh_execute_header, v1, v2, "%{public}s: Printing devices: %lu", v3, v4, v5, v6, 2u);
}

void sub_1000736B0()
{
  v1[0] = 136446466;
  sub_100009D90();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%{public}s: CBDiscovery failed with error: %@\n", v1, 0x16u);
}

void sub_100073730(void *a1)
{
  [a1 count];
  sub_100011530();
  sub_100011544(&_mh_execute_header, v1, v2, "%{public}s: Printing devices: %lu", v3, v4, v5, v6, 2u);
}

void sub_1000737B4(uint64_t a1, NSObject *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = 136446466;
  v4 = "+[NDOFollowUpPost nextFollowUpPostDateWithDevicesInfo:]_block_invoke";
  v5 = 2112;
  v6 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%{public}s: mid result: %@", &v3, 0x16u);
}

void sub_10007384C(void *a1, NSObject *a2)
{
  v3 = [a1 device];
  v4 = [v3 serialNumber];
  v5 = [v4 sha256Hash];
  v6 = 136446466;
  v7 = "+[NDOFollowUpPost nextFollowUpPostDateWithDevicesInfo:]_block_invoke";
  v8 = 2112;
  v9 = v5;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%{public}s: Already posted followup for: %@", &v6, 0x16u);
}

void sub_100073920(void *a1, NSObject *a2)
{
  v3 = [a1 name];
  v4[0] = 136446466;
  sub_100009D90();
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[bluetooth_accessory] %{public}s: Bluetooth notification received. Notification Name: %@", v4, 0x16u);
}

void sub_100073B28()
{
  v1[0] = 136446466;
  sub_100009D90();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "[bluetooth_accessory] %{public}s: CBDiscovery failed with error: %@\n", v1, 0x16u);
}

void sub_100073BA8(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136446210;
  *a2 = "[NDOBluetoothDeviceManager getBluetoothAudioDevicesWithCompletionHandler:]_block_invoke";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[bluetooth_accessory] %{public}s: Fake or unreliable AirPods, Not sending the data to service.\n", buf, 0xCu);
}

void sub_100073C3C(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v3 = 136446466;
  v4 = "[NDOAgentDefaultWarrantyProvider initWithCallingProcessBundleID:]";
  v5 = 2112;
  v6 = a1;
  sub_100018A4C(&_mh_execute_header, a2, a3, "%{public}s: callingProcess=%@", &v3);
}

void sub_100073CC0()
{
  sub_100018A38();
  v3 = v0;
  sub_100018A4C(&_mh_execute_header, v1, v1, "serialNumberOverride for Serial Number: %@ with serial: %@", v2);
}

void sub_100073D34()
{
  sub_100018A38();
  v4 = v0;
  sub_100018A4C(&_mh_execute_header, v1, v2, "Override Serial Number: %@ found for SN: %@", v3);
}

void sub_100073DA4(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = [a2 serialNumber];
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v5;
  sub_100018A4C(&_mh_execute_header, a3, v6, "Override Serial Number: %@ found for SN: %@", &v7);
}

void sub_100073E50()
{
  sub_100018A38();
  v3 = v0;
  sub_100018A4C(&_mh_execute_header, v1, v1, "Override Serial Number: %@ found for SN: %@", v2);
}

void sub_100073EC4(uint64_t a1, NSObject *a2)
{
  v2 = 136380931;
  v3 = "[NDOAgent getCoverageInfoForSerialNumber:usingPolicy:withReply:]";
  v4 = 2048;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%{private}s Cannot create objc device coverage loader wrapper, policy: %lu", &v2, 0x16u);
}

Swift::String_optional __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.urlString(for:)(Swift::String a1)
{
  v1 = Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.urlString(for:)(a1._countAndFlagsBits, a1._object);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall String.uppercased()()
{
  v0 = String.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}