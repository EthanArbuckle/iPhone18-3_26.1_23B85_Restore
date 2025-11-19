unint64_t sub_25B77C508()
{
  result = qword_27FBA1DF0;
  if (!qword_27FBA1DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1DF0);
  }

  return result;
}

unint64_t sub_25B77C55C()
{
  result = qword_27FBA1DF8;
  if (!qword_27FBA1DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1DF8);
  }

  return result;
}

uint64_t sub_25B77C5C4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_25B78FD88();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 254)
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

  v13 = type metadata accessor for PrecipitationOutlook.State(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v9 = *(v14 + 48);
    v10 = a1 + a3[8];
    goto LABEL_3;
  }

  v15 = sub_25B78FF28();
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[9];

  return v16(v17, a2, v15);
}

uint64_t sub_25B77C758(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_25B78FD88();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 254)
  {
    *(a1 + a4[6]) = a2 + 1;
    return result;
  }

  v13 = type metadata accessor for PrecipitationOutlook.State(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[8];
    goto LABEL_3;
  }

  v15 = sub_25B78FF28();
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[9];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_25B77C8C8()
{
  result = sub_25B78FD88();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PrecipitationOutlook.State(319);
    if (v2 <= 0x3F)
    {
      result = sub_25B78FF28();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_25B77C9C8()
{
  sub_25B77CA50();
  if (v0 <= 0x3F)
  {
    sub_25B77CAA8();
    if (v1 <= 0x3F)
    {
      sub_25B77CB24();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_25B77CA50()
{
  if (!qword_27FBA1E68)
  {
    sub_25B790348();
    v0 = sub_25B7909B8();
    if (!v1)
    {
      atomic_store(v0, &qword_27FBA1E68);
    }
  }
}

void sub_25B77CAA8()
{
  if (!qword_27FBA1E70)
  {
    sub_25B790348();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBA1AF8, &unk_25B791E40);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27FBA1E70);
    }
  }
}

void sub_25B77CB24()
{
  if (!qword_27FBA1E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBA1AF8, &unk_25B791E40);
    sub_25B790348();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27FBA1E78);
    }
  }
}

uint64_t getEnumTagSinglePayload for PrecipitationOutlook.State.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PrecipitationOutlook.State.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PrecipitationOutlook.State.PrecipitatingCodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for PrecipitationOutlook.State.PrecipitatingCodingKeys(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for PrecipitationOutlook.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PrecipitationOutlook.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25B77CF74()
{
  result = qword_27FBA1E80;
  if (!qword_27FBA1E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1E80);
  }

  return result;
}

unint64_t sub_25B77CFCC()
{
  result = qword_27FBA1E88;
  if (!qword_27FBA1E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1E88);
  }

  return result;
}

unint64_t sub_25B77D024()
{
  result = qword_27FBA1E90;
  if (!qword_27FBA1E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1E90);
  }

  return result;
}

unint64_t sub_25B77D07C()
{
  result = qword_27FBA1E98;
  if (!qword_27FBA1E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1E98);
  }

  return result;
}

unint64_t sub_25B77D0D4()
{
  result = qword_27FBA1EA0;
  if (!qword_27FBA1EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1EA0);
  }

  return result;
}

unint64_t sub_25B77D12C()
{
  result = qword_27FBA1EA8;
  if (!qword_27FBA1EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1EA8);
  }

  return result;
}

unint64_t sub_25B77D184()
{
  result = qword_27FBA1EB0;
  if (!qword_27FBA1EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1EB0);
  }

  return result;
}

unint64_t sub_25B77D1DC()
{
  result = qword_27FBA1EB8;
  if (!qword_27FBA1EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1EB8);
  }

  return result;
}

unint64_t sub_25B77D234()
{
  result = qword_27FBA1EC0;
  if (!qword_27FBA1EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1EC0);
  }

  return result;
}

unint64_t sub_25B77D28C()
{
  result = qword_27FBA1EC8;
  if (!qword_27FBA1EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1EC8);
  }

  return result;
}

unint64_t sub_25B77D2E4()
{
  result = qword_27FBA1ED0;
  if (!qword_27FBA1ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1ED0);
  }

  return result;
}

unint64_t sub_25B77D33C()
{
  result = qword_27FBA1ED8;
  if (!qword_27FBA1ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1ED8);
  }

  return result;
}

unint64_t sub_25B77D394()
{
  result = qword_27FBA1EE0;
  if (!qword_27FBA1EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1EE0);
  }

  return result;
}

unint64_t sub_25B77D3EC()
{
  result = qword_27FBA1EE8;
  if (!qword_27FBA1EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1EE8);
  }

  return result;
}

unint64_t sub_25B77D444()
{
  result = qword_27FBA1EF0;
  if (!qword_27FBA1EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1EF0);
  }

  return result;
}

unint64_t sub_25B77D49C()
{
  result = qword_27FBA1EF8;
  if (!qword_27FBA1EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1EF8);
  }

  return result;
}

unint64_t sub_25B77D4F4()
{
  result = qword_27FBA1F00;
  if (!qword_27FBA1F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1F00);
  }

  return result;
}

unint64_t sub_25B77D54C()
{
  result = qword_27FBA1F08;
  if (!qword_27FBA1F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1F08);
  }

  return result;
}

unint64_t sub_25B77D5A4()
{
  result = qword_27FBA1F10;
  if (!qword_27FBA1F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1F10);
  }

  return result;
}

uint64_t sub_25B77D5F8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_25B790BE8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000 || (sub_25B790BE8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x67696C7961447369 && a2 == 0xEA00000000007468 || (sub_25B790BE8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C696261626F7270 && a2 == 0xEB00000000797469 || (sub_25B790BE8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_25B790BE8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_25B790BE8();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_25B77D7FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_25B790BE8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7261656C63 && a2 == 0xE500000000000000 || (sub_25B790BE8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7469706963657270 && a2 == 0xED0000676E697461 || (sub_25B790BE8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x696765426C6C6977 && a2 == 0xE90000000000006ELL || (sub_25B790BE8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x61656C436C6C6977 && a2 == 0xE900000000000072)
  {

    return 4;
  }

  else
  {
    v6 = sub_25B790BE8();

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

uint64_t sub_25B77DAA0@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  v7 = a2(0);
  return (*(*(v7 - 8) + 16))(a3, v3 + v6, v7);
}

uint64_t sub_25B77DB4C(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = a3(0);
  (*(*(v7 - 8) + 40))(v3 + v6, a1, v7);
  return swift_endAccess();
}

uint64_t sub_25B77DC40()
{
  v1 = sub_25B78FDD8();
  v2 = *(v1 - 8);
  v3 = v2[8];
  v4 = MEMORY[0x28223BE20](v1);
  v44 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v43 = &v34 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v34 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v34 - v11;
  v13 = sub_25B78FDF8();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x28223BE20](v13);
  v40 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v34 - v18;
  v20 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion22NHPWidgetDateFormatter_locale;
  swift_beginAccess();
  v21 = v14[2];
  v42 = v0;
  v38 = v21;
  v39 = v20;
  v21(v19, v0 + v20, v13);
  sub_25B78FDE8();
  v22 = v14[1];
  v41 = v13;
  v36 = v22;
  v22(v19, v13);
  v23 = *MEMORY[0x277CC9770];
  v35 = v2[13];
  v35(v10, v23, v1);
  v24 = sub_25B77ED44();
  sub_25B790708();
  v37 = v24;
  sub_25B790708();
  if (v47 == v45 && v48 == v46)
  {
    v25 = 1;
  }

  else
  {
    v25 = sub_25B790BE8();
  }

  v26 = v10;
  v27 = v2[1];
  v27(v26, v1);
  v27(v12, v1);

  if (v25)
  {
    v28 = 1;
  }

  else
  {
    v29 = v41;
    v30 = v40;
    v38(v40, v42 + v39, v41);
    v31 = v43;
    sub_25B78FDE8();
    v36(v30, v29);
    v32 = v44;
    v35(v44, *MEMORY[0x277CC9768], v1);
    sub_25B790708();
    sub_25B790708();
    if (v47 == v45 && v48 == v46)
    {
      v28 = 1;
    }

    else
    {
      v28 = sub_25B790BE8();
    }

    v27(v32, v1);
    v27(v31, v1);
  }

  return v28 & 1;
}

uint64_t NHPWidgetDateFormatter.__allocating_init(timeZone:locale:)(char *a1, char *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  NHPWidgetDateFormatter.init(timeZone:locale:)(a1, a2);
  return v7;
}

uint64_t NHPWidgetDateFormatter.init(timeZone:locale:)(char *a1, char *a2)
{
  v3 = v2;
  v37 = a2;
  v38 = a1;
  v6 = sub_25B78FF28();
  v34 = v6;
  v36 = *(v6 - 8);
  v7 = v36;
  v8 = *(v36 + 64);
  MEMORY[0x28223BE20](v6);
  v39 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_25B78FDF8();
  v10 = *(v40 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v40);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion22NHPWidgetDateFormatter_dateFormatter;
  *(v3 + v14) = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v15 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion22NHPWidgetDateFormatter_dateComponentsFormatter;
  *(v3 + v15) = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  v33 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion22NHPWidgetDateFormatter_timeZone;
  v35 = *(v7 + 16);
  v35(v3 + OBJC_IVAR____TtC25NanoWeatherKitUICompanion22NHPWidgetDateFormatter_timeZone, a1, v6);
  v16 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion22NHPWidgetDateFormatter_locale;
  v17 = v10;
  v18 = *(v10 + 16);
  v19 = v40;
  v18(v3 + OBJC_IVAR____TtC25NanoWeatherKitUICompanion22NHPWidgetDateFormatter_locale, a2, v40);
  v32 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion22NHPWidgetDateFormatter_dateFormatter;
  v20 = *(v3 + OBJC_IVAR____TtC25NanoWeatherKitUICompanion22NHPWidgetDateFormatter_dateFormatter);
  swift_beginAccess();
  v18(v13, v3 + v16, v19);
  v21 = v20;
  v22 = sub_25B78FDB8();
  v23 = *(v17 + 8);
  v23(v13, v19);
  [v21 setLocale_];

  v24 = v33;
  v25 = *(v3 + v32);
  swift_beginAccess();
  v26 = v39;
  v27 = v34;
  v35(v39, v3 + v24, v34);
  v28 = sub_25B78FEE8();
  v29 = *(v36 + 8);
  v29(v26, v27);
  [v25 setTimeZone_];

  v23(v37, v40);
  v29(v38, v27);
  return v3;
}

Swift::String __swiftcall NHPWidgetDateFormatter.relativeTimeString(for:style:)(Swift::Double a1, NSDateComponentsFormatterUnitsStyle style)
{
  v5 = 86400.0;
  v6 = 16;
  if (a1 < 86400.0)
  {
    v6 = 32;
    v5 = 3600.0;
  }

  if (a1 >= 3600.0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 64;
  }

  v8 = *(v2 + OBJC_IVAR____TtC25NanoWeatherKitUICompanion22NHPWidgetDateFormatter_dateComponentsFormatter);
  if (a1 >= 3600.0)
  {
    v9 = v5;
  }

  else
  {
    v9 = 60.0;
  }

  [v8 setAllowedUnits_];
  [v8 setUnitsStyle_];
  v10 = [v8 stringFromTimeInterval_];
  if (v10)
  {
    v11 = v10;
    v12 = sub_25B790638();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0xE000000000000000;
  }

  v15 = v12;
  v16 = v14;
  result._object = v16;
  result._countAndFlagsBits = v15;
  return result;
}

uint64_t NHPWidgetDateFormatter.absoluteTimeString(date:interval:useAproximateSymbol:)(double a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = sub_25B78FDF8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 3600.0)
  {
    sub_25B77DC40();
    v13 = *(v3 + OBJC_IVAR____TtC25NanoWeatherKitUICompanion22NHPWidgetDateFormatter_dateFormatter);
    v14 = sub_25B790618();
    [v13 setDateFormat_];

    v15 = sub_25B78FD08();
    v16 = [v13 stringFromDate_];
LABEL_3:
    v17 = v16;

    v18 = sub_25B790638();
    return v18;
  }

  if (a1 >= 86400.0)
  {
    sub_25B77DC40();
    v24 = *(v3 + OBJC_IVAR____TtC25NanoWeatherKitUICompanion22NHPWidgetDateFormatter_dateFormatter);
    if (a1 >= 604800.0)
    {
      v34 = sub_25B790618();
      [v24 setLocalizedDateFormatFromTemplate_];

      v15 = sub_25B78FD08();
      v16 = [v24 stringFromDate_];
      goto LABEL_3;
    }

    v25 = sub_25B790618();
    [v24 setDateFormat_];

    v26 = sub_25B78FD08();
    v27 = [v24 stringFromDate_];

    v28 = sub_25B790638();
    v30 = v29;

    v49 = v28;
    v50 = v30;
    sub_25B765148();
    v31 = sub_25B7909F8();
  }

  else
  {
    v20 = v10;
    v21 = sub_25B77DC40();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1F48, &unk_25B793070);
    v22 = swift_allocObject();
    v48 = xmmword_25B791A40;
    *(v22 + 16) = xmmword_25B791A40;
    *(v22 + 56) = MEMORY[0x277D839B0];
    *(v22 + 32) = v21 & 1;
    sub_25B790C08();

    if ((v21 & 1) == 0)
    {
      v32 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion22NHPWidgetDateFormatter_locale;
      swift_beginAccess();
      (*(v8 + 16))(v12, v4 + v32, v20);
      v33 = sub_25B78FDB8();
      (*(v8 + 8))(v12, v20);
      [v33 positionOfDayPeriodInFormattedTime];
    }

    v23 = *(v4 + OBJC_IVAR____TtC25NanoWeatherKitUICompanion22NHPWidgetDateFormatter_dateFormatter);
    v35 = sub_25B790618();
    [v23 setDateFormat_];

    if (a3)
    {
      if (qword_27FBA19B8 != -1)
      {
        swift_once();
      }

      v36 = qword_27FBA1C18;
      v37 = sub_25B790618();
      v38 = sub_25B790618();
      v39 = sub_25B790618();
      v40 = [v36 localizedStringForKey:v37 value:v38 table:v39];

      sub_25B790638();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1D08, &qword_25B7925D8);
    v41 = swift_allocObject();
    *(v41 + 16) = v48;
    v42 = sub_25B78FD08();
    v43 = [v23 stringFromDate_];

    v44 = sub_25B790638();
    v46 = v45;

    *(v41 + 56) = MEMORY[0x277D837D0];
    *(v41 + 64) = sub_25B777A70();
    *(v41 + 32) = v44;
    *(v41 + 40) = v46;
    v31 = sub_25B790648();
  }

  v47 = v31;

  return v47;
}

uint64_t NHPWidgetDateFormatter.deinit()
{
  v1 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion22NHPWidgetDateFormatter_timeZone;
  v2 = sub_25B78FF28();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion22NHPWidgetDateFormatter_locale;
  v4 = sub_25B78FDF8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t NHPWidgetDateFormatter.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion22NHPWidgetDateFormatter_timeZone;
  v2 = sub_25B78FF28();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion22NHPWidgetDateFormatter_locale;
  v4 = sub_25B78FDF8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NHPWidgetDateFormatter()
{
  result = qword_27FBA1F50;
  if (!qword_27FBA1F50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25B77EC68()
{
  result = sub_25B78FF28();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_25B78FDF8();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_25B77ED44()
{
  result = qword_27FBA1F60;
  if (!qword_27FBA1F60)
  {
    sub_25B78FDD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1F60);
  }

  return result;
}

char *static TemperatureColor.colorForTemperature(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1A68, &unk_25B791A60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = [objc_opt_self() celsius];
  sub_25B78FAB8();

  sub_25B78FA78();
  v12 = v11;
  (*(v6 + 8))(v9, v5);
  v13 = (*(a3 + 8))(a2, a3);
  v14 = _s25NanoWeatherKitUICompanion13ColorSpectrumV13colorForValueySo7UIColorCSdF_0(v13, v12);

  return v14;
}

uint64_t static TemperatureColor.colorSpectrumBetween(low:high:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1A68, &unk_25B791A60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - v11;
  v13 = objc_opt_self();
  v14 = [v13 celsius];
  sub_25B78FAB8();

  sub_25B78FA78();
  v16 = v15;
  v17 = *(v6 + 8);
  v17(v12, v5);
  v18 = [v13 celsius];
  sub_25B78FAB8();

  sub_25B78FA78();
  v20 = v19;
  v17(v10, v5);
  return static TemperatureColor.colorSpectrumBetween(low:high:)(a3, v22, v16, v20);
}

uint64_t static TemperatureColor.colorSpectrumBetween(low:high:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1F68, &qword_25B7930C8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_25B791A40;
  *(v8 + 32) = 0;
  v9 = *(a2 + 8);
  v10 = v9(a1, a2);
  v11 = _s25NanoWeatherKitUICompanion13ColorSpectrumV13colorForValueySo7UIColorCSdF_0(v10, a3);

  *(v8 + 40) = v11;
  if (a3 != a4)
  {
    v31 = a1;
    v12 = v9(a1, a2);
    v13 = *(v12 + 16);
    if (v13)
    {
      v14 = (v12 + 40);
      do
      {
        v16 = *(v14 - 1);
        if (v16 >= a3 && v16 <= a4)
        {
          v18 = fmin((v16 - a3) / (a4 - a3), 1.0);
          if (v18 < 0.0)
          {
            v19 = 0.0;
          }

          else
          {
            v19 = v18;
          }

          v21 = *(v8 + 16);
          v20 = *(v8 + 24);
          v22 = *v14;
          if (v21 >= v20 >> 1)
          {
            v23 = v20 > 1;
            v24 = v22;
            v8 = sub_25B77F804(v23, v21 + 1, 1, v8);
            v22 = v24;
          }

          *(v8 + 16) = v21 + 1;
          v15 = v8 + 16 * v21;
          *(v15 + 32) = v19;
          *(v15 + 40) = v22;
        }

        v14 += 2;
        --v13;
      }

      while (v13);
    }

    a1 = v31;
  }

  v25 = v9(a1, a2);
  v26 = _s25NanoWeatherKitUICompanion13ColorSpectrumV13colorForValueySo7UIColorCSdF_0(v25, a4);

  v28 = *(v8 + 16);
  v27 = *(v8 + 24);
  if (v28 >= v27 >> 1)
  {
    v8 = sub_25B77F804((v27 > 1), v28 + 1, 1, v8);
  }

  *(v8 + 16) = v28 + 1;
  v29 = v8 + 16 * v28;
  *(v29 + 32) = 0x3FF0000000000000;
  *(v29 + 40) = v26;

  return sub_25B77FB50(v8);
}

double static TemperatureColor.percentageBetween(low:high:current:)(double a1, double a2, double a3)
{
  result = fmin((a3 - a1) / (a2 - a1), 1.0);
  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

id sub_25B77F32C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1CC0, &qword_25B7931B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_25B791A50;
  v1 = objc_opt_self();
  v2 = [v1 systemCyanColor];
  *(v0 + 32) = 0;
  *(v0 + 40) = v2;
  v3 = [v1 systemGreenColor];
  *(v0 + 48) = 0x4024000000000000;
  *(v0 + 56) = v3;
  v4 = [v1 systemYellowColor];
  *(v0 + 64) = 0x4034000000000000;
  *(v0 + 72) = v4;
  result = [v1 systemRedColor];
  *(v0 + 80) = 0x403E000000000000;
  *(v0 + 88) = result;
  static ComplicationTemperatureColor.temperatureColorSpectrum = v0;
  return result;
}

uint64_t *ComplicationTemperatureColor.temperatureColorSpectrum.unsafeMutableAddressor()
{
  if (qword_27FBA19E0 != -1)
  {
    swift_once();
  }

  return &static ComplicationTemperatureColor.temperatureColorSpectrum;
}

uint64_t sub_25B77F4A0()
{
  result = sub_25B77F4C0();
  static AppTemperatureColor.temperatureColorSpectrum = result;
  return result;
}

uint64_t sub_25B77F4C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1CC0, &qword_25B7931B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_25B7930B0;
  sub_25B7737CC();
  sub_25B7904B8();
  v1 = sub_25B790978();
  *(v0 + 32) = 0xC0551C28F5C28F5CLL;
  *(v0 + 40) = v1;
  sub_25B7904B8();
  v2 = sub_25B790978();
  *(v0 + 48) = 0xC0498D70A3D70A3DLL;
  *(v0 + 56) = v2;
  sub_25B7904B8();
  v3 = sub_25B790978();
  *(v0 + 64) = 0xC031C51EB851EB84;
  *(v0 + 72) = v3;
  sub_25B7904B8();
  v4 = sub_25B790978();
  *(v0 + 80) = 0xBFF1A3D70A3D7080;
  *(v0 + 88) = v4;
  sub_25B7904B8();
  v5 = sub_25B790978();
  *(v0 + 96) = 0x402404B17E4B17E8;
  *(v0 + 104) = v5;
  sub_25B7904B8();
  v6 = sub_25B790978();
  *(v0 + 112) = 0x40351EEEEEEEEEF0;
  *(v0 + 120) = v6;
  sub_25B7904B8();
  v7 = sub_25B790978();
  *(v0 + 128) = 0x403AAD3A06D3A070;
  *(v0 + 136) = v7;
  sub_25B7904B8();
  v8 = sub_25B790978();
  *(v0 + 144) = 0x4042E4E81B4E81B4;
  *(v0 + 152) = v8;
  sub_25B7904B8();
  v9 = sub_25B790978();
  *(v0 + 160) = 0x4048733333333334;
  *(v0 + 168) = v9;
  return v0;
}

uint64_t *AppTemperatureColor.temperatureColorSpectrum.unsafeMutableAddressor()
{
  if (qword_27FBA19E8 != -1)
  {
    swift_once();
  }

  return &static AppTemperatureColor.temperatureColorSpectrum;
}

uint64_t sub_25B77F71C(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

uint64_t sub_25B77F7A0(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (*a3 == -1)
  {
    v5 = *a4;
  }

  else
  {
    swift_once();
    v8 = *a4;
  }
}

void *sub_25B77F804(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1F68, &qword_25B7930C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1F78, &qword_25B7931B8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25B77F938(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1CC0, &qword_25B7931B0);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_25B77FA44(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1F70, &qword_25B7931A8);
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
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_25B77FB50(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v14 = MEMORY[0x277D84F90];
    sub_25B790AC8();
    v4 = (a1 + 32);
    v5 = (a1 + 40);
    v6 = v2;
    do
    {
      v7 = *v5;
      v5 += 2;
      v8 = v7;
      sub_25B790AA8();
      v9 = *(v14 + 16);
      sub_25B790AD8();
      sub_25B790AE8();
      sub_25B790AB8();
      --v6;
    }

    while (v6);
    sub_25B76940C(0, v2, 0);
    v10 = *(v3 + 16);
    do
    {
      v11 = *v4;
      v12 = *(v3 + 24);
      if (v10 >= v12 >> 1)
      {
        sub_25B76940C((v12 > 1), v10 + 1, 1);
      }

      *(v3 + 16) = v10 + 1;
      *(v3 + 8 * v10 + 32) = v11;
      v4 += 2;
      ++v10;
      --v2;
    }

    while (v2);
  }

  return v3;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_25B77FCB4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_25B77FCFC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_25B77FD6C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B38, &qword_25B791E70);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v16 - v2;
  v4 = sub_25B78FD88();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  sub_25B790388();
  v12 = *(v5 + 48);
  if (v12(v3, 1, v4) == 1)
  {
    sub_25B78FCD8();
    if (v12(v3, 1, v4) != 1)
    {
      sub_25B76966C(v3, &qword_27FBA1B38, &qword_25B791E70);
    }
  }

  else
  {
    (*(v5 + 32))(v11, v3, v4);
  }

  if (sub_25B78FD28())
  {
    sub_25B7903A8();
    v13 = sub_25B78FD28();
    v14 = *(v5 + 8);
    v14(v9, v4);
    v14(v11, v4);
  }

  else
  {
    (*(v5 + 8))(v11, v4);
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_25B77FFA0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_25B7903C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x277CE3388])
  {
    v10 = MEMORY[0x277CE3290];
  }

  else if (v9 == *MEMORY[0x277CE3398])
  {
    v10 = MEMORY[0x277CE32A0];
  }

  else if (v9 == *MEMORY[0x277CE33B0])
  {
    v10 = MEMORY[0x277CE32C0];
  }

  else
  {
    if (v9 != *MEMORY[0x277CE33A0])
    {
      v15 = sub_25B790348();
      (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
      return (*(v5 + 8))(v8, v4);
    }

    v10 = MEMORY[0x277CE32A8];
  }

  v11 = *v10;
  v12 = sub_25B790348();
  v13 = *(v12 - 8);
  (*(v13 + 104))(a1, v11, v12);
  return (*(v13 + 56))(a1, 0, 1, v12);
}

uint64_t sub_25B7801F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B38, &qword_25B791E70);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v46 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = v45 - v6;
  v8 = sub_25B78FD88();
  v49 = *(v8 - 8);
  v9 = *(v49 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v48 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v47 = v45 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B60, &unk_25B7922B0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v45 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C00, &qword_25B793230);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = v45 - v19;
  v21 = sub_25B790448();
  v50 = *(v21 - 8);
  v51 = v21;
  v22 = *(v50 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = v45 - v26;
  sub_25B7900F8();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B88, &qword_25B791F00);
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v16, 1, v28) == 1)
  {
    sub_25B76966C(v16, &qword_27FBA1B60, &unk_25B7922B0);
    v30 = sub_25B78FFC8();
    (*(*(v30 - 8) + 56))(v20, 1, 1, v30);
LABEL_7:
    sub_25B76966C(v20, &qword_27FBA1C00, &qword_25B793230);
    v35 = 1;
    return v35 & 1;
  }

  sub_25B771764();
  v45[0] = v8;
  v45[1] = a1;
  if (v31)
  {
    v32 = 1;
  }

  else
  {
    sub_25B790418();
    v32 = 0;
  }

  v33 = sub_25B78FFC8();
  v34 = *(v33 - 8);
  (*(v34 + 56))(v20, v32, 1, v33);
  (*(v29 + 8))(v16, v28);
  if ((*(v34 + 48))(v20, 1, v33) == 1)
  {
    goto LABEL_7;
  }

  sub_25B78FF68();
  (*(v34 + 8))(v20, v33);
  (*(v50 + 32))(v27, v25, v51);
  sub_25B790438();
  v36 = v49;
  v37 = *(v49 + 48);
  v38 = v45[0];
  if (v37(v7, 1, v45[0]) == 1)
  {
    v39 = v47;
    sub_25B78FCC8();
    v40 = v37(v7, 1, v38);
    v41 = v48;
    if (v40 != 1)
    {
      sub_25B76966C(v7, &qword_27FBA1B38, &qword_25B791E70);
    }
  }

  else
  {
    v39 = v47;
    (*(v36 + 32))(v47, v7, v38);
    v41 = v48;
  }

  v42 = v46;
  sub_25B790428();
  if (v37(v42, 1, v38) == 1)
  {
    sub_25B78FCD8();
    if (v37(v42, 1, v38) != 1)
    {
      sub_25B76966C(v42, &qword_27FBA1B38, &qword_25B791E70);
    }
  }

  else
  {
    (*(v36 + 32))(v41, v42, v38);
  }

  if (sub_25B78FD18())
  {
    v35 = sub_25B78FD28();
  }

  else
  {
    v35 = 0;
  }

  v43 = *(v36 + 8);
  v43(v41, v38);
  v43(v39, v38);
  (*(v50 + 8))(v27, v51);
  return v35 & 1;
}

