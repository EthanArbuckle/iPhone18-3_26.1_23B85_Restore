uint64_t sub_25B6860F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25B68CCA4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_25B68CC54();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_25B686218(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25B68CCA4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_25B68CC54();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_25B686348()
{
  v1 = 28271;
  v2 = 0x656C67676F74;
  if (*v0 != 2)
  {
    v2 = 0x726F707075736E75;
  }

  if (*v0)
  {
    v1 = 6710895;
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

uint64_t sub_25B6863B4@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_25B6863F8()
{
  v1 = 0x736944746F4E6F64;
  if (*v0 != 1)
  {
    v1 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656E616C70726961;
  }
}

uint64_t ProactiveSuggestion.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25B68CCA4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ProactiveSuggestion.bundleIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for ProactiveSuggestion() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for ProactiveSuggestion()
{
  result = qword_27FA473B8;
  if (!qword_27FA473B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ProactiveSuggestion.confidence.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ProactiveSuggestion();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t ProactiveSuggestion.dateInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProactiveSuggestion() + 28);
  v4 = sub_25B68CC54();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProactiveSuggestion.operation.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ProactiveSuggestion();
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t ProactiveSuggestion.type.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ProactiveSuggestion();
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t ProactiveSuggestion.init(identifier:bundleIdentifier:confidence:dateInterval:operation:type:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  v13 = *a4;
  v14 = *a6;
  v15 = *a7;
  v16 = sub_25B68CCA4();
  (*(*(v16 - 8) + 32))(a8, a1, v16);
  v17 = type metadata accessor for ProactiveSuggestion();
  v18 = (a8 + v17[5]);
  *v18 = a2;
  v18[1] = a3;
  *(a8 + v17[6]) = v13;
  v19 = v17[7];
  v20 = sub_25B68CC54();
  result = (*(*(v20 - 8) + 32))(a8 + v19, a5, v20);
  *(a8 + v17[8]) = v14;
  *(a8 + v17[9]) = v15;
  return result;
}

uint64_t sub_25B6867C8()
{
  v1 = *v0;
  sub_25B68CFB4();
  MEMORY[0x25F869F60](v1);
  return sub_25B68CFD4();
}

uint64_t sub_25B686810()
{
  v1 = *v0;
  sub_25B68CFB4();
  MEMORY[0x25F869F60](v1);
  return sub_25B68CFD4();
}

uint64_t sub_25B686854()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x65746E4965746164;
  v4 = 0x6F6974617265706FLL;
  if (v1 != 4)
  {
    v4 = 1701869940;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000010;
  if (v1 != 1)
  {
    v5 = 0x6E656469666E6F63;
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

uint64_t sub_25B68691C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25B6876EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25B68695C(uint64_t a1)
{
  v2 = sub_25B686D60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25B686998(uint64_t a1)
{
  v2 = sub_25B686D60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ProactiveSuggestion.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA47350, &qword_25B68D1D0);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25B686D60();
  sub_25B68CFF4();
  v17[15] = 0;
  sub_25B68CCA4();
  sub_25B687504(&qword_27FA47360, MEMORY[0x277CC95F0]);
  sub_25B68CF44();
  if (!v2)
  {
    v11 = type metadata accessor for ProactiveSuggestion();
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    v17[14] = 1;
    sub_25B68CF34();
    v17[13] = *(v3 + v11[6]);
    v17[12] = 2;
    sub_25B686DB4();
    sub_25B68CF44();
    v15 = v11[7];
    v17[11] = 3;
    sub_25B68CC54();
    sub_25B687504(&qword_27FA47370, MEMORY[0x277CC88A8]);
    sub_25B68CF44();
    v17[10] = *(v3 + v11[8]);
    v17[9] = 4;
    sub_25B686E08();
    sub_25B68CF44();
    v17[8] = *(v3 + v11[9]);
    v17[7] = 5;
    sub_25B686E5C();
    sub_25B68CF44();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_25B686D60()
{
  result = qword_27FA47358;
  if (!qword_27FA47358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA47358);
  }

  return result;
}

unint64_t sub_25B686DB4()
{
  result = qword_27FA47368;
  if (!qword_27FA47368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA47368);
  }

  return result;
}

unint64_t sub_25B686E08()
{
  result = qword_27FA47378;
  if (!qword_27FA47378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA47378);
  }

  return result;
}

unint64_t sub_25B686E5C()
{
  result = qword_27FA47380;
  if (!qword_27FA47380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA47380);
  }

  return result;
}

uint64_t ProactiveSuggestion.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v28 = sub_25B68CC54();
  v25 = *(v28 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20]();
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25B68CCA4();
  v26 = *(v6 - 8);
  v7 = *(v26 + 64);
  MEMORY[0x28223BE20]();
  v29 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA47388, &qword_25B68D1D8);
  v27 = *(v31 - 8);
  v9 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v24 - v10;
  v12 = type metadata accessor for ProactiveSuggestion();
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x28223BE20]();
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25B686D60();
  v30 = v11;
  v17 = v32;
  sub_25B68CFE4();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = v27;
  v41 = 0;
  sub_25B687504(&qword_27FA47390, MEMORY[0x277CC95F0]);
  sub_25B68CF04();
  v19 = *(v26 + 32);
  v32 = v6;
  v19(v15, v29, v6);
  v40 = 1;
  v20 = sub_25B68CEF4();
  v21 = &v15[v12[5]];
  *v21 = v20;
  v21[1] = v22;
  v38 = 2;
  sub_25B6874B0();
  v29 = 0;
  sub_25B68CF04();
  v15[v12[6]] = v39;
  v37 = 3;
  sub_25B687504(&qword_27FA473A0, MEMORY[0x277CC88A8]);
  sub_25B68CF04();
  (*(v25 + 32))(&v15[v12[7]], v5, v28);
  v35 = 4;
  sub_25B68754C();
  sub_25B68CF04();
  v15[v12[8]] = v36;
  v33 = 5;
  sub_25B6875A0();
  sub_25B68CF04();
  (*(v18 + 8))(v30, v31);
  v15[v12[9]] = v34;
  sub_25B6875F4(v15, v24);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_25B687658(v15);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_25B6874B0()
{
  result = qword_27FA47398;
  if (!qword_27FA47398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA47398);
  }

  return result;
}

uint64_t sub_25B687504(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25B68754C()
{
  result = qword_27FA473A8;
  if (!qword_27FA473A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA473A8);
  }

  return result;
}

unint64_t sub_25B6875A0()
{
  result = qword_27FA473B0;
  if (!qword_27FA473B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA473B0);
  }

  return result;
}

