uint64_t sub_242C9D5C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0A70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_242C9D638()
{
  result = qword_27ECF0A78;
  if (!qword_27ECF0A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0A78);
  }

  return result;
}

uint64_t sub_242C9D68C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0A70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_242C9D6F4()
{
  result = qword_27ECF0A80;
  if (!qword_27ECF0A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF0A18);
    sub_242C7DEA0();
    sub_242C9D79C(&qword_27ECF0A88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0A80);
  }

  return result;
}

uint64_t sub_242C9D79C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF0A30);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242C9D7F0()
{
  result = qword_27ECF0A90;
  if (!qword_27ECF0A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0A90);
  }

  return result;
}

unint64_t sub_242C9D848()
{
  result = qword_27ECF0A98;
  if (!qword_27ECF0A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF09F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0A98);
  }

  return result;
}

unint64_t sub_242C9D8C8()
{
  result = qword_27ECF0AA0;
  if (!qword_27ECF0AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0AA0);
  }

  return result;
}

uint64_t sub_242C9D928(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8) >> 1;
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

uint64_t sub_242C9D978(uint64_t result, int a2, int a3)
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
      *result = 0;
      *(result + 8) = 2 * -a2;
      *(result + 16) = 0;
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

uint64_t sub_242C9D9F4(uint64_t a1, int a2)
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

uint64_t sub_242C9DA3C(uint64_t result, int a2, int a3)
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

unint64_t sub_242C9DADC()
{
  result = qword_27ECF0AA8;
  if (!qword_27ECF0AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0AA8);
  }

  return result;
}

unint64_t sub_242C9DB34()
{
  result = qword_27ECF0AB0;
  if (!qword_27ECF0AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0AB0);
  }

  return result;
}

unint64_t sub_242C9DB8C()
{
  result = qword_27ECF0AB8;
  if (!qword_27ECF0AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0AB8);
  }

  return result;
}

unint64_t sub_242C9DBE4()
{
  result = qword_27ECF0AC0;
  if (!qword_27ECF0AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0AC0);
  }

  return result;
}

unint64_t sub_242C9DC3C()
{
  result = qword_27ECF0AC8;
  if (!qword_27ECF0AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0AC8);
  }

  return result;
}

unint64_t sub_242C9DC94()
{
  result = qword_27ECF0AD0;
  if (!qword_27ECF0AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0AD0);
  }

  return result;
}

unint64_t sub_242C9DCEC()
{
  result = qword_27ECF0AD8;
  if (!qword_27ECF0AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0AD8);
  }

  return result;
}

unint64_t sub_242C9DD44()
{
  result = qword_27ECF0AE0;
  if (!qword_27ECF0AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0AE0);
  }

  return result;
}

unint64_t sub_242C9DD9C()
{
  result = qword_27ECF0AE8;
  if (!qword_27ECF0AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0AE8);
  }

  return result;
}

unint64_t sub_242C9DDF4()
{
  result = qword_27ECF0AF0;
  if (!qword_27ECF0AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0AF0);
  }

  return result;
}

unint64_t sub_242C9DE4C()
{
  result = qword_27ECF0AF8;
  if (!qword_27ECF0AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0AF8);
  }

  return result;
}

unint64_t sub_242C9DEA4()
{
  result = qword_27ECF0B00;
  if (!qword_27ECF0B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0B00);
  }

  return result;
}

uint64_t sub_242C9DEF8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000242F596D0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000242F596F0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000242F59710 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_242F06110();

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

uint64_t sub_242C9E060(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

BOOL sub_242C9E0F4(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_242C9E124@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_242C9E150@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t View.layoutOutput(_:)()
{
  swift_getKeyPath();
  sub_242F045E0();
}

uint64_t sub_242C9E2A0@<X0>(void *a1@<X8>)
{
  sub_242C9E9E4();
  result = sub_242F04010();
  *a1 = v3;
  return result;
}

uint64_t LayoutOutput.isVisible(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B08);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v22[-v4 - 8];
  v6 = type metadata accessor for Instrument();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = *v1;
  sub_242C9E5F0(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    sub_242C9E6C8(v5, v9);
    if ((v10 & 4) == 0)
    {
      goto LABEL_4;
    }

    memcpy(v22, &v9[*(v6 + 20)], sizeof(v22));
    v12 = sub_242C9E788(v22);
    if (v12 <= 2)
    {
      if (v12 == 1)
      {
        if (*(sub_242C556B4(v22) + 552))
        {
          goto LABEL_9;
        }
      }

      else if (v12 == 2)
      {
        v15 = sub_242C556B4(v22);
        if (!sub_242C9E7A4(v15 + 8))
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
      if ((v12 - 3) < 3)
      {
        sub_242C556B4(v22);
LABEL_9:
        v11 = 1;
        goto LABEL_33;
      }

      if (v12 == 7)
      {
        v18 = sub_242C556B4(v22);
        if (!get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(v18))
        {
          goto LABEL_9;
        }
      }
    }

LABEL_4:
    if ((v10 & 2) == 0)
    {
      v11 = 0;
LABEL_33:
      sub_242C9E72C(v9);
      return v11;
    }

    memcpy(v22, &v9[*(v6 + 20)], sizeof(v22));
    v13 = sub_242C9E788(v22);
    v14 = 0;
    if (v13 > 3)
    {
      if (v13 == 4 || v13 == 5)
      {
LABEL_23:
        sub_242C556B4(v22);
        v14 = 1;
        goto LABEL_32;
      }

      if (v13 != 7)
      {
LABEL_32:
        v11 = v14 ^ 1u;
        goto LABEL_33;
      }

      v16 = sub_242C556B4(v22);
      enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0 = get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(v16);
    }

    else
    {
      if (v13 == 1)
      {
        v14 = *(sub_242C556B4(v22) + 552);
        goto LABEL_32;
      }

      if (v13 != 2)
      {
        if (v13 != 3)
        {
          goto LABEL_32;
        }

        goto LABEL_23;
      }

      v19 = sub_242C556B4(v22);
      enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0 = sub_242C9E7A4(v19 + 8);
    }

    v14 = enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0 == 0;
    goto LABEL_32;
  }

  sub_242C9E660(v5);
  return 0;
}

uint64_t sub_242C9E5F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_242C9E660(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_242C9E6C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Instrument();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_242C9E72C(uint64_t a1)
{
  v2 = type metadata accessor for Instrument();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_242C9E788(uint64_t a1)
{
  v1 = *(a1 + 552);
  if (v1 >= 0)
  {
    return v1 >> 60;
  }

  else
  {
    return (*a1 + 8);
  }
}

uint64_t sub_242C9E7A4(uint64_t a1)
{
  v1 = *(a1 + 200);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

unint64_t sub_242C9E7CC()
{
  result = qword_27ECF0B10;
  if (!qword_27ECF0B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0B10);
  }

  return result;
}

unint64_t sub_242C9E824()
{
  result = qword_27ECF0B18;
  if (!qword_27ECF0B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0B18);
  }

  return result;
}

unint64_t sub_242C9E87C()
{
  result = qword_27ECF0B20;
  if (!qword_27ECF0B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0B20);
  }

  return result;
}

unint64_t sub_242C9E8D4()
{
  result = qword_27ECF0B28;
  if (!qword_27ECF0B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0B28);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetDestination(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AssetDestination(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

unint64_t sub_242C9E980()
{
  result = qword_27ECF0B38;
  if (!qword_27ECF0B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF0B30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0B38);
  }

  return result;
}

unint64_t sub_242C9E9E4()
{
  result = qword_27ECF0B40;
  if (!qword_27ECF0B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0B40);
  }

  return result;
}

CarPlayAssetUI::OutsideTemperatureDataIdentifiers __swiftcall OutsideTemperatureDataIdentifiers.init(temperatureDataIdentifier:unitDataIdentifier:icyConditionsDataIdentifier:)(CarPlayAssetUI::InstrumentDataIdentifier temperatureDataIdentifier, CarPlayAssetUI::InstrumentDataIdentifier unitDataIdentifier, CarPlayAssetUI::InstrumentDataIdentifier icyConditionsDataIdentifier)
{
  v4 = *unitDataIdentifier;
  v5 = *icyConditionsDataIdentifier;
  *v3 = *temperatureDataIdentifier;
  v3[1] = v4;
  v3[2] = v5;
  result.temperatureDataIdentifier = temperatureDataIdentifier;
  return result;
}

unint64_t sub_242C9EB04()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000019;
  }
}

uint64_t sub_242C9EB5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242C9F74C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242C9EB84(uint64_t a1)
{
  v2 = sub_242C9F468();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242C9EBC0(uint64_t a1)
{
  v2 = sub_242C9F468();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OutsideTemperatureDataIdentifiers.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B48);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v13 = v1[2];
  v14 = v9;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242C9F468();
  sub_242F064C0();
  v20 = v8;
  v19 = 0;
  sub_242C8AC28();
  sub_242F05F20();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v10 = v13;
  v18 = v14;
  v17 = 1;
  sub_242F05F20();
  v16 = v10;
  v15 = 2;
  sub_242F05F20();
  return (*(v5 + 8))(v7, v4);
}

uint64_t OutsideTemperatureDataIdentifiers.hash(into:)()
{
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();
}

uint64_t OutsideTemperatureDataIdentifiers.hashValue.getter()
{
  sub_242F06390();
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t OutsideTemperatureDataIdentifiers.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B58);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242C9F468();
  sub_242F06480();
  if (!v2)
  {
    v18 = 0;
    sub_242C8AC7C();
    sub_242F05E00();
    v9 = v19;
    v16 = 1;
    sub_242F05E00();
    v13 = v17;
    v14 = 2;
    sub_242F05E00();
    (*(v6 + 8))(v8, v5);
    v11 = v15;
    *a2 = v9;
    a2[1] = v13;
    a2[2] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242C9F1E0()
{
  sub_242F06390();
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t _s14CarPlayAssetUI33OutsideTemperatureDataIdentifiersV2eeoiySbAC_ACtFZ_0()
{
  v0 = InstrumentDataIdentifier.rawValue.getter();
  v2 = v1;
  if (v0 == InstrumentDataIdentifier.rawValue.getter() && v2 == v3)
  {
  }

  else
  {
    v4 = sub_242F06110();

    if ((v4 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v5 = InstrumentDataIdentifier.rawValue.getter();
  v7 = v6;
  if (v5 == InstrumentDataIdentifier.rawValue.getter() && v7 == v8)
  {

    goto LABEL_9;
  }

  v9 = sub_242F06110();

  if ((v9 & 1) == 0)
  {
LABEL_12:
    v14 = 0;
    return v14 & 1;
  }

LABEL_9:
  v10 = InstrumentDataIdentifier.rawValue.getter();
  v12 = v11;
  if (v10 == InstrumentDataIdentifier.rawValue.getter() && v12 == v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_242F06110();
  }

  return v14 & 1;
}

unint64_t sub_242C9F468()
{
  result = qword_27ECF0B50;
  if (!qword_27ECF0B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0B50);
  }

  return result;
}

unint64_t sub_242C9F4C0()
{
  result = qword_27ECF0B60;
  if (!qword_27ECF0B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0B60);
  }

  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for OutsideTemperatureDataIdentifiers(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xAB)
  {
    if ((a2 + 33554261) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16777045;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16777045;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 0x56;
  v6 = v4 - 86;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for OutsideTemperatureDataIdentifiers(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554261) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xAA)
  {
    v3 = 0;
  }

  if (a2 > 0xAA)
  {
    *result = a2 - 171;
    *(result + 2) = (a2 - 171) >> 16;
    if (v3)
    {
      v4 = ((a2 - 171) >> 24) + 1;
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
      *result = a2 + 85;
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

unint64_t sub_242C9F648()
{
  result = qword_27ECF0B68;
  if (!qword_27ECF0B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0B68);
  }

  return result;
}

unint64_t sub_242C9F6A0()
{
  result = qword_27ECF0B70;
  if (!qword_27ECF0B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0B70);
  }

  return result;
}

unint64_t sub_242C9F6F8()
{
  result = qword_27ECF0B78;
  if (!qword_27ECF0B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0B78);
  }

  return result;
}

uint64_t sub_242C9F74C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000019 && 0x8000000242F59730 == a2;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000242F59750 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000242F59770 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_242F06110();

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

uint64_t SingleSelectMenuModel.Entry.title.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t SingleSelectMenuModel.Entry.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t SingleSelectMenuModel.Entry.symbolName.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t SingleSelectMenuModel.Entry.symbolName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

void *SingleSelectMenuModel.Entry.init(id:title:symbolName:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = *result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t static SingleSelectMenuModel.Entry.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v6 && (sub_242F06110() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_242F06110();
}

uint64_t sub_242C9FA50(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v6 && (sub_242F06110() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_242F06110();
}

uint64_t SingleSelectMenuModel.id.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t SingleSelectMenuModel.entries.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

void SingleSelectMenuModel.selectedEntryID.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

uint64_t SingleSelectMenuModel.selectedEntryID.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  return result;
}

uint64_t sub_242C9FBDC@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_242CA003C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_242C5573C(v3);
}

uint64_t sub_242C9FC5C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_242CA0014;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 40);
  sub_242C5573C(v3);
  result = sub_242C655DC(v7);
  *(a2 + 40) = v6;
  *(a2 + 48) = v5;
  return result;
}

uint64_t SingleSelectMenuModel.selectionHandler.getter()
{
  v1 = *(v0 + 40);
  sub_242C5573C(v1);
  return v1;
}

uint64_t SingleSelectMenuModel.selectionHandler.setter(uint64_t a1, uint64_t a2)
{
  result = sub_242C655DC(*(v2 + 40));
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

void *SingleSelectMenuModel.init(id:entries:selectedEntryID:isUserSelectionEnabled:selectionHandler:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = result[1];
  v8 = *a3;
  v9 = *(a3 + 8);
  *a7 = *result;
  *(a7 + 8) = v7;
  *(a7 + 16) = a2;
  *(a7 + 24) = v8;
  *(a7 + 32) = v9;
  *(a7 + 40) = a5;
  *(a7 + 48) = a6;
  *(a7 + 33) = a4;
  return result;
}

Swift::Double_optional __swiftcall SingleSelectMenuModel.doubleValue()()
{
  v0 = 0;
  result.is_nil = v0;
  return result;
}

uint64_t _s14CarPlayAssetUI21SingleSelectMenuModelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 33);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 33);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_242F06110() & 1) == 0 || (sub_242C72C98(v2, v6) & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v8)
    {
      return 0;
    }
  }

  else
  {
    if (v3 == v7)
    {
      v11 = v8;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  return v5 ^ v9 ^ 1u;
}

uint64_t sub_242C9FEE4(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14CarPlayAssetUI11TaggedValueVyAA21SingleSelectMenuModelV5EntryVSiGIegn_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_242C9FF74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_242C9FFBC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_242CA00A0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_242F04000();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BA0);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_242CA321C(v2, &v14 - v9, &qword_27ECF0BA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_242F03BB0();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_242F05710();
    v13 = sub_242F04360();
    sub_242F03930();

    sub_242F03FF0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_242CA02A0(uint64_t a1)
{
  v3 = sub_242F04000();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 36);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_242F05710();
    v9 = sub_242F04360();
    sub_242F03930();

    sub_242F03FF0();
    swift_getAtKeyPath();
    sub_242CA31A0(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

uint64_t sub_242CA03F4(uint64_t a1)
{
  v3 = sub_242F04000();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 40);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_242F05710();
    v9 = sub_242F04360();
    sub_242F03930();

    sub_242F03FF0();
    swift_getAtKeyPath();
    sub_242CA31A0(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

uint64_t sub_242CA0548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_242F04000();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BA8);
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - v10;
  sub_242CA321C(v2 + *(a1 + 44), &v14 - v10, &qword_27ECF0BA8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_242CA31AC(v11, a2);
  }

  sub_242F05710();
  v13 = sub_242F04360();
  sub_242F03930();

  sub_242F03FF0();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v8, v5);
}

uint64_t ElevatedButtonStyle.init(shape:isSelected:solidBackground:wantsBackgroundMaterialPlatter:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  *a6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BA0);
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for ElevatedButtonStyle();
  v13 = a6 + v12[9];
  *v13 = swift_getKeyPath();
  v13[8] = 0;
  v14 = a6 + v12[10];
  *v14 = swift_getKeyPath();
  v14[8] = 0;
  v15 = v12[11];
  *(a6 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BA8);
  swift_storeEnumTagMultiPayload();
  result = (*(*(a5 - 8) + 32))(a6 + v12[12], a1, a5);
  *(a6 + v12[13]) = a2;
  *(a6 + v12[14]) = a3;
  *(a6 + v12[15]) = a4;
  return result;
}

uint64_t ElevatedButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v92 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BB0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v77 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v90 = &v67 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BB8);
  MEMORY[0x28223BE20](v9);
  v11 = &v67 - v10;
  v13 = *(a2 + 16);
  v12 = *(a2 + 24);
  v14 = a2;
  v106 = MEMORY[0x277CDF6A8];
  v107 = v13;
  v108 = MEMORY[0x277CDF6A0];
  v109 = v12;
  v15 = v12;
  v91 = sub_242F04290();
  v69 = sub_242F03E00();
  v75 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v70 = &v67 - v16;
  v17 = v13;
  v18 = v15;
  v74 = sub_242F041F0();
  v73 = sub_242F03E00();
  v76 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v71 = &v67 - v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF0BC0);
  v20 = sub_242F03E00();
  v85 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v72 = &v67 - v21;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF0BC8);
  v86 = v20;
  v22 = sub_242F03E00();
  v88 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v87 = &v67 - v23;
  v68 = sub_242F04A30();
  v106 = v17;
  v107 = v68;
  v94 = v17;
  v108 = v18;
  v109 = MEMORY[0x277CE1320];
  v24 = v18;
  sub_242F03B90();
  v25 = sub_242F05860();
  WitnessTable = swift_getWitnessTable();
  v26 = swift_getWitnessTable();
  v82 = v25;
  v78 = v26;
  v27 = sub_242F041A0();
  v89 = v22;
  v80 = v27;
  v84 = sub_242F03E00();
  v83 = *(v84 - 8);
  v28 = MEMORY[0x28223BE20](v84);
  v79 = &v67 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v81 = &v67 - v30;
  sub_242F04260();
  v31 = sub_242CA138C(a1, v14);
  *&v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BD0) + 36)] = v31;
  v32 = &v11[*(v9 + 36)];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BD8);
  sub_242CA16B0(v14, v32 + *(v33 + 28));
  *v32 = swift_getKeyPath();
  v67 = v14;
  v106 = sub_242CA196C(a1, v14);
  v34 = sub_242CA2784();
  v66 = v18;
  v35 = v70;
  sub_242F04590();
  v36 = v68;

  sub_242C6D138(v11, &qword_27ECF0BB8);
  v37 = swift_getWitnessTable();
  v103 = v34;
  v104 = v37;
  v38 = v69;
  v39 = swift_getWitnessTable();
  v40 = v77;
  v41 = v71;
  v91 = v24;
  sub_242F04600();
  (*(v75 + 8))(v35, v38);
  v106 = sub_242F04780();
  v42 = swift_getWitnessTable();
  v101 = v39;
  v102 = v42;
  v43 = v73;
  v44 = swift_getWitnessTable();
  v45 = v72;
  sub_242F04660();

  (*(v76 + 8))(v41, v43);
  swift_getKeyPath();
  sub_242CA0548(v67, v40);
  v46 = *(v36 - 8);
  v47 = *(v46 + 48);
  if (v47(v40, 1, v36) == 1)
  {
    v48 = v90;
    sub_242F04A00();
    if (v47(v40, 1, v36) != 1)
    {
      sub_242C6D138(v40, &qword_27ECF0BB0);
    }
  }

  else
  {
    v48 = v90;
    (*(v46 + 32))(v90, v40, v36);
  }

  (*(v46 + 56))(v48, 0, 1, v36);
  v49 = sub_242C7E000(&qword_27ECF0C10, &qword_27ECF0BC0);
  v99 = v44;
  v100 = v49;
  v50 = v86;
  v51 = swift_getWitnessTable();
  v52 = v87;
  sub_242F045E0();

  sub_242C6D138(v48, &qword_27ECF0BB0);
  v53 = (*(v85 + 8))(v45, v50);
  MEMORY[0x28223BE20](v53);
  v54 = v91;
  *(&v67 - 4) = v94;
  *(&v67 - 3) = v54;
  v66 = v93;
  sub_242F04A70();
  v55 = sub_242C7E000(qword_27ECF0C18, &qword_27ECF0BC8);
  v97 = v51;
  v98 = v55;
  v56 = v89;
  v57 = swift_getWitnessTable();
  v58 = v79;
  sub_242F04580();
  (*(v88 + 8))(v52, v56);
  v59 = swift_getWitnessTable();
  v95 = v57;
  v96 = v59;
  v60 = v84;
  swift_getWitnessTable();
  v61 = v83;
  v62 = *(v83 + 16);
  v63 = v81;
  v62(v81, v58, v60);
  v64 = *(v61 + 8);
  v64(v58, v60);
  v62(v92, v63, v60);
  return (v64)(v63, v60);
}

uint64_t sub_242CA138C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0CC8);
  MEMORY[0x28223BE20](v4);
  v6 = v18 - v5;
  v7 = sub_242F03DD0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v18 - v12;
  sub_242F03DC0();
  if (sub_242CA03F4(a2))
  {
    if (sub_242F04270())
    {
      if (*(v2 + *(a2 + 56)) == 1)
      {
        v14 = [objc_opt_self() _carSystemFocusColor];
        sub_242F047D0();
        v15 = sub_242F04770();

        v18[1] = v15;
      }

      else
      {
        (*(v8 + 16))(v6, v13, v7);
        *&v6[*(v4 + 36)] = 2;
        sub_242C7E000(&qword_27ECF0CD0, &qword_27ECF0CC8);
      }
    }

    else
    {
      (*(v8 + 16))(v11, v13, v7);
    }
  }

  else
  {
    (*(v8 + 16))(v6, v13, v7);
    *&v6[*(v4 + 36)] = 3;
    sub_242C7E000(&qword_27ECF0CD0, &qword_27ECF0CC8);
  }

  v16 = sub_242F03C80();
  (*(v8 + 8))(v13, v7);
  return v16;
}

uint64_t sub_242CA16B0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = sub_242F03BB0();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v28 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  if (sub_242CA02A0(a1))
  {
    sub_242CA00A0(v14);
    v15 = *MEMORY[0x277CDF3D0];
    v16 = *(v6 + 104);
    v16(v12, v15, v5);
    v17 = sub_242F03BA0();
    v18 = *(v6 + 8);
    v18(v12, v5);
    v18(v14, v5);
    if (v17)
    {
      v19 = *MEMORY[0x277CDF3C0];
      v20 = a2;
    }

    else
    {
      v20 = a2;
      v19 = v15;
    }

    return (v16)(v20, v19, v5);
  }

  else if (*(v2 + *(a1 + 52)) == 1 && (sub_242F04270() & 1) != 0 && (*(v2 + *(a1 + 56)) & 1) == 0)
  {
    sub_242CA00A0(v9);
    v22 = *MEMORY[0x277CDF3D0];
    v23 = *(v6 + 104);
    v23(v12, v22, v5);
    v24 = sub_242F03BA0();
    v25 = *(v6 + 8);
    v25(v12, v5);
    v25(v9, v5);
    if (v24)
    {
      v26 = *MEMORY[0x277CDF3C0];
      v27 = a2;
    }

    else
    {
      v27 = a2;
      v26 = v22;
    }

    return (v23)(v27, v26, v5);
  }

  else
  {

    return sub_242CA00A0(a2);
  }
}