uint64_t sub_25B780844@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = sub_25B790348();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v28 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1F18, &qword_25B793060);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1AF8, &unk_25B791E40);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v32 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v27 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v27 - v17;
  WeatherCondition.simplePrecipitationCondtion()(&v27 - v17);
  v19 = *MEMORY[0x277CE3320];
  v30 = *(v2 + 104);
  v30(v16, v19, v1);
  v29 = *(v2 + 56);
  v29(v16, 0, 1, v1);
  v20 = *(v6 + 56);
  sub_25B7794F0(v18, v9);
  sub_25B7794F0(v16, &v9[v20]);
  v21 = *(v2 + 48);
  if (v21(v9, 1, v1) != 1)
  {
    sub_25B7794F0(v9, v32);
    if (v21(&v9[v20], 1, v1) != 1)
    {
      v23 = v28;
      (*(v2 + 32))(v28, &v9[v20], v1);
      sub_25B780C64();
      v24 = sub_25B790608();
      v25 = *(v2 + 8);
      v25(v23, v1);
      sub_25B76966C(v16, &qword_27FBA1AF8, &unk_25B791E40);
      v25(v32, v1);
      sub_25B76966C(v9, &qword_27FBA1AF8, &unk_25B791E40);
      if (v24)
      {
        goto LABEL_9;
      }

      return sub_25B76D804(v18, v31);
    }

    sub_25B76966C(v16, &qword_27FBA1AF8, &unk_25B791E40);
    (*(v2 + 8))(v32, v1);
LABEL_6:
    sub_25B76966C(v9, &qword_27FBA1F18, &qword_25B793060);
    return sub_25B76D804(v18, v31);
  }

  sub_25B76966C(v16, &qword_27FBA1AF8, &unk_25B791E40);
  if (v21(&v9[v20], 1, v1) != 1)
  {
    goto LABEL_6;
  }

  sub_25B76966C(v9, &qword_27FBA1AF8, &unk_25B791E40);
LABEL_9:
  sub_25B76966C(v18, &qword_27FBA1AF8, &unk_25B791E40);
  v26 = v31;
  v30(v31, *MEMORY[0x277CE32A8], v1);
  return (v29)(v26, 0, 1, v1);
}

unint64_t sub_25B780C64()
{
  result = qword_27FBA1F30;
  if (!qword_27FBA1F30)
  {
    sub_25B790348();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1F30);
  }

  return result;
}

uint64_t sub_25B780CBC()
{
  v0 = type metadata accessor for PrecipitationChanceFormatter();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion28PrecipitationChanceFormatter_overrideLocale;
  v5 = sub_25B78FDF8();
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  *(v3 + OBJC_IVAR____TtC25NanoWeatherKitUICompanion28PrecipitationChanceFormatter_maximumPercentage) = 0x3FF0000000000000;
  v6 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion28PrecipitationChanceFormatter_percentFormatter;
  if (qword_27FBA1A00 != -1)
  {
    swift_once();
  }

  *(v3 + v6) = static PercentFormatter.shared;
  static PrecipitationChanceFormatter.shared = v3;
}

uint64_t *PrecipitationChanceFormatter.shared.unsafeMutableAddressor()
{
  if (qword_27FBA19F0 != -1)
  {
    swift_once();
  }

  return &static PrecipitationChanceFormatter.shared;
}

uint64_t static PrecipitationChanceFormatter.shared.getter()
{
  if (qword_27FBA19F0 != -1)
  {
    swift_once();
  }
}

void sub_25B780E54()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C20, &qword_25B792300);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v18 - v3;
  v5 = sub_25B78FDF8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - v11;
  v13 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion28PrecipitationChanceFormatter_overrideLocale;
  swift_beginAccess();
  sub_25B769604(v0 + v13, v4, &qword_27FBA1C20, &qword_25B792300);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_25B76966C(v4, &qword_27FBA1C20, &qword_25B792300);
    v14 = *(*(v0 + OBJC_IVAR____TtC25NanoWeatherKitUICompanion28PrecipitationChanceFormatter_percentFormatter) + 16);
    sub_25B78FDC8();
    v15 = sub_25B78FDB8();
    (*(v6 + 8))(v10, v5);
    [v14 setLocale_];
  }

  else
  {
    (*(v6 + 32))(v12, v4, v5);
    v16 = *(*(v0 + OBJC_IVAR____TtC25NanoWeatherKitUICompanion28PrecipitationChanceFormatter_percentFormatter) + 16);
    v17 = sub_25B78FDB8();
    [v16 setLocale_];

    (*(v6 + 8))(v12, v5);
  }
}

uint64_t PrecipitationChanceFormatter.overrideLocale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion28PrecipitationChanceFormatter_overrideLocale;
  swift_beginAccess();
  return sub_25B769604(v1 + v3, a1, &qword_27FBA1C20, &qword_25B792300);
}

uint64_t PrecipitationChanceFormatter.overrideLocale.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC25NanoWeatherKitUICompanion28PrecipitationChanceFormatter_overrideLocale;
  swift_beginAccess();
  sub_25B7811B4(a1, v1 + v3);
  swift_endAccess();
  sub_25B780E54();
  return sub_25B76966C(a1, &qword_27FBA1C20, &qword_25B792300);
}

uint64_t sub_25B7811B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C20, &qword_25B792300);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void (*PrecipitationChanceFormatter.overrideLocale.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_25B781288;
}

void sub_25B781288(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    sub_25B780E54();
  }
}