uint64_t sub_25B6875F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProactiveSuggestion();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B687658(uint64_t a1)
{
  v2 = type metadata accessor for ProactiveSuggestion();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25B6876EC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_25B68CF54() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000025B68EAF0 == a2 || (sub_25B68CF54() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563 || (sub_25B68CF54() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65746E4965746164 && a2 == 0xEC0000006C617672 || (sub_25B68CF54() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F6974617265706FLL && a2 == 0xE90000000000006ELL || (sub_25B68CF54() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 5;
  }

  else
  {
    v5 = sub_25B68CF54();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

BOOL _s34NanoSmartStackProactiveSuggestions0D10SuggestionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_25B68CC84() & 1) != 0 && ((v4 = type metadata accessor for ProactiveSuggestion(), v5 = v4[5], v6 = *(a1 + v5), v7 = *(a1 + v5 + 8), v8 = (a2 + v5), v6 == *v8) ? (v9 = v7 == v8[1]) : (v9 = 0), (v9 || (sub_25B68CF54()) && *(a1 + v4[6]) == *(a2 + v4[6]) && (v10 = v4[7], (sub_25B68CC44()) && *(a1 + v4[8]) == *(a2 + v4[8])))
  {
    return *(a1 + v4[9]) == *(a2 + v4[9]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25B6879F8()
{
  result = sub_25B68CCA4();
  if (v1 <= 0x3F)
  {
    result = sub_25B68CC54();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProactiveSuggestion.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ProactiveSuggestion.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25B687C14()
{
  result = qword_27FA473C8;
  if (!qword_27FA473C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA473C8);
  }

  return result;
}

unint64_t sub_25B687C6C()
{
  result = qword_27FA473D0;
  if (!qword_27FA473D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA473D0);
  }

  return result;
}

unint64_t sub_25B687CC4()
{
  result = qword_27FA473D8;
  if (!qword_27FA473D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA473D8);
  }

  return result;
}

NanoSmartStackProactiveSuggestions::ProactiveSuggestionConfidence_optional __swiftcall ProactiveSuggestionConfidence.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_25B687D38()
{
  result = qword_27FA473E0;
  if (!qword_27FA473E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA473E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProactiveSuggestionConfidence(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ProactiveSuggestionConfidence(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25B687FA0()
{
  result = qword_27FA473E8;
  if (!qword_27FA473E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA473E8);
  }

  return result;
}

uint64_t ProactiveSuggestionError.hashValue.getter()
{
  v1 = *v0;
  sub_25B68CFB4();
  MEMORY[0x25F869F60](v1);
  return sub_25B68CFD4();
}

unint64_t sub_25B68809C()
{
  result = qword_27FA473F0;
  if (!qword_27FA473F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA473F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProactiveSuggestionError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ProactiveSuggestionError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25B688284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25B689880(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25B6882B8(uint64_t a1)
{
  v2 = sub_25B688954();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25B6882F4(uint64_t a1)
{
  v2 = sub_25B688954();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25B68833C(uint64_t a1)
{
  v2 = sub_25B688A50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25B688378(uint64_t a1)
{
  v2 = sub_25B688A50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25B6883B4(uint64_t a1)
{
  v2 = sub_25B688AA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25B6883F0(uint64_t a1)
{
  v2 = sub_25B688AA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25B68842C(uint64_t a1)
{
  v2 = sub_25B6889FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25B688468(uint64_t a1)
{
  v2 = sub_25B6889FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25B6884A4(uint64_t a1)
{
  v2 = sub_25B6889A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25B6884E0(uint64_t a1)
{
  v2 = sub_25B6889A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ProactiveSuggestionOperation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA473F8, &qword_25B68D630);
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v36 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA47400, &qword_25B68D638);
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v33 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA47408, &qword_25B68D640);
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v30 = &v28 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA47410, &qword_25B68D648);
  v28 = *(v12 - 8);
  v29 = v12;
  v13 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA47418, &qword_25B68D650);
  v17 = *(v16 - 8);
  v18 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v20 = &v28 - v19;
  v21 = *v1;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25B688954();
  sub_25B68CFF4();
  v23 = (v17 + 8);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v41 = 2;
      sub_25B6889FC();
      v24 = v33;
      sub_25B68CF24();
      v26 = v34;
      v25 = v35;
    }

    else
    {
      v42 = 3;
      sub_25B6889A8();
      v24 = v36;
      sub_25B68CF24();
      v26 = v37;
      v25 = v38;
    }

    goto LABEL_8;
  }

  if (v21)
  {
    v40 = 1;
    sub_25B688A50();
    v24 = v30;
    sub_25B68CF24();
    v26 = v31;
    v25 = v32;
LABEL_8:
    (*(v26 + 8))(v24, v25);
    return (*v23)(v20, v16);
  }

  v39 = 0;
  sub_25B688AA4();
  sub_25B68CF24();
  (*(v28 + 8))(v15, v29);
  return (*v23)(v20, v16);
}

unint64_t sub_25B688954()
{
  result = qword_27FA47420;
  if (!qword_27FA47420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA47420);
  }

  return result;
}

unint64_t sub_25B6889A8()
{
  result = qword_27FA47428;
  if (!qword_27FA47428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA47428);
  }

  return result;
}

unint64_t sub_25B6889FC()
{
  result = qword_27FA47430;
  if (!qword_27FA47430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA47430);
  }

  return result;
}

unint64_t sub_25B688A50()
{
  result = qword_27FA47438;
  if (!qword_27FA47438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA47438);
  }

  return result;
}

unint64_t sub_25B688AA4()
{
  result = qword_27FA47440;
  if (!qword_27FA47440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA47440);
  }

  return result;
}

uint64_t ProactiveSuggestionOperation.hashValue.getter()
{
  v1 = *v0;
  sub_25B68CFB4();
  MEMORY[0x25F869F60](v1);
  return sub_25B68CFD4();
}

uint64_t ProactiveSuggestionOperation.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA47448, &qword_25B68D658);
  v47 = *(v51 - 8);
  v3 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v54 = v42 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA47450, &qword_25B68D660);
  v6 = *(v5 - 8);
  v49 = v5;
  v50 = v6;
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v53 = v42 - v8;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA47458, &qword_25B68D668);
  v45 = *(v48 - 8);
  v9 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA47460, &qword_25B68D670);
  v46 = *(v12 - 8);
  v13 = (*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v15 = v42 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA47468, &qword_25B68D678);
  v17 = *(v16 - 8);
  v18 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v20 = v42 - v19;
  v21 = a1[3];
  v22 = a1[4];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_25B688954();
  v23 = v55;
  sub_25B68CFE4();
  if (!v23)
  {
    v43 = v12;
    v44 = 0;
    v24 = v53;
    v25 = v54;
    v55 = v17;
    v26 = v20;
    v27 = sub_25B68CF14();
    v28 = *(v27 + 16);
    if (!v28 || ((v29 = *(v27 + 32), v28 == 1) ? (v30 = v29 == 4) : (v30 = 1), v30))
    {
      v31 = sub_25B68CEB4();
      swift_allocError();
      v33 = v32;
      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA47470, &qword_25B68D680) + 48);
      *v33 = &type metadata for ProactiveSuggestionOperation;
      sub_25B68CEE4();
      sub_25B68CEA4();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D84160], v31);
      swift_willThrow();
      (*(v55 + 8))(v26, v16);
    }

    else
    {
      v42[1] = v27;
      if (v29 <= 1)
      {
        if (v29)
        {
          v58 = 1;
          sub_25B688A50();
          v39 = v44;
          sub_25B68CED4();
          if (!v39)
          {
            (*(v45 + 8))(v11, v48);
            goto LABEL_23;
          }
        }

        else
        {
          v57 = 0;
          sub_25B688AA4();
          v35 = v44;
          sub_25B68CED4();
          if (!v35)
          {
            (*(v46 + 8))(v15, v43);
LABEL_23:
            (*(v55 + 8))(v20, v16);
LABEL_25:
            swift_unknownObjectRelease();
            *v52 = v29;
            return __swift_destroy_boxed_opaque_existential_1(v56);
          }
        }

        (*(v55 + 8))(v20, v16);
        goto LABEL_20;
      }

      v36 = v52;
      v37 = v55;
      if (v29 == 2)
      {
        v59 = 2;
        sub_25B6889FC();
        v38 = v44;
        sub_25B68CED4();
        if (!v38)
        {
          (*(v50 + 8))(v24, v49);
          (*(v37 + 8))(v26, v16);
          swift_unknownObjectRelease();
          *v36 = 2;
          return __swift_destroy_boxed_opaque_existential_1(v56);
        }
      }

      else
      {
        v60 = 3;
        sub_25B6889A8();
        v40 = v44;
        sub_25B68CED4();
        if (!v40)
        {
          (*(v47 + 8))(v25, v51);
          (*(v37 + 8))(v26, v16);
          goto LABEL_25;
        }
      }

      (*(v37 + 8))(v26, v16);
    }

LABEL_20:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v56);
}

