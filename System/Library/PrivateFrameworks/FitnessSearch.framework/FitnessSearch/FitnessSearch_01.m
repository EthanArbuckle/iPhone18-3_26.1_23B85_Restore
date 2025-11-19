unint64_t sub_1E5C396D0()
{
  result = qword_1ED0542A8;
  if (!qword_1ED0542A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0542A8);
  }

  return result;
}

unint64_t sub_1E5C397D8()
{
  result = qword_1ED0542B0;
  if (!qword_1ED0542B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0542B0);
  }

  return result;
}

unint64_t sub_1E5C39830()
{
  result = qword_1ED0542B8;
  if (!qword_1ED0542B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0542B8);
  }

  return result;
}

unint64_t sub_1E5C39888()
{
  result = qword_1ED0542C0;
  if (!qword_1ED0542C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0542C0);
  }

  return result;
}

unint64_t sub_1E5C398E0()
{
  result = qword_1ED0542C8;
  if (!qword_1ED0542C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0542C8);
  }

  return result;
}

unint64_t sub_1E5C39938()
{
  result = qword_1ED0542D0;
  if (!qword_1ED0542D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0542D0);
  }

  return result;
}

unint64_t sub_1E5C39990()
{
  result = qword_1ED0542D8;
  if (!qword_1ED0542D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0542D8);
  }

  return result;
}

unint64_t sub_1E5C399E8()
{
  result = qword_1ED0542E0;
  if (!qword_1ED0542E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0542E0);
  }

  return result;
}

unint64_t sub_1E5C39A40()
{
  result = qword_1ED0542E8;
  if (!qword_1ED0542E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0542E8);
  }

  return result;
}

unint64_t sub_1E5C39A98()
{
  result = qword_1ED0542F0;
  if (!qword_1ED0542F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0542F0);
  }

  return result;
}

unint64_t sub_1E5C39AF0()
{
  result = qword_1ED0542F8;
  if (!qword_1ED0542F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0542F8);
  }

  return result;
}

unint64_t sub_1E5C39B48()
{
  result = qword_1ED054300;
  if (!qword_1ED054300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054300);
  }

  return result;
}

unint64_t sub_1E5C39BA0()
{
  result = qword_1ED054308;
  if (!qword_1ED054308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054308);
  }

  return result;
}

unint64_t sub_1E5C39BF8()
{
  result = qword_1ED054310;
  if (!qword_1ED054310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054310);
  }

  return result;
}

unint64_t sub_1E5C39C50()
{
  result = qword_1ED054318;
  if (!qword_1ED054318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054318);
  }

  return result;
}

unint64_t sub_1E5C39CA8()
{
  result = qword_1ED054320;
  if (!qword_1ED054320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054320);
  }

  return result;
}

unint64_t sub_1E5C39D00()
{
  result = qword_1ED054328;
  if (!qword_1ED054328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054328);
  }

  return result;
}

unint64_t sub_1E5C39D58()
{
  result = qword_1ED054330;
  if (!qword_1ED054330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054330);
  }

  return result;
}

unint64_t sub_1E5C39DB0()
{
  result = qword_1ED054338;
  if (!qword_1ED054338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054338);
  }

  return result;
}

unint64_t sub_1E5C39E08()
{
  result = qword_1ED054340;
  if (!qword_1ED054340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054340);
  }

  return result;
}

unint64_t sub_1E5C39E60()
{
  result = qword_1ED054348;
  if (!qword_1ED054348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054348);
  }

  return result;
}

unint64_t sub_1E5C39EB8()
{
  result = qword_1ED054350;
  if (!qword_1ED054350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054350);
  }

  return result;
}

Swift::Bool __swiftcall SearchState.isFetching(term:)(Swift::String term)
{
  object = term._object;
  countAndFlagsBits = term._countAndFlagsBits;
  v4 = v1 + *(type metadata accessor for SearchState() + 52);
  if (*(v4 + 56))
  {
    return 0;
  }

  if (*v4 == countAndFlagsBits && *(v4 + 8) == object)
  {
    return 1;
  }

  return sub_1E5C9D060();
}

uint64_t SearchState.withLocale(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E5C3A0B0(v2, a2);
  v5 = *(type metadata accessor for SearchState() + 40);
  v6 = sub_1E5C9BBD0();
  v7 = *(*(v6 - 8) + 24);

  return v7(a2 + v5, a1, v6);
}

uint64_t sub_1E5C3A0B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double SearchState.withResults(_:)@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v10 = *a1;
  v11 = v4;
  v12[0] = a1[2];
  *(v12 + 9) = *(a1 + 41);
  sub_1E5C3A0B0(v2, a2);
  v5 = (a2 + *(type metadata accessor for SearchState() + 52));
  *&v14[9] = *(v5 + 41);
  v6 = v5[1];
  v13[0] = *v5;
  v13[1] = v6;
  *v14 = v5[2];
  sub_1E5C31CB0(&v10, &v9);
  sub_1E5C30CAC(v13);
  v7 = v11;
  *v5 = v10;
  v5[1] = v7;
  v5[2] = v12[0];
  result = *(v12 + 9);
  *(v5 + 41) = *(v12 + 9);
  return result;
}

__n128 SearchState.withLayout(_:)@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *a1;
  v4 = a1[1].n128_u64[0];
  sub_1E5C3A0B0(v2, a2);
  result = v6;
  *(a2 + 24) = v6;
  *(a2 + 40) = v4;
  return result;
}

uint64_t SearchState.withPlatform(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_1E5C3A0B0(v2, a2);
  result = type metadata accessor for SearchState();
  *(a2 + *(result + 48)) = a1;
  return result;
}

uint64_t SearchState.withSubscription(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  result = sub_1E5C3A0B0(v2, a2);
  *(a2 + 51) = a1;
  return result;
}

uint64_t SearchState.withIsInternalBuild(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  result = sub_1E5C3A0B0(v2, a2);
  *(a2 + 48) = a1;
  return result;
}

Swift::Void __swiftcall SearchState.clearResults()()
{
  v1 = type metadata accessor for SearchState();
  v2 = v0 + *(v1 + 52);
  *&v8[9] = *(v2 + 41);
  v3 = *(v2 + 16);
  v7[0] = *v2;
  v7[1] = v3;
  *v8 = *(v2 + 32);
  sub_1E5C30CAC(v7);
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  *(v2 + 56) = 2;
  v4 = (v0 + *(v1 + 60));
  v5 = v4[1];
  v9[0] = *v4;
  v9[1] = v5;
  v6 = v4[3];
  v9[2] = v4[2];
  v9[3] = v6;
  sub_1E5C3A36C(v9);
  *v4 = 0u;
  v4[1] = 0u;
  v4[2] = 0u;
  v4[3] = 0u;
}

uint64_t sub_1E5C3A36C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053F80, &qword_1E5C9E528);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SearchState.searchQuery.getter()
{
  v1 = 0;
  v2 = v0 + *(type metadata accessor for SearchState() + 52);
  if (*(v2 + 56) == 1)
  {
    v1 = *(v2 + 24);
    v3 = *(v2 + 32);
  }

  return v1;
}

unint64_t SearchState.pageState.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for SearchState();
  if (*(v1 + *(result + 48)) == 2)
  {
    if (*(v1 + 49))
    {
      v4 = (v1 + *(result + 52));
      v5 = *v4;
      result = v4[1];
      v6 = v4[2];
      if (*(v4 + 56))
      {
        if (*(v4 + 56) == 1)
        {
          v8 = v4[3];
          v7 = v4[4];
          if (*(v6 + 16))
          {
            v9 = *(v6 + 48);
            v49 = *(v6 + 32);
            v50 = v9;
            v10 = *(v6 + 80);
            v51 = *(v6 + 64);
            v52 = v10;
            v40 = v50;
            v42 = v49;
            v36 = v10;
            v38 = v51;
            v11 = result;
            sub_1E5C2A1B8(&v49, &v45);
            v13 = v36;
            v12 = v38;
            v15 = v40;
            v14 = v42;
            result = v11;
          }

          else
          {
            v14 = 0uLL;
            v15 = 0uLL;
            v12 = 0uLL;
            v13 = 0uLL;
          }

          *a1 = v8;
          *(a1 + 8) = v7;
          *(a1 + 16) = v5;
          *(a1 + 24) = result;
          *(a1 + 32) = v14;
          *(a1 + 48) = v15;
          *(a1 + 64) = v12;
          *(a1 + 80) = v13;
          *(a1 + 96) = 2;
        }

        goto LABEL_12;
      }

      *a1 = v5;
      goto LABEL_16;
    }

LABEL_12:
    *a1 = 1;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0;
LABEL_13:
    *(a1 + 96) = 3;
    return result;
  }

  if (!*(v1 + 49))
  {
    goto LABEL_12;
  }

  v16 = result;
  v17 = (v1 + *(result + 52));
  v18 = *v17;
  result = v17[1];
  v6 = v17[2];
  if (!*(v17 + 56))
  {
    *a1 = v18;
LABEL_16:
    *(a1 + 8) = result;
    *(a1 + 16) = v6;
    *(a1 + 96) = 1;
    goto LABEL_27;
  }

  if (*(v17 + 56) == 1)
  {
    v20 = v17[3];
    v19 = v17[4];
    v21 = (v1 + v16[15]);
    v22 = v21[1];
    v49 = *v21;
    v50 = v22;
    v23 = v21[3];
    v51 = v21[2];
    v52 = v23;
    if (*(&v22 + 1))
    {
      v24 = v49;
      v26 = v51;
      v25 = v52;
      v27 = v50;
    }

    else if (*(v6 + 16))
    {
      v31 = *(v6 + 48);
      v45 = *(v6 + 32);
      v46 = v31;
      v32 = *(v6 + 80);
      v47 = *(v6 + 64);
      v48 = v32;
      v41 = v45;
      v43 = v46;
      v37 = v47;
      v39 = v32;
      v33 = result;
      sub_1E5C2A1B8(&v45, v44);
      v26 = v37;
      v25 = v39;
      v24 = v41;
      v27 = v43;
      result = v33;
    }

    else
    {
      v24 = 0uLL;
      v27 = 0uLL;
      v26 = 0uLL;
      v25 = 0uLL;
    }

    *a1 = v20;
    *(a1 + 8) = v19;
    *(a1 + 16) = v18;
    *(a1 + 24) = result;
    *(a1 + 32) = v24;
    *(a1 + 48) = v27;
    *(a1 + 64) = v26;
    *(a1 + 80) = v25;
    *(a1 + 96) = 2;
    sub_1E5C31EF0(&v49, &v45);
  }

  v28 = v1 + v16[17];
  if (*(v28 + 16))
  {
    v30 = v28 + 24;
    v29 = *(v28 + 24);
    result = *(v30 + 8);
  }

  else
  {
    v34 = (v1 + v16[14]);
    v29 = *v34;
    result = v34[1];
    v35 = HIBYTE(result) & 0xF;
    if ((result & 0x2000000000000000) == 0)
    {
      v35 = v29 & 0xFFFFFFFFFFFFLL;
    }

    if (!v35)
    {
      *a1 = 2;
      *(a1 + 8) = 0u;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0;
      goto LABEL_13;
    }
  }

  *a1 = v29;
  *(a1 + 8) = result;
  *(a1 + 96) = 0;
LABEL_27:
}

uint64_t SearchState.description.getter()
{
  SearchState.pageState.getter(v7);
  v9 = v7[0];
  v12 = v7[3];
  v13 = v7[4];
  v14 = v7[5];
  v15 = v8;
  v10 = v7[1];
  v11 = v7[2];
  v0 = *&v7[0];
  if (v8 <= 1u)
  {
    if (v8)
    {
      v4 = *(&v9 + 1);
      v6 = 0;
      sub_1E5C9CE60();
      MEMORY[0x1E6939590](0x676E696863746546, 0xE900000000000028);
      MEMORY[0x1E6939590](v0, v4);
      sub_1E5C3A9CC(v7);
      MEMORY[0x1E6939590](8236, 0xE200000000000000);
      sub_1E5C9CEB0();
    }

    else
    {
      v6 = 0x2873746E6948;
      MEMORY[0x1E6939590](v9, *(&v9 + 1));
      sub_1E5C3A9CC(v7);
    }

LABEL_8:
    MEMORY[0x1E6939590](41, 0xE100000000000000);
    return v6;
  }

  if (v8 == 2)
  {
    v1 = *(&v9 + 1);

    v2 = *(&v12 + 1);
    if (!*(&v12 + 1))
    {

      return 0xD000000000000010;
    }

    v3 = v12;
    v6 = 0x2D746C75736552;

    MEMORY[0x1E6939590](v3, v2);
    sub_1E5C3A36C(&v11);

    MEMORY[0x1E6939590](40, 0xE100000000000000);
    MEMORY[0x1E6939590](v0, v1);

    goto LABEL_8;
  }

  if (!(*(&v14 + 1) | v9 | v14 | *(&v13 + 1) | v13 | *(&v12 + 1) | v12 | *(&v11 + 1) | v11 | *(&v10 + 1) | v10 | *(&v9 + 1)))
  {
    return 1701602377;
  }

  if (v9 == 1 && (v14 | *(&v14 + 1) | *(&v13 + 1) | v13 | *(&v12 + 1) | v12 | *(&v11 + 1) | v11 | *(&v10 + 1) | v10 | *(&v9 + 1)) == 0)
  {
    return 0x676E69646E614CLL;
  }

  return 0x7375636F46;
}