Swift::String __swiftcall PrecipitationChanceFormatter.demoPercent(chance:isSignificant:)(Swift::Double_optional chance, Swift::Bool_optional isSignificant)
{
  if (isSignificant.value)
  {
    if (qword_27FBA19B8 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_8;
  }

  v3 = *(*(v2 + OBJC_IVAR____TtC25NanoWeatherKitUICompanion28PrecipitationChanceFormatter_percentFormatter) + 16);
  v4 = sub_25B790618();
  [v3 setPercentSymbol_];

  v5 = sub_25B790738();
  v6 = [v3 stringForObjectValue_];

  if (!v6)
  {
    if (qword_27FBA19B8 == -1)
    {
LABEL_6:
      v7 = qword_27FBA1C18;
      v8 = sub_25B790618();
      v9 = sub_25B790618();
      v10 = sub_25B790618();
      v6 = [v7 localizedStringForKey:v8 value:v9 table:v10];

      goto LABEL_7;
    }

LABEL_8:
    swift_once();
    goto LABEL_6;
  }

LABEL_7:
  v11 = sub_25B790638();
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result._object = v15;
  result._countAndFlagsBits = v14;
  return result;
}

uint64_t PrecipitationChanceFormatter.percent(for:)(uint64_t a1)
{
  v27[0] = sub_25B790348();
  v2 = *(v27[0] - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v27[0]);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C68, "x%");
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v27 - v11;
  sub_25B769604(a1, v27 - v11, &qword_27FBA1C68, "x%");
  v13 = sub_25B7900C8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  v16 = v15(v12, 1, v13);
  if (v16 == 1)
  {
    sub_25B76966C(v12, &qword_27FBA1C68, "x%");
  }

  else
  {
    sub_25B790048();
    (*(v14 + 8))(v12, v13);
  }

  sub_25B769604(a1, v10, &qword_27FBA1C68, "x%");
  if (v15(v10, 1, v13) != 1)
  {
    sub_25B7900B8();
    (*(v14 + 8))(v10, v13);
    _s10WeatherKit0A9ConditionO04NanoaB11UICompanionE21nwkui_isPrecipitationSbvg_0();
    (*(v2 + 8))(v5, v27[0]);
    if (v16 != 1)
    {
      goto LABEL_10;
    }

LABEL_8:
    if (qword_27FBA19B8 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  sub_25B76966C(v10, &qword_27FBA1C68, "x%");
  if (v16 == 1)
  {
    goto LABEL_8;
  }

LABEL_10:
  v17 = *(*(v27[1] + OBJC_IVAR____TtC25NanoWeatherKitUICompanion28PrecipitationChanceFormatter_percentFormatter) + 16);
  v18 = sub_25B790618();
  [v17 setPercentSymbol_];

  v19 = sub_25B790738();
  v20 = [v17 stringForObjectValue_];

  if (!v20)
  {
    if (qword_27FBA19B8 == -1)
    {
LABEL_12:
      v21 = qword_27FBA1C18;
      v22 = sub_25B790618();
      v23 = sub_25B790618();
      v24 = sub_25B790618();
      v20 = [v21 localizedStringForKey:v22 value:v23 table:v24];

      goto LABEL_13;
    }

LABEL_14:
    swift_once();
    goto LABEL_12;
  }

LABEL_13:
  v25 = sub_25B790638();

  return v25;
}

uint64_t PrecipitationChanceFormatter.string(for:percentStyle:noValueStyle:applyFloor:)(uint64_t a1, int a2, int a3, int a4)
{
  v26[1] = a4;
  v29 = a2;
  v30 = a3;
  v27 = sub_25B790348();
  v5 = *(v27 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v27);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C68, "x%");
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v26 - v14;
  sub_25B769604(a1, v26 - v14, &qword_27FBA1C68, "x%");
  v16 = sub_25B7900C8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  v19 = v18(v15, 1, v16);
  if (v19 == 1)
  {
    sub_25B76966C(v15, &qword_27FBA1C68, "x%");
  }

  else
  {
    sub_25B790048();
    (*(v17 + 8))(v15, v16);
  }

  sub_25B769604(a1, v13, &qword_27FBA1C68, "x%");
  if (v18(v13, 1, v16) == 1)
  {
    sub_25B76966C(v13, &qword_27FBA1C68, "x%");
    if (v19 == 1)
    {
      return FormatterNoValueStyle.rawValue.getter(v30);
    }
  }

  else
  {
    sub_25B7900B8();
    (*(v17 + 8))(v13, v16);
    _s10WeatherKit0A9ConditionO04NanoaB11UICompanionE21nwkui_isPrecipitationSbvg_0();
    (*(v5 + 8))(v8, v27);
    if (v19 == 1)
    {
      return FormatterNoValueStyle.rawValue.getter(v30);
    }
  }

  v20 = *(*(v28 + OBJC_IVAR____TtC25NanoWeatherKitUICompanion28PrecipitationChanceFormatter_percentFormatter) + 16);
  v21 = sub_25B790618();

  [v20 setPercentSymbol_];

  v22 = sub_25B790738();
  v23 = [v20 stringForObjectValue_];

  if (v23)
  {
    v24 = sub_25B790638();

    return v24;
  }

  return FormatterNoValueStyle.rawValue.getter(v30);
}

{
  v26[1] = a4;
  v29 = a2;
  v30 = a3;
  v27 = sub_25B790348();
  v5 = *(v27 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v27);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C00, &qword_25B793230);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v26 - v14;
  sub_25B769604(a1, v26 - v14, &qword_27FBA1C00, &qword_25B793230);
  v16 = sub_25B78FFC8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  v19 = v18(v15, 1, v16);
  if (v19 == 1)
  {
    sub_25B76966C(v15, &qword_27FBA1C00, &qword_25B793230);
  }

  else
  {
    sub_25B78FF58();
    (*(v17 + 8))(v15, v16);
  }

  sub_25B769604(a1, v13, &qword_27FBA1C00, &qword_25B793230);
  if (v18(v13, 1, v16) == 1)
  {
    sub_25B76966C(v13, &qword_27FBA1C00, &qword_25B793230);
    if (v19 == 1)
    {
      return FormatterNoValueStyle.rawValue.getter(v30);
    }
  }

  else
  {
    sub_25B78FFB8();
    (*(v17 + 8))(v13, v16);
    _s10WeatherKit0A9ConditionO04NanoaB11UICompanionE21nwkui_isPrecipitationSbvg_0();
    (*(v5 + 8))(v8, v27);
    if (v19 == 1)
    {
      return FormatterNoValueStyle.rawValue.getter(v30);
    }
  }

  v20 = *(*(v28 + OBJC_IVAR____TtC25NanoWeatherKitUICompanion28PrecipitationChanceFormatter_percentFormatter) + 16);
  v21 = sub_25B790618();

  [v20 setPercentSymbol_];

  v22 = sub_25B790738();
  v23 = [v20 stringForObjectValue_];

  if (v23)
  {
    v24 = sub_25B790638();

    return v24;
  }

  return FormatterNoValueStyle.rawValue.getter(v30);
}

Swift::String __swiftcall PrecipitationChanceFormatter.string(for:percentStyle:noValueStyle:)(Swift::Double_optional a1, NanoWeatherKitUICompanion::PercentStyle percentStyle, NanoWeatherKitUICompanion::FormatterNoValueStyle noValueStyle)
{
  if (percentStyle)
  {
    v5 = FormatterNoValueStyle.rawValue.getter(v3);
  }

  else
  {
    v7 = *(*(v4 + OBJC_IVAR____TtC25NanoWeatherKitUICompanion28PrecipitationChanceFormatter_percentFormatter) + 16);
    v8 = sub_25B790618();

    [v7 setPercentSymbol_];

    v9 = sub_25B790738();
    v10 = [v7 stringForObjectValue_];

    if (v10)
    {
      v11 = sub_25B790638();
      v13 = v12;

      v5 = v11;
      v6 = v13;
    }

    else
    {
      v5 = 0;
      v6 = 0xE000000000000000;
    }
  }

  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String __swiftcall PrecipitationChanceFormatter.string(for:isSignificant:percentStyle:noValueStyle:applyFloor:)(Swift::Double_optional a1, Swift::Bool_optional isSignificant, NanoWeatherKitUICompanion::PercentStyle percentStyle, NanoWeatherKitUICompanion::FormatterNoValueStyle noValueStyle, Swift::Bool applyFloor)
{
  if (isSignificant.value)
  {
    v6 = applyFloor;
  }

  else
  {
    v8 = *(*(v5 + OBJC_IVAR____TtC25NanoWeatherKitUICompanion28PrecipitationChanceFormatter_percentFormatter) + 16);
    v9 = sub_25B790618();

    [v8 setPercentSymbol_];

    v10 = sub_25B790738();
    v11 = [v8 stringForObjectValue_];

    if (v11)
    {
      v12 = sub_25B790638();
      v14 = v13;

      v15 = v12;
      v16 = v14;
      goto LABEL_9;
    }

    v6 = applyFloor;
  }

  v15 = FormatterNoValueStyle.rawValue.getter(v6);
LABEL_9:
  result._object = v16;
  result._countAndFlagsBits = v15;
  return result;
}

uint64_t PrecipitationChanceFormatter.deinit()
{
  sub_25B76966C(v0 + OBJC_IVAR____TtC25NanoWeatherKitUICompanion28PrecipitationChanceFormatter_overrideLocale, &qword_27FBA1C20, &qword_25B792300);
  v1 = *(v0 + OBJC_IVAR____TtC25NanoWeatherKitUICompanion28PrecipitationChanceFormatter_percentFormatter);

  return v0;
}

uint64_t PrecipitationChanceFormatter.__deallocating_deinit()
{
  sub_25B76966C(v0 + OBJC_IVAR____TtC25NanoWeatherKitUICompanion28PrecipitationChanceFormatter_overrideLocale, &qword_27FBA1C20, &qword_25B792300);
  v1 = *(v0 + OBJC_IVAR____TtC25NanoWeatherKitUICompanion28PrecipitationChanceFormatter_percentFormatter);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PrecipitationChanceFormatter()
{
  result = qword_27FBA1F90;
  if (!qword_27FBA1F90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25B782674()
{
  sub_25B76F644();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t UIExpirationDate.relevant(for:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = sub_25B78FD88();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 8))(a1, a2);
  LOBYTE(a2) = sub_25B78FD28();
  (*(v8 + 8))(v11, v7);
  v12 = *(a1 - 8);
  if (a2)
  {
    (*(*(a1 - 8) + 16))(a3, v3, a1);
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  return (*(v12 + 56))(a3, v13, 1, a1);
}

uint64_t UIExpirationDate.uiExpirationDate.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16[1] = a3;
  v5 = sub_25B78FD88();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25B790328();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(a1, a2);
  sub_25B790318();
  (*(v11 + 8))(v14, v10);
  (*(a2 + 24))(a1, a2);
  sub_25B78FCF8();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_25B782AD0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = sub_25B78FD88();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25B790328();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3(v12);
  sub_25B790318();
  (*(v10 + 8))(v14, v9);
  sub_25B78FCF8();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_25B782C7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25B78FD88();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25B790328();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(a1, a2);
  sub_25B790318();
  (*(v10 + 8))(v13, v9);
  sub_25B78FCF8();
  return (*(v5 + 8))(v8, v4);
}

uint64_t static ColorIndex.== infix(_:_:)(double a1, double a2)
{
  if (a1 != a2)
  {
    return 0;
  }

  sub_25B7835A4();
  return sub_25B790988() & 1;
}

uint64_t sub_25B782EAC(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 8);
  v3 = *(a1 + 8);
  sub_25B7835A4();
  return sub_25B790988() & 1;
}

NanoWeatherKitUICompanion::ColorSpectrum __swiftcall ColorSpectrum.init(colors:)(NanoWeatherKitUICompanion::ColorSpectrum colors)
{
  rawValue = colors.allIndices._rawValue;
  if (!(colors.allIndices._rawValue >> 62))
  {
    v2 = *((colors.allIndices._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = v2;
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_20:

    return MEMORY[0x277D84F90];
  }

  v3 = sub_25B790AF8();
  colors.allIndices._rawValue = sub_25B790AF8();
  v2 = colors.allIndices._rawValue;
  if (!colors.allIndices._rawValue)
  {
    goto LABEL_20;
  }

LABEL_3:
  if (v2 >= 1)
  {
    v4 = 1.0 / v3;
    if ((rawValue & 0xC000000000000001) != 0)
    {
      v5 = 0;
      v6 = MEMORY[0x277D84F90];
      v7 = v4;
      do
      {
        v8 = MEMORY[0x25F86D1F0](v5, rawValue);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_25B77F938(0, *(v6 + 2) + 1, 1, v6);
        }

        v10 = *(v6 + 2);
        v9 = *(v6 + 3);
        if (v10 >= v9 >> 1)
        {
          v6 = sub_25B77F938((v9 > 1), v10 + 1, 1, v6);
        }

        ++v5;
        *(v6 + 2) = v10 + 1;
        v11 = &v6[16 * v10];
        *(v11 + 4) = v7;
        *(v11 + 5) = v8;
        v7 = v4 + v7;
      }

      while (v2 != v5);
    }

    else
    {
      v6 = MEMORY[0x277D84F90];
      v12 = 32;
      v13 = v4;
      do
      {
        v14 = *(rawValue + v12);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_25B77F938(0, *(v6 + 2) + 1, 1, v6);
        }

        v16 = *(v6 + 2);
        v15 = *(v6 + 3);
        if (v16 >= v15 >> 1)
        {
          v6 = sub_25B77F938((v15 > 1), v16 + 1, 1, v6);
        }

        *(v6 + 2) = v16 + 1;
        v17 = &v6[16 * v16];
        *(v17 + 4) = v13;
        *(v17 + 5) = v14;
        v13 = v4 + v13;
        v12 += 8;
        --v2;
      }

      while (v2);
    }

    return v6;
  }

  __break(1u);
  return colors;
}

uint64_t sub_25B783110(double a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return 0;
  }

  v5 = 0;
  for (i = (a3 + 40); ; i += 2)
  {
    if (*(i - 1) == a1)
    {
      v7 = *i;
      sub_25B7835A4();
      v8 = v7;
      v9 = sub_25B790988();

      if (v9)
      {
        break;
      }
    }

    if (v3 == ++v5)
    {
      return 0;
    }
  }

  return v5;
}

uint64_t _s25NanoWeatherKitUICompanion13ColorSpectrumV18colorIndexForValue_9inIndicesAA0eH0VSgSd_SayAGGtF_0(uint64_t a1, double a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 32);
    if (v3 > a2)
    {
      v4 = (a1 + 40);
LABEL_9:
      v8 = v3;
      v9 = *v4;
      return *&v8;
    }

    v5 = a1 + 32 + 16 * v2;
    v3 = *(v5 - 16);
    if (v3 < a2)
    {
      v4 = (v5 - 8);
      goto LABEL_9;
    }
  }

  v6 = a1 + 24;
  v7 = v2 + 1;
  while (--v7)
  {
    v4 = (v6 + 16);
    v3 = *(v6 + 8);
    v6 += 16;
    if (v3 >= a2)
    {
      goto LABEL_9;
    }
  }

  v8 = 0.0;
  return *&v8;
}

void _s25NanoWeatherKitUICompanion13ColorSpectrumV18interpolateBetween6color16color28fractionSo7UIColorCAI_AI12CoreGraphics7CGFloatVtF_0(void *a1, void *a2, double a3)
{
  v5 = [a1 CGColor];
  v6 = sub_25B7908B8();

  if (!v6)
  {
    v10 = 0.0;
    v11 = 0.0;
    v9 = 0.0;
    v8 = 0.0;
    goto LABEL_8;
  }

  v7 = *(v6 + 16);
  if (!v7)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v7 == 1)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v7 < 3)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v7 == 3)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v8 = *(v6 + 32);
  v9 = *(v6 + 40);
  v11 = *(v6 + 48);
  v10 = *(v6 + 56);

LABEL_8:
  v12 = [a2 CGColor];
  v13 = sub_25B7908B8();

  v26 = v10;
  if (!v13)
  {
    v17 = 0.0;
    v19 = 1.0;
    if (a3 <= 1.0)
    {
      v19 = a3;
    }

    if (a3 <= 0.0)
    {
      v19 = 0.0;
    }

    v18 = 0.0;
    v16 = 0.0;
    v15 = 0.0;
    goto LABEL_22;
  }

  v14 = *(v13 + 16);
  if (!v14)
  {
    goto LABEL_32;
  }

  if (v14 == 1)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v14 < 3)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v14 == 3)
  {
LABEL_36:
    __break(1u);
    return;
  }

  v15 = *(v13 + 32);
  v16 = *(v13 + 40);
  v18 = *(v13 + 48);
  v17 = *(v13 + 56);

  v19 = 0.0;
  if (a3 > 0.0)
  {
    v19 = 1.0;
    if (a3 <= 1.0)
    {
      v19 = a3;
    }
  }

LABEL_22:
  v20 = v8 + v19 * (v15 - v8);
  v21 = 1.0;
  if (a3 <= 1.0)
  {
    v21 = a3;
  }

  if (a3 <= 0.0)
  {
    v21 = 0.0;
  }

  v22 = v9 + v21 * (v16 - v9);
  v23 = v11 + v21 * (v18 - v11);
  v24 = v26 + v21 * (v17 - v26);
  v25 = objc_allocWithZone(MEMORY[0x277D75348]);

  [v25 initWithRed:v20 green:v22 blue:v23 alpha:v24];
}

char *_s25NanoWeatherKitUICompanion13ColorSpectrumV13colorForValueySo7UIColorCSdF_0(uint64_t a1, double a2)
{
  v4 = COERCE_DOUBLE(_s25NanoWeatherKitUICompanion13ColorSpectrumV18colorIndexForValue_9inIndicesAA0eH0VSgSd_SayAGGtF_0(a1, a2));
  if (v5)
  {
    v6 = v5;
    v7 = v4;
    v8 = *(a1 + 16);
    if (v8)
    {
      if (*(a1 + 32) == v4)
      {
        v9 = *(a1 + 40);
        sub_25B7835A4();
        v10 = v6;
        v11 = v9;
        v12 = sub_25B790988();

        if (v12)
        {
          return v10;
        }
      }
    }

    result = sub_25B783110(v7, v6, a1);
    if ((v14 & 1) == 0)
    {
      v15 = result - 1;
      if (__OFSUB__(result, 1))
      {
        __break(1u);
        return result;
      }

      if (v15 < v8)
      {
        v16 = a1 + 16 * v15;
        v17 = *(v16 + 40);
        v18 = (a2 - *(v16 + 32)) / (v7 - *(v16 + 32));
        v19 = v6;
        v20 = v17;
        _s25NanoWeatherKitUICompanion13ColorSpectrumV18interpolateBetween6color16color28fractionSo7UIColorCAI_AI12CoreGraphics7CGFloatVtF_0(v20, v19, v18);
        v22 = v21;

        return v22;
      }
    }
  }

  v23 = [objc_opt_self() whiteColor];

  return v23;
}

unint64_t sub_25B7835A4()
{
  result = qword_27FBA1FA0;
  if (!qword_27FBA1FA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FBA1FA0);
  }

  return result;
}

uint64_t sub_25B7835F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_25B783638(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t Date.endOfDay.getter@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B38, &qword_25B791E70);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v58 = &v46 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1FA8, &qword_25B793370);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v56 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v46 - v8;
  v62 = sub_25B78FF28();
  v10 = *(v62 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v62);
  v55 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v59 = &v46 - v14;
  v15 = sub_25B78FE08();
  v16 = *(v15 - 8);
  v17 = v16[8];
  MEMORY[0x28223BE20](v15);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_25B78FEB8();
  v21 = *(v20 - 8);
  v60 = v20;
  v61 = v21;
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v52 = &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v46 - v25;
  v27 = sub_25B78FC88();
  v53 = *(v27 - 8);
  v54 = v27;
  v28 = *(v53 + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v46 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.Component.all.getter();
  v31 = v16[13];
  v50 = *MEMORY[0x277CC9810];
  v49 = v31;
  v31(v19);
  sub_25B78FE18();
  v32 = v16[1];
  v51 = v15;
  v48 = v32;
  v32(v19, v15);
  sub_25B78FED8();
  v33 = *(v10 + 48);
  v34 = v33(v9, 1, v62);
  v47 = v10;
  if (v34 == 1)
  {
    sub_25B78FF18();
    if (v33(v9, 1, v62) != 1)
    {
      sub_25B76966C(v9, &qword_27FBA1FA8, &qword_25B793370);
    }
  }

  else
  {
    (*(v10 + 32))(v59, v9, v62);
  }

  sub_25B78FE98();
  sub_25B78FE48();

  v35 = *(v61 + 8);
  v61 += 8;
  v35(v26, v60);
  sub_25B78FBD8();
  sub_25B78FC38();
  sub_25B78FC48();
  sub_25B78FBA8();
  v36 = v51;
  v49(v19, v50, v51);
  v37 = v52;
  sub_25B78FE18();
  v48(v19, v36);
  v38 = v56;
  sub_25B78FED8();
  v39 = v62;
  if (v33(v38, 1, v62) == 1)
  {
    sub_25B78FF18();
    v40 = v33(v38, 1, v39);
    v41 = v58;
    if (v40 != 1)
    {
      sub_25B76966C(v38, &qword_27FBA1FA8, &qword_25B793370);
    }
  }

  else
  {
    (*(v47 + 32))(v55, v38, v39);
    v41 = v58;
  }

  sub_25B78FE98();
  sub_25B78FE68();
  v35(v37, v60);
  v42 = sub_25B78FD88();
  v43 = *(v42 - 8);
  v44 = *(v43 + 48);
  if (v44(v41, 1, v42) == 1)
  {
    sub_25B78FCD8();
    (*(v53 + 8))(v30, v54);
    result = v44(v41, 1, v42);
    if (result != 1)
    {
      return sub_25B76966C(v41, &qword_27FBA1B38, &qword_25B791E70);
    }
  }

  else
  {
    (*(v53 + 8))(v30, v54);
    return (*(v43 + 32))(v57, v41, v42);
  }

  return result;
}