uint64_t sub_25B6891F0()
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

uint64_t ProactiveSuggestionOperation.description.getter()
{
  v1 = 28271;
  v2 = 0x656C67676F74;
  if (*v0 != 2)
  {
    v2 = 0x726F707075736E75;
  }

  if (*v0)
  {
    v1 = 6710895;
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

unint64_t sub_25B6892C4()
{
  result = qword_27FA47478;
  if (!qword_27FA47478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA47478);
  }

  return result;
}

uint64_t sub_25B689328(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_25B6893B8(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25B6894BC()
{
  result = qword_27FA47480;
  if (!qword_27FA47480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA47480);
  }

  return result;
}

unint64_t sub_25B689514()
{
  result = qword_27FA47488;
  if (!qword_27FA47488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA47488);
  }

  return result;
}

unint64_t sub_25B68956C()
{
  result = qword_27FA47490;
  if (!qword_27FA47490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA47490);
  }

  return result;
}

unint64_t sub_25B6895C4()
{
  result = qword_27FA47498;
  if (!qword_27FA47498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA47498);
  }

  return result;
}

unint64_t sub_25B68961C()
{
  result = qword_27FA474A0;
  if (!qword_27FA474A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA474A0);
  }

  return result;
}

unint64_t sub_25B689674()
{
  result = qword_27FA474A8;
  if (!qword_27FA474A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA474A8);
  }

  return result;
}