uint64_t sub_1E5C3AA24()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 9;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5C3AA58()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5C3AA8C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5C3AAC0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5C3AAF4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5C3AB28()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1E5C3AB5C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t sub_1E5C3AB88(char a1)
{
  result = 0x6F69746174636964;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      return result;
    case 3:
      v3 = 0x437375636F66;
      goto LABEL_10;
    case 4:
      result = 0xD00000000000001BLL;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    case 6:
    case 11:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0x6552746E65746E69;
      break;
    case 8:
    case 15:
      result = 0xD000000000000019;
      break;
    case 9:
      result = 0x6275537972657571;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 12:
      v3 = 0x4365706F6373;
LABEL_10:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6168000000000000;
      break;
    case 13:
      result = 0x6C655365706F6373;
      break;
    case 14:
      result = 0xD000000000000012;
      break;
    case 16:
      result = 0x6E61684374786574;
      break;
    case 17:
      result = 0x4164694477656976;
      break;
    case 18:
      result = 0xD000000000000010;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_1E5C3ADDC(uint64_t a1)
{
  v2 = sub_1E5C3E044();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C3AE18(uint64_t a1)
{
  v2 = sub_1E5C3E044();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C3AE54(uint64_t a1)
{
  v2 = sub_1E5C3DFF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C3AE90(uint64_t a1)
{
  v2 = sub_1E5C3DFF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C3AED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5C44084(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5C3AF08(uint64_t a1)
{
  v2 = sub_1E5C3D90C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C3AF44(uint64_t a1)
{
  v2 = sub_1E5C3D90C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C3AF80(uint64_t a1)
{
  v2 = sub_1E5C3DF9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C3AFBC(uint64_t a1)
{
  v2 = sub_1E5C3DF9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C3B00C(uint64_t a1)
{
  v2 = sub_1E5C3DF48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C3B048(uint64_t a1)
{
  v2 = sub_1E5C3DF48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C3B084(uint64_t a1)
{
  v2 = sub_1E5C3DEF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C3B0C0(uint64_t a1)
{
  v2 = sub_1E5C3DEF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C3B0FC(uint64_t a1)
{
  v2 = sub_1E5C3DEA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C3B138(uint64_t a1)
{
  v2 = sub_1E5C3DEA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C3B174(uint64_t a1)
{
  v2 = sub_1E5C3DE4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C3B1B0(uint64_t a1)
{
  v2 = sub_1E5C3DE4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C3B200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5C446C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5C3B228(uint64_t a1)
{
  v2 = sub_1E5C3DDA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C3B264(uint64_t a1)
{
  v2 = sub_1E5C3DDA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C3B2A0(uint64_t a1)
{
  v2 = sub_1E5C3DDF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C3B2DC(uint64_t a1)
{
  v2 = sub_1E5C3DDF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C3B318(uint64_t a1)
{
  v2 = sub_1E5C3DD50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C3B354(uint64_t a1)
{
  v2 = sub_1E5C3DD50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C3B390(uint64_t a1)
{
  v2 = sub_1E5C3DCFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C3B3CC(uint64_t a1)
{
  v2 = sub_1E5C3DCFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C3B408(uint64_t a1)
{
  v2 = sub_1E5C3DC54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C3B444(uint64_t a1)
{
  v2 = sub_1E5C3DC54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C3B480(uint64_t a1)
{
  v2 = sub_1E5C3DC00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C3B4BC(uint64_t a1)
{
  v2 = sub_1E5C3DC00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C3B4F8(uint64_t a1)
{
  v2 = sub_1E5C3DBAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C3B534(uint64_t a1)
{
  v2 = sub_1E5C3DBAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C3B570(uint64_t a1)
{
  v2 = sub_1E5C3DB58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C3B5AC(uint64_t a1)
{
  v2 = sub_1E5C3DB58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C3B5E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1E5C9D060() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5C9D060();

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

uint64_t sub_1E5C3B6B4(uint64_t a1)
{
  v2 = sub_1E5C3DA5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C3B6F0(uint64_t a1)
{
  v2 = sub_1E5C3DA5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C3B72C()
{
  sub_1E5C9D0D0();
  MEMORY[0x1E69399F0](0);
  return sub_1E5C9D110();
}

uint64_t sub_1E5C3B770()
{
  sub_1E5C9D0D0();
  MEMORY[0x1E69399F0](0);
  return sub_1E5C9D110();
}

uint64_t sub_1E5C3B7B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E5C9D060();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E5C3B830(uint64_t a1)
{
  v2 = sub_1E5C3DA08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C3B86C(uint64_t a1)
{
  v2 = sub_1E5C3DA08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C3B8A8(uint64_t a1)
{
  v2 = sub_1E5C3D9B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C3B8E4(uint64_t a1)
{
  v2 = sub_1E5C3D9B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C3B920(uint64_t a1)
{
  v2 = sub_1E5C3D960();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C3B95C(uint64_t a1)
{
  v2 = sub_1E5C3D960();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SearchAction.encode(to:)(void *a1)
{
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0543B0, &qword_1E5C9F8B0);
  v207 = *(v208 - 8);
  v2 = *(v207 + 64);
  MEMORY[0x1EEE9AC00](v208);
  v206 = &v154 - v3;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0543B8, &qword_1E5C9F8B8);
  v202 = *(v204 - 8);
  v4 = *(v202 + 64);
  MEMORY[0x1EEE9AC00](v204);
  v200 = &v154 - v5;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0543C0, &qword_1E5C9F8C0);
  v203 = *(v205 - 8);
  v6 = *(v203 + 64);
  MEMORY[0x1EEE9AC00](v205);
  v201 = &v154 - v7;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0543C8, &qword_1E5C9F8C8);
  v210 = *(v211 - 8);
  v8 = *(v210 + 64);
  MEMORY[0x1EEE9AC00](v211);
  v209 = &v154 - v9;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0543D0, &qword_1E5C9F8D0);
  v198 = *(v199 - 8);
  v10 = *(v198 + 64);
  MEMORY[0x1EEE9AC00](v199);
  v197 = &v154 - v11;
  v192 = type metadata accessor for SearchHint();
  v12 = *(*(v192 - 8) + 64);
  MEMORY[0x1EEE9AC00](v192);
  v196 = &v154 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0543D8, &qword_1E5C9F8D8);
  v190 = *(v193 - 8);
  v14 = *(v190 + 64);
  MEMORY[0x1EEE9AC00](v193);
  v187 = &v154 - v15;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0543E0, &qword_1E5C9F8E0);
  v184 = *(v185 - 8);
  v16 = *(v184 + 64);
  MEMORY[0x1EEE9AC00](v185);
  v181 = &v154 - v17;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0543E8, &qword_1E5C9F8E8);
  v194 = *(v195 - 8);
  v18 = *(v194 + 64);
  MEMORY[0x1EEE9AC00](v195);
  v191 = &v154 - v19;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0543F0, &qword_1E5C9F8F0);
  v182 = *(v183 - 8);
  v20 = *(v182 + 64);
  MEMORY[0x1EEE9AC00](v183);
  v180 = &v154 - v21;
  v175 = type metadata accessor for SearchHistoryItem();
  v22 = *(*(v175 - 8) + 64);
  MEMORY[0x1EEE9AC00](v175);
  v178 = &v154 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0543F8, &qword_1E5C9F8F8);
  v177 = *(v179 - 8);
  v24 = *(v177 + 64);
  MEMORY[0x1EEE9AC00](v179);
  v176 = &v154 - v25;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054400, &qword_1E5C9F900);
  v188 = *(v189 - 8);
  v26 = *(v188 + 64);
  MEMORY[0x1EEE9AC00](v189);
  v186 = &v154 - v27;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054408, &qword_1E5C9F908);
  v173 = *(v174 - 8);
  v28 = *(v173 + 64);
  MEMORY[0x1EEE9AC00](v174);
  v170 = &v154 - v29;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054410, &qword_1E5C9F910);
  v171 = *(v172 - 8);
  v30 = *(v171 + 64);
  MEMORY[0x1EEE9AC00](v172);
  v169 = &v154 - v31;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054418, &qword_1E5C9F918);
  v167 = *(v168 - 8);
  v32 = *(v167 + 64);
  MEMORY[0x1EEE9AC00](v168);
  v166 = &v154 - v33;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054420, &qword_1E5C9F920);
  v164 = *(v165 - 8);
  v34 = *(v164 + 64);
  MEMORY[0x1EEE9AC00](v165);
  v162 = &v154 - v35;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054428, &qword_1E5C9F928);
  v161 = *(v163 - 8);
  v36 = *(v161 + 64);
  MEMORY[0x1EEE9AC00](v163);
  v160 = &v154 - v37;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054430, &qword_1E5C9F930);
  v158 = *(v159 - 8);
  v38 = *(v158 + 64);
  MEMORY[0x1EEE9AC00](v159);
  v157 = &v154 - v39;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054438, &qword_1E5C9F938);
  v155 = *(v156 - 8);
  v40 = *(v155 + 64);
  MEMORY[0x1EEE9AC00](v156);
  v42 = &v154 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054440, &qword_1E5C9F940);
  v154 = *(v43 - 8);
  v44 = *(v154 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v154 - v45;
  v47 = type metadata accessor for SearchAction();
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v154 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054448, &qword_1E5C9F948);
  v213 = *(v224 - 8);
  v51 = *(v213 + 64);
  MEMORY[0x1EEE9AC00](v224);
  v53 = &v154 - v52;
  v54 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C3D90C();
  v215 = v53;
  sub_1E5C9D130();
  sub_1E5C426C4(v212, v50, type metadata accessor for SearchAction);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v117 = *v50;
      LOBYTE(v220) = 6;
      sub_1E5C3DE4C();
      v118 = v169;
      v119 = v224;
      v120 = v215;
      sub_1E5C9CFC0();
      *&v220 = v117;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0540A0, &qword_1E5C9F950);
      sub_1E5C40888(&qword_1ED0540A8, &qword_1ED0540B0);
      v121 = v172;
      sub_1E5C9D030();
      (*(v171 + 8))(v118, v121);
      (*(v213 + 8))(v120, v119);

    case 2u:
      v88 = *v50;
      v89 = *(v50 + 1);
      LOBYTE(v220) = 7;
      sub_1E5C3DDF8();
      v90 = v170;
      v91 = v224;
      v92 = v215;
      sub_1E5C9CFC0();
      v93 = v174;
      sub_1E5C9D000();

      (*(v173 + 8))(v90, v93);
      return (*(v213 + 8))(v92, v91);
    case 3u:
      v95 = *(v50 + 1);
      v209 = *v50;
      v96 = *(v50 + 2);
      v97 = *(v50 + 3);
      v98 = *(v50 + 4);
      v99 = *(v50 + 5);
      v100 = *(v50 + 6);
      v205 = *(v50 + 7);
      v101 = *(v50 + 9);
      v211 = *(v50 + 8);
      v210 = v101;
      v102 = *(v50 + 11);
      v204 = *(v50 + 10);
      v212 = v102;
      LODWORD(v203) = v50[96];
      v103 = *(v50 + 14);
      v202 = *(v50 + 13);
      v207 = v103;
      v104 = *(v50 + 16);
      v201 = *(v50 + 15);
      v206 = v104;
      v105 = *(v50 + 18);
      v200 = *(v50 + 17);
      v208 = v105;
      LOBYTE(v220) = 8;
      sub_1E5C3DDA4();
      v106 = v186;
      v107 = v215;
      sub_1E5C9CFC0();
      *&v220 = v209;
      *(&v220 + 1) = v95;
      v209 = v95;
      *&v221 = v96;
      *(&v221 + 1) = v97;
      *&v222 = v98;
      *(&v222 + 1) = v99;
      v108 = v106;
      *&v223 = v100;
      LOBYTE(v216) = 0;
      sub_1E5C3DCA8();
      v109 = v189;
      v110 = v214;
      sub_1E5C9D030();
      if (!v110)
      {
        v150 = v206;
        v151 = v207;
        v152 = v208;

        *&v220 = v205;
        *(&v220 + 1) = v211;
        *&v221 = v210;
        *(&v221 + 1) = v204;
        *&v222 = v212;
        LOBYTE(v216) = 1;
        sub_1E5C3DAB0();
        sub_1E5C9D030();

        LOBYTE(v220) = v203;
        *(&v220 + 1) = v202;
        *&v221 = v151;
        *(&v221 + 1) = v201;
        *&v222 = v150;
        *(&v222 + 1) = v200;
        *&v223 = v152;
        LOBYTE(v216) = 2;
        sub_1E5C3DB04();
        sub_1E5C9D030();
        v153 = v215;
        (*(v188 + 8))(v108, v109);
        (*(v213 + 8))(v153, v224);

        goto LABEL_34;
      }

      (*(v188 + 8))(v106, v109);
      (*(v213 + 8))(v107, v224);

    case 4u:
      v68 = *v50;
      v67 = *(v50 + 1);
      v69 = v50[16];
      LOBYTE(v220) = 9;
      sub_1E5C3DD50();
      v70 = v176;
      v71 = v224;
      v72 = v215;
      sub_1E5C9CFC0();
      LOBYTE(v220) = 0;
      v73 = v179;
      v74 = v214;
      sub_1E5C9D000();

      if (!v74)
      {
        LOBYTE(v220) = v69;
        LOBYTE(v216) = 1;
        sub_1E5C36AF8();
        sub_1E5C9D030();
      }

      (*(v177 + 8))(v70, v73);
      return (*(v213 + 8))(v72, v71);
    case 5u:
      v123 = v178;
      sub_1E5C40724(v50, v178, type metadata accessor for SearchHistoryItem);
      LOBYTE(v220) = 10;
      sub_1E5C3DCFC();
      v124 = v180;
      v57 = v224;
      v58 = v215;
      sub_1E5C9CFC0();
      sub_1E5C42774(&qword_1ED0540B0, type metadata accessor for SearchHistoryItem);
      v125 = v183;
      sub_1E5C9D030();
      (*(v182 + 8))(v124, v125);
      v126 = type metadata accessor for SearchHistoryItem;
      goto LABEL_28;
    case 6u:
      v128 = *(v50 + 1);
      v209 = *v50;
      v130 = *(v50 + 2);
      v129 = *(v50 + 3);
      v132 = *(v50 + 4);
      v131 = *(v50 + 5);
      v133 = *(v50 + 6);
      LODWORD(v208) = v50[56];
      v134 = *(v50 + 9);
      v207 = *(v50 + 8);
      v211 = v134;
      v135 = *(v50 + 11);
      v206 = *(v50 + 10);
      v210 = v135;
      v136 = *(v50 + 13);
      v205 = *(v50 + 12);
      v212 = v136;
      LOBYTE(v220) = 11;
      sub_1E5C3DC54();
      v137 = v191;
      v138 = v215;
      sub_1E5C9CFC0();
      *&v220 = v209;
      *(&v220 + 1) = v128;
      v209 = v128;
      *&v221 = v130;
      *(&v221 + 1) = v129;
      *&v222 = v132;
      *(&v222 + 1) = v131;
      *&v223 = v133;
      LOBYTE(v216) = 0;
      sub_1E5C3DCA8();
      v139 = v195;
      v140 = v214;
      sub_1E5C9D030();
      if (v140)
      {

        (*(v194 + 8))(v137, v139);
        (*(v213 + 8))(v138, v224);
      }

      else
      {

        LOBYTE(v220) = v208;
        *(&v220 + 1) = v207;
        *&v221 = v211;
        *(&v221 + 1) = v206;
        *&v222 = v210;
        *(&v222 + 1) = v205;
        *&v223 = v212;
        LOBYTE(v216) = 1;
        sub_1E5C3DB04();
        sub_1E5C9D030();
        (*(v194 + 8))(v137, v139);
        (*(v213 + 8))(v215, v224);

LABEL_34:

LABEL_35:
      }

      break;
    case 7u:
      v111 = *(v50 + 1);
      v220 = *v50;
      v221 = v111;
      v112 = *(v50 + 3);
      v222 = *(v50 + 2);
      v223 = v112;
      LOBYTE(v216) = 13;
      sub_1E5C3DBAC();
      v113 = v187;
      v114 = v224;
      v115 = v215;
      sub_1E5C9CFC0();
      v216 = v220;
      v217 = v221;
      v218 = v222;
      v219 = v223;
      sub_1E5C32CD8();
      v116 = v193;
      sub_1E5C9D030();
      (*(v190 + 8))(v113, v116);
      (*(v213 + 8))(v115, v114);
      return sub_1E5C2A1F0(&v220);
    case 8u:
      v123 = v196;
      sub_1E5C40724(v50, v196, type metadata accessor for SearchHint);
      LOBYTE(v220) = 14;
      sub_1E5C3DB58();
      v148 = v197;
      v57 = v224;
      v58 = v215;
      sub_1E5C9CFC0();
      sub_1E5C42774(&qword_1ED054490, type metadata accessor for SearchHint);
      v149 = v199;
      sub_1E5C9D030();
      (*(v198 + 8))(v148, v149);
      v126 = type metadata accessor for SearchHint;
LABEL_28:
      sub_1E5C4482C(v123, v126);
      goto LABEL_29;
    case 9u:
      v75 = *v50;
      v76 = *(v50 + 1);
      v78 = *(v50 + 2);
      v77 = *(v50 + 3);
      v79 = *(v50 + 4);
      LODWORD(v206) = v50[40];
      v80 = *(v50 + 7);
      v205 = *(v50 + 6);
      v208 = v80;
      v81 = *(v50 + 9);
      v204 = *(v50 + 8);
      v207 = v81;
      v82 = *(v50 + 11);
      v203 = *(v50 + 10);
      v212 = v82;
      LOBYTE(v220) = 15;
      sub_1E5C3DA5C();
      v83 = v209;
      v84 = v224;
      v85 = v215;
      sub_1E5C9CFC0();
      *&v220 = v75;
      *(&v220 + 1) = v76;
      *&v221 = v78;
      *(&v221 + 1) = v77;
      *&v222 = v79;
      LOBYTE(v216) = 0;
      sub_1E5C3DAB0();
      v86 = v211;
      v87 = v214;
      sub_1E5C9D030();

      if (v87)
      {
        (*(v210 + 8))(v83, v86);
        (*(v213 + 8))(v85, v84);
      }

      else
      {
        LOBYTE(v220) = v206;
        *(&v220 + 1) = v205;
        *&v221 = v208;
        *(&v221 + 1) = v204;
        *&v222 = v207;
        *(&v222 + 1) = v203;
        *&v223 = v212;
        LOBYTE(v216) = 1;
        sub_1E5C3DB04();
        sub_1E5C9D030();
        (*(v210 + 8))(v83, v86);
        (*(v213 + 8))(v215, v224);
      }

      goto LABEL_35;
    case 0xAu:
      v143 = *v50;
      v142 = *(v50 + 1);
      LOBYTE(v220) = 16;
      sub_1E5C3DA08();
      v144 = v201;
      v145 = v224;
      v146 = v215;
      sub_1E5C9CFC0();
      v147 = v205;
      sub_1E5C9D000();

      (*(v203 + 8))(v144, v147);
      return (*(v213 + 8))(v146, v145);
    case 0xBu:
      LOBYTE(v220) = 0;
      sub_1E5C3E044();
      v64 = v224;
      v65 = v215;
      sub_1E5C9CFC0();
      (*(v154 + 8))(v46, v43);
      return (*(v213 + 8))(v65, v64);
    case 0xCu:
      LOBYTE(v220) = 1;
      sub_1E5C3DFF0();
      v61 = v224;
      v62 = v215;
      sub_1E5C9CFC0();
      (*(v155 + 8))(v42, v156);
      goto LABEL_24;
    case 0xDu:
      LOBYTE(v220) = 2;
      sub_1E5C3DF9C();
      v127 = v157;
      v61 = v224;
      v62 = v215;
      sub_1E5C9CFC0();
      (*(v158 + 8))(v127, v159);
      goto LABEL_24;
    case 0xEu:
      LOBYTE(v220) = 4;
      sub_1E5C3DEF4();
      v63 = v162;
      v61 = v224;
      v62 = v215;
      sub_1E5C9CFC0();
      (*(v164 + 8))(v63, v165);
      goto LABEL_24;
    case 0xFu:
      LOBYTE(v220) = 5;
      sub_1E5C3DEA0();
      v94 = v166;
      v61 = v224;
      v62 = v215;
      sub_1E5C9CFC0();
      (*(v167 + 8))(v94, v168);
      goto LABEL_24;
    case 0x10u:
      LOBYTE(v220) = 12;
      sub_1E5C3DC00();
      v60 = v181;
      v61 = v224;
      v62 = v215;
      sub_1E5C9CFC0();
      (*(v184 + 8))(v60, v185);
      goto LABEL_24;
    case 0x11u:
      LOBYTE(v220) = 17;
      sub_1E5C3D9B4();
      v122 = v200;
      v61 = v224;
      v62 = v215;
      sub_1E5C9CFC0();
      (*(v202 + 8))(v122, v204);
      goto LABEL_24;
    case 0x12u:
      LOBYTE(v220) = 18;
      sub_1E5C3D960();
      v141 = v206;
      v61 = v224;
      v62 = v215;
      sub_1E5C9CFC0();
      (*(v207 + 8))(v141, v208);
LABEL_24:
      result = (*(v213 + 8))(v62, v61);
      break;
    default:
      v55 = *v50;
      LOBYTE(v220) = 3;
      sub_1E5C3DF48();
      v56 = v160;
      v57 = v224;
      v58 = v215;
      sub_1E5C9CFC0();
      v59 = v163;
      sub_1E5C9D010();
      (*(v161 + 8))(v56, v59);
LABEL_29:
      result = (*(v213 + 8))(v58, v57);
      break;
  }

  return result;
}

uint64_t type metadata accessor for SearchAction()
{
  result = qword_1EE2C43F0;
  if (!qword_1EE2C43F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E5C3D90C()
{
  result = qword_1ED054450;
  if (!qword_1ED054450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054450);
  }

  return result;
}

unint64_t sub_1E5C3D960()
{
  result = qword_1ED054458;
  if (!qword_1ED054458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054458);
  }

  return result;
}

unint64_t sub_1E5C3D9B4()
{
  result = qword_1ED054460;
  if (!qword_1ED054460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054460);
  }

  return result;
}

unint64_t sub_1E5C3DA08()
{
  result = qword_1ED054468;
  if (!qword_1ED054468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054468);
  }

  return result;
}

unint64_t sub_1E5C3DA5C()
{
  result = qword_1ED054470;
  if (!qword_1ED054470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054470);
  }

  return result;
}

unint64_t sub_1E5C3DAB0()
{
  result = qword_1ED054478;
  if (!qword_1ED054478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054478);
  }

  return result;
}

unint64_t sub_1E5C3DB04()
{
  result = qword_1ED054480;
  if (!qword_1ED054480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054480);
  }

  return result;
}

unint64_t sub_1E5C3DB58()
{
  result = qword_1ED054488;
  if (!qword_1ED054488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054488);
  }

  return result;
}

unint64_t sub_1E5C3DBAC()
{
  result = qword_1ED054498;
  if (!qword_1ED054498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054498);
  }

  return result;
}

unint64_t sub_1E5C3DC00()
{
  result = qword_1ED0544A0;
  if (!qword_1ED0544A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0544A0);
  }

  return result;
}

unint64_t sub_1E5C3DC54()
{
  result = qword_1ED0544A8;
  if (!qword_1ED0544A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0544A8);
  }

  return result;
}

unint64_t sub_1E5C3DCA8()
{
  result = qword_1ED0544B0;
  if (!qword_1ED0544B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0544B0);
  }

  return result;
}

unint64_t sub_1E5C3DCFC()
{
  result = qword_1ED0544B8;
  if (!qword_1ED0544B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0544B8);
  }

  return result;
}

unint64_t sub_1E5C3DD50()
{
  result = qword_1ED0544C0;
  if (!qword_1ED0544C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0544C0);
  }

  return result;
}

unint64_t sub_1E5C3DDA4()
{
  result = qword_1ED0544C8;
  if (!qword_1ED0544C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0544C8);
  }

  return result;
}

unint64_t sub_1E5C3DDF8()
{
  result = qword_1ED0544D0;
  if (!qword_1ED0544D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0544D0);
  }

  return result;
}

unint64_t sub_1E5C3DE4C()
{
  result = qword_1ED0544D8;
  if (!qword_1ED0544D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0544D8);
  }

  return result;
}

unint64_t sub_1E5C3DEA0()
{
  result = qword_1ED0544E0;
  if (!qword_1ED0544E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0544E0);
  }

  return result;
}

unint64_t sub_1E5C3DEF4()
{
  result = qword_1ED0544E8;
  if (!qword_1ED0544E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0544E8);
  }

  return result;
}

unint64_t sub_1E5C3DF48()
{
  result = qword_1ED0544F0;
  if (!qword_1ED0544F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0544F0);
  }

  return result;
}

unint64_t sub_1E5C3DF9C()
{
  result = qword_1ED0544F8;
  if (!qword_1ED0544F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0544F8);
  }

  return result;
}

unint64_t sub_1E5C3DFF0()
{
  result = qword_1ED054500;
  if (!qword_1ED054500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054500);
  }

  return result;
}

unint64_t sub_1E5C3E044()
{
  result = qword_1ED054508;
  if (!qword_1ED054508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054508);
  }

  return result;
}

uint64_t SearchAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v279 = a2;
  v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054510, &qword_1E5C9F958);
  v259 = *(v283 - 8);
  v3 = *(v259 + 64);
  MEMORY[0x1EEE9AC00](v283);
  v282 = &v213 - v4;
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054518, &qword_1E5C9F960);
  v256 = *(v258 - 8);
  v5 = *(v256 + 64);
  MEMORY[0x1EEE9AC00](v258);
  v277 = &v213 - v6;
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054520, &qword_1E5C9F968);
  v255 = *(v257 - 8);
  v7 = *(v255 + 64);
  MEMORY[0x1EEE9AC00](v257);
  v276 = &v213 - v8;
  v260 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054528, &qword_1E5C9F970);
  v261 = *(v260 - 8);
  v9 = *(v261 + 64);
  MEMORY[0x1EEE9AC00](v260);
  v278 = &v213 - v10;
  v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054530, &qword_1E5C9F978);
  v253 = *(v254 - 8);
  v11 = *(v253 + 64);
  MEMORY[0x1EEE9AC00](v254);
  v275 = &v213 - v12;
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054538, &qword_1E5C9F980);
  v249 = *(v251 - 8);
  v13 = *(v249 + 64);
  MEMORY[0x1EEE9AC00](v251);
  v273 = &v213 - v14;
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054540, &qword_1E5C9F988);
  v247 = *(v248 - 8);
  v15 = *(v247 + 64);
  MEMORY[0x1EEE9AC00](v248);
  v271 = &v213 - v16;
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054548, &qword_1E5C9F990);
  v226 = *(v252 - 8);
  v17 = *(v226 + 64);
  MEMORY[0x1EEE9AC00](v252);
  v274 = &v213 - v18;
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054550, &qword_1E5C9F998);
  v245 = *(v246 - 8);
  v19 = *(v245 + 64);
  MEMORY[0x1EEE9AC00](v246);
  v270 = &v213 - v20;
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054558, &qword_1E5C9F9A0);
  v224 = *(v244 - 8);
  v21 = *(v224 + 64);
  MEMORY[0x1EEE9AC00](v244);
  v269 = &v213 - v22;
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054560, &qword_1E5C9F9A8);
  v225 = *(v250 - 8);
  v23 = *(v225 + 64);
  MEMORY[0x1EEE9AC00](v250);
  v272 = &v213 - v24;
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054568, &qword_1E5C9F9B0);
  v241 = *(v243 - 8);
  v25 = *(v241 + 64);
  MEMORY[0x1EEE9AC00](v243);
  v268 = &v213 - v26;
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054570, &qword_1E5C9F9B8);
  v240 = *(v242 - 8);
  v27 = *(v240 + 64);
  MEMORY[0x1EEE9AC00](v242);
  v267 = &v213 - v28;
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054578, &qword_1E5C9F9C0);
  v238 = *(v239 - 8);
  v29 = *(v238 + 64);
  MEMORY[0x1EEE9AC00](v239);
  v266 = &v213 - v30;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054580, &qword_1E5C9F9C8);
  v236 = *(v237 - 8);
  v31 = *(v236 + 64);
  MEMORY[0x1EEE9AC00](v237);
  v265 = &v213 - v32;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054588, &qword_1E5C9F9D0);
  v235 = *(v232 - 8);
  v33 = *(v235 + 64);
  MEMORY[0x1EEE9AC00](v232);
  v281 = &v213 - v34;
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054590, &qword_1E5C9F9D8);
  v233 = *(v234 - 8);
  v35 = *(v233 + 64);
  MEMORY[0x1EEE9AC00](v234);
  v264 = &v213 - v36;
  v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054598, &qword_1E5C9F9E0);
  v231 = *(v280 - 8);
  v37 = *(v231 + 64);
  MEMORY[0x1EEE9AC00](v280);
  v263 = &v213 - v38;
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0545A0, &qword_1E5C9F9E8);
  v229 = *(v230 - 8);
  v39 = *(v229 + 64);
  MEMORY[0x1EEE9AC00](v230);
  v262 = &v213 - v40;
  v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0545A8, &unk_1E5C9F9F0);
  v285 = *(v287 - 8);
  v41 = *(v285 + 64);
  MEMORY[0x1EEE9AC00](v287);
  v43 = &v213 - v42;
  v284 = type metadata accessor for SearchAction();
  v44 = *(*(v284 - 8) + 64);
  v45 = MEMORY[0x1EEE9AC00](v284);
  v223 = (&v213 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = MEMORY[0x1EEE9AC00](v45);
  v221 = (&v213 - v48);
  v49 = MEMORY[0x1EEE9AC00](v47);
  v228 = &v213 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v222 = (&v213 - v52);
  v53 = MEMORY[0x1EEE9AC00](v51);
  v220 = (&v213 - v54);
  v55 = MEMORY[0x1EEE9AC00](v53);
  v227 = &v213 - v56;
  v57 = MEMORY[0x1EEE9AC00](v55);
  v219 = (&v213 - v58);
  v59 = MEMORY[0x1EEE9AC00](v57);
  v61 = &v213 - v60;
  v62 = MEMORY[0x1EEE9AC00](v59);
  v64 = (&v213 - v63);
  v65 = MEMORY[0x1EEE9AC00](v62);
  v67 = &v213 - v66;
  v68 = MEMORY[0x1EEE9AC00](v65);
  v70 = &v213 - v69;
  MEMORY[0x1EEE9AC00](v68);
  v72 = &v213 - v71;
  v73 = a1[3];
  v74 = a1[4];
  v288 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v73);
  sub_1E5C3D90C();
  v286 = v43;
  v75 = v302;
  sub_1E5C9D120();
  if (v75)
  {
LABEL_46:
    v157 = v288;
    return __swift_destroy_boxed_opaque_existential_1(v157);
  }

  v215 = v70;
  v216 = v64;
  v217 = v67;
  v76 = v280;
  v214 = v61;
  v77 = v281;
  v78 = v282;
  v302 = 0;
  v79 = v283;
  v218 = v72;
  v80 = v287;
  v81 = v286;
  v82 = sub_1E5C9CFB0();
  if (*(v82 + 16) != 1 || (v83 = *(v82 + 32), v83 == 19))
  {
    v87 = sub_1E5C9CE90();
    swift_allocError();
    v88 = v81;
    v90 = v89;
    v91 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0543A8, &unk_1E5C9F850) + 48);
    *v90 = v284;
    sub_1E5C9CF30();
    sub_1E5C9CE80();
    (*(*(v87 - 8) + 104))(v90, *MEMORY[0x1E69E6AF8], v87);
    swift_willThrow();
    (*(v285 + 8))(v88, v80);