uint64_t Date.dateComponents.getter@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1FA8, &qword_25B793370);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v21 - v3;
  v5 = sub_25B78FF28();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25B78FE08();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_25B78FEB8();
  v15 = *(v22 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v22);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.Component.all.getter();
  (*(v11 + 104))(v14, *MEMORY[0x277CC9810], v10);
  sub_25B78FE18();
  (*(v11 + 8))(v14, v10);
  sub_25B78FED8();
  v19 = *(v6 + 48);
  if (v19(v4, 1, v5) == 1)
  {
    sub_25B78FF18();
    if (v19(v4, 1, v5) != 1)
    {
      sub_25B76966C(v4, &qword_27FBA1FA8, &qword_25B793370);
    }
  }

  else
  {
    (*(v6 + 32))(v9, v4, v5);
  }

  sub_25B78FE98();
  sub_25B78FE48();

  return (*(v15 + 8))(v18, v22);
}

uint64_t static Date.calendar.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1FA8, &qword_25B793370);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v16 - v2;
  v4 = sub_25B78FF28();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25B78FE08();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v13, *MEMORY[0x277CC9810], v9);
  sub_25B78FE18();
  (*(v10 + 8))(v13, v9);
  sub_25B78FED8();
  v14 = *(v5 + 48);
  if (v14(v3, 1, v4) == 1)
  {
    sub_25B78FF18();
    if (v14(v3, 1, v4) != 1)
    {
      sub_25B76966C(v3, &qword_27FBA1FA8, &qword_25B793370);
    }
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
  }

  return sub_25B78FE98();
}

uint64_t Date.dateEnumerationToEndDate(_:maxCount:componentToIterate:componentsToRound:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *), uint64_t a6)
{
  v78 = a1;
  v72 = a5;
  v73 = a6;
  v81 = a4;
  v74 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B38, &qword_25B791E70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v64 - v9;
  v11 = sub_25B78FD88();
  v75 = *(v11 - 8);
  v12 = *(v75 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v76 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v77 = &v64 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1FA8, &qword_25B793370);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v64 - v18;
  v68 = sub_25B78FF28();
  v20 = *(v68 - 1);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v68);
  v71 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_25B78FE08();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v64 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_25B78FC88();
  v65 = *(v28 - 8);
  v66 = v28;
  v29 = *(v65 + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v64 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_25B78FEB8();
  v33 = *(v32 - 8);
  v69 = v32;
  v70 = v33;
  v34 = *(v33 + 64);
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v64 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v80 = &v64 - v38;
  sub_25B78FE88();
  v67 = static Calendar.Component.all.getter();
  (*(v24 + 104))(v27, *MEMORY[0x277CC9810], v23);
  sub_25B78FE18();
  v39 = v23;
  v40 = v19;
  (*(v24 + 8))(v27, v39);
  sub_25B78FED8();
  v41 = v20;
  v42 = *(v20 + 48);
  v43 = v68;
  if (v42(v40, 1) == 1)
  {
    sub_25B78FF18();
    if ((v42)(v40, 1, v43) != 1)
    {
      sub_25B76966C(v40, &qword_27FBA1FA8, &qword_25B793370);
    }
  }

  else
  {
    (*(v41 + 32))(v71, v40, v43);
  }

  sub_25B78FE98();
  sub_25B78FE48();

  v44 = *(v70 + 8);
  v70 += 8;
  v68 = v44;
  (v44)(v37, v69);
  v45 = v77;
  sub_25B78FCC8();
  v46 = sub_25B78FD68();
  v47 = v76;
  if (v46 == 1 || v74 <= 0)
  {
    v63 = (v75 + 8);
    v75 = *(v75 + 8);
    v79 = v63;
  }

  else
  {
    v48 = 0;
    v49 = (v75 + 48);
    v79 = (v75 + 8);
    v50 = (v75 + 32);
    v71 = (v75 + 32);
    do
    {
      sub_25B78FE68();
      v51 = *v49;
      if ((*v49)(v10, 1, v11) == 1)
      {
        sub_25B78FCC8();
        v75 = *v79;
        (v75)(v45, v11);
        if (v51(v10, 1, v11) != 1)
        {
          sub_25B76966C(v10, &qword_27FBA1B38, &qword_25B791E70);
        }
      }

      else
      {
        v75 = *v79;
        (v75)(v45, v11);
        (*v50)(v47, v10, v11);
      }

      (*v50)(v45, v47, v11);
      v72(v45);
      v52 = sub_25B78FC28();
      if (v53)
      {
        break;
      }

      v54 = __OFADD__(v52, 1);
      result = v52 + 1;
      if (v54)
      {
        __break(1u);
        return result;
      }

      v56 = v49;
      v57 = v11;
      v58 = a3;
      sub_25B78FC68();
      v59 = *(v81 + 16);
      if (v59)
      {
        v60 = *(sub_25B78FEA8() - 8);
        v61 = v81 + ((*(v60 + 80) + 32) & ~*(v60 + 80));
        v62 = *(v60 + 72);
        do
        {
          sub_25B78FC68();
          v61 += v62;
          --v59;
        }

        while (v59);
      }

      v45 = v77;
      if (sub_25B78FD68() == 1)
      {
        v11 = v57;
        break;
      }

      ++v48;
      a3 = v58;
      v11 = v57;
      v47 = v76;
      v49 = v56;
      v50 = v71;
    }

    while (v48 < v74);
  }

  (v75)(v45, v11);
  (*(v65 + 8))(v31, v66);
  return (v68)(v80, v69);
}

uint64_t Date.hourlyDateEnumerationToEndDate(_:maxCount:block:)(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v87 = a3;
  v88 = a4;
  v70[0] = a2;
  v93 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B38, &qword_25B791E70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v96 = v70 - v6;
  v7 = sub_25B78FD88();
  v77 = *(v7 - 8);
  v8 = *(v77 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v91 = v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v92 = v70 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1FA8, &qword_25B793370);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v82 = v70 - v14;
  v81 = sub_25B78FF28();
  v75 = *(v81 - 1);
  v15 = v75[8];
  MEMORY[0x28223BE20](v81);
  v83 = v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_25B78FE08();
  v73 = *(v74 - 8);
  v17 = *(v73 + 64);
  MEMORY[0x28223BE20](v74);
  v19 = v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_25B78FC88();
  v71 = *(v72 - 8);
  v20 = *(v71 + 64);
  MEMORY[0x28223BE20](v72);
  v97 = v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_25B78FEB8();
  v23 = *(v22 - 8);
  v78 = v22;
  v79 = v23;
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = v70 - v28;
  v30 = sub_25B78FEA8();
  v31 = *(v30 - 8);
  v32 = v31[8];
  v33 = MEMORY[0x28223BE20](v30);
  v84 = v70 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = *MEMORY[0x277CC9980];
  v36 = v31[13];
  v90 = v70 - v37;
  v36();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1CD0, &qword_25B792560);
  v38 = v31[9];
  v76 = v31;
  v39 = (*(v76 + 80) + 32) & ~*(v76 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_25B7925B0;
  v70[1] = v40;
  v41 = v40 + v39;
  (v36)(v41, *MEMORY[0x277CC99A8], v30);
  v42 = *MEMORY[0x277CC99A0];
  v85 = v41;
  v86 = v38;
  v89 = v30;
  (v36)(v41 + v38, v42, v30);
  v43 = v75;
  v94 = v29;
  v44 = v81;
  v45 = v82;
  sub_25B78FE88();
  static Calendar.Component.all.getter();
  v46 = v73;
  v47 = v74;
  (*(v73 + 104))(v19, *MEMORY[0x277CC9810], v74);
  sub_25B78FE18();
  (*(v46 + 8))(v19, v47);
  sub_25B78FED8();
  v48 = v43[6];
  if (v48(v45, 1, v44) == 1)
  {
    sub_25B78FF18();
    if (v48(v45, 1, v44) != 1)
    {
      sub_25B76966C(v45, &qword_27FBA1FA8, &qword_25B793370);
    }
  }

  else
  {
    (v43[4])(v83, v45, v44);
  }

  sub_25B78FE98();
  sub_25B78FE48();

  v49 = *(v79 + 8);
  v79 += 8;
  v75 = v49;
  (v49)(v27, v78);
  v50 = v92;
  sub_25B78FCC8();
  v51 = sub_25B78FD68();
  v52 = v90;
  v53 = v91;
  if (v51 != 1)
  {
    v54 = (v77 + 48);
    v83 = (v77 + 8);
    v95 = (v77 + 32);
    v81 = (v76 + 1);
    v82 = (v76 + 2);
    v55 = (v70[0] & ~(v70[0] >> 63)) + 1;
    v80 = v7;
    do
    {
      if (!--v55)
      {
        break;
      }

      v56 = v96;
      sub_25B78FE68();
      v57 = *v54;
      if ((*v54)(v56, 1, v7) == 1)
      {
        sub_25B78FCC8();
        (*v83)(v50, v7);
        if (v57(v96, 1, v7) != 1)
        {
          sub_25B76966C(v96, &qword_27FBA1B38, &qword_25B791E70);
        }
      }

      else
      {
        (*v83)(v50, v7);
        (*v95)(v53, v96, v7);
      }

      (*v95)(v50, v53, v7);
      v87(v50);
      v58 = sub_25B78FC28();
      if (v59)
      {
        break;
      }

      v60 = __OFADD__(v58, 1);
      result = v58 + 1;
      if (v60)
      {
        __break(1u);
        return result;
      }

      sub_25B78FC68();
      v62 = *v82;
      v63 = v84;
      v64 = v54;
      v65 = v85;
      v66 = v89;
      (*v82)(v84, v85, v89);
      sub_25B78FC68();
      v67 = *v81;
      (*v81)(v63, v66);
      v68 = v65 + v86;
      v54 = v64;
      v62(v63, v68, v66);
      v50 = v92;
      sub_25B78FC68();
      v69 = v66;
      v52 = v90;
      v67(v63, v69);
      v7 = v80;
      v53 = v91;
    }

    while (sub_25B78FD68() != 1);
  }

  (*(v77 + 8))(v50, v7);
  (*(v71 + 8))(v97, v72);
  (v75)(v94, v78);
  return (v76[1])(v52, v89);
}

uint64_t sub_25B7853DC(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, unsigned int *a5)
{
  v81 = a5;
  v75 = a3;
  v76 = a4;
  v77 = a2;
  v78 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B38, &qword_25B791E70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v63 - v7;
  v9 = sub_25B78FD88();
  v72 = *(v9 - 8);
  v10 = *(v72 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v80 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v63 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1FA8, &qword_25B793370);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v68 = &v63 - v17;
  v18 = sub_25B78FF28();
  v69 = *(v18 - 8);
  v19 = *(v69 + 64);
  MEMORY[0x28223BE20](v18);
  v70 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_25B78FE08();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_25B78FC88();
  v65 = *(v26 - 8);
  v66 = v26;
  v27 = *(v65 + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v63 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_25B78FEB8();
  v31 = *(v30 - 8);
  v73 = v30;
  v74 = v31;
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v63 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v37 = &v63 - v36;
  v38 = sub_25B78FEA8();
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v41 = *v81;
  v63 = v43;
  v64 = v42;
  v44 = *(v43 + 104);
  v81 = (&v63 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44();
  v79 = v37;
  sub_25B78FE88();
  v67 = static Calendar.Component.all.getter();
  (*(v22 + 104))(v25, *MEMORY[0x277CC9810], v21);
  sub_25B78FE18();
  v45 = v25;
  v46 = v68;
  (*(v22 + 8))(v45, v21);
  v47 = v18;
  sub_25B78FED8();
  v48 = v69;
  v49 = *(v69 + 48);
  if (v49(v46, 1, v47) == 1)
  {
    sub_25B78FF18();
    if (v49(v46, 1, v47) != 1)
    {
      sub_25B76966C(v46, &qword_27FBA1FA8, &qword_25B793370);
    }
  }

  else
  {
    (*(v48 + 32))(v70, v46, v47);
  }

  sub_25B78FE98();
  sub_25B78FE48();

  v50 = *(v74 + 8);
  v74 += 8;
  v71 = v50;
  v50(v35, v73);
  sub_25B78FCC8();
  if (sub_25B78FD68() == 1 || v77 <= 0)
  {
    v56 = *(v72 + 8);
  }

  else
  {
    v51 = (v72 + 48);
    v52 = (v72 + 8);
    v53 = (v72 + 32);
    v54 = 1;
    while (1)
    {
      sub_25B78FE68();
      v55 = *v51;
      if ((*v51)(v8, 1, v9) == 1)
      {
        sub_25B78FCC8();
        v56 = *v52;
        (*v52)(v14, v9);
        if (v55(v8, 1, v9) != 1)
        {
          sub_25B76966C(v8, &qword_27FBA1B38, &qword_25B791E70);
        }

        v57 = v80;
      }

      else
      {
        v56 = *v52;
        (*v52)(v14, v9);
        v57 = v80;
        (*v53)(v80, v8, v9);
      }

      (*v53)(v14, v57, v9);
      v75(v14);
      v58 = sub_25B78FC28();
      if (v59)
      {
        break;
      }

      v60 = __OFADD__(v58, 1);
      result = v58 + 1;
      if (v60)
      {
        __break(1u);
        return result;
      }

      sub_25B78FC68();
      if (sub_25B78FD68() != 1 && v54++ < v77)
      {
        continue;
      }

      break;
    }
  }

  v56(v14, v9);
  (*(v65 + 8))(v29, v66);
  v71(v79, v73);
  return (*(v63 + 8))(v81, v64);
}

uint64_t Date.isEqualTo(_:components:)(uint64_t a1, uint64_t a2)
{
  v87 = a2;
  v77 = a1;
  v82 = sub_25B78FEA8();
  v84 = *(v82 - 8);
  v2 = *(v84 + 64);
  v3 = MEMORY[0x28223BE20](v82);
  v83 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v81 = &v66 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1FA8, &qword_25B793370);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v76 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v66 - v10;
  v72 = sub_25B78FF28();
  v12 = *(v72 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v72);
  v75 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v78 = &v66 - v16;
  v17 = sub_25B78FE08();
  v18 = *(v17 - 8);
  v19 = v18[8];
  MEMORY[0x28223BE20](v17);
  v21 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_25B78FEB8();
  v74 = *(v80 - 8);
  v22 = *(v74 + 64);
  v23 = MEMORY[0x28223BE20](v80);
  v79 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v66 - v25;
  v68 = sub_25B78FC88();
  v67 = *(v68 - 8);
  v27 = *(v67 + 64);
  v28 = MEMORY[0x28223BE20](v68);
  v85 = &v66 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v86 = &v66 - v30;
  static Calendar.Component.all.getter();
  v31 = v18[13];
  v71 = *MEMORY[0x277CC9810];
  v70 = v31;
  v31(v21);
  sub_25B78FE18();
  v32 = v18[1];
  v73 = v17;
  v69 = v32;
  v32(v21, v17);
  sub_25B78FED8();
  v33 = *(v12 + 48);
  v34 = v11;
  v35 = v11;
  v36 = v72;
  v37 = v33(v35, 1, v72);
  v66 = v12;
  if (v37 == 1)
  {
    sub_25B78FF18();
    if (v33(v34, 1, v36) != 1)
    {
      sub_25B76966C(v34, &qword_27FBA1FA8, &qword_25B793370);
    }
  }

  else
  {
    (*(v12 + 32))(v78, v34, v36);
  }

  sub_25B78FE98();
  sub_25B78FE48();

  v38 = *(v74 + 8);
  v38(v26, v80);
  static Calendar.Component.all.getter();
  v39 = v73;
  v70(v21, v71, v73);
  sub_25B78FE18();
  v69(v21, v39);
  v40 = v76;
  sub_25B78FED8();
  if (v33(v40, 1, v36) == 1)
  {
    sub_25B78FF18();
    v41 = v33(v40, 1, v36);
    v42 = v83;
    if (v41 != 1)
    {
      sub_25B76966C(v40, &qword_27FBA1FA8, &qword_25B793370);
    }
  }

  else
  {
    (*(v66 + 32))(v75, v40, v36);
    v42 = v83;
  }

  v43 = v79;
  sub_25B78FE98();
  sub_25B78FE48();

  v38(v43, v80);
  v44 = v87 + 56;
  v45 = 1 << *(v87 + 32);
  v46 = -1;
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  v47 = v46 & *(v87 + 56);
  v48 = (v45 + 63) >> 6;
  v80 = v84 + 16;
  v49 = (v84 + 8);

  v51 = 0;
  v52 = v82;
  while (v47)
  {
LABEL_17:
    v54 = v84;
    v55 = v81;
    (*(v84 + 16))(v81, *(v87 + 48) + *(v84 + 72) * (__clz(__rbit64(v47)) | (v51 << 6)), v52);
    (*(v54 + 32))(v42, v55, v52);
    v56 = sub_25B78FC28();
    if (v57)
    {
      (*v49)(v42, v52);
LABEL_23:

      v63 = 0;
LABEL_24:
      v64 = *(v67 + 8);
      v65 = v68;
      v64(v85, v68);
      v64(v86, v65);
      return v63;
    }

    v58 = v56;
    v59 = sub_25B78FC28();
    v60 = v42;
    v62 = v61;
    result = (*v49)(v60, v52);
    if ((v62 & 1) == 0)
    {
      v47 &= v47 - 1;
      v42 = v83;
      if (v58 == v59)
      {
        continue;
      }
    }

    goto LABEL_23;
  }

  while (1)
  {
    v53 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      break;
    }

    if (v53 >= v48)
    {

      v63 = 1;
      goto LABEL_24;
    }

    v47 = *(v44 + 8 * v53);
    ++v51;
    if (v47)
    {
      v51 = v53;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t Date.roundDownToHour()@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1FA8, &qword_25B793370);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v31 - v3;
  v5 = sub_25B78FF28();
  v32 = *(v5 - 8);
  v6 = *(v32 + 64);
  MEMORY[0x28223BE20](v5);
  v33 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25B78FE08();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_25B78FEB8();
  v13 = *(v36 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v36);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v31 - v18;
  v20 = sub_25B78FC88();
  v34 = *(v20 - 8);
  v35 = v20;
  v21 = *(v34 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.Component.all.getter();
  (*(v9 + 104))(v12, *MEMORY[0x277CC9810], v8);
  sub_25B78FE18();
  v24 = v12;
  v25 = v5;
  (*(v9 + 8))(v24, v8);
  sub_25B78FED8();
  v26 = v32;
  v27 = *(v32 + 48);
  if (v27(v4, 1, v25) == 1)
  {
    sub_25B78FF18();
    if (v27(v4, 1, v25) != 1)
    {
      sub_25B76966C(v4, &qword_27FBA1FA8, &qword_25B793370);
    }
  }

  else
  {
    (*(v26 + 32))(v33, v4, v25);
  }

  sub_25B78FE98();
  sub_25B78FE48();

  v28 = *(v13 + 8);
  v29 = v36;
  v28(v19, v36);
  sub_25B78FBA8();
  sub_25B78FC48();
  sub_25B78FC38();
  sub_25B78FE88();
  sub_25B78FE68();
  v28(v17, v29);
  return (*(v34 + 8))(v23, v35);
}

uint64_t Date.roundDownToDay()@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1FA8, &qword_25B793370);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v30 - v3;
  v5 = sub_25B78FF28();
  v31 = *(v5 - 8);
  v6 = *(v31 + 64);
  MEMORY[0x28223BE20](v5);
  v32 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25B78FE08();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_25B78FEB8();
  v13 = *(v35 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v35);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v30 - v18;
  v20 = sub_25B78FC88();
  v33 = *(v20 - 8);
  v34 = v20;
  v21 = *(v33 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.Component.all.getter();
  (*(v9 + 104))(v12, *MEMORY[0x277CC9810], v8);
  sub_25B78FE18();
  (*(v9 + 8))(v12, v8);
  v24 = v5;
  sub_25B78FED8();
  v25 = v31;
  v26 = *(v31 + 48);
  if (v26(v4, 1, v24) == 1)
  {
    sub_25B78FF18();
    if (v26(v4, 1, v24) != 1)
    {
      sub_25B76966C(v4, &qword_27FBA1FA8, &qword_25B793370);
    }
  }

  else
  {
    (*(v25 + 32))(v32, v4, v24);
  }

  sub_25B78FE98();
  sub_25B78FE48();

  v27 = *(v13 + 8);
  v28 = v35;
  v27(v19, v35);
  sub_25B78FBA8();
  sub_25B78FC48();
  sub_25B78FC38();
  sub_25B78FBD8();
  sub_25B78FE88();
  sub_25B78FE68();
  v27(v17, v28);
  return (*(v33 + 8))(v23, v34);
}

uint64_t Date.noonOfDay(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v52 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B38, &qword_25B791E70);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v49 = &v46 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1FA8, &qword_25B793370);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v54 = &v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1FB0, &qword_25B793378);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v50 = &v46 - v11;
  v12 = sub_25B78FC88();
  v55 = *(v12 - 8);
  v56 = v12;
  v13 = *(v55 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v46 - v17;
  v19 = sub_25B78FF28();
  v46 = *(v19 - 8);
  v20 = v46;
  v47 = v19;
  v21 = *(v46 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_25B78FEB8();
  v59 = *(v48 - 8);
  v24 = *(v59 + 64);
  MEMORY[0x28223BE20](v48);
  v26 = &v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25B78FE88();
  v27 = *(v20 + 16);
  v51 = v20 + 16;
  v53 = v27;
  v27(v23, a1, v19);
  sub_25B78FE98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1CD0, &qword_25B792560);
  v28 = sub_25B78FEA8();
  v29 = *(v28 - 8);
  v30 = *(v29 + 72);
  v31 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_25B793360;
  v33 = v32 + v31;
  v34 = *(v29 + 104);
  v34(v33, *MEMORY[0x277CC9988], v28);
  v34(v33 + v30, *MEMORY[0x277CC9998], v28);
  v34(v33 + 2 * v30, *MEMORY[0x277CC9968], v28);
  sub_25B7741DC(v32);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_25B78FE48();

  v35 = v48;
  (*(v59 + 56))(v50, 1, 1, v48);
  v36 = v47;
  v37 = *(v46 + 56);
  v38 = v54;
  v37(v54, 1, 1, v47);
  sub_25B78FC58();
  sub_25B78FBE8();
  sub_25B78FBF8();
  sub_25B78FC08();
  sub_25B78FC18();
  sub_25B78FBB8();
  sub_25B78FBC8();
  sub_25B78FBD8();
  sub_25B78FC38();
  sub_25B78FC48();
  v53(v38, v52, v36);
  v37(v38, 0, 1, v36);
  sub_25B78FC78();
  v39 = v49;
  sub_25B78FE68();
  v40 = v56;
  v41 = *(v55 + 8);
  v41(v16, v56);
  v41(v18, v40);
  (*(v59 + 8))(v26, v35);
  v42 = sub_25B78FD88();
  v43 = *(v42 - 8);
  v44 = *(v43 + 48);
  if (v44(v39, 1, v42) != 1)
  {
    return (*(v43 + 32))(v57, v39, v42);
  }

  (*(v43 + 16))(v57, v58, v42);
  result = (v44)(v39, 1, v42);
  if (result != 1)
  {
    return sub_25B76966C(v39, &qword_27FBA1B38, &qword_25B791E70);
  }

  return result;
}