uint64_t sub_242CA196C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_242F03BB0();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  if ((sub_242CA03F4(a2) & 1) == 0)
  {
    if (*(v2 + *(a2 + 56)) == 1)
    {
      v14 = 3;
    }

    else
    {
      v14 = 2;
    }

    goto LABEL_25;
  }

  if (*(v2 + *(a2 + 52)) != 1)
  {
    if (sub_242CA02A0(a2))
    {
      if (*(v2 + *(a2 + 56)) == 1)
      {
        goto LABEL_15;
      }

      goto LABEL_16;
    }

LABEL_24:
    v14 = 1;
LABEL_25:
    v26 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0CB8);
    sub_242C7E000(&qword_27ECF0CC0, &qword_27ECF0CB8);
    return sub_242F03C80();
  }

  if ((sub_242F04270() & 1) == 0)
  {
    if (sub_242CA02A0(a2))
    {
      if (*(v2 + *(a2 + 56)) == 1)
      {
LABEL_15:
        v15 = [objc_opt_self() _carSystemFocusColor];
        v16 = sub_242F047D0();
LABEL_21:
        v26 = v16;
        return sub_242F03C80();
      }

LABEL_16:
      sub_242CA00A0(v11);
      (*(v6 + 104))(v9, *MEMORY[0x277CDF3C0], v5);
      v17 = sub_242F03BA0();
      v18 = *(v6 + 8);
      v18(v9, v5);
      v18(v11, v5);
      if ((v17 & 1) == 0)
      {
        sub_242F04730();
LABEL_27:
        v23 = sub_242F04770();

        v26 = v23;
        return sub_242F03C80();
      }

LABEL_26:
      sub_242F04750();
      goto LABEL_27;
    }

    sub_242CA00A0(v11);
    (*(v6 + 104))(v9, *MEMORY[0x277CDF3D0], v5);
    v21 = sub_242F03BA0();
    v22 = *(v6 + 8);
    v22(v9, v5);
    v22(v11, v5);
    if (v21)
    {
LABEL_20:
      v16 = sub_242F04750();
      goto LABEL_21;
    }

    if (*(v3 + *(a2 + 56)) != 1)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  if (*(v2 + *(a2 + 56)) == 1)
  {
    sub_242CA00A0(v11);
    (*(v6 + 104))(v9, *MEMORY[0x277CDF3C0], v5);
    v12 = sub_242F03BA0();
    v13 = *(v6 + 8);
    v13(v9, v5);
    v13(v11, v5);
    if (v12)
    {
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  sub_242F04750();
  sub_242CA00A0(v11);
  (*(v6 + 104))(v9, *MEMORY[0x277CDF3C0], v5);
  sub_242F03BA0();
  v19 = *(v6 + 8);
  v19(v9, v5);
  v19(v11, v5);
  v20 = sub_242F04770();

  v26 = v20;
  return sub_242F03C80();
}

uint64_t sub_242CA1E30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BB0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_242CA321C(a1, &v5 - v3, &qword_27ECF0BB0);
  return sub_242F03F00();
}

uint64_t sub_242CA1ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v42 = a4;
  v7 = sub_242F04A30();
  v44 = a2;
  v45 = v7;
  v46 = a3;
  v47 = MEMORY[0x277CE1320];
  v8 = sub_242F03B90();
  v41 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v38 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v35[0] = v35 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BB0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = v35 - v14;
  v16 = *(v7 - 8);
  MEMORY[0x28223BE20](v13);
  v18 = v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_242F05860();
  v39 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v40 = v35 - v23;
  v36 = a2;
  v37 = a3;
  v24 = type metadata accessor for ElevatedButtonStyle();
  v35[1] = a1;
  sub_242CA23C8(v24, v15);
  if ((*(v16 + 48))(v15, 1, v7) == 1)
  {
    sub_242C6D138(v15, &qword_27ECF0BB0);
    (*(v41 + 56))(v22, 1, 1, v8);
    swift_getWitnessTable();
  }

  else
  {
    (*(v16 + 32))(v18, v15, v7);
    v25 = v38;
    sub_242CA2484(v18, 256, v36, v7);
    (*(v16 + 8))(v18, v7);
    swift_getWitnessTable();
    v26 = v41;
    v27 = *(v41 + 16);
    v28 = v35[0];
    v27(v35[0], v25, v8);
    v29 = *(v26 + 8);
    v29(v25, v8);
    v27(v25, v28, v8);
    v29(v28, v8);
    (*(v26 + 32))(v22, v25, v8);
    (*(v26 + 56))(v22, 0, 1, v8);
  }

  v30 = v39;
  v31 = v40;
  v32 = *(v39 + 16);
  v32(v40, v22, v19);
  v33 = *(v30 + 8);
  v33(v22, v19);
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v32(v42, v31, v19);
  return (v33)(v31, v19);
}

uint64_t sub_242CA23C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + *(a1 + 60)) != 1)
  {
    goto LABEL_4;
  }

  if (sub_242CA02A0(a1))
  {
    if (*(v2 + *(a1 + 56)))
    {
LABEL_4:
      v5 = 1;
      goto LABEL_8;
    }

    sub_242F04A10();
  }

  else
  {
    sub_242F04A20();
  }

  v5 = 0;
LABEL_8:
  v6 = sub_242F04A30();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t sub_242CA2484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  (*(v11 + 16))(&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  (*(v6 + 16))(v9, a1, a4);
  return sub_242F03B80();
}

uint64_t sub_242CA2634@<X0>(_BYTE *a1@<X8>)
{
  result = sub_242F03FC0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_242CA2664@<X0>(_BYTE *a1@<X8>)
{
  result = sub_242F03FA0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_242CA26BC(uint64_t a1)
{
  v2 = sub_242F03BB0();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_242F03EC0();
}

unint64_t sub_242CA2784()
{
  result = qword_27ECF0BE0;
  if (!qword_27ECF0BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF0BB8);
    sub_242CA283C();
    sub_242C7E000(&qword_27ECF0C08, &qword_27ECF0BD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0BE0);
  }

  return result;
}

unint64_t sub_242CA283C()
{
  result = qword_27ECF0BE8;
  if (!qword_27ECF0BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF0BD0);
    sub_242CA28F4();
    sub_242C7E000(&qword_27ECF0BF8, &qword_27ECF0C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0BE8);
  }

  return result;
}

unint64_t sub_242CA28F4()
{
  result = qword_27ECF0BF0;
  if (!qword_27ECF0BF0)
  {
    sub_242F04250();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF0BF0);
  }

  return result;
}

void sub_242CA29A4()
{
  sub_242CA3094();
  if (v0 <= 0x3F)
  {
    sub_242CA30EC();
    if (v1 <= 0x3F)
    {
      sub_242CA313C();
      if (v2 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_242CA2A68(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_242F03BB0() - 8) + 64);
  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(sub_242F04A30() - 8);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= 0xFE)
  {
    v12 = 254;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (*(v8 + 84))
  {
    v13 = *(v8 + 64);
  }

  else
  {
    v13 = *(v8 + 64) + 1;
  }

  if (v13 <= 8)
  {
    v13 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(v8 + 80) & 0xF8 | 7;
  v15 = v13 + v11 + 1;
  if (a2 <= v12)
  {
    goto LABEL_36;
  }

  v16 = *(v9 + 64) + ((v15 + (((v7 & 0xFFFFFFFFFFFFFFF8) + v14 + 33) & ~v14)) & ~v11) + 3;
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v20 = ((a2 - v12 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v20))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_36;
      }

      goto LABEL_23;
    }

    if (v20 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_36;
      }

      goto LABEL_23;
    }

    if (v20 < 2)
    {
LABEL_36:
      if (v10 > 0xFE)
      {
        v25 = *(v9 + 48);

        return v25((v15 + ((((a1 + v7 + 24) & 0xFFFFFFFFFFFFFFF8) + v14 + 9) & ~v14)) & ~v11);
      }

      else
      {
        v24 = *(a1 + v7);
        if (v24 >= 2)
        {
          return (v24 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_36;
  }

LABEL_23:
  v21 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v21 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v22 = v16;
    }

    else
    {
      v22 = 4;
    }

    if (v22 > 2)
    {
      if (v22 == 3)
      {
        v23 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v23 = *a1;
      }
    }

    else if (v22 == 1)
    {
      v23 = *a1;
    }

    else
    {
      v23 = *a1;
    }
  }

  else
  {
    v23 = 0;
  }

  return v12 + (v23 | v21) + 1;
}

void sub_242CA2D04(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_242F03BB0() - 8) + 64);
  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(sub_242F04A30() - 8);
  v11 = *(v10 + 80);
  v12 = *(v10 + 84);
  v13 = *(v10 + 64);
  v14 = *(*(a4 + 16) - 8);
  v15 = *(v14 + 84);
  v16 = *(v14 + 80);
  if (v15 <= 0xFE)
  {
    v17 = 254;
  }

  else
  {
    v17 = *(v14 + 84);
  }

  v18 = v11 & 0xF8 | 7;
  if (v12)
  {
    v19 = v13;
  }

  else
  {
    v19 = v13 + 1;
  }

  if (v19 <= 8)
  {
    v19 = 8;
  }

  v20 = v19 + v16 + 1;
  v21 = *(v14 + 64) + ((v20 + (((v9 & 0xFFFFFFFFFFFFFFF8) + v18 + 33) & ~v18)) & ~v16) + 3;
  if (a3 <= v17)
  {
    v22 = 0;
  }

  else if (v21 <= 3)
  {
    v25 = ((a3 - v17 + ~(-1 << (8 * v21))) >> (8 * v21)) + 1;
    if (HIWORD(v25))
    {
      v22 = 4;
    }

    else
    {
      if (v25 < 0x100)
      {
        v26 = 1;
      }

      else
      {
        v26 = 2;
      }

      if (v25 >= 2)
      {
        v22 = v26;
      }

      else
      {
        v22 = 0;
      }
    }
  }

  else
  {
    v22 = 1;
  }

  if (v17 < a2)
  {
    v23 = ~v17 + a2;
    if (v21 < 4)
    {
      v24 = (v23 >> (8 * v21)) + 1;
      if (v21)
      {
        v27 = v23 & ~(-1 << (8 * v21));
        bzero(a1, v21);
        if (v21 != 3)
        {
          if (v21 == 2)
          {
            *a1 = v27;
            if (v22 > 1)
            {
LABEL_63:
              if (v22 == 2)
              {
                *&a1[v21] = v24;
              }

              else
              {
                *&a1[v21] = v24;
              }

              return;
            }
          }

          else
          {
            *a1 = v23;
            if (v22 > 1)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_60;
        }

        *a1 = v27;
        a1[2] = BYTE2(v27);
      }

      if (v22 > 1)
      {
        goto LABEL_63;
      }
    }

    else
    {
      bzero(a1, v21);
      *a1 = v23;
      v24 = 1;
      if (v22 > 1)
      {
        goto LABEL_63;
      }
    }

LABEL_60:
    if (v22)
    {
      a1[v21] = v24;
    }

    return;
  }

  if (v22 > 1)
  {
    if (v22 != 2)
    {
      *&a1[v21] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *&a1[v21] = 0;
LABEL_38:
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!v22)
  {
    goto LABEL_38;
  }

  a1[v21] = 0;
  if (!a2)
  {
    return;
  }

LABEL_39:
  v28 = v9 + 1;
  if (v15 > 0xFE)
  {
    v29 = *(v14 + 56);

    v29((v20 + (((&a1[v28 + 23] & 0xFFFFFFFFFFFFFFF8) + v18 + 9) & ~v18)) & ~v16, a2);
  }

  else if (a2 > 0xFE)
  {
    if (v28 <= 3)
    {
      v30 = ~(-1 << (8 * v28));
    }

    else
    {
      v30 = -1;
    }

    if (v9 != -1)
    {
      v31 = v30 & (a2 - 255);
      if (v28 <= 3)
      {
        v32 = v9 + 1;
      }

      else
      {
        v32 = 4;
      }

      bzero(a1, v28);
      if (v32 > 2)
      {
        if (v32 == 3)
        {
          *a1 = v31;
          a1[2] = BYTE2(v31);
        }

        else
        {
          *a1 = v31;
        }
      }

      else if (v32 == 1)
      {
        *a1 = v31;
      }

      else
      {
        *a1 = v31;
      }
    }
  }

  else
  {
    a1[v9] = -a2;
  }
}

void sub_242CA3094()
{
  if (!qword_27ECF0CA0)
  {
    sub_242F03BB0();
    v0 = sub_242F03BC0();
    if (!v1)
    {
      atomic_store(v0, &qword_27ECF0CA0);
    }
  }
}

void sub_242CA30EC()
{
  if (!qword_27ECF0CA8)
  {
    v0 = sub_242F03BC0();
    if (!v1)
    {
      atomic_store(v0, &qword_27ECF0CA8);
    }
  }
}

void sub_242CA313C()
{
  if (!qword_27ECF0CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF0BB0);
    v0 = sub_242F03BC0();
    if (!v1)
    {
      atomic_store(v0, &qword_27ECF0CB0);
    }
  }
}

uint64_t sub_242CA31A0(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_242CA31AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_242CA321C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t VisibilityConfiguration.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v2 = a1;
  v4 = *(a1 + 16);
  if (v4)
  {

    v5 = v4 - 1;
    v6 = MEMORY[0x277D84F90];
    for (i = 32; ; i += 136)
    {
      v8 = *&v2[i + 96];
      v44 = *&v2[i + 112];
      v45 = *&v2[i + 128];
      v9 = *&v2[i + 48];
      v39 = *&v2[i + 32];
      v40 = v9;
      v10 = *&v2[i + 64];
      v42 = *&v2[i + 80];
      v43 = v8;
      v41 = v10;
      v11 = *&v2[i + 16];
      v37 = *&v2[i];
      v38 = v11;
      if (sub_242CA35A4(&v37) == 4)
      {
        v12 = sub_242C55EDC(&v37);
        v13 = *v12;
        v14 = *(v12 + 1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_242C831C0(0, *(v6 + 2) + 1, 1, v6);
        }

        v16 = *(v6 + 2);
        v15 = *(v6 + 3);
        if (v16 >= v15 >> 1)
        {
          v6 = sub_242C831C0((v15 > 1), v16 + 1, 1, v6);
        }

        *(v6 + 2) = v16 + 1;
        v17 = &v6[8 * v16];
        v17[32] = v13;
        *(v17 + 9) = v14;
      }

      if (!v5)
      {
        break;
      }

      --v5;
    }
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v18 = *(v6 + 2);

  if (!v18)
  {
    if (qword_27ECEEF60 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v20 = byte_27ECF1000;
    v21 = dword_27ECF1004;
    if (qword_27ECEEED8 != -1)
    {
      swift_once();
    }

    v23 = HIDWORD(qword_27ECF0E90);
    v22 = qword_27ECF0E90;
    v24 = qword_27ECF0E98;
    v25 = unk_27ECF0EA0;
    v26 = qword_27ECF0EA8;
    v27 = unk_27ECF0EB0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_242C830A4(0, *(v2 + 2) + 1, 1, v2);
    }

    v29 = *(v2 + 2);
    v28 = *(v2 + 3);
    if (v29 >= v28 >> 1)
    {
      v2 = sub_242C830A4((v28 > 1), v29 + 1, 1, v2);
    }

    LOBYTE(v37) = v20;
    *(&v37 + 4) = __PAIR64__(v22, v21);
    HIDWORD(v37) = v23;
    *&v38 = v24;
    *(&v38 + 1) = v25;
    *&v39 = v26;
    *(&v39 + 1) = v27;
    *&v40 = __PAIR64__(v23, v22);
    *(&v40 + 1) = v24;
    *&v41 = v25;
    *(&v41 + 1) = v26;
    *&v42 = v27;
    result = sub_242CB5A7C(&v37);
    *(v2 + 2) = v29 + 1;
    v30 = &v2[136 * v29];
    *(v30 + 2) = v37;
    v31 = v38;
    v32 = v39;
    v33 = v41;
    *(v30 + 5) = v40;
    *(v30 + 6) = v33;
    *(v30 + 3) = v31;
    *(v30 + 4) = v32;
    v34 = v42;
    v35 = v43;
    v36 = v44;
    *(v30 + 20) = v45;
    *(v30 + 8) = v35;
    *(v30 + 9) = v36;
    *(v30 + 7) = v34;
  }

  *a2 = v2;
  return result;
}

CarPlayAssetUI::VisibilityConfiguration __swiftcall VisibilityConfiguration.init()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF03D8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_242F09510;
  if (qword_27ECEEF60 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = byte_27ECF1000;
  v4 = dword_27ECF1004;
  if (qword_27ECEEED8 != -1)
  {
    swift_once();
  }

  v11[0] = v3;
  *&v11[4] = v4;
  *&v11[8] = xmmword_27ECF0E90;
  *&v11[24] = xmmword_27ECF0EA0;
  v12 = *(&xmmword_27ECF0EA0 + 8);
  v13 = xmmword_27ECF0E90;
  v14 = xmmword_27ECF0EA0;
  *&v15 = unk_27ECF0EB0;
  sub_242CB5A7C(v11);
  v5 = v17;
  *(v2 + 128) = v16;
  *(v2 + 144) = v5;
  *(v2 + 160) = v18;
  v6 = v13;
  *(v2 + 64) = v12;
  *(v2 + 80) = v6;
  v7 = v15;
  *(v2 + 96) = v14;
  *(v2 + 112) = v7;
  v8 = *&v11[16];
  *(v2 + 32) = *v11;
  *(v2 + 48) = v8;
  result.rules._rawValue = VisibilityConfiguration.init(arrayLiteral:)(v2, &v10);
  *v1 = v10;
  return result;
}

uint64_t sub_242CA3768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73656C7572 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_242F06110();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_242CA37EC(uint64_t a1)
{
  v2 = sub_242CB5A98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242CA3828(uint64_t a1)
{
  v2 = sub_242CB5A98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VisibilityConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1020);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CB5A98();

  sub_242F064C0();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1030);
  sub_242CB5B40(&qword_27ECF1038, sub_242CB5AEC);
  sub_242F05F20();

  return (*(v4 + 8))(v6, v3);
}

uint64_t VisibilityConfiguration.hash(into:)()
{
  v1 = *v0;
  result = MEMORY[0x245D279A0](*(*v0 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    result = VisibilityRule.hash(into:)();
    v4 = v3 - 1;
    if (v4)
    {
      v5 = v1 + 168;
      do
      {
        result = VisibilityRule.hash(into:)();
        v5 += 136;
        --v4;
      }

      while (v4);
    }
  }

  return result;
}

uint64_t VisibilityConfiguration.hashValue.getter()
{
  v1 = *v0;
  sub_242F06390();
  MEMORY[0x245D279A0](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    VisibilityRule.hash(into:)();
    v3 = v2 - 1;
    if (v3)
    {
      v4 = v1 + 168;
      do
      {
        VisibilityRule.hash(into:)();
        v4 += 136;
        --v3;
      }

      while (v3);
    }
  }

  return sub_242F063E0();
}

uint64_t VisibilityConfiguration.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1048);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CB5A98();
  sub_242F06480();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1030);
    sub_242CB5B40(&qword_27ECF1050, sub_242CB5BB8);
    sub_242F05E00();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242CA3D90()
{
  v1 = *v0;
  sub_242F06390();
  MEMORY[0x245D279A0](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    VisibilityRule.hash(into:)();
    v3 = v2 - 1;
    if (v3)
    {
      v4 = v1 + 168;
      do
      {
        VisibilityRule.hash(into:)();
        v4 += 136;
        --v3;
      }

      while (v3);
    }
  }

  return sub_242F063E0();
}

double static VisibilityRule.Animation.default.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEED8 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  *a1 = xmmword_27ECF0E90;
  *(a1 + 8) = *(&xmmword_27ECF0E90 + 8);
  result = *(&xmmword_27ECF0EA0 + 1);
  *(a1 + 24) = *(&xmmword_27ECF0EA0 + 8);
  return result;
}

double sub_242CA3EEC()
{
  if (qword_27ECEEEE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = word_27ECF0EB8;
  v1 = HIBYTE(word_27ECF0EB8);
  if (qword_27ECEEEC8 != -1)
  {
    swift_once();
  }

  LOBYTE(v3) = v0;
  BYTE1(v3) = v1;
  *(&v3 + 1) = 0x3DEB851F3E99999ALL;
  v4 = xmmword_27ECF0E48;
  v5 = xmmword_27ECF0E58;
  *v6 = 1041865114;
  *&v6[8] = xmmword_27ECF0E48;
  *&v6[24] = xmmword_27ECF0E58;
  sub_242C55EDC(&v3);
  xmmword_27ECF0D38 = v7;
  unk_27ECF0D48 = v8;
  qword_27ECF0D58 = v9;
  xmmword_27ECF0CF8 = v5;
  unk_27ECF0D08 = *v6;
  xmmword_27ECF0D18 = *&v6[16];
  unk_27ECF0D28 = *&v6[32];
  result = *&v4;
  xmmword_27ECF0CD8 = v3;
  unk_27ECF0CE8 = v4;
  return result;
}

__n128 VisibilityRule.Animation.init(duration:delay:bezierCurve:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>, float a4@<S1>)
{
  *a2 = a3;
  *(a2 + 4) = a4;
  result = *a1;
  v5 = *(a1 + 16);
  *(a2 + 8) = *a1;
  *(a2 + 24) = v5;
  return result;
}

__n128 static VisibilityRule.transmissionModeGearSet.getter@<Q0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEEA0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_27ECF0D48;
  *(a1 + 96) = xmmword_27ECF0D38;
  *(a1 + 112) = v1;
  *(a1 + 128) = qword_27ECF0D58;
  v2 = unk_27ECF0D08;
  *(a1 + 32) = xmmword_27ECF0CF8;
  *(a1 + 48) = v2;
  v3 = unk_27ECF0D28;
  *(a1 + 64) = xmmword_27ECF0D18;
  *(a1 + 80) = v3;
  result = unk_27ECF0CE8;
  *a1 = xmmword_27ECF0CD8;
  *(a1 + 16) = result;
  return result;
}

double sub_242CA40B4()
{
  if (qword_27ECEEEE8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = word_27ECF0EBA;
  v1 = HIBYTE(word_27ECF0EBA);
  if (qword_27ECEEEC8 != -1)
  {
    swift_once();
  }

  LOBYTE(v3) = v0;
  BYTE1(v3) = v1;
  *(&v3 + 1) = 0x3DEB851F3E99999ALL;
  v4 = xmmword_27ECF0E48;
  v5 = xmmword_27ECF0E58;
  *v6 = 1041865114;
  *&v6[8] = xmmword_27ECF0E48;
  *&v6[24] = xmmword_27ECF0E58;
  sub_242C55EDC(&v3);
  xmmword_27ECF0DC0 = v7;
  unk_27ECF0DD0 = v8;
  qword_27ECF0DE0 = v9;
  xmmword_27ECF0D80 = v5;
  unk_27ECF0D90 = *v6;
  xmmword_27ECF0DA0 = *&v6[16];
  unk_27ECF0DB0 = *&v6[32];
  result = *&v4;
  xmmword_27ECF0D60 = v3;
  *algn_27ECF0D70 = v4;
  return result;
}

__n128 static VisibilityRule.transmissionModeGearNotSet.getter@<Q0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEEA8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_27ECF0DD0;
  *(a1 + 96) = xmmword_27ECF0DC0;
  *(a1 + 112) = v1;
  *(a1 + 128) = qword_27ECF0DE0;
  v2 = unk_27ECF0D90;
  *(a1 + 32) = xmmword_27ECF0D80;
  *(a1 + 48) = v2;
  v3 = unk_27ECF0DB0;
  *(a1 + 64) = xmmword_27ECF0DA0;
  *(a1 + 80) = v3;
  result = *algn_27ECF0D70;
  *a1 = xmmword_27ECF0D60;
  *(a1 + 16) = result;
  return result;
}

double static VisibilityRule.Animation.none.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEED0 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  *a1 = qword_27ECF0E68[0];
  *(a1 + 8) = xmmword_27ECF0E70[0];
  result = *&xmmword_27ECF0E70[1];
  *(a1 + 24) = xmmword_27ECF0E70[1];
  return result;
}

__n128 static VisibilityRule.invalidData(dataIdentifier:showAnimation:hideAnimation:)@<Q0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  LOBYTE(v11) = *a1;
  *(&v11 + 1) = *a2;
  v5 = *(a2 + 24);
  v12 = *(a2 + 8);
  v13 = v5;
  *v14 = *a3;
  v6 = *(a3 + 24);
  *&v14[8] = *(a3 + 8);
  *&v14[24] = v6;
  sub_242CB5C0C(&v11);
  v7 = v16;
  *(a4 + 96) = v15;
  *(a4 + 112) = v7;
  *(a4 + 128) = v17;
  v8 = *v14;
  *(a4 + 32) = v13;
  *(a4 + 48) = v8;
  v9 = *&v14[32];
  *(a4 + 64) = *&v14[16];
  *(a4 + 80) = v9;
  result = v12;
  *a4 = v11;
  *(a4 + 16) = result;
  return result;
}

_BYTE *VisibilityRule.SecondarySpeedRule.init(dataIdentifier:enabled:)@<X0>(_BYTE *result@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  *a3 = *result;
  a3[1] = a2;
  return result;
}