LABEL_45:
    swift_unknownObjectRelease();
    goto LABEL_46;
  }

  v213 = v82;
  switch(v83)
  {
    case 1:
      v300[0] = 1;
      sub_1E5C3DFF0();
      v134 = v263;
      v135 = v302;
      sub_1E5C9CF20();
      if (v135)
      {
        goto LABEL_44;
      }

      (*(v231 + 8))(v134, v76);
      (*(v285 + 8))(v81, v80);
      swift_unknownObjectRelease();
      v86 = v218;
      goto LABEL_40;
    case 2:
      v300[0] = 2;
      sub_1E5C3DF9C();
      v118 = v264;
      v119 = v302;
      sub_1E5C9CF20();
      if (v119)
      {
        goto LABEL_44;
      }

      (*(v233 + 8))(v118, v234);
      (*(v285 + 8))(v81, v80);
      swift_unknownObjectRelease();
      v86 = v218;
      goto LABEL_40;
    case 3:
      v300[0] = 3;
      sub_1E5C3DF48();
      v124 = v302;
      sub_1E5C9CF20();
      if (v124)
      {
        goto LABEL_44;
      }

      v125 = v232;
      v126 = sub_1E5C9CF80();
      v127 = v285;
      (*(v235 + 8))(v77, v125);
      (*(v127 + 8))(v81, v287);
      swift_unknownObjectRelease();
      v178 = v215;
      *v215 = v126 & 1;
      goto LABEL_50;
    case 4:
      v300[0] = 4;
      sub_1E5C3DEF4();
      v109 = v265;
      v110 = v302;
      sub_1E5C9CF20();
      if (v110)
      {
        goto LABEL_44;
      }

      (*(v236 + 8))(v109, v237);
      (*(v285 + 8))(v81, v80);
      swift_unknownObjectRelease();
      v86 = v218;
      goto LABEL_40;
    case 5:
      v300[0] = 5;
      sub_1E5C3DEA0();
      v138 = v266;
      v139 = v302;
      sub_1E5C9CF20();
      if (v139)
      {
        goto LABEL_44;
      }

      (*(v238 + 8))(v138, v239);
      (*(v285 + 8))(v81, v80);
      swift_unknownObjectRelease();
      v86 = v218;
      goto LABEL_40;
    case 6:
      v300[0] = 6;
      sub_1E5C3DE4C();
      v144 = v267;
      v145 = v302;
      sub_1E5C9CF20();
      if (v145)
      {
        goto LABEL_44;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0540A0, &qword_1E5C9F950);
      sub_1E5C40888(&qword_1ED0540F8, &qword_1ED054100);
      v146 = v242;
      sub_1E5C9CFA0();
      (*(v240 + 8))(v144, v146);
      (*(v285 + 8))(v81, v80);
      swift_unknownObjectRelease();
      v178 = v217;
      *v217 = *v300;
      goto LABEL_50;
    case 7:
      v300[0] = 7;
      sub_1E5C3DDF8();
      v128 = v268;
      v129 = v302;
      sub_1E5C9CF20();
      if (v129)
      {
        goto LABEL_44;
      }

      v130 = v243;
      v131 = sub_1E5C9CF70();
      v132 = v128;
      v133 = v285;
      v180 = v179;
      (*(v241 + 8))(v132, v130);
      (*(v133 + 8))(v81, v80);
      swift_unknownObjectRelease();
      v162 = v216;
      *v216 = v131;
      v162[1] = v180;
      goto LABEL_49;
    case 8:
      v300[0] = 8;
      sub_1E5C3DDA4();
      v155 = v272;
      v156 = v302;
      sub_1E5C9CF20();
      if (v156)
      {
        goto LABEL_44;
      }

      LOBYTE(v295) = 0;
      sub_1E5C40834();
      v159 = v250;
      sub_1E5C9CFA0();
      v184 = *&v300[8];
      v302 = *v300;
      v185 = v155;
      v186 = *&v300[16];
      v188 = *v301;
      v187 = *&v301[8];
      v189 = *&v301[16];
      LOBYTE(v295) = 1;
      sub_1E5C4078C();
      sub_1E5C9CFA0();
      v277 = v187;
      v280 = v188;
      v281 = v186;
      v282 = v184;
      v283 = v189;
      v278 = *(&v186 + 1);
      v203 = v290;
      v204 = v291;
      v205 = v292;
      v206 = v293;
      v207 = v294;
      v289 = 2;
      sub_1E5C407E0();
      sub_1E5C9CFA0();
      (*(v225 + 8))(v185, v159);
      (*(v285 + 8))(v286, v287);
      swift_unknownObjectRelease();
      v208 = v295;
      v209 = v296;
      v210 = v297;
      v211 = v298;
      v194 = v214;
      *v214 = v302;
      v194[1] = v282;
      v194[2] = v281;
      v194[3] = v278;
      v194[4] = v280;
      v194[5] = v277;
      v194[6] = v283;
      v194[7] = v203;
      v194[8] = v204;
      v194[9] = v205;
      v194[10] = v206;
      v194[11] = v207;
      *(v194 + 96) = v208;
      *(v194 + 13) = v209;
      v194[15] = v210;
      v194[16] = v211;
      *(v194 + 17) = v299;
      goto LABEL_52;
    case 9:
      v300[0] = 9;
      sub_1E5C3DD50();
      v113 = v269;
      v114 = v302;
      sub_1E5C9CF20();
      if (v114)
      {
        goto LABEL_44;
      }

      v300[0] = 0;
      v115 = v244;
      v116 = sub_1E5C9CF70();
      v117 = v285;
      v168 = v113;
      v169 = v81;
      v170 = v80;
      v171 = v115;
      v172 = v116;
      v174 = v173;
      LOBYTE(v295) = 1;
      sub_1E5C36DE4();
      sub_1E5C9CFA0();
      (*(v224 + 8))(v168, v171);
      (*(v117 + 8))(v169, v170);
      swift_unknownObjectRelease();
      v197 = v300[0];
      v194 = v219;
      *v219 = v172;
      v194[1] = v174;
      *(v194 + 16) = v197;
      goto LABEL_52;
    case 10:
      v300[0] = 10;
      sub_1E5C3DCFC();
      v148 = v270;
      v149 = v302;
      sub_1E5C9CF20();
      if (v149)
      {
        goto LABEL_44;
      }

      v150 = v81;
      v151 = v80;
      type metadata accessor for SearchHistoryItem();
      sub_1E5C42774(&qword_1ED054100, type metadata accessor for SearchHistoryItem);
      v102 = v227;
      v152 = v246;
      sub_1E5C9CFA0();
      v153 = v148;
      v154 = v285;
      (*(v245 + 8))(v153, v152);
      (*(v154 + 8))(v150, v151);
      swift_unknownObjectRelease();
      goto LABEL_51;
    case 11:
      v300[0] = 11;
      sub_1E5C3DC54();
      v106 = v274;
      v107 = v302;
      sub_1E5C9CF20();
      if (v107)
      {
        goto LABEL_44;
      }

      LOBYTE(v295) = 0;
      sub_1E5C40834();
      v108 = v252;
      sub_1E5C9CFA0();
      v163 = *v300;
      v164 = v106;
      v302 = *&v300[24];
      v165 = *&v300[16];
      v166 = *v301;
      v283 = *&v301[8];
      v167 = *&v301[16];
      LOBYTE(v290) = 1;
      sub_1E5C407E0();
      sub_1E5C9CFA0();
      (*(v226 + 8))(v164, v108);
      (*(v285 + 8))(v286, v80);
      swift_unknownObjectRelease();
      v190 = v295;
      v191 = v296;
      v192 = v297;
      v193 = v298;
      v194 = v220;
      *v220 = v163;
      v195 = v302;
      v194[2] = v165;
      v194[3] = v195;
      v196 = v283;
      v194[4] = v166;
      v194[5] = v196;
      v194[6] = v167;
      *(v194 + 56) = v190;
      *(v194 + 4) = v191;
      v194[10] = v192;
      v194[11] = v193;
      *(v194 + 6) = v299;
      goto LABEL_52;
    case 12:
      v300[0] = 12;
      sub_1E5C3DC00();
      v111 = v271;
      v112 = v302;
      sub_1E5C9CF20();
      if (v112)
      {
        goto LABEL_44;
      }

      (*(v247 + 8))(v111, v248);
      (*(v285 + 8))(v81, v80);
      swift_unknownObjectRelease();
      v86 = v218;
      goto LABEL_40;
    case 13:
      v300[0] = 13;
      sub_1E5C3DBAC();
      v140 = v273;
      v141 = v302;
      sub_1E5C9CF20();
      if (v141)
      {
        goto LABEL_44;
      }

      sub_1E5C3376C();
      v142 = v251;
      sub_1E5C9CFA0();
      v143 = (v285 + 8);
      (*(v249 + 8))(v140, v142);
      (*v143)(v81, v80);
      swift_unknownObjectRelease();
      v182 = *&v300[16];
      v178 = v222;
      *v222 = *v300;
      v178[1] = v182;
      v183 = *&v301[16];
      v178[2] = *v301;
      v178[3] = v183;
LABEL_50:
      swift_storeEnumTagMultiPayload();
      v181 = v178;
      goto LABEL_53;
    case 14:
      v300[0] = 14;
      sub_1E5C3DB58();
      v98 = v275;
      v99 = v302;
      sub_1E5C9CF20();
      if (v99)
      {
        goto LABEL_44;
      }

      v100 = v81;
      v101 = v80;
      type metadata accessor for SearchHint();
      sub_1E5C42774(&qword_1ED0545C0, type metadata accessor for SearchHint);
      v102 = v228;
      v103 = v254;
      sub_1E5C9CFA0();
      v104 = v98;
      v105 = v285;
      (*(v253 + 8))(v104, v103);
      (*(v105 + 8))(v100, v101);
      swift_unknownObjectRelease();
LABEL_51:
      swift_storeEnumTagMultiPayload();
      v181 = v102;
      goto LABEL_53;
    case 15:
      v300[0] = 15;
      sub_1E5C3DA5C();
      v120 = v278;
      v121 = v302;
      sub_1E5C9CF20();
      if (v121)
      {
        goto LABEL_44;
      }

      v300[0] = 0;
      sub_1E5C4078C();
      v122 = v260;
      sub_1E5C9CFA0();
      v123 = v285;
      v175 = v295;
      v176 = v296;
      v302 = v297;
      v177 = v298;
      LOBYTE(v290) = 1;
      sub_1E5C407E0();
      sub_1E5C9CFA0();
      (*(v261 + 8))(v120, v122);
      (*(v123 + 8))(v286, v287);
      swift_unknownObjectRelease();
      v198 = v300[0];
      v199 = *&v300[8];
      v200 = *&v300[24];
      v201 = *v301;
      v194 = v221;
      *v221 = v175;
      v194[1] = v176;
      v202 = v302;
      v194[2] = *(&v176 + 1);
      v194[3] = v202;
      v194[4] = v177;
      *(v194 + 40) = v198;
      *(v194 + 3) = v199;
      v194[8] = v200;
      v194[9] = v201;
      *(v194 + 5) = *&v301[8];
LABEL_52:
      swift_storeEnumTagMultiPayload();
      v181 = v194;
      goto LABEL_53;
    case 16:
      v300[0] = 16;
      sub_1E5C3DA08();
      v92 = v276;
      v93 = v302;
      sub_1E5C9CF20();
      if (v93)
      {
        goto LABEL_44;
      }

      v94 = v257;
      v95 = sub_1E5C9CF70();
      v96 = v92;
      v97 = v285;
      v161 = v160;
      (*(v255 + 8))(v96, v94);
      (*(v97 + 8))(v81, v80);
      swift_unknownObjectRelease();
      v162 = v223;
      *v223 = v95;
      v162[1] = v161;
LABEL_49:
      swift_storeEnumTagMultiPayload();
      v181 = v162;
LABEL_53:
      v86 = v218;
      sub_1E5C40724(v181, v218, type metadata accessor for SearchAction);
      goto LABEL_54;
    case 17:
      v300[0] = 17;
      sub_1E5C3D9B4();
      v136 = v277;
      v137 = v302;
      sub_1E5C9CF20();
      if (v137)
      {
        goto LABEL_44;
      }

      (*(v256 + 8))(v136, v258);
      (*(v285 + 8))(v81, v80);
      swift_unknownObjectRelease();
      v86 = v218;
      goto LABEL_40;
    case 18:
      v300[0] = 18;
      sub_1E5C3D960();
      v147 = v302;
      sub_1E5C9CF20();
      if (v147)
      {
        goto LABEL_44;
      }

      (*(v259 + 8))(v78, v79);
      (*(v285 + 8))(v81, v80);
      swift_unknownObjectRelease();
      v86 = v218;
      goto LABEL_40;
    default:
      v300[0] = 0;
      sub_1E5C3E044();
      v84 = v262;
      v85 = v302;
      sub_1E5C9CF20();
      if (v85)
      {
LABEL_44:
        (*(v285 + 8))(v81, v80);
        goto LABEL_45;
      }

      (*(v229 + 8))(v84, v230);
      (*(v285 + 8))(v81, v80);
      swift_unknownObjectRelease();
      v86 = v218;
LABEL_40:
      swift_storeEnumTagMultiPayload();
LABEL_54:
      v212 = v288;
      sub_1E5C40724(v86, v279, type metadata accessor for SearchAction);
      v157 = v212;
      break;
  }

  return __swift_destroy_boxed_opaque_existential_1(v157);
}

uint64_t sub_1E5C40724(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E5C4078C()
{
  result = qword_1ED0545B0;
  if (!qword_1ED0545B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0545B0);
  }

  return result;
}

unint64_t sub_1E5C407E0()
{
  result = qword_1ED0545B8;
  if (!qword_1ED0545B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0545B8);
  }

  return result;
}

unint64_t sub_1E5C40834()
{
  result = qword_1ED0545C8;
  if (!qword_1ED0545C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0545C8);
  }

  return result;
}

uint64_t sub_1E5C40888(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0540A0, &qword_1E5C9F950);
    sub_1E5C42774(a2, type metadata accessor for SearchHistoryItem);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t SearchAction.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SearchHint();
  v5 = *(*(v4 - 1) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SearchHistoryItem();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = (v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v15 = (v94 - v14);
  v16 = type metadata accessor for SearchAction();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5C426C4(v2, v19, type metadata accessor for SearchAction);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v61 = *v19;
      MEMORY[0x1E69399F0](6);
      MEMORY[0x1E69399F0](*(v61 + 16));
      v62 = *(v61 + 16);
      if (v62)
      {
        v63 = *(v8 + 20);
        v64 = v61 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
        v65 = *(v9 + 72);
        do
        {
          sub_1E5C426C4(v64, v15, type metadata accessor for SearchHistoryItem);
          v66 = *v15;
          v67 = v15[1];
          sub_1E5C9CC60();
          sub_1E5C9BB60();
          sub_1E5C42774(&qword_1ED054130, MEMORY[0x1E6969530]);
          sub_1E5C9CBB0();
          sub_1E5C4482C(v15, type metadata accessor for SearchHistoryItem);
          v64 += v65;
          --v62;
        }

        while (v62);
      }

    case 2u:
      v36 = *v19;
      v37 = *(v19 + 1);
      v38 = 7;
      goto LABEL_28;
    case 3u:
      v40 = *v19;
      v39 = *(v19 + 1);
      v41 = *(v19 + 2);
      v42 = *(v19 + 3);
      v43 = *(v19 + 4);
      v45 = *(v19 + 6);
      v44 = *(v19 + 7);
      v94[1] = *(v19 + 5);
      v94[2] = v44;
      v47 = *(v19 + 8);
      v46 = *(v19 + 9);
      v48 = *(v19 + 10);
      v94[5] = *(v19 + 11);
      v95 = v46;
      v49 = v19[96];
      v50 = *(v19 + 14);
      v51 = *(v19 + 15);
      v96 = *(v19 + 13);
      v97 = v51;
      v52 = *(v19 + 17);
      v99 = *(v19 + 16);
      v100 = v50;
      v94[3] = v52;
      v94[4] = v48;
      v98 = *(v19 + 18);
      MEMORY[0x1E69399F0](8);
      sub_1E5C9D0F0();
      if (v39)
      {
        sub_1E5C9CC60();
      }

      sub_1E5C2A580(a1, v41);
      sub_1E5C9CC60();
      sub_1E5C9D0F0();
      if (v45)
      {
        sub_1E5C9CC60();
      }

      sub_1E5C9D0F0();
      if (v47)
      {
        sub_1E5C9CC60();
      }

      sub_1E5C2AB00(a1, v95);
      sub_1E5C9CC60();

      sub_1E5C9CC60();

      sub_1E5C9CC60();
      sub_1E5C9CC60();
      if (v98)
      {
        goto LABEL_43;
      }

      goto LABEL_44;
    case 4u:
      v23 = *v19;
      v24 = *(v19 + 1);
      v25 = v19[16];
      MEMORY[0x1E69399F0](9);
      sub_1E5C9CC60();

      sub_1E5C9CC60();

    case 5u:
      sub_1E5C40724(v19, v13, type metadata accessor for SearchHistoryItem);
      MEMORY[0x1E69399F0](10);
      v68 = *v13;
      v69 = v13[1];
      sub_1E5C9CC60();
      v70 = *(v8 + 20);
      sub_1E5C9BB60();
      sub_1E5C42774(&qword_1ED054130, MEMORY[0x1E6969530]);
      sub_1E5C9CBB0();
      return sub_1E5C4482C(v13, type metadata accessor for SearchHistoryItem);
    case 6u:
      v71 = *v19;
      v72 = *(v19 + 1);
      v74 = *(v19 + 2);
      v73 = *(v19 + 3);
      v76 = *(v19 + 4);
      v75 = *(v19 + 5);
      v77 = *(v19 + 6);
      v78 = v19[56];
      v79 = *(v19 + 9);
      v80 = *(v19 + 10);
      v81 = *(v19 + 11);
      v97 = *(v19 + 8);
      v98 = v80;
      v83 = *(v19 + 12);
      v82 = *(v19 + 13);
      v95 = v75;
      v96 = v83;
      v99 = v82;
      v100 = v79;
      MEMORY[0x1E69399F0](11);
      sub_1E5C9D0F0();
      if (v72)
      {
        sub_1E5C9CC60();
      }

      sub_1E5C2A580(a1, v74);
      sub_1E5C9CC60();
      sub_1E5C9D0F0();
      if (v77)
      {
        sub_1E5C9CC60();
      }

      sub_1E5C9CC60();

      sub_1E5C9CC60();
      sub_1E5C9CC60();
      if (v99)
      {
        goto LABEL_43;
      }

      goto LABEL_44;
    case 7u:
      v54 = *v19;
      v53 = *(v19 + 1);
      v56 = *(v19 + 2);
      v55 = *(v19 + 3);
      v58 = *(v19 + 4);
      v57 = *(v19 + 5);
      v59 = *(v19 + 6);
      v60 = *(v19 + 7);
      MEMORY[0x1E69399F0](13);
      sub_1E5C9D0F0();
      if (v53)
      {
        sub_1E5C9CC60();
      }

      sub_1E5C9CC60();
      MEMORY[0x1E69399F0](v58);
      sub_1E5C9CC60();
      sub_1E5C2A6D0(a1, v60);

    case 8u:
      sub_1E5C40724(v19, v7, type metadata accessor for SearchHint);
      MEMORY[0x1E69399F0](14);
      sub_1E5C9BBA0();
      sub_1E5C42774(&qword_1ED053F58, MEMORY[0x1E69695A8]);
      sub_1E5C9CBB0();
      v86 = &v7[v4[5]];
      if (*(v86 + 1))
      {
        v87 = *v86;
        sub_1E5C9D0F0();
        sub_1E5C9CC60();
      }

      else
      {
        sub_1E5C9D0F0();
      }

      v88 = &v7[v4[6]];
      v89 = *v88;
      v90 = *(v88 + 1);
      sub_1E5C9CC60();
      MEMORY[0x1E69399F0](*&v7[v4[7]]);
      v91 = &v7[v4[8]];
      v92 = *v91;
      v93 = *(v91 + 1);
      sub_1E5C9CC60();
      return sub_1E5C4482C(v7, type metadata accessor for SearchHint);
    case 9u:
      v26 = *v19;
      v27 = *(v19 + 1);
      v29 = *(v19 + 2);
      v28 = *(v19 + 3);
      v30 = *(v19 + 4);
      v31 = v19[40];
      v32 = *(v19 + 6);
      v100 = *(v19 + 7);
      v33 = *(v19 + 8);
      v34 = *(v19 + 9);
      v98 = v32;
      v99 = v33;
      v35 = *(v19 + 11);
      v97 = *(v19 + 10);
      MEMORY[0x1E69399F0](15);
      sub_1E5C9D0F0();
      if (v27)
      {
        sub_1E5C9CC60();
      }

      sub_1E5C2AB00(a1, v29);
      sub_1E5C9CC60();

      sub_1E5C9CC60();

      sub_1E5C9CC60();
      sub_1E5C9CC60();
      if (v35)
      {
LABEL_43:
        sub_1E5C9D0F0();
        sub_1E5C9CC60();
      }

      else
      {
LABEL_44:
        sub_1E5C9D0F0();
      }

    case 0xAu:
      v84 = *v19;
      v85 = *(v19 + 1);
      v38 = 16;
LABEL_28:
      MEMORY[0x1E69399F0](v38);
      sub_1E5C9CC60();

    case 0xBu:
      v22 = 0;
      goto LABEL_26;
    case 0xCu:
      v22 = 1;
      goto LABEL_26;
    case 0xDu:
      v22 = 2;
      goto LABEL_26;
    case 0xEu:
      v22 = 4;
      goto LABEL_26;
    case 0xFu:
      v22 = 5;
      goto LABEL_26;
    case 0x10u:
      v22 = 12;
      goto LABEL_26;
    case 0x11u:
      v22 = 17;
      goto LABEL_26;
    case 0x12u:
      v22 = 18;
LABEL_26:
      result = MEMORY[0x1E69399F0](v22);
      break;
    default:
      v20 = *v19;
      MEMORY[0x1E69399F0](3);
      result = sub_1E5C9D0F0();
      break;
  }

  return result;
}