uint64_t Date.startOfNextDay()@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = sub_25B78FD88();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v28 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25B78FEA8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B38, &qword_25B791E70);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - v15;
  v17 = sub_25B78FEB8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25B78FE88();
  (*(v6 + 104))(v9, *MEMORY[0x277CC9968], v5);
  sub_25B78FE78();
  (*(v6 + 8))(v9, v5);
  sub_25B787AD4(v16, v14);
  if ((*(v2 + 48))(v14, 1, v1) == 1)
  {
    sub_25B76966C(v16, &qword_27FBA1B38, &qword_25B791E70);
    (*(v18 + 8))(v21, v17);
    sub_25B76966C(v14, &qword_27FBA1B38, &qword_25B791E70);
    v22 = 1;
    v23 = v29;
  }

  else
  {
    v24 = v28;
    (*(v2 + 32))(v28, v14, v1);
    v25 = v29;
    sub_25B78FE28();
    (*(v2 + 8))(v24, v1);
    sub_25B76966C(v16, &qword_27FBA1B38, &qword_25B791E70);
    (*(v18 + 8))(v21, v17);
    v22 = 0;
    v23 = v25;
  }

  return (*(v2 + 56))(v23, v22, 1, v1);
}

uint64_t Date.createTimeAt(hour:minute:second:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v44 = a6;
  v45 = a5;
  v46 = a7;
  v42 = a4;
  v43 = a3;
  v40 = a2;
  v41 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B38, &qword_25B791E70);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v35 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v38 = &v34 - v11;
  v39 = sub_25B78FC88();
  v37 = *(v39 - 8);
  v12 = *(v37 + 64);
  MEMORY[0x28223BE20](v39);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_25B78FEB8();
  v15 = *(v36 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v36);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25B78FE88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1CD0, &qword_25B792560);
  v19 = sub_25B78FEA8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 72);
  v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_25B793360;
  v24 = v23 + v22;
  v25 = *(v20 + 104);
  v25(v24, *MEMORY[0x277CC9988], v19);
  v25(v24 + v21, *MEMORY[0x277CC9998], v19);
  v25(v24 + 2 * v21, *MEMORY[0x277CC9968], v19);
  v26 = v35;
  sub_25B7741DC(v23);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_25B78FE48();

  sub_25B78FBD8();
  sub_25B78FC38();
  sub_25B78FC48();
  v27 = v38;
  sub_25B78FE68();
  (*(v37 + 8))(v14, v39);
  (*(v15 + 8))(v18, v36);
  sub_25B787B44(v27, v26);
  v28 = sub_25B78FD88();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v26, 1, v28) == 1)
  {
    sub_25B76966C(v26, &qword_27FBA1B38, &qword_25B791E70);
    v30 = 1;
    v31 = v46;
  }

  else
  {
    v32 = v46;
    (*(v29 + 32))(v46, v26, v28);
    v30 = 0;
    v31 = v32;
  }

  return (*(v29 + 56))(v31, v30, 1, v28);
}

uint64_t sub_25B787AD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B38, &qword_25B791E70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B787B44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B38, &qword_25B791E70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t DayWeather.isTimeDayTime(_:)(uint64_t a1)
{
  v33 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B38, &qword_25B791E70);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - v7;
  v9 = sub_25B790448();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v31 - v15;
  v17 = sub_25B78FD88();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v32 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v35 = v1;
  v36 = &v31 - v22;
  sub_25B78FF68();
  sub_25B790438();
  v23 = v18;
  v24 = *(v10 + 8);
  v34 = v9;
  v24(v16, v9);
  v25 = *(v18 + 48);
  if (v25(v8, 1, v17) != 1)
  {
    v31 = *(v23 + 32);
    v31(v36, v8, v17);
    v8 = v6;
    sub_25B78FF68();
    sub_25B790428();
    v24(v14, v34);
    if (v25(v6, 1, v17) != 1)
    {
      v27 = v32;
      v31(v32, v6, v17);
      if (sub_25B78FD28())
      {
        v28 = *(v23 + 8);
        v28(v27, v17);
        v28(v36, v17);
      }

      else
      {
        sub_25B771E60();
        v29 = sub_25B7905F8();
        v30 = *(v23 + 8);
        v30(v27, v17);
        v30(v36, v17);
        if (v29)
        {
          return 1;
        }
      }

      return 0;
    }

    (*(v23 + 8))(v36, v17);
  }

  sub_25B787F80(v8);
  return 1;
}

uint64_t sub_25B787F80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B38, &qword_25B791E70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_25B788014(uint64_t (*a1)(uint64_t), void (*a2)(uint64_t))
{
  v4 = sub_25B790348();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1(v7);
  a2(v10);
  v11 = 0.0;
  if (_s10WeatherKit0A9ConditionO04NanoaB11UICompanionE21nwkui_isPrecipitationSbvg_0())
  {
    sub_25B790758();
    v11 = v12;
  }

  (*(v5 + 8))(v9, v4);
  return v11;
}

uint64_t Forecast<>.value(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_25B7883A0(a1, a2, a3);
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    sub_25B790418();
    v7 = 0;
  }

  v8 = *(*(*(a2 + 16) - 8) + 56);

  return v8(a4, v7, 1);
}

uint64_t Forecast<>.values(startingAt:size:sizeMustMatch:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  swift_getWitnessTable();
  v10 = sub_25B790BF8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  sub_25B7883A0(a1, a4, a5);
  if (v13)
  {
    goto LABEL_12;
  }

  v14 = v12;
  result = sub_25B790878();
  if (result < 0)
  {
    goto LABEL_12;
  }

  if (a2 <= 0)
  {
    result = sub_25B790878();
    a2 = result - v14;
    if (__OFSUB__(result, v14))
    {
LABEL_18:
      __break(1u);
      return result;
    }
  }

  v16 = v14 + a2;
  if (__OFADD__(v14, a2))
  {
    __break(1u);
    goto LABEL_18;
  }

  if (sub_25B790878() < v16)
  {
    v16 = sub_25B790878();
  }

  if (v14 < v16)
  {
    sub_25B790898();
    v17 = *(a4 + 16);
    swift_getWitnessTable();
    result = sub_25B790728();
    if (a3)
    {
      v18 = result;
      if (sub_25B790718() == a2)
      {
        return v18;
      }

      else
      {

        return sub_25B7905C8();
      }
    }

    return result;
  }

LABEL_12:
  v19 = *(a4 + 16);

  return sub_25B7905C8();
}

void sub_25B7883A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v26 = a3;
  v4 = *(a2 + 16);
  v5 = sub_25B7909B8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v22 - v8;
  v10 = sub_25B78FD88();
  v24 = *(v10 - 8);
  v11 = *(v24 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v22 - v15;
  v22[1] = swift_getWitnessTable();
  v23 = v3;
  sub_25B790888();
  v17 = *(v4 - 8);
  if ((*(v17 + 48))(v9, 1, v4) == 1)
  {
    (*(v6 + 8))(v9, v5);
    return;
  }

  v18 = v26;
  (*(v26 + 32))(v4, v26);
  (*(v17 + 8))(v9, v4);
  v19 = v24;
  (*(v24 + 32))(v16, v14, v10);
  sub_25B771E60();
  if (sub_25B7905F8())
  {
LABEL_9:
    (*(v19 + 8))(v16, v10);
    return;
  }

  sub_25B78FCE8();
  v21 = v20 / (*(v18 + 40))(v4, v18);
  if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v21 < 9.22337204e18)
  {
    if ((v21 & 0x8000000000000000) == 0)
    {
      sub_25B790878();
      (*(v19 + 8))(v16, v10);
      return;
    }

    goto LABEL_9;
  }

LABEL_12:
  __break(1u);
}

uint64_t Forecast<>.forecast(startingAt:size:sizeMustMatch:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  v10 = sub_25B790328();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  Forecast<>.values(startingAt:size:sizeMustMatch:)(a1, a2, a3, a4, a5);
  sub_25B7903E8();
  v12 = *(a4 + 16);
  v13 = a5[1];
  v14 = a5[2];
  v15 = a5[3];
  return sub_25B790408();
}

uint64_t sub_25B7887E4()
{
  type metadata accessor for UltraVioletFormatter();
  result = swift_initStaticObject();
  static UltraVioletFormatter.shared = result;
  return result;
}

uint64_t *UltraVioletFormatter.shared.unsafeMutableAddressor()
{
  if (qword_27FBA19F8 != -1)
  {
    swift_once();
  }

  return &static UltraVioletFormatter.shared;
}

uint64_t static UltraVioletFormatter.shared.getter()
{
  type metadata accessor for UltraVioletFormatter();

  return swift_initStaticObject();
}

Swift::String __swiftcall UltraVioletFormatter.stringForIndex(_:noValueStyle:)(Swift::Int_optional _, NanoWeatherKitUICompanion::FormatterNoValueStyle noValueStyle)
{
  if (_.is_nil)
  {

    v3 = FormatterNoValueStyle.rawValue.getter(noValueStyle);
  }

  else
  {
    sub_25B78890C();
    v3 = sub_25B790A28();
  }

  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

unint64_t sub_25B78890C()
{
  result = qword_27FBA1FB8;
  if (!qword_27FBA1FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA1FB8);
  }

  return result;
}

uint64_t sub_25B788998(void *a1)
{
  a1[1] = sub_25B788A24(&qword_27FBA1FC0);
  a1[2] = sub_25B788A24(&qword_27FBA1FC8);
  result = sub_25B788A24(&qword_27FBA1FD0);
  a1[3] = result;
  return result;
}

uint64_t sub_25B788A24(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_25B78FFC8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Measurement<>.formattedWindSpeedComponents(locale:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v74 = a1;
  v56 = a2;
  v52 = sub_25B7905B8();
  v2 = *(v52 - 8);
  v3 = v2[8];
  MEMORY[0x28223BE20](v52);
  v50 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C20, &qword_25B792300);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v48 - v7;
  v9 = sub_25B7908E8();
  v10 = *(v9 - 8);
  v11 = v10[8];
  MEMORY[0x28223BE20](v9);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_25B7908D8();
  v75 = *(v51 - 8);
  v14 = *(v75 + 64);
  v15 = MEMORY[0x28223BE20](v51);
  v55 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v48 - v17;
  sub_25B790788();
  v71 = *MEMORY[0x277D7B490];
  v19 = v10[13];
  v72 = v10 + 13;
  v73 = v19;
  v57 = v9;
  v19(v13);
  v20 = sub_25B78FDF8();
  v21 = *(v20 - 8);
  v49 = *(v21 + 16);
  v58 = v20;
  v49(v8, v74, v20);
  v22 = *(v21 + 56);
  v59 = v21 + 56;
  v60 = v22;
  v22(v8, 0, 1, v20);
  sub_25B790578();

  sub_25B789160(v8);
  v23 = v10[1];
  v65 = v10 + 1;
  v66 = v23;
  v23(v13, v9);
  v68 = *MEMORY[0x277D7B408];
  v24 = v2[13];
  v69 = v2 + 13;
  v70 = v24;
  v25 = v50;
  v26 = v52;
  v24(v50);
  v67 = sub_25B790468();
  sub_25B790458();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1FD8, &qword_25B7933F8);
  v63 = sub_25B7891C8();
  v27 = v51;
  v54 = sub_25B78FA88();
  v53 = v28;

  v29 = v2[1];
  v61 = v2 + 1;
  v62 = v29;
  v30 = v26;
  v29(v25, v26);
  v31 = *(v75 + 8);
  v75 += 8;
  v48 = v31;
  v31(v18, v27);
  sub_25B790778();
  v32 = v57;
  v73(v13, v71, v57);
  v33 = v58;
  v49(v8, v74, v58);
  v60(v8, 0, 1, v33);
  sub_25B790578();

  sub_25B789160(v8);
  v66(v13, v32);
  v34 = v25;
  v35 = v25;
  v36 = v30;
  v70(v35, v68, v30);
  sub_25B790458();
  v74 = sub_25B78FA88();
  v49 = v37;

  v62(v34, v30);
  v38 = v48;
  v48(v18, v27);
  sub_25B790778();
  v39 = v57;
  v73(v13, v71, v57);
  v60(v8, 1, 1, v58);
  sub_25B790578();

  sub_25B789160(v8);
  v66(v13, v39);
  v40 = v55;
  sub_25B7908C8();
  v38(v18, v27);
  v70(v34, v68, v36);
  sub_25B790458();
  v41 = sub_25B78FA88();
  v43 = v42;

  v62(v34, v36);
  result = (v38)(v40, v27);
  v45 = v56;
  v46 = v53;
  *v56 = v54;
  v45[1] = v46;
  v47 = v49;
  v45[2] = v74;
  v45[3] = v47;
  v45[4] = v41;
  v45[5] = v43;
  return result;
}