__n128 sub_242CA43A8@<Q0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (qword_27ECEEED8 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v8[0] = 75;
  v8[1] = a1;
  *&v8[8] = xmmword_27ECF0E90;
  *&v8[24] = xmmword_27ECF0EA0;
  *&v8[40] = unk_27ECF0EB0;
  v9 = xmmword_27ECF0E90;
  v10 = xmmword_27ECF0EA0;
  *&v11 = unk_27ECF0EB0;
  sub_242CB5C2C(v8);
  v3 = v13;
  *(a2 + 96) = v12;
  *(a2 + 112) = v3;
  *(a2 + 128) = v14;
  v4 = v9;
  *(a2 + 32) = *&v8[32];
  *(a2 + 48) = v4;
  v5 = v11;
  *(a2 + 64) = v10;
  *(a2 + 80) = v5;
  result = *&v8[16];
  *a2 = *v8;
  *(a2 + 16) = result;
  return result;
}

__n128 static VisibilityRule.driveMode.getter@<Q0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEF68 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = byte_27ECF1008;
  v3 = dword_27ECF100C;
  if (qword_27ECEEEC8 != -1)
  {
    swift_once();
  }

  LOBYTE(v8) = v2;
  DWORD1(v8) = v3;
  *(&v8 + 1) = 1053609165;
  v9 = xmmword_27ECF0E48;
  v10 = xmmword_27ECF0E58;
  *v11 = 1053609165;
  *&v11[8] = xmmword_27ECF0E48;
  *&v11[24] = xmmword_27ECF0E58;
  sub_242CB5A7C(&v8);
  v4 = v13;
  *(a1 + 96) = v12;
  *(a1 + 112) = v4;
  *(a1 + 128) = v14;
  v5 = *v11;
  *(a1 + 32) = v10;
  *(a1 + 48) = v5;
  v6 = *&v11[32];
  *(a1 + 64) = *&v11[16];
  *(a1 + 80) = v6;
  result = v9;
  *a1 = v8;
  *(a1 + 16) = result;
  return result;
}

uint64_t static VisibilityRule.InvalidDataRule.== infix(_:_:)()
{
  v0 = InstrumentDataIdentifier.rawValue.getter();
  v2 = v1;
  if (v0 == InstrumentDataIdentifier.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_242F06110();
  }

  return v5 & 1;
}