uint64_t SearchAction.hashValue.getter()
{
  sub_1E5C9D0D0();
  SearchAction.hash(into:)(v1);
  return sub_1E5C9D110();
}

uint64_t sub_1E5C41540()
{
  sub_1E5C9D0D0();
  SearchAction.hash(into:)(v1);
  return sub_1E5C9D110();
}

uint64_t sub_1E5C41584()
{
  sub_1E5C9D0D0();
  SearchAction.hash(into:)(v1);
  return sub_1E5C9D110();
}

uint64_t _s13FitnessSearch0B6ActionO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t *a2)
{
  v188 = a1;
  v189 = a2;
  v2 = type metadata accessor for SearchHint();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v180 = &v160 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = type metadata accessor for SearchHistoryItem();
  v5 = *(*(v179 - 8) + 64);
  MEMORY[0x1EEE9AC00](v179);
  v181 = (&v160 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for SearchAction();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v183 = (&v160 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x1EEE9AC00](v9);
  v184 = &v160 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v185 = &v160 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v186 = (&v160 - v16);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v182 = &v160 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v187 = (&v160 - v20);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v160 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v160 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = (&v160 - v28);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = (&v160 - v31);
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v160 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054778, &unk_1E5CA0EF0);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x1EEE9AC00](v35 - 8);
  v39 = &v160 - v38;
  v40 = (&v160 + *(v37 + 56) - v38);
  sub_1E5C426C4(v188, &v160 - v38, type metadata accessor for SearchAction);
  v41 = v189;
  v189 = v40;
  sub_1E5C426C4(v41, v40, type metadata accessor for SearchAction);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1E5C426C4(v39, v32, type metadata accessor for SearchAction);
      v119 = *v32;
      v120 = v189;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_60;
      }

      v44 = sub_1E5C76580(v119, *v120);

      goto LABEL_78;
    case 2u:
      sub_1E5C426C4(v39, v29, type metadata accessor for SearchAction);
      v76 = *v29;
      v75 = v29[1];
      v77 = v189;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_60;
      }

      goto LABEL_51;
    case 3u:
      v188 = v39;
      sub_1E5C426C4(v39, v26, type metadata accessor for SearchAction);
      v78 = *(v26 + 1);
      v185 = *(v26 + 2);
      v186 = v78;
      v79 = *(v26 + 4);
      v80 = *(v26 + 7);
      v187 = *(v26 + 6);
      v183 = v80;
      v184 = v79;
      v82 = *(v26 + 8);
      v81 = *(v26 + 9);
      v83 = *(v26 + 11);
      v182 = *(v26 + 10);
      LODWORD(v181) = v26[96];
      v84 = *(v26 + 13);
      v85 = *(v26 + 14);
      v86 = *(v26 + 16);
      v179 = *(v26 + 15);
      v180 = v84;
      v87 = *(v26 + 18);
      v178 = *(v26 + 17);
      v88 = v189;
      if (swift_getEnumCaseMultiPayload() != 3)
      {

        goto LABEL_68;
      }

      v173 = v81;
      v174 = v86;
      v175 = v85;
      v176 = v82;
      v177 = v87;
      v89 = *(v26 + 5);
      v90 = *(v26 + 3);
      v91 = *v26;
      v92 = *v88;
      v93 = v88[1];
      v95 = v88[2];
      v94 = v88[3];
      v97 = v88[4];
      v96 = v88[5];
      v99 = v88[6];
      v98 = v88[7];
      v100 = v88[8];
      v171 = v83;
      v172 = v100;
      v168 = v88[9];
      v165 = v88[10];
      v166 = v98;
      v101 = v88[11];
      v164 = *(v88 + 96);
      v163 = v88[13];
      v169 = v88[14];
      v170 = v101;
      v102 = v88[15];
      v167 = v88[16];
      v161 = v88[17];
      v162 = v102;
      v189 = v88[18];
      *&v196 = v91;
      *(&v196 + 1) = v186;
      *&v197 = v185;
      *(&v197 + 1) = v90;
      *&v198 = v184;
      *(&v198 + 1) = v89;
      *&v199 = v187;
      *&v192 = v92;
      *(&v192 + 1) = v93;
      *&v193 = v95;
      *(&v193 + 1) = v94;
      *&v194 = v97;
      *(&v194 + 1) = v96;
      *&v195 = v99;
      v103 = static SearchResult.== infix(_:_:)(&v196, &v192);

      if ((v103 & 1) == 0)
      {

        goto LABEL_82;
      }

      v104 = v169;
      *&v196 = v183;
      *(&v196 + 1) = v176;
      *&v197 = v173;
      *(&v197 + 1) = v182;
      *&v198 = v171;
      v105 = v167;
      *&v192 = v166;
      *(&v192 + 1) = v172;
      *&v193 = v168;
      *(&v193 + 1) = v165;
      *&v194 = v170;
      v106 = _s13FitnessSearch0B11HintsResultV2eeoiySbAC_ACtFZ_0(&v196, &v192);

      v107 = v188;
      if (v106)
      {
        LOBYTE(v196) = v181;
        *(&v196 + 1) = v180;
        *&v197 = v175;
        *(&v197 + 1) = v179;
        *&v198 = v174;
        *(&v198 + 1) = v178;
        *&v199 = v177;
        LOBYTE(v192) = v164;
        *(&v192 + 1) = v163;
        *&v193 = v104;
        *(&v193 + 1) = v162;
        *&v194 = v105;
        *(&v194 + 1) = v161;
        *&v195 = v189;
        v44 = _s13FitnessSearch0B7SessionV2eeoiySbAC_ACtFZ_0(&v196, &v192);

        sub_1E5C4482C(v107, type metadata accessor for SearchAction);
        return v44 & 1;
      }

      sub_1E5C4482C(v107, type metadata accessor for SearchAction);
      goto LABEL_72;
    case 4u:
      sub_1E5C426C4(v39, v23, type metadata accessor for SearchAction);
      v46 = *v23;
      v45 = *(v23 + 1);
      v47 = v23[16];
      v48 = v189;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_60;
      }

      v49 = *v48;
      v50 = v48[1];
      v51 = *(v48 + 16);
      if (v46 == v49 && v45 == v50)
      {
      }

      else
      {
        v53 = sub_1E5C9D060();

        if ((v53 & 1) == 0)
        {
          goto LABEL_75;
        }
      }

      v44 = sub_1E5C76194(v47, v51);
      goto LABEL_78;
    case 5u:
      v121 = v187;
      sub_1E5C426C4(v39, v187, type metadata accessor for SearchAction);
      v122 = v189;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        v157 = type metadata accessor for SearchHistoryItem;
        v158 = v121;
        goto LABEL_70;
      }

      v123 = v181;
      sub_1E5C40724(v122, v181, type metadata accessor for SearchHistoryItem);
      if (*v121 == *v123 && v121[1] == v123[1] || (sub_1E5C9D060() & 1) != 0)
      {
        v124 = *(v179 + 20);
        if (sub_1E5C9BB50())
        {
          sub_1E5C4482C(v123, type metadata accessor for SearchHistoryItem);
          sub_1E5C4482C(v121, type metadata accessor for SearchHistoryItem);
          goto LABEL_65;
        }
      }

      sub_1E5C4482C(v123, type metadata accessor for SearchHistoryItem);
      sub_1E5C4482C(v121, type metadata accessor for SearchHistoryItem);
      goto LABEL_75;
    case 6u:
      v188 = v39;
      v125 = v182;
      sub_1E5C426C4(v39, v182, type metadata accessor for SearchAction);
      v127 = *(v125 + 8);
      v126 = *(v125 + 16);
      v128 = *(v125 + 32);
      v129 = *(v125 + 48);
      LODWORD(v187) = *(v125 + 56);
      v130 = *(v125 + 64);
      v131 = *(v125 + 72);
      v132 = *(v125 + 88);
      v185 = *(v125 + 80);
      v186 = v130;
      v133 = *(v125 + 104);
      v184 = *(v125 + 96);
      v134 = v189;
      if (swift_getEnumCaseMultiPayload() != 6)
      {

        goto LABEL_68;
      }

      v180 = v132;
      v181 = v131;
      v183 = v133;
      v135 = *(v125 + 40);
      v136 = *(v125 + 24);
      v137 = *v125;
      v138 = *v134;
      v139 = v134[1];
      v140 = v134;
      v142 = v134[2];
      v141 = v134[3];
      v143 = v134[4];
      v144 = v140[5];
      v145 = v140[6];
      LODWORD(v178) = *(v140 + 56);
      v177 = v140[8];
      v182 = v140[9];
      v176 = v140[10];
      v179 = v140[11];
      v147 = v140[12];
      v146 = v140[13];
      v175 = v147;
      v189 = v146;
      *&v196 = v137;
      *(&v196 + 1) = v127;
      *&v197 = v126;
      *(&v197 + 1) = v136;
      *&v198 = v128;
      *(&v198 + 1) = v135;
      *&v199 = v129;
      *&v192 = v138;
      *(&v192 + 1) = v139;
      *&v193 = v142;
      *(&v193 + 1) = v141;
      *&v194 = v143;
      *(&v194 + 1) = v144;
      *&v195 = v145;
      v148 = static SearchResult.== infix(_:_:)(&v196, &v192);

      if ((v148 & 1) == 0)
      {
        goto LABEL_81;
      }

      LOBYTE(v196) = v187;
      *(&v196 + 1) = v186;
      *&v197 = v181;
      *(&v197 + 1) = v185;
      *&v198 = v180;
      *(&v198 + 1) = v184;
      *&v199 = v183;
      LOBYTE(v192) = v178;
      *(&v192 + 1) = v177;
      *&v193 = v182;
      *(&v193 + 1) = v176;
      *&v194 = v179;
      *(&v194 + 1) = v175;
      *&v195 = v189;
      v44 = _s13FitnessSearch0B7SessionV2eeoiySbAC_ACtFZ_0(&v196, &v192);

      goto LABEL_47;
    case 7u:
      v108 = v186;
      sub_1E5C426C4(v39, v186, type metadata accessor for SearchAction);
      v109 = v108[1];
      v196 = *v108;
      v197 = v109;
      v110 = v108[3];
      v198 = v108[2];
      v199 = v110;
      v111 = v189;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v112 = *(v111 + 1);
        v192 = *v111;
        v193 = v112;
        v113 = *(v111 + 3);
        v115 = *v111;
        v114 = *(v111 + 1);
        v194 = *(v111 + 2);
        v195 = v113;
        v116 = v108[1];
        v191[0] = *v108;
        v191[1] = v116;
        v117 = v108[3];
        v191[2] = v108[2];
        v191[3] = v117;
        v190[0] = v115;
        v190[1] = v114;
        v118 = *(v111 + 3);
        v190[2] = *(v111 + 2);
        v190[3] = v118;
        v44 = static SearchResultScope.== infix(_:_:)(v191, v190);
        sub_1E5C2A1F0(&v192);
        sub_1E5C2A1F0(&v196);
        goto LABEL_78;
      }

      sub_1E5C2A1F0(&v196);
      goto LABEL_71;
    case 8u:
      v154 = v185;
      sub_1E5C426C4(v39, v185, type metadata accessor for SearchAction);
      v155 = v189;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        v157 = type metadata accessor for SearchHint;
        v158 = v154;
LABEL_70:
        sub_1E5C4482C(v158, v157);
        goto LABEL_71;
      }

      v156 = v180;
      sub_1E5C40724(v155, v180, type metadata accessor for SearchHint);
      v44 = _s13FitnessSearch0B4HintV2eeoiySbAC_ACtFZ_0(v154, v156);
      sub_1E5C4482C(v156, type metadata accessor for SearchHint);
      sub_1E5C4482C(v154, type metadata accessor for SearchHint);
LABEL_78:
      sub_1E5C4482C(v39, type metadata accessor for SearchAction);
      return v44 & 1;
    case 9u:
      v188 = v39;
      v54 = v184;
      sub_1E5C426C4(v39, v184, type metadata accessor for SearchAction);
      v56 = *(v54 + 8);
      v55 = *(v54 + 16);
      v57 = *(v54 + 32);
      v58 = *(v54 + 40);
      v59 = *(v54 + 48);
      v60 = *(v54 + 56);
      v186 = *(v54 + 64);
      v187 = v59;
      v61 = *(v54 + 72);
      v185 = *(v54 + 80);
      v62 = *(v54 + 88);
      v63 = v189;
      if (swift_getEnumCaseMultiPayload() != 9)
      {

LABEL_68:

        v39 = v188;
        goto LABEL_71;
      }

      LODWORD(v181) = v58;
      v183 = v62;
      v64 = *(v54 + 24);
      v65 = *v54;
      v66 = *v63;
      v67 = v63[1];
      v69 = v63[2];
      v68 = v63[3];
      v70 = v63[4];
      LODWORD(v180) = *(v63 + 40);
      v71 = v63[6];
      v184 = v63[7];
      v72 = v63[9];
      v178 = v63[8];
      v179 = v71;
      v182 = v72;
      v73 = v63[11];
      v177 = v63[10];
      v189 = v73;
      *&v196 = v65;
      *(&v196 + 1) = v56;
      *&v197 = v55;
      *(&v197 + 1) = v64;
      *&v198 = v57;
      *&v192 = v66;
      *(&v192 + 1) = v67;
      *&v193 = v69;
      *(&v193 + 1) = v68;
      *&v194 = v70;
      v74 = _s13FitnessSearch0B11HintsResultV2eeoiySbAC_ACtFZ_0(&v196, &v192);

      if ((v74 & 1) == 0)
      {
LABEL_81:

LABEL_82:

        sub_1E5C4482C(v188, type metadata accessor for SearchAction);
        goto LABEL_72;
      }

      LOBYTE(v196) = v181;
      *(&v196 + 1) = v187;
      *&v197 = v60;
      *(&v197 + 1) = v186;
      *&v198 = v61;
      *(&v198 + 1) = v185;
      *&v199 = v183;
      LOBYTE(v192) = v180;
      *(&v192 + 1) = v179;
      *&v193 = v184;
      *(&v193 + 1) = v178;
      *&v194 = v182;
      *(&v194 + 1) = v177;
      *&v195 = v189;
      v44 = _s13FitnessSearch0B7SessionV2eeoiySbAC_ACtFZ_0(&v196, &v192);

LABEL_47:

      sub_1E5C4482C(v188, type metadata accessor for SearchAction);
      return v44 & 1;
    case 0xAu:
      v149 = v183;
      sub_1E5C426C4(v39, v183, type metadata accessor for SearchAction);
      v76 = *v149;
      v75 = v149[1];
      v77 = v189;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
LABEL_60:

LABEL_71:
        sub_1E5C447C4(v39);
        goto LABEL_72;
      }

LABEL_51:
      v150 = *v77;
      v151 = v77[1];
      if (v76 == v150 && v75 == v151)
      {

        goto LABEL_65;
      }

      v153 = sub_1E5C9D060();

      if (v153)
      {
LABEL_65:
        sub_1E5C4482C(v39, type metadata accessor for SearchAction);
        v44 = 1;
        return v44 & 1;
      }

LABEL_75:
      sub_1E5C4482C(v39, type metadata accessor for SearchAction);
LABEL_72:
      v44 = 0;
      return v44 & 1;
    case 0xBu:
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_71;
      }

      goto LABEL_65;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_71;
      }

      goto LABEL_65;
    case 0xDu:
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_71;
      }

      goto LABEL_65;
    case 0xEu:
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_71;
      }

      goto LABEL_65;
    case 0xFu:
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_71;
      }

      goto LABEL_65;
    case 0x10u:
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        goto LABEL_71;
      }

      goto LABEL_65;
    case 0x11u:
      if (swift_getEnumCaseMultiPayload() != 17)
      {
        goto LABEL_71;
      }

      goto LABEL_65;
    case 0x12u:
      if (swift_getEnumCaseMultiPayload() != 18)
      {
        goto LABEL_71;
      }

      goto LABEL_65;
    default:
      sub_1E5C426C4(v39, v34, type metadata accessor for SearchAction);
      v42 = v189;
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_71;
      }

      v43 = *v34 ^ *v42;
      sub_1E5C4482C(v39, type metadata accessor for SearchAction);
      v44 = v43 ^ 1;
      return v44 & 1;
  }
}

uint64_t sub_1E5C426C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5C42774(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E5C4280C()
{
  sub_1E5C223F8();
  if (v0 <= 0x3F)
  {
    sub_1E5C4294C();
    if (v1 <= 0x3F)
    {
      sub_1E5C429B4(319, &qword_1EE2C4080);
      if (v2 <= 0x3F)
      {
        type metadata accessor for SearchHistoryItem();
        if (v3 <= 0x3F)
        {
          sub_1E5C429B4(319, qword_1EE2C4350);
          if (v4 <= 0x3F)
          {
            type metadata accessor for SearchHint();
            if (v5 <= 0x3F)
            {
              sub_1E5C429B4(319, &qword_1EE2C48F8);
              if (v6 <= 0x3F)
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

void sub_1E5C4294C()
{
  if (!qword_1EE2C4348)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE2C4348);
    }
  }
}

void sub_1E5C429B4(uint64_t a1, unint64_t *a2)
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

uint64_t getEnumTagSinglePayload for SearchAction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SearchAction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s9QueryModeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s9QueryModeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SearchConstants(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for SearchConstants(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1E5C42EA8()
{
  result = qword_1ED0545D8;
  if (!qword_1ED0545D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0545D8);
  }

  return result;
}

unint64_t sub_1E5C42F00()
{
  result = qword_1ED0545E0;
  if (!qword_1ED0545E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0545E0);
  }

  return result;
}

unint64_t sub_1E5C42F58()
{
  result = qword_1ED0545E8;
  if (!qword_1ED0545E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0545E8);
  }

  return result;
}

unint64_t sub_1E5C42FB0()
{
  result = qword_1ED0545F0;
  if (!qword_1ED0545F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0545F0);
  }

  return result;
}

unint64_t sub_1E5C43008()
{
  result = qword_1ED0545F8;
  if (!qword_1ED0545F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0545F8);
  }

  return result;
}

unint64_t sub_1E5C43060()
{
  result = qword_1ED054600;
  if (!qword_1ED054600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054600);
  }

  return result;
}

unint64_t sub_1E5C430B8()
{
  result = qword_1ED054608;
  if (!qword_1ED054608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054608);
  }

  return result;
}

unint64_t sub_1E5C43110()
{
  result = qword_1ED054610;
  if (!qword_1ED054610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054610);
  }

  return result;
}

unint64_t sub_1E5C43168()
{
  result = qword_1ED054618;
  if (!qword_1ED054618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054618);
  }

  return result;
}

unint64_t sub_1E5C431C0()
{
  result = qword_1ED054620;
  if (!qword_1ED054620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054620);
  }

  return result;
}

unint64_t sub_1E5C43218()
{
  result = qword_1ED054628;
  if (!qword_1ED054628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054628);
  }

  return result;
}

unint64_t sub_1E5C43270()
{
  result = qword_1ED054630;
  if (!qword_1ED054630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054630);
  }

  return result;
}

unint64_t sub_1E5C432C8()
{
  result = qword_1ED054638;
  if (!qword_1ED054638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054638);
  }

  return result;
}

unint64_t sub_1E5C43320()
{
  result = qword_1ED054640;
  if (!qword_1ED054640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054640);
  }

  return result;
}

unint64_t sub_1E5C43378()
{
  result = qword_1ED054648;
  if (!qword_1ED054648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054648);
  }

  return result;
}

unint64_t sub_1E5C433D0()
{
  result = qword_1ED054650;
  if (!qword_1ED054650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054650);
  }

  return result;
}

unint64_t sub_1E5C43428()
{
  result = qword_1ED054658;
  if (!qword_1ED054658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054658);
  }

  return result;
}

unint64_t sub_1E5C43480()
{
  result = qword_1ED054660;
  if (!qword_1ED054660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054660);
  }

  return result;
}

unint64_t sub_1E5C434D8()
{
  result = qword_1ED054668;
  if (!qword_1ED054668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054668);
  }

  return result;
}

unint64_t sub_1E5C43530()
{
  result = qword_1ED054670;
  if (!qword_1ED054670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054670);
  }

  return result;
}

unint64_t sub_1E5C43588()
{
  result = qword_1ED054678;
  if (!qword_1ED054678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054678);
  }

  return result;
}

unint64_t sub_1E5C435E0()
{
  result = qword_1ED054680;
  if (!qword_1ED054680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054680);
  }

  return result;
}

unint64_t sub_1E5C43638()
{
  result = qword_1ED054688;
  if (!qword_1ED054688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054688);
  }

  return result;
}

unint64_t sub_1E5C43690()
{
  result = qword_1ED054690;
  if (!qword_1ED054690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054690);
  }

  return result;
}