uint64_t sub_25B789160(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C20, &qword_25B792300);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25B7891C8()
{
  result = qword_27FBA1FE0[0];
  if (!qword_27FBA1FE0[0])
  {
    sub_25B7908D8();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FBA1FE0);
  }

  return result;
}

uint64_t Measurement<>.formattedWindSpeed(locale:)(uint64_t a1)
{
  v25 = a1;
  v1 = sub_25B7905B8();
  v26 = *(v1 - 8);
  v27 = v1;
  v2 = *(v26 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1C20, &qword_25B792300);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v25 - v7;
  v9 = sub_25B7908E8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25B7908D8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v13, *MEMORY[0x277D7B490], v9);
  v19 = sub_25B78FDF8();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v8, v25, v19);
  (*(v20 + 56))(v8, 0, 1, v19);
  sub_25B790768();
  sub_25B790578();

  sub_25B789160(v8);
  (*(v10 + 8))(v13, v9);
  v22 = v26;
  v21 = v27;
  (*(v26 + 104))(v4, *MEMORY[0x277D7B408], v27);
  sub_25B790468();
  sub_25B790458();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1FD8, &qword_25B7933F8);
  sub_25B7891C8();
  v23 = sub_25B78FA88();

  (*(v22 + 8))(v4, v21);
  (*(v15 + 8))(v18, v14);
  return v23;
}

uint64_t Measurement<>.WindSpeedComponents.speed.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Measurement<>.WindSpeedComponents.unit.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Measurement<>.WindSpeedComponents.accessibleUnit.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_25B789658()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t sub_25B7896B4(uint64_t a1, int a2)
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

uint64_t sub_25B7896FC(uint64_t result, int a2, int a3)
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

uint64_t static WeatherLaunchType.componentsFromURL(_:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1AC8, &qword_25B791BB0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v12 - v2;
  v4 = sub_25B78FB98();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25B78FB18();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_25B7662B4(v3);
    return 0;
  }

  else
  {
    v10 = (*(v5 + 32))(v8, v3, v4);
    MEMORY[0x25F86C2F0](v10);
    _s25NanoWeatherKitUICompanion0B10LaunchTypeO8rawValueACSgSS_tcfC_0();
    v11 = sub_25B78FB58();
    (*(v5 + 8))(v8, v4);
    return v11;
  }
}

uint64_t WeatherLaunchType.rawValue.getter(char a1)
{
  result = 6910305;
  switch(a1)
  {
    case 1:
      result = 6911605;
      break;
    case 2:
      result = 0x776F72726F6D6F74;
      break;
    case 3:
      result = 1684957559;
      break;
    case 4:
      result = 0x65636E616863;
      break;
    case 5:
      result = 0x74617265706D6574;
      break;
    case 6:
      result = 0x6F697469646E6F63;
      break;
    case 7:
      result = 0x6572757373657270;
      break;
    case 8:
      result = 0x79746964696D7568;
      break;
    case 9:
      result = 0x696C696269736976;
      break;
    case 10:
      result = 0x7961447473616CLL;
      break;
    case 11:
      result = 0x44746E6572727563;
      break;
    case 12:
      result = 0x657265766573;
      break;
    case 13:
      result = 1701736302;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25B789AF8(char *a1, char *a2)
{
  v2 = *a2;
  v3 = WeatherLaunchType.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == WeatherLaunchType.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25B790BE8();
  }

  return v8 & 1;
}

uint64_t sub_25B789B80()
{
  v1 = *v0;
  sub_25B790C18();
  WeatherLaunchType.rawValue.getter(v1);
  sub_25B790678();

  return sub_25B790C38();
}

uint64_t sub_25B789BE4()
{
  WeatherLaunchType.rawValue.getter(*v0);
  sub_25B790678();
}

uint64_t sub_25B789C38()
{
  v1 = *v0;
  sub_25B790C18();
  WeatherLaunchType.rawValue.getter(v1);
  sub_25B790678();

  return sub_25B790C38();
}

uint64_t sub_25B789C98@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s25NanoWeatherKitUICompanion0B10LaunchTypeO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

uint64_t sub_25B789CC8@<X0>(uint64_t *a1@<X8>)
{
  result = WeatherLaunchType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t WeatherLaunchDestination.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6F4E6C6961746564;
  }

  if (a1 == 1)
  {
    return 0x6F486C6961746564;
  }

  return 0x61446C6961746564;
}

uint64_t sub_25B789D74(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6F486C6961746564;
  v4 = 0xEC000000796C7275;
  if (v2 != 1)
  {
    v3 = 0x61446C6961746564;
    v4 = 0xEB00000000796C69;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6F4E6C6961746564;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE900000000000077;
  }

  v7 = 0x6F486C6961746564;
  v8 = 0xEC000000796C7275;
  if (*a2 != 1)
  {
    v7 = 0x61446C6961746564;
    v8 = 0xEB00000000796C69;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6F4E6C6961746564;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE900000000000077;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25B790BE8();
  }

  return v11 & 1;
}

uint64_t sub_25B789E98()
{
  v1 = *v0;
  sub_25B790C18();
  sub_25B790678();

  return sub_25B790C38();
}

uint64_t sub_25B789F50()
{
  *v0;
  *v0;
  sub_25B790678();
}

uint64_t sub_25B789FF4()
{
  v1 = *v0;
  sub_25B790C18();
  sub_25B790678();

  return sub_25B790C38();
}

uint64_t sub_25B78A0A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s25NanoWeatherKitUICompanion0B17LaunchDestinationO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

void sub_25B78A0D8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000077;
  v4 = 0xEC000000796C7275;
  v5 = 0x6F486C6961746564;
  if (v2 != 1)
  {
    v5 = 0x61446C6961746564;
    v4 = 0xEB00000000796C69;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6F4E6C6961746564;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t _s25NanoWeatherKitUICompanion0B10LaunchTypeO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_25B790B08();

  if (v0 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v0;
  }
}

uint64_t _s25NanoWeatherKitUICompanion0B17LaunchDestinationO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_25B790B08();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_25B78A1E8()
{
  result = qword_27FBA2068;
  if (!qword_27FBA2068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA2068);
  }

  return result;
}

unint64_t sub_25B78A240()
{
  result = qword_27FBA2070;
  if (!qword_27FBA2070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBA2078, &qword_25B793528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA2070);
  }

  return result;
}

unint64_t sub_25B78A2A8()
{
  result = qword_27FBA2080;
  if (!qword_27FBA2080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA2080);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WeatherLaunchType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WeatherLaunchType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t CLLocationCoordinate2D.isDaylight(for:)(double a1, double a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if (qword_27FBA19A0 != -1)
  {
    v5 = a2;
    v6 = a1;
    swift_once();
    a1 = v6;
    a2 = v5;
  }

  GEOLocationCoordinate2DMake(a1, a2);
  sub_25B78FCB8();
  v2 = *MEMORY[0x277D0E7C0];
  result = geo_isDayLightForLocation();
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

UIColor __swiftcall UIColor.init(hex:)(Swift::String hex)
{
  sub_25B7904B8();

  return sub_25B790978();
}

uint64_t Color.blend(with:)()
{
  v0 = sub_25B7904C8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25B7904A8();
  sub_25B7904A8();
  (*(v1 + 104))(v4, *MEMORY[0x277CE0EE0], v0);
  return sub_25B790538();
}

uint64_t static Color.blend(color1:intensity1:color2:intensity2:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = sub_25B7904C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 / (a3 + a4) <= 0.0)
  {

    return a2;
  }

  else if (a4 / (a3 + a4) <= 0.0)
  {
  }

  else
  {
    v14 = v11;
    sub_25B7904A8();
    sub_25B7904A8();
    (*(v9 + 104))(v13, *MEMORY[0x277CE0EE0], v14);
    return sub_25B790538();
  }

  return a1;
}

uint64_t *PercentFormatter.shared.unsafeMutableAddressor()
{
  if (qword_27FBA1A00 != -1)
  {
    swift_once();
  }

  return &static PercentFormatter.shared;
}

uint64_t sub_25B78A870()
{
  type metadata accessor for PercentFormatter();
  swift_allocObject();
  result = sub_25B78A908();
  static PercentFormatter.shared = result;
  return result;
}

uint64_t static PercentFormatter.shared.getter()
{
  if (qword_27FBA1A00 != -1)
  {
    swift_once();
  }
}

uint64_t sub_25B78A908()
{
  v1 = v0;
  v2 = sub_25B78FDF8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  sub_25B78FDC8();
  v8 = sub_25B78FDB8();
  (*(v3 + 8))(v6, v2);
  [v7 setLocale_];

  [v7 setNumberStyle_];
  *(v1 + 16) = v7;
  *(v1 + 24) = 0x3FF0000000000000;
  return v1;
}

Swift::String __swiftcall PercentFormatter.string(for:percentStyle:noValueStyle:)(Swift::Double_optional a1, NanoWeatherKitUICompanion::PercentStyle percentStyle, NanoWeatherKitUICompanion::FormatterNoValueStyle noValueStyle)
{
  if (percentStyle)
  {
    v5 = v3;
  }

  else
  {
    v6 = v3;
    v7 = *(v4 + 16);
    v8 = sub_25B790618();

    [v7 setPercentSymbol_];

    v9 = sub_25B790738();
    v10 = [v7 stringForObjectValue_];

    if (v10)
    {
      v11 = sub_25B790638();
      v13 = v12;

      v14 = v11;
      v15 = v13;
      goto LABEL_9;
    }

    v5 = v6;
  }

  v14 = FormatterNoValueStyle.rawValue.getter(v5);
LABEL_9:
  result._object = v15;
  result._countAndFlagsBits = v14;
  return result;
}

uint64_t PercentFormatter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_25B78ABD0()
{
  v0 = sub_25B78FDF8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - v6;
  v8 = sub_25B78FF28();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v21 - v14;
  sub_25B78FEF8();
  sub_25B78FDC8();
  (*(v9 + 16))(v13, v15, v8);
  (*(v1 + 16))(v5, v7, v0);
  v16 = type metadata accessor for NHPWidgetDateFormatter();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = NHPWidgetDateFormatter.init(timeZone:locale:)(v13, v5);
  (*(v1 + 8))(v7, v0);
  result = (*(v9 + 8))(v15, v8);
  static PrecipitationOutlook.viewFormatter = v19;
  return result;
}

uint64_t *PrecipitationOutlook.viewFormatter.unsafeMutableAddressor()
{
  if (qword_27FBA1A08 != -1)
  {
    swift_once();
  }

  return &static PrecipitationOutlook.viewFormatter;
}

uint64_t static PrecipitationOutlook.viewFormatter.getter()
{
  if (qword_27FBA1A08 != -1)
  {
    swift_once();
  }
}

uint64_t PrecipitationOutlook.appViewModel(for:)(char a1)
{
  if (qword_27FBA1A08 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  if (a1)
  {
    return sub_25B78C940(v1, static PrecipitationOutlook.viewFormatter);
  }

  else
  {
    return sub_25B78BEC0(v1, static PrecipitationOutlook.viewFormatter);
  }
}

uint64_t PrecipitationOutlook.ViewFormatter.appViewModel(for:type:)(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    return sub_25B78C940(a1, a3);
  }

  else
  {
    return sub_25B78BEC0(a1, a3);
  }
}

__n128 PrecipitationOutlook.widgetViewModel(for:)@<Q0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (qword_27FBA1A08 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  if (a1)
  {
    sub_25B78E658(v2, static PrecipitationOutlook.viewFormatter, v7);
  }

  else
  {
    sub_25B78D7D0(v2, static PrecipitationOutlook.viewFormatter, v7);
  }

  v4 = v8;
  result = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = result;
  *(a2 + 32) = v4;
  return result;
}

__n128 PrecipitationOutlook.ViewFormatter.widgetViewModel(for:type:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a2)
  {
    sub_25B78E658(a1, a3, v7);
  }

  else
  {
    sub_25B78D7D0(a1, a3, v7);
  }

  v5 = v8;
  result = v7[1];
  *a4 = v7[0];
  *(a4 + 16) = result;
  *(a4 + 32) = v5;
  return result;
}

double PrecipitationOutlook.compactViewModel()@<D0>(uint64_t a1@<X8>)
{
  if (qword_27FBA1A08 != -1)
  {
    swift_once();
  }

  PrecipitationOutlook.ViewFormatter.compactViewModel(for:)(v1, v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t PrecipitationOutlook.ViewFormatter.compactViewModel(for:)@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v105 = a2;
  v3 = sub_25B790348();
  v102 = *(v3 - 8);
  v103 = v3;
  v4 = *(v102 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v101 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v99 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1AF8, &unk_25B791E40);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v104 = &v99 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v99 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v99 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v99 - v22;
  v24 = type metadata accessor for PrecipitationOutlook.State(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v99 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for PrecipitationOutlook(0);
  sub_25B78F2AC(a1 + *(v28 + 32), v27);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B20, &qword_25B792780);
      sub_25B76D804(&v27[*(v75 + 48)], v21);
      v76 = NHPWidgetDateFormatter.relativeTimeString(for:style:)(*(a1 + *(v28 + 20)), NSDateComponentsFormatterUnitsStyleBrief);
      if (qword_27FBA19B8 != -1)
      {
        swift_once();
      }

      v77 = qword_27FBA1C18;
      v78 = sub_25B790618();
      v79 = sub_25B790618();
      v80 = [v77 localizedStringForKey:v78 value:0 table:v79];

      sub_25B790638();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1D08, &qword_25B7925D8);
      v81 = swift_allocObject();
      *(v81 + 16) = xmmword_25B791A40;
      *(v81 + 56) = MEMORY[0x277D837D0];
      *(v81 + 64) = sub_25B777A70();
      *(v81 + 32) = v76;
      v82 = sub_25B790648();
      v84 = v83;

      v30 = sub_25B77FA44(0, 1, 1, MEMORY[0x277D84F90]);
      v86 = *(v30 + 2);
      v85 = *(v30 + 3);
      if (v86 >= v85 >> 1)
      {
        v30 = sub_25B77FA44((v85 > 1), v86 + 1, 1, v30);
      }

      v33 = v105;
      *(v30 + 2) = v86 + 1;
      v87 = &v30[16 * v86];
      *(v87 + 4) = v82;
      *(v87 + 5) = v84;
      sub_25B7794F0(v21, v18);
      v88 = v102;
      v89 = v103;
      v90 = *(v102 + 48);
      if (v90(v18, 1, v103) == 1)
      {
        (*(v88 + 104))(v8, *MEMORY[0x277CE32A0], v89);
        if (v90(v18, 1, v89) != 1)
        {
          sub_25B78F310(v18);
        }
      }

      else
      {
        (*(v88 + 32))(v8, v18, v89);
      }

      v95 = _s25NanoWeatherKitUICompanion0B21ConditionSymbolMapperC17conditionIconName0H09isDaytimeSSSg0bC00bE0O_SbtF_0(v8, 1);
      if (v96)
      {
        v34 = v95;
      }

      else
      {
        v34 = 0;
      }

      if (v96)
      {
        v36 = v96;
      }

      else
      {
        v36 = 0xE000000000000000;
      }

      v97 = *(v88 + 8);
      v97(v8, v89);
      sub_25B78F310(v21);
      v97(v27, v89);
    }

    else
    {
      sub_25B76D804(v27, v23);
      sub_25B78CF68();
      v37 = sub_25B790658();
      v39 = v38;

      v106 = v37;
      v107 = v39;
      sub_25B765148();
      v40 = sub_25B7909D8();
      v42 = v41;

      v30 = sub_25B77FA44(0, 1, 1, MEMORY[0x277D84F90]);
      v44 = *(v30 + 2);
      v43 = *(v30 + 3);
      if (v44 >= v43 >> 1)
      {
        v30 = sub_25B77FA44((v43 > 1), v44 + 1, 1, v30);
      }

      sub_25B78F310(v23);
      v34 = 0;
      *(v30 + 2) = v44 + 1;
      v45 = &v30[16 * v44];
      *(v45 + 4) = v40;
      *(v45 + 5) = v42;
      v36 = 0xE000000000000000;
      v33 = v105;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    sub_25B76D804(v27, v104);
    v46 = NHPWidgetDateFormatter.relativeTimeString(for:style:)(*(a1 + *(v28 + 20)), NSDateComponentsFormatterUnitsStyleBrief);
    if (qword_27FBA19B8 != -1)
    {
      swift_once();
    }

    v47 = qword_27FBA1C18;
    v48 = sub_25B790618();
    v49 = sub_25B790618();
    v50 = [v47 localizedStringForKey:v48 value:0 table:v49];

    sub_25B790638();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1D08, &qword_25B7925D8);
    v51 = swift_allocObject();
    v99 = xmmword_25B791A40;
    *(v51 + 16) = xmmword_25B791A40;
    *(v51 + 56) = MEMORY[0x277D837D0];
    v52 = sub_25B777A70();
    *(v51 + 64) = v52;
    countAndFlagsBits = v46._countAndFlagsBits;
    *(v51 + 32) = v46;

    v53 = sub_25B790648();
    v55 = v54;

    v30 = sub_25B77FA44(0, 1, 1, MEMORY[0x277D84F90]);
    v57 = *(v30 + 2);
    v56 = *(v30 + 3);
    if (v57 >= v56 >> 1)
    {
      v30 = sub_25B77FA44((v56 > 1), v57 + 1, 1, v30);
    }

    *(v30 + 2) = v57 + 1;
    v58 = &v30[16 * v57];
    *(v58 + 4) = v53;
    *(v58 + 5) = v55;
    v59 = qword_27FBA1C18;
    v60 = sub_25B790618();
    v61 = sub_25B790618();
    v62 = [v59 localizedStringForKey:v60 value:0 table:v61];

    sub_25B790638();
    v63 = swift_allocObject();
    *(v63 + 16) = v99;
    *(v63 + 56) = MEMORY[0x277D837D0];
    *(v63 + 64) = v52;
    *(v63 + 32) = countAndFlagsBits;
    *(v63 + 40) = v46._object;
    v64 = sub_25B790648();
    v66 = v65;

    v68 = *(v30 + 2);
    v67 = *(v30 + 3);
    if (v68 >= v67 >> 1)
    {
      v30 = sub_25B77FA44((v67 > 1), v68 + 1, 1, v30);
    }

    v69 = v101;
    *(v30 + 2) = v68 + 1;
    v70 = &v30[16 * v68];
    *(v70 + 4) = v64;
    *(v70 + 5) = v66;
    sub_25B7794F0(v104, v13);
    v71 = v102;
    v72 = v103;
    v73 = *(v102 + 48);
    if (v73(v13, 1, v103) == 1)
    {
      (*(v71 + 104))(v69, *MEMORY[0x277CE32A0], v72);
      v74 = v71;
      if (v73(v13, 1, v72) != 1)
      {
        sub_25B78F310(v13);
      }
    }

    else
    {
      (*(v71 + 32))(v69, v13, v72);
      v74 = v71;
    }

    v91 = _s25NanoWeatherKitUICompanion0B21ConditionSymbolMapperC17conditionIconName0H09isDaytimeSSSg0bC00bE0O_SbtF_0(v69, 1);
    if (v92)
    {
      v34 = v91;
    }

    else
    {
      v34 = 0;
    }

    if (v92)
    {
      v36 = v92;
    }

    else
    {
      v36 = 0xE000000000000000;
    }

    v93 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B28, &qword_25B791E60) + 48);
    v94 = *(v74 + 8);
    v94(v69, v72);
    sub_25B78F310(v104);
    v94(&v27[v93], v72);
    v33 = v105;
  }

  else
  {
    v30 = sub_25B77FA44(0, 1, 1, MEMORY[0x277D84F90]);
    v32 = *(v30 + 2);
    v31 = *(v30 + 3);
    v33 = v105;
    if (v32 >= v31 >> 1)
    {
      v30 = sub_25B77FA44((v31 > 1), v32 + 1, 1, v30);
    }

    v34 = 0;
    *(v30 + 2) = v32 + 1;
    v35 = &v30[16 * v32];
    v36 = 0xE000000000000000;
    *(v35 + 4) = 0;
    *(v35 + 5) = 0xE000000000000000;
  }

  result = sub_25B7904F8();
  *v33 = v30;
  v33[1] = result;
  v33[2] = v34;
  v33[3] = v36;
  v33[4] = 0;
  return result;
}