unint64_t sub_242CA46CC(char a1)
{
  result = 0x6D694C6465657073;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      return result;
    case 3:
      result = 0x6E696E69616D6572;
      break;
    case 4:
      result = 0x6F4D74756F79616CLL;
      break;
    case 5:
      result = 0x4464696C61766E69;
      break;
    case 6:
      result = 0x7261646E6F636573;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x7974697669746361;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    case 11:
      result = 0x69646E4965646973;
      break;
    case 12:
      result = 0x646F4D6576697264;
      break;
    case 13:
      result = 0x74736F6F62;
      break;
    case 14:
      result = 0x7453656772616863;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_242CA48B8(uint64_t a1)
{
  v2 = sub_242CB82F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242CA48F4(uint64_t a1)
{
  v2 = sub_242CB82F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242CA4930(uint64_t a1)
{
  v2 = sub_242CB7FB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242CA496C(uint64_t a1)
{
  v2 = sub_242CB7FB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242CA49A8(uint64_t a1)
{
  v2 = sub_242CB7EB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242CA49E4(uint64_t a1)
{
  v2 = sub_242CB7EB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242CA4A28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242CBD680(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242CA4A50(uint64_t a1)
{
  v2 = sub_242CB7E60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242CA4A8C(uint64_t a1)
{
  v2 = sub_242CB7E60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242CA4AC8(uint64_t a1)
{
  v2 = sub_242CB8058();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242CA4B04(uint64_t a1)
{
  v2 = sub_242CB8058();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242CA4B40(uint64_t a1)
{
  v2 = sub_242CB81A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242CA4B7C(uint64_t a1)
{
  v2 = sub_242CB81A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242CA4BB8(uint64_t a1)
{
  v2 = sub_242CB84F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242CA4BF4(uint64_t a1)
{
  v2 = sub_242CB84F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242CA4C30(uint64_t a1)
{
  v2 = sub_242CB8598();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242CA4C6C(uint64_t a1)
{
  v2 = sub_242CB8598();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242CA4CA8(uint64_t a1)
{
  v2 = sub_242CB8250();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242CA4CE4(uint64_t a1)
{
  v2 = sub_242CB8250();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242CA4D20(uint64_t a1)
{
  v2 = sub_242CB8640();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242CA4D5C(uint64_t a1)
{
  v2 = sub_242CB8640();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242CA4D98(uint64_t a1)
{
  v2 = sub_242CB8448();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242CA4DD4(uint64_t a1)
{
  v2 = sub_242CB8448();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242CA4E10(uint64_t a1)
{
  v2 = sub_242CB8100();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242CA4E4C(uint64_t a1)
{
  v2 = sub_242CB8100();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242CA4E88(uint64_t a1)
{
  v2 = sub_242CB86E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242CA4EC4(uint64_t a1)
{
  v2 = sub_242CB86E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242CA4F00(uint64_t a1)
{
  v2 = sub_242CB83A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242CA4F3C(uint64_t a1)
{
  v2 = sub_242CB83A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242CA4F78(uint64_t a1)
{
  v2 = sub_242CB8790();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242CA4FB4(uint64_t a1)
{
  v2 = sub_242CB8790();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242CA4FF0(uint64_t a1)
{
  v2 = sub_242CB8838();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242CA502C(uint64_t a1)
{
  v2 = sub_242CB8838();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VisibilityRule.encode(to:)(void *a1)
{
  v2 = v1;
  *&v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1060);
  v161 = *(v187 - 8);
  MEMORY[0x28223BE20](v187);
  *&v186 = &v146 - v4;
  *&v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1068);
  v160 = *(v185 - 8);
  MEMORY[0x28223BE20](v185);
  *&v184 = &v146 - v5;
  *&v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1070);
  v159 = *(v183 - 8);
  MEMORY[0x28223BE20](v183);
  *&v182 = &v146 - v6;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1078);
  v158 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v180 = &v146 - v7;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1080);
  v157 = *(v179 - 8);
  MEMORY[0x28223BE20](v179);
  v178 = &v146 - v8;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1088);
  v156 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v176 = &v146 - v9;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1090);
  v155 = *(v175 - 8);
  MEMORY[0x28223BE20](v175);
  v174 = &v146 - v10;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1098);
  v154 = *(v173 - 8);
  MEMORY[0x28223BE20](v173);
  v172 = &v146 - v11;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF10A0);
  v153 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v170 = &v146 - v12;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF10A8);
  v152 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v168 = &v146 - v13;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF10B0);
  v151 = *(v167 - 8);
  MEMORY[0x28223BE20](v167);
  v166 = &v146 - v14;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF10B8);
  v150 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v164 = &v146 - v15;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF10C0);
  v149 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v162 = &v146 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF10C8);
  v148 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v146 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF10D0);
  v147 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v146 - v21;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF10D8);
  v188 = *(v190 - 8);
  MEMORY[0x28223BE20](v190);
  v24 = &v146 - v23;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CB7E60();
  v191 = v24;
  sub_242F064C0();
  v25 = *(v2 + 112);
  v194[6] = *(v2 + 96);
  v194[7] = v25;
  v195 = *(v2 + 128);
  v26 = *(v2 + 48);
  v194[2] = *(v2 + 32);
  v194[3] = v26;
  v27 = *(v2 + 80);
  v194[4] = *(v2 + 64);
  v194[5] = v27;
  v28 = *(v2 + 16);
  v194[0] = *v2;
  v194[1] = v28;
  LODWORD(a1) = sub_242CA35A4(v194);
  v29 = sub_242C55EDC(v194);
  switch(a1)
  {
    case 1:
      v104 = *v29;
      v105 = *(v29 + 2);
      v106 = v29[1];
      v107 = *(v29 + 1);
      v186 = *(v29 + 2);
      v187 = v107;
      v108 = v29[6];
      v184 = *(v29 + 9);
      v185 = *(v29 + 7);
      v192[0] = 1;
      sub_242CB8790();
      v109 = v190;
      v110 = v191;
      sub_242F05E40();
      *v192 = v104;
      v192[2] = v105;
      v193 = 0;
      sub_242CB87E4();
      v111 = v189;
      sub_242F05F20();
      if (v111)
      {
        (*(v148 + 8))(v19, v17);
        return (*(v188 + 8))(v110, v109);
      }

      else
      {
        *v192 = v106;
        *&v192[24] = v186;
        *&v192[8] = v187;
        v193 = 1;
        sub_242CB7F5C();
        sub_242F05F20();
        *v192 = v108;
        *&v192[24] = v184;
        *&v192[8] = v185;
        v193 = 2;
        sub_242F05F20();
        (*(v148 + 8))(v19, v17);
        return (*(v188 + 8))(v191, v109);
      }

    case 2:
      v192[0] = 2;
      v78 = v29;
      sub_242CB86E8();
      v79 = v162;
      v44 = v190;
      v45 = v191;
      sub_242F05E40();
      v80 = *v78;
      v81 = *(v78 + 1);
      v82 = *(v78 + 2);
      *&v192[47] = *(v78 + 47);
      *&v192[32] = v82;
      *&v192[16] = v81;
      *v192 = v80;
      v193 = 0;
      sub_242CB873C();
      v83 = v163;
      v84 = v189;
      sub_242F05F20();
      if (!v84)
      {
        *v192 = v78[7];
        v85 = *(v78 + 5);
        *&v192[8] = *(v78 + 4);
        *&v192[24] = v85;
        v193 = 1;
        sub_242CB7F5C();
        sub_242F05F20();
        *v192 = v78[12];
        *&v192[8] = *(v78 + 13);
        *&v192[24] = *(v78 + 15);
        v193 = 2;
        sub_242F05F20();
      }

      (*(v149 + 8))(v79, v83);
      goto LABEL_42;
    case 3:
      v86 = *v29;
      v87 = *(v29 + 1);
      v88 = v29[1];
      v89 = *(v29 + 1);
      v186 = *(v29 + 2);
      v187 = v89;
      v90 = v29[6];
      v184 = *(v29 + 9);
      v185 = *(v29 + 7);
      v192[0] = 3;
      sub_242CB8640();
      v43 = v164;
      v44 = v190;
      v45 = v191;
      sub_242F05E40();
      v192[0] = v86;
      v192[1] = v87;
      v193 = 0;
      sub_242CB8694();
      v46 = v165;
      v91 = v189;
      sub_242F05F20();
      if (!v91)
      {
        *v192 = v88;
        *&v192[24] = v186;
        *&v192[8] = v187;
        v193 = 1;
        sub_242CB7F5C();
        sub_242F05F20();
        *v192 = v90;
        *&v192[24] = v184;
        *&v192[8] = v185;
        v193 = 2;
        sub_242F05F20();
      }

      v48 = &v182;
      goto LABEL_41;
    case 4:
      v55 = *v29;
      v56 = *(v29 + 1);
      v57 = v29[1];
      v58 = *(v29 + 1);
      v186 = *(v29 + 2);
      v187 = v58;
      v59 = v29[6];
      v184 = *(v29 + 9);
      v185 = *(v29 + 7);
      v192[0] = 4;
      sub_242CB8598();
      v60 = v166;
      v61 = v190;
      v62 = v191;
      sub_242F05E40();
      v192[0] = v55;
      *&v192[4] = v56;
      v193 = 0;
      sub_242CB85EC();
      v63 = v167;
      v64 = v189;
      sub_242F05F20();
      if (!v64)
      {
        *v192 = v57;
        *&v192[24] = v186;
        *&v192[8] = v187;
        v193 = 1;
        sub_242CB7F5C();
        sub_242F05F20();
        *v192 = v59;
        *&v192[24] = v184;
        *&v192[8] = v185;
        v193 = 2;
        sub_242F05F20();
      }

      v65 = &v182 + 8;
      goto LABEL_34;
    case 5:
      v113 = *v29;
      v114 = v29[1];
      v115 = *(v29 + 1);
      v186 = *(v29 + 2);
      v187 = v115;
      v116 = v29[6];
      v184 = *(v29 + 9);
      v185 = *(v29 + 7);
      v192[0] = 5;
      sub_242CB84F0();
      v60 = v168;
      v61 = v190;
      v62 = v191;
      sub_242F05E40();
      v192[0] = v113;
      v193 = 0;
      sub_242CB8544();
      v63 = v169;
      v117 = v189;
      sub_242F05F20();
      if (!v117)
      {
        *v192 = v114;
        *&v192[24] = v186;
        *&v192[8] = v187;
        v193 = 1;
        sub_242CB7F5C();
        sub_242F05F20();
        *v192 = v116;
        *&v192[24] = v184;
        *&v192[8] = v185;
        v193 = 2;
        sub_242F05F20();
      }

      v65 = &v183;
LABEL_34:
      (*(*(v65 - 32) + 8))(v60, v63);
      return (*(v188 + 8))(v62, v61);
    case 6:
      v124 = *v29;
      v125 = *(v29 + 1);
      v126 = v29[1];
      v127 = *(v29 + 1);
      v186 = *(v29 + 2);
      v187 = v127;
      v128 = v29[6];
      v184 = *(v29 + 9);
      v185 = *(v29 + 7);
      v192[0] = 6;
      sub_242CB8448();
      v43 = v170;
      v44 = v190;
      v45 = v191;
      sub_242F05E40();
      v192[0] = v124;
      v192[1] = v125;
      v193 = 0;
      sub_242CB849C();
      v46 = v171;
      v129 = v189;
      sub_242F05F20();
      if (!v129)
      {
        *v192 = v126;
        *&v192[24] = v186;
        *&v192[8] = v187;
        v193 = 1;
        sub_242CB7F5C();
        sub_242F05F20();
        *v192 = v128;
        *&v192[24] = v184;
        *&v192[8] = v185;
        v193 = 2;
        sub_242F05F20();
      }

      v48 = (&v183 + 8);
      goto LABEL_41;
    case 7:
      v92 = *v29;
      v93 = *(v29 + 1);
      v94 = v29;
      v95 = *(v29 + 3);
      v192[0] = 7;
      sub_242CB83A0();
      v96 = v172;
      v97 = v190;
      v98 = v191;
      sub_242F05E40();
      v192[0] = v92;
      *&v192[1] = v93;
      v192[3] = v95;
      v193 = 0;
      sub_242CB83F4();
      v99 = v173;
      v100 = v189;
      sub_242F05F20();
      if (!v100)
      {
        v101 = *(v94 + 1);
        v102 = *(v94 + 2);
        *v192 = v94[1];
        *&v192[8] = v101;
        *&v192[24] = v102;
        v193 = 1;
        sub_242CB7F5C();
        sub_242F05F20();
        *v192 = v94[6];
        *&v192[8] = *(v94 + 7);
        *&v192[24] = *(v94 + 9);
        v193 = 2;
        sub_242F05F20();
      }

      v103 = &v184;
      goto LABEL_46;
    case 8:
      v137 = *v29;
      v138 = v29[1];
      v139 = *(v29 + 16);
      v140 = v29[3];
      v141 = *(v29 + 2);
      v186 = *(v29 + 3);
      v187 = v141;
      v142 = v29[8];
      v184 = *(v29 + 11);
      v185 = *(v29 + 9);
      v192[0] = 8;
      sub_242CB82F8();
      v143 = v174;
      v35 = v190;
      v36 = v191;
      sub_242F05E40();
      v192[0] = v137;
      *&v192[8] = v138;
      v192[16] = v139;
      v193 = 0;
      sub_242CB834C();
      v144 = v175;
      v145 = v189;
      sub_242F05F20();
      if (!v145)
      {
        *v192 = v140;
        *&v192[24] = v186;
        *&v192[8] = v187;
        v193 = 1;
        sub_242CB7F5C();
        sub_242F05F20();
        *v192 = v142;
        *&v192[24] = v184;
        *&v192[8] = v185;
        v193 = 2;
        sub_242F05F20();
      }

      (*(v155 + 8))(v143, v144);
      goto LABEL_50;
    case 9:
      v72 = *v29;
      v73 = *(v29 + 1);
      v74 = v29[1];
      v75 = *(v29 + 1);
      v186 = *(v29 + 2);
      v187 = v75;
      v76 = v29[6];
      v184 = *(v29 + 9);
      v185 = *(v29 + 7);
      v192[0] = 9;
      sub_242CB8250();
      v43 = v176;
      v44 = v190;
      v45 = v191;
      sub_242F05E40();
      v192[0] = v72;
      v192[1] = v73;
      v193 = 0;
      sub_242CB82A4();
      v46 = v177;
      v77 = v189;
      sub_242F05F20();
      if (!v77)
      {
        *v192 = v74;
        *&v192[24] = v186;
        *&v192[8] = v187;
        v193 = 1;
        sub_242CB7F5C();
        sub_242F05F20();
        *v192 = v76;
        *&v192[24] = v184;
        *&v192[8] = v185;
        v193 = 2;
        sub_242F05F20();
      }

      v48 = &v185;
      goto LABEL_41;
    case 10:
      v130 = *v29;
      v131 = *(v29 + 2);
      v132 = v29;
      v133 = *(v29 + 3);
      v192[0] = 10;
      sub_242CB81A8();
      v96 = v178;
      v97 = v190;
      v98 = v191;
      sub_242F05E40();
      *v192 = v130;
      v192[2] = v131;
      v192[3] = v133;
      v193 = 0;
      sub_242CB81FC();
      v99 = v179;
      v134 = v189;
      sub_242F05F20();
      if (!v134)
      {
        v135 = *(v132 + 1);
        v136 = *(v132 + 2);
        *v192 = v132[1];
        *&v192[8] = v135;
        *&v192[24] = v136;
        v193 = 1;
        sub_242CB7F5C();
        sub_242F05F20();
        *v192 = v132[6];
        *&v192[8] = *(v132 + 7);
        *&v192[24] = *(v132 + 9);
        v193 = 2;
        sub_242F05F20();
      }

      v103 = &v185 + 8;
LABEL_46:
      (*(*(v103 - 32) + 8))(v96, v99);
      return (*(v188 + 8))(v98, v97);
    case 11:
      v49 = *v29;
      v50 = *(v29 + 2);
      v51 = v29[1];
      v52 = *(v29 + 1);
      v186 = *(v29 + 2);
      v187 = v52;
      v53 = v29[6];
      v184 = *(v29 + 9);
      v185 = *(v29 + 7);
      v192[0] = 11;
      sub_242CB8100();
      v43 = v180;
      v44 = v190;
      v45 = v191;
      sub_242F05E40();
      *v192 = v49;
      v192[2] = v50;
      v193 = 0;
      sub_242CB8154();
      v46 = v181;
      v54 = v189;
      sub_242F05F20();
      if (!v54)
      {
        *v192 = v51;
        *&v192[24] = v186;
        *&v192[8] = v187;
        v193 = 1;
        sub_242CB7F5C();
        sub_242F05F20();
        *v192 = v53;
        *&v192[24] = v184;
        *&v192[8] = v185;
        v193 = 2;
        sub_242F05F20();
      }

      v48 = &v186;
      goto LABEL_41;
    case 12:
      v66 = *v29;
      v67 = *(v29 + 1);
      v68 = v29[1];
      v69 = *(v29 + 1);
      v186 = *(v29 + 2);
      v187 = v69;
      v70 = v29[6];
      v184 = *(v29 + 9);
      v185 = *(v29 + 7);
      v192[0] = 12;
      sub_242CB8058();
      v43 = v182;
      v44 = v190;
      v45 = v191;
      sub_242F05E40();
      v192[0] = v66;
      v192[1] = v67;
      v193 = 0;
      sub_242CB80AC();
      v46 = v183;
      v71 = v189;
      sub_242F05F20();
      if (!v71)
      {
        *v192 = v68;
        *&v192[24] = v186;
        *&v192[8] = v187;
        v193 = 1;
        sub_242CB7F5C();
        sub_242F05F20();
        *v192 = v70;
        *&v192[24] = v184;
        *&v192[8] = v185;
        v193 = 2;
        sub_242F05F20();
      }

      v48 = (&v186 + 8);
      goto LABEL_41;
    case 13:
      v118 = *v29;
      v119 = *(v29 + 1);
      v120 = v29[1];
      v121 = *(v29 + 1);
      v186 = *(v29 + 2);
      v187 = v121;
      v122 = v29[6];
      v182 = *(v29 + 9);
      v183 = *(v29 + 7);
      v192[0] = 13;
      sub_242CB7FB0();
      v43 = v184;
      v44 = v190;
      v45 = v191;
      sub_242F05E40();
      v192[0] = v118;
      v192[1] = v119;
      v193 = 0;
      sub_242CB8004();
      v46 = v185;
      v123 = v189;
      sub_242F05F20();
      if (!v123)
      {
        *v192 = v120;
        *&v192[24] = v186;
        *&v192[8] = v187;
        v193 = 1;
        sub_242CB7F5C();
        sub_242F05F20();
        *v192 = v122;
        *&v192[24] = v182;
        *&v192[8] = v183;
        v193 = 2;
        sub_242F05F20();
      }

      v48 = &v187;
      goto LABEL_41;
    case 14:
      v38 = *v29;
      v39 = v29[1];
      v40 = v29[2];
      v184 = *(v29 + 5);
      v185 = *(v29 + 3);
      v41 = v29[7];
      v42 = *(v29 + 4);
      v182 = *(v29 + 5);
      v183 = v42;
      v192[0] = 14;
      sub_242CB7EB4();
      v43 = v186;
      v44 = v190;
      v45 = v191;
      sub_242F05E40();
      v192[0] = v38;
      *&v192[8] = v39;
      v193 = 0;
      sub_242CB7F08();
      v46 = v187;
      v47 = v189;
      sub_242F05F20();
      if (!v47)
      {
        *v192 = v40;
        *&v192[24] = v184;
        *&v192[8] = v185;
        v193 = 1;
        sub_242CB7F5C();
        sub_242F05F20();
        *v192 = v41;
        *&v192[24] = v182;
        *&v192[8] = v183;
        v193 = 2;
        sub_242F05F20();
      }

      v48 = (&v187 + 8);
LABEL_41:
      (*(*(v48 - 32) + 8))(v43, v46);
LABEL_42:
      result = (*(v188 + 8))(v45, v44);
      break;
    default:
      v30 = *v29;
      v31 = *(v29 + 1);
      v32 = v29[1];
      v33 = *(v29 + 1);
      v186 = *(v29 + 2);
      v187 = v33;
      v34 = v29[6];
      v184 = *(v29 + 9);
      v185 = *(v29 + 7);
      v192[0] = 0;
      sub_242CB8838();
      v35 = v190;
      v36 = v191;
      sub_242F05E40();
      v192[0] = v30;
      v192[1] = v31;
      v193 = 0;
      sub_242CB888C();
      v37 = v189;
      sub_242F05F20();
      if (!v37)
      {
        *v192 = v32;
        *&v192[24] = v186;
        *&v192[8] = v187;
        v193 = 1;
        sub_242CB7F5C();
        sub_242F05F20();
        *v192 = v34;
        *&v192[24] = v184;
        *&v192[8] = v185;
        v193 = 2;
        sub_242F05F20();
      }

      (*(v147 + 8))(v22, v20);
LABEL_50:
      result = (*(v188 + 8))(v36, v35);
      break;
  }

  return result;
}

uint64_t VisibilityRule.hash(into:)()
{
  v1 = *(v0 + 112);
  v22[6] = *(v0 + 96);
  v22[7] = v1;
  v23 = *(v0 + 128);
  v2 = *(v0 + 48);
  v22[2] = *(v0 + 32);
  v22[3] = v2;
  v3 = *(v0 + 80);
  v22[4] = *(v0 + 64);
  v22[5] = v3;
  v4 = *(v0 + 16);
  v22[0] = *v0;
  v22[1] = v4;
  v5 = sub_242CA35A4(v22);
  v6 = sub_242C55EDC(v22);
  switch(v5)
  {
    case 1:
      v18 = *v6;
      MEMORY[0x245D279A0](1);
      MEMORY[0x245D279A0](v18 + 1);
      InstrumentDataIdentifier.rawValue.getter();
      sub_242F04DD0();

      InstrumentDataIdentifier.rawValue.getter();
      sub_242F04DD0();

      goto LABEL_28;
    case 2:
      v13 = *v6;
      v14 = *(v6 + 48);
      MEMORY[0x245D279A0](2);
      MEMORY[0x245D279A0](v13 + 1);
      sub_242F063B0();
      if (v14 != 1)
      {
        sub_242F063C0();
        sub_242F063C0();
        sub_242F04B30();
        sub_242F04B30();
      }

      InstrumentDataIdentifier.rawValue.getter();
      sub_242F04DD0();

      InstrumentDataIdentifier.rawValue.getter();
      sub_242F04DD0();

      sub_242F063C0();
      goto LABEL_34;
    case 3:
      v7 = *v6;
      v8 = 3;
      goto LABEL_11;
    case 4:
      v11 = *v6;
      MEMORY[0x245D279A0](4);
      MEMORY[0x245D279A0](100 * v11);
      sub_242F063C0();
      sub_242F063C0();
      sub_242F063C0();
      sub_242F04B30();
      sub_242F04B30();
      sub_242F063C0();
      break;
    case 5:
      MEMORY[0x245D279A0](5);
      InstrumentDataIdentifier.rawValue.getter();
      sub_242F04DD0();

      sub_242F063C0();
      sub_242F063C0();
      sub_242F04B30();
      sub_242F04B30();
      goto LABEL_25;
    case 6:
      v12 = 6;
      goto LABEL_23;
    case 7:
      v16 = *v6;
      MEMORY[0x245D279A0](7);
      if (v16)
      {
        v17 = 2;
      }

      else
      {
        v17 = 1;
      }

      MEMORY[0x245D279A0](v17);
      InstrumentDataIdentifier.rawValue.getter();
      sub_242F04DD0();

      InstrumentDataIdentifier.rawValue.getter();
      sub_242F04DD0();

      InstrumentDataIdentifier.rawValue.getter();
      sub_242F04DD0();

      sub_242F063C0();
LABEL_34:
      sub_242F063C0();
      sub_242F04B30();
      sub_242F04B30();
      sub_242F063C0();
      sub_242F063C0();
      sub_242F04B30();
      return sub_242F04B30();
    case 8:
      v20 = v6[1];
      MEMORY[0x245D279A0](8);
      InstrumentDataIdentifier.rawValue.getter();
      sub_242F04DD0();

      MEMORY[0x245D279A0](v20);
      sub_242F063B0();
      goto LABEL_28;
    case 9:
      v12 = 9;
      goto LABEL_23;
    case 10:
      v19 = *(v6 + 2);
      MEMORY[0x245D279A0](10);
      InstrumentDataIdentifier.rawValue.getter();
      sub_242F04DD0();

      InstrumentDataIdentifier.rawValue.getter();
      sub_242F04DD0();

      MEMORY[0x245D279A0](v19);
      sub_242F063B0();
      sub_242F063C0();
      sub_242F063C0();
      sub_242F04B30();
      sub_242F04B30();
      sub_242F063C0();
      sub_242F063C0();
      goto LABEL_30;
    case 11:
      v10 = *(v6 + 2);
      MEMORY[0x245D279A0](11);
      InstrumentDataIdentifier.rawValue.getter();
      sub_242F04DD0();

      InstrumentDataIdentifier.rawValue.getter();
      sub_242F04DD0();

      MEMORY[0x245D279A0](v10);
      goto LABEL_28;
    case 12:
      v12 = 12;
      goto LABEL_23;
    case 13:
      v12 = 13;
LABEL_23:
      MEMORY[0x245D279A0](v12);
      InstrumentDataIdentifier.rawValue.getter();
      sub_242F04DD0();

      sub_242F063B0();
      goto LABEL_24;
    case 14:
      v9 = v6[1];
      MEMORY[0x245D279A0](14);
      InstrumentDataIdentifier.rawValue.getter();
      sub_242F04DD0();

      MEMORY[0x245D279A0](v9);
LABEL_24:
      sub_242F063C0();
      sub_242F063C0();
      sub_242F04B30();
      sub_242F04B30();
LABEL_25:
      sub_242F063C0();
      break;
    default:
      v7 = *v6;
      v8 = 0;
LABEL_11:
      MEMORY[0x245D279A0](v8);
      if (v7)
      {
        v15 = 2;
      }

      else
      {
        v15 = 1;
      }

      MEMORY[0x245D279A0](v15);
      InstrumentDataIdentifier.rawValue.getter();
      sub_242F04DD0();

LABEL_28:
      sub_242F063C0();
      sub_242F063C0();
      sub_242F04B30();
      sub_242F04B30();
      sub_242F063C0();
      break;
  }

  sub_242F063C0();
LABEL_30:
  sub_242F04B30();
  return sub_242F04B30();
}

uint64_t VisibilityRule.hashValue.getter()
{
  sub_242F06390();
  VisibilityRule.hash(into:)();
  return sub_242F063E0();
}

uint64_t VisibilityRule.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v188 = a2;
  *&v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF11E0);
  v214 = *(v230 - 8);
  MEMORY[0x28223BE20](v230);
  *&v226 = &v183 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF11E8);
  v212 = *(v4 - 8);
  v213 = v4;
  MEMORY[0x28223BE20](v4);
  *&v229 = &v183 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF11F0);
  v210 = *(v6 - 8);
  v211 = v6;
  MEMORY[0x28223BE20](v6);
  *&v225 = &v183 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF11F8);
  v208 = *(v8 - 8);
  v209 = v8;
  MEMORY[0x28223BE20](v8);
  *&v228 = &v183 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1200);
  v206 = *(v10 - 8);
  v207 = v10;
  MEMORY[0x28223BE20](v10);
  *&v224 = &v183 - v11;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1208);
  v205 = *(v192 - 8);
  MEMORY[0x28223BE20](v192);
  *&v223 = &v183 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1210);
  v203 = *(v13 - 8);
  v204 = v13;
  MEMORY[0x28223BE20](v13);
  v222 = &v183 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1218);
  v201 = *(v15 - 8);
  v202 = v15;
  MEMORY[0x28223BE20](v15);
  v221 = &v183 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1220);
  v199 = *(v17 - 8);
  v200 = v17;
  MEMORY[0x28223BE20](v17);
  v220 = &v183 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1228);
  v197 = *(v19 - 8);
  v198 = v19;
  MEMORY[0x28223BE20](v19);
  v219 = &v183 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1230);
  v195 = *(v21 - 8);
  v196 = v21;
  MEMORY[0x28223BE20](v21);
  v218 = &v183 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1238);
  v193 = *(v23 - 8);
  v194 = v23;
  MEMORY[0x28223BE20](v23);
  v216 = &v183 - v24;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1240);
  v191 = *(v215 - 8);
  MEMORY[0x28223BE20](v215);
  v217 = &v183 - v25;
  *&v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1248);
  v190 = *(v227 - 8);
  MEMORY[0x28223BE20](v227);
  v27 = &v183 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1250);
  v189 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v30 = &v183 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1258);
  v231 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v33 = &v183 - v32;
  v34 = a1[3];
  v258 = a1;
  __swift_project_boxed_opaque_existential_2Tm(a1, v34);
  sub_242CB7E60();
  v35 = v232;
  sub_242F06480();
  if (v35)
  {
LABEL_8:
    v51 = v258;
    return __swift_destroy_boxed_opaque_existential_2Tm(v51);
  }

  v184 = v28;
  v185 = v30;
  v186 = v27;
  v187 = 0;
  v36 = v227;
  v37 = v228;
  v38 = v229;
  v232 = v31;
  v39 = sub_242F05E10();
  v40 = (2 * *(v39 + 16)) | 1;
  v254 = v39;
  v255 = v39 + 32;
  v256 = 0;
  v257 = v40;
  v41 = sub_242C7025C();
  if (v256 != v257 >> 1)
  {
LABEL_6:
    v47 = sub_242F05B10();
    swift_allocError();
    v49 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFF10);
    *v49 = &type metadata for VisibilityRule;
    v50 = v232;
    sub_242F05D20();
    sub_242F05AF0();
    (*(*(v47 - 8) + 104))(v49, *MEMORY[0x277D84160], v47);
    swift_willThrow();
    (*(v231 + 8))(v33, v50);
LABEL_7:
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  switch(v41)
  {
    case 0:
      LOBYTE(v243) = 0;
      sub_242CB8838();
      v42 = v185;
      v43 = v33;
      v44 = v232;
      v45 = v187;
      sub_242F05D10();
      v46 = v258;
      if (v45)
      {
        (*(v231 + 8))(v43, v44);
        goto LABEL_45;
      }

      v102 = v43;
      LOBYTE(v243) = 0;
      sub_242CB8F14();
      v103 = v184;
      sub_242F05E00();
      LODWORD(v230) = v237;
      v128 = BYTE1(v237);
      LOBYTE(v243) = 1;
      sub_242CB8934();
      v129 = v42;
      sub_242F05E00();
      v130 = v189;
      LODWORD(v229) = v128;
      v164 = *v242;
      v227 = *&v242[24];
      v228 = *&v242[8];
      LOBYTE(v234) = 2;
      sub_242F05E00();
      v165 = (v231 + 8);
      (*(v130 + 8))(v129, v103);
      (*v165)(v102, v232);
      swift_unknownObjectRelease();
      LOBYTE(v243) = v230;
      BYTE1(v243) = v229;
      *(&v243 + 1) = v164;
      v244[0] = v228;
      v244[1] = v227;
      *&v244[2] = *v240;
      *(&v244[2] + 8) = *&v240[8];
      *(&v244[3] + 8) = *&v240[24];
      sub_242C55EDC(&v243);
      goto LABEL_48;
    case 1:
      LOBYTE(v243) = 1;
      sub_242CB8790();
      v86 = v186;
      v85 = v187;
      v87 = v232;
      sub_242F05D10();
      if (v85)
      {
        (*(v231 + 8))(v33, v87);
        goto LABEL_7;
      }

      LOBYTE(v243) = 0;
      sub_242CB8EA4();
      v104 = v36;
      sub_242F05E00();
      *&v230 = v33;
      v131 = v237;
      v132 = BYTE1(v237);
      v133 = v86;
      v134 = BYTE2(v237);
      LOBYTE(v243) = 1;
      sub_242CB8934();
      sub_242F05E00();
      LODWORD(v228) = v132;
      LODWORD(v229) = v131;
      v166 = *v242;
      v225 = *&v242[24];
      v226 = *&v242[8];
      LOBYTE(v234) = 2;
      sub_242F05E00();
      v167 = (v231 + 8);
      (*(v190 + 8))(v133, v104);
      (*v167)(v230, v232);
      swift_unknownObjectRelease();
      LOBYTE(v243) = v229;
      BYTE1(v243) = v228;
      BYTE2(v243) = v134;
      *(&v243 + 1) = v166;
      v244[0] = v226;
      v244[1] = v225;
      *&v244[2] = *v240;
      *(&v244[2] + 8) = *&v240[8];
      *(&v244[3] + 8) = *&v240[24];
      sub_242CB8EF8(&v243);
      v251 = v244[5];
      v252 = v244[6];
      v253 = *&v244[7];
      v247 = v244[1];
      v248 = v244[2];
      v249 = v244[3];
      v250 = v244[4];
      v245 = v243;
      v246 = v244[0];
      v51 = v258;
      goto LABEL_49;
    case 2:
      LOBYTE(v243) = 2;
      sub_242CB86E8();
      v74 = v217;
      v75 = v232;
      v76 = v187;
      sub_242F05D10();
      v77 = v258;
      if (v76)
      {
        (*(v231 + 8))(v33, v75);
        swift_unknownObjectRelease();
        v51 = v77;
        return __swift_destroy_boxed_opaque_existential_2Tm(v51);
      }

      v241 = 0;
      sub_242CB8E34();
      sub_242F05E00();
      v100 = v74;
      v101 = v231;
      *v240 = *v242;
      *&v240[16] = *&v242[16];
      *&v240[32] = *&v242[32];
      *&v240[47] = *&v242[47];
      LOBYTE(v243) = 1;
      sub_242CB8934();
      sub_242F05E00();
      v187 = 0;
      v159 = v237;
      v229 = v239;
      v230 = v238;
      v233 = 2;
      sub_242F05E00();
      (*(v191 + 8))(v100, v215);
      (*(v101 + 8))(v33, v75);
      swift_unknownObjectRelease();
      v243 = *v240;
      v244[0] = *&v240[16];
      v244[1] = *&v240[32];
      *(&v244[1] + 15) = *&v240[47];
      *(&v244[2] + 1) = v159;
      v244[3] = v230;
      v244[4] = v229;
      *&v244[5] = v234;
      *(&v244[5] + 8) = v235;
      *(&v244[6] + 8) = v236;
      sub_242CB8E88(&v243);
      v251 = v244[5];
      v252 = v244[6];
      v253 = *&v244[7];
      v247 = v244[1];
      v248 = v244[2];
      v249 = v244[3];
      v250 = v244[4];
      v245 = v243;
      v246 = v244[0];
      v51 = v77;
      goto LABEL_49;
    case 3:
      LOBYTE(v243) = 3;
      sub_242CB8640();
      v78 = v216;
      v65 = v232;
      v79 = v187;
      sub_242F05D10();
      v67 = v33;
      v68 = v258;
      if (v79)
      {
        goto LABEL_34;
      }

      v80 = v67;
      LOBYTE(v243) = 0;
      sub_242CB8DC0();
      v81 = v194;
      sub_242F05E00();
      v122 = v78;
      LODWORD(v230) = v237;
      v123 = BYTE1(v237);
      LOBYTE(v243) = 1;
      sub_242CB8934();
      sub_242F05E00();
      LODWORD(v229) = v123;
      v160 = *v242;
      v227 = *&v242[24];
      v228 = *&v242[8];
      LOBYTE(v234) = 2;
      sub_242F05E00();
      v161 = (v231 + 8);
      (*(v193 + 8))(v122, v81);
      (*v161)(v80, v65);
      swift_unknownObjectRelease();
      LOBYTE(v243) = v230;
      BYTE1(v243) = v229;
      *(&v243 + 1) = v160;
      v244[0] = v228;
      v244[1] = v227;
      *&v244[2] = *v240;
      *(&v244[2] + 8) = *&v240[8];
      *(&v244[3] + 8) = *&v240[24];
      sub_242CB8E14(&v243);
      v251 = v244[5];
      v252 = v244[6];
      v253 = *&v244[7];
      v247 = v244[1];
      v248 = v244[2];
      v249 = v244[3];
      v250 = v244[4];
      v245 = v243;
      v246 = v244[0];
      v51 = v68;
      goto LABEL_49;
    case 4:
      LOBYTE(v243) = 4;
      sub_242CB8598();
      v59 = v218;
      v60 = v232;
      v61 = v187;
      sub_242F05D10();
      v62 = v258;
      if (v61)
      {
        goto LABEL_30;
      }

      LOBYTE(v243) = 0;
      sub_242CB8D6C();
      v63 = v196;
      sub_242F05E00();
      v113 = v59;
      v114 = v33;
      v115 = v63;
      LODWORD(v63) = v237;
      v116 = HIDWORD(v237);
      LOBYTE(v243) = 1;
      sub_242CB8934();
      sub_242F05E00();
      LODWORD(v230) = v63;
      v153 = *v242;
      v228 = *&v242[24];
      v229 = *&v242[8];
      LOBYTE(v234) = 2;
      sub_242F05E00();
      v154 = (v231 + 8);
      (*(v195 + 8))(v113, v115);
      (*v154)(v114, v60);
      swift_unknownObjectRelease();
      LOBYTE(v243) = v230;
      DWORD1(v243) = v116;
      *(&v243 + 1) = v153;
      v244[0] = v229;
      v244[1] = v228;
      *&v244[2] = *v240;
      *(&v244[2] + 8) = *&v240[8];
      *(&v244[3] + 8) = *&v240[24];
      sub_242CB5A7C(&v243);
      goto LABEL_46;
    case 5:
      LOBYTE(v243) = 5;
      sub_242CB84F0();
      v88 = v219;
      v60 = v232;
      v89 = v187;
      sub_242F05D10();
      v62 = v258;
      if (v89)
      {
LABEL_30:
        (*(v231 + 8))(v33, v60);
        swift_unknownObjectRelease();
        v51 = v62;
        return __swift_destroy_boxed_opaque_existential_2Tm(v51);
      }

      LOBYTE(v243) = 0;
      sub_242CB8D18();
      v105 = v198;
      sub_242F05E00();
      v135 = v88;
      v136 = v33;
      v137 = v105;
      LODWORD(v105) = v237;
      LOBYTE(v243) = 1;
      sub_242CB8934();
      sub_242F05E00();
      LODWORD(v230) = v105;
      v168 = *v242;
      v228 = *&v242[24];
      v229 = *&v242[8];
      LOBYTE(v234) = 2;
      sub_242F05E00();
      v169 = (v231 + 8);
      (*(v197 + 8))(v135, v137);
      (*v169)(v136, v60);
      swift_unknownObjectRelease();
      LOBYTE(v243) = v230;
      *(&v243 + 1) = v168;
      v244[0] = v229;
      v244[1] = v228;
      *&v244[2] = *v240;
      *(&v244[2] + 8) = *&v240[8];
      *(&v244[3] + 8) = *&v240[24];
      sub_242CB5C0C(&v243);
LABEL_46:
      v251 = v244[5];
      v252 = v244[6];
      v253 = *&v244[7];
      v247 = v244[1];
      v248 = v244[2];
      v249 = v244[3];
      v250 = v244[4];
      v245 = v243;
      v246 = v244[0];
      v51 = v62;
      goto LABEL_49;
    case 6:
      LOBYTE(v243) = 6;
      sub_242CB8448();
      v93 = v220;
      v65 = v232;
      v94 = v187;
      sub_242F05D10();
      v67 = v33;
      v68 = v258;
      if (v94)
      {
        goto LABEL_34;
      }

      v106 = v67;
      LOBYTE(v243) = 0;
      sub_242CB8CC4();
      v107 = v200;
      sub_242F05E00();
      LODWORD(v230) = v237;
      v140 = BYTE1(v237);
      LOBYTE(v243) = 1;
      sub_242CB8934();
      sub_242F05E00();
      v141 = v107;
      LODWORD(v229) = v140;
      v172 = *v242;
      v227 = *&v242[24];
      v228 = *&v242[8];
      LOBYTE(v234) = 2;
      sub_242F05E00();
      v173 = (v231 + 8);
      (*(v199 + 8))(v93, v141);
      (*v173)(v106, v65);
      swift_unknownObjectRelease();
      LOBYTE(v243) = v230;
      BYTE1(v243) = v229;
      *(&v243 + 1) = v172;
      v244[0] = v228;
      v244[1] = v227;
      *&v244[2] = *v240;
      *(&v244[2] + 8) = *&v240[8];
      *(&v244[3] + 8) = *&v240[24];
      sub_242CB5C2C(&v243);
      goto LABEL_47;
    case 7:
      LOBYTE(v243) = 7;
      sub_242CB83A0();
      v82 = v221;
      v56 = v232;
      v83 = v187;
      sub_242F05D10();
      v46 = v258;
      if (v83)
      {
        goto LABEL_38;
      }

      LOBYTE(v243) = 0;
      sub_242CB8C54();
      v84 = v202;
      sub_242F05E00();
      *&v230 = v33;
      LODWORD(v229) = v237;
      v124 = BYTE1(v237);
      v125 = BYTE2(v237);
      v126 = BYTE3(v237);
      LOBYTE(v243) = 1;
      sub_242CB8934();
      sub_242F05E00();
      v127 = v84;
      LODWORD(v226) = v126;
      LODWORD(v227) = v125;
      LODWORD(v228) = v124;
      v162 = *v242;
      v224 = *&v242[24];
      v225 = *&v242[8];
      LOBYTE(v234) = 2;
      sub_242F05E00();
      v163 = (v231 + 8);
      (*(v201 + 8))(v82, v127);
      (*v163)(v230, v232);
      swift_unknownObjectRelease();
      LOBYTE(v243) = v229;
      BYTE1(v243) = v228;
      BYTE2(v243) = v227;
      BYTE3(v243) = v226;
      *(&v243 + 1) = v162;
      v244[0] = v225;
      v244[1] = v224;
      *&v244[2] = *v240;
      *(&v244[2] + 8) = *&v240[8];
      *(&v244[3] + 8) = *&v240[24];
      sub_242CB8CA8(&v243);
      goto LABEL_48;
    case 8:
      LOBYTE(v243) = 8;
      sub_242CB82F8();
      v98 = v222;
      v56 = v232;
      v99 = v187;
      sub_242F05D10();
      v46 = v258;
      if (v99)
      {
        goto LABEL_38;
      }

      LOBYTE(v243) = 0;
      sub_242CB8BE4();
      v108 = v204;
      sub_242F05E00();
      *&v230 = v33;
      v146 = v98;
      LODWORD(v229) = v237;
      v147 = v238;
      v148 = BYTE8(v238);
      LOBYTE(v243) = 1;
      sub_242CB8934();
      sub_242F05E00();
      LODWORD(v227) = v148;
      *&v228 = v147;
      v176 = *v242;
      v225 = *&v242[24];
      v226 = *&v242[8];
      LOBYTE(v234) = 2;
      sub_242F05E00();
      v177 = (v231 + 8);
      (*(v203 + 8))(v146, v108);
      (*v177)(v230, v232);
      swift_unknownObjectRelease();
      LOBYTE(v243) = v229;
      *(&v243 + 1) = v228;
      LOBYTE(v244[0]) = v227;
      *(&v244[0] + 1) = v176;
      v244[1] = v226;
      v244[2] = v225;
      *&v244[3] = *v240;
      *(&v244[3] + 8) = *&v240[8];
      *(&v244[4] + 8) = *&v240[24];
      sub_242CB8C38(&v243);
      goto LABEL_48;
    case 9:
      LOBYTE(v243) = 9;
      sub_242CB8250();
      v71 = v223;
      v65 = v232;
      v72 = v187;
      sub_242F05D10();
      v67 = v33;
      v68 = v258;
      if (v72)
      {
        goto LABEL_34;
      }

      *&v230 = v67;
      LOBYTE(v243) = 0;
      sub_242CB8B6C();
      v73 = v192;
      sub_242F05E00();
      v119 = v237;
      v120 = BYTE1(v237);
      LOBYTE(v243) = 1;
      sub_242CB8934();
      sub_242F05E00();
      v121 = v73;
      LODWORD(v228) = v119;
      LODWORD(v229) = v120;
      v157 = *v242;
      v226 = *&v242[24];
      v227 = *&v242[8];
      LOBYTE(v234) = 2;
      sub_242F05E00();
      v158 = (v231 + 8);
      (*(v205 + 8))(v71, v121);
      (*v158)(v230, v65);
      swift_unknownObjectRelease();
      LOBYTE(v243) = v228;
      BYTE1(v243) = v229;
      *(&v243 + 1) = v157;
      v244[0] = v227;
      v244[1] = v226;
      *&v244[2] = *v240;
      *(&v244[2] + 8) = *&v240[8];
      *(&v244[3] + 8) = *&v240[24];
      sub_242CB8BC0(&v243);
      goto LABEL_47;
    case 10:
      LOBYTE(v243) = 10;
      sub_242CB81A8();
      v95 = v224;
      v56 = v232;
      v96 = v187;
      sub_242F05D10();
      v46 = v258;
      if (v96)
      {
        goto LABEL_38;
      }

      LOBYTE(v243) = 0;
      sub_242CB8AF8();
      v97 = v207;
      sub_242F05E00();
      *&v230 = v33;
      LODWORD(v229) = v237;
      v142 = BYTE1(v237);
      v143 = BYTE2(v237);
      v144 = BYTE3(v237);
      LOBYTE(v243) = 1;
      sub_242CB8934();
      sub_242F05E00();
      v145 = v97;
      LODWORD(v226) = v144;
      LODWORD(v227) = v143;
      LODWORD(v228) = v142;
      v174 = *v242;
      v223 = *&v242[24];
      v225 = *&v242[8];
      LOBYTE(v234) = 2;
      sub_242F05E00();
      v175 = (v231 + 8);
      (*(v206 + 8))(v95, v145);
      (*v175)(v230, v232);
      swift_unknownObjectRelease();
      LOBYTE(v243) = v229;
      BYTE1(v243) = v228;
      BYTE2(v243) = v227;
      BYTE3(v243) = v226;
      *(&v243 + 1) = v174;
      v244[0] = v225;
      v244[1] = v223;
      *&v244[2] = *v240;
      *(&v244[2] + 8) = *&v240[8];
      *(&v244[3] + 8) = *&v240[24];
      sub_242CB8B4C(&v243);
      goto LABEL_48;
    case 11:
      LOBYTE(v243) = 11;
      sub_242CB8100();
      v56 = v232;
      v57 = v187;
      sub_242F05D10();
      v46 = v258;
      if (v57)
      {
LABEL_38:
        (*(v231 + 8))(v33, v56);
LABEL_45:
        swift_unknownObjectRelease();
        v51 = v46;
        return __swift_destroy_boxed_opaque_existential_2Tm(v51);
      }

      LOBYTE(v243) = 0;
      sub_242CB8A88();
      v58 = v209;
      sub_242F05E00();
      *&v230 = v33;
      v110 = v37;
      LODWORD(v229) = v237;
      v111 = BYTE1(v237);
      v112 = BYTE2(v237);
      LOBYTE(v243) = 1;
      sub_242CB8934();
      sub_242F05E00();
      LODWORD(v226) = v112;
      LODWORD(v227) = v111;
      v151 = *v242;
      v224 = *&v242[24];
      v225 = *&v242[8];
      LOBYTE(v234) = 2;
      sub_242F05E00();
      v152 = (v231 + 8);
      (*(v208 + 8))(v110, v58);
      (*v152)(v230, v232);
      swift_unknownObjectRelease();
      LOBYTE(v243) = v229;
      BYTE1(v243) = v227;
      BYTE2(v243) = v226;
      *(&v243 + 1) = v151;
      v244[0] = v225;
      v244[1] = v224;
      *&v244[2] = *v240;
      *(&v244[2] + 8) = *&v240[8];
      *(&v244[3] + 8) = *&v240[24];
      sub_242CB8ADC(&v243);
LABEL_48:
      v251 = v244[5];
      v252 = v244[6];
      v253 = *&v244[7];
      v247 = v244[1];
      v248 = v244[2];
      v249 = v244[3];
      v250 = v244[4];
      v245 = v243;
      v246 = v244[0];
      v51 = v46;
      goto LABEL_49;
    case 12:
      LOBYTE(v243) = 12;
      sub_242CB8058();
      v64 = v225;
      v65 = v232;
      v66 = v187;
      sub_242F05D10();
      v67 = v33;
      v68 = v258;
      if (v66)
      {
        goto LABEL_34;
      }

      v69 = v67;
      LOBYTE(v243) = 0;
      sub_242CB8A14();
      v70 = v211;
      sub_242F05E00();
      LODWORD(v230) = v237;
      v117 = BYTE1(v237);
      LOBYTE(v243) = 1;
      sub_242CB8934();
      sub_242F05E00();
      v118 = v70;
      LODWORD(v229) = v117;
      v155 = *v242;
      v227 = *&v242[24];
      v228 = *&v242[8];
      LOBYTE(v234) = 2;
      sub_242F05E00();
      v156 = (v231 + 8);
      (*(v210 + 8))(v64, v118);
      (*v156)(v69, v65);
      swift_unknownObjectRelease();
      LOBYTE(v243) = v230;
      BYTE1(v243) = v229;
      *(&v243 + 1) = v155;
      v244[0] = v228;
      v244[1] = v227;
      *&v244[2] = *v240;
      *(&v244[2] + 8) = *&v240[8];
      *(&v244[3] + 8) = *&v240[24];
      sub_242CB8A68(&v243);
      goto LABEL_47;
    case 13:
      LOBYTE(v243) = 13;
      sub_242CB7FB0();
      v65 = v232;
      v90 = v187;
      sub_242F05D10();
      v67 = v33;
      v68 = v258;
      if (v90)
      {
LABEL_34:
        (*(v231 + 8))(v67, v65);
        swift_unknownObjectRelease();
        v51 = v68;
        return __swift_destroy_boxed_opaque_existential_2Tm(v51);
      }

      v91 = v67;
      LOBYTE(v243) = 0;
      sub_242CB89A4();
      v92 = v213;
      sub_242F05E00();
      LODWORD(v230) = v237;
      v138 = BYTE1(v237);
      LOBYTE(v243) = 1;
      sub_242CB8934();
      sub_242F05E00();
      v139 = v92;
      LODWORD(v228) = v138;
      v170 = *v242;
      v226 = *&v242[24];
      v227 = *&v242[8];
      LOBYTE(v234) = 2;
      sub_242F05E00();
      v171 = (v231 + 8);
      (*(v212 + 8))(v38, v139);
      (*v171)(v91, v65);
      swift_unknownObjectRelease();
      LOBYTE(v243) = v230;
      BYTE1(v243) = v228;
      *(&v243 + 1) = v170;
      v244[0] = v227;
      v244[1] = v226;
      *&v244[2] = *v240;
      *(&v244[2] + 8) = *&v240[8];
      *(&v244[3] + 8) = *&v240[24];
      sub_242CB89F8(&v243);
LABEL_47:
      v251 = v244[5];
      v252 = v244[6];
      v253 = *&v244[7];
      v247 = v244[1];
      v248 = v244[2];
      v249 = v244[3];
      v250 = v244[4];
      v245 = v243;
      v246 = v244[0];
      v51 = v68;
      goto LABEL_49;
    case 14:
      LOBYTE(v243) = 14;
      sub_242CB7EB4();
      v53 = v226;
      v54 = v232;
      v55 = v187;
      sub_242F05D10();
      if (v55)
      {
        (*(v231 + 8))(v33, v54);
        goto LABEL_7;
      }

      LOBYTE(v243) = 0;
      sub_242CB88E0();
      sub_242F05E00();
      LODWORD(v229) = v237;
      v109 = v238;
      LOBYTE(v243) = 1;
      sub_242CB8934();
      sub_242F05E00();
      *&v228 = v109;
      v149 = *v242;
      v225 = *&v242[24];
      v227 = *&v242[8];
      LOBYTE(v234) = 2;
      sub_242F05E00();
      v150 = (v231 + 8);
      (*(v214 + 8))(v53, 0);
      (*v150)(v33, v54);
      swift_unknownObjectRelease();
      LOBYTE(v243) = v229;
      *(&v243 + 1) = v228;
      *&v244[0] = v149;
      *(&v244[1] + 8) = v225;
      *(v244 + 8) = v227;
      *(&v244[2] + 1) = *v240;
      v244[3] = *&v240[8];
      v244[4] = *&v240[24];
      sub_242CB8988(&v243);
      v251 = v244[5];
      v252 = v244[6];
      v253 = *&v244[7];
      v247 = v244[1];
      v248 = v244[2];
      v249 = v244[3];
      v250 = v244[4];
      v245 = v243;
      v246 = v244[0];
      v51 = v258;
LABEL_49:
      v178 = v252;
      v179 = v188;
      *(v188 + 96) = v251;
      *(v179 + 112) = v178;
      *(v179 + 128) = v253;
      v180 = v248;
      *(v179 + 32) = v247;
      *(v179 + 48) = v180;
      v181 = v250;
      *(v179 + 64) = v249;
      *(v179 + 80) = v181;
      v182 = v246;
      *v179 = v245;
      *(v179 + 16) = v182;
      break;
    default:
      goto LABEL_6;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(v51);
}

uint64_t sub_242CAAC84()
{
  sub_242F06390();
  VisibilityRule.hash(into:)();
  return sub_242F063E0();
}

uint64_t sub_242CAACC8()
{
  sub_242F06390();
  VisibilityRule.hash(into:)();
  return sub_242F063E0();
}

__n128 (*VisibilityRule.BezierCurve.startControlPoint.modify(uint64_t a1))(__n128 *a1)
{
  *(a1 + 16) = v1;
  *a1 = *v1;
  return sub_242CAAD44;
}

__n128 sub_242CAAD44(__n128 *a1)
{
  result = *a1;
  *a1[1].n128_u64[0] = *a1;
  return result;
}

__n128 (*VisibilityRule.BezierCurve.endControlPoint.modify(uint64_t a1))(__n128 *a1)
{
  *(a1 + 16) = v1;
  *a1 = *(v1 + 16);
  return sub_242CAAD90;
}

__n128 sub_242CAAD90(__n128 *a1)
{
  result = *a1;
  *(a1[1].n128_u64[0] + 16) = *a1;
  return result;
}

void VisibilityRule.BezierCurve.init(startControlPoint:endControlPoint:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
}

double sub_242CAADAC()
{
  result = 0.42;
  __asm { FMOV            V1.2D, #1.0 }

  xmmword_27ECF0DE8 = xmmword_242F0D200;
  unk_27ECF0DF8 = _Q1;
  return result;
}

double sub_242CAADF0()
{
  qword_27ECF0E08 = 0;
  unk_27ECF0E10 = 0;
  result = 0.58;
  xmmword_27ECF0E18 = xmmword_242F0D210;
  return result;
}

double sub_242CAAE34()
{
  result = 0.42;
  xmmword_27ECF0E28 = xmmword_242F0D200;
  unk_27ECF0E38 = xmmword_242F0D210;
  return result;
}

void sub_242CAAE7C()
{
  xmmword_27ECF0E48 = 0x3FB999999999999AuLL;
  *&xmmword_27ECF0E58 = 0;
  *(&xmmword_27ECF0E58 + 1) = 0x3FF0000000000000;
}

__n128 sub_242CAAEC8@<Q0>(void *a1@<X0>, __n128 *a2@<X1>, _OWORD *a3@<X2>, __n128 *a4@<X8>)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a3;
    v8 = a4;
    swift_once();
    a2 = v6;
    a4 = v8;
    a3 = v7;
  }

  result = *a2;
  v5 = *a3;
  *a4 = *a2;
  a4[1] = v5;
  return result;
}

uint64_t static VisibilityRule.BezierCurve.== infix(_:_:)()
{
  if ((sub_242F04B20() & 1) == 0)
  {
    return 0;
  }

  return sub_242F04B20();
}

uint64_t VisibilityRule.BezierCurve.hash(into:)()
{
  sub_242F04B30();

  return sub_242F04B30();
}

uint64_t VisibilityRule.BezierCurve.hashValue.getter()
{
  sub_242F06390();
  sub_242F04B30();
  sub_242F04B30();
  return sub_242F063E0();
}

uint64_t sub_242CAB05C()
{
  sub_242F06390();
  sub_242F04B30();
  sub_242F04B30();
  return sub_242F063E0();
}

uint64_t sub_242CAB0CC()
{
  sub_242F04B30();

  return sub_242F04B30();
}

uint64_t sub_242CAB11C()
{
  sub_242F06390();
  sub_242F04B30();
  sub_242F04B30();
  return sub_242F063E0();
}

uint64_t sub_242CAB188()
{
  if ((sub_242F04B20() & 1) == 0)
  {
    return 0;
  }

  return sub_242F04B20();
}

__n128 VisibilityRule.Animation.bezierCurve.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  v3 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

double sub_242CAB24C(double a1, uint64_t a2, double *a3, _OWORD *a4, _OWORD *a5)
{
  if (qword_27ECEEEC8 != -1)
  {
    v6 = a3;
    v7 = a5;
    v8 = a4;
    v9 = a1;
    swift_once();
    a1 = v9;
    a3 = v6;
    a4 = v8;
    a5 = v7;
  }

  *a3 = a1;
  *a4 = xmmword_27ECF0E48;
  result = *&xmmword_27ECF0E58;
  *a5 = xmmword_27ECF0E58;
  return result;
}

uint64_t sub_242CAB2E8()
{
  v1 = 0x79616C6564;
  if (*v0 != 1)
  {
    v1 = 0x75437265697A6562;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F697461727564;
  }
}

uint64_t sub_242CAB348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242CBDC90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242CAB370(uint64_t a1)
{
  v2 = sub_242CB8F68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242CAB3AC(uint64_t a1)
{
  v2 = sub_242CB8F68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VisibilityRule.Animation.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF12E0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v8 = *(v1 + 8);
  v10 = *(v1 + 24);
  v11 = v8;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CB8F68();
  sub_242F064C0();
  LOBYTE(v13) = 0;
  sub_242F05EF0();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    sub_242F05EF0();
    v13 = v11;
    v14 = v10;
    v12 = 2;
    sub_242CB8FBC();
    sub_242F05F20();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t VisibilityRule.Animation.hash(into:)()
{
  sub_242F063C0();
  sub_242F063C0();
  sub_242F04B30();

  return sub_242F04B30();
}

uint64_t VisibilityRule.Animation.hashValue.getter()
{
  sub_242F06390();
  sub_242F063C0();
  sub_242F063C0();
  sub_242F04B30();
  sub_242F04B30();
  return sub_242F063E0();
}

uint64_t VisibilityRule.Animation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF12F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CB8F68();
  sub_242F06480();
  if (!v2)
  {
    LOBYTE(v16[0]) = 0;
    sub_242F05DD0();
    v10 = v9;
    LOBYTE(v16[0]) = 1;
    sub_242F05DD0();
    v13 = v12;
    v17 = 2;
    sub_242CB9010();
    sub_242F05E00();
    (*(v6 + 8))(v8, v5);
    v14 = v16[0];
    v15 = v16[1];
    *a2 = v10;
    *(a2 + 4) = v13;
    *(a2 + 8) = v14;
    *(a2 + 24) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242CAB950()
{
  sub_242F06390();
  sub_242F063C0();
  sub_242F063C0();
  sub_242F04B30();
  sub_242F04B30();
  return sub_242F063E0();
}

uint64_t VisibilityRule.BezierCurve.encode(to:)(void *a1)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242F064A0();
  v10 = v4;
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  sub_242C7DB7C();
  sub_242F05FA0();
  if (!v2)
  {
    v10 = v3;
    __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
    sub_242F05FA0();
    v10 = v6;
    __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
    sub_242F05FA0();
    v10 = v5;
    __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
    sub_242F05FA0();
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(v8);
}

uint64_t VisibilityRule.BezierCurve.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242F06460();
  if (!v2)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
    sub_242C7DBD0();
    sub_242F05F80();
    v5 = v12;
    __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
    sub_242F05F80();
    v6 = v12;
    __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
    sub_242F05F80();
    v7 = v12;
    __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
    sub_242F05F80();
    v9 = v12;
    __swift_destroy_boxed_opaque_existential_2Tm(v10);
    *a2 = v5;
    a2[1] = v6;
    a2[2] = v7;
    a2[3] = v9;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t (*static VisibilityRule.TransmissionModeRule.numeric.modify())()
{
  if (qword_27ECEEEE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*static VisibilityRule.TransmissionModeRule.nonnumeric.modify())()
{
  if (qword_27ECEEEE8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242CABFFC(uint64_t a1)
{
  v2 = sub_242CB9064();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242CAC038(uint64_t a1)
{
  v2 = sub_242CB9064();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VisibilityRule.TransmissionModeRule.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1308);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v11 = v1[1];
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CB9064();
  sub_242F064C0();
  v15 = v8;
  v14 = 0;
  sub_242CB90B8();
  sub_242F05F20();
  if (!v2)
  {
    v13 = v11;
    v12 = 1;
    sub_242C8AC28();
    sub_242F05F20();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t VisibilityRule.TransmissionModeRule.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1320);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CB9064();
  sub_242F06480();
  if (!v2)
  {
    v15 = 0;
    sub_242CB910C();
    sub_242F05E00();
    v9 = v16;
    v13 = 1;
    sub_242C8AC7C();
    sub_242F05E00();
    (*(v6 + 8))(v8, v5);
    v11 = v14;
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

CarPlayAssetUI::VisibilityRule::TickmarksSpeedUnitRule::Rule_optional __swiftcall VisibilityRule.TickmarksSpeedUnitRule.Rule.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x2010003u >> (8 * rawValue);
  if (rawValue >= 4)
  {
    LOBYTE(v2) = 3;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t static VisibilityRule.TickmarksSpeedUnitRule.noUnit.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEEF0 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  v3 = byte_27ECF0EBE;
  *a1 = word_27ECF0EBC;
  *(a1 + 2) = v3;
  return result;
}

uint64_t static VisibilityRule.TickmarksSpeedUnitRule.noUnit.setter(char *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  if (qword_27ECEEEF0 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  LOBYTE(word_27ECF0EBC) = v1;
  HIBYTE(word_27ECF0EBC) = v2;
  byte_27ECF0EBE = v3;
  return result;
}

uint64_t (*static VisibilityRule.TickmarksSpeedUnitRule.noUnit.modify())()
{
  if (qword_27ECEEEF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242CAC6A8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEEF0 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  v3 = byte_27ECF0EBE;
  *a1 = word_27ECF0EBC;
  *(a1 + 2) = v3;
  return result;
}

uint64_t sub_242CAC72C(char *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  if (qword_27ECEEEF0 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  LOBYTE(word_27ECF0EBC) = v1;
  HIBYTE(word_27ECF0EBC) = v2;
  byte_27ECF0EBE = v3;
  return result;
}

uint64_t static VisibilityRule.TickmarksSpeedUnitRule.mph.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEEF8 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  v3 = byte_27ECF0EC1;
  *a1 = word_27ECF0EBF;
  *(a1 + 2) = v3;
  return result;
}

uint64_t static VisibilityRule.TickmarksSpeedUnitRule.mph.setter(char *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  if (qword_27ECEEEF8 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  LOBYTE(word_27ECF0EBF) = v1;
  HIBYTE(word_27ECF0EBF) = v2;
  byte_27ECF0EC1 = v3;
  return result;
}

uint64_t (*static VisibilityRule.TickmarksSpeedUnitRule.mph.modify())()
{
  if (qword_27ECEEEF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242CAC974@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEEF8 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  v3 = byte_27ECF0EC1;
  *a1 = word_27ECF0EBF;
  *(a1 + 2) = v3;
  return result;
}

uint64_t sub_242CAC9F8(char *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  if (qword_27ECEEEF8 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  LOBYTE(word_27ECF0EBF) = v1;
  HIBYTE(word_27ECF0EBF) = v2;
  byte_27ECF0EC1 = v3;
  return result;
}

uint64_t static VisibilityRule.TickmarksSpeedUnitRule.kmh.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEF00 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  v3 = byte_27ECF0EC4;
  *a1 = word_27ECF0EC2;
  *(a1 + 2) = v3;
  return result;
}

uint64_t static VisibilityRule.TickmarksSpeedUnitRule.kmh.setter(char *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  if (qword_27ECEEF00 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  LOBYTE(word_27ECF0EC2) = v1;
  HIBYTE(word_27ECF0EC2) = v2;
  byte_27ECF0EC4 = v3;
  return result;
}

uint64_t (*static VisibilityRule.TickmarksSpeedUnitRule.kmh.modify())()
{
  if (qword_27ECEEF00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242CACC40@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEF00 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  v3 = byte_27ECF0EC4;
  *a1 = word_27ECF0EC2;
  *(a1 + 2) = v3;
  return result;
}

uint64_t sub_242CACCC4(char *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  if (qword_27ECEEF00 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  LOBYTE(word_27ECF0EC2) = v1;
  HIBYTE(word_27ECF0EC2) = v2;
  byte_27ECF0EC4 = v3;
  return result;
}

uint64_t sub_242CACD54()
{
  v1 = 0xD00000000000001CLL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701606770;
  }
}

uint64_t sub_242CACDB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242CBDDA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242CACDDC(uint64_t a1)
{
  v2 = sub_242CB9160();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242CACE18(uint64_t a1)
{
  v2 = sub_242CB9160();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VisibilityRule.TickmarksSpeedUnitRule.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1330);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v13 = v1[2];
  v14 = v9;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CB9160();
  sub_242F064C0();
  v20 = v8;
  v19 = 0;
  sub_242CB91B4();
  sub_242F05F20();
  if (!v2)
  {
    v10 = v13;
    v18 = v14;
    v17 = 1;
    sub_242C8AC28();
    sub_242F05F20();
    v16 = v10;
    v15 = 2;
    sub_242F05F20();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t VisibilityRule.TickmarksSpeedUnitRule.hash(into:)()
{
  MEMORY[0x245D279A0](*v0 + 1);
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();
}

uint64_t VisibilityRule.TickmarksSpeedUnitRule.hashValue.getter()
{
  v1 = *v0;
  sub_242F06390();
  MEMORY[0x245D279A0](v1 + 1);
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t VisibilityRule.TickmarksSpeedUnitRule.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1348);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CB9160();
  sub_242F06480();
  if (!v2)
  {
    v18 = 0;
    sub_242CB9208();
    sub_242F05E00();
    v9 = v19;
    v16 = 1;
    sub_242C8AC7C();
    sub_242F05E00();
    v13 = v17;
    v14 = 2;
    sub_242F05E00();
    (*(v6 + 8))(v8, v5);
    v11 = v15;
    *a2 = v9;
    a2[1] = v13;
    a2[2] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242CAD3E8()
{
  MEMORY[0x245D279A0](*v0 + 1);
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();
}

uint64_t sub_242CAD494()
{
  v1 = *v0;
  sub_242F06390();
  MEMORY[0x245D279A0](v1 + 1);
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return sub_242F063E0();
}

CarPlayAssetUI::VisibilityRule::SpeedLimiterRule::Rule_optional __swiftcall VisibilityRule.SpeedLimiterRule.Rule.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x302010004uLL >> (8 * rawValue);
  if (rawValue >= 5)
  {
    LOBYTE(v2) = 4;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_242CAD630()
{
  v1 = *v0;
  sub_242F06390();
  MEMORY[0x245D279A0](v1 + 1);
  return sub_242F063E0();
}

uint64_t sub_242CAD678()
{
  v1 = *v0;
  sub_242F06390();
  MEMORY[0x245D279A0](v1 + 1);
  return sub_242F063E0();
}

double sub_242CAD6BC()
{
  LOBYTE(xmmword_27ECF0EC8) = 0;
  result = 0.0;
  *(&xmmword_27ECF0EC8 + 8) = 0u;
  unk_27ECF0EE0 = 0u;
  qword_27ECF0EF0 = 0;
  byte_27ECF0EF8 = 1;
  *algn_27ECF0EF9 = 3916;
  return result;
}

double static VisibilityRule.SpeedLimiterRule.cruiseControl.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEF08 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = unk_27ECF0ED8;
  *a1 = xmmword_27ECF0EC8;
  *(a1 + 16) = v2;
  result = dbl_27ECF0EE8;
  *(a1 + 32) = *&dbl_27ECF0EE8;
  *(a1 + 47) = *(&qword_27ECF0EF0 + 7);
  return result;
}

__n128 static VisibilityRule.SpeedLimiterRule.cruiseControl.setter(uint64_t a1)
{
  if (qword_27ECEEF08 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(a1 + 16);
  xmmword_27ECF0EC8 = *a1;
  unk_27ECF0ED8 = v2;
  result = *(a1 + 32);
  *&dbl_27ECF0EE8 = result;
  *(&qword_27ECF0EF0 + 7) = *(a1 + 47);
  return result;
}

uint64_t (*static VisibilityRule.SpeedLimiterRule.cruiseControl.modify())()
{
  if (qword_27ECEEF08 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

double sub_242CAD898@<D0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEF08 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = unk_27ECF0ED8;
  *a1 = xmmword_27ECF0EC8;
  *(a1 + 16) = v2;
  result = dbl_27ECF0EE8;
  *(a1 + 32) = *&dbl_27ECF0EE8;
  *(a1 + 47) = *(&qword_27ECF0EF0 + 7);
  return result;
}

__n128 sub_242CAD924(uint64_t a1)
{
  if (qword_27ECEEF08 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(a1 + 16);
  xmmword_27ECF0EC8 = *a1;
  unk_27ECF0ED8 = v2;
  result = *(a1 + 32);
  *&dbl_27ECF0EE8 = result;
  *(&qword_27ECF0EF0 + 7) = *(a1 + 47);
  return result;
}

double sub_242CAD9B0()
{
  LOBYTE(xmmword_27ECF0F00) = 2;
  result = 0.0;
  *(&xmmword_27ECF0F00 + 8) = 0u;
  *&algn_27ECF0F10[8] = 0u;
  qword_27ECF0F28 = 0;
  byte_27ECF0F30 = 1;
  *algn_27ECF0F31 = 3916;
  return result;
}

double static VisibilityRule.SpeedLimiterRule.speedLimitedOrCruiseControlLabel.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEF10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *algn_27ECF0F10;
  *a1 = xmmword_27ECF0F00;
  *(a1 + 16) = v2;
  result = dbl_27ECF0F20;
  *(a1 + 32) = *&dbl_27ECF0F20;
  *(a1 + 47) = *(&qword_27ECF0F28 + 7);
  return result;
}

__n128 static VisibilityRule.SpeedLimiterRule.speedLimitedOrCruiseControlLabel.setter(uint64_t a1)
{
  if (qword_27ECEEF10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(a1 + 16);
  xmmword_27ECF0F00 = *a1;
  *algn_27ECF0F10 = v2;
  result = *(a1 + 32);
  *&dbl_27ECF0F20 = result;
  *(&qword_27ECF0F28 + 7) = *(a1 + 47);
  return result;
}

uint64_t (*static VisibilityRule.SpeedLimiterRule.speedLimitedOrCruiseControlLabel.modify())()
{
  if (qword_27ECEEF10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

double sub_242CADB90@<D0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEF10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *algn_27ECF0F10;
  *a1 = xmmword_27ECF0F00;
  *(a1 + 16) = v2;
  result = dbl_27ECF0F20;
  *(a1 + 32) = *&dbl_27ECF0F20;
  *(a1 + 47) = *(&qword_27ECF0F28 + 7);
  return result;
}

__n128 sub_242CADC1C(uint64_t a1)
{
  if (qword_27ECEEF10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(a1 + 16);
  xmmword_27ECF0F00 = *a1;
  *algn_27ECF0F10 = v2;
  result = *(a1 + 32);
  *&dbl_27ECF0F20 = result;
  *(&qword_27ECF0F28 + 7) = *(a1 + 47);
  return result;
}

double sub_242CADCA8()
{
  LOBYTE(xmmword_27ECF0F38) = 2;
  result = 0.0;
  *(&xmmword_27ECF0F38 + 8) = 0u;
  unk_27ECF0F50 = 0u;
  qword_27ECF0F60 = 0;
  byte_27ECF0F68 = 1;
  *algn_27ECF0F69 = 3916;
  return result;
}

double static VisibilityRule.SpeedLimiterRule.speedLimitedOrCruiseControlLabelNoHide.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEF18 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = unk_27ECF0F48;
  *a1 = xmmword_27ECF0F38;
  *(a1 + 16) = v2;
  result = dbl_27ECF0F58;
  *(a1 + 32) = *&dbl_27ECF0F58;
  *(a1 + 47) = *(&qword_27ECF0F60 + 7);
  return result;
}

__n128 static VisibilityRule.SpeedLimiterRule.speedLimitedOrCruiseControlLabelNoHide.setter(uint64_t a1)
{
  if (qword_27ECEEF18 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(a1 + 16);
  xmmword_27ECF0F38 = *a1;
  unk_27ECF0F48 = v2;
  result = *(a1 + 32);
  *&dbl_27ECF0F58 = result;
  *(&qword_27ECF0F60 + 7) = *(a1 + 47);
  return result;
}

uint64_t (*static VisibilityRule.SpeedLimiterRule.speedLimitedOrCruiseControlLabelNoHide.modify())()
{
  if (qword_27ECEEF18 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

double sub_242CADE88@<D0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEF18 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = unk_27ECF0F48;
  *a1 = xmmword_27ECF0F38;
  *(a1 + 16) = v2;
  result = dbl_27ECF0F58;
  *(a1 + 32) = *&dbl_27ECF0F58;
  *(a1 + 47) = *(&qword_27ECF0F60 + 7);
  return result;
}

__n128 sub_242CADF14(uint64_t a1)
{
  if (qword_27ECEEF18 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(a1 + 16);
  xmmword_27ECF0F38 = *a1;
  unk_27ECF0F48 = v2;
  result = *(a1 + 32);
  *&dbl_27ECF0F58 = result;
  *(&qword_27ECF0F60 + 7) = *(a1 + 47);
  return result;
}

double sub_242CADFA0()
{
  LOBYTE(xmmword_27ECF0F70) = 1;
  result = 0.0;
  *(&xmmword_27ECF0F70 + 8) = 0u;
  unk_27ECF0F88 = 0u;
  qword_27ECF0F98 = 0;
  byte_27ECF0FA0 = 1;
  *algn_27ECF0FA1 = 3916;
  return result;
}

double static VisibilityRule.SpeedLimiterRule.speedLimited.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEF20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = unk_27ECF0F80;
  *a1 = xmmword_27ECF0F70;
  *(a1 + 16) = v2;
  result = dbl_27ECF0F90;
  *(a1 + 32) = *&dbl_27ECF0F90;
  *(a1 + 47) = *(&qword_27ECF0F98 + 7);
  return result;
}

__n128 static VisibilityRule.SpeedLimiterRule.speedLimited.setter(uint64_t a1)
{
  if (qword_27ECEEF20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(a1 + 16);
  xmmword_27ECF0F70 = *a1;
  unk_27ECF0F80 = v2;
  result = *(a1 + 32);
  *&dbl_27ECF0F90 = result;
  *(&qword_27ECF0F98 + 7) = *(a1 + 47);
  return result;
}

uint64_t (*static VisibilityRule.SpeedLimiterRule.speedLimited.modify())()
{
  if (qword_27ECEEF20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

double sub_242CAE17C@<D0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEF20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = unk_27ECF0F80;
  *a1 = xmmword_27ECF0F70;
  *(a1 + 16) = v2;
  result = dbl_27ECF0F90;
  *(a1 + 32) = *&dbl_27ECF0F90;
  *(a1 + 47) = *(&qword_27ECF0F98 + 7);
  return result;
}

__n128 sub_242CAE208(uint64_t a1)
{
  if (qword_27ECEEF20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(a1 + 16);
  xmmword_27ECF0F70 = *a1;
  unk_27ECF0F80 = v2;
  result = *(a1 + 32);
  *&dbl_27ECF0F90 = result;
  *(&qword_27ECF0F98 + 7) = *(a1 + 47);
  return result;
}

double sub_242CAE294()
{
  LOBYTE(xmmword_27ECF0FA8) = 3;
  result = 0.0;
  *(&xmmword_27ECF0FA8 + 8) = 0u;
  unk_27ECF0FC0 = 0u;
  qword_27ECF0FD0 = 0;
  byte_27ECF0FD8 = 1;
  unk_27ECF0FD9 = 3916;
  return result;
}

double static VisibilityRule.SpeedLimiterRule.cruiseControlActivated.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEF28 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = unk_27ECF0FB8;
  *a1 = xmmword_27ECF0FA8;
  *(a1 + 16) = v2;
  result = dbl_27ECF0FC8;
  *(a1 + 32) = *&dbl_27ECF0FC8;
  *(a1 + 47) = *(&qword_27ECF0FD0 + 7);
  return result;
}

__n128 static VisibilityRule.SpeedLimiterRule.cruiseControlActivated.setter(uint64_t a1)
{
  if (qword_27ECEEF28 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(a1 + 16);
  xmmword_27ECF0FA8 = *a1;
  unk_27ECF0FB8 = v2;
  result = *(a1 + 32);
  *&dbl_27ECF0FC8 = result;
  *(&qword_27ECF0FD0 + 7) = *(a1 + 47);
  return result;
}

uint64_t (*static VisibilityRule.SpeedLimiterRule.cruiseControlActivated.modify())()
{
  if (qword_27ECEEF28 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

double sub_242CAE474@<D0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEF28 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = unk_27ECF0FB8;
  *a1 = xmmword_27ECF0FA8;
  *(a1 + 16) = v2;
  result = dbl_27ECF0FC8;
  *(a1 + 32) = *&dbl_27ECF0FC8;
  *(a1 + 47) = *(&qword_27ECF0FD0 + 7);
  return result;
}

__n128 sub_242CAE500(uint64_t a1)
{
  if (qword_27ECEEF28 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(a1 + 16);
  xmmword_27ECF0FA8 = *a1;
  unk_27ECF0FB8 = v2;
  result = *(a1 + 32);
  *&dbl_27ECF0FC8 = result;
  *(&qword_27ECF0FD0 + 7) = *(a1 + 47);
  return result;
}

unint64_t sub_242CAE58C()
{
  v1 = 1701606770;
  v2 = 0xD00000000000001CLL;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
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

uint64_t sub_242CAE60C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242CBDECC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242CAE634(uint64_t a1)
{
  v2 = sub_242CB925C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242CAE670(uint64_t a1)
{
  v2 = sub_242CB925C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VisibilityRule.SpeedLimiterRule.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1358);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v17 = *(v1 + 24);
  v18 = v9;
  v16 = *(v1 + 5);
  v23 = v1[48];
  v10 = v1[49];
  v14 = v1[50];
  v15 = v10;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CB925C();
  sub_242F064C0();
  LOBYTE(v19) = v8;
  v24 = 0;
  sub_242CB92B0();
  sub_242F05F20();
  if (!v2)
  {
    v12 = v14;
    v11 = v15;
    v19 = v18;
    v20 = v17;
    v21 = v16;
    v22 = v23;
    v24 = 1;
    sub_242CB7F5C();
    sub_242F05EB0();
    LOBYTE(v19) = v11;
    v24 = 2;
    sub_242C8AC28();
    sub_242F05F20();
    LOBYTE(v19) = v12;
    v24 = 3;
    sub_242F05F20();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t VisibilityRule.SpeedLimiterRule.hash(into:)()
{
  v1 = v0[48];
  MEMORY[0x245D279A0](*v0 + 1);
  sub_242F063B0();
  if (v1 != 1)
  {
    sub_242F063C0();
    sub_242F063C0();
    sub_242F04B30();
    sub_242F04B30();
  }

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();
}

uint64_t VisibilityRule.SpeedLimiterRule.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[48];
  sub_242F06390();
  MEMORY[0x245D279A0](v1 + 1);
  sub_242F063B0();
  if (v2 != 1)
  {
    sub_242F063C0();
    sub_242F063C0();
    sub_242F04B30();
    sub_242F04B30();
  }

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t VisibilityRule.SpeedLimiterRule.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1370);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CB925C();
  sub_242F06480();
  if (!v2)
  {
    v24 = 0;
    sub_242CB9304();
    sub_242F05E00();
    v9 = v19;
    v24 = 1;
    sub_242CB8934();
    sub_242F05D90();
    v17 = v9;
    v18 = v20;
    v16 = v19;
    v10 = v21;
    v23 = v22;
    v24 = 2;
    sub_242C8AC7C();
    sub_242F05E00();
    v15 = v10;
    LOBYTE(v10) = v19;
    v24 = 3;
    sub_242F05E00();
    (*(v6 + 8))(v8, v5);
    v12 = v19;
    v13 = v23;
    *a2 = v17;
    *(a2 + 8) = v16;
    *(a2 + 24) = v18;
    *(a2 + 40) = v15;
    *(a2 + 48) = v13;
    *(a2 + 49) = v10;
    *(a2 + 50) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242CAEE60()
{
  v1 = *v0;
  v2 = v0[48];
  sub_242F06390();
  MEMORY[0x245D279A0](v1 + 1);
  sub_242F063B0();
  if (v2 != 1)
  {
    sub_242F063C0();
    sub_242F063C0();
    sub_242F04B30();
    sub_242F04B30();
  }

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return sub_242F063E0();
}

CarPlayAssetUI::VisibilityRule::RemainingRangeRule::Rule_optional __swiftcall VisibilityRule.RemainingRangeRule.Rule.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue == 1)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t VisibilityRule.RemainingRangeRule.Rule.rawValue.getter()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

CarPlayAssetUI::VisibilityRule::RemainingRangeRule __swiftcall VisibilityRule.RemainingRangeRule.init(rule:dataIdentifier:)(CarPlayAssetUI::VisibilityRule::RemainingRangeRule::Rule rule, CarPlayAssetUI::InstrumentDataIdentifier dataIdentifier)
{
  v3 = *dataIdentifier;
  *v2 = *rule;
  v2[1] = v3;
  result.rule = rule;
  return result;
}

uint64_t (*static VisibilityRule.RemainingRangeRule.iconOnly.modify())()
{
  if (qword_27ECEEF30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242CAF1CC@<X0>(void *a1@<X0>, _BYTE *a2@<X1>, char *a3@<X2>, _BYTE *a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  v8 = *a3;
  *a4 = *a2;
  a4[1] = v8;
  return result;
}

uint64_t sub_242CAF268(char *a1, void *a2, _BYTE *a3, _BYTE *a4)
{
  v6 = *a1;
  v7 = a1[1];
  if (*a2 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  *a3 = v6;
  *a4 = v7;
  return result;
}

uint64_t (*static VisibilityRule.RemainingRangeRule.rangeAndIcon.modify())()
{
  if (qword_27ECEEF38 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242CAF364@<X0>(void *a1@<X3>, _BYTE *a2@<X4>, char *a3@<X5>, _BYTE *a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  v8 = *a3;
  *a4 = *a2;
  a4[1] = v8;
  return result;
}

uint64_t sub_242CAF3DC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _BYTE *a6, _BYTE *a7)
{
  v9 = *a1;
  v10 = a1[1];
  if (*a5 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  *a6 = v9;
  *a7 = v10;
  return result;
}

uint64_t sub_242CAF450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701606770 && a2 == 0xE400000000000000;
  if (v5 || (sub_242F06110() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E65644961746164 && a2 == 0xEE00726569666974)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_242F06110();

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

uint64_t sub_242CAF534(uint64_t a1)
{
  v2 = sub_242CB9358();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242CAF570(uint64_t a1)
{
  v2 = sub_242CB9358();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VisibilityRule.RemainingRangeRule.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1380);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v11 = v1[1];
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CB9358();
  sub_242F064C0();
  v15 = v8;
  v14 = 0;
  sub_242CB93AC();
  sub_242F05F20();
  if (!v2)
  {
    v13 = v11;
    v12 = 1;
    sub_242C8AC28();
    sub_242F05F20();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_242CAF74C()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  MEMORY[0x245D279A0](v1);
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();
}

uint64_t sub_242CAF7D4()
{
  v1 = *v0;
  sub_242F06390();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x245D279A0](v2);
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t VisibilityRule.RemainingRangeRule.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1398);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CB9358();
  sub_242F06480();
  if (!v2)
  {
    v15 = 0;
    sub_242CB9400();
    sub_242F05E00();
    v9 = v16;
    v13 = 1;
    sub_242C8AC7C();
    sub_242F05E00();
    (*(v6 + 8))(v8, v5);
    v11 = v14;
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242CAFA60()
{
  v1 = *v0;
  sub_242F06390();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x245D279A0](v2);
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return sub_242F063E0();
}

CarPlayAssetUI::VisibilityRule::LayoutModeRule::Level_optional __swiftcall VisibilityRule.LayoutModeRule.Level.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue <= 199)
  {
    if (!rawValue)
    {
      *v1 = 0;
      return rawValue;
    }

    if (rawValue == 100)
    {
      *v1 = 1;
      return rawValue;
    }

LABEL_12:
    *v1 = 5;
    return rawValue;
  }

  if (rawValue == 400)
  {
    *v1 = 4;
    return rawValue;
  }

  if (rawValue == 300)
  {
    *v1 = 3;
    return rawValue;
  }

  if (rawValue != 200)
  {
    goto LABEL_12;
  }

  *v1 = 2;
  return rawValue;
}

uint64_t sub_242CAFC30()
{
  v1 = *v0;
  sub_242F06390();
  MEMORY[0x245D279A0](100 * v1);
  return sub_242F063E0();
}

uint64_t sub_242CAFCB0()
{
  v1 = *v0;
  sub_242F06390();
  MEMORY[0x245D279A0](100 * v1);
  return sub_242F063E0();
}

uint64_t (*static VisibilityRule.LayoutModeRule.none.modify())()
{
  if (qword_27ECEEF40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*static VisibilityRule.LayoutModeRule.exit.modify())()
{
  if (qword_27ECEEF48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*static VisibilityRule.LayoutModeRule.ghost.modify())()
{
  if (qword_27ECEEF50 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*static VisibilityRule.LayoutModeRule.ghostFaded.modify())()
{
  if (qword_27ECEEF58 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t (*static VisibilityRule.LayoutModeRule.accessory.modify())()
{
  if (qword_27ECEEF60 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

float sub_242CB01FC@<S0>(void *a1@<X0>, _BYTE *a2@<X1>, float *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = *a3;
  *a4 = *a2;
  *(a4 + 4) = result;
  return result;
}

uint64_t sub_242CB0298(char *a1, void *a2, _BYTE *a3, _DWORD *a4)
{
  v6 = *a1;
  v7 = *(a1 + 1);
  if (*a2 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  *a3 = v6;
  *a4 = v7;
  return result;
}

uint64_t (*static VisibilityRule.LayoutModeRule.drive.modify())()
{
  if (qword_27ECEEF68 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

float sub_242CB039C@<S0>(void *a1@<X3>, _BYTE *a2@<X4>, float *a3@<X5>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = *a3;
  *a4 = *a2;
  *(a4 + 4) = result;
  return result;
}

uint64_t sub_242CB0414(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _BYTE *a6, _DWORD *a7)
{
  v9 = *a1;
  v10 = *(a1 + 1);
  if (*a5 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  *a6 = v9;
  *a7 = v10;
  return result;
}

uint64_t sub_242CB0490()
{
  if (*v0)
  {
    return 0x7974696361706FLL;
  }

  else
  {
    return 0x6C6576656CLL;
  }
}

uint64_t sub_242CB04C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6576656CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_242F06110() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7974696361706FLL && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_242F06110();

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

uint64_t sub_242CB05A0(uint64_t a1)
{
  v2 = sub_242CB9454();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242CB05DC(uint64_t a1)
{
  v2 = sub_242CB9454();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VisibilityRule.LayoutModeRule.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF13A8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-v6];
  v8 = *v1;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CB9454();
  sub_242F064C0();
  v10[15] = v8;
  v10[14] = 0;
  sub_242CB94A8();
  sub_242F05F20();
  if (!v2)
  {
    v10[13] = 1;
    sub_242F05EF0();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t VisibilityRule.LayoutModeRule.hashValue.getter()
{
  v1 = *v0;
  sub_242F06390();
  MEMORY[0x245D279A0](100 * v1);
  sub_242F063C0();
  return sub_242F063E0();
}

uint64_t VisibilityRule.LayoutModeRule.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF13C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CB9454();
  sub_242F06480();
  if (!v2)
  {
    v13[14] = 0;
    sub_242CB94FC();
    sub_242F05E00();
    v9 = v13[15];
    v13[13] = 1;
    sub_242F05DD0();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 4) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242CB0AD4()
{
  v1 = *v0;
  sub_242F06390();
  MEMORY[0x245D279A0](100 * v1);
  sub_242F063C0();
  return sub_242F063E0();
}

uint64_t sub_242CB0B84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E65644961746164 && a2 == 0xEE00726569666974)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_242F06110();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_242CB0C14(uint64_t a1)
{
  v2 = sub_242CB9550();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242CB0C50(uint64_t a1)
{
  v2 = sub_242CB9550();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VisibilityRule.InvalidDataRule.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF13D0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CB9550();
  sub_242F064C0();
  v10 = v7;
  sub_242C8AC28();
  sub_242F05F20();
  return (*(v4 + 8))(v6, v3);
}

uint64_t VisibilityRule.InvalidDataRule.hash(into:)()
{
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();
}

uint64_t VisibilityRule.InvalidDataRule.hashValue.getter()
{
  sub_242F06390();
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t VisibilityRule.InvalidDataRule.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF13E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CB9550();
  sub_242F06480();
  if (!v2)
  {
    sub_242C8AC7C();
    sub_242F05E00();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242CB1040()
{
  sub_242F06390();
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t sub_242CB10A8()
{
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();
}

uint64_t sub_242CB110C()
{
  sub_242F06390();
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t sub_242CB1170()
{
  v0 = InstrumentDataIdentifier.rawValue.getter();
  v2 = v1;
  if (v0 == InstrumentDataIdentifier.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_242F06110();
  }

  return v5 & 1;
}

uint64_t sub_242CB120C()
{
  if (*v0)
  {
    return 0x64656C62616E65;
  }

  else
  {
    return 0x6E65644961746164;
  }
}

uint64_t sub_242CB1254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E65644961746164 && a2 == 0xEE00726569666974;
  if (v6 || (sub_242F06110() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64656C62616E65 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_242F06110();

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

uint64_t sub_242CB1338(uint64_t a1)
{
  v2 = sub_242CB95A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242CB1374(uint64_t a1)
{
  v2 = sub_242CB95A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VisibilityRule.SecondarySpeedRule.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF13E8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v11 = v1[1];
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CB95A4();
  sub_242F064C0();
  v15 = v8;
  v14 = 0;
  sub_242C8AC28();
  sub_242F05F20();
  if (!v2)
  {
    v13 = v11;
    v12 = 1;
    sub_242F05F20();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t VisibilityRule.SecondarySpeedRule.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF13F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CB95A4();
  sub_242F06480();
  if (!v2)
  {
    v15 = 0;
    sub_242C8AC7C();
    sub_242F05E00();
    v9 = v16;
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1400);
    sub_242CB95F8();
    sub_242F05D90();
    (*(v6 + 8))(v8, v5);
    v10 = v13;
    *a2 = v9;
    a2[1] = v10 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242CB183C()
{
  v1 = *v0;
  sub_242F06390();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x245D279A0](v2);
  return sub_242F063E0();
}

uint64_t sub_242CB188C()
{
  v1 = *v0;
  sub_242F06390();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x245D279A0](v2);
  return sub_242F063E0();
}

double sub_242CB18D8()
{
  *&result = 488381185;
  dword_27ECF1010 = 488381185;
  return result;
}

uint64_t static VisibilityRule.TemperatureLabelRule.engineTemperatureIconOnly.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEF70 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  v3 = *(&dword_27ECF1010 + 1);
  v4 = HIBYTE(dword_27ECF1010);
  *a1 = dword_27ECF1010;
  *(a1 + 1) = v3;
  *(a1 + 3) = v4;
  return result;
}

uint64_t static VisibilityRule.TemperatureLabelRule.engineTemperatureIconOnly.setter(char *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  if (qword_27ECEEF70 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  LOBYTE(dword_27ECF1010) = v1;
  BYTE1(dword_27ECF1010) = v2;
  BYTE2(dword_27ECF1010) = v3;
  HIBYTE(dword_27ECF1010) = v4;
  return result;
}

uint64_t (*static VisibilityRule.TemperatureLabelRule.engineTemperatureIconOnly.modify())()
{
  if (qword_27ECEEF70 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242CB1AA4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEF70 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  v3 = *(&dword_27ECF1010 + 1);
  v4 = HIBYTE(dword_27ECF1010);
  *a1 = dword_27ECF1010;
  *(a1 + 1) = v3;
  *(a1 + 3) = v4;
  return result;
}

uint64_t sub_242CB1B30(char *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  if (qword_27ECEEF70 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  LOBYTE(dword_27ECF1010) = v1;
  BYTE1(dword_27ECF1010) = v2;
  BYTE2(dword_27ECF1010) = v3;
  HIBYTE(dword_27ECF1010) = v4;
  return result;
}

double sub_242CB1BD0()
{
  *&result = 488381184;
  dword_27ECF1014 = 488381184;
  return result;
}

uint64_t static VisibilityRule.TemperatureLabelRule.engineTemperatureLabelAndIcon.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEF78 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  v3 = *(&dword_27ECF1014 + 1);
  v4 = HIBYTE(dword_27ECF1014);
  *a1 = dword_27ECF1014;
  *(a1 + 1) = v3;
  *(a1 + 3) = v4;
  return result;
}

uint64_t static VisibilityRule.TemperatureLabelRule.engineTemperatureLabelAndIcon.setter(char *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  if (qword_27ECEEF78 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  LOBYTE(dword_27ECF1014) = v1;
  BYTE1(dword_27ECF1014) = v2;
  BYTE2(dword_27ECF1014) = v3;
  HIBYTE(dword_27ECF1014) = v4;
  return result;
}

uint64_t (*static VisibilityRule.TemperatureLabelRule.engineTemperatureLabelAndIcon.modify())()
{
  if (qword_27ECEEF78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242CB1D9C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEF78 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  v3 = *(&dword_27ECF1014 + 1);
  v4 = HIBYTE(dword_27ECF1014);
  *a1 = dword_27ECF1014;
  *(a1 + 1) = v3;
  *(a1 + 3) = v4;
  return result;
}

uint64_t sub_242CB1E28(char *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  if (qword_27ECEEF78 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  LOBYTE(dword_27ECF1014) = v1;
  BYTE1(dword_27ECF1014) = v2;
  BYTE2(dword_27ECF1014) = v3;
  HIBYTE(dword_27ECF1014) = v4;
  return result;
}

double sub_242CB1EC8()
{
  *&result = 50462977;
  dword_27ECF1018 = 50462977;
  return result;
}

uint64_t static VisibilityRule.TemperatureLabelRule.batteryTemperatureIconOnly.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEF80 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  v3 = *(&dword_27ECF1018 + 1);
  v4 = HIBYTE(dword_27ECF1018);
  *a1 = dword_27ECF1018;
  *(a1 + 1) = v3;
  *(a1 + 3) = v4;
  return result;
}

uint64_t static VisibilityRule.TemperatureLabelRule.batteryTemperatureIconOnly.setter(char *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  if (qword_27ECEEF80 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  LOBYTE(dword_27ECF1018) = v1;
  BYTE1(dword_27ECF1018) = v2;
  BYTE2(dword_27ECF1018) = v3;
  HIBYTE(dword_27ECF1018) = v4;
  return result;
}

uint64_t (*static VisibilityRule.TemperatureLabelRule.batteryTemperatureIconOnly.modify())()
{
  if (qword_27ECEEF80 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242CB2094@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEF80 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  v3 = *(&dword_27ECF1018 + 1);
  v4 = HIBYTE(dword_27ECF1018);
  *a1 = dword_27ECF1018;
  *(a1 + 1) = v3;
  *(a1 + 3) = v4;
  return result;
}

uint64_t sub_242CB2120(char *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  if (qword_27ECEEF80 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  LOBYTE(dword_27ECF1018) = v1;
  BYTE1(dword_27ECF1018) = v2;
  BYTE2(dword_27ECF1018) = v3;
  HIBYTE(dword_27ECF1018) = v4;
  return result;
}

double sub_242CB21C0()
{
  *&result = 50462976;
  dword_27ECF101C = 50462976;
  return result;
}

uint64_t static VisibilityRule.TemperatureLabelRule.batteryTemperatureLabelAndIcon.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEF88 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  v3 = *(&dword_27ECF101C + 1);
  v4 = HIBYTE(dword_27ECF101C);
  *a1 = dword_27ECF101C;
  *(a1 + 1) = v3;
  *(a1 + 3) = v4;
  return result;
}

uint64_t static VisibilityRule.TemperatureLabelRule.batteryTemperatureLabelAndIcon.setter(char *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  if (qword_27ECEEF88 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  LOBYTE(dword_27ECF101C) = v1;
  BYTE1(dword_27ECF101C) = v2;
  BYTE2(dword_27ECF101C) = v3;
  HIBYTE(dword_27ECF101C) = v4;
  return result;
}

uint64_t (*static VisibilityRule.TemperatureLabelRule.batteryTemperatureLabelAndIcon.modify())()
{
  if (qword_27ECEEF88 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_242CB238C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEEF88 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  v3 = *(&dword_27ECF101C + 1);
  v4 = HIBYTE(dword_27ECF101C);
  *a1 = dword_27ECF101C;
  *(a1 + 1) = v3;
  *(a1 + 3) = v4;
  return result;
}

uint64_t sub_242CB2418(char *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  if (qword_27ECEEF88 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  LOBYTE(dword_27ECF101C) = v1;
  BYTE1(dword_27ECF101C) = v2;
  BYTE2(dword_27ECF101C) = v3;
  HIBYTE(dword_27ECF101C) = v4;
  return result;
}

unint64_t sub_242CB24B8()
{
  v1 = 1701606770;
  if (*v0)
  {
    v1 = 0xD000000000000019;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001CLL;
  }
}

uint64_t sub_242CB2534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242CBE038(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242CB255C(uint64_t a1)
{
  v2 = sub_242CB965C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242CB2598(uint64_t a1)
{
  v2 = sub_242CB965C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VisibilityRule.TemperatureLabelRule.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1410);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v14 = v1[2];
  v15 = v9;
  HIDWORD(v13) = v1[3];
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CB965C();
  sub_242F064C0();
  v23 = v8;
  v22 = 0;
  sub_242CB96B0();
  sub_242F05F20();
  if (!v2)
  {
    v10 = BYTE4(v13);
    v11 = v14;
    v21 = v15;
    v20 = 1;
    sub_242C8AC28();
    sub_242F05F20();
    v19 = v11;
    v18 = 2;
    sub_242F05F20();
    v17 = v10;
    v16 = 3;
    sub_242F05F20();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t VisibilityRule.TemperatureLabelRule.hash(into:)()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  MEMORY[0x245D279A0](v1);
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();
}

uint64_t VisibilityRule.TemperatureLabelRule.hashValue.getter()
{
  v1 = *v0;
  sub_242F06390();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x245D279A0](v2);
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t VisibilityRule.TemperatureLabelRule.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1428);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CB965C();
  sub_242F06480();
  if (!v2)
  {
    v23 = 0;
    sub_242CB9704();
    sub_242F05E00();
    v9 = v24;
    v21 = 1;
    sub_242C8AC7C();
    sub_242F05E00();
    v16 = v9;
    v10 = v22;
    v19 = 2;
    sub_242F05E00();
    v15 = v10;
    LOBYTE(v10) = v20;
    v17 = 3;
    sub_242F05E00();
    (*(v6 + 8))(v8, v5);
    v12 = v18;
    v13 = v15;
    *a2 = v16;
    a2[1] = v13;
    a2[2] = v10;
    a2[3] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242CB2C74()
{
  v1 = *v0;
  sub_242F06390();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x245D279A0](v2);
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return sub_242F063E0();
}

CarPlayAssetUI::VisibilityRule::ActivityRule __swiftcall VisibilityRule.ActivityRule.init(dataIdentifier:deactivatedValue:showWhenDeactivated:)(CarPlayAssetUI::InstrumentDataIdentifier dataIdentifier, Swift::Int deactivatedValue, Swift::Bool showWhenDeactivated)
{
  *v3 = *dataIdentifier;
  *(v3 + 8) = deactivatedValue;
  *(v3 + 16) = showWhenDeactivated;
  result.deactivatedValue = deactivatedValue;
  result.showWhenDeactivated = showWhenDeactivated;
  result.dataIdentifier = dataIdentifier;
  return result;
}

uint64_t sub_242CB2D78()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E65644961746164;
  }
}

uint64_t sub_242CB2DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242CBE1A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242CB2E0C(uint64_t a1)
{
  v2 = sub_242CB9758();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242CB2E48(uint64_t a1)
{
  v2 = sub_242CB9758();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VisibilityRule.ActivityRule.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1438);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  v8 = *v1;
  v10[1] = *(v1 + 1);
  v11 = v1[16];
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CB9758();
  sub_242F064C0();
  v15 = v8;
  v14 = 0;
  sub_242C8AC28();
  sub_242F05F20();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v13 = 1;
  sub_242F05F00();
  v12 = 2;
  sub_242F05ED0();
  return (*(v5 + 8))(v7, v4);
}

uint64_t VisibilityRule.ActivityRule.hash(into:)()
{
  v1 = *(v0 + 8);
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  MEMORY[0x245D279A0](v1);
  return sub_242F063B0();
}

uint64_t VisibilityRule.ActivityRule.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_242F06390();
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  MEMORY[0x245D279A0](v1);
  sub_242F063B0();
  return sub_242F063E0();
}

uint64_t VisibilityRule.ActivityRule.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1448);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CB9758();
  sub_242F06480();
  if (!v2)
  {
    v16 = 0;
    sub_242C8AC7C();
    sub_242F05E00();
    v9 = v17;
    v15 = 1;
    v11 = sub_242F05DE0();
    v14 = 2;
    v12 = sub_242F05DB0();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = v12 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242CB3380()
{
  v1 = *(v0 + 8);
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  MEMORY[0x245D279A0](v1);
  return sub_242F063B0();
}

uint64_t sub_242CB33FC()
{
  v1 = *(v0 + 8);
  sub_242F06390();
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  MEMORY[0x245D279A0](v1);
  sub_242F063B0();
  return sub_242F063E0();
}

CarPlayAssetUI::VisibilityRule::PowerConsumptionRule __swiftcall VisibilityRule.PowerConsumptionRule.init(dataIdentifier:showWhenPositive:)(CarPlayAssetUI::InstrumentDataIdentifier dataIdentifier, Swift::Bool showWhenPositive)
{
  *v2 = *dataIdentifier;
  v2[1] = showWhenPositive;
  result.dataIdentifier = dataIdentifier;
  return result;
}

uint64_t sub_242CB349C()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6E65644961746164;
  }
}

uint64_t sub_242CB34E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E65644961746164 && a2 == 0xEE00726569666974;
  if (v6 || (sub_242F06110() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000242F599C0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_242F06110();

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

uint64_t sub_242CB35D4(uint64_t a1)
{
  v2 = sub_242CB97AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242CB3610(uint64_t a1)
{
  v2 = sub_242CB97AC();

  return MEMORY[0x2821FE720](a1, v2);
}

CarPlayAssetUI::VisibilityRule::EmphasizedEngineGaugeRule __swiftcall VisibilityRule.EmphasizedEngineGaugeRule.init(emphasizedEngineGaugeDataIdentifier:secondaryEngineGaugeHiddenDataIdentifier:gaugeType:isSecondaryGauge:)(CarPlayAssetUI::InstrumentDataIdentifier emphasizedEngineGaugeDataIdentifier, CarPlayAssetUI::InstrumentDataIdentifier secondaryEngineGaugeHiddenDataIdentifier, CarPlayAssetUI::VisibilityRule::EmphasizedEngineGaugeRule::GaugeType gaugeType, Swift::Bool isSecondaryGauge)
{
  v5 = *secondaryEngineGaugeHiddenDataIdentifier;
  v6 = *gaugeType;
  *v4 = *emphasizedEngineGaugeDataIdentifier;
  v4[1] = v5;
  v4[2] = v6;
  v4[3] = isSecondaryGauge;
  result.emphasizedEngineGaugeDataIdentifier = emphasizedEngineGaugeDataIdentifier;
  return result;
}

unint64_t sub_242CB37D4()
{
  v1 = 0x7079546567756167;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000010;
  }

  v2 = 0xD000000000000028;
  if (!*v0)
  {
    v2 = 0xD000000000000023;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_242CB3858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242CBE2D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242CB3880(uint64_t a1)
{
  v2 = sub_242CB9800();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242CB38BC(uint64_t a1)
{
  v2 = sub_242CB9800();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VisibilityRule.EmphasizedEngineGaugeRule.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1468);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v13 = v1[2];
  v14 = v9;
  v12[1] = v1[3];
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CB9800();
  sub_242F064C0();
  v21 = v8;
  v20 = 0;
  sub_242C8AC28();
  sub_242F05F20();
  if (!v2)
  {
    v11 = v13;
    v19 = v14;
    v18 = 1;
    sub_242F05F20();
    v17 = v11;
    v16 = 2;
    sub_242CB9854();
    sub_242F05F20();
    v15 = 3;
    sub_242F05ED0();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t VisibilityRule.EmphasizedEngineGaugeRule.hash(into:)()
{
  v1 = *(v0 + 2);
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  MEMORY[0x245D279A0](v1);
  return sub_242F063B0();
}

uint64_t VisibilityRule.EmphasizedEngineGaugeRule.hashValue.getter()
{
  v1 = *(v0 + 2);
  sub_242F06390();
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  MEMORY[0x245D279A0](v1);
  sub_242F063B0();
  return sub_242F063E0();
}

uint64_t VisibilityRule.EmphasizedEngineGaugeRule.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1480);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CB9800();
  sub_242F06480();
  if (!v2)
  {
    v20 = 0;
    sub_242C8AC7C();
    sub_242F05E00();
    v9 = v21;
    v18 = 1;
    sub_242F05E00();
    v10 = v19;
    v16 = 2;
    sub_242CB98A8();
    sub_242F05E00();
    v14 = v17;
    v15 = 3;
    v12 = sub_242F05DB0();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v10;
    a2[2] = v14;
    a2[3] = v12 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242CB3F48()
{
  v1 = *(v0 + 2);
  sub_242F06390();
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  MEMORY[0x245D279A0](v1);
  sub_242F063B0();
  return sub_242F063E0();
}

CarPlayAssetUI::VisibilityRule::SideIndicatorRule::Side_optional __swiftcall VisibilityRule.SideIndicatorRule.Side.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

char *static VisibilityRule.SideIndicatorRule.turnIndicator(side:)@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  *a2 = 21073;
  *(a2 + 2) = v2;
  return result;
}

char *static VisibilityRule.SideIndicatorRule.proximityAlert(side:)@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  *a2 = 21587;
  *(a2 + 2) = v2;
  return result;
}

unint64_t sub_242CB410C()
{
  v1 = 1701079411;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_242CB4164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242CBE448(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242CB418C(uint64_t a1)
{
  v2 = sub_242CB98FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242CB41C8(uint64_t a1)
{
  v2 = sub_242CB98FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VisibilityRule.SideIndicatorRule.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1490);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v13 = v1[2];
  v14 = v9;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CB98FC();
  sub_242F064C0();
  v20 = v8;
  v19 = 0;
  sub_242C8AC28();
  sub_242F05F20();
  if (!v2)
  {
    v11 = v13;
    v18 = v14;
    v17 = 1;
    sub_242F05F20();
    v16 = v11;
    v15 = 2;
    sub_242CB9950();
    sub_242F05F20();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t VisibilityRule.SideIndicatorRule.hash(into:)()
{
  v1 = *(v0 + 2);
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return MEMORY[0x245D279A0](v1);
}

uint64_t VisibilityRule.SideIndicatorRule.hashValue.getter()
{
  v1 = *(v0 + 2);
  sub_242F06390();
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  MEMORY[0x245D279A0](v1);
  return sub_242F063E0();
}

uint64_t VisibilityRule.SideIndicatorRule.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF14A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CB98FC();
  sub_242F06480();
  if (!v2)
  {
    v18 = 0;
    sub_242C8AC7C();
    sub_242F05E00();
    v9 = v19;
    v16 = 1;
    sub_242F05E00();
    v11 = v17;
    v14 = 2;
    sub_242CB99A4();
    sub_242F05E00();
    (*(v6 + 8))(v8, v5);
    v12 = v15;
    *a2 = v9;
    a2[1] = v11;
    a2[2] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242CB47BC()
{
  v1 = *(v0 + 2);
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return MEMORY[0x245D279A0](v1);
}

uint64_t sub_242CB485C()
{
  v1 = *(v0 + 2);
  sub_242F06390();
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  MEMORY[0x245D279A0](v1);
  return sub_242F063E0();
}

CarPlayAssetUI::VisibilityRule::DriveModeRule __swiftcall VisibilityRule.DriveModeRule.init(showWhenHidden:)(Swift::Bool showWhenHidden)
{
  *v1 = 18;
  v1[1] = showWhenHidden;
  result.dataIdentifier = showWhenHidden;
  return result;
}

uint64_t sub_242CB491C()
{
  if (*v0)
  {
    return 0x6E656857776F6873;
  }

  else
  {
    return 0x6E65644961746164;
  }
}

uint64_t sub_242CB4970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E65644961746164 && a2 == 0xEE00726569666974;
  if (v6 || (sub_242F06110() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E656857776F6873 && a2 == 0xEE006E6564646948)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_242F06110();

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

uint64_t sub_242CB4A5C(uint64_t a1)
{
  v2 = sub_242CB99F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242CB4A98(uint64_t a1)
{
  v2 = sub_242CB99F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242CB4B8C()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6E65644961746164;
  }
}

uint64_t sub_242CB4BD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E65644961746164 && a2 == 0xEE00726569666974;
  if (v6 || (sub_242F06110() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000242F59AA0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_242F06110();

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

uint64_t sub_242CB4CC4(uint64_t a1)
{
  v2 = sub_242CB9A4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242CB4D00(uint64_t a1)
{
  v2 = sub_242CB9A4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242CB4D80(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v13[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v13 - v8;
  v10 = *v4;
  v14 = v4[1];
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  (v13[0])();
  sub_242F064C0();
  v17 = v10;
  v16 = 0;
  sub_242C8AC28();
  v11 = v13[1];
  sub_242F05F20();
  if (!v11)
  {
    v15 = 1;
    sub_242F05ED0();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t _s14CarPlayAssetUI14VisibilityRuleO014SecondarySpeedF0V4hash4intoys6HasherVz_tF_0()
{
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return sub_242F063B0();
}

uint64_t _s14CarPlayAssetUI14VisibilityRuleO014SecondarySpeedF0V9hashValueSivg_0()
{
  sub_242F06390();
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  sub_242F063B0();
  return sub_242F063E0();
}

uint64_t sub_242CB5058@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, void (*a3)(void)@<X3>, _BYTE *a4@<X8>)
{
  v16 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v15 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  a3();
  sub_242F06480();
  if (!v4)
  {
    v11 = v15;
    v10 = v16;
    v18 = 0;
    sub_242C8AC7C();
    sub_242F05E00();
    v12 = v19;
    v17 = 1;
    v13 = sub_242F05DB0();
    (*(v11 + 8))(v9, v7);
    *v10 = v12;
    v10[1] = v13 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242CB5250()
{
  sub_242F06390();
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  sub_242F063B0();
  return sub_242F063E0();
}

CarPlayAssetUI::VisibilityRule::ChargeStateRule __swiftcall VisibilityRule.ChargeStateRule.init(visibleState:)(CarPlayAssetUI::VisibilityRule::ChargeStateRule visibleState)
{
  *v1 = 13;
  *(v1 + 8) = *&visibleState.dataIdentifier;
  return visibleState;
}

uint64_t sub_242CB52DC()
{
  if (*v0)
  {
    return 0x53656C6269736976;
  }

  else
  {
    return 0x6E65644961746164;
  }
}

uint64_t sub_242CB532C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E65644961746164 && a2 == 0xEE00726569666974;
  if (v6 || (sub_242F06110() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x53656C6269736976 && a2 == 0xEC00000065746174)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_242F06110();

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

uint64_t sub_242CB5414(uint64_t a1)
{
  v2 = sub_242CB9AA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242CB5450(uint64_t a1)
{
  v2 = sub_242CB9AA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VisibilityRule.ChargeStateRule.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF14E8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  v8 = *v1;
  v10[1] = *(v1 + 1);
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CB9AA0();
  sub_242F064C0();
  v13 = v8;
  v12 = 0;
  sub_242C8AC28();
  sub_242F05F20();
  if (!v2)
  {
    v11 = 1;
    sub_242F05F00();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t VisibilityRule.ChargeStateRule.hash(into:)()
{
  v1 = *(v0 + 8);
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return MEMORY[0x245D279A0](v1);
}

uint64_t VisibilityRule.ChargeStateRule.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_242F06390();
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  MEMORY[0x245D279A0](v1);
  return sub_242F063E0();
}

uint64_t VisibilityRule.ChargeStateRule.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF14F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242CB9AA0();
  sub_242F06480();
  if (!v2)
  {
    v14 = 0;
    sub_242C8AC7C();
    sub_242F05E00();
    v9 = v15;
    v13 = 1;
    v10 = sub_242F05DE0();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242CB590C()
{
  v1 = *(v0 + 8);
  sub_242F06390();
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  MEMORY[0x245D279A0](v1);
  return sub_242F063E0();
}

uint64_t sub_242CB598C()
{
  v1 = *(v0 + 8);
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return MEMORY[0x245D279A0](v1);
}

uint64_t sub_242CB59FC()
{
  v1 = *(v0 + 8);
  sub_242F06390();
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  MEMORY[0x245D279A0](v1);
  return sub_242F063E0();
}

unint64_t sub_242CB5A98()
{
  result = qword_27ECF1028;
  if (!qword_27ECF1028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1028);
  }

  return result;
}

unint64_t sub_242CB5AEC()
{
  result = qword_27ECF1040;
  if (!qword_27ECF1040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1040);
  }

  return result;
}

uint64_t sub_242CB5B40(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF1030);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242CB5BB8()
{
  result = qword_27ECF1058;
  if (!qword_27ECF1058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF1058);
  }

  return result;
}

uint64_t _s14CarPlayAssetUI14VisibilityRuleO018TickmarksSpeedUnitF0V2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    goto LABEL_9;
  }

  v2 = InstrumentDataIdentifier.rawValue.getter();
  v4 = v3;
  if (v2 == InstrumentDataIdentifier.rawValue.getter() && v4 == v5)
  {

    goto LABEL_6;
  }

  v6 = sub_242F06110();

  if ((v6 & 1) == 0)
  {
LABEL_9:
    v11 = 0;
    return v11 & 1;
  }

LABEL_6:
  v7 = InstrumentDataIdentifier.rawValue.getter();
  v9 = v8;
  if (v7 == InstrumentDataIdentifier.rawValue.getter() && v9 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_242F06110();
  }

  return v11 & 1;
}

uint64_t _s14CarPlayAssetUI14VisibilityRuleO012SpeedLimiterF0V2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    goto LABEL_17;
  }

  if (a1[48])
  {
    if ((a2[48] & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v6 = 0;
    if (a2[48])
    {
      return v6 & 1;
    }

    v7 = *(a2 + 1);
    if (COERCE_FLOAT(*(a1 + 1)) != *&v7 || COERCE_FLOAT(HIDWORD(*(a1 + 1))) != *(&v7 + 1))
    {
      return v6 & 1;
    }

    if ((sub_242F04B20() & 1) == 0 || (sub_242F04B20() & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v2 = InstrumentDataIdentifier.rawValue.getter();
  v4 = v3;
  if (v2 == InstrumentDataIdentifier.rawValue.getter() && v4 == v5)
  {

    goto LABEL_14;
  }

  v8 = sub_242F06110();

  if ((v8 & 1) == 0)
  {
LABEL_17:
    v6 = 0;
    return v6 & 1;
  }

LABEL_14:
  v9 = InstrumentDataIdentifier.rawValue.getter();
  v11 = v10;
  if (v9 == InstrumentDataIdentifier.rawValue.getter() && v11 == v12)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_242F06110();
  }

  return v6 & 1;
}

uint64_t _s14CarPlayAssetUI14VisibilityRuleO016TemperatureLabelF0V2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    goto LABEL_2;
  }

  v3 = InstrumentDataIdentifier.rawValue.getter();
  v5 = v4;
  if (v3 == InstrumentDataIdentifier.rawValue.getter() && v5 == v6)
  {
  }

  else
  {
    v7 = sub_242F06110();

    if ((v7 & 1) == 0)
    {
      goto LABEL_2;
    }
  }

  v8 = InstrumentDataIdentifier.rawValue.getter();
  v10 = v9;
  if (v8 == InstrumentDataIdentifier.rawValue.getter() && v10 == v11)
  {

    goto LABEL_11;
  }

  v12 = sub_242F06110();

  if ((v12 & 1) == 0)
  {
LABEL_2:
    v2 = 0;
    return v2 & 1;
  }

LABEL_11:
  v13 = InstrumentDataIdentifier.rawValue.getter();
  v15 = v14;
  if (v13 == InstrumentDataIdentifier.rawValue.getter() && v15 == v16)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_242F06110();
  }

  return v2 & 1;
}

uint64_t _s14CarPlayAssetUI14VisibilityRuleO021EmphasizedEngineGaugeF0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = *(a2 + 2);
  v5 = *(a2 + 3);
  v6 = InstrumentDataIdentifier.rawValue.getter();
  v8 = v7;
  if (v6 == InstrumentDataIdentifier.rawValue.getter() && v8 == v9)
  {
  }

  else
  {
    v10 = sub_242F06110();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = InstrumentDataIdentifier.rawValue.getter();
  v13 = v12;
  if (v11 == InstrumentDataIdentifier.rawValue.getter() && v13 == v14)
  {

    if (v2 != v4)
    {
      return 0;
    }

    return v3 ^ v5 ^ 1u;
  }

  v16 = sub_242F06110();

  result = 0;
  if ((v16 & 1) != 0 && ((v2 ^ v4) & 1) == 0)
  {
    return v3 ^ v5 ^ 1u;
  }

  return result;
}

uint64_t _s14CarPlayAssetUI14VisibilityRuleO013SideIndicatorF0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  v3 = *(a2 + 2);
  v4 = InstrumentDataIdentifier.rawValue.getter();
  v6 = v5;
  if (v4 == InstrumentDataIdentifier.rawValue.getter() && v6 == v7)
  {
  }

  else
  {
    v8 = sub_242F06110();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = InstrumentDataIdentifier.rawValue.getter();
  v11 = v10;
  if (v9 == InstrumentDataIdentifier.rawValue.getter() && v11 == v12)
  {

    return v2 ^ v3 ^ 1u;
  }

  v13 = sub_242F06110();

  if (v13)
  {
    return v2 ^ v3 ^ 1u;
  }

  return 0;
}

BOOL _s14CarPlayAssetUI14VisibilityRuleO2eeoiySbAC_ACtFZ_0(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 112);
  v308[6] = *(a1 + 96);
  v308[7] = v3;
  v309 = *(a1 + 128);
  v4 = *(a1 + 48);
  v308[2] = *(a1 + 32);
  v308[3] = v4;
  v5 = *(a1 + 80);
  v308[4] = *(a1 + 64);
  v308[5] = v5;
  v6 = *(a1 + 16);
  v308[0] = *a1;
  v308[1] = v6;
  switch(sub_242CA35A4(v308))
  {
    case 1u:
      v141 = sub_242C55EDC(v308);
      v142 = *v141;
      v143 = *(v141 + 1);
      v144 = *(v141 + 2);
      v146 = *(v141 + 2);
      v145 = *(v141 + 3);
      v279 = *(v141 + 12);
      v277 = *(v141 + 13);
      v147 = a2[7];
      v305 = a2[6];
      v306 = v147;
      v307 = *(a2 + 16);
      v148 = a2[5];
      v303 = a2[4];
      v304 = v148;
      v149 = a2[3];
      v301 = a2[2];
      v302 = v149;
      v150 = a2[1];
      v299 = *a2;
      v300 = v150;
      if (sub_242CA35A4(&v299) != 1)
      {
        return 0;
      }

      v151 = sub_242C55EDC(&v299);
      v152 = *v151;
      v153 = *(v151 + 2);
      v155 = *(v151 + 2);
      v154 = *(v151 + 3);
      v272 = *(v151 + 12);
      v270 = *(v151 + 13);
      LOBYTE(v297[0]) = v142;
      BYTE1(v297[0]) = v143;
      BYTE2(v297[0]) = v144;
      LOWORD(v295[0]) = v152;
      BYTE2(v295[0]) = v153;
      if ((_s14CarPlayAssetUI14VisibilityRuleO018TickmarksSpeedUnitF0V2eeoiySbAE_AEtFZ_0(v297, v295) & 1) == 0 || v146 != v155 || v145 != v154 || (sub_242F04B20() & 1) == 0 || (sub_242F04B20() & 1) == 0 || v279 != v272 || v277 != v270 || (sub_242F04B20() & 1) == 0)
      {
        return 0;
      }

      return (sub_242F04B20() & 1) != 0;
    case 2u:
      v105 = sub_242C55EDC(v308);
      v106 = a2[7];
      v305 = a2[6];
      v306 = v106;
      v307 = *(a2 + 16);
      v107 = a2[3];
      v301 = a2[2];
      v302 = v107;
      v108 = a2[5];
      v303 = a2[4];
      v304 = v108;
      v109 = a2[1];
      v299 = *a2;
      v300 = v109;
      if (sub_242CA35A4(&v299) == 2)
      {
        v110 = sub_242C55EDC(&v299);
        v111 = *(v105 + 1);
        v297[0] = *v105;
        v297[1] = v111;
        v298[0] = *(v105 + 2);
        *(v298 + 15) = *(v105 + 47);
        v112 = *(v110 + 1);
        v295[0] = *v110;
        v295[1] = v112;
        v296[0] = *(v110 + 2);
        *(v296 + 15) = *(v110 + 47);
        if (_s14CarPlayAssetUI14VisibilityRuleO012SpeedLimiterF0V2eeoiySbAE_AEtFZ_0(v297, v295) & 1) != 0 && *(v105 + 14) == *(v110 + 14) && *(v105 + 15) == *(v110 + 15) && (sub_242F04B20() & 1) != 0 && (sub_242F04B20() & 1) != 0 && *(v105 + 24) == *(v110 + 24) && *(v105 + 25) == *(v110 + 25) && (sub_242F04B20())
        {
          return (sub_242F04B20() & 1) != 0;
        }
      }

      return 0;
    case 3u:
      v113 = sub_242C55EDC(v308);
      v114 = *v113;
      v115 = *(v113 + 1);
      v117 = *(v113 + 2);
      v116 = *(v113 + 3);
      v119 = *(v113 + 12);
      v118 = *(v113 + 13);
      v120 = a2[7];
      v305 = a2[6];
      v306 = v120;
      v307 = *(a2 + 16);
      v121 = a2[5];
      v303 = a2[4];
      v304 = v121;
      v122 = a2[3];
      v301 = a2[2];
      v302 = v122;
      v123 = a2[1];
      v299 = *a2;
      v300 = v123;
      if (sub_242CA35A4(&v299) != 3)
      {
        return 0;
      }

      v124 = sub_242C55EDC(&v299);
      if (v114 != *v124)
      {
        return 0;
      }

      v274 = v124[2];
      v273 = v124[3];
      v252 = v124[12];
      v251 = v124[13];
      v125 = *(v124 + 1);
      LOBYTE(v297[0]) = v115;
      LOBYTE(v295[0]) = v125;
      v126 = InstrumentDataIdentifier.rawValue.getter();
      v128 = v127;
      if (v126 == InstrumentDataIdentifier.rawValue.getter() && v128 == v129)
      {
      }

      else
      {
        v247 = sub_242F06110();

        if ((v247 & 1) == 0)
        {
          return 0;
        }
      }

      if (v117 == v274 && v116 == v273 && (sub_242F04B20() & 1) != 0 && (sub_242F04B20() & 1) != 0 && v119 == v252 && v118 == v251 && (sub_242F04B20() & 1) != 0)
      {
        return (sub_242F04B20() & 1) != 0;
      }

      return 0;
    case 4u:
      v56 = sub_242C55EDC(v308);
      v57 = *v56;
      v58 = v56[1];
      v59 = v56[2];
      v60 = v56[3];
      v61 = v56[12];
      v288 = v56[13];
      v62 = a2[3];
      v301 = a2[2];
      v302 = v62;
      v63 = a2[5];
      v303 = a2[4];
      v304 = v63;
      v64 = a2[7];
      v305 = a2[6];
      v306 = v64;
      v307 = *(a2 + 16);
      v65 = a2[1];
      v299 = *a2;
      v300 = v65;
      if (sub_242CA35A4(&v299) != 4)
      {
        return 0;
      }

      v66 = sub_242C55EDC(&v299);
      if (v57 != *v66)
      {
        return 0;
      }

      if (v58 != v66[1])
      {
        return 0;
      }

      if (v59 != v66[2])
      {
        return 0;
      }

      if (v60 != v66[3])
      {
        return 0;
      }

      v68 = v66[12];
      v67 = v66[13];
      return (sub_242F04B20() & 1) != 0 && (sub_242F04B20() & 1) != 0 && v61 == v68 && v288 == v67 && (sub_242F04B20() & 1) != 0 && (sub_242F04B20() & 1) != 0;
    case 5u:
      v156 = sub_242C55EDC(v308);
      v157 = *v156;
      v159 = v156[2];
      v158 = v156[3];
      v291 = v156[12];
      v283 = v156[13];
      v160 = a2[3];
      v301 = a2[2];
      v302 = v160;
      v161 = a2[5];
      v303 = a2[4];
      v304 = v161;
      v162 = a2[7];
      v305 = a2[6];
      v306 = v162;
      v307 = *(a2 + 16);
      v163 = a2[1];
      v299 = *a2;
      v300 = v163;
      if (sub_242CA35A4(&v299) != 5)
      {
        return 0;
      }

      v164 = sub_242C55EDC(&v299);
      v165 = *v164;
      v167 = v164[2];
      v166 = v164[3];
      v265 = v164[12];
      v257 = v164[13];
      LOBYTE(v297[0]) = v157;
      LOBYTE(v295[0]) = v165;
      v168 = InstrumentDataIdentifier.rawValue.getter();
      v170 = v169;
      if (v168 == InstrumentDataIdentifier.rawValue.getter() && v170 == v171)
      {
      }

      else
      {
        v242 = sub_242F06110();

        if ((v242 & 1) == 0)
        {
          return 0;
        }
      }

      if (v159 == v167 && v158 == v166 && (sub_242F04B20() & 1) != 0 && (sub_242F04B20() & 1) != 0 && v291 == v265 && v283 == v257 && (sub_242F04B20() & 1) != 0)
      {
        return (sub_242F04B20() & 1) != 0;
      }

      return 0;
    case 6u:
      v190 = sub_242C55EDC(v308);
      v191 = *v190;
      v192 = *(v190 + 1);
      v193 = v190[2];
      v194 = v190[3];
      v293 = v190[12];
      v285 = v190[13];
      v195 = a2[7];
      v305 = a2[6];
      v306 = v195;
      v307 = *(a2 + 16);
      v196 = a2[5];
      v303 = a2[4];
      v304 = v196;
      v197 = a2[3];
      v301 = a2[2];
      v302 = v197;
      v198 = a2[1];
      v299 = *a2;
      v300 = v198;
      if (sub_242CA35A4(&v299) != 6)
      {
        return 0;
      }

      v199 = sub_242C55EDC(&v299);
      v200 = *v199;
      v201 = *(v199 + 1);
      v203 = v199[2];
      v202 = v199[3];
      v267 = v199[12];
      v259 = v199[13];
      LOBYTE(v297[0]) = v191;
      LOBYTE(v295[0]) = v200;
      v204 = InstrumentDataIdentifier.rawValue.getter();
      v206 = v205;
      if (v204 == InstrumentDataIdentifier.rawValue.getter() && v206 == v207)
      {

        if (v192 != v201)
        {
          return 0;
        }
      }

      else
      {
        v244 = sub_242F06110();

        if (v244 & 1) == 0 || ((v192 ^ v201))
        {
          return 0;
        }
      }

      if (v193 != v203 || v194 != v202 || (sub_242F04B20() & 1) == 0 || (sub_242F04B20() & 1) == 0 || v293 != v267 || v285 != v259 || (sub_242F04B20() & 1) == 0)
      {
        return 0;
      }

      return (sub_242F04B20() & 1) != 0;
    case 7u:
      v130 = sub_242C55EDC(v308);
      v131 = a2[7];
      v305 = a2[6];
      v306 = v131;
      v307 = *(a2 + 16);
      v132 = a2[3];
      v301 = a2[2];
      v302 = v132;
      v133 = a2[5];
      v303 = a2[4];
      v304 = v133;
      v134 = a2[1];
      v299 = *a2;
      v300 = v134;
      if (sub_242CA35A4(&v299) == 7)
      {
        v135 = sub_242C55EDC(&v299);
        v136 = *(v130 + 1);
        v137 = *(v130 + 3);
        v138 = *v135;
        v139 = *(v135 + 1);
        v140 = *(v135 + 3);
        LOBYTE(v297[0]) = *v130;
        *(v297 + 1) = v136;
        BYTE3(v297[0]) = v137;
        LOBYTE(v295[0]) = v138;
        *(v295 + 1) = v139;
        BYTE3(v295[0]) = v140;
        if (_s14CarPlayAssetUI14VisibilityRuleO016TemperatureLabelF0V2eeoiySbAE_AEtFZ_0(v297, v295) & 1) != 0 && *(v130 + 2) == *(v135 + 2) && *(v130 + 3) == *(v135 + 3) && (sub_242F04B20() & 1) != 0 && (sub_242F04B20() & 1) != 0 && *(v130 + 12) == *(v135 + 12) && *(v130 + 13) == *(v135 + 13) && (sub_242F04B20())
        {
          return (sub_242F04B20() & 1) != 0;
        }
      }

      return 0;
    case 8u:
      v219 = sub_242C55EDC(v308);
      v220 = *v219;
      v221 = *(v219 + 1);
      v222 = *(v219 + 16);
      v224 = v219[6];
      v223 = v219[7];
      v294 = v219[16];
      v286 = v219[17];
      v225 = a2[7];
      v305 = a2[6];
      v306 = v225;
      v307 = *(a2 + 16);
      v226 = a2[5];
      v303 = a2[4];
      v304 = v226;
      v227 = a2[3];
      v301 = a2[2];
      v302 = v227;
      v228 = a2[1];
      v299 = *a2;
      v300 = v228;
      if (sub_242CA35A4(&v299) != 8)
      {
        return 0;
      }

      v229 = sub_242C55EDC(&v299);
      v230 = *v229;
      v231 = *(v229 + 1);
      v232 = *(v229 + 16);
      v234 = v229[6];
      v233 = v229[7];
      v268 = v229[16];
      v260 = v229[17];
      LOBYTE(v297[0]) = v220;
      LOBYTE(v295[0]) = v230;
      v235 = InstrumentDataIdentifier.rawValue.getter();
      v237 = v236;
      if (v235 == InstrumentDataIdentifier.rawValue.getter() && v237 == v238)
      {
      }

      else
      {
        v245 = sub_242F06110();

        if ((v245 & 1) == 0)
        {
          return 0;
        }
      }

      if (v221 == v231 && ((v222 ^ v232) & 1) == 0 && v224 == v234 && v223 == v233 && (sub_242F04B20() & 1) != 0 && (sub_242F04B20() & 1) != 0 && v294 == v268 && v286 == v260 && (sub_242F04B20() & 1) != 0)
      {
        return (sub_242F04B20() & 1) != 0;
      }

      return 0;
    case 9u:
      v87 = sub_242C55EDC(v308);
      v88 = *v87;
      v89 = *(v87 + 1);
      v90 = v87[2];
      v91 = v87[3];
      v290 = v87[12];
      v282 = v87[13];
      v92 = a2[7];
      v305 = a2[6];
      v306 = v92;
      v307 = *(a2 + 16);
      v93 = a2[5];
      v303 = a2[4];
      v304 = v93;
      v94 = a2[3];
      v301 = a2[2];
      v302 = v94;
      v95 = a2[1];
      v299 = *a2;
      v300 = v95;
      if (sub_242CA35A4(&v299) != 9)
      {
        return 0;
      }

      v96 = sub_242C55EDC(&v299);
      v97 = *v96;
      v98 = *(v96 + 1);
      v100 = v96[2];
      v99 = v96[3];
      v264 = v96[12];
      v256 = v96[13];
      LOBYTE(v297[0]) = v88;
      LOBYTE(v295[0]) = v97;
      v101 = InstrumentDataIdentifier.rawValue.getter();
      v103 = v102;
      if (v101 == InstrumentDataIdentifier.rawValue.getter() && v103 == v104)
      {

        if (v89 != v98)
        {
          return 0;
        }
      }

      else
      {
        v241 = sub_242F06110();

        if (v241 & 1) == 0 || ((v89 ^ v98))
        {
          return 0;
        }
      }

      if (v90 != v100 || v91 != v99 || (sub_242F04B20() & 1) == 0 || (sub_242F04B20() & 1) == 0 || v290 != v264 || v282 != v256 || (sub_242F04B20() & 1) == 0)
      {
        return 0;
      }

      return (sub_242F04B20() & 1) != 0;
    case 0xAu:
      v208 = sub_242C55EDC(v308);
      v209 = a2[7];
      v305 = a2[6];
      v306 = v209;
      v307 = *(a2 + 16);
      v210 = a2[3];
      v301 = a2[2];
      v302 = v210;
      v211 = a2[5];
      v303 = a2[4];
      v304 = v211;
      v212 = a2[1];
      v299 = *a2;
      v300 = v212;
      if (sub_242CA35A4(&v299) != 10)
      {
        return 0;
      }

      v213 = sub_242C55EDC(&v299);
      v214 = *(v208 + 2);
      v215 = *(v208 + 3);
      v216 = *v213;
      v217 = *(v213 + 2);
      v218 = *(v213 + 3);
      LOWORD(v297[0]) = *v208;
      BYTE2(v297[0]) = v214;
      BYTE3(v297[0]) = v215;
      LOWORD(v295[0]) = v216;
      BYTE2(v295[0]) = v217;
      BYTE3(v295[0]) = v218;
      if ((_s14CarPlayAssetUI14VisibilityRuleO021EmphasizedEngineGaugeF0V2eeoiySbAE_AEtFZ_0(v297, v295) & 1) == 0 || *(v208 + 2) != *(v213 + 2) || *(v208 + 3) != *(v213 + 3) || (sub_242F04B20() & 1) == 0 || (sub_242F04B20() & 1) == 0 || *(v208 + 12) != *(v213 + 12) || *(v208 + 13) != *(v213 + 13) || (sub_242F04B20() & 1) == 0)
      {
        return 0;
      }

      return (sub_242F04B20() & 1) != 0;
    case 0xBu:
      v41 = sub_242C55EDC(v308);
      v42 = *v41;
      v43 = *(v41 + 1);
      v44 = *(v41 + 2);
      v46 = *(v41 + 2);
      v45 = *(v41 + 3);
      v278 = *(v41 + 12);
      v276 = *(v41 + 13);
      v47 = a2[7];
      v305 = a2[6];
      v306 = v47;
      v307 = *(a2 + 16);
      v48 = a2[5];
      v303 = a2[4];
      v304 = v48;
      v49 = a2[3];
      v301 = a2[2];
      v302 = v49;
      v50 = a2[1];
      v299 = *a2;
      v300 = v50;
      if (sub_242CA35A4(&v299) == 11)
      {
        v51 = sub_242C55EDC(&v299);
        v52 = *v51;
        v53 = *(v51 + 2);
        v55 = *(v51 + 2);
        v54 = *(v51 + 3);
        v271 = *(v51 + 12);
        v269 = *(v51 + 13);
        LOBYTE(v297[0]) = v42;
        BYTE1(v297[0]) = v43;
        BYTE2(v297[0]) = v44;
        LOWORD(v295[0]) = v52;
        BYTE2(v295[0]) = v53;
        if (_s14CarPlayAssetUI14VisibilityRuleO013SideIndicatorF0V2eeoiySbAE_AEtFZ_0(v297, v295) & 1) != 0 && v46 == v55 && v45 == v54 && (sub_242F04B20() & 1) != 0 && (sub_242F04B20() & 1) != 0 && v278 == v271 && v276 == v269 && (sub_242F04B20())
        {
          return (sub_242F04B20() & 1) != 0;
        }
      }

      return 0;
    case 0xCu:
      v69 = sub_242C55EDC(v308);
      v70 = *v69;
      v71 = *(v69 + 1);
      v72 = v69[2];
      v73 = v69[3];
      v289 = v69[12];
      v281 = v69[13];
      v74 = a2[7];
      v305 = a2[6];
      v306 = v74;
      v307 = *(a2 + 16);
      v75 = a2[5];
      v303 = a2[4];
      v304 = v75;
      v76 = a2[3];
      v301 = a2[2];
      v302 = v76;
      v77 = a2[1];
      v299 = *a2;
      v300 = v77;
      if (sub_242CA35A4(&v299) != 12)
      {
        return 0;
      }

      v78 = sub_242C55EDC(&v299);
      v79 = *v78;
      v80 = *(v78 + 1);
      v82 = v78[2];
      v81 = v78[3];
      v263 = v78[12];
      v255 = v78[13];
      LOBYTE(v297[0]) = v70;
      LOBYTE(v295[0]) = v79;
      v83 = InstrumentDataIdentifier.rawValue.getter();
      v85 = v84;
      if (v83 == InstrumentDataIdentifier.rawValue.getter() && v85 == v86)
      {

        if (v71 != v80)
        {
          return 0;
        }
      }

      else
      {
        v240 = sub_242F06110();

        if (v240 & 1) == 0 || ((v71 ^ v80))
        {
          return 0;
        }
      }

      if (v72 != v82 || v73 != v81 || (sub_242F04B20() & 1) == 0 || (sub_242F04B20() & 1) == 0 || v289 != v263 || v281 != v255 || (sub_242F04B20() & 1) == 0)
      {
        return 0;
      }

      return (sub_242F04B20() & 1) != 0;
    case 0xDu:
      v172 = sub_242C55EDC(v308);
      v173 = *v172;
      v174 = *(v172 + 1);
      v175 = v172[2];
      v176 = v172[3];
      v292 = v172[12];
      v284 = v172[13];
      v177 = a2[7];
      v305 = a2[6];
      v306 = v177;
      v307 = *(a2 + 16);
      v178 = a2[5];
      v303 = a2[4];
      v304 = v178;
      v179 = a2[3];
      v301 = a2[2];
      v302 = v179;
      v180 = a2[1];
      v299 = *a2;
      v300 = v180;
      if (sub_242CA35A4(&v299) != 13)
      {
        return 0;
      }

      v181 = sub_242C55EDC(&v299);
      v182 = *v181;
      v183 = *(v181 + 1);
      v185 = v181[2];
      v184 = v181[3];
      v266 = v181[12];
      v258 = v181[13];
      LOBYTE(v297[0]) = v173;
      LOBYTE(v295[0]) = v182;
      v186 = InstrumentDataIdentifier.rawValue.getter();
      v188 = v187;
      if (v186 == InstrumentDataIdentifier.rawValue.getter() && v188 == v189)
      {

        if (v174 != v183)
        {
          return 0;
        }
      }

      else
      {
        v243 = sub_242F06110();

        if (v243 & 1) == 0 || ((v174 ^ v183))
        {
          return 0;
        }
      }

      if (v175 != v185 || v176 != v184 || (sub_242F04B20() & 1) == 0 || (sub_242F04B20() & 1) == 0 || v292 != v266 || v284 != v258 || (sub_242F04B20() & 1) == 0)
      {
        return 0;
      }

      return (sub_242F04B20() & 1) != 0;
    case 0xEu:
      v23 = sub_242C55EDC(v308);
      v24 = *v23;
      v25 = *(v23 + 1);
      v26 = v23[4];
      v27 = v23[5];
      v287 = v23[14];
      v280 = v23[15];
      v28 = a2[7];
      v305 = a2[6];
      v306 = v28;
      v307 = *(a2 + 16);
      v29 = a2[5];
      v303 = a2[4];
      v304 = v29;
      v30 = a2[3];
      v301 = a2[2];
      v302 = v30;
      v31 = a2[1];
      v299 = *a2;
      v300 = v31;
      if (sub_242CA35A4(&v299) != 14)
      {
        return 0;
      }

      v32 = sub_242C55EDC(&v299);
      v33 = *v32;
      v34 = *(v32 + 1);
      v36 = v32[4];
      v35 = v32[5];
      v262 = v32[14];
      v254 = v32[15];
      LOBYTE(v297[0]) = v24;
      LOBYTE(v295[0]) = v33;
      v37 = InstrumentDataIdentifier.rawValue.getter();
      v39 = v38;
      if (v37 == InstrumentDataIdentifier.rawValue.getter() && v39 == v40)
      {
      }

      else
      {
        v239 = sub_242F06110();

        if ((v239 & 1) == 0)
        {
          return 0;
        }
      }

      if (v25 != v34 || v26 != v36 || v27 != v35 || (sub_242F04B20() & 1) == 0 || (sub_242F04B20() & 1) == 0 || v287 != v262 || v280 != v254 || (sub_242F04B20() & 1) == 0)
      {
        return 0;
      }

      return (sub_242F04B20() & 1) != 0;
    default:
      v7 = sub_242C55EDC(v308);
      v8 = *v7;
      v9 = *(v7 + 1);
      v10 = *(v7 + 2);
      v11 = *(v7 + 3);
      v12 = *(v7 + 13);
      v275 = *(v7 + 12);
      v13 = a2[7];
      v305 = a2[6];
      v306 = v13;
      v307 = *(a2 + 16);
      v14 = a2[5];
      v303 = a2[4];
      v304 = v14;
      v15 = a2[3];
      v301 = a2[2];
      v302 = v15;
      v16 = a2[1];
      v299 = *a2;
      v300 = v16;
      if (sub_242CA35A4(&v299))
      {
        return 0;
      }

      v17 = sub_242C55EDC(&v299);
      if (v8 != *v17)
      {
        return 0;
      }

      v261 = v17[2];
      v253 = v17[3];
      v250 = v17[12];
      v249 = v17[13];
      v18 = *(v17 + 1);
      LOBYTE(v297[0]) = v9;
      LOBYTE(v295[0]) = v18;
      v19 = InstrumentDataIdentifier.rawValue.getter();
      v21 = v20;
      if (v19 == InstrumentDataIdentifier.rawValue.getter() && v21 == v22)
      {
      }

      else
      {
        v248 = sub_242F06110();

        if ((v248 & 1) == 0)
        {
          return 0;
        }
      }

      return v10 == v261 && v11 == v253 && (sub_242F04B20() & 1) != 0 && (sub_242F04B20() & 1) != 0 && v275 == v250 && v12 == v249 && (sub_242F04B20() & 1) != 0 && (sub_242F04B20() & 1) != 0;
  }
}