unint64_t sub_1E5C436E8()
{
  result = qword_1ED054698;
  if (!qword_1ED054698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054698);
  }

  return result;
}

unint64_t sub_1E5C43740()
{
  result = qword_1ED0546A0;
  if (!qword_1ED0546A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0546A0);
  }

  return result;
}

unint64_t sub_1E5C43798()
{
  result = qword_1ED0546A8;
  if (!qword_1ED0546A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0546A8);
  }

  return result;
}

unint64_t sub_1E5C437F0()
{
  result = qword_1ED0546B0;
  if (!qword_1ED0546B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0546B0);
  }

  return result;
}

unint64_t sub_1E5C43848()
{
  result = qword_1ED0546B8;
  if (!qword_1ED0546B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0546B8);
  }

  return result;
}

unint64_t sub_1E5C438A0()
{
  result = qword_1ED0546C0;
  if (!qword_1ED0546C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0546C0);
  }

  return result;
}

unint64_t sub_1E5C438F8()
{
  result = qword_1ED0546C8;
  if (!qword_1ED0546C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0546C8);
  }

  return result;
}

unint64_t sub_1E5C43950()
{
  result = qword_1ED0546D0;
  if (!qword_1ED0546D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0546D0);
  }

  return result;
}

unint64_t sub_1E5C439A8()
{
  result = qword_1ED0546D8;
  if (!qword_1ED0546D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0546D8);
  }

  return result;
}

unint64_t sub_1E5C43A00()
{
  result = qword_1ED0546E0;
  if (!qword_1ED0546E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0546E0);
  }

  return result;
}

unint64_t sub_1E5C43A58()
{
  result = qword_1ED0546E8;
  if (!qword_1ED0546E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0546E8);
  }

  return result;
}

unint64_t sub_1E5C43AB0()
{
  result = qword_1ED0546F0;
  if (!qword_1ED0546F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0546F0);
  }

  return result;
}

unint64_t sub_1E5C43B08()
{
  result = qword_1ED0546F8;
  if (!qword_1ED0546F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0546F8);
  }

  return result;
}

unint64_t sub_1E5C43B60()
{
  result = qword_1ED054700;
  if (!qword_1ED054700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054700);
  }

  return result;
}

unint64_t sub_1E5C43BB8()
{
  result = qword_1ED054708;
  if (!qword_1ED054708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054708);
  }

  return result;
}

unint64_t sub_1E5C43C10()
{
  result = qword_1ED054710;
  if (!qword_1ED054710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054710);
  }

  return result;
}

unint64_t sub_1E5C43C68()
{
  result = qword_1ED054718;
  if (!qword_1ED054718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054718);
  }

  return result;
}

unint64_t sub_1E5C43CC0()
{
  result = qword_1ED054720;
  if (!qword_1ED054720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054720);
  }

  return result;
}

unint64_t sub_1E5C43D18()
{
  result = qword_1ED054728;
  if (!qword_1ED054728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054728);
  }

  return result;
}

unint64_t sub_1E5C43D70()
{
  result = qword_1ED054730;
  if (!qword_1ED054730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054730);
  }

  return result;
}

unint64_t sub_1E5C43DC8()
{
  result = qword_1ED054738;
  if (!qword_1ED054738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054738);
  }

  return result;
}

unint64_t sub_1E5C43E20()
{
  result = qword_1ED054740;
  if (!qword_1ED054740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054740);
  }

  return result;
}

unint64_t sub_1E5C43E78()
{
  result = qword_1ED054748;
  if (!qword_1ED054748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054748);
  }

  return result;
}

unint64_t sub_1E5C43ED0()
{
  result = qword_1ED054750;
  if (!qword_1ED054750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054750);
  }

  return result;
}

unint64_t sub_1E5C43F28()
{
  result = qword_1ED054758;
  if (!qword_1ED054758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054758);
  }

  return result;
}

unint64_t sub_1E5C43F80()
{
  result = qword_1ED054760;
  if (!qword_1ED054760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054760);
  }

  return result;
}

unint64_t sub_1E5C43FD8()
{
  result = qword_1ED054768;
  if (!qword_1ED054768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054768);
  }

  return result;
}

unint64_t sub_1E5C44030()
{
  result = qword_1ED054770;
  if (!qword_1ED054770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054770);
  }

  return result;
}