unint64_t sub_25B6896CC()
{
  result = qword_27FA474B0;
  if (!qword_27FA474B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA474B0);
  }

  return result;
}

unint64_t sub_25B689724()
{
  result = qword_27FA474B8;
  if (!qword_27FA474B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA474B8);
  }

  return result;
}

unint64_t sub_25B68977C()
{
  result = qword_27FA474C0;
  if (!qword_27FA474C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA474C0);
  }

  return result;
}

unint64_t sub_25B6897D4()
{
  result = qword_27FA474C8;
  if (!qword_27FA474C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA474C8);
  }

  return result;
}

unint64_t sub_25B68982C()
{
  result = qword_27FA474D0;
  if (!qword_27FA474D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA474D0);
  }

  return result;
}

uint64_t sub_25B689880(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 28271 && a2 == 0xE200000000000000;
  if (v3 || (sub_25B68CF54() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6710895 && a2 == 0xE300000000000000 || (sub_25B68CF54() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C67676F74 && a2 == 0xE600000000000000 || (sub_25B68CF54() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F707075736E75 && a2 == 0xEB00000000646574)
  {

    return 3;
  }

  else
  {
    v6 = sub_25B68CF54();

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

uint64_t sub_25B689A1C(uint64_t a1)
{
  v2 = sub_25B68A098();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25B689A58(uint64_t a1)
{
  v2 = sub_25B68A098();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25B689A94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25B68ACF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25B689AC8(uint64_t a1)
{
  v2 = sub_25B689F9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25B689B04(uint64_t a1)
{
  v2 = sub_25B689F9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25B689B40(uint64_t a1)
{
  v2 = sub_25B68A044();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25B689B7C(uint64_t a1)
{
  v2 = sub_25B68A044();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25B689BB8(uint64_t a1)
{
  v2 = sub_25B689FF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25B689BF4(uint64_t a1)
{
  v2 = sub_25B689FF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ProactiveSuggestionType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA474D8, &qword_25B68DBA0);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA474E0, &qword_25B68DBA8);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA474E8, &qword_25B68DBB0);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA474F0, &qword_25B68DBB8);
  v14 = *(v13 - 8);
  v15 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25B689F9C();
  sub_25B68CFF4();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_25B68A044();
      v12 = v26;
      sub_25B68CF24();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_25B689FF0();
      v12 = v29;
      sub_25B68CF24();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_25B68A098();
    sub_25B68CF24();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

unint64_t sub_25B689F9C()
{
  result = qword_27FA474F8;
  if (!qword_27FA474F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA474F8);
  }

  return result;
}

unint64_t sub_25B689FF0()
{
  result = qword_27FA47500;
  if (!qword_27FA47500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA47500);
  }

  return result;
}

unint64_t sub_25B68A044()
{
  result = qword_27FA47508;
  if (!qword_27FA47508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA47508);
  }

  return result;
}

unint64_t sub_25B68A098()
{
  result = qword_27FA47510;
  if (!qword_27FA47510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA47510);
  }

  return result;
}

uint64_t ProactiveSuggestionType.hashValue.getter()
{
  v1 = *v0;
  sub_25B68CFB4();
  MEMORY[0x25F869F60](v1);
  return sub_25B68CFD4();
}

uint64_t ProactiveSuggestionType.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA47518, &qword_25B68DBC0);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v41 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA47520, &qword_25B68DBC8);
  v37 = *(v40 - 8);
  v6 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA47528, &qword_25B68DBD0);
  v36 = *(v9 - 8);
  v10 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA47530, &unk_25B68DBD8);
  v14 = *(v13 - 8);
  v15 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v17 = &v35 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_25B689F9C();
  v20 = v43;
  sub_25B68CFE4();
  if (!v20)
  {
    v35 = v9;
    v43 = v14;
    v22 = v41;
    v21 = v42;
    v23 = v17;
    v24 = sub_25B68CF14();
    v25 = (2 * *(v24 + 16)) | 1;
    v45 = v24;
    v46 = v24 + 32;
    v47 = 0;
    v48 = v25;
    v26 = sub_25B6891F0();
    if (v26 == 3 || v47 != v48 >> 1)
    {
      v28 = sub_25B68CEB4();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA47470, &qword_25B68D680) + 48);
      *v30 = &type metadata for ProactiveSuggestionType;
      sub_25B68CEE4();
      sub_25B68CEA4();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84160], v28);
      swift_willThrow();
      (*(v43 + 8))(v23, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = v26;
      if (v26)
      {
        if (v26 == 1)
        {
          v50 = 1;
          sub_25B68A044();
          sub_25B68CED4();
          v27 = v43;
          (*(v37 + 8))(v8, v40);
          (*(v27 + 8))(v17, v13);
        }

        else
        {
          v50 = 2;
          sub_25B689FF0();
          v33 = v22;
          sub_25B68CED4();
          v34 = v43;
          (*(v38 + 8))(v33, v39);
          (*(v34 + 8))(v17, v13);
        }
      }

      else
      {
        v50 = 0;
        sub_25B68A098();
        sub_25B68CED4();
        (*(v36 + 8))(v12, v35);
        (*(v43 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v21 = v49;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v44);
}

uint64_t ProactiveSuggestionType.description.getter()
{
  v1 = 0x736944746F4E6F64;
  if (*v0 != 1)
  {
    v1 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656E616C70726961;
  }
}

unint64_t ProactiveSuggestionType.kind.getter()
{
  v1 = 0xD00000000000002BLL;
  if (*v0 != 1)
  {
    v1 = 0;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000002BLL;
  }
}

unint64_t sub_25B68A7FC()
{
  result = qword_27FA47538;
  if (!qword_27FA47538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA47538);
  }

  return result;
}

uint64_t sub_25B68A860(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_25B68A8F0(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25B68A9E4()
{
  result = qword_27FA47540;
  if (!qword_27FA47540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA47540);
  }

  return result;
}

unint64_t sub_25B68AA3C()
{
  result = qword_27FA47548;
  if (!qword_27FA47548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA47548);
  }

  return result;
}

unint64_t sub_25B68AA94()
{
  result = qword_27FA47550;
  if (!qword_27FA47550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA47550);
  }

  return result;
}