uint64_t PrecipitationOutlook.WidgetViewModel.image.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t PrecipitationOutlook.WidgetViewModel.text.getter()
{
  v1 = *v0;
  if (!*(*v0 + 16))
  {
    return 0;
  }

  v2 = *(v1 + 32);
  v3 = *(v1 + 40);

  return v2;
}

uint64_t PrecipitationOutlook.ViewFormatter.AppType.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x74726F6873;
  }

  else
  {
    return 0x647261646E617473;
  }
}

uint64_t sub_25B78BC6C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x74726F6873;
  }

  else
  {
    v4 = 0x647261646E617473;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x74726F6873;
  }

  else
  {
    v6 = 0x647261646E617473;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
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
    v9 = sub_25B790BE8();
  }

  return v9 & 1;
}

uint64_t sub_25B78BD10()
{
  v1 = *v0;
  sub_25B790C18();
  sub_25B790678();

  return sub_25B790C38();
}

uint64_t sub_25B78BD90()
{
  *v0;
  sub_25B790678();
}

uint64_t sub_25B78BDFC()
{
  v1 = *v0;
  sub_25B790C18();
  sub_25B790678();

  return sub_25B790C38();
}

void sub_25B78BE84(uint64_t *a1@<X8>)
{
  v2 = 0x647261646E617473;
  if (*v1)
  {
    v2 = 0x74726F6873;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25B78BEC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25B78FDF8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA2098, &qword_25B793898);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v44 - v9;
  v11 = type metadata accessor for PrecipitationOutlook.State(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1AF8, &unk_25B791E40);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v44 - v17;
  v19 = type metadata accessor for PrecipitationOutlook(0);
  sub_25B78F2AC(a1 + v19[8], v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        return 0;
      }

      if (qword_27FBA19B8 != -1)
      {
        swift_once();
      }

      v24 = qword_27FBA1C18;
      v25 = sub_25B790618();
      v26 = sub_25B790618();
      v27 = [v24 localizedStringForKey:v25 value:0 table:v26];

      sub_25B790638();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1D08, &qword_25B7925D8);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_25B791A40;
      v29 = NHPWidgetDateFormatter.relativeTimeString(for:style:)(*(a1 + v19[5]), NSDateComponentsFormatterUnitsStyleFull);
      *(v28 + 56) = MEMORY[0x277D837D0];
      *(v28 + 64) = sub_25B777A70();
      *(v28 + 32) = v29;
      v21 = sub_25B790648();

      return v21;
    }

    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B28, &qword_25B791E60) + 48);
    sub_25B76D804(v14, v18);
    v23 = sub_25B790348();
    (*(*(v23 - 8) + 8))(&v14[v22], v23);
LABEL_8:
    v21 = sub_25B78C4E8();
    sub_25B78F310(v18);
    return v21;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_25B76D804(v14, v18);
    goto LABEL_8;
  }

  v46 = v7;
  v47 = a2;
  v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B20, &qword_25B792780) + 48);
  v30 = *(a1 + v19[7]);
  sub_25B790758();
  v32 = v31;
  if (qword_27FBA19B8 != -1)
  {
    swift_once();
  }

  v33 = qword_27FBA1C18;
  v34 = sub_25B790618();
  v35 = sub_25B790618();
  v36 = [v33 localizedStringForKey:v34 value:0 table:v35];

  v37 = sub_25B790638();
  v44[0] = v38;
  v44[1] = v37;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1D08, &qword_25B7925D8);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_25B7925B0;
  v48 = v32;
  sub_25B78FDC8();
  sub_25B78F97C();
  sub_25B78FC98();
  *(v39 + 56) = MEMORY[0x277D837D0];
  v40 = sub_25B777A70();
  *(v39 + 64) = v40;
  sub_25B78F9D0();
  sub_25B7905D8();
  (*(v46 + 8))(v10, v6);
  v41 = NHPWidgetDateFormatter.relativeTimeString(for:style:)(*(a1 + v19[5]), NSDateComponentsFormatterUnitsStyleFull);
  *(v39 + 96) = MEMORY[0x277D837D0];
  *(v39 + 104) = v40;
  *(v39 + 72) = v41;
  v21 = sub_25B790648();

  sub_25B78F310(&v14[v45]);
  v42 = sub_25B790348();
  (*(*(v42 - 8) + 8))(v14, v42);
  return v21;
}

uint64_t sub_25B78C4E8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1AF8, &unk_25B791E40);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v29 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - v10;
  sub_25B7794F0(v1, &v29 - v10);
  v12 = sub_25B790348();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (v14(v11, 1, v12) == 1)
  {
    v15 = 0;
    v16 = v11;
LABEL_12:
    sub_25B78F310(v16);
    return v15;
  }

  v30 = v9;
  isPrecipitationSbvg_0 = _s10WeatherKit0A9ConditionO04NanoaB11UICompanionE21nwkui_isPrecipitationSbvg_0();
  v18 = *(v13 + 8);
  v18(v11, v12);
  if (isPrecipitationSbvg_0)
  {
    v19 = v1;
    v20 = v30;
    sub_25B7794F0(v19, v30);
    if (v14(v20, 1, v12) == 1)
    {
      goto LABEL_5;
    }

    sub_25B7794F0(v20, v6);
    v21 = (*(v13 + 88))(v6, v12);
    if (v21 == *MEMORY[0x277CE3290] || v21 == *MEMORY[0x277CE32A0])
    {
      goto LABEL_10;
    }

    if (v21 == *MEMORY[0x277CE32C0])
    {
      if (qword_27FBA19B8 == -1)
      {
        goto LABEL_11;
      }

      goto LABEL_22;
    }

    if (v21 == *MEMORY[0x277CE32A8])
    {
LABEL_10:
      if (qword_27FBA19B8 == -1)
      {
LABEL_11:
        v22 = qword_27FBA1C18;
        v23 = sub_25B790618();
        v24 = sub_25B790618();
        v25 = [v22 localizedStringForKey:v23 value:0 table:v24];
        v26 = v30;
        v27 = v25;

        v15 = sub_25B790638();
        v16 = v26;
        goto LABEL_12;
      }
    }

    else
    {
      if (v21 != *MEMORY[0x277CE3320])
      {
        v18(v6, v12);
LABEL_5:
        if (qword_27FBA19B8 == -1)
        {
          goto LABEL_11;
        }

        goto LABEL_22;
      }

      if (qword_27FBA19B8 == -1)
      {
        goto LABEL_11;
      }
    }

LABEL_22:
    swift_once();
    goto LABEL_11;
  }

  return 0;
}

uint64_t sub_25B78C940(uint64_t a1, uint64_t a2)
{
  v4 = sub_25B78FDF8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA2098, &qword_25B793898);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v44 - v9;
  v11 = type metadata accessor for PrecipitationOutlook.State(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1AF8, &unk_25B791E40);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v44 - v17;
  v19 = type metadata accessor for PrecipitationOutlook(0);
  sub_25B78F2AC(a1 + v19[8], v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        return 0;
      }

      if (qword_27FBA19B8 != -1)
      {
        swift_once();
      }

      v24 = qword_27FBA1C18;
      v25 = sub_25B790618();
      v26 = sub_25B790618();
      v27 = [v24 localizedStringForKey:v25 value:0 table:v26];

      sub_25B790638();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1D08, &qword_25B7925D8);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_25B791A40;
      v29 = NHPWidgetDateFormatter.relativeTimeString(for:style:)(*(a1 + v19[5]), NSDateComponentsFormatterUnitsStyleShort);
      *(v28 + 56) = MEMORY[0x277D837D0];
      *(v28 + 64) = sub_25B777A70();
      *(v28 + 32) = v29;
      v21 = sub_25B790648();

      return v21;
    }

    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B28, &qword_25B791E60) + 48);
    sub_25B76D804(v14, v18);
    v23 = sub_25B790348();
    (*(*(v23 - 8) + 8))(&v14[v22], v23);
LABEL_8:
    v21 = sub_25B78C4E8();
    sub_25B78F310(v18);
    return v21;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_25B76D804(v14, v18);
    goto LABEL_8;
  }

  v46 = v7;
  v47 = a2;
  v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B20, &qword_25B792780) + 48);
  v30 = *(a1 + v19[7]);
  sub_25B790758();
  v32 = v31;
  if (qword_27FBA19B8 != -1)
  {
    swift_once();
  }

  v33 = qword_27FBA1C18;
  v34 = sub_25B790618();
  v35 = sub_25B790618();
  v36 = [v33 localizedStringForKey:v34 value:0 table:v35];

  v37 = sub_25B790638();
  v44[0] = v38;
  v44[1] = v37;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1D08, &qword_25B7925D8);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_25B7925B0;
  v48 = v32;
  sub_25B78FDC8();
  sub_25B78F97C();
  sub_25B78FC98();
  *(v39 + 56) = MEMORY[0x277D837D0];
  v40 = sub_25B777A70();
  *(v39 + 64) = v40;
  sub_25B78F9D0();
  sub_25B7905D8();
  (*(v46 + 8))(v10, v6);
  v41 = NHPWidgetDateFormatter.relativeTimeString(for:style:)(*(a1 + v19[5]), NSDateComponentsFormatterUnitsStyleFull);
  *(v39 + 96) = MEMORY[0x277D837D0];
  *(v39 + 104) = v40;
  *(v39 + 72) = v41;
  v21 = sub_25B790648();

  sub_25B78F310(&v14[v45]);
  v42 = sub_25B790348();
  (*(*(v42 - 8) + 8))(v14, v42);
  return v21;
}

uint64_t sub_25B78CF68()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1AF8, &unk_25B791E40);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v25 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  sub_25B7794F0(v0, &v25 - v10);
  v12 = sub_25B790348();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (v14(v11, 1, v12) == 1)
  {
    v15 = 0;
    v9 = v11;
LABEL_19:
    sub_25B78F310(v9);
    return v15;
  }

  isPrecipitationSbvg_0 = _s10WeatherKit0A9ConditionO04NanoaB11UICompanionE21nwkui_isPrecipitationSbvg_0();
  v17 = v11;
  v18 = *(v13 + 8);
  v18(v17, v12);
  if (isPrecipitationSbvg_0)
  {
    sub_25B7794F0(v1, v9);
    if (v14(v9, 1, v12) == 1)
    {
LABEL_5:
      v15 = 0;
      goto LABEL_19;
    }

    sub_25B7794F0(v9, v6);
    v19 = (*(v13 + 88))(v6, v12);
    if (v19 == *MEMORY[0x277CE3290])
    {
      if (qword_27FBA19B8 == -1)
      {
        goto LABEL_18;
      }
    }

    else if (v19 == *MEMORY[0x277CE32A0])
    {
      if (qword_27FBA19B8 == -1)
      {
        goto LABEL_18;
      }
    }

    else if (v19 == *MEMORY[0x277CE32C0])
    {
      if (qword_27FBA19B8 == -1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v19 != *MEMORY[0x277CE32A8])
      {
        v18(v6, v12);
        goto LABEL_5;
      }

      if (qword_27FBA19B8 == -1)
      {
LABEL_18:
        v20 = qword_27FBA1C18;
        v21 = sub_25B790618();
        v22 = sub_25B790618();
        v23 = [v20 localizedStringForKey:v21 value:0 table:v22];

        v15 = sub_25B790638();
        goto LABEL_19;
      }
    }

    swift_once();
    goto LABEL_18;
  }

  return 0;
}

uint64_t sub_25B78D49C()
{
  v0 = sub_25B790B08();

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

uint64_t PrecipitationOutlook.ViewFormatter.WidgetType.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x72656E726F63;
  }

  else
  {
    return 0x72616C7563726963;
  }
}

uint64_t sub_25B78D520(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x72656E726F63;
  }

  else
  {
    v4 = 0x72616C7563726963;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x72656E726F63;
  }

  else
  {
    v6 = 0x72616C7563726963;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
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
    v9 = sub_25B790BE8();
  }

  return v9 & 1;
}

uint64_t sub_25B78D5C4()
{
  v1 = *v0;
  sub_25B790C18();
  sub_25B790678();

  return sub_25B790C38();
}

uint64_t sub_25B78D644()
{
  *v0;
  sub_25B790678();
}

uint64_t sub_25B78D6B0()
{
  v1 = *v0;
  sub_25B790C18();
  sub_25B790678();

  return sub_25B790C38();
}

uint64_t sub_25B78D738@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25B790B08();

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