uint64_t sub_1E5C44084(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001E5CA7D30 == a2 || (sub_1E5C9D060() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E5CA7D50 == a2 || (sub_1E5C9D060() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F69746174636964 && a2 == 0xEE006465646E456ELL || (sub_1E5C9D060() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6168437375636F66 && a2 == 0xEC0000006465676ELL || (sub_1E5C9D060() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001E5CA7D70 == a2 || (sub_1E5C9D060() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001E5CA7D90 == a2 || (sub_1E5C9D060() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001E5CA7DB0 == a2 || (sub_1E5C9D060() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6552746E65746E69 && a2 == 0xEF64657473657571 || (sub_1E5C9D060() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001E5CA7DD0 == a2 || (sub_1E5C9D060() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6275537972657571 && a2 == 0xEE0064657474696DLL || (sub_1E5C9D060() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E5CA7DF0 == a2 || (sub_1E5C9D060() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001E5CA7E10 == a2 || (sub_1E5C9D060() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x61684365706F6373 && a2 == 0xEC0000006465676ELL || (sub_1E5C9D060() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6C655365706F6373 && a2 == 0xED00006465746365 || (sub_1E5C9D060() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E5CA7E30 == a2 || (sub_1E5C9D060() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001E5CA7E50 == a2 || (sub_1E5C9D060() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6E61684374786574 && a2 == 0xEB00000000646567 || (sub_1E5C9D060() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x4164694477656976 && a2 == 0xED00007261657070 || (sub_1E5C9D060() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E5CA7E70 == a2)
  {

    return 18;
  }

  else
  {
    v5 = sub_1E5C9D060();

    if (v5)
    {
      return 18;
    }

    else
    {
      return 19;
    }
  }
}

uint64_t sub_1E5C446C4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_1E5C9D060() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 12895 && a2 == 0xE200000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5C9D060();

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

uint64_t sub_1E5C447C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054778, &unk_1E5CA0EF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5C4482C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SearchArtworkFlavorDescriptor.family.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SearchArtworkFlavorDescriptor.flavor.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SearchArtworkFlavorDescriptor.variant.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

void __swiftcall SearchArtworkFlavorDescriptor.init(family:flavor:variant:)(FitnessSearch::SearchArtworkFlavorDescriptor *__return_ptr retstr, Swift::String family, Swift::String flavor, Swift::String variant)
{
  retstr->family = family;
  retstr->flavor = flavor;
  retstr->variant = variant;
}

uint64_t sub_1E5C44968()
{
  v1 = 0x726F76616C66;
  if (*v0 != 1)
  {
    v1 = 0x746E6169726176;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x796C696D6166;
  }
}

uint64_t sub_1E5C449BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5C45594(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5C449E4(uint64_t a1)
{
  v2 = sub_1E5C44C20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C44A20(uint64_t a1)
{
  v2 = sub_1E5C44C20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SearchArtworkFlavorDescriptor.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054780, &qword_1E5CA0F00);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v15[3] = v1[3];
  v15[4] = v10;
  v11 = v1[4];
  v15[1] = v1[5];
  v15[2] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C44C20();
  sub_1E5C9D130();
  v18 = 0;
  v13 = v15[5];
  sub_1E5C9D000();
  if (v13)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v17 = 1;
  sub_1E5C9D000();
  v16 = 2;
  sub_1E5C9D000();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1E5C44C20()
{
  result = qword_1ED054788;
  if (!qword_1ED054788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054788);
  }

  return result;
}

uint64_t SearchArtworkFlavorDescriptor.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054790, &qword_1E5CA0F08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C44C20();
  sub_1E5C9D120();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = 0;
  v11 = sub_1E5C9CF70();
  v13 = v12;
  v24 = v11;
  v26 = 1;
  v22 = sub_1E5C9CF70();
  v23 = v14;
  v25 = 2;
  v15 = sub_1E5C9CF70();
  v17 = v16;
  v18 = v15;
  (*(v6 + 8))(v9, v5);
  v19 = v23;
  *a2 = v24;
  a2[1] = v13;
  a2[2] = v22;
  a2[3] = v19;
  a2[4] = v18;
  a2[5] = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t static SearchArtworkFlavorDescriptor.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1E5C9D060() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_1E5C9D060() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_1E5C9D060();
}

uint64_t SearchArtworkFlavorDescriptor.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_1E5C9CC60();
  sub_1E5C9CC60();

  return sub_1E5C9CC60();
}

uint64_t SearchArtworkFlavorDescriptor.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_1E5C9D0D0();
  sub_1E5C9CC60();
  sub_1E5C9CC60();
  sub_1E5C9CC60();
  return sub_1E5C9D110();
}

uint64_t sub_1E5C45104()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_1E5C9D0D0();
  sub_1E5C9CC60();
  sub_1E5C9CC60();
  sub_1E5C9CC60();
  return sub_1E5C9D110();
}

uint64_t sub_1E5C45188()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_1E5C9CC60();
  sub_1E5C9CC60();

  return sub_1E5C9CC60();
}

uint64_t sub_1E5C451F4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_1E5C9D0D0();
  sub_1E5C9CC60();
  sub_1E5C9CC60();
  sub_1E5C9CC60();
  return sub_1E5C9D110();
}

unint64_t sub_1E5C45278()
{
  result = qword_1ED054798;
  if (!qword_1ED054798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054798);
  }

  return result;
}

uint64_t sub_1E5C452CC(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1E5C9D060() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_1E5C9D060() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_1E5C9D060();
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1E5C453D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1E5C45420(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E5C45490()
{
  result = qword_1ED0547A0;
  if (!qword_1ED0547A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0547A0);
  }

  return result;
}

unint64_t sub_1E5C454E8()
{
  result = qword_1ED0547A8;
  if (!qword_1ED0547A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0547A8);
  }

  return result;
}

unint64_t sub_1E5C45540()
{
  result = qword_1ED0547B0[0];
  if (!qword_1ED0547B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED0547B0);
  }

  return result;
}

uint64_t sub_1E5C45594(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x796C696D6166 && a2 == 0xE600000000000000;
  if (v4 || (sub_1E5C9D060() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F76616C66 && a2 == 0xE600000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E6169726176 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5C9D060();

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

void sub_1E5C456AC(uint64_t a1)
{
  sub_1E5C45CB4();
  if (v2 <= 0x3F)
  {
    sub_1E5C45D04();
    if (v3 <= 0x3F)
    {
      v4 = *(a1 + 16);
      swift_checkMetadataState();
      if (v5 <= 0x3F)
      {
        v6 = *(a1 + 24);
        swift_checkMetadataState();
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1E5C45768(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = *(v7 + 80);
  if (v5 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v4 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = a2 - v13;
  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v15 = ((v10 + v11 + ((v9 + 32) & ~v9)) & ~v11) + *(*(v6 - 8) + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((v14 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_31:
      v23 = a1 & 0xFFFFFFFFFFFFFFF8;
      if ((v12 & 0x80000000) != 0)
      {
        v25 = (v23 + v9 + 32) & ~v9;
        if (v5 == v13)
        {
          return (*(v4 + 48))(v25);
        }

        else
        {
          return (*(v7 + 48))((v25 + v10 + v11) & ~v11, v8, v6);
        }
      }

      else
      {
        v24 = *(v23 + 24);
        if (v24 >= 0xFFFFFFFF)
        {
          LODWORD(v24) = -1;
        }

        return (v24 + 1);
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = v15;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v13 + (v22 | v20) + 1;
}

void sub_1E5C45990(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(a4 + 24);
  v8 = *(v6 + 84);
  v9 = *(v7 - 8);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v9 + 80);
  if (v8 <= *(v9 + 84))
  {
    v13 = *(v9 + 84);
  }

  else
  {
    v13 = *(v6 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = ((v11 + v12 + ((v10 + 32) & ~v10)) & ~v12) + *(*(v7 - 8) + 64);
  v16 = a3 >= v14;
  v17 = a3 - v14;
  if (v17 != 0 && v16)
  {
    if (v15 <= 3)
    {
      v21 = ((v17 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
      if (HIWORD(v21))
      {
        v18 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v18 = v22;
        }

        else
        {
          v18 = 0;
        }
      }
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  if (v14 < a2)
  {
    v19 = ~v14 + a2;
    if (v15 < 4)
    {
      v20 = (v19 >> (8 * v15)) + 1;
      if (v15)
      {
        v23 = v19 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_53:
              if (v18 == 2)
              {
                *(a1 + v15) = v20;
              }

              else
              {
                *(a1 + v15) = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *a1 = v23;
        *(a1 + 2) = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v18)
    {
      *(a1 + v15) = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *(a1 + v15) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *(a1 + v15) = 0;
  }

  else if (v18)
  {
    *(a1 + v15) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  v24 = a1 & 0xFFFFFFFFFFFFFFF8;
  if ((v13 & 0x80000000) != 0)
  {
    v25 = (v24 + v10 + 32) & ~v10;
    if (v8 == v14)
    {
      v26 = *(v6 + 56);

      v26(v25);
    }

    else
    {
      v27 = *(v9 + 56);
      v28 = (v25 + v11 + v12) & ~v12;

      v27(v28);
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(v24 + 16) = a2 & 0x7FFFFFFF;
    *(v24 + 24) = 0;
  }

  else
  {
    *(v24 + 24) = a2 - 1;
  }
}

void sub_1E5C45CB4()
{
  if (!qword_1ED054838)
  {
    v0 = sub_1E5C9BDD0();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED054838);
    }
  }
}

void sub_1E5C45D04()
{
  if (!qword_1ED054840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED054848, qword_1E5CA1168);
    sub_1E5C27F74(&qword_1EE2C4090, &qword_1ED054848, qword_1E5CA1168);
    v0 = sub_1E5C9BF20();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED054840);
    }
  }
}

uint64_t sub_1E5C45DA8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E5C45DEC(uint64_t a1, uint64_t a2)
{
  v4 = (*(*(sub_1E5C9C270() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  (*(*(a2 - 8) + 16))(&v7 - v5, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_1E5C9C280();
}

uint64_t sub_1E5C45EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(*(sub_1E5C9C270() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  (*(*(a3 - 8) + 16))(&v8 - v6, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_1E5C9C280();
}

uint64_t sub_1E5C45FDC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v51 = *(a1 - 1);
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v50 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5C9C390();
  *&v47 = a1[2];
  sub_1E5C9BFB0();
  sub_1E5C9C290();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053F68, &unk_1E5CA11D0);
  *&v46 = a1[3];
  sub_1E5C9C290();
  sub_1E5C9C290();
  sub_1E5C9C290();
  v4 = sub_1E5C9C800();
  v49 = *(v4 - 8);
  v5 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v45 = &v40 - v6;
  v7 = a1[4];
  v44 = a1;
  v8 = sub_1E5C48438();
  v70 = v7;
  v71 = v8;
  WitnessTable = swift_getWitnessTable();
  v68 = WitnessTable;
  v69 = MEMORY[0x1E6981E60];
  v10 = swift_getWitnessTable();
  v11 = sub_1E5C2CDCC();
  v12 = a1[5];
  v66 = v11;
  v67 = v12;
  v13 = swift_getWitnessTable();
  v64 = v10;
  v65 = v13;
  v62 = swift_getWitnessTable();
  v63 = WitnessTable;
  v61 = swift_getWitnessTable();
  v42 = v4;
  v41 = swift_getWitnessTable();
  v57 = v4;
  v58 = MEMORY[0x1E69E6370];
  v59 = v41;
  v60 = MEMORY[0x1E69E6388];
  v43 = MEMORY[0x1E6981440];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v15 = *(OpaqueTypeMetadata2 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v40 - v20;
  *&v22 = v47;
  *(&v22 + 1) = v46;
  v47 = v22;
  *&v23 = v7;
  *(&v23 + 1) = v12;
  v46 = v23;
  v54 = v22;
  v55 = v23;
  v24 = v48;
  v56 = v48;
  v25 = v45;
  sub_1E5C9C7F0();
  v26 = v24;
  LOBYTE(v57) = sub_1E5C484A0(*v24, *(v24 + 8)) & 1;
  v27 = v51;
  v28 = v50;
  v29 = v44;
  (*(v51 + 16))(v50, v26, v44);
  v30 = (*(v27 + 80) + 48) & ~*(v27 + 80);
  v31 = swift_allocObject();
  v32 = v46;
  *(v31 + 16) = v47;
  *(v31 + 32) = v32;
  (*(v27 + 32))(v31 + v30, v28, v29);
  v33 = v42;
  v34 = MEMORY[0x1E69E6370];
  v35 = v41;
  v36 = MEMORY[0x1E69E6388];
  sub_1E5C9C740();

  (*(v49 + 8))(v25, v33);
  v57 = v33;
  v58 = v34;
  v59 = v35;
  v60 = v36;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1E5C28390(v19, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v38 = *(v15 + 8);
  v38(v19, OpaqueTypeMetadata2);
  sub_1E5C28390(v21, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v38)(v21, OpaqueTypeMetadata2);
}

uint64_t sub_1E5C465A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *&v180 = a4;
  *(&v180 + 1) = a5;
  v176 = a6;
  v155 = *(a3 - 1);
  v9 = *(v155 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v154 = &v145 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v153 = &v145 - v12;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053FE8, &unk_1E5CA11E0);
  v152 = *(v162 - 8);
  v13 = *(v152 + 64);
  MEMORY[0x1EEE9AC00](v162);
  v151 = &v145 - v14;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053FF8, &qword_1E5C9E5E8);
  v15 = *(*(v158 - 8) + 64);
  MEMORY[0x1EEE9AC00](v158);
  v160 = &v145 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053F68, &unk_1E5CA11D0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v161 = &v145 - v19;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053FD8, &qword_1E5C9E540);
  v157 = *(v159 - 8);
  v20 = *(v157 + 64);
  MEMORY[0x1EEE9AC00](v159);
  v156 = &v145 - v21;
  v165 = v17;
  v177 = a3;
  v22 = sub_1E5C9C290();
  v164 = *(v22 - 8);
  v23 = *(v164 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v163 = &v145 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v168 = &v145 - v26;
  sub_1E5C9C390();
  v172 = a2;
  v27 = sub_1E5C9BFB0();
  v28 = sub_1E5C9C290();
  v167 = *(v28 - 8);
  v29 = v167[8];
  v30 = MEMORY[0x1EEE9AC00](v28);
  v166 = &v145 - v31;
  v170 = *(v27 - 8);
  v32 = v170[8];
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = &v145 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v145 - v36;
  v178 = v38;
  v175 = v22;
  v39 = sub_1E5C9C290();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  v42 = MEMORY[0x1EEE9AC00](v39);
  v44 = &v145 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v169 = &v145 - v45;
  v46 = sub_1E5C9C290();
  v173 = *(v46 - 8);
  v174 = v46;
  v47 = *(v173 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v145 - v48;
  v50 = sub_1E5C484A0(*a1, *(a1 + 8));
  v179 = v49;
  v171 = v37;
  if (v50)
  {
    v148 = v40;
    v149 = v39;
    v150 = v27;
    v51 = v172;
    *&v211 = v172;
    v52 = v177;
    *(&v211 + 1) = v177;
    v212 = v180;
    v146 = type metadata accessor for TVSearchableView();
    v53 = *(a1 + 24);
    swift_getKeyPath();

    sub_1E5C9CAD0();

    *(v213 + 9) = *(v210 + 9);
    v212 = v209;
    v213[0] = v210[0];
    v211 = v208;
    v147 = v44;
    if (BYTE8(v210[1]))
    {
      if (BYTE8(v213[1]) == 1)
      {
        v54 = v52;
        v55 = *&v213[1];
        v56 = v212;
        v232 = v211;
        v233 = v212;
        v234 = v213[0];
        v235 = *&v213[1];
        v57 = *(a1 + 24);
        swift_getKeyPath();

        sub_1E5C9CAD0();

        if (v207 == 1 && v55)
        {

          v171 = &v145;
          v59 = MEMORY[0x1EEE9AC00](v58);
          v170 = &v145 - 8;
          *(&v145 - 6) = v51;
          *(&v145 - 5) = v54;
          v60 = v180;
          v61 = MEMORY[0x1EEE9AC00](v59);
          v167 = &v145 - 10;
          *(&v145 - 8) = v62;
          *(&v145 - 7) = v54;
          *(&v145 - 3) = v60;
          MEMORY[0x1EEE9AC00](v61);
          *(&v145 - 6) = v63;
          *(&v145 - 5) = v54;
          v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054008, &unk_1E5CA1230);
          v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053E60, &qword_1E5C9DE20);
          v65 = sub_1E5C27F74(&qword_1ED054010, &qword_1ED054008, &unk_1E5CA1230);
          v66 = sub_1E5C27F74(&qword_1ED053E70, &qword_1ED053E60, &qword_1E5C9DE20);
          v143 = v65;
          v144 = v66;
          v67 = v60;
          v141 = v64;
          v142 = MEMORY[0x1E6981138];
          v68 = v156;
          sub_1E5C9C300();
          sub_1E5C30CAC(&v211);

          v69 = v157;
          v70 = v159;
          (*(v157 + 16))(v160, v68, v159);
          swift_storeEnumTagMultiPayload();
          sub_1E5C27F74(&qword_1ED053FD0, &qword_1ED053FD8, &qword_1E5C9E540);
          sub_1E5C27F74(&qword_1ED053FE0, &qword_1ED053FE8, &unk_1E5CA11E0);
          v71 = v161;
          sub_1E5C9C280();
          sub_1E5C2CDCC();
          v72 = v168;
          sub_1E5C45DEC(v71, v165);
          sub_1E5C48E94(v71);
          (*(v69 + 8))(v68, v70);
        }

        else
        {
          sub_1E5C30CAC(&v211);
          v106 = *(v56 + 16);

          v67 = v180;
          if (v106)
          {
            v107 = v153;
            v108 = *(&v180 + 1);
            sub_1E5C28390(a1 + *(v146 + 60), v54, *(&v180 + 1));
            v109 = v154;
            sub_1E5C28390(v107, v54, v108);
            sub_1E5C2CDCC();
            v72 = v168;
            sub_1E5C45EE4(v109, v165, v54);
            v110 = *(v155 + 8);
            v110(v109, v54);
            v110(v107, v54);
          }

          else
          {
            v111 = v180;
            v112 = v151;
            sub_1E5C9C320();
            v113 = v152;
            v114 = v162;
            (*(v152 + 16))(v160, v112, v162);
            swift_storeEnumTagMultiPayload();
            sub_1E5C27F74(&qword_1ED053FD0, &qword_1ED053FD8, &qword_1E5C9E540);
            sub_1E5C27F74(&qword_1ED053FE0, &qword_1ED053FE8, &unk_1E5CA11E0);
            v115 = v161;
            sub_1E5C9C280();
            sub_1E5C2CDCC();
            v116 = v168;
            sub_1E5C45DEC(v115, v165);
            sub_1E5C48E94(v115);
            v117 = v112;
            v67 = v111;
            v72 = v116;
            (*(v113 + 8))(v117, v114);
          }
        }

        v118 = v175;
        v93 = v149;
        v92 = v169;
        v205 = sub_1E5C2CDCC();
        v206 = *(&v180 + 1);
        WitnessTable = swift_getWitnessTable();
        v120 = v163;
        sub_1E5C28390(v72, v118, WitnessTable);
        v121 = sub_1E5C48438();
        v203 = v67;
        v204 = v121;
        v201 = swift_getWitnessTable();
        v86 = v67;
        v90 = MEMORY[0x1E6981E60];
        v202 = MEMORY[0x1E6981E60];
        v122 = v178;
        swift_getWitnessTable();
        sub_1E5C45EE4(v120, v122, v118);
        v123 = *(v164 + 8);
        v123(v120, v118);
        v123(v168, v118);
      }

      else
      {
        v94 = *(v146 + 56);
        v95 = sub_1E5C9C460();
        v96 = v35;
        v97 = v180;
        sub_1E5C4781C(v95, 0x4024000000000000, 0, v51, v180);
        v98 = sub_1E5C48438();
        v185 = v97;
        v186 = v98;
        v99 = v150;
        v100 = swift_getWitnessTable();
        v101 = v171;
        sub_1E5C28390(v35, v99, v100);
        v177 = v170[1];
        v177(v35, v99);
        sub_1E5C28390(v101, v99, v100);
        v102 = v166;
        v103 = MEMORY[0x1E6981E60];
        sub_1E5C45DEC(v35, v99);
        v183 = v100;
        v184 = v103;
        v104 = v178;
        swift_getWitnessTable();
        v181 = sub_1E5C2CDCC();
        v182 = *(&v180 + 1);
        swift_getWitnessTable();
        v92 = v169;
        sub_1E5C45DEC(v102, v104);
        (v167[1])(v102, v104);
        v105 = v177;
        v177(v96, v99);
        v105(v171, v99);
        v90 = MEMORY[0x1E6981E60];
        v86 = v180;
        v93 = v149;
      }
    }

    else
    {
      sub_1E5C30CAC(&v211);
      v85 = sub_1E5C48438();
      v86 = v180;
      v191 = v180;
      v192 = v85;
      v87 = v150;
      v88 = swift_getWitnessTable();
      v89 = v166;
      v90 = MEMORY[0x1E6981E60];
      sub_1E5C45EE4(v88, v87, MEMORY[0x1E6981E70]);
      v189 = v88;
      v190 = v90;
      v91 = v178;
      swift_getWitnessTable();
      v187 = sub_1E5C2CDCC();
      v188 = *(&v180 + 1);
      swift_getWitnessTable();
      v92 = v169;
      sub_1E5C45DEC(v89, v91);
      (v167[1])(v89, v91);
      v93 = v149;
    }

    v124 = sub_1E5C48438();
    v199 = v86;
    v200 = v124;
    v197 = swift_getWitnessTable();
    v198 = v90;
    v125 = swift_getWitnessTable();
    v126 = sub_1E5C2CDCC();
    v127 = *(&v180 + 1);
    v195 = v126;
    v196 = *(&v180 + 1);
    v128 = swift_getWitnessTable();
    v193 = v125;
    v194 = v128;
    v129 = swift_getWitnessTable();
    v130 = v147;
    sub_1E5C28390(v92, v93, v129);
    sub_1E5C45DEC(v130, v93);
    v131 = *(v148 + 8);
    v131(v130, v93);
    v132 = v92;
    v84 = v127;
    v131(v132, v93);
  }

  else
  {
    v73 = v172;
    *&v211 = v172;
    *(&v211 + 1) = v177;
    v74 = v180;
    v212 = v180;
    v75 = *(type metadata accessor for TVSearchableView() + 56);
    v76 = sub_1E5C9C460();
    sub_1E5C4781C(v76, 0x4024000000000000, 0, v73, v74);
    v77 = sub_1E5C48438();
    v230 = v74;
    v231 = v77;
    v78 = swift_getWitnessTable();
    sub_1E5C28390(v35, v27, v78);
    v177 = v170[1];
    v177(v35, v27);
    sub_1E5C28390(v37, v27, v78);
    v228 = v78;
    v229 = MEMORY[0x1E6981E60];
    v79 = swift_getWitnessTable();
    v80 = sub_1E5C2CDCC();
    v81 = *(&v180 + 1);
    v226 = v80;
    v227 = *(&v180 + 1);
    v82 = swift_getWitnessTable();
    v224 = v79;
    v225 = v82;
    swift_getWitnessTable();
    sub_1E5C45EE4(v35, v39, v27);
    v83 = v177;
    v177(v35, v27);
    v83(v171, v27);
    v84 = v81;
  }

  v133 = sub_1E5C48438();
  v222 = v180;
  v223 = v133;
  v134 = swift_getWitnessTable();
  v220 = v134;
  v221 = MEMORY[0x1E6981E60];
  v135 = swift_getWitnessTable();
  v218 = sub_1E5C2CDCC();
  v219 = v84;
  v136 = swift_getWitnessTable();
  v216 = v135;
  v217 = v136;
  v214 = swift_getWitnessTable();
  v215 = v134;
  v137 = v174;
  v138 = swift_getWitnessTable();
  v139 = v179;
  sub_1E5C28390(v179, v137, v138);
  return (*(v173 + 8))(v139, v137);
}

uint64_t sub_1E5C4781C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1E5C9C390();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0uLL;
  v14 = 0uLL;
  if ((a3 & 1) == 0)
  {
    sub_1E5C9BDA0();
    *(&v13 + 1) = v15;
    *(&v14 + 1) = v16;
  }

  v18[0] = v13;
  v18[1] = v14;
  v19 = a3 & 1;
  sub_1E5C9C380();
  MEMORY[0x1E6939030](v12, a4, v8, a5);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1E5C47958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E5C9BBD0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = sub_1E5C9CC20();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1E5C9CC10();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  type metadata accessor for TVSearchableView();
  v10 = *(a1 + 24);
  swift_getKeyPath();

  sub_1E5C9CAD0();

  result = sub_1E5C9C540();
  *a2 = result;
  *(a2 + 8) = v12;
  *(a2 + 16) = v13 & 1;
  *(a2 + 24) = v14;
  return result;
}

uint64_t sub_1E5C47B0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E5C9BBD0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = sub_1E5C9CC20();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1E5C9CC10();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  type metadata accessor for TVSearchableView();
  v10 = *(a1 + 24);
  swift_getKeyPath();

  sub_1E5C9CAD0();

  v11 = sub_1E5C9C540();
  v29 = v12;
  v30 = v11;
  v28 = v13;
  v31 = v14;
  sub_1E5C28160();

  v15 = sub_1E5C9C580();
  v17 = v16;
  v19 = v18;
  sub_1E5C9C4F0();
  v20 = sub_1E5C9C550();
  v22 = v21;
  v24 = v23;
  v26 = v25;

  sub_1E5C2824C(v15, v17, v19 & 1);

  *a2 = v30;
  *(a2 + 8) = v29;
  *(a2 + 16) = v28 & 1;
  *(a2 + 24) = v31;
  *(a2 + 32) = v20;
  *(a2 + 40) = v22;
  *(a2 + 48) = v24 & 1;
  *(a2 + 56) = v26;
  sub_1E5C281B4(v30, v29, v28 & 1);

  sub_1E5C281B4(v20, v22, v24 & 1);

  sub_1E5C2824C(v20, v22, v24 & 1);

  sub_1E5C2824C(v30, v29, v28 & 1);
}

uint64_t sub_1E5C47DE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v33 = a5;
  v34 = a6;
  v31 = a3;
  v32 = a4;
  v35 = a7;
  v36[0] = a3;
  v36[1] = a4;
  v36[2] = a5;
  v36[3] = a6;
  v30 = type metadata accessor for TVSearchableView();
  v9 = *(v30 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v12 = &v30 - v11;
  v13 = sub_1E5C9BBD0();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = sub_1E5C9CC20();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  sub_1E5C9CC10();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = [objc_opt_self() bundleForClass_];
  v19 = *(a1 + 24);
  swift_getKeyPath();

  sub_1E5C9CAD0();

  v36[7] = sub_1E5C9CC50();
  v36[8] = v20;
  v21 = v30;
  (*(v9 + 16))(v12, a1, v30);
  v22 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v23 = (v10 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v25 = v32;
  *(v24 + 2) = v31;
  *(v24 + 3) = v25;
  v26 = v34;
  *(v24 + 4) = v33;
  *(v24 + 5) = v26;
  (*(v9 + 32))(&v24[v22], v12, v21);
  v27 = &v24[v23];
  v28 = *(a2 + 16);
  *v27 = *a2;
  *(v27 + 1) = v28;
  *(v27 + 2) = *(a2 + 32);
  *(v27 + 6) = *(a2 + 48);
  sub_1E5C49000(a2, v36);
  sub_1E5C28160();
  return sub_1E5C9C8D0();
}

uint64_t sub_1E5C480D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for SearchAction();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[0] = a3;
  v19[1] = a4;
  v19[2] = a5;
  v19[3] = a6;
  type metadata accessor for TVSearchableView();
  v16 = *(a1 + 24);
  v17 = *(a2 + 32);
  *v15 = *(a2 + 24);
  *(v15 + 1) = v17;
  v15[16] = 3;
  swift_storeEnumTagMultiPayload();

  sub_1E5C9CAF0();

  return sub_1E5C30C50(v15);
}

uint64_t sub_1E5C481D8(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SearchAction();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a2) = *a2;
  v19[0] = a4;
  v19[1] = a5;
  v19[2] = a6;
  v19[3] = a7;
  type metadata accessor for TVSearchableView();
  v17 = *(a3 + 24);
  *v16 = a2;
  swift_storeEnumTagMultiPayload();

  sub_1E5C9CAF0();

  return sub_1E5C30C50(v16);
}

uint64_t sub_1E5C482C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = swift_getKeyPath();
  *(a6 + 8) = 0;
  v12 = *a1;
  sub_1E5C27F74(&qword_1EE2C4090, &qword_1ED054848, qword_1E5CA1168);
  *(a6 + 16) = sub_1E5C9BF10();
  *(a6 + 24) = v13;
  v14 = type metadata accessor for TVSearchableView();
  (*(*(a4 - 8) + 32))(a6 + *(v14 + 56), a2, a4);
  return (*(*(a5 - 8) + 32))(a6 + *(v14 + 60), a3, a5);
}

unint64_t sub_1E5C48438()
{
  result = qword_1ED054850;
  if (!qword_1ED054850)
  {
    sub_1E5C9C390();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054850);
  }

  return result;
}

uint64_t sub_1E5C484A0(uint64_t a1, char a2)
{
  v4 = sub_1E5C9C190();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {

    v9 = sub_1E5C9CDD0();
    v10 = sub_1E5C9C410();
    if (os_log_type_enabled(v10, v9))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v14 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_1E5C58D60(1819242306, 0xE400000000000000, &v14);
      _os_log_impl(&dword_1E5C20000, v10, v9, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x1E693A130](v12, -1, -1);
      MEMORY[0x1E693A130](v11, -1, -1);
    }

    sub_1E5C9C180();
    swift_getAtKeyPath();
    sub_1E5C48660(a1, 0);
    (*(v5 + 8))(v8, v4);
    LOBYTE(a1) = v15;
  }

  return a1 & 1;
}

uint64_t sub_1E5C48660(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1E5C4866C(uint64_t a1, _BYTE *a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(type metadata accessor for TVSearchableView() - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_1E5C481D8(a1, a2, v10, v5, v6, v7, v8);
}

uint64_t sub_1E5C48728@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E5C9C190();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054858, &qword_1E5CA1290);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v20 - v11);
  sub_1E5C3165C(v2, &v20 - v11, &qword_1ED054858, &qword_1E5CA1290);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E5C9BF80();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    v16 = sub_1E5C9CDD0();
    v17 = sub_1E5C9C410();
    if (os_log_type_enabled(v17, v16))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v21 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_1E5C58D60(0x5463696D616E7944, 0xEF657A6953657079, &v21);
      _os_log_impl(&dword_1E5C20000, v17, v16, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1E693A130](v19, -1, -1);
      MEMORY[0x1E693A130](v18, -1, -1);
    }

    sub_1E5C9C180();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1E5C489B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E5C9C190();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054860, &qword_1E5CA1298);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v19 - v11);
  sub_1E5C3165C(v2, &v19 - v11, &qword_1ED054860, &qword_1E5CA1298);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1E5C4905C(v12, a1);
  }

  v14 = *v12;
  v15 = sub_1E5C9CDD0();
  v16 = sub_1E5C9C410();
  if (os_log_type_enabled(v16, v15))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v20 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_1E5C58D60(0xD000000000000020, 0x80000001E5CA7E90, &v20);
    _os_log_impl(&dword_1E5C20000, v16, v15, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x1E693A130](v18, -1, -1);
    MEMORY[0x1E693A130](v17, -1, -1);
  }

  sub_1E5C9C180();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1E5C48C08@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E5C9C190();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054870, &qword_1E5CA4C10);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v20 - v11);
  sub_1E5C3165C(v2, &v20 - v11, &qword_1ED054870, &qword_1E5CA4C10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E5C9BFA0();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    v16 = sub_1E5C9CDD0();
    v17 = sub_1E5C9C410();
    if (os_log_type_enabled(v17, v16))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v21 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_1E5C58D60(0x694474756F79614CLL, 0xEF6E6F6974636572, &v21);
      _os_log_impl(&dword_1E5C20000, v17, v16, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1E693A130](v19, -1, -1);
      MEMORY[0x1E693A130](v18, -1, -1);
    }

    sub_1E5C9C180();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1E5C48E94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053F68, &unk_1E5CA11D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5C48EFC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_1E5C47958(v1[6], a1);
}

uint64_t sub_1E5C48F0C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[7];
  v7 = v1[8];
  return sub_1E5C47B0C(v1[6], a1);
}

uint64_t sub_1E5C48F30()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *(type metadata accessor for TVSearchableView() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1E5C480D8(v0 + v6, v7, v1, v2, v3, v4);
}

uint64_t sub_1E5C4905C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054868, &unk_1E5CA12A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1E5C490F8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1E5C49140(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E5C491C4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054878, &qword_1E5CA1398);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v36 - v5);
  v7 = sub_1E5C9C3B0();
  v45 = *(v7 - 8);
  v46 = v7;
  v8 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054880, &qword_1E5CA13A0);
  v43 = *(v47 - 8);
  v11 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v13 = &v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054888, &qword_1E5CA13A8);
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v36 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054890, &qword_1E5CA13B0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v36 - v21;
  v23 = *(v1 + 16);
  v50[0] = *v1;
  v50[1] = v23;
  v51 = *(v1 + 96);
  v24 = *(v1 + 80);
  v50[4] = *(v1 + 64);
  v50[5] = v24;
  v25 = *(v1 + 48);
  v50[2] = *(v1 + 32);
  v50[3] = v25;
  if (*(*&v50[0] + 16))
  {
    v40 = v20;
    v26 = sub_1E5C9C430();
    v41 = v18;
    MEMORY[0x1EEE9AC00](v26);
    v37 = v14;
    *(&v36 - 2) = v50;
    v42 = a1;
    v38 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054898, &qword_1E5CA13B8);
    v39 = v3;
    sub_1E5C27F74(&qword_1ED0548A0, &qword_1ED054898, &qword_1E5CA13B8);
    sub_1E5C9BDC0();
    sub_1E5C9C3A0();
    v27 = sub_1E5C27F74(&qword_1ED0548A8, &qword_1ED054880, &qword_1E5CA13A0);
    v28 = v47;
    sub_1E5C9C6F0();
    (*(v45 + 8))(v10, v46);
    (*(v43 + 8))(v13, v28);
    v48 = v28;
    v49 = v27;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v30 = v37;
    sub_1E5C9C5A0();
    (*(v44 + 8))(v17, v30);
    v31 = v40;
    v32 = v41;
    (*(v40 + 16))(v38, v22, v41);
    swift_storeEnumTagMultiPayload();
    v48 = v30;
    v49 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_1E5C9C280();
    return (*(v31 + 8))(v22, v32);
  }

  else
  {
    *v6 = sub_1E5C9C7A0();
    swift_storeEnumTagMultiPayload();
    v34 = sub_1E5C27F74(&qword_1ED0548A8, &qword_1ED054880, &qword_1E5CA13A0);
    v48 = v47;
    v49 = v34;
    v35 = swift_getOpaqueTypeConformance2();
    v48 = v14;
    v49 = v35;
    swift_getOpaqueTypeConformance2();
    return sub_1E5C9C280();
  }
}

uint64_t sub_1E5C497C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a1;
  v55 = a2;
  v54 = sub_1E5C9C2D0();
  v3 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v52 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1E5C9C990();
  v5 = *(v51 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v8 = (&v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0548B0, &qword_1E5CA13C0);
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x1EEE9AC00](v9);
  v53 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v50 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0548B8, &qword_1E5CA13C8);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v50 - v22;
  *v23 = sub_1E5C9C1A0();
  *(v23 + 1) = 0;
  v23[16] = 1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0548C0, &qword_1E5CA13D0);
  sub_1E5C49D14(a1, &v23[*(v24 + 44)]);
  v25 = sub_1E5C9C460();
  sub_1E5C9BDA0();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0548C8, &qword_1E5CA13D8) + 36)];
  *v34 = v25;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  v35 = sub_1E5C9C470();
  sub_1E5C9BDA0();
  v36 = &v23[*(v17 + 44)];
  *v36 = v35;
  *(v36 + 1) = v37;
  *(v36 + 2) = v38;
  *(v36 + 3) = v39;
  *(v36 + 4) = v40;
  v36[40] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0548D0, &qword_1E5CA13E0);
  v41 = *(sub_1E5C9C9A0() - 8);
  v42 = *(v41 + 72);
  v43 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  *(swift_allocObject() + 16) = xmmword_1E5CA12B0;
  *v8 = xmmword_1E5CA12C0;
  (*(v5 + 104))(v8, *MEMORY[0x1E697D748], v51);
  sub_1E5C9C9B0();
  v56 = v50;
  sub_1E5C9C200();
  v57 = 0;
  sub_1E5C4BCF0(&qword_1ED0548D8, MEMORY[0x1E697FCB0]);
  sub_1E5C9D160();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0548E0, &qword_1E5CA13E8);
  sub_1E5C4B50C();
  sub_1E5C9CA50();
  sub_1E5C23AF0(v23, v21);
  v44 = v10[2];
  v45 = v53;
  v44(v53, v15, v9);
  v46 = v55;
  sub_1E5C23AF0(v21, v55);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054900, &qword_1E5CA13F8);
  v44((v46 + *(v47 + 48)), v45, v9);
  v48 = v10[1];
  v48(v15, v9);
  sub_1E5C3177C(v23, &qword_1ED0548B8, &qword_1E5CA13C8);
  v48(v45, v9);
  return sub_1E5C3177C(v21, &qword_1ED0548B8, &qword_1E5CA13C8);
}