unint64_t sub_25B68AAEC()
{
  result = qword_27FA47558;
  if (!qword_27FA47558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA47558);
  }

  return result;
}

unint64_t sub_25B68AB44()
{
  result = qword_27FA47560;
  if (!qword_27FA47560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA47560);
  }

  return result;
}

unint64_t sub_25B68AB9C()
{
  result = qword_27FA47568;
  if (!qword_27FA47568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA47568);
  }

  return result;
}

unint64_t sub_25B68ABF4()
{
  result = qword_27FA47570;
  if (!qword_27FA47570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA47570);
  }

  return result;
}

unint64_t sub_25B68AC4C()
{
  result = qword_27FA47578;
  if (!qword_27FA47578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA47578);
  }

  return result;
}

unint64_t sub_25B68ACA4()
{
  result = qword_27FA47580;
  if (!qword_27FA47580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA47580);
  }

  return result;
}

uint64_t sub_25B68ACF8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656E616C70726961 && a2 == 0xEC00000065646F4DLL;
  if (v4 || (sub_25B68CF54() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736944746F4E6F64 && a2 == 0xEC00000062727574 || (sub_25B68CF54() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_25B68CF54();

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

void *SmartStackReplicatorClient.__allocating_init()()
{
  v0 = sub_25B68CE14();
  v60 = *(v0 - 8);
  v61 = v0;
  v1 = *(v60 + 64);
  v2 = (MEMORY[0x28223BE20])();
  v59 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v58 = &v43 - v4;
  v54 = sub_25B68CE54();
  v51 = *(v54 - 1);
  v5 = *(v51 + 8);
  MEMORY[0x28223BE20](v54);
  v48 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25B68CE44();
  v45 = *(v7 - 8);
  v46 = v7;
  v8 = *(v45 + 64);
  MEMORY[0x28223BE20](v7);
  v44 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_25B68CDF4();
  *&v49 = *(v63 - 8);
  v50 = v49;
  v10 = *(v49 + 64);
  MEMORY[0x28223BE20](v63);
  v62 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_25B68CE34();
  v52 = *(v56 - 8);
  v53 = v52;
  v12 = *(v52 + 64);
  MEMORY[0x28223BE20](v56);
  v43 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25B68CCC4();
  v57 = *(v14 - 8);
  v15 = v57;
  v16 = *(v57 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v43 - v20;
  sub_25B68CCB4();
  v22 = *(v15 + 16);
  v47 = v21;
  v55 = v14;
  v22(v19, v21, v14);
  sub_25B68CE24();
  (*(v45 + 104))(v44, *MEMORY[0x277D46898], v46);
  (*(v51 + 13))(v48, *MEMORY[0x277D468F8], v54);
  v22(v19, v21, v14);
  v23 = v62;
  sub_25B68CDE4();
  v54 = "proactiveSuggestions";
  v51 = "catorClient.message";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA47588, &qword_25B68E080);
  v24 = *(v49 + 72);
  v25 = v50;
  v26 = (*(v50 + 80) + 32) & ~*(v50 + 80);
  v27 = swift_allocObject();
  v49 = xmmword_25B68E070;
  *(v27 + 16) = xmmword_25B68E070;
  v28 = v25;
  (*(v25 + 16))(v27 + v26, v23, v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA47590, &qword_25B68E088);
  v29 = v53;
  v30 = *(v52 + 72);
  v31 = (*(v53 + 80) + 32) & ~*(v53 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v49;
  v33 = v43;
  v34 = v56;
  (*(v29 + 16))(v32 + v31, v43, v56);
  v35 = v58;
  sub_25B68CE04();
  v36 = v60;
  v37 = v61;
  (*(v60 + 16))(v59, v35, v61);
  sub_25B68C480(MEMORY[0x277D84F90]);
  v38 = sub_25B68CD54();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  v41 = sub_25B68CD04();
  (*(v36 + 8))(v35, v37);
  (*(v28 + 8))(v62, v63);
  (*(v29 + 8))(v33, v34);
  (*(v57 + 8))(v47, v55);
  result = swift_allocObject();
  result[5] = v38;
  result[6] = &protocol witness table for ReplicatorClient;
  result[2] = v41;
  return result;
}

uint64_t *SmartStackReplicatorClient.__allocating_init(client:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = sub_25B68C8CC(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t *SmartStackReplicatorClient.init(client:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = sub_25B68C410(v8, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

uint64_t SmartStackReplicatorClient.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SmartStackReplicatorClient.register()()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  (*(v2 + 16))(v1, v2);
}

uint64_t SmartStackReplicatorClient.replicate(proactiveSuggestion:)(uint64_t a1)
{
  v3 = sub_25B68CDD4();
  v74 = *(v3 - 8);
  v4 = *(v74 + 64);
  MEMORY[0x28223BE20](v3);
  v86 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25B68CCD4();
  v72 = *(v6 - 8);
  v73 = v6;
  v7 = *(v72 + 64);
  MEMORY[0x28223BE20](v6);
  v83 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25B68CDC4();
  v84 = *(v9 - 8);
  v85 = v9;
  v10 = *(v84 + 64);
  MEMORY[0x28223BE20](v9);
  v82 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25B68CD74();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_25B68CD84();
  v80 = *(v16 - 8);
  v81 = v16;
  v17 = *(v80 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v79 = &v64 - v21;
  v78 = sub_25B68CCA4();
  v22 = *(v78 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v78);
  v77 = &v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v64 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA47598, &qword_25B68E090);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v64 - v30;
  v32 = sub_25B68CDB4();
  v75 = *(v32 - 8);
  v76 = v32;
  v33 = *(v75 + 64);
  MEMORY[0x28223BE20](v32);
  v88 = &v64 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25B68CCF4();
  v87[3] = type metadata accessor for ProactiveSuggestion();
  v87[4] = sub_25B68CBFC(&qword_27FA475A0, type metadata accessor for ProactiveSuggestion);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v87);
  sub_25B6875F4(a1, boxed_opaque_existential_1);
  v36 = sub_25B68CCE4();
  v38 = v37;
  result = __swift_destroy_boxed_opaque_existential_1(v87);
  if (!v1)
  {
    v40 = sub_25B68CC64();
    (*(*(v40 - 8) + 56))(v31, 1, 1, v40);
    sub_25B68CA34(v36, v38);
    v68 = v36;
    v69 = v38;
    sub_25B68CDA4();
    sub_25B68CC94();
    v65 = 0;
    sub_25B68CC74();
    v41 = *(v22 + 8);
    v42 = v78;
    v67 = v22 + 8;
    v66 = v41;
    v41(v27, v78);
    v70 = v3;
    (*(v22 + 56))(v15, 1, 1, v42);
    v43 = v79;
    sub_25B68CD64();
    v44 = v77;
    sub_25B68CC94();
    (*(v80 + 16))(v20, v43, v81);
    (*(v22 + 16))(v27, v44, v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA475A8, &qword_25B68E098);
    v45 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA475B0, &qword_25B68E0A0) - 8);
    v46 = *(*v45 + 72);
    v47 = (*(*v45 + 80) + 32) & ~*(*v45 + 80);
    v48 = swift_allocObject();
    v64 = xmmword_25B68E070;
    *(v48 + 16) = xmmword_25B68E070;
    v49 = v45[14];
    *(v48 + v47) = 1;
    (*(v75 + 16))(v48 + v47 + v49, v88, v76);
    sub_25B68C6F0(v48);
    swift_setDeallocating();
    sub_25B68CA88(v48 + v47);
    swift_deallocClassInstance();
    v50 = v82;
    sub_25B68CD94();
    v51 = v71[5];
    v52 = v71[6];
    v71 = __swift_project_boxed_opaque_existential_1(v71 + 2, v51);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA475B8, &qword_25B68E0A8);
    v53 = v84;
    v54 = *(v84 + 72);
    v55 = (*(v84 + 80) + 32) & ~*(v84 + 80);
    v56 = swift_allocObject();
    *(v56 + 16) = v64;
    v57 = v56 + v55;
    v58 = v70;
    (*(v53 + 16))(v57, v50, v85);
    v60 = v72;
    v59 = v73;
    v61 = v83;
    (*(v72 + 104))(v83, *MEMORY[0x277D46560], v73);
    v62 = v74;
    v63 = v86;
    (*(v74 + 104))(v86, *MEMORY[0x277D46828], v58);
    (*(v52 + 24))(v56, v61, v63, v51, v52);

    sub_25B68CAF0(v68, v69);
    (*(v62 + 8))(v86, v58);
    (*(v60 + 8))(v83, v59);
    (*(v84 + 8))(v82, v85);
    v66(v77, v78);
    (*(v80 + 8))(v79, v81);
    return (*(v75 + 8))(v88, v76);
  }

  return result;
}

unint64_t sub_25B68C108(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_25B68CD84();
  sub_25B68CBFC(&qword_27FA475D8, MEMORY[0x277D46790]);
  v5 = sub_25B68CE64();

  return sub_25B68C1E4(a1, v5);
}

unint64_t sub_25B68C1A0(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_25B68CFA4();

  return sub_25B68C3A4(a1, v4);
}

unint64_t sub_25B68C1E4(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_25B68CD84();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_25B68CBFC(&unk_27FA475E0, MEMORY[0x277D46790]);
      v16 = sub_25B68CE74();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_25B68C3A4(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t *sub_25B68C410(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  a2[5] = a3;
  a2[6] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2 + 2);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  return a2;
}

unint64_t sub_25B68C480(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA475C8, &qword_25B68E0F8);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA475D0, &qword_25B68E100);
    v8 = sub_25B68CEC4();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_25B68CB94(v10, v6, &qword_27FA475C8, &qword_25B68E0F8);
      result = sub_25B68C108(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_25B68CD84();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_25B68CCA4();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_25B68C6F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA475B0, &qword_25B68E0A0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA475C0, &qword_25B68E0F0);
    v8 = sub_25B68CEC4();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_25B68CB94(v10, v6, &qword_27FA475B0, &qword_25B68E0A0);
      v12 = *v6;
      result = sub_25B68C1A0(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = sub_25B68CDB4();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v6 + v9, v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t *sub_25B68C8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  (*(v7 + 16))(v10, a1, a3);
  v11[5] = a3;
  v11[6] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11 + 2);
  (*(v7 + 32))(boxed_opaque_existential_1, v10, a3);
  return v11;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_25B68CA34(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_25B68CA88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA475B0, &qword_25B68E0A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25B68CAF0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_25B68CB94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_25B68CBFC(unint64_t *a1, void (*a2)(uint64_t))
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