void sub_25B78D794(uint64_t *a1@<X8>)
{
  v2 = 0x72616C7563726963;
  if (*v1)
  {
    v2 = 0x72656E726F63;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25B78D7D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  v140 = a2;
  v145 = a3;
  v4 = sub_25B78FDF8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA2098, &qword_25B793898);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v138[-v9];
  v11 = sub_25B78FD88();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v142 = &v138[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for PrecipitationOutlook.State(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v144 = &v138[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v20 = &v138[-v19];
  v21 = type metadata accessor for PrecipitationOutlook(0);
  v146 = v21[8];
  v147 = a1;
  sub_25B78F2AC(a1 + v146, v20);
  v141 = v20;
  v143 = v15;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v50 = *(v147 + v21[5]);
      if (v50 >= 3600.0)
      {
        v51 = v11;
        v53 = v12;
        v139 = v50 < 86400.0;
        v52 = v141;
      }

      else
      {
        v139 = 0;
        v51 = v11;
        v52 = v141;
        v53 = v12;
      }

      if (qword_27FBA19B8 != -1)
      {
        swift_once();
      }

      v63 = qword_27FBA1C18;
      v64 = sub_25B790618();
      v65 = sub_25B790618();
      v66 = [v63 localizedStringForKey:v64 value:0 table:v65];

      sub_25B790638();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1D08, &qword_25B7925D8);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_25B791A40;
      v68 = NHPWidgetDateFormatter.relativeTimeString(for:style:)(v50, NSDateComponentsFormatterUnitsStyleAbbreviated);
      *(v67 + 56) = MEMORY[0x277D837D0];
      *(v67 + 64) = sub_25B777A70();
      *(v67 + 32) = v68;
      v69 = sub_25B790648();
      v71 = v70;

      v33 = sub_25B77FA44(0, 1, 1, MEMORY[0x277D84F90]);
      v73 = *(v33 + 2);
      v72 = *(v33 + 3);
      if (v73 >= v72 >> 1)
      {
        v33 = sub_25B77FA44((v72 > 1), v73 + 1, 1, v33);
      }

      *(v33 + 2) = v73 + 1;
      v74 = &v33[16 * v73];
      *(v74 + 4) = v69;
      *(v74 + 5) = v71;
      v75 = v142;
      sub_25B78FD38();
      v76 = NHPWidgetDateFormatter.absoluteTimeString(date:interval:useAproximateSymbol:)(v50, v75, 1);
      v78 = v77;
      v79 = *(v53 + 8);
      v79(v75, v51);
      v81 = *(v33 + 2);
      v80 = *(v33 + 3);
      if (v81 >= v80 >> 1)
      {
        v33 = sub_25B77FA44((v80 > 1), v81 + 1, 1, v33);
      }

      *(v33 + 2) = v81 + 1;
      v82 = &v33[16 * v81];
      *(v82 + 4) = v76;
      *(v82 + 5) = v78;
      if (v139)
      {
        v83 = v142;
        sub_25B78FD38();
        v84 = NHPWidgetDateFormatter.absoluteTimeString(date:interval:useAproximateSymbol:)(v50, v83, 0);
        v86 = v85;
        v79(v83, v51);
        v88 = *(v33 + 2);
        v87 = *(v33 + 3);
        v36 = v144;
        v23 = v145;
        if (v88 >= v87 >> 1)
        {
          v33 = sub_25B77FA44((v87 > 1), v88 + 1, 1, v33);
        }

        *(v33 + 2) = v88 + 1;
        v89 = &v33[16 * v88];
        *(v89 + 4) = v84;
        *(v89 + 5) = v86;
        v24 = v147;
      }

      else
      {
        v24 = v147;
        v36 = v144;
        v23 = v145;
      }

      v90 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B28, &qword_25B791E60) + 48);
      v91 = sub_25B790348();
      (*(*(v91 - 8) + 8))(v52 + v90, v91);
      sub_25B78F310(v52);
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        v23 = v145;
        v24 = v147;
        if (qword_27FBA19B8 != -1)
        {
          swift_once();
        }

        v25 = qword_27FBA1C18;
        v26 = sub_25B790618();
        v27 = sub_25B790618();
        v28 = sub_25B790618();
        v29 = [v25 localizedStringForKey:v26 value:v27 table:v28];

        v30 = sub_25B790638();
        v32 = v31;

        v33 = sub_25B77FA44(0, 1, 1, MEMORY[0x277D84F90]);
        v35 = *(v33 + 2);
        v34 = *(v33 + 3);
        v36 = v144;
        if (v35 >= v34 >> 1)
        {
          v33 = sub_25B77FA44((v34 > 1), v35 + 1, 1, v33);
        }

        *(v33 + 2) = v35 + 1;
        v37 = &v33[16 * v35];
        *(v37 + 4) = v30;
      }

      else
      {
        v24 = v147;
        v54 = *(v147 + v21[7]);
        sub_25B790758();
        v148 = v55;
        sub_25B78FDC8();
        sub_25B78F97C();
        sub_25B78FC98();
        sub_25B78F9D0();
        sub_25B7905D8();
        (*(v7 + 8))(v10, v6);
        v56 = v149;
        v32 = v150;
        v33 = sub_25B77FA44(0, 1, 1, MEMORY[0x277D84F90]);
        v58 = *(v33 + 2);
        v57 = *(v33 + 3);
        v23 = v145;
        if (v58 >= v57 >> 1)
        {
          v33 = sub_25B77FA44((v57 > 1), v58 + 1, 1, v33);
        }

        v36 = v144;
        *(v33 + 2) = v58 + 1;
        v37 = &v33[16 * v58];
        *(v37 + 4) = v56;
      }

      *(v37 + 5) = v32;
    }

    goto LABEL_55;
  }

  if (!EnumCaseMultiPayload)
  {
    v38 = v147;
    if (qword_27FBA19B8 != -1)
    {
      swift_once();
    }

    v39 = qword_27FBA1C18;
    v40 = sub_25B790618();
    v41 = sub_25B790618();
    v42 = [v39 localizedStringForKey:v40 value:0 table:v41];

    v43 = sub_25B790638();
    v45 = v44;

    v33 = sub_25B77FA44(0, 1, 1, MEMORY[0x277D84F90]);
    v47 = *(v33 + 2);
    v46 = *(v33 + 3);
    v23 = v145;
    v48 = v141;
    if (v47 >= v46 >> 1)
    {
      v137 = v141;
      v33 = sub_25B77FA44((v46 > 1), v47 + 1, 1, v33);
      v48 = v137;
    }

    *(v33 + 2) = v47 + 1;
    v49 = &v33[16 * v47];
    *(v49 + 4) = v43;
    *(v49 + 5) = v45;
    sub_25B78F920(v48);
    v24 = v38;
    v36 = v144;
    goto LABEL_55;
  }

  v59 = *(v147 + v21[5]);
  if (v59 >= 3600.0)
  {
    v60 = v11;
    v62 = v12;
    if (v59 >= 86400.0)
    {
      v61 = v141;
      if (v59 < 604800.0)
      {
        v92 = v142;
        v93 = *(v147 + v21[5]);
        sub_25B78FD38();
        v94 = NHPWidgetDateFormatter.absoluteTimeString(date:interval:useAproximateSymbol:)(v59, v92, 1);
        v96 = v95;
        (*(v12 + 8))(v92, v60);
        v33 = sub_25B77FA44(0, 1, 1, MEMORY[0x277D84F90]);
        v139 = 0;
        v98 = *(v33 + 2);
        v97 = *(v33 + 3);
        v99 = v98 + 1;
        if (v98 >= v97 >> 1)
        {
          v33 = sub_25B77FA44((v97 > 1), v98 + 1, 1, v33);
          v139 = 0;
        }

        goto LABEL_47;
      }

      v139 = 0;
    }

    else
    {
      v139 = 1;
      v61 = v141;
    }
  }

  else
  {
    v139 = 0;
    v60 = v11;
    v61 = v141;
    v62 = v12;
  }

  if (qword_27FBA19B8 != -1)
  {
    swift_once();
  }

  v100 = qword_27FBA1C18;
  v101 = sub_25B790618();
  v102 = sub_25B790618();
  v103 = [v100 localizedStringForKey:v101 value:0 table:v102];

  sub_25B790638();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1D08, &qword_25B7925D8);
  v104 = swift_allocObject();
  *(v104 + 16) = xmmword_25B791A40;
  v105 = NHPWidgetDateFormatter.relativeTimeString(for:style:)(v59, NSDateComponentsFormatterUnitsStyleAbbreviated);
  *(v104 + 56) = MEMORY[0x277D837D0];
  *(v104 + 64) = sub_25B777A70();
  *(v104 + 32) = v105;
  v94 = sub_25B790648();
  v96 = v106;

  v33 = sub_25B77FA44(0, 1, 1, MEMORY[0x277D84F90]);
  v98 = *(v33 + 2);
  v107 = *(v33 + 3);
  v99 = v98 + 1;
  if (v98 >= v107 >> 1)
  {
    v33 = sub_25B77FA44((v107 > 1), v98 + 1, 1, v33);
  }

LABEL_47:
  *(v33 + 2) = v99;
  v108 = &v33[16 * v98];
  *(v108 + 4) = v94;
  *(v108 + 5) = v96;
  v109 = v142;
  sub_25B78FD38();
  v110 = NHPWidgetDateFormatter.absoluteTimeString(date:interval:useAproximateSymbol:)(v59, v109, 1);
  v112 = v111;
  v113 = *(v62 + 8);
  v113(v109, v60);
  v115 = *(v33 + 2);
  v114 = *(v33 + 3);
  if (v115 >= v114 >> 1)
  {
    v33 = sub_25B77FA44((v114 > 1), v115 + 1, 1, v33);
  }

  *(v33 + 2) = v115 + 1;
  v116 = &v33[16 * v115];
  *(v116 + 4) = v110;
  *(v116 + 5) = v112;
  if (v139)
  {
    v117 = v142;
    sub_25B78FD38();
    v118 = NHPWidgetDateFormatter.absoluteTimeString(date:interval:useAproximateSymbol:)(v59, v117, 0);
    v120 = v119;
    v113(v117, v60);
    v122 = *(v33 + 2);
    v121 = *(v33 + 3);
    v36 = v144;
    v23 = v145;
    if (v122 >= v121 >> 1)
    {
      v33 = sub_25B77FA44((v121 > 1), v122 + 1, 1, v33);
    }

    *(v33 + 2) = v122 + 1;
    v123 = &v33[16 * v122];
    *(v123 + 4) = v118;
    *(v123 + 5) = v120;
    v24 = v147;
  }

  else
  {
    v24 = v147;
    v36 = v144;
    v23 = v145;
  }

  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B20, &qword_25B792780);
  sub_25B78F310(&v61[*(v124 + 48)]);
  v125 = sub_25B790348();
  (*(*(v125 - 8) + 8))(v61, v125);
LABEL_55:
  v126 = v146;
  v127 = sub_25B78F5B0(v24);
  v129 = v128;
  v131 = v130;
  sub_25B78F2AC(v24 + v126, v36);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v132 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B28, &qword_25B791E60) + 48);
    v133 = sub_25B790528();
    v134 = sub_25B790348();
    (*(*(v134 - 8) + 8))(v36 + v132, v134);
    result = sub_25B78F310(v36);
  }

  else
  {
    v136 = [objc_opt_self() systemCyanColor];
    v133 = sub_25B790548();
    result = sub_25B78F920(v36);
  }

  *v23 = v33;
  v23[1] = v133;
  v23[2] = v127;
  v23[3] = v129;
  v23[4] = v131;
  return result;
}

uint64_t sub_25B78E658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v108 = a2;
  v111 = a3;
  v4 = sub_25B78FDF8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA2098, &qword_25B793898);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v102 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1AF8, &unk_25B791E40);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v102 - v13;
  v15 = type metadata accessor for PrecipitationOutlook.State(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v113 = v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = v102 - v19;
  v21 = type metadata accessor for PrecipitationOutlook(0);
  v22 = v21[8];
  v112 = a1;
  sub_25B78F2AC(a1 + v22, v20);
  *&v107 = v20;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v110 = v22;
  if (EnumCaseMultiPayload <= 1)
  {
    v104 = v6;
    *&v105 = v10;
    v109 = v7;
    if (!EnumCaseMultiPayload)
    {
      sub_25B76D804(v107, v14);
      v109 = sub_25B78CF68();
      v30 = v34;
      sub_25B78F310(v14);
      v31 = 0;
      v24 = v112;
      v33 = v113;
      v32 = 0;
      goto LABEL_19;
    }

    v106 = v15;
    v103 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B20, &qword_25B792780) + 48);
    v24 = v112;
    v66 = *(v112 + v21[7]);
    sub_25B790758();
    v68 = v67;
    if (qword_27FBA19B8 != -1)
    {
      swift_once();
    }

    v69 = qword_27FBA1C18;
    v70 = sub_25B790618();
    v71 = sub_25B790618();
    v72 = [v69 localizedStringForKey:v70 value:0 table:v71];

    v102[0] = sub_25B790638();
    v102[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1D08, &qword_25B7925D8);
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_25B7925B0;
    v114 = v68;
    sub_25B78FDC8();
    sub_25B78F97C();
    v74 = v105;
    sub_25B78FC98();
    v75 = MEMORY[0x277D837D0];
    *(v73 + 56) = MEMORY[0x277D837D0];
    v76 = sub_25B777A70();
    *(v73 + 64) = v76;
    sub_25B78F9D0();
    v77 = v104;
    sub_25B7905D8();
    (*(v109 + 8))(v74, v77);
    v78 = *(v24 + v21[5]);
    v79 = NHPWidgetDateFormatter.relativeTimeString(for:style:)(v78, NSDateComponentsFormatterUnitsStyleShort);
    *(v73 + 96) = v75;
    *(v73 + 104) = v76;
    *(v73 + 72) = v79;
    v109 = sub_25B790648();
    v30 = v80;

    v81 = qword_27FBA1C18;
    v82 = sub_25B790618();
    v83 = sub_25B790618();
    v84 = [v81 localizedStringForKey:v82 value:0 table:v83];

    sub_25B790638();
    v85 = swift_allocObject();
    *(v85 + 16) = xmmword_25B791A40;
    v86 = NHPWidgetDateFormatter.relativeTimeString(for:style:)(v78, NSDateComponentsFormatterUnitsStyleAbbreviated);
    *(v85 + 56) = v75;
    *(v85 + 64) = v76;
    *(v85 + 32) = v86;
    v31 = sub_25B790648();
    v32 = v87;

    v88 = v107;
    sub_25B78F310(v107 + v103);
    v89 = sub_25B790348();
    (*(*(v89 - 8) + 8))(v88, v89);
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v106 = v15;
    v24 = v112;
    v104 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B28, &qword_25B791E60) + 48);
    if (qword_27FBA19B8 != -1)
    {
      swift_once();
    }

    v35 = qword_27FBA1C18;
    v36 = sub_25B790618();
    v37 = sub_25B790618();
    v38 = [v35 localizedStringForKey:v36 value:0 table:v37];

    sub_25B790638();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1D08, &qword_25B7925D8);
    v39 = swift_allocObject();
    v105 = xmmword_25B791A40;
    *(v39 + 16) = xmmword_25B791A40;
    v40 = *(v24 + v21[5]);
    v41 = NHPWidgetDateFormatter.relativeTimeString(for:style:)(v40, NSDateComponentsFormatterUnitsStyleShort);
    v42 = MEMORY[0x277D837D0];
    *(v39 + 56) = MEMORY[0x277D837D0];
    v43 = sub_25B777A70();
    *(v39 + 64) = v43;
    *(v39 + 32) = v41;
    v109 = sub_25B790648();
    v30 = v44;
    v45 = swift_allocObject();
    *(v45 + 16) = v105;
    v46 = NHPWidgetDateFormatter.relativeTimeString(for:style:)(v40, NSDateComponentsFormatterUnitsStyleAbbreviated);
    *(v45 + 56) = v42;
    *(v45 + 64) = v43;
    *(v45 + 32) = v46;
    v31 = sub_25B790648();
    v32 = v47;

    v48 = sub_25B790348();
    v49 = v107;
    (*(*(v48 - 8) + 8))(v107 + v104, v48);
    sub_25B78F310(v49);
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v106 = v15;
    if (qword_27FBA19B8 != -1)
    {
      swift_once();
    }

    v50 = qword_27FBA1C18;
    v51 = sub_25B790618();
    v52 = sub_25B790618();
    v53 = [v50 localizedStringForKey:v51 value:0 table:v52];

    sub_25B790638();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1D08, &qword_25B7925D8);
    v54 = swift_allocObject();
    v107 = xmmword_25B791A40;
    *(v54 + 16) = xmmword_25B791A40;
    v24 = v112;
    v55 = *(v112 + v21[5]);
    v56 = NHPWidgetDateFormatter.relativeTimeString(for:style:)(v55, NSDateComponentsFormatterUnitsStyleShort);
    *(v54 + 56) = MEMORY[0x277D837D0];
    v57 = sub_25B777A70();
    *(v54 + 64) = v57;
    *(v54 + 32) = v56;
    v109 = sub_25B790648();
    v30 = v58;

    v59 = qword_27FBA1C18;
    v60 = sub_25B790618();
    v61 = sub_25B790618();
    v62 = [v59 localizedStringForKey:v60 value:0 table:v61];

    sub_25B790638();
    v63 = swift_allocObject();
    *(v63 + 16) = v107;
    v64 = NHPWidgetDateFormatter.relativeTimeString(for:style:)(v55, NSDateComponentsFormatterUnitsStyleAbbreviated);
    *(v63 + 56) = MEMORY[0x277D837D0];
    *(v63 + 64) = v57;
    *(v63 + 32) = v64;
    v31 = sub_25B790648();
    v32 = v65;

LABEL_18:
    v33 = v113;
    goto LABEL_19;
  }

  v24 = v112;
  if (qword_27FBA19B8 != -1)
  {
    swift_once();
  }

  v25 = qword_27FBA1C18;
  v26 = sub_25B790618();
  v27 = sub_25B790618();
  v28 = [v25 localizedStringForKey:v26 value:0 table:v27];

  v109 = sub_25B790638();
  v30 = v29;

  v31 = 0;
  v32 = 0;
  v33 = v113;
LABEL_19:
  v90 = sub_25B78F5B0(v24);
  v92 = v91;
  v94 = v93;
  sub_25B78F2AC(v24 + v110, v33);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v95 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B28, &qword_25B791E60) + 48);
    v96 = sub_25B790528();
    v97 = sub_25B790348();
    (*(*(v97 - 8) + 8))(v33 + v95, v97);
    sub_25B78F310(v33);
  }

  else
  {
    v98 = [objc_opt_self() systemCyanColor];
    v96 = sub_25B790548();
    sub_25B78F920(v33);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1F70, &qword_25B7931A8);
  result = swift_allocObject();
  v100 = result;
  *(result + 16) = xmmword_25B791A40;
  *(result + 32) = v109;
  *(result + 40) = v30;
  if (v32)
  {
    result = sub_25B77FA44(1, 2, 1, result);
    v100 = result;
    *(result + 16) = 2;
    *(result + 48) = v31;
    *(result + 56) = v32;
  }

  v101 = v111;
  *v111 = v100;
  v101[1] = v96;
  v101[2] = v90;
  v101[3] = v92;
  v101[4] = v94;
  return result;
}

uint64_t sub_25B78F2AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrecipitationOutlook.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B78F310(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1AF8, &unk_25B791E40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25B78F37C()
{
  result = qword_27FBA2088;
  if (!qword_27FBA2088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA2088);
  }

  return result;
}

unint64_t sub_25B78F3D4()
{
  result = qword_27FBA2090;
  if (!qword_27FBA2090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA2090);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_25B78F434(uint64_t a1, int a2)
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

uint64_t sub_25B78F47C(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25B78F4E0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_25B78F528(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25B78F5B0(uint64_t a1)
{
  v2 = sub_25B790348();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PrecipitationOutlook.State(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1AF8, &unk_25B791E40);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v29 - v16;
  sub_25B7904F8();
  v18 = type metadata accessor for PrecipitationOutlook(0);
  sub_25B78F2AC(a1 + *(v18 + 32), v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B28, &qword_25B791E60);
    (*(v3 + 32))(v6, &v10[*(v25 + 48)], v2);
    v22 = _s25NanoWeatherKitUICompanion0B21ConditionSymbolMapperC17conditionIconName0H09isDaytimeSSSg0bC00bE0O_SbtF_0(v6, *(a1 + *(v18 + 24)));
    v27 = v26;
    (*(v3 + 8))(v6, v2);
    if (v27)
    {
    }

    else
    {
      v22 = 0x616C6C6572626D75;
    }

    sub_25B78F310(v10);
  }

  else
  {
    if (EnumCaseMultiPayload == 1)
    {
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBA1B20, &qword_25B792780);
      sub_25B76D804(&v10[*(v20 + 48)], v17);
      (*(v3 + 8))(v10, v2);
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        sub_25B78F920(v10);
        return 0x616C6C6572626D75;
      }

      sub_25B76D804(v10, v17);
    }

    v21 = *(a1 + *(v18 + 24));
    sub_25B76D804(v17, v15);
    if ((*(v3 + 48))(v15, 1, v2) == 1)
    {
      sub_25B78F310(v15);
      return 0x616C6C6572626D75;
    }

    v22 = _s25NanoWeatherKitUICompanion0B21ConditionSymbolMapperC17conditionIconName0H09isDaytimeSSSg0bC00bE0O_SbtF_0(v15, v21);
    v24 = v23;
    (*(v3 + 8))(v15, v2);
    if (!v24)
    {
      return 0x616C6C6572626D75;
    }
  }

  return v22;
}

uint64_t sub_25B78F920(uint64_t a1)
{
  v2 = type metadata accessor for PrecipitationOutlook.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25B78F97C()
{
  result = qword_27FBA20A0;
  if (!qword_27FBA20A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA20A0);
  }

  return result;
}

unint64_t sub_25B78F9D0()
{
  result = qword_27FBA20A8;
  if (!qword_27FBA20A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBA2098, &qword_25B793898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBA20A8);
  }

  return result;
}