id sub_1E5C49D14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v101 = a1;
  v91 = a2;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053E60, &qword_1E5C9DE20);
  v98 = *(v102 - 8);
  v2 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v102);
  v97 = &v74 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054988, &qword_1E5CA14C0);
  v82 = *(v4 - 8);
  v83 = v4;
  v5 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v99 = &v74 - v6;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054990, &qword_1E5CA14C8);
  v7 = *(*(v85 - 8) + 64);
  MEMORY[0x1EEE9AC00](v85);
  v86 = &v74 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054998, &qword_1E5CA14D0);
  v89 = *(v9 - 8);
  v90 = v9;
  v10 = *(v89 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v88 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v87 = &v74 - v13;
  v14 = sub_1E5C9C1E0();
  v95 = *(v14 - 8);
  v96 = v14;
  v15 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v93 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E5C9C4E0();
  v18 = *(v17 - 8);
  v19 = v18[8];
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0549A0, &qword_1E5CA14D8);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v84 = &v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v100 = &v74 - v26;
  sub_1E5C9C1B0();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v28 = [objc_opt_self() bundleForClass_];
  v29 = sub_1E5C9C560();
  v31 = v30;
  v33 = v32;
  v92 = v34;
  v35 = objc_opt_self();
  v36 = *MEMORY[0x1E69DDD00];
  v94 = v35;
  result = [v35 _preferredFontForTextStyle_variant_];
  if (result)
  {
    sub_1E5C9C520();
    v38 = v18[13];
    v76 = *MEMORY[0x1E6980EA8];
    v77 = v18 + 13;
    v75 = v38;
    v38(v21);
    sub_1E5C9C500();

    v39 = v18[1];
    v78 = v21;
    v79 = v18 + 1;
    v80 = v17;
    v74 = v39;
    v39(v21, v17);
    v40 = sub_1E5C9C550();
    v81 = v41;
    v43 = v42;
    v45 = v44;

    sub_1E5C2824C(v29, v31, v33 & 1);

    sub_1E5C9CA00();
    sub_1E5C9C040();
    v113 = v43 & 1;
    *&v103 = v40;
    *(&v103 + 1) = v81;
    LOBYTE(v104) = v43 & 1;
    *(&v104 + 1) = v45;
    v46 = v93;
    sub_1E5C9C1D0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0549A8, &qword_1E5CA14E0);
    sub_1E5C4BE64();
    sub_1E5C9C6D0();
    (*(v95 + 8))(v46, v96);
    v112[6] = v109;
    v112[7] = v110;
    v112[8] = v111;
    v112[2] = v105;
    v112[3] = v106;
    v112[4] = v107;
    v112[5] = v108;
    v112[0] = v103;
    v112[1] = v104;
    sub_1E5C3177C(v112, &qword_1ED0549A8, &qword_1E5CA14E0);
    v47 = swift_allocObject();
    v48 = v101;
    v49 = *(v101 + 80);
    *(v47 + 80) = *(v101 + 64);
    *(v47 + 96) = v49;
    *(v47 + 112) = *(v48 + 96);
    v50 = *(v48 + 16);
    *(v47 + 16) = *v48;
    *(v47 + 32) = v50;
    v51 = *(v48 + 48);
    *(v47 + 48) = *(v48 + 32);
    *(v47 + 64) = v51;
    sub_1E5C4BA98(v48, &v103);
    v52 = v97;
    sub_1E5C9C8A0();
    v53 = sub_1E5C27F74(&qword_1ED053E70, &qword_1ED053E60, &qword_1E5C9DE20);
    v54 = v99;
    v55 = v102;
    v96 = v53;
    sub_1E5C9C5B0();
    (*(v98 + 8))(v52, v55);
    result = [v94 _preferredFontForTextStyle_variant_];
    if (result)
    {
      sub_1E5C9C520();
      v56 = v78;
      v57 = v80;
      v75(v78, v76, v80);
      v58 = sub_1E5C9C500();

      v74(v56, v57);
      KeyPath = swift_getKeyPath();
      v60 = v86;
      (*(v82 + 32))(v86, v54, v83);
      v61 = (v60 + *(v85 + 36));
      *v61 = KeyPath;
      v61[1] = v58;
      v99 = sub_1E5C9C1B0();
      LODWORD(v98) = v62;
      v103 = *(v101 + 32);
      LOBYTE(v104) = *(v101 + 48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0549B8, &qword_1E5CA1518);
      v63 = sub_1E5C9C920();
      v97 = &v74;
      MEMORY[0x1EEE9AC00](v63);
      sub_1E5C4BF18();
      v64 = v87;
      sub_1E5C9C6B0();

      sub_1E5C3177C(v60, &qword_1ED054990, &qword_1E5CA14C8);
      v65 = v100;
      v66 = v84;
      sub_1E5C3165C(v100, v84, &qword_1ED0549A0, &qword_1E5CA14D8);
      v68 = v88;
      v67 = v89;
      v69 = *(v89 + 16);
      v70 = v90;
      v69(v88, v64, v90);
      v71 = v91;
      sub_1E5C3165C(v66, v91, &qword_1ED0549A0, &qword_1E5CA14D8);
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0549D8, &qword_1E5CA1528);
      v69((v71 + *(v72 + 48)), v68, v70);
      v73 = *(v67 + 8);
      v73(v64, v70);
      sub_1E5C3177C(v65, &qword_1ED0549A0, &qword_1E5CA14D8);
      v73(v68, v70);
      return sub_1E5C3177C(v66, &qword_1ED0549A0, &qword_1E5CA14D8);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E5C4A7A0@<X0>(uint64_t a1@<X8>)
{
  sub_1E5C9C1B0();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  result = sub_1E5C9C560();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_1E5C4A870(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0549E0, &qword_1E5CA1530);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v19[-v4];
  v6 = sub_1E5C9BBD0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = sub_1E5C9CC20();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1E5C9CC10();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  sub_1E5C9BBC0();
  v20 = sub_1E5C9CC50();
  v21 = v12;
  sub_1E5C9BD80();
  v13 = sub_1E5C9BD90();
  (*(*(v13 - 8) + 56))(v5, 0, 1, v13);
  v14 = swift_allocObject();
  v15 = *(a1 + 80);
  *(v14 + 80) = *(a1 + 64);
  *(v14 + 96) = v15;
  *(v14 + 112) = *(a1 + 96);
  v16 = *(a1 + 16);
  *(v14 + 16) = *a1;
  *(v14 + 32) = v16;
  v17 = *(a1 + 48);
  *(v14 + 48) = *(a1 + 32);
  *(v14 + 64) = v17;
  sub_1E5C4BA98(a1, v19);
  sub_1E5C28160();
  return sub_1E5C9C8B0();
}

uint64_t sub_1E5C4AACC@<X0>(uint64_t a1@<X8>)
{
  sub_1E5C9C1B0();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  result = sub_1E5C9C560();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_1E5C4ABA4(uint64_t a1)
{
  v2 = *a1;
  if (*(*a1 + 16) >= 6uLL)
  {
    v3 = 6;
  }

  else
  {
    v3 = *(*a1 + 16);
  }

  v4 = *(type metadata accessor for SearchHistoryItem() - 8);
  v13[13] = sub_1E5C4B720(v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), 0, (2 * v3) | 1);
  swift_getKeyPath();
  v5 = swift_allocObject();
  v6 = *(a1 + 80);
  *(v5 + 80) = *(a1 + 64);
  *(v5 + 96) = v6;
  *(v5 + 112) = *(a1 + 96);
  v7 = *(a1 + 16);
  *(v5 + 16) = *a1;
  *(v5 + 32) = v7;
  v8 = *(a1 + 48);
  *(v5 + 48) = *(a1 + 32);
  *(v5 + 64) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1E5C4BA28;
  *(v9 + 24) = v5;
  sub_1E5C4BA98(a1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054908, &qword_1E5CA1430);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054910, &qword_1E5CA1438);
  sub_1E5C27F74(&qword_1ED054918, &qword_1ED054908, &qword_1E5CA1430);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0548F0, &qword_1E5CA13F0);
  v11 = sub_1E5C27F74(&qword_1ED0548F8, &qword_1ED0548F0, &qword_1E5CA13F0);
  v13[0] = v10;
  v13[1] = v11;
  swift_getOpaqueTypeConformance2();
  return sub_1E5C9C950();
}

uint64_t sub_1E5C4ADE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27[1] = a4;
  v7 = type metadata accessor for SearchHistoryItem();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0548F0, &qword_1E5CA13F0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v27 - v13;
  sub_1E5C4BAD0(a2, v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v8 + 80) + 120) & ~*(v8 + 80);
  v16 = swift_allocObject();
  v17 = *(a3 + 80);
  *(v16 + 80) = *(a3 + 64);
  *(v16 + 96) = v17;
  *(v16 + 112) = *(a3 + 96);
  v18 = *(a3 + 16);
  *(v16 + 16) = *a3;
  *(v16 + 32) = v18;
  v19 = *(a3 + 48);
  *(v16 + 48) = *(a3 + 32);
  *(v16 + 64) = v19;
  sub_1E5C4BB34(v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  v27[4] = a3;
  v27[5] = a2;
  sub_1E5C4BA98(a3, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054928, &qword_1E5CA1448);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED054930, &qword_1E5CA1450);
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED054938, &qword_1E5CA1458);
  v22 = sub_1E5C4BC08();
  v23 = sub_1E5C4BD38();
  v28[0] = v20;
  v28[1] = MEMORY[0x1E6981CD8];
  v28[2] = v21;
  v28[3] = v21;
  v28[4] = v22;
  v28[5] = MEMORY[0x1E6981CD0];
  v28[6] = v23;
  v28[7] = v23;
  swift_getOpaqueTypeConformance2();
  sub_1E5C9C8A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054978, &qword_1E5CA1470);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1E5CA12B0;
  v28[0] = a1;
  *(v24 + 32) = sub_1E5C9D050();
  *(v24 + 40) = v25;
  sub_1E5C27F74(&qword_1ED0548F8, &qword_1ED0548F0, &qword_1E5CA13F0);
  sub_1E5C9C5B0();

  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1E5C4B120(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054930, &qword_1E5CA1450);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v18 - v6);
  v9 = *a2;
  v8 = a2[1];
  *v7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054858, &qword_1E5CA1290);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for SearchHistoryItemView();
  v11 = v7 + *(v10 + 20);
  *v11 = *(a1 + 8);
  *(v11 + 2) = *(a1 + 24);
  v12 = (v7 + *(v10 + 24));
  *v12 = v9;
  v12[1] = v8;
  v13 = objc_allocWithZone(MEMORY[0x1E69DC888]);

  [v13 initWithRed:0.0784313725 green:0.0784313725 blue:0.0784313725 alpha:1.0];
  v14 = sub_1E5C9C780();
  v15 = sub_1E5C9C450();
  v16 = v7 + *(v4 + 36);
  *v16 = v14;
  v16[8] = v15;
  sub_1E5C9C9E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054938, &qword_1E5CA1458);
  sub_1E5C4BC08();
  sub_1E5C4BD38();
  sub_1E5C9C760();
  return sub_1E5C3177C(v7, &qword_1ED054930, &qword_1E5CA1450);
}

uint64_t sub_1E5C4B31C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E5C9BC90();
  v5 = v4;
  v6 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054938, &qword_1E5CA1458) + 36));
  v7 = *(sub_1E5C9C010() + 20);
  v8 = *MEMORY[0x1E697F468];
  v9 = sub_1E5C9C1C0();
  (*(*(v9 - 8) + 104))(&v6[v7], v8, v9);
  *v6 = v5;
  *(v6 + 1) = v5;
  *&v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054970, &qword_1E5CA1468) + 36)] = 256;
  return sub_1E5C3165C(a1, a2, &qword_1ED054930, &qword_1E5CA1450);
}

uint64_t sub_1E5C4B410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054938, &qword_1E5CA1458) + 36));
  v5 = *(sub_1E5C9C010() + 20);
  v6 = *MEMORY[0x1E697F468];
  v7 = sub_1E5C9C1C0();
  (*(*(v7 - 8) + 104))(&v4[v5], v6, v7);
  __asm { FMOV            V0.2D, #8.0 }

  *v4 = _Q0;
  *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054970, &qword_1E5CA1468) + 36)] = 256;
  return sub_1E5C3165C(a1, a2, &qword_1ED054930, &qword_1E5CA1450);
}

unint64_t sub_1E5C4B50C()
{
  result = qword_1ED0548E8;
  if (!qword_1ED0548E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0548E0, &qword_1E5CA13E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0548F0, &qword_1E5CA13F0);
    sub_1E5C27F74(&qword_1ED0548F8, &qword_1ED0548F0, &qword_1E5CA13F0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0548E8);
  }

  return result;
}

uint64_t sub_1E5C4B600(uint64_t a1)
{
  v2 = sub_1E5C9BF80();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1E5C9C0B0();
}

uint64_t sub_1E5C4B6C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E5C9C140();
  *a1 = result;
  return result;
}

uint64_t sub_1E5C4B6F4(uint64_t *a1)
{
  v1 = *a1;

  return sub_1E5C9C150();
}

uint64_t sub_1E5C4B720(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v46 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054920, &qword_1E5CA1440);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = (&v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x1EEE9AC00](v8);
  v47 = &v40 - v12;
  v13 = a3 >> 1;
  v14 = MEMORY[0x1E69E7CC0];
  if (a3 >> 1 == a2)
  {
    v15 = 0;
LABEL_31:
    v37 = v14[3];
    if (v37 < 2)
    {
      return v14;
    }

    v38 = v37 >> 1;
    v23 = __OFSUB__(v38, v15);
    v39 = v38 - v15;
    if (!v23)
    {
      v14[2] = v39;
      return v14;
    }
  }

  else
  {
    v16 = 0;
    v15 = 0;
    v17 = *(v6 + 80);
    v43 = v17;
    v44 = (v17 + 32) & ~v17;
    v18 = MEMORY[0x1E69E7CC0] + v44;
    if (a2 <= v13)
    {
      v19 = v13;
    }

    else
    {
      v19 = a2;
    }

    v45 = v19;
    v20 = MEMORY[0x1E69E7CC0];
    v41 = v6;
    v42 = v10;
    while (v45 != a2)
    {
      v21 = v46 + *(*(type metadata accessor for SearchHistoryItem() - 8) + 72) * a2;
      v22 = *(v5 + 48);
      *v10 = v16;
      result = sub_1E5C4BAD0(v21, v10 + v22);
      if (__OFADD__(v16, 1))
      {
        goto LABEL_36;
      }

      result = sub_1E5C4BDF0(v10, v47);
      if (v15)
      {
        v14 = v20;
        v23 = __OFSUB__(v15--, 1);
        if (v23)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v24 = v20[3];
        if (((v24 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_38;
        }

        v25 = v5;
        v26 = v24 & 0xFFFFFFFFFFFFFFFELL;
        if (v26 <= 1)
        {
          v27 = 1;
        }

        else
        {
          v27 = v26;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054980, &unk_1E5CA14B0);
        v28 = *(v6 + 72);
        v29 = v44;
        v14 = swift_allocObject();
        result = _swift_stdlib_malloc_size(v14);
        if (!v28)
        {
          goto LABEL_39;
        }

        v30 = result - v29;
        if (result - v29 == 0x8000000000000000 && v28 == -1)
        {
          goto LABEL_40;
        }

        v32 = v30 / v28;
        v14[2] = v27;
        v14[3] = 2 * (v30 / v28);
        v33 = v14 + v29;
        v34 = v20[3] >> 1;
        v35 = v34 * v28;
        if (v20[2])
        {
          if (v14 < v20 || v33 >= v20 + v44 + v35)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v14 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v20[2] = 0;
        }

        v18 = &v33[v35];
        v36 = (v32 & 0x7FFFFFFFFFFFFFFFLL) - v34;

        v5 = v25;
        v6 = v41;
        v10 = v42;
        v23 = __OFSUB__(v36, 1);
        v15 = v36 - 1;
        if (v23)
        {
          goto LABEL_37;
        }
      }

      ++a2;
      result = sub_1E5C4BDF0(v47, v18);
      v18 += *(v6 + 72);
      ++v16;
      v20 = v14;
      if (v13 == a2)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
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
  }

  __break(1u);
  return result;
}

uint64_t sub_1E5C4BA30(char *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054920, &qword_1E5CA1440);
  return v4(v5, &a1[*(v6 + 48)]);
}

uint64_t sub_1E5C4BAD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchHistoryItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5C4BB34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchHistoryItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5C4BB98()
{
  v1 = *(type metadata accessor for SearchHistoryItem() - 8);
  v2 = *(v0 + 112);
  return (*(v0 + 104))(v0 + ((*(v1 + 80) + 120) & ~*(v1 + 80)));
}

unint64_t sub_1E5C4BC08()
{
  result = qword_1ED054940;
  if (!qword_1ED054940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED054930, &qword_1E5CA1450);
    sub_1E5C4BCF0(&qword_1ED054948, type metadata accessor for SearchHistoryItemView);
    sub_1E5C27F74(&qword_1ED054950, &qword_1ED054958, &qword_1E5CA1460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054940);
  }

  return result;
}

uint64_t sub_1E5C4BCF0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E5C4BD38()
{
  result = qword_1ED054960;
  if (!qword_1ED054960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED054938, &qword_1E5CA1458);
    sub_1E5C4BC08();
    sub_1E5C27F74(&qword_1ED054968, &qword_1ED054970, &qword_1E5CA1468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054960);
  }

  return result;
}

uint64_t sub_1E5C4BDF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054920, &qword_1E5CA1440);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E5C4BE64()
{
  result = qword_1ED0549B0;
  if (!qword_1ED0549B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0549A8, &qword_1E5CA14E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0549B0);
  }

  return result;
}

uint64_t sub_1E5C4BEE8()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  return v1();
}

unint64_t sub_1E5C4BF18()
{
  result = qword_1ED0549C0;
  if (!qword_1ED0549C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED054990, &qword_1E5CA14C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053E60, &qword_1E5C9DE20);
    sub_1E5C27F74(&qword_1ED053E70, &qword_1ED053E60, &qword_1E5C9DE20);
    swift_getOpaqueTypeConformance2();
    sub_1E5C27F74(&qword_1ED0549C8, &qword_1ED0549D0, &qword_1E5CA1520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0549C0);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = v0[2];

  v2 = v0[6];

  v3 = v0[7];

  v4 = v0[10];

  v5 = v0[12];

  v6 = v0[14];

  return swift_deallocObject();
}

uint64_t sub_1E5C4C0A0()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  return v1();
}

unint64_t sub_1E5C4C0C8()
{
  result = qword_1ED0549E8;
  if (!qword_1ED0549E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0549F0, &qword_1E5CA1538);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED054888, &qword_1E5CA13A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED054880, &qword_1E5CA13A0);
    sub_1E5C27F74(&qword_1ED0548A8, &qword_1ED054880, &qword_1E5CA13A0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0549E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TVSearchViewModifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
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

uint64_t sub_1E5C4C2F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0549F8, &qword_1E5CA15C8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

unint64_t sub_1E5C4C3A4()
{
  result = qword_1ED054A00;
  if (!qword_1ED054A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0549F8, &qword_1E5CA15C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054A00);
  }

  return result;
}

__n128 SearchLandingFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 176);
  a2[10] = *(a1 + 160);
  a2[11] = v2;
  v3 = *(a1 + 208);
  a2[12] = *(a1 + 192);
  a2[13] = v3;
  v4 = *(a1 + 112);
  a2[6] = *(a1 + 96);
  a2[7] = v4;
  v5 = *(a1 + 144);
  a2[8] = *(a1 + 128);
  a2[9] = v5;
  v6 = *(a1 + 48);
  a2[2] = *(a1 + 32);
  a2[3] = v6;
  v7 = *(a1 + 80);
  a2[4] = *(a1 + 64);
  a2[5] = v7;
  result = *a1;
  v9 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v9;
  return result;
}

uint64_t SearchLandingFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, uint64_t a5, char a6)
{
  v116 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054A08, &qword_1E5CA15E0);
  v114 = *(v11 - 8);
  v115 = v11;
  v12 = *(v114 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v113 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v113 - v20;
  result = MEMORY[0x1EEE9AC00](v19);
  v24 = &v113 - v23;
  v25 = v6[11];
  v128 = v6[10];
  v129 = v25;
  v26 = v6[13];
  v130 = v6[12];
  v131 = v26;
  v27 = v6[7];
  v124 = v6[6];
  v125 = v27;
  v28 = v6[9];
  v126 = v6[8];
  v127 = v28;
  v29 = v6[3];
  v120 = v6[2];
  v121 = v29;
  v30 = v6[5];
  v122 = v6[4];
  v123 = v30;
  v31 = v6[1];
  v118 = *v6;
  v119 = v31;
  if (!a6)
  {
    if (*(a4 + 16))
    {
      v35 = *a2;
      v36 = *(a2 + 8);
      v37 = *(a2 + 16);
    }

    else
    {
      v35 = 0xD000000000000014;
      v36 = 0x80000001E5CA7F20;
      v53 = *a2;
      v54 = *(a2 + 8);
      v55 = *(a2 + 16);

      sub_1E5C27EC4(v53, v54, v55);
      v37 = 0;
      *a2 = 0xD000000000000014;
      *(a2 + 8) = 0x80000001E5CA7F20;
      *(a2 + 16) = 0;
    }

    sub_1E5C27EC4(v35, v36, v37);
    *a2 = a4;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054A10, &qword_1E5CA15E8);
    v57 = v56[12];
    v58 = v56[16];
    v59 = v56[20];
    v60 = &v18[v56[24]];
    v117[0] = 2;
    sub_1E5C4CF3C();
    sub_1E5C9CE40();
    v61 = *MEMORY[0x1E6999B60];
    v62 = sub_1E5C9CAC0();
    (*(*(v62 - 8) + 104))(&v18[v58], v61, v62);
    v63 = swift_allocObject();
    v64 = v129;
    v63[11] = v128;
    v63[12] = v64;
    v65 = v131;
    v63[13] = v130;
    v63[14] = v65;
    v66 = v125;
    v63[7] = v124;
    v63[8] = v66;
    v67 = v127;
    v63[9] = v126;
    v63[10] = v67;
    v68 = v121;
    v63[3] = v120;
    v63[4] = v68;
    v69 = v123;
    v63[5] = v122;
    v63[6] = v69;
    v70 = v119;
    v63[1] = v118;
    v63[2] = v70;
    *v60 = &unk_1E5CA1600;
    *(v60 + 1) = v63;
    sub_1E5C4DE54(&v118, v117);
    sub_1E5C9CD70();
    v71 = *MEMORY[0x1E6999B48];
    v72 = sub_1E5C9CAB0();
    (*(*(v72 - 8) + 104))(&v18[v59], v71, v72);
    v74 = v114;
    v73 = v115;
    (*(v114 + 104))(v18, *MEMORY[0x1E6999AD8], v115);
    v75 = v116;
    v76 = *v116;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v76 = sub_1E5C4E61C(0, v76[2] + 1, 1, v76, &qword_1ED054A78, &qword_1E5CA17D8, &qword_1ED054A08, &qword_1E5CA15E0);
    }

    v78 = v76[2];
    v77 = v76[3];
    if (v78 >= v77 >> 1)
    {
      v76 = sub_1E5C4E61C(v77 > 1, v78 + 1, 1, v76, &qword_1ED054A78, &qword_1E5CA17D8, &qword_1ED054A08, &qword_1E5CA15E0);
    }

    v76[2] = v78 + 1;
    result = (*(v74 + 32))(v76 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v78, v18, v73);
    goto LABEL_24;
  }

  if (a6 == 1)
  {
    v32 = *a2;
    v33 = *(a2 + 8);
    v34 = *(a2 + 16);

    result = sub_1E5C27EC4(v32, v33, v34);
    *a2 = a4;
    *(a2 + 8) = a5;
    *(a2 + 16) = 0;
    return result;
  }

  if (!(a4 | a5))
  {
    sub_1E5C27EC4(*a2, *(a2 + 8), *(a2 + 16));
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 2;
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054A10, &qword_1E5CA15E8);
    v80 = v79[12];
    v81 = v79[16];
    v82 = v79[20];
    v83 = &v21[v79[24]];
    v117[0] = 0;
    sub_1E5C4CF3C();
    sub_1E5C9CE40();
    v84 = *MEMORY[0x1E6999B60];
    v85 = sub_1E5C9CAC0();
    (*(*(v85 - 8) + 104))(&v21[v81], v84, v85);
    v86 = swift_allocObject();
    v87 = v129;
    v86[11] = v128;
    v86[12] = v87;
    v88 = v131;
    v86[13] = v130;
    v86[14] = v88;
    v89 = v125;
    v86[7] = v124;
    v86[8] = v89;
    v90 = v127;
    v86[9] = v126;
    v86[10] = v90;
    v91 = v121;
    v86[3] = v120;
    v86[4] = v91;
    v92 = v123;
    v86[5] = v122;
    v86[6] = v92;
    v93 = v119;
    v86[1] = v118;
    v86[2] = v93;
    *v83 = &unk_1E5CA1610;
    *(v83 + 1) = v86;
    sub_1E5C4DE54(&v118, v117);
    sub_1E5C9CD70();
    v94 = *MEMORY[0x1E6999B48];
    v95 = sub_1E5C9CAB0();
    (*(*(v95 - 8) + 104))(&v21[v82], v94, v95);
    v97 = v114;
    v96 = v115;
    (*(v114 + 104))(v21, *MEMORY[0x1E6999AD8], v115);
    v75 = v116;
    v76 = *v116;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v76 = sub_1E5C4E61C(0, v76[2] + 1, 1, v76, &qword_1ED054A78, &qword_1E5CA17D8, &qword_1ED054A08, &qword_1E5CA15E0);
    }

    v99 = v76[2];
    v98 = v76[3];
    if (v99 >= v98 >> 1)
    {
      v76 = sub_1E5C4E61C(v98 > 1, v99 + 1, 1, v76, &qword_1ED054A78, &qword_1E5CA17D8, &qword_1ED054A08, &qword_1E5CA15E0);
    }

    v76[2] = v99 + 1;
    result = (*(v97 + 32))(v76 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v99, v21, v96);
LABEL_24:
    *v75 = v76;
    return result;
  }

  if (a4 ^ 1 | a5)
  {
    if (*(a2 + 16) == 1)
    {
      return result;
    }

    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054A10, &qword_1E5CA15E8);
    v101 = v100[12];
    v102 = v100[16];
    v103 = v100[20];
    v104 = &v24[v100[24]];
    v117[0] = 1;
    sub_1E5C4CF3C();
    sub_1E5C9CE40();
    v105 = *MEMORY[0x1E6999B60];
    v106 = sub_1E5C9CAC0();
    (*(*(v106 - 8) + 104))(&v24[v102], v105, v106);
    *v104 = &unk_1E5CA1618;
    *(v104 + 1) = 0;
    sub_1E5C9CD70();
    v107 = *MEMORY[0x1E6999B48];
    v108 = sub_1E5C9CAB0();
    (*(*(v108 - 8) + 104))(&v24[v103], v107, v108);
    v110 = v114;
    v109 = v115;
    (*(v114 + 104))(v24, *MEMORY[0x1E6999AD8], v115);
    v49 = v116;
    v50 = *v116;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v50 = sub_1E5C4E61C(0, v50[2] + 1, 1, v50, &qword_1ED054A78, &qword_1E5CA17D8, &qword_1ED054A08, &qword_1E5CA15E0);
    }

    v112 = v50[2];
    v111 = v50[3];
    if (v112 >= v111 >> 1)
    {
      v50 = sub_1E5C4E61C(v111 > 1, v112 + 1, 1, v50, &qword_1ED054A78, &qword_1E5CA17D8, &qword_1ED054A08, &qword_1E5CA15E0);
    }

    v50[2] = v112 + 1;
    result = (*(v110 + 32))(v50 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v112, v24, v109);
  }

  else
  {
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054A10, &qword_1E5CA15E8);
    v39 = v38[12];
    v40 = v38[16];
    v41 = v38[20];
    v42 = &v15[v38[24]];
    v117[0] = 3;
    sub_1E5C4CF3C();
    sub_1E5C9CE40();
    sub_1E5C9CD70();
    v43 = *MEMORY[0x1E6999B60];
    v44 = sub_1E5C9CAC0();
    (*(*(v44 - 8) + 104))(&v15[v40], v43, v44);
    v45 = *MEMORY[0x1E6999B40];
    v46 = sub_1E5C9CAB0();
    (*(*(v46 - 8) + 104))(&v15[v41], v45, v46);
    *v42 = &unk_1E5CA15F0;
    *(v42 + 1) = 0;
    v48 = v114;
    v47 = v115;
    (*(v114 + 104))(v15, *MEMORY[0x1E6999AD8], v115);
    v49 = v116;
    v50 = *v116;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v50 = sub_1E5C4E61C(0, v50[2] + 1, 1, v50, &qword_1ED054A78, &qword_1E5CA17D8, &qword_1ED054A08, &qword_1E5CA15E0);
    }

    v52 = v50[2];
    v51 = v50[3];
    if (v52 >= v51 >> 1)
    {
      v50 = sub_1E5C4E61C(v51 > 1, v52 + 1, 1, v50, &qword_1ED054A78, &qword_1E5CA17D8, &qword_1ED054A08, &qword_1E5CA15E0);
    }

    v50[2] = v52 + 1;
    result = (*(v48 + 32))(v50 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v52, v15, v47);
  }

  *v49 = v50;
  return result;
}

unint64_t sub_1E5C4CF3C()
{
  result = qword_1ED054A18;
  if (!qword_1ED054A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054A18);
  }

  return result;
}

uint64_t sub_1E5C4CF90()
{
  *(v0 + 40) = sub_1E5C9CD60();
  *(v0 + 48) = sub_1E5C9CD50();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 2;
  v1 = *(MEMORY[0x1E6999AF0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054A68, &qword_1E5CA17C8);
  *v2 = v0;
  v2[1] = sub_1E5C4D07C;

  return MEMORY[0x1EEE01A40](v0 + 16, v3);
}

uint64_t sub_1E5C4D07C()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v7 = *v0;

  v5 = sub_1E5C9CD10();

  return MEMORY[0x1EEE6DFA0](sub_1E5C4E870, v5, v4);
}

uint64_t sub_1E5C4D1B8(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = sub_1E5C9CD60();
  v2[14] = sub_1E5C9CD50();
  v4 = *(a2 + 72);
  v8 = (*(a2 + 64) + **(a2 + 64));
  v5 = *(*(a2 + 64) + 4);
  v6 = swift_task_alloc();
  v2[15] = v6;
  *v6 = v2;
  v6[1] = sub_1E5C4D2C4;

  return v8();
}

uint64_t sub_1E5C4D2C4(uint64_t a1)
{
  v4 = *(*v2 + 120);
  v5 = *v2;
  *(v5 + 128) = v1;

  if (v1)
  {
    v6 = *(v5 + 104);
    v7 = *(v5 + 112);
    v9 = sub_1E5C9CD10();
    *(v5 + 152) = v9;
    *(v5 + 160) = v8;

    return MEMORY[0x1EEE6DFA0](sub_1E5C4D650, v9, v8);
  }

  else
  {
    *(v5 + 64) = a1;
    *(v5 + 136) = a1;
    *(v5 + 72) = 0;
    *(v5 + 80) = 0;
    v10 = *(MEMORY[0x1E6999AF0] + 4);
    v11 = swift_task_alloc();
    *(v5 + 144) = v11;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054A68, &qword_1E5CA17C8);
    *v11 = v5;
    v11[1] = sub_1E5C4D48C;
    v13 = *(v5 + 96);

    return MEMORY[0x1EEE01A40](v5 + 64, v12);
  }
}

uint64_t sub_1E5C4D48C()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 112);
  v4 = *(*v0 + 104);
  v8 = *v0;

  v6 = sub_1E5C9CD10();

  return MEMORY[0x1EEE6DFA0](sub_1E5C4D5EC, v6, v5);
}

uint64_t sub_1E5C4D5EC()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E5C4D650()
{
  if (qword_1ED053E00 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 128);
  v2 = sub_1E5C9BD40();
  __swift_project_value_buffer(v2, qword_1ED065C70);
  v3 = v1;
  v4 = sub_1E5C9BD20();
  v5 = sub_1E5C9CDC0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 128);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1E5C20000, v4, v5, "Failed to fetch landing page: %@", v7, 0xCu);
    sub_1E5C4E804(v8);
    MEMORY[0x1E693A130](v8, -1, -1);
    MEMORY[0x1E693A130](v7, -1, -1);
  }

  v11 = *(v0 + 128);

  swift_getErrorValue();
  v13 = *(v0 + 16);
  v12 = *(v0 + 24);
  v14 = *(v0 + 32);
  v15 = sub_1E5C9D080();
  *(v0 + 168) = v16;
  *(v0 + 40) = v15;
  *(v0 + 48) = v16;
  *(v0 + 56) = 1;
  v17 = *(MEMORY[0x1E6999AF0] + 4);
  v18 = swift_task_alloc();
  *(v0 + 176) = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054A68, &qword_1E5CA17C8);
  *v18 = v0;
  v18[1] = sub_1E5C4D860;
  v20 = *(v0 + 96);

  return MEMORY[0x1EEE01A40](v0 + 40, v19);
}

uint64_t sub_1E5C4D860()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 168);
  v7 = *v0;

  v4 = *(v1 + 160);
  v5 = *(v1 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1E5C4D9A4, v5, v4);
}

uint64_t sub_1E5C4D9A4()
{
  v1 = v0[16];
  v2 = v0[14];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E5C4DA14(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  sub_1E5C9CD60();
  *(v2 + 24) = sub_1E5C9CD50();
  v4 = sub_1E5C9CD10();

  return MEMORY[0x1EEE6DFA0](sub_1E5C4DAAC, v4, v3);
}

uint64_t sub_1E5C4DAAC()
{
  v2 = v0[2];
  v1 = v0[3];

  v4 = *(v2 + 192);
  v5 = *(v2 + 200);
  v4(v3);
  v6 = v0[1];

  return v6();
}

uint64_t sub_1E5C4DB1C()
{
  *(v0 + 40) = sub_1E5C9CD60();
  *(v0 + 48) = sub_1E5C9CD50();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 2;
  v1 = *(MEMORY[0x1E6999AF0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054A68, &qword_1E5CA17C8);
  *v2 = v0;
  v2[1] = sub_1E5C4DC08;

  return MEMORY[0x1EEE01A40](v0 + 16, v3);
}

uint64_t sub_1E5C4DC08()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v7 = *v0;

  v5 = sub_1E5C9CD10();

  return MEMORY[0x1EEE6DFA0](sub_1E5C4DD44, v5, v4);
}

uint64_t sub_1E5C4DD44()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E5C4DDBC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5C4E86C;

  return sub_1E5C4DA14(a1, v1 + 16);
}

uint64_t objectdestroyTm_0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[15];

  v8 = v0[17];

  v9 = v0[19];

  v10 = v0[21];

  v11 = v0[23];

  v12 = v0[25];

  v13 = v0[27];

  v14 = v0[29];

  return swift_deallocObject();
}

uint64_t sub_1E5C4DF2C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5C4DFC4;

  return sub_1E5C4D1B8(a1, v1 + 16);
}

uint64_t sub_1E5C4DFC4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_1E5C4E0BC()
{
  result = qword_1ED054A20;
  if (!qword_1ED054A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054A20);
  }

  return result;
}

unint64_t sub_1E5C4E114()
{
  result = qword_1ED054A28;
  if (!qword_1ED054A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054A28);
  }

  return result;
}

unint64_t sub_1E5C4E16C()
{
  result = qword_1ED054A30;
  if (!qword_1ED054A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054A30);
  }

  return result;
}

unint64_t sub_1E5C4E1C4()
{
  result = qword_1EE2C44D0[0];
  if (!qword_1EE2C44D0[0])
  {
    type metadata accessor for SearchState();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2C44D0);
  }

  return result;
}

__n128 __swift_memcpy224_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t sub_1E5C4E258(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
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

uint64_t sub_1E5C4E2A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 224) = 1;
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

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SearchQueryMethod(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SearchQueryMethod(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E5C4E47C()
{
  result = qword_1ED054A38;
  if (!qword_1ED054A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054A38);
  }

  return result;
}

char *sub_1E5C4E4D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054A50, &qword_1E5CA17B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

size_t sub_1E5C4E61C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t sub_1E5C4E804(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054A70, &qword_1E5CA17D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SearchResultsRequest.QueryMode.init(rawValue:)()
{
  v0 = sub_1E5C9CF10();

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

uint64_t SearchResultsRequest.QueryMode.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6E656D6572636E69;
  }

  else
  {
    return 0x6574656C706D6F63;
  }
}

uint64_t sub_1E5C4E908(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6E656D6572636E69;
  }

  else
  {
    v4 = 0x6574656C706D6F63;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xEB000000006C6174;
  }

  if (*a2)
  {
    v6 = 0x6E656D6572636E69;
  }

  else
  {
    v6 = 0x6574656C706D6F63;
  }

  if (*a2)
  {
    v7 = 0xEB000000006C6174;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1E5C9D060();
  }

  return v9 & 1;
}

uint64_t sub_1E5C4E9B8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1E5C9CF10();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1E5C4EA18(uint64_t *a1@<X8>)
{
  v2 = 0x6574656C706D6F63;
  if (*v1)
  {
    v2 = 0x6E656D6572636E69;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEB000000006C6174;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1E5C4EB14()
{
  result = qword_1ED054A80;
  if (!qword_1ED054A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054A80);
  }

  return result;
}

uint64_t sub_1E5C4EB68()
{
  v1 = *v0;
  sub_1E5C9D0D0();
  sub_1E5C9CC60();

  return sub_1E5C9D110();
}

uint64_t sub_1E5C4EBF4()
{
  *v0;
  sub_1E5C9CC60();
}

uint64_t sub_1E5C4EC6C()
{
  v1 = *v0;
  sub_1E5C9D0D0();
  sub_1E5C9CC60();

  return sub_1E5C9D110();
}

unint64_t sub_1E5C4ED04()
{
  result = qword_1ED054A88;
  if (!qword_1ED054A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054A88);
  }

  return result;
}

uint64_t sub_1E5C4ED58()
{
  sub_1E5C9CC60();
}

uint64_t SearchItemPlaceholder.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SearchItemPlaceholder.referenceIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SearchItemPlaceholder.type.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  a1[1] = v2;
}

uint64_t SearchItemPlaceholder.editorialCardIdentifier.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

__n128 SearchItemPlaceholder.init(identifier:type:referenceIdentifier:referenceType:editorialCardIdentifier:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  result = *a3;
  *(a9 + 40) = *a3;
  *(a9 + 16) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8;
  return result;
}

unint64_t sub_1E5C4EF78()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x636E657265666572;
  v4 = 1701869940;
  if (v1 != 3)
  {
    v4 = 0xD000000000000017;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000013;
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

uint64_t sub_1E5C4F028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5C4FF10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5C4F050(uint64_t a1)
{
  v2 = sub_1E5C4F33C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C4F08C(uint64_t a1)
{
  v2 = sub_1E5C4F33C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SearchItemPlaceholder.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054A90, &qword_1E5CA18E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v19 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v22 = v1[3];
  v23 = v10;
  v27 = *(v1 + 32);
  v11 = v1[5];
  v20 = v1[6];
  v21 = v11;
  v12 = v1[7];
  v19[1] = v1[8];
  v19[2] = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C4F33C();
  sub_1E5C9D130();
  LOBYTE(v25) = 0;
  v14 = v24;
  sub_1E5C9D000();
  if (!v14)
  {
    v15 = v27;
    v17 = v20;
    v16 = v21;
    LOBYTE(v25) = 1;
    sub_1E5C9D000();
    LOBYTE(v25) = v15;
    v28 = 2;
    sub_1E5C4F390();
    sub_1E5C9D030();
    v25 = v16;
    v26 = v17;
    v28 = 3;
    sub_1E5C4F3E4();

    sub_1E5C9D030();

    LOBYTE(v25) = 4;
    sub_1E5C9CFD0();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1E5C4F33C()
{
  result = qword_1ED054A98;
  if (!qword_1ED054A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054A98);
  }

  return result;
}

unint64_t sub_1E5C4F390()
{
  result = qword_1ED054AA0;
  if (!qword_1ED054AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054AA0);
  }

  return result;
}

unint64_t sub_1E5C4F3E4()
{
  result = qword_1ED054AA8;
  if (!qword_1ED054AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054AA8);
  }

  return result;
}

uint64_t SearchItemPlaceholder.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054AB0, &qword_1E5CA18E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C4F33C();
  sub_1E5C9D120();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v34) = 0;
  v11 = sub_1E5C9CF70();
  v28 = v12;
  LOBYTE(v34) = 1;
  v13 = sub_1E5C9CF70();
  *(&v27 + 1) = v14;
  *&v27 = v13;
  LOBYTE(v29) = 2;
  sub_1E5C4F7C4();
  sub_1E5C9CFA0();
  v43 = v34;
  LOBYTE(v29) = 3;
  sub_1E5C4F818();
  sub_1E5C9CFA0();
  v25 = v34;
  v26 = v35;
  v44 = 4;
  v15 = sub_1E5C9CF40();
  v17 = v16;
  v18 = v15;
  (*(v6 + 8))(v9, v5);
  v19 = *(&v27 + 1);
  *&v29 = v11;
  *(&v29 + 1) = v28;
  v20 = v27;
  v30 = v27;
  v21 = v43;
  LOBYTE(v31) = v43;
  *(&v31 + 1) = v25;
  *&v32 = v26;
  *(&v32 + 1) = v18;
  v33 = v17;
  *(a2 + 64) = v17;
  v22 = v32;
  *(a2 + 32) = v31;
  *(a2 + 48) = v22;
  v23 = v30;
  *a2 = v29;
  *(a2 + 16) = v23;
  sub_1E5C4F86C(&v29, &v34);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v34 = v11;
  v35 = v28;
  v36 = v20;
  v37 = v19;
  v38 = v21;
  v39 = v25;
  v40 = v26;
  v41 = v18;
  v42 = v17;
  return sub_1E5C4F8A4(&v34);
}

unint64_t sub_1E5C4F7C4()
{
  result = qword_1ED054AB8;
  if (!qword_1ED054AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054AB8);
  }

  return result;
}

unint64_t sub_1E5C4F818()
{
  result = qword_1ED054AC0;
  if (!qword_1ED054AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054AC0);
  }

  return result;
}

uint64_t SearchItemPlaceholder.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = *(v0 + 32);
  sub_1E5C9CC60();
  sub_1E5C9CC60();
  sub_1E5C4ED58();
  if (!v6)
  {
    MEMORY[0x1E69399F0](0);
    if (v8)
    {
      goto LABEL_3;
    }

    return sub_1E5C9D0F0();
  }

  MEMORY[0x1E69399F0](1);
  sub_1E5C9CC60();
  if (!v8)
  {
    return sub_1E5C9D0F0();
  }

LABEL_3:
  sub_1E5C9D0F0();

  return sub_1E5C9CC60();
}

uint64_t SearchItemPlaceholder.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = *(v0 + 32);
  sub_1E5C9D0D0();
  sub_1E5C9CC60();
  sub_1E5C9CC60();
  sub_1E5C4ED58();
  if (!v6)
  {
    MEMORY[0x1E69399F0](0);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1E5C9D0F0();
    return sub_1E5C9D110();
  }

  MEMORY[0x1E69399F0](1);
  sub_1E5C9CC60();
  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1E5C9D0F0();
  sub_1E5C9CC60();
  return sub_1E5C9D110();
}

uint64_t sub_1E5C4FAE8()
{
  sub_1E5C9D0D0();
  SearchItemPlaceholder.hash(into:)();
  return sub_1E5C9D110();
}

uint64_t sub_1E5C4FB2C()
{
  sub_1E5C9D0D0();
  SearchItemPlaceholder.hash(into:)();
  return sub_1E5C9D110();
}

BOOL _s13FitnessSearch0B15ItemPlaceholderV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v11 = *(a2 + 40);
  v10 = *(a2 + 48);
  v13 = *(a2 + 56);
  v14 = *(a1 + 56);
  v15 = *(a2 + 64);
  v16 = *(a1 + 64);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1E5C9D060() & 1) == 0 || (v2 != v7 || v3 != v8) && (sub_1E5C9D060() & 1) == 0 || (sub_1E5C762CC(v4, v9) & 1) == 0)
  {
    return 0;
  }

  if (v6)
  {
    if (!v10)
    {

      return 0;
    }

    if ((v5 != v11 || v6 != v10) && (sub_1E5C9D060() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {

    if (v10)
    {
      return 0;
    }
  }

  if (!v16)
  {
    return !v15;
  }

  return v15 && (v14 == v13 && v16 == v15 || (sub_1E5C9D060() & 1) != 0);
}

unint64_t sub_1E5C4FCE8()
{
  result = qword_1ED054AC8;
  if (!qword_1ED054AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054AC8);
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1E5C4FD60(uint64_t a1, int a2)
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

uint64_t sub_1E5C4FDA8(uint64_t result, int a2, int a3)
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

unint64_t sub_1E5C4FE0C()
{
  result = qword_1ED054AD0;
  if (!qword_1ED054AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054AD0);
  }

  return result;
}

unint64_t sub_1E5C4FE64()
{
  result = qword_1ED054AD8;
  if (!qword_1ED054AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054AD8);
  }

  return result;
}

unint64_t sub_1E5C4FEBC()
{
  result = qword_1ED054AE0;
  if (!qword_1ED054AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054AE0);
  }

  return result;
}

uint64_t sub_1E5C4FF10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1E5C9D060() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E5CA7F40 == a2 || (sub_1E5C9D060() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x636E657265666572 && a2 == 0xED00006570795465 || (sub_1E5C9D060() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E5CA7F60 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E5C9D060